"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooStream
	instanceVariableNames: 'socket readBuffer writeBuffer chunked'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooStream guid: (GUID fromString: '{d137f686-9087-473f-bd0e-2d298d30f293}')!
SwazooStream comment: ''!
!SwazooStream categoriesForClass!Unclassified! !
!SwazooStream methodsFor!

anyDataReady
	"wait for data and return true if any data ready. On VW somethimes happen that data 
      receipt is signaled but no data is actually received"
	self readBuffer atEnd ifFalse: [^true]. "data is there from before"
	self fillBuffer.
	^self readBuffer atEnd not!

atEnd
	"TCP socket data never ends!!"
	^false!

close
	"close TCP socket and relase buffers"
	self socket close.
	self nilWriteBuffer.
	self nilReadBuffer.  "to GC buffers"!

closeResponse
	"for chunked response: close it by sending null chunk"
	"do a bit cleanup after response is sent"
	self flush.
	self isChunked ifTrue: 
		[self writeBuffer closeChunkTo: self socket.
		self resetChunked].
	self socket notNil "not simulation" ifTrue: [self nilWriteBuffer]. "to release memory"!

cr
	self nextPut: Character cr asInteger!

crlf
	self cr; lf.!

fillBuffer
	self socket isNil ifTrue: [^self]. "if SwazooStream is used for tests only"
	self readBuffer refillFrom: self socket.!

flush
	"actually write to the tcp socket and clear write buffer"
	self socket isNil ifTrue: [^nil]. "for simulations and tests"
	self isChunked
		ifTrue: [self writeBuffer flushChunkTo: self socket]
		ifFalse: [	self writeBuffer flushTo: self socket].!

initReadBuffer
	"temporary read buffer"
	readBuffer := SwazooBuffer newRead!

initWriteBuffer
	"temporary write buffer. flush it to socket ocassionaly!!"
	writeBuffer := SwazooBuffer newWrite!

isChunked
	"sending in chunks (transfer encoding: chunked)"
	^chunked notNil and: [chunked]!

lf
	self nextPut: Character lf asInteger!

next
	^self nextByte asCharacter!

next: anInteger 
	^(self nextBytes: anInteger) asString!

next: size putAll: aSequenceableCollection startingAt: start
	"Dolphin Smalltalk compatibility."

	^writeBuffer
		next: size
		putAll: aSequenceableCollection
		startingAt: start!

nextByte
	self syncBuffer.
	^self readBuffer next.
!

nextBytes: aNumber 
	| array |
	array := ByteArray new: aNumber.
	1 to: aNumber do: [:index |  array at: index put: self nextByte].
	^array!

nextLine
	| stream |
	stream := WriteStream on: (String new: 50).
	self writeNextLineTo: stream.
	^stream contents!

nextPut: aCharacterOrInteger
	self nextPutByte: aCharacterOrInteger asInteger.
	^aCharacterOrInteger!

nextPutAll: aByteStringOrArray
	self nextPutBytes: aByteStringOrArray asByteArray.
	^aByteStringOrArray!

nextPutByte: aByte 
	self writeBuffer nextPut: aByte.
	self writeBuffer isFull ifTrue: [self flush].
	^aByte!

nextPutBytes: aByteArray 
	self writeBuffer nextPutAll: aByteArray.
	self writeBuffer isFull ifTrue: [self flush]. 
	^aByteArray!

nextPutLine: aByteStringOrArray 
	self nextPutAll: aByteStringOrArray.
	self crlf.!

nextUnfoldedLine
	| stream ch |
	stream := WriteStream on: (String new: 50).
	self writeNextLineTo: stream.
	stream contents isEmpty ifFalse: [
		[ch := self peek.
		ch notNil and: [ch == Character space or: [ch == Character tab]]] 
			whileTrue: [self writeNextLineTo: stream]
		].
	^stream contents!

nilReadBuffer
	"to release memory"
	readBuffer := nil!

nilWriteBuffer
	"to release memory"
	writeBuffer := nil!

peek
	| byte |
	byte := self peekByte.
	^byte notNil 
		ifTrue: [byte asCharacter] 
		ifFalse: [nil]!

peekByte
	self syncBuffer.
	^self readBuffer peek!

print: anObject 
	anObject printOn: self!

readBuffer
	readBuffer isNil ifTrue: [self initReadBuffer].
	^readBuffer!

readBuffer: aSwazooBuffer
	readBuffer := aSwazooBuffer!

resetChunked
	"sending in chunks (transfer encoding: chunked)"
	chunked := false!

setChunked
	"sending in chunks (transfer encoding: chunked)"
	chunked := true!

setSocket: aSwazooSocket 
	self socket: aSwazooSocket.!

skip: anInteger
	anInteger timesRepeat: [self nextByte].!

socket
	^socket!

socket: aSocket
	socket := aSocket!

space
	self nextPut: Character space!

syncBuffer
	self readBuffer atEnd ifTrue: [self fillBuffer]!

upTo: aCharacterOrByte
	| targetByte ws byte |
	targetByte := aCharacterOrByte asInteger.
	ws := ByteArray new writeStream.
	[byte := self nextByte.
	byte = targetByte] whileFalse: [ws nextPut: byte].
	^ws contents!

writeBuffer
	writeBuffer isNil ifTrue: [self initWriteBuffer].
	^writeBuffer!

writeNextLineTo: aStream 
	aStream nextPutAll: (self upTo: Character cr asInteger) asString.
	^self peekByte = Character lf asInteger 
		ifTrue: [self nextByte]  "skip remaining linefeed"
		ifFalse: [SwazooHTTPParseError raiseSignal: 'CR without LF']! !
!SwazooStream categoriesFor: #anyDataReady!accessing-reading!public! !
!SwazooStream categoriesFor: #atEnd!accessing-reading!public! !
!SwazooStream categoriesFor: #close!initialize-release!public! !
!SwazooStream categoriesFor: #closeResponse!initialize-release!public! !
!SwazooStream categoriesFor: #cr!accessing-writing!public! !
!SwazooStream categoriesFor: #crlf!accessing-writing!public! !
!SwazooStream categoriesFor: #fillBuffer!private! !
!SwazooStream categoriesFor: #flush!initialize-release!public! !
!SwazooStream categoriesFor: #initReadBuffer!initialize-release!public! !
!SwazooStream categoriesFor: #initWriteBuffer!initialize-release!public! !
!SwazooStream categoriesFor: #isChunked!chunking!public! !
!SwazooStream categoriesFor: #lf!accessing-writing!public! !
!SwazooStream categoriesFor: #next!accessing-reading!public! !
!SwazooStream categoriesFor: #next:!accessing-reading!public! !
!SwazooStream categoriesFor: #next:putAll:startingAt:!public! !
!SwazooStream categoriesFor: #nextByte!private-stream!public! !
!SwazooStream categoriesFor: #nextBytes:!private-stream!public! !
!SwazooStream categoriesFor: #nextLine!accessing-reading!public! !
!SwazooStream categoriesFor: #nextPut:!accessing-writing!public! !
!SwazooStream categoriesFor: #nextPutAll:!accessing-writing!public! !
!SwazooStream categoriesFor: #nextPutByte:!private-stream!public! !
!SwazooStream categoriesFor: #nextPutBytes:!private-stream!public! !
!SwazooStream categoriesFor: #nextPutLine:!accessing-writing!public! !
!SwazooStream categoriesFor: #nextUnfoldedLine!accessing-reading!public! !
!SwazooStream categoriesFor: #nilReadBuffer!initialize-release!public! !
!SwazooStream categoriesFor: #nilWriteBuffer!initialize-release!public! !
!SwazooStream categoriesFor: #peek!accessing-reading!public! !
!SwazooStream categoriesFor: #peekByte!private-stream!public! !
!SwazooStream categoriesFor: #print:!private! !
!SwazooStream categoriesFor: #readBuffer!private! !
!SwazooStream categoriesFor: #readBuffer:!private! !
!SwazooStream categoriesFor: #resetChunked!chunking!public! !
!SwazooStream categoriesFor: #setChunked!chunking!public! !
!SwazooStream categoriesFor: #setSocket:!private! !
!SwazooStream categoriesFor: #skip:!accessing-reading!public! !
!SwazooStream categoriesFor: #socket!private! !
!SwazooStream categoriesFor: #socket:!private! !
!SwazooStream categoriesFor: #space!accessing-writing!public! !
!SwazooStream categoriesFor: #syncBuffer!private! !
!SwazooStream categoriesFor: #upTo:!accessing-reading!public! !
!SwazooStream categoriesFor: #writeBuffer!private! !
!SwazooStream categoriesFor: #writeNextLineTo:!accessing-reading!public! !

!SwazooStream class methodsFor!

connectedPair
	^SwazooSocket connectedPair collect: [:each | self socket: each]!

on: aString 
	"use only for testing!!"
	^self new readBuffer: (SwazooBuffer on: aString)!

socket: aSwazooSocket 
	^self new setSocket: aSwazooSocket! !
!SwazooStream class categoriesFor: #connectedPair!instance creation!public! !
!SwazooStream class categoriesFor: #on:!instance creation!public! !
!SwazooStream class categoriesFor: #socket:!instance creation!public! !

