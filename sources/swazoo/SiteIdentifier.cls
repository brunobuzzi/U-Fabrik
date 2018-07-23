"Filed out from Dolphin Smalltalk 7"!

URIIdentifier subclass: #SiteIdentifier
	instanceVariableNames: 'ip port host'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SiteIdentifier guid: (GUID fromString: '{3e58856a-9e8b-46e5-a062-bd08d81c6a9c}')!
SiteIdentifier comment: ''!
!SiteIdentifier categoriesForClass!Unclassified! !
!SiteIdentifier methodsFor!

currentUrl
	| stream |
	stream := WriteStream on: String new.
	self printUrlOn: stream.
	^stream contents!

host
	^host!

host: aString
	host := aString!

hostMatch: aSiteIdentifier
	(self host asLowercase = aSiteIdentifier host asLowercase) ifTrue: [^true].
	(self host = '*' or: [aSiteIdentifier host = '*']) ifTrue: [^true]. "is this always good?"
 	^false!

ip
	^ip!

ip: aString
	ip := aString!

ipMatch: aSiteIdentifier
	"ip can be in numbers or named!!"
	| myIP otherIP |
	self ip = aSiteIdentifier ip ifTrue: [^true].
	(self ip = '*' or: [self ip = '0.0.0.0']) ifTrue: [^true].
	(aSiteIdentifier ip = '*' or: [aSiteIdentifier ip = '0.0.0.0']) ifTrue: [^true]. 
																"is this always good?"
	myIP := SpIPAddress hostName: self ip port: self port.
	otherIP := SpIPAddress hostName: aSiteIdentifier ip port: aSiteIdentifier port.
	^myIP hostAddress = otherIP hostAddress!

isEmpty
	"host ip port empty or nil"
	(host isNil or: [host isEmpty]) ifTrue: [^true].
	(ip isNil or: [ip isEmpty]) ifTrue: [^true].
	port isNil ifTrue: [^true].
	^false!

newServer
	^ HTTPServer new ip: self ip;  port: self port!

port
	^port!

port: aNumber
	port := aNumber!

portMatch: aSiteIdentifier
	"ih host can be anything then same goes for the port of request too"
	self port = aSiteIdentifier port ifTrue: [^true].
	(self host = '*' or: [aSiteIdentifier host = '*']) ifTrue: [^true].
 	^false!

printHostPortStringOn: stream 
	stream nextPutAll: (self host notNil ifTrue: [self host] ifFalse: ['']).
	self port = 80 ifFalse: [stream nextPut: $:; nextPutAll: self port printString]!

printString
	^'a Swazoo.SiteIndentifier
	host: ', (self host isNil ifTrue: [''] ifFalse: [self host]), '
	ip: ', (self ip isNil ifTrue: [''] ifFalse: [self ip]), '
	port: ', self port printString!

printUrlOn: aWriteStream 
	aWriteStream nextPutAll: 'http://'.
	self printHostPortStringOn: aWriteStream!

setIp: anIP port: aPort host: hostName 
	self ip: anIP.
	self port: aPort.
	self host: hostName!

valueMatch: aSiteIdentifier
	^(self portMatch: aSiteIdentifier)
		and: [(self ipMatch: aSiteIdentifier)
			and: [self hostMatch: aSiteIdentifier] ]! !
!SiteIdentifier categoriesFor: #currentUrl!accessing!public! !
!SiteIdentifier categoriesFor: #host!accessing!public! !
!SiteIdentifier categoriesFor: #host:!private! !
!SiteIdentifier categoriesFor: #hostMatch:!private-comparing!public! !
!SiteIdentifier categoriesFor: #ip!accessing!public! !
!SiteIdentifier categoriesFor: #ip:!private! !
!SiteIdentifier categoriesFor: #ipMatch:!private-comparing!public! !
!SiteIdentifier categoriesFor: #isEmpty!public!testing! !
!SiteIdentifier categoriesFor: #newServer!initialize-release!public! !
!SiteIdentifier categoriesFor: #port!accessing!public! !
!SiteIdentifier categoriesFor: #port:!private! !
!SiteIdentifier categoriesFor: #portMatch:!private-comparing!public! !
!SiteIdentifier categoriesFor: #printHostPortStringOn:!private! !
!SiteIdentifier categoriesFor: #printString!private! !
!SiteIdentifier categoriesFor: #printUrlOn:!private! !
!SiteIdentifier categoriesFor: #setIp:port:host:!initialize-release!public! !
!SiteIdentifier categoriesFor: #valueMatch:!private-comparing!public! !

!SiteIdentifier class methodsFor!

host: hostName ip: anIP port: aPort 
	^self new 
		setIp: anIP
		port: aPort
		host: hostName!

ip: anIP port: aPort host: hostName 
	^self new 
		setIp: anIP
		port: aPort
		host: hostName! !
!SiteIdentifier class categoriesFor: #host:ip:port:!instance creation!public! !
!SiteIdentifier class categoriesFor: #ip:port:host:!obsolete!public! !

