"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooBenchmarks
	instanceVariableNames: 'server content'
	classVariableNames: 'Singleton'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooBenchmarks guid: (GUID fromString: '{5ed85ce5-628f-4ccd-bdc8-f94e03455edf}')!
SwazooBenchmarks comment: '
SwazooBenchmarks stores several benchmarks and performance routines

'!
!SwazooBenchmarks categoriesForClass!Unclassified! !
!SwazooBenchmarks methodsFor!

content
	"test content to be writen to the socket"
	content isNil ifTrue: [self initContent].
	^content!

content: aByteArray
	content := aByteArray!

contentSize
	^4!

initContent
	| response ws |
	response := HTTPResponse ok.
	response entity: (ByteArray new: self contentSize withAll: 16r55).
	ws := SwazooStream on: String new.
	response writeTo: ws.
	content := ws writeBuffer contents.!

server
	"TCP server loop"
	^server!

server: aProcess
	"TCP server loop"
	server := aProcess!

serverLoop
	| socket clientSocket |
	socket := SpSocket newTCPSocket.
	socket
		setAddressReuse: true;
		bindSocketAddress: (SpIPAddress hostName: 'localhost' port: 9999).
	[	socket listenBackloggingUpTo: 50.
		[true] whileTrue: 
			[ 	clientSocket := socket accept.
				[ [true] whileTrue: 
					[clientSocket underlyingSocket waitForData.
					clientSocket read: 60. "HTTP request"
					clientSocket write: self content] ]
				on: Error "probably connection close by peer"
				do: [:ex | "nothing"]
			]
	] ensure: [clientSocket notNil ifTrue: [clientSocket close]. socket close]!

startSocketServer
	"SwazooBenchmarks singleton startSocketServer"
	"SwazooBenchmarks singleton stopSocketServer"
	"testing raw socket performance.
	it will start a server on localhost:9999 to receive a request 
      and respond with 10K response as drirectly as possible."

	self stopSocketServer. 
	self server: [self serverLoop] fork.!

stopSocketServer
	"SwazooBenchmarks singleton stopSocketServer"
	self server notNil ifTrue: [self server terminate. self server: nil].
	self content: nil.
	(Delay forMilliseconds: 1000) wait.
! !
!SwazooBenchmarks categoriesFor: #content!accessing!public! !
!SwazooBenchmarks categoriesFor: #content:!accessing!public! !
!SwazooBenchmarks categoriesFor: #contentSize!initialize-release!public! !
!SwazooBenchmarks categoriesFor: #initContent!initialize-release!public! !
!SwazooBenchmarks categoriesFor: #server!accessing!public! !
!SwazooBenchmarks categoriesFor: #server:!accessing!public! !
!SwazooBenchmarks categoriesFor: #serverLoop!public!socket performance! !
!SwazooBenchmarks categoriesFor: #startSocketServer!public!socket performance! !
!SwazooBenchmarks categoriesFor: #stopSocketServer!public!socket performance! !

!SwazooBenchmarks class methodsFor!

singleton
	Singleton isNil ifTrue: [Singleton := self new].
	^Singleton! !
!SwazooBenchmarks class categoriesFor: #singleton!accessing!public! !

