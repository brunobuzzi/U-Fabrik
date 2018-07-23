"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpSocket
	instanceVariableNames: 'communicationDomain socketType protocolNumber underlyingSocket'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpSocket guid: (GUID fromString: '{cb2d39be-1fcc-43ad-a330-ecf9fa634d16}')!
SpSocket comment: 'OSkSocket  instances represent BSD sockets.  The idea here is to stick as closely to the BSD (Posix) spec terminology as possible.  I''ve cheated and taken the Linux man pages as being a good description of BSD sockets, and all the names etc are taken from the linux man pages (start with man socket).

The key steps in using a BSD socket for a server is:
	o int socket(int domain, int type, int protocol) [see: man socket]
		- create a new instance of a socket  where domain is the protocol
		 family (see below), type is the communication semantics (see below)
		 and protocol is a specific protocol (though there is usually only one
		 protocol for a given domain/type combination).
		 See: OSkSocket class>>forDomain:type:protocol:
	o  int  bind(int  sockfd, struct sockaddr *my_addr, socklen_t addrlen) [see: man bind]
		- let the socket know what address it is representing.  sockfd is the id of 
		 the socket, sockaddr is the address to be represented and addrlen is 
		 the length in bytes of the address. 
		 See OSkSocket>>bindSocketAddress: 
	o int listen(int s, int backlog) [see: man listen]
		- have the socket s listen for inbound requests, and allow up to backlog
		 requests to be queued at any one time.
		 See OSkSocket>>listenBackloggingUpTo: 
	o  int   accept(int   s,  struct  sockaddr  *addr,  socklen_t *addrlen) [see: man accept]
		- accept the next inbound request from the backlog.  Accept the request from
		 socket s, and spawn a new socket to handle the request (freeing s to accept
		 the next accept).  The new socket if defined in sockaddr which has a length of
		 addrlen..
		 See OSkSocket>>accept

For sockets connecting to existing server sockets, the steps are"
	o socket() [as above]
	o  int  connect(int sockfd, const struct sockaddr *serv_addr, socklen_t addrlen)
		- Have socket sockfd connect to the remote socket at serv_addr (where serv_addr
		 is addrlen bytes long).  
		 See OSkSocket>>connectTo:

A socket appears in many ways to be a file descriptor, and the regular read and write operations can be used once a socket is open.  Accordingly, some of the file control (man fcntl) options can be used.  Of particular interest is the idea of blocking and non-blocking operation.

Blocking is the default mode for an active socket.  This means that (for example) when reading from a socket the entire process(!!) blocks waiting for the read operation to complete.  In non-blocking mode the same read operation would return immediately, but might not return anything useful.

See man accept for more information on blocking/non-blocking.

So, roughly speaking, blocking is easier to program for because you code as if the read always gets something.  A blocking interface is harder because you have to check if you got something, and try again later if you didn''t - but non-blocking lets the process get on with other things while your thread is waiting, and this can be a Very Good Thing.

Now, VisualWorks seems to interpret blocking to be per Smalltalk Process.  To make this work, the VisualWorks socket implementation always asks the operating system for non-blocking sockets, but presents these as approproate (blocking or non-blocking) to the Smalltalk Process.  This means that work can continue in a VisualWorks VM even when a socket is being used in (apparantly) blocking mode.

A GemStone Gem asks the operating system for the kind of socket asked for by the Process.  So, if a request is made for a blocking socket, the entire Gem blocks on reads from that socket. 

Just beware the difference between blocking and non-blocking sockets, and also of the differing implemenmtations between Smalltalk dialects.


'!
!SpSocket categoriesForClass!Unclassified! !
!SpSocket methodsFor!

accept
	"^an OSkSocket
	I accept the next connection made to the server socket I represent.  I return a new
	instance of OSkSocket which represents the socket over which information can be
	exchanged.
	NOTE: this call will block waiting for an inbound connection"

	^SpExceptionContext 
		for: [self class onNativeclientSocket: self underlyingSocket accept for: self]
		on: Error
		do: [:ex | SpSocketError signalWith: ex]!

acceptRetryingIfTransientErrors
	"I try to do an accept.  If I get an exception which is 'transient' I retry.
	Note: Added SocketWouldBlock, but I really don't know if exists 
	some type of 'transient error' in Dolphin."

	#eamChanged.
	^SpExceptionContext 
		for: [self accept]
		on: SocketWouldBlock 
		do: [:ex | ex retry]!

bindSocketAddress: aSocketAddress 
	"^self
	Equivalent of:  bind(int  sockfd, struct sockaddr *my_addr, socklen_t addrlen);
	see man bind.
	Bind the socket to aSocketAddress."

	self underlyingSocket bindPort: aSocketAddress portNumber.
	^self!

close
	"^self
	The same as the close() posix function."

	self underlyingSocket close.
	^self!

communicationDomain
	^communicationDomain!

connectTo: aSocketAddress 
	"^self
	I instruct my underlying socket to connect to aSocketAddress."

	self underlyingSocket port: aSocketAddress portNumber address: aSocketAddress hostAddress.
	self underlyingSocket  connect.
	^self!

getPeerName
	"^an OSkSocketAddress
	see man getpeername.
	I return the socket address of the other/remote/peer end of the socket I represent."

	#eamChanged.
	^SpIPAddress on: self underlyingSocket peerAddress for: self!

getSocketName
	"^an OSkSocketAddress
	see: man getsockname
	I return my local socket address which may be any subclass of 
	OSkSocketAddress."

	^SpSocketAddress on: self underlyingSocket address for: self!

isActive
	"Answer whether receiver is active or not."

	#eamAdded.
	^self underlyingSocket isOpen!

listenBackloggingUpTo: aNumberOfConnections 
	"I set the socket I represent listening for incomming connections, allowing a 
	backlog of up to aNumberOfConnections."

	#eamAdded.
	self underlyingSocket listen: aNumberOfConnections.
	^self!

onNativeclientSocket: aSocket for: aServerSocket 
	"I initialize myself with the same properties as aServerSocket and with
	aNativeSocket as my underlying socket."

	#eamAdded.
	underlyingSocket := aSocket.
	^self!

onNativeSocket: aSocket forDomain: aCommunicationDomain type: aSocketType protocol: aProtocolNumber 
	"^self
	I initialize myself as a socket defined by the communications domain, type and protocol.  This
	follows the equivalent of the using the socket()  or socketpair() function."

	communicationDomain := aCommunicationDomain.
	socketType := aSocketType.
	protocolNumber := aProtocolNumber.
	underlyingSocket := aSocket.
	^self!

protocolNumber
	^protocolNumber!

read: targetNumberOfBytes 
	"I attempt to read the targetNumberOfBytes from my underlying socket.  If the targetNumberOfBytes
	are not available, I return what I can get."

	#eamAdded.
	^SpExceptionContext 
		for: [
			| buffer count |
			buffer := ByteArray new: targetNumberOfBytes.
			count := self underlyingSocket receiveSome: buffer count: buffer size startingAt: 1.
			buffer copy: ByteArray from: 1 to: count ]
		on: SocketError
		do: [:ex | SpSocketError signalWith: ex]!

readInto: aByteArray startingAt: startIndex for: aNumberOfBytes 
	"I return the number of bytes actually read."

	^self underlyingSocket receiveSome: aByteArray count: aNumberOfBytes startingAt: startIndex !

readStream
	"^nil
While this is convinient, it would mean that sockets would depend on streams, and we want to avoid that.
Use {my stream class} on: {my socket} instead."

	^self shouldNotImplement!

readyForRead
	"I return true if a read operation will return some number of bytes."

	#eamAdded.
	^self underlyingSocket hasInput!

send: aByteObject count: countInteger startingAt: startInteger 
	"Private - Reimplemented here to avoid override of Dolphin Smalltalk version."

	| sent |
	sent := 0.
	[sent < countInteger] whileTrue: 
			[sent := sent + (self underlyingSocket
								sendSome: aByteObject
								count: countInteger - sent
								startingAt: sent + startInteger)].
	^sent!

setAddressReuse: aBoolean 
	"If a boolean is true, I set address reuse on, otherwise I set address reuse off.
	Dolphin uses SOCK_READDR by default, so do nothing."

	#eamChanged!

setOptionForLevel: aLevelNumber optionID: anOptionNumber value: aValue 
	"^self
	see man 2 setsockopt
	From the manpage:
	Getsockopt  and  setsockopt  manipulate  the  options associated with a
       socket.  Options may exist at multiple protocol levels; they are always
       present at the uppermost socket level."

	self underlyingSocket 
		setOptionsLevel: aLevelNumber
		name: anOptionNumber
		value: aValue.
	^self!

setUnderlyingSocket: aSocket 
	"Private - Set aSocket as the underlying socket of receiver."

	#eamAdded.
	underlyingSocket := aSocket!

socketType
	^socketType!

underlyingSocket
	^underlyingSocket!

underlyingSocket: aSocket2
	"Private - Set  aSocket2 as the underlying socket of receiver." 

	underlyingSocket := aSocket2!

waitForReadDataUpToMs: millisecondCount 
	"Return true if data became available within millisecondCount, and
	false if timed out."
	"Sean M. said: this is dodgy. Esteban says: I don't know how to make it better."

	| deadline |
	deadline := TimeStamp current asMilliseconds + millisecondCount.
	[ TimeStamp current asMilliseconds > deadline ifTrue: [ ^false ]. self underlyingSocket hasInput ] whileFalse.
	^self underlyingSocket hasInput 
!

write: sourceByteArray 
	"^I write the contents of the sourceByteArray to my underlying Socket.
	I return the number of bytes written."

	#eamAdded.
	^SpExceptionContext 
		for: [self underlyingSocket sendSome: sourceByteArray count: sourceByteArray size startingAt: 1]
		on: Error
		do: [:ex | SpSocketError signalWith: ex]!

writeFrom: aByteArray startingAt: startIndex for: length 
	"I return the number of bytes actually written."

	^SpExceptionContext
		for: [self send: aByteArray
				count: length
				startingAt: startIndex]
		on: Error
		do: [:ex | SpSocketError raiseSignal: ex]!

writeStream
	"^nil
While this is convinient, it would mean that sockets would depend on streams, and we want to avoid that.
Use {my stream class} on: {my socket} instead."

	^self shouldNotImplement! !
!SpSocket categoriesFor: #accept!private!services-status! !
!SpSocket categoriesFor: #acceptRetryingIfTransientErrors!public! !
!SpSocket categoriesFor: #bindSocketAddress:!private!services-status! !
!SpSocket categoriesFor: #close!public!services-status! !
!SpSocket categoriesFor: #communicationDomain!accessing!private! !
!SpSocket categoriesFor: #connectTo:!private!services-status! !
!SpSocket categoriesFor: #getPeerName!private!services-accessing! !
!SpSocket categoriesFor: #getSocketName!private!services-accessing! !
!SpSocket categoriesFor: #isActive!public!testing! !
!SpSocket categoriesFor: #listenBackloggingUpTo:!public!services-status! !
!SpSocket categoriesFor: #onNativeclientSocket:for:!private! !
!SpSocket categoriesFor: #onNativeSocket:forDomain:type:protocol:!initialize-release!private! !
!SpSocket categoriesFor: #protocolNumber!accessing!private! !
!SpSocket categoriesFor: #read:!public!services-io! !
!SpSocket categoriesFor: #readInto:startingAt:for:!public!services-io! !
!SpSocket categoriesFor: #readStream!private!services-streams! !
!SpSocket categoriesFor: #readyForRead!public!services-io!testing! !
!SpSocket categoriesFor: #send:count:startingAt:!private!services-io! !
!SpSocket categoriesFor: #setAddressReuse:!private!services-options! !
!SpSocket categoriesFor: #setOptionForLevel:optionID:value:!private!services-status! !
!SpSocket categoriesFor: #setUnderlyingSocket:!private! !
!SpSocket categoriesFor: #socketType!accessing!private! !
!SpSocket categoriesFor: #underlyingSocket!private! !
!SpSocket categoriesFor: #underlyingSocket:!private! !
!SpSocket categoriesFor: #waitForReadDataUpToMs:!private!services-io! !
!SpSocket categoriesFor: #write:!public!services-io! !
!SpSocket categoriesFor: #writeFrom:startingAt:for:!public!services-io! !
!SpSocket categoriesFor: #writeStream!private!services-streams! !

!SpSocket class methodsFor!

clientSocketClass
	"Private - Answer the class used as underlying socket in the instances of receiver created as client sockets."

	#eamAdded.
	^Socket2!

connectToServerOnHost: hostName port: portNumber 
	"^an OSkSocket 
	I return a new instance of myself which represents a socket connecter to a server listening on portNumber at hostName."

	| newSocket |
	newSocket := self newTCPSocket.
	newSocket connectTo: (SpIPAddress hostName: hostName port: portNumber).
	^newSocket!

newSocketPair
	"Answer an array of two elements containing a pair of sockets connected between them."

	"NOTE: This implementation was taken from Sean Malloy's #connectedPair. "

	| listener server client port |
	port := (((Random new next: 100) detect: [ :ea | ea > 0.11 ] ifNone: [ 0.21 ]) * 10000) asInteger.
	[ listener := self port: port backlog: 4.	server := listener accept. listener close ] fork.
	(Delay forMilliseconds: 100) wait.
	client := self connectToServerOnHost: 'localhost' port: port.
	(Delay forMilliseconds: 100) wait.
	server ifNil: [self error: 'No server'].
	^Array with: server with: client
!

newTCPClientSocket
	"Answer a new instance of a TCP socket, created to be client (i.e. it will request the connection)."

	#eamAdded.
	^(self new)
		setUnderlyingSocket: self clientSocketClass basicNew;
		yourself!

newTCPServerSocket
	"Answer a new instance of receiver configured to be a TCP Server socket."

	#eamAdded.
	^(self new)
		setUnderlyingSocket: self serverSocketClass new;
		yourself!

newTCPSocket
	"Answer a new instance of receiver configured to be a TCPSocket. By default, instantiates a client TCPSocket." 

	#eamAdded.
	^self newTCPClientSocket!

on: aSocket2 
	"Answer a new instance of receiver with aSocket2 as its underlying socket."

	^self new underlyingSocket: aSocket2!

onNativeclientSocket: aNativeSocket for: aServerSocket 
	"^an OSkSocket
I create a new instance of my self at the request of aServerSocket  where
this new instance will be a connected client socket (connected via aNativeSoket)."

	^self new onNativeclientSocket: aNativeSocket for: aServerSocket!

port: portNumber 
	"Answer a new instance of receiver, configured to be a server socket serving on portNumber."

	#eamAdded.
	^(self new)
		setUnderlyingSocket: (self serverSocketClass port: portNumber);
		yourself!

port: portNumber backlog: anInteger 
	"Answer a new instance of receiver, configured to a server socket
	serving on portNumber, with a backlog of anInteger connections."

	#eamAdded.
	^(self new)
		setUnderlyingSocket: (ServerSocket2 port: portNumber backlog: anInteger);
		yourself!

serverSocketClass
	"Private - Answer the class used as underlying socket in the instances of receiver created as server sockets."

	#eamAdded.
	^ServerSocket2! !
!SpSocket class categoriesFor: #clientSocketClass!constants!private!services! !
!SpSocket class categoriesFor: #connectToServerOnHost:port:!public!services! !
!SpSocket class categoriesFor: #newSocketPair!private!services! !
!SpSocket class categoriesFor: #newTCPClientSocket!public! !
!SpSocket class categoriesFor: #newTCPServerSocket!public!services! !
!SpSocket class categoriesFor: #newTCPSocket!public!services! !
!SpSocket class categoriesFor: #on:!public! !
!SpSocket class categoriesFor: #onNativeclientSocket:for:!private! !
!SpSocket class categoriesFor: #port:!public!services! !
!SpSocket class categoriesFor: #port:backlog:!public!services! !
!SpSocket class categoriesFor: #serverSocketClass!constants!private!services! !

