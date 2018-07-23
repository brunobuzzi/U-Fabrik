"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooURI
	instanceVariableNames: 'protocol hostname port identifier queries'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooURI guid: (GUID fromString: '{34f371fb-7696-4cd3-bbcb-2f50afd8ba61}')!
SwazooURI comment: ''!
!SwazooURI categoriesForClass!Unclassified! !
!SwazooURI methodsFor!

asString
	| targetStream |
	targetStream := WriteStream on: String new.
	self printOn: targetStream.
	^targetStream contents!

defaultPort
	^80!

fromStream: sourceStream 
	self readProtocolFrom: sourceStream.
	self readHostFrom: sourceStream.
	self readPortFrom: sourceStream.
	self readIdentifierFrom: sourceStream.
	self readQueryFrom: sourceStream.
	^self!

fromString: aString 
	| sourceStream |
	sourceStream := ReadStream on: (HTTPString decodedHTTPFrom: aString).
	self fromStream: sourceStream.
	^self!

host
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: self hostname.
	self port = self defaultPort 
		ifFalse: 
			[ws nextPut: $:.
			self port printOn: ws].
	^ws contents!

host: aString 
	| rs |
	rs := ReadStream on: aString.
	self hostname: (rs upTo: $: ).
	rs atEnd ifFalse: [self port: rs upToEnd asNumber]!

hostname
	^hostname!

hostname: aHostname 
	hostname := aHostname!

identifier
	^identifier!

identifier: anObject
	identifier := anObject!

identifierPath
	| parts |
	parts := (HTTPString subCollectionsFrom: self identifier delimitedBy: $/) 
				collect: [:each | HTTPString decodedHTTPFrom: each].
	self identifier first = $/ ifTrue: [parts addFirst: '/'].
	^parts reject: [:each | each isEmpty]!

identifierPathString
	"^aString
I return the 'directory' part of the path name."

	| sourceStream targetStream |
	targetStream := WriteStream on: String new.
	sourceStream := ReadStream on: self identifier.
	[sourceStream atEnd] whileFalse: 
			[| fragment |
			fragment := sourceStream throughAll: '/'.
			fragment last = $/ ifTrue: [targetStream nextPutAll: fragment]].
	^targetStream contents!

includesQuery: aString 
	| result |
	result := self queries detect: [:aQuery | aQuery key = aString]
				ifNone: [nil].
	^result notNil!

isDirectory
	^self identifier last = $/!

port
	"^an Integer
The port number defaults to 80 for HTTP."

	^port isNil ifTrue: [80] ifFalse: [port]!

port: anInteger 
	port := anInteger!

printOn: targetStream 
	(self hostname notNil and: [self protocol notNil]) 
		ifTrue: 
			[targetStream
				nextPutAll: self protocol;
				nextPutAll: '://'].
	self hostname notNil ifTrue: [targetStream nextPutAll: self hostname].
	(self hostname notNil and: [self port notNil and: [self port ~= 80]]) 
		ifTrue: 
			[targetStream
				nextPut: $:;
				nextPutAll: self port printString].
	self identifier notNil ifTrue: [targetStream nextPutAll: self identifier].
	self printQueriesOn: targetStream.
	^self!

printQueriesOn: targetStream 
	| firstQuery |
	self queries isEmpty 
		ifFalse: 
			[firstQuery := self queries at: 1.
			targetStream
				nextPut: $?;
				nextPutAll: firstQuery key;
				nextPut: $=;
				nextPutAll: firstQuery value.
			2 to: self queries size
				do: 
					[:queryIndex | 
					| aQuery |
					aQuery := self queries at: queryIndex.
					targetStream
						nextPut: $&;
						nextPutAll: aQuery key;
						nextPut: $=;
						nextPutAll: aQuery value]].
	^self!

protocol
	protocol isNil ifTrue: [self protocol: 'http'].
	^protocol!

protocol: aString
	protocol := aString.!

queries
	"^an OrderedCollection
This is an ordered colleciton of associations.  It can't be a dictionary, because it is legal to have many entries with the same key value."

	queries isNil ifTrue: [queries := OrderedCollection new].
	^queries!

queries: anOrderedCollection 
	"^self
The queries must be an OrderedCollection of Associations c.f. >>queries"

	queries := anOrderedCollection.
	^self!

queriesNamed: aString 
	^self queries select: [:aQuery | aQuery key = aString]!

queryAt: aString 
	^self queryAt: aString ifAbsent: [nil]!

queryAt: aString ifAbsent: aBlock 
	"^aString
I return the value of the first query I find with the key aString.  If there are none I execute aBlock."
	| result |

	result := self queries detect: [:aQuery | aQuery key = aString] ifNone: [aBlock].

	^(result == aBlock) 
	ifTrue: [aBlock value] 
	ifFalse: [result value]!

readHostFrom: aStream 
	"^self
I read the host name from the URI presumed to be in aStream.  The stream should be positioned right at the start, or just after the '//' of the protocol.  The host name is terminated by one of $:, $/, $? or the end of the stream depending on wether there is a port, path, query or nothing following the host.  If the host name is of zero length, I record a nil host name.  The stream is left positioned at the terminating character."

	| hostnameStream |
	hostnameStream := WriteStream on: String new.
	[|nextCharacter| 
	nextCharacter := aStream peek.
	#($: $/ $? nil) includes: nextCharacter]
		whileFalse: [hostnameStream nextPut: aStream next].
	 hostnameStream contents isEmpty ifFalse: [hostname := hostnameStream contents].
	^self!

readIdentifierFrom: sourceStream 

	self identifier: (sourceStream upTo: $?).
	^self!

readPortFrom: aStream 
	"^self
I read the port nnumber from the URI presumed to be in aStream.  If a port number has been specified, the stream should be positioned right at before a $: charcter.  So, if the next chacter is a :, we have a port number.  I read up to one of $/, $? or the end of the stream depending on wether there is a path, query or nothing following the host.  The stream is left positioned at the terminating character."

	| targetStream |
	targetStream := WriteStream on: String new.
	aStream peek == $: 
		ifTrue: 
			[| terminators |
			terminators := Array 
						with: $/
						with: $?
						with: nil.
			aStream next.
			
			[| nextCharacter |
			nextCharacter := aStream peek.
			terminators includes: nextCharacter] 
					whileFalse: 
						[| nextDigit |
						nextDigit := aStream next.
						nextDigit isDigit ifTrue: [targetStream nextPut: nextDigit]].
			targetStream contents isEmpty 
				ifFalse: [port := targetStream contents asNumber]].
	^self!

readProtocolFrom: aStream 
	"^self
I read the protocol from the URI presumed to be in aStream.  The protocol preceeds '://' in the URI.  I leave the stream position either right after the '//' if there is a protocol, otherwise I reset the position to the start of the stream."

	| candidateProtocol |
	candidateProtocol := aStream upTo: $:.
	(aStream size - aStream position >= 2 
		and: [aStream next == $/ and: [aStream next == $/]]) 
			ifTrue: [self protocol: candidateProtocol]
			ifFalse: [aStream reset].
	^self!

readQueryFrom: sourceStream 
	[sourceStream atEnd] whileFalse: 
		[| nameValue name value |
		nameValue := sourceStream upTo: $& .
		name := nameValue copyUpTo: $= .
		value := nameValue readStream upTo: $= "if any"; upToEnd.
		self queries add: name -> (HTTPString decodedHTTPFrom: value)].
	^self!

value
	"1 halt: 'Use >>asString or >>printOn: instead'. "
	^self asString! !
!SwazooURI categoriesFor: #asString!printing!public! !
!SwazooURI categoriesFor: #defaultPort!private! !
!SwazooURI categoriesFor: #fromStream:!initialize-release!public! !
!SwazooURI categoriesFor: #fromString:!initialize-release!public! !
!SwazooURI categoriesFor: #host!accessing!public! !
!SwazooURI categoriesFor: #host:!accessing!public! !
!SwazooURI categoriesFor: #hostname!accessing!public! !
!SwazooURI categoriesFor: #hostname:!accessing!public! !
!SwazooURI categoriesFor: #identifier!accessing!public! !
!SwazooURI categoriesFor: #identifier:!accessing!public! !
!SwazooURI categoriesFor: #identifierPath!accessing!public! !
!SwazooURI categoriesFor: #identifierPathString!accessing!public! !
!SwazooURI categoriesFor: #includesQuery:!accessing-queries!public! !
!SwazooURI categoriesFor: #isDirectory!public!testing! !
!SwazooURI categoriesFor: #port!accessing!public! !
!SwazooURI categoriesFor: #port:!accessing!public! !
!SwazooURI categoriesFor: #printOn:!printing!public! !
!SwazooURI categoriesFor: #printQueriesOn:!printing!public! !
!SwazooURI categoriesFor: #protocol!accessing!public! !
!SwazooURI categoriesFor: #protocol:!accessing!public! !
!SwazooURI categoriesFor: #queries!accessing-queries!public! !
!SwazooURI categoriesFor: #queries:!accessing-queries!public! !
!SwazooURI categoriesFor: #queriesNamed:!accessing-queries!public! !
!SwazooURI categoriesFor: #queryAt:!accessing-queries!public! !
!SwazooURI categoriesFor: #queryAt:ifAbsent:!accessing-queries!public! !
!SwazooURI categoriesFor: #readHostFrom:!private! !
!SwazooURI categoriesFor: #readIdentifierFrom:!private! !
!SwazooURI categoriesFor: #readPortFrom:!private! !
!SwazooURI categoriesFor: #readProtocolFrom:!private! !
!SwazooURI categoriesFor: #readQueryFrom:!private! !
!SwazooURI categoriesFor: #value!accessing!public! !

!SwazooURI class methodsFor!

fromString: aString
	^self new fromString: aString!

value: aString
	^self new value: aString! !
!SwazooURI class categoriesFor: #fromString:!instance creation!public! !
!SwazooURI class categoriesFor: #value:!instance creation!public! !

