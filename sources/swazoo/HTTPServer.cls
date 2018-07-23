"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HTTPServer
	instanceVariableNames: 'ip port connections sites socket loop isMultiThreading'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPServer guid: (GUID fromString: '{37521f86-ca4a-43b1-b6ae-623f2b1dc844}')!
HTTPServer comment: ''!
!HTTPServer categoriesForClass!Unclassified! !
!HTTPServer methodsFor!

acceptConnection
	"^self
I accept the next inbound TCP/IP connection.  The operating system libraries queue these up for me, so I can just handle one at a time.  I create an HTTPConnection instance to actually handle the interaction with the client - if I am in single threaded mode, the connection will completely handle the request before returning control to me, but in multi-threaded mode the connection forks the work into a sepparate thread in this image and control is immediately returned to me (the application programmer must worry about thread safety in this case."

	| clientConnection |
	clientConnection := SpExceptionContext 
				for: [HTTPConnection socket: self socket accept]
				on: SpError
				do: [:ex | Transcript show: 'Socket accept error: ' , ex errorString; cr. ^self].
	self addConnection: clientConnection.
	clientConnection interact.
	^self!

addConnection: aConnection 
	self connections add: aConnection.
	aConnection server: self!

addSite: aSite
	(self sites includesResource: aSite) ifFalse: [^self sites addResource: aSite]!

answerTo: aRequest 
	| response |

	response := URIResolution resolveRequest: aRequest startingAt: self sites.
	^response isNil
		ifTrue: [HTTPResponse notFound]
		ifFalse: [response]!

connections
	connections isNil ifTrue: [self initConnections].
	^connections!

hasNoSites
	^self sites hasNoResources!

initConnections
	connections := OrderedCollection new.!

initialize
	self initConnections.
	self initSites!

initSites
	sites := ServerRootComposite new!

ip
	^ip!

ip: anIPString 
	ip := anIPString!

ipCorrected
	"in case of '*' always return '0.0.0.0'"
	^self ip = '*' 
		ifTrue: ['0.0.0.0'] 
		ifFalse: [self ip]!

isMultiThreading
	"^a Boolean
I return true if each inbound HTTP connection will be handled in its own thread.  See the senders of this message to see where that is important.  Note that the default mode is mult-threaded because this is how Swazoo has worked so far.  This is tricky for the application programmer, though, as they must ensure that they work in a thread safe way (e.g. avoid the many threads updating the same object).  For those deploying to GemStone, you wil find things much easier if you do *not* run multithreaded, but rather run many gems each with a single-threaded Swazoo instance (and your app logic) in each.  Also in GemStone, run the main loop in the foreground, c.f. >>mainLoopInForeground"

	isMultiThreading isNil ifTrue: [self setMultiThreading].
	^isMultiThreading!

isServing
	^self loop notNil!

loop
	^loop!

loop: aProcess
	loop := aProcess!

port
	^port!

port: aNumber
	port := aNumber!

removeConnection: aConnection 
	self connections remove: aConnection ifAbsent: [nil]!

removeSite: aSite 
	^self sites removeResource: aSite!

restart
	"usefull after image startup, when socket is probably not valid anymore"
	self stop.
	self start.!

setMultiThreading
	"^self
I record that this HTTP server is to operate in a multi-threaded mode.  c.f. isMultiThreading"

	isMultiThreading := true.
	^self!

setSingleThreading
	"^self
I record that this HTTP server is to operate in a single-threaded mode.  c.f. isMultiThreading"

	isMultiThreading := false.
	^self!

sites
	sites isNil ifTrue: [self initSites].
	^sites!

socket
	^socket!

socket: aSocket
	socket := aSocket!

socketClass
	"^a Class
I use SwazooSocket to wrap the actual socket.  SwazooSocket does some of the byte translation work for me."

	^SwazooSocket!

start
	self loop isNil 
		ifTrue: 
			[self socket: (self socketClass serverOnIP: self ipCorrected port: self port).
			self socket listenFor: 50.
			self loop: ([[self acceptConnection] repeat] 
						forkAt: Processor userBackgroundPriority)]!

stop
	self loop isNil 
		ifFalse: 
			[self connections copy do: [:each | each close].
			self loop terminate.
			self loop: nil.
			self socket close.
			self socket: nil]! !
!HTTPServer categoriesFor: #acceptConnection!private! !
!HTTPServer categoriesFor: #addConnection:!private! !
!HTTPServer categoriesFor: #addSite:!public!sites! !
!HTTPServer categoriesFor: #answerTo:!public!serving! !
!HTTPServer categoriesFor: #connections!private! !
!HTTPServer categoriesFor: #hasNoSites!public!sites! !
!HTTPServer categoriesFor: #initConnections!private-initialize!public! !
!HTTPServer categoriesFor: #initialize!private-initialize!public! !
!HTTPServer categoriesFor: #initSites!private-initialize!public! !
!HTTPServer categoriesFor: #ip!private-initialize!public! !
!HTTPServer categoriesFor: #ip:!private-initialize!public! !
!HTTPServer categoriesFor: #ipCorrected!private-initialize!public! !
!HTTPServer categoriesFor: #isMultiThreading!multithreading!public! !
!HTTPServer categoriesFor: #isServing!public!testing! !
!HTTPServer categoriesFor: #loop!private! !
!HTTPServer categoriesFor: #loop:!private! !
!HTTPServer categoriesFor: #port!private-initialize!public! !
!HTTPServer categoriesFor: #port:!private-initialize!public! !
!HTTPServer categoriesFor: #removeConnection:!private! !
!HTTPServer categoriesFor: #removeSite:!public!sites! !
!HTTPServer categoriesFor: #restart!public!start/stop! !
!HTTPServer categoriesFor: #setMultiThreading!multithreading!public! !
!HTTPServer categoriesFor: #setSingleThreading!multithreading!public! !
!HTTPServer categoriesFor: #sites!private! !
!HTTPServer categoriesFor: #socket!private! !
!HTTPServer categoriesFor: #socket:!private! !
!HTTPServer categoriesFor: #socketClass!private! !
!HTTPServer categoriesFor: #start!public!start/stop! !
!HTTPServer categoriesFor: #stop!public!start/stop! !

!HTTPServer class methodsFor!

initialize
	SpEnvironment addImageShutdownTask: [self shutDown] for: self!

new
	^super new initialize!

shutDown 
	"HTTPServer shutDown"
	self allInstances do: [:each | each stop].
	SpEnvironment removeShutdownActionFor: self.! !
!HTTPServer class categoriesFor: #initialize!intialize-release!public! !
!HTTPServer class categoriesFor: #new!instance creation!public! !
!HTTPServer class categoriesFor: #shutDown!intialize-release!public! !

