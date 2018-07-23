"Filed out from Dolphin Smalltalk 7"!

Object subclass: #TestPseudoSocket
	instanceVariableNames: 'byteStreamToServer byteStreamFromServer clientWaitSemaphore serverWaitSemaphore ipAddress'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TestPseudoSocket guid: (GUID fromString: '{6ed4ae73-7303-445c-ad59-62c3a9e55791}')!
TestPseudoSocket comment: '
TestPseudoSocket is a drop in replacement for a SwazooSocket that can be used during testing to feed bytes into a running SwazooHTTPServer and grab the responses without having to start a real socket pair.

So, to the HTTP server it must look like a server socket.  To the tester it must look like a write stream (to send bytes to the HTTP server) and a read stream (to read the HTTP responses).'!
!TestPseudoSocket categoriesForClass!Unclassified! !
!TestPseudoSocket methodsFor!

acceptRetryingIfTransientErrors
	"^another TestSocketThing
	The sender expects me to block until a request comes in 'over the socket'.  What I really do is wait for someone to ask me to 'send in' a Byte array and then I return myself.  Note that I will only handle one request at a time!!"

	self serverWaitSemaphore wait.
	^self!

bindSocketAddress: anOSkIPAddress 
	"^self
This is a no-op for me."

	ipAddress := anOSkIPAddress.
	^self!

byteStreamFromServer
	^byteStreamFromServer!

byteStreamFromServer: aByteStream 
	byteStreamFromServer := aByteStream.
	^self!

byteStreamToServer
	^byteStreamToServer!

byteStreamToServer: aByteStream 
	byteStreamToServer := aByteStream.
	^self!

clientWaitSemaphore
	"^a Semaphore
I return the semaphore I use to control 'client' activity."

	clientWaitSemaphore isNil ifTrue: [clientWaitSemaphore := Semaphore new].
	^clientWaitSemaphore!

close
	"^self
The server has finished with us at this point, so we signal the semaphore to give the client end chance to grab the response."

	self clientWaitSemaphore signal.
	^self!

flush
	^self!

getPeerName
	^ipAddress!

getSocketName
	^ipAddress!

isActive
	"^self
I am pretending to be a socket, and the sender wants to know if I am active.  Of course I am!!."

	^true!

listenBackloggingUpTo: anInteger 
	"^self
This is a no-op for me."

	^self!

listenFor: anInteger 
	"^self
This is a no-op for now."

	^self!

next
	^self byteStreamToServer next!

nextPut: aCharacter 
	self byteStreamFromServer nextPut: aCharacter asInteger!

nextPutAll: aCollection 
	"^self
At present it seems that aCollection will always be a string of chacters."

	^self byteStreamFromServer nextPutAll: aCollection asByteArray!

nextPutBytes: aByteArray 
	self byteStreamFromServer nextPutAll: aByteArray!

peek
	"^a Character
It seems that the HTTP server is expecting Characters not Bytes - this will have to change."

	^byteStreamToServer isNil 
		ifTrue: [nil]
		ifFalse: [self byteStreamToServer peek asCharacter]!

print: anObject 
	self nextPutAll: anObject printString asByteArray.
	^self!

read: integerNumberOfBytes 
	"^a ByteArray
I read the next numberOfBytes from my underlying stream."

	^byteStreamToServer isNil 
		ifTrue: [ByteArray new]
		ifFalse: [self byteStreamToServer nextAvailable: integerNumberOfBytes]!

serverWaitSemaphore
	"^a Semaphore
I return the semaphore I use to control 'server' activity."

	serverWaitSemaphore isNil ifTrue: [serverWaitSemaphore := Semaphore new].
	^serverWaitSemaphore!

setAddressReuse: aBoolean 
	"^self
This is a no-op for me."

	^self!

socket
	"^self
I am being asked this as if I am a socket stream.  I return myself because I'm pretending to be both the socket and the socket stream."

	^self!

space
	self nextPut: Character space.
	^self!

stream
	"^self
I have to pretend to be a socket stream too."

	^self!

upTo: aCharacter 
	"a ByteString
For some reason, we have to look for a character in a ByteStream - this is a Swazoo thing."

	^(self byteStreamToServer upTo: aCharacter asInteger) asByteString!

write: aByteArray 
	"^an Integer
	I write the contents of the sourceByteArray to my underlying Socket.
	I return the number of bytes written."

	self byteStreamFromServer nextPutAll: aByteArray.
	^aByteArray size!

writeBytesToServer: aByteArray 
	"^self
This is where we make the bytes available over the pseudo socket.  Unlike a socket this is a one off thing (at least in this implementation of the pseudo socket).  Once the bytes are written, control passes to the server and stays there until the server sends a close to what it thinks is the client socket, but is really me."

	| results |
	self byteStreamToServer: (ReadStream on: aByteArray).
	self byteStreamFromServer: (WriteStream on: (ByteArray new: 1000)).
	self serverWaitSemaphore signal.
	self clientWaitSemaphore wait.
	results := self byteStreamFromServer contents.
	self byteStreamToServer: nil.
	self byteStreamFromServer: nil.
	^results! !
!TestPseudoSocket categoriesFor: #acceptRetryingIfTransientErrors!public!socket stuff! !
!TestPseudoSocket categoriesFor: #bindSocketAddress:!public!socket stuff! !
!TestPseudoSocket categoriesFor: #byteStreamFromServer!accessing!public! !
!TestPseudoSocket categoriesFor: #byteStreamFromServer:!accessing!public! !
!TestPseudoSocket categoriesFor: #byteStreamToServer!accessing!public! !
!TestPseudoSocket categoriesFor: #byteStreamToServer:!accessing!public! !
!TestPseudoSocket categoriesFor: #clientWaitSemaphore!accessing!public! !
!TestPseudoSocket categoriesFor: #close!public!socket stuff! !
!TestPseudoSocket categoriesFor: #flush!public!socket stuff! !
!TestPseudoSocket categoriesFor: #getPeerName!public!socket stuff! !
!TestPseudoSocket categoriesFor: #getSocketName!public!socket stuff! !
!TestPseudoSocket categoriesFor: #isActive!public!socket stuff! !
!TestPseudoSocket categoriesFor: #listenBackloggingUpTo:!public!socket stuff! !
!TestPseudoSocket categoriesFor: #listenFor:!public!socket stuff! !
!TestPseudoSocket categoriesFor: #next!public!stream-toServer! !
!TestPseudoSocket categoriesFor: #nextPut:!public!stream-fromServer! !
!TestPseudoSocket categoriesFor: #nextPutAll:!public!stream-fromServer! !
!TestPseudoSocket categoriesFor: #nextPutBytes:!public!stream-fromServer! !
!TestPseudoSocket categoriesFor: #peek!public!stream-toServer! !
!TestPseudoSocket categoriesFor: #print:!public!stream-fromServer! !
!TestPseudoSocket categoriesFor: #read:!public!stream-toServer! !
!TestPseudoSocket categoriesFor: #serverWaitSemaphore!accessing!public! !
!TestPseudoSocket categoriesFor: #setAddressReuse:!public!socket stuff! !
!TestPseudoSocket categoriesFor: #socket!public!stream-toServer! !
!TestPseudoSocket categoriesFor: #space!public!stream-fromServer! !
!TestPseudoSocket categoriesFor: #stream!public!socket stuff! !
!TestPseudoSocket categoriesFor: #upTo:!public!stream-toServer! !
!TestPseudoSocket categoriesFor: #write:!public!stream-fromServer! !
!TestPseudoSocket categoriesFor: #writeBytesToServer:!actions-client!public! !

!TestPseudoSocket class methodsFor!

newTCPSocket
	"^a TestPseudoSocket
I simply return a new instance of myself."

	^self new!

serverOnIP: host port: port 
	"^self
I'm only pretending to be a socket class, so I ignore the host and port."

	^self new! !
!TestPseudoSocket class categoriesFor: #newTCPSocket!instance creation!public! !
!TestPseudoSocket class categoriesFor: #serverOnIP:port:!instance creation!public! !

