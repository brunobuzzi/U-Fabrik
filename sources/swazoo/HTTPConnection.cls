"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HTTPConnection
	instanceVariableNames: 'stream loop server task'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPConnection guid: (GUID fromString: '{0a699bea-64ad-46a0-8a53-62f10e5c7a50}')!
HTTPConnection comment: ''!
!HTTPConnection categoriesForClass!Unclassified! !
!HTTPConnection methodsFor!

close
	self stream notNil ifTrue: [self stream close. stream := nil].
	self server notNil ifTrue: [self server removeConnection: self].
	self loop notNil ifTrue: [self loop terminate. self loop: nil]!

getAndDispatchMessages
	"^self
	The HTTPRequest is read from my socket stream.  I then pass this request to my server
	to get a response. "
	self stream anyDataReady  "wait for data and if anything read, proceed"
		ifTrue:
			[self task: (SwazooTask newOn: self).
			self readRequestFor: self task.
			self produceResponseFor: self task.
			self task request wantsConnectionClose ifTrue: [self close].
			self task request isHttp10 ifTrue: [self close] ] "well, we won't complicate here"
		ifFalse: 
			[self keepAliveTimeout ifTrue: [^self close].
			(Delay forMilliseconds: 100) wait. "to finish sending, if any"
			self close].!

interact
	"longer description is below method"
	| interactionBlock |
	interactionBlock := 
		[[	[ [true] whileTrue: 
				[self getAndDispatchMessages.
				Processor yield] 
			]
			on: Error
			do: [:ex | Transcript cr. Transcript show: ex description "just ignore"] ]
		ifCurtailed: [ 
			(Delay forMilliseconds: 50) wait. "to finish sending, if any"
			self close] ].
	self server isMultiThreading 
		ifTrue: [self loop: (interactionBlock forkAt: Processor userBackgroundPriority)]
		ifFalse: [interactionBlock value].
	^self

"I represent a specifc connection with an HTTP client (a browser, probably) over which will come an HTTP request.  Here, I fork the handling of the request so that the current thread (which is most likely the HTTP server main loop) can carry on with the next request.  This means that more than one request may being handled in the image at a time, and that means that the application developer must worry about thread safety - e.g the problem of a given business object being updated by more than one HTTP request thread.
For a GemStone implementation of Swazoo, one may want only one request is handled at a time, multi-threadedness being handled by having multiple gems.  This is a nice option because the application developer does not have to worry about thread safety in this case - GemStone handles the hard stuff.
*And* the thing called a loop that was in this method was no such thing.  In all circumstances, >>getAndDispatchMessages handles exactly one requst and then closes the socket!! (very non-HTTP1.1).  Anyway, for now I'm just going to make that explicit.  This needs to be re-visited to support HTTP 1.1."!

isOpen
	"not yet closed"
	^self stream notNil!

keepAliveTimeout
	| seconds |
	self task isNil ifTrue: [^false].
	self task request isKeepAlive ifFalse: [^false].
	seconds := self task request keepAlive notNil
		ifTrue: [self task request keepAlive asInteger - 10 "to be sure"]
		ifFalse: [20]. "probably enough?"
	^(SpTimestamp now asSeconds - self task request timestamp asSeconds) >= seconds!

loop
	^loop!

loop: aProcess
	loop := aProcess!

nextPutError: aResponse 
	aResponse informConnectionClose.
	aResponse writeTo: self stream.
	self stream closeResponse.!

nextPutResponse: aMessage toRequest: aRequest 

	aRequest isHead 
		ifTrue: [aMessage writeHeaderTo: self stream]
		ifFalse: [aMessage writeTo: self stream ].
	self stream closeResponse.!

produceResponseFor: aSwazooTask 
	"Given the request in aTask I try to make a response.  If there are any unhandled 
	exceptions, respond with an internal server error."
	aSwazooTask request isNil ifTrue: [^nil].
	"SpExceptionContext for: "
		[aSwazooTask response: (self server answerTo: aSwazooTask request).
		aSwazooTask request ensureFullRead. "in case if defered parsing not done in HTTPost"
		aSwazooTask request wantsConnectionClose 
			ifTrue: [aSwazooTask response informConnectionClose]
			ifFalse: [aSwazooTask request isKeepAlive 
				ifTrue: [aSwazooTask response informConnectionKeepAlive] ].
		aSwazooTask response isStreamed 
			ifFalse: "streamed ones did that by themselves"
				[self nextPutResponse: aSwazooTask response toRequest: aSwazooTask request]
			ifTrue: [aSwazooTask response waitClose]. "to be sure all is sent"
		aSwazooTask request isGet ifFalse: [self close] ] "to avoid strange 200 bad requests 
			after two consecutive POSTs, but it is really a hack and original reason 
			must be found!!"
	on: Error do: [:ex | 
			self nextPutError: (HTTPResponse internalServerError: ex description).
			Transcript cr. Transcript show: ex description. Transcript cr.
			ex defaultAction."usually raise an UHE window"
			self close]
!

readRequestFor: aSwazooTask 
	"I read the next request from my socket and add it to aSwazooTask.  If I have any 
	problems and need to force a bad request (400) response, I add this response to aSwazooTask."
	| request |
	SpExceptionContext for: 
		[request := HTTPRequest readFrom: self stream.
		request uri port: self server port.
		(request httpVersion last = 1 
			and: [(request headers includesFieldOfClass: HTTPHostField) not]) 
				ifTrue: [aSwazooTask response: HTTPResponse badRequest].
		[request peer: self stream socket remoteAddress]
			on: Error do: [:ex | "do nothing for now"].
		request
			ip: self stream socket localAddress;
			setTimestamp.
		aSwazooTask request: request]
	on: SpError, HTTPException
	do: [:ex | 
		aSwazooTask response: HTTPResponse badRequest.
		self nextPutError: aSwazooTask response.
		self close].!

server
	^server!

server: aServer 
	server := aServer!

socket
	^self stream socket!

stream
	^stream!

stream: aSwazooStream 
	stream := aSwazooStream!

task
	"request/response pair, current or last one (until next request)"
	^task!

task: aSwazooTask
	"request/response pair, current or last one (until next request)"

	task := aSwazooTask! !
!HTTPConnection categoriesFor: #close!public!serving! !
!HTTPConnection categoriesFor: #getAndDispatchMessages!public!serving! !
!HTTPConnection categoriesFor: #interact!public!serving! !
!HTTPConnection categoriesFor: #isOpen!public!testing! !
!HTTPConnection categoriesFor: #keepAliveTimeout!public!testing! !
!HTTPConnection categoriesFor: #loop!private! !
!HTTPConnection categoriesFor: #loop:!private! !
!HTTPConnection categoriesFor: #nextPutError:!public!serving-responses! !
!HTTPConnection categoriesFor: #nextPutResponse:toRequest:!public!serving-responses! !
!HTTPConnection categoriesFor: #produceResponseFor:!public!serving! !
!HTTPConnection categoriesFor: #readRequestFor:!public!serving! !
!HTTPConnection categoriesFor: #server!private! !
!HTTPConnection categoriesFor: #server:!private! !
!HTTPConnection categoriesFor: #socket!private! !
!HTTPConnection categoriesFor: #stream!private! !
!HTTPConnection categoriesFor: #stream:!private! !
!HTTPConnection categoriesFor: #task!private! !
!HTTPConnection categoriesFor: #task:!private! !

!HTTPConnection class methodsFor!

socket: aSocket 
	^self new stream: aSocket stream! !
!HTTPConnection class categoriesFor: #socket:!instance creation!public! !

