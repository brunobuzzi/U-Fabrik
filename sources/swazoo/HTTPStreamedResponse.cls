"Filed out from Dolphin Smalltalk 7"!

HTTPResponse subclass: #HTTPStreamedResponse
	instanceVariableNames: 'stream count length state semaphore'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPStreamedResponse guid: (GUID fromString: '{c1683582-b619-4465-ac95-178b39628a1c}')!
HTTPStreamedResponse comment: '
HTTPStreamedResponse 

HTTP/1.1 	no length   	chunked
HTTP/1.1	length		streamed directly, with contentLength
HTTP/1.0	no length   	simulated streaming: into entity first, then sent as normal response (not yet impl.)
HTTP/1.0  	length 		streamed directly, with content length

Instance Variables:
	stream		<SwazooStream> where to stream a response
	count		<Integer> 		how many bytes already streamed
	length		<Integer>		announced length of response, optional
	state		<Symbol>		#header #streaming #closed			
	semaphore	<Semaphore>	to signal end of response

'!
!HTTPStreamedResponse categoriesForClass!Unclassified! !
!HTTPStreamedResponse methodsFor!

close
	"mandatory!! It signals that streaming is finished and response can end"
	self testForUnderflow. "if streamed but not chunked: all data sent?"
	self stream closeResponse.
	self setClosed.
	self stream: nil. "to avoid unintential writing"
	self semaphore signal. "to signal close to all waiting processes"!

contentSize
	self length notNil ifTrue: [^self length].
	self entity notNil ifTrue: [self entity size].
	^nil!

count
	"how many bytes already streamed"
	count isNil ifTrue: [self count: 0].
	^count!

count: aNumber
	count := aNumber!

flush
	"force sending to a TCP socket"
	self stream flush!

initialize
	self setHeader!

initSemaphore
	semaphore := Semaphore new!

isClosed
	"is response closed?. No streaming or anything else possible anymore"
	^state = #closed!

isHeader
	"is response in header state?. this is initial one"
	^state = #header!

isStreamed
	^true!

isStreaming
	"is response in streaming state? All nextPut to stream is sent in chunked format to browser"
	^state = #streaming!

length
	"how many bytes response is expected to have. 
	This is optional, if set before streaming begin, then we stream without chunking (and 
	therefore we can stream on HTTP 1.0 !!)"
	^length!

length: aNumber
	length := aNumber!

nextPut: aCharacterOrByte
	self isHeader ifTrue: [self sendHeaderAndStartStreaming].
	self count: self count + 1.
	self testForOverflow.
	^self stream nextPut: aCharacterOrByte!

nextPutAll: aByteStringOrArray
	self isHeader ifTrue: [self sendHeaderAndStartStreaming].
	self count: self count + aByteStringOrArray size.
	self testForOverflow.
	^self stream nextPutAll: aByteStringOrArray!

semaphore
	"semahore to signal end of streaming = all data sent"
	semaphore isNil ifTrue: [self initSemaphore].
	^semaphore!

sendHeaderAndStartStreaming
	self shouldSimulateStreaming 
		ifTrue: [self error: 'simulated streaming not yet implemented!!'].
	self writeHeaderTo: self stream.
	self stream flush. "to push sending of header immediately"
	self shouldBeChunked ifTrue: [self stream setChunked]. 
	self setStreaming.!

setClosed
	"response is closed. No streaming or anything else possible anymore"
	state := #closed!

setHeader
	"response in header state. this is initial one"
	state := #header!

setStreaming
	"response in streaming state. All nextPut to stream is sent in chunked format to browser"
	state := #streaming!

shouldBeChunked
	^self isHttp11 and: [self length isNil]!

shouldSimulateStreaming
	"stream to entity first then send all at once (because only now we 
	know the length of response)"
	^self isHttp10 and: [self length isNil]!

stream
	^stream!

stream: aSwazooStream
	stream := aSwazooStream!

testForOverflow
	"if streaming but not chunking, then count must never be larger than announced length"
	(self length notNil and: [self count > self length]) 
		ifTrue: [self error: 'streaming overflow']!

testForUnderflow
	"if streaming but not chunking, then count must be exactly the announced 
	length at the end"
	(self length notNil and: [self count ~= self length]) 
		ifTrue: [self error: 'not enough data streamed ']!

waitClose
	"wait until all data is sent-streamed out and response is closed"
	^self semaphore wait! !
!HTTPStreamedResponse categoriesFor: #close!initialize-release!public! !
!HTTPStreamedResponse categoriesFor: #contentSize!accessing!public! !
!HTTPStreamedResponse categoriesFor: #count!accessing!public! !
!HTTPStreamedResponse categoriesFor: #count:!private! !
!HTTPStreamedResponse categoriesFor: #flush!accessing-stream!public! !
!HTTPStreamedResponse categoriesFor: #initialize!initialize-release!public! !
!HTTPStreamedResponse categoriesFor: #initSemaphore!initialize-release!public! !
!HTTPStreamedResponse categoriesFor: #isClosed!private-state!public! !
!HTTPStreamedResponse categoriesFor: #isHeader!private-state!public! !
!HTTPStreamedResponse categoriesFor: #isStreamed!public!testing! !
!HTTPStreamedResponse categoriesFor: #isStreaming!private-state!public! !
!HTTPStreamedResponse categoriesFor: #length!accessing!public! !
!HTTPStreamedResponse categoriesFor: #length:!accessing!public! !
!HTTPStreamedResponse categoriesFor: #nextPut:!accessing-stream!public! !
!HTTPStreamedResponse categoriesFor: #nextPutAll:!accessing-stream!public! !
!HTTPStreamedResponse categoriesFor: #semaphore!private! !
!HTTPStreamedResponse categoriesFor: #sendHeaderAndStartStreaming!private! !
!HTTPStreamedResponse categoriesFor: #setClosed!private-state!public! !
!HTTPStreamedResponse categoriesFor: #setHeader!private-state!public! !
!HTTPStreamedResponse categoriesFor: #setStreaming!private-state!public! !
!HTTPStreamedResponse categoriesFor: #shouldBeChunked!public!testing! !
!HTTPStreamedResponse categoriesFor: #shouldSimulateStreaming!public!testing! !
!HTTPStreamedResponse categoriesFor: #stream!private! !
!HTTPStreamedResponse categoriesFor: #stream:!private! !
!HTTPStreamedResponse categoriesFor: #testForOverflow!private! !
!HTTPStreamedResponse categoriesFor: #testForUnderflow!private! !
!HTTPStreamedResponse categoriesFor: #waitClose!public!waiting! !

!HTTPStreamedResponse class methodsFor!

on: aSwazooTask stream: aSwazooStream
	^super ok
		task: aSwazooTask;
		stream: aSwazooStream;
		initialize! !
!HTTPStreamedResponse class categoriesFor: #on:stream:!instance creation!public! !

