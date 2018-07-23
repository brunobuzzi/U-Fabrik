"Filed out from Dolphin Smalltalk 7"!

ReadWriteStream subclass: #SwazooBuffer
	instanceVariableNames: 'type resize'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooBuffer guid: (GUID fromString: '{3aa46e7c-00b7-4223-b26d-b065bd581ab9}')!
SwazooBuffer comment: '
SwazooBuffer is used for efficient buffering of receiving or sending data to TCP socket. Efficiency is achieved with reusing of stream content array instead of initializing it everytime buffer is emptied, as was in previous Swazoo versions. 

SwazooBuffer is a subclass of ReadWriteStream, with additional #clear to empty buffer.

'!
!SwazooBuffer categoriesForClass!Unclassified! !
!SwazooBuffer methodsFor!

atEnd
	^super atEnd "for now"!

closeChunkTo: aSocket
	"a zero sized chunk determine and end of chunked data and also response"
	"pack all together to send one TCP packet ony"
	| chunk written |
	chunk := String new: 5.
	chunk at: 1 put: $0 .
	chunk at: 2 put: Character cr. "first crlf ends 0 length line "
	chunk at: 3 put: Character lf.
	chunk at: 4 put: Character cr. "second crlf ends whole response"
	chunk at: 5 put: Character lf.
	written := aSocket writeFrom: chunk asByteArray startingAt: 1 for: chunk size.
	written = chunk size ifFalse: [self error: 'socket write error'].!

contents
	"Answer a copy of the receiver's collection, skipping preamble."
	readLimit := readLimit max: position.
	^collection copyFrom: self class preambleSize+1 to: readLimit!

copyBufferTo: anIndex
	"from current position to desired index"
	| start |
	start := position+1.
	position := anIndex.
	^collection copyFrom: start to: anIndex.!

flushChunkTo: aSocket
	"a buffer will be sent as a chunk, with hex size in first line then crlf, buffer, then crlf"
	"send a complete chunk in one piece, don't partition TCP sending in too many packets!!"
	| length |
	 self size > 16rFFFF ifTrue: [self error: 'chunk too long!!']. "preamble has no room for bigger"
	length := self size printStringRadix: 16.
	SpEnvironment isSqueak ifTrue: [length := length copyFrom: 4 to: length size]. "trim 16r"
	1 to: length size do: [:inx | collection at: inx put: (length at: inx) asInteger].
	 (length size+1) to: 4 do: [:inx | collection at: inx put: $ asInteger]. "add spaces"
	collection at: 5 put: Character cr asInteger.
	collection at: 6 put: Character lf asInteger.
	"add finishing crlf to buffer"
	self nextPut: Character cr asInteger.
	self nextPut: Character lf asInteger.
	self flushTo: aSocket chunked: true. "flush all at once"!

flushTo: aSocket
	"actually write to the tcp socket as direclty as possible"
	self flushTo: aSocket chunked: false.
!

flushTo: aSocket chunked: chunkedBoolean
	"actually write to the tcp socket as direclty as possible 
	(directly from stream's instvar collection)"
	| remaining start written |
	remaining := chunkedBoolean 
		ifTrue: [position]  "ensure to send preamble too"
		ifFalse: [position - self class preambleSize]. "skip preamble"
	[remaining > 0] whileTrue: 
		[start := position - remaining + 1.
		written := aSocket 
			writeFrom: collection startingAt: start for: (position - start + 1).
		remaining := remaining - written].
	self writeClear.
	self shouldResize ifTrue: [self resizeBuffer; resizeNil]. "enlarge or shrink buffer if requested"!

indexOfBoundary: aBoundaryBytes
	"index of boundary start, beeing full boundary or part at the end of buffer. 0 if not found"
	| inx innerInx firstInx |
	inx := position+1.
	[inx <= readLimit] whileTrue:
		[innerInx := 1. firstInx := inx.
		[(aBoundaryBytes at: innerInx) = (collection at: inx)] whileTrue:
			[innerInx = aBoundaryBytes size ifTrue: [^firstInx]. "full boundary found"
			inx = readLimit ifTrue: [^firstInx].  "partial boundary at the edge of buffer found"
			inx := inx + 1. innerInx := innerInx + 1].
		inx := inx + 1].
	^0!

initDefaultBuffer
	"Squeak specific - writeLimit"
	| size |
	size := self isWrite
		ifTrue: [self class defaultBufferSize + self class preambleSize + 2] "possible chunk crlf"
		ifFalse: [self class defaultBufferSize].
	collection := ByteArray new: size.
	writeLimit := size. "Squeak specific"
	self reset.
	self isWrite ifTrue: [self initPreamble].!

initLargeBuffer
	"Squeak specific - writeLimit"
	| size |
	size := self isWrite
		ifTrue: [self class largeBufferSize + self class preambleSize + 2] "possible chunk crlf"
		ifFalse: [self class largeBufferSize].
	collection := ByteArray new: size.
	writeLimit := size. "Squeak specific"
	self reset.
	self isWrite ifTrue: [self initPreamble].!

initPreamble
	"make room for possible chunk 'preamble' = length line"
	position := self class preambleSize.
!

isBinary
	^collection class == ByteArray!

isEnlarged
	^collection size > self class defaultBufferSize!

isFull
	"buffer full or even more"
	^position >= self class defaultBufferSize!

isRead
	^type = #read!

isWrite
	^type = #write!

readClear
	"reset as you'd make another one, just don't replace content array"
	position := 0.
	readLimit := self class defaultBufferSize.!

readContents
	^(position = 0 and: [readLimit = self class defaultBufferSize]) "whole buffer?"
		ifTrue: [collection] "avoid copying for performance"
		ifFalse: [collection copyFrom: position+1 to: readLimit]!

refillFrom: aSocket
	"reset and read from to the tcp socket as direclty as possible 
	(directly from stream's instvar collection)"
	aSocket isNil ifTrue: [^self]. "if SwazooStream is used for tests only"
	self readClear. "just reset pointers, not a collection!! "
	self shouldResize ifTrue: [self resizeBuffer; resizeNil]. "enlarge or shrink buffer if requested"
	readLimit "nr. of actuall bytes read ":= aSocket
		readInto: collection startingAt: 1 for: collection size.
	self atEnd ifTrue: 
		[SwazooStreamNoDataError raiseSignal: 'No data available.  Socket probably closed']!

resizeBuffer
	"actually do a buffer resize"
	self shouldEnlarge ifTrue: [^self initLargeBuffer].
	self shouldShrink ifTrue: [^self initDefaultBuffer].!

resizeEnlarge
	"request resizing buffer to larger size at the next fill or flush"
	resize := #enlarge!

resizeNil
	"nil resizing command"
	resize := nil!

resizeShrink
	"request shrinking buffer to default size at the next fill or flush"
	resize := #shrink!

setRead
	type := #read!

setWrite
	type := #write!

shouldEnlarge
	"should be resized buffer to larger size?"
	^resize = #enlarge!

shouldResize
	^resize notNil!

shouldShrink
	"should be resized buffer to default size?"
	^resize = #shrink!

signsOfBoundary: aBoundaryBytes
	"detect as fast as possible if any if not all MIME part boundary is present in buffer contents"
	"return number of bundary bytes detected, 0 = no boundary"
	| first index |
	first := aBoundaryBytes first.
	"fast test"
	((self position+1 to: readLimit) contains: [:inx | (collection at: inx) = first]) ifFalse: [^0].
	"full or partial boundary on the edge of buffer test"
	index := self indexOfBoundary: aBoundaryBytes. "index of full, or partial boundary at the edge"
	index = 0 ifTrue: [^0]. "no boundary found"
	readLimit-index >= aBoundaryBytes size ifTrue: [^aBoundaryBytes size]. "full boundary detected"
	^readLimit-index+1  "partial boundary at the end of buffer"!

size
	^position - self class preambleSize!

startsWith: aPartialBoundaryBytes
	"is remaining part of MIME part boundary at the start of buffer?"
	"VW specific!! "
	1 to: aPartialBoundaryBytes size do: [:inx |
		(collection at: position + inx) = (aPartialBoundaryBytes at: inx) ifFalse: [^false] ].
	^true!

writeClear
	"reset as you'd make another one, just don't replace content array"
	self reset.
	readLimit := 0.
	self initPreamble.! !
!SwazooBuffer categoriesFor: #atEnd!public!testing! !
!SwazooBuffer categoriesFor: #closeChunkTo:!public!writing-chunked! !
!SwazooBuffer categoriesFor: #contents!accessing!public! !
!SwazooBuffer categoriesFor: #copyBufferTo:!mime boundary!public! !
!SwazooBuffer categoriesFor: #flushChunkTo:!public!writing-chunked! !
!SwazooBuffer categoriesFor: #flushTo:!public!writing! !
!SwazooBuffer categoriesFor: #flushTo:chunked:!private-sending!public! !
!SwazooBuffer categoriesFor: #indexOfBoundary:!mime boundary!public! !
!SwazooBuffer categoriesFor: #initDefaultBuffer!initialize-release!public! !
!SwazooBuffer categoriesFor: #initLargeBuffer!initialize-release!public! !
!SwazooBuffer categoriesFor: #initPreamble!initialize-release!public! !
!SwazooBuffer categoriesFor: #isBinary!public!testing! !
!SwazooBuffer categoriesFor: #isEnlarged!private-resizing!public! !
!SwazooBuffer categoriesFor: #isFull!public!testing! !
!SwazooBuffer categoriesFor: #isRead!public!testing! !
!SwazooBuffer categoriesFor: #isWrite!public!testing! !
!SwazooBuffer categoriesFor: #readClear!initialize-release!public! !
!SwazooBuffer categoriesFor: #readContents!accessing!public! !
!SwazooBuffer categoriesFor: #refillFrom:!public!reading! !
!SwazooBuffer categoriesFor: #resizeBuffer!private-resizing!public! !
!SwazooBuffer categoriesFor: #resizeEnlarge!private-resizing!public! !
!SwazooBuffer categoriesFor: #resizeNil!private-resizing!public! !
!SwazooBuffer categoriesFor: #resizeShrink!private-resizing!public! !
!SwazooBuffer categoriesFor: #setRead!initialize-release!public! !
!SwazooBuffer categoriesFor: #setWrite!initialize-release!public! !
!SwazooBuffer categoriesFor: #shouldEnlarge!private-resizing!public! !
!SwazooBuffer categoriesFor: #shouldResize!private-resizing!public! !
!SwazooBuffer categoriesFor: #shouldShrink!private-resizing!public! !
!SwazooBuffer categoriesFor: #signsOfBoundary:!mime boundary!public! !
!SwazooBuffer categoriesFor: #size!accessing!public! !
!SwazooBuffer categoriesFor: #startsWith:!mime boundary!public! !
!SwazooBuffer categoriesFor: #writeClear!initialize-release!public! !

!SwazooBuffer class methodsFor!

defaultBufferSize
	"length of buffer at creation. Later not nessesary exactly this number!! "
	^8000 "about 8KB-preamble"
!

largeBufferSize
	"size of buffer for large uploads/downloads"
	^1000000	"about 1MB"!

newRead
	^(super on: Array new) setRead; initDefaultBuffer!

newWrite
	^(super on: Array new) setWrite;  initDefaultBuffer!

on: aByteStringOrArray
        ^(super on: aByteStringOrArray)
                moveToEnd;
                position: 0 !

preambleSize
	"chunk size line (fixed to 4 hex characters) + crlf"
	^6! !
!SwazooBuffer class categoriesFor: #defaultBufferSize!defaults!public! !
!SwazooBuffer class categoriesFor: #largeBufferSize!defaults!public! !
!SwazooBuffer class categoriesFor: #newRead!instance creation!public! !
!SwazooBuffer class categoriesFor: #newWrite!instance creation!public! !
!SwazooBuffer class categoriesFor: #on:!instance creation!public! !
!SwazooBuffer class categoriesFor: #preambleSize!defaults!public! !

