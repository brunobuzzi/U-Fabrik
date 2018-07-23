"Filed out from Dolphin Smalltalk 7"!

HTTPMessage subclass: #HTTPRequest
	instanceVariableNames: 'requestLine peer timestamp ip environmentData resolution encrypted authenticated'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPRequest guid: (GUID fromString: '{9c097209-b80a-42a6-8acf-011a593dc162}')!
HTTPRequest comment: ''!
!HTTPRequest categoriesForClass!Unclassified! !
!HTTPRequest methodsFor!

authenticated
	^authenticated!

conditionalHeaderFields
	"^an OrderedCollection
I return my collection of conditional header fields.  A conditional GET requires that each of these is checked against the current state of the target resource."

	^self headers fields select: [:aField | aField isConditional]!

connection
	^(self headers fieldOfClass: HTTPConnectionField ifNone: [^nil]) 
		connectionToken!

contentLength
	^(self headers fieldOfClass: HTTPContentLengthField) contentLength!

cookie
	| field |
	field := self headers fields at: 'COOKIE' ifAbsent: [^nil].
	^field value

"	field := self headers fieldOfClass: HTTPCookieField ifNone: [nil].
	^field isNil ifTrue: [nil] ifFalse: [field valuesAsString]
"!

encrypted
	^encrypted!

ensureFullRead
	"that is, that everything is read from a socket stream. Importanf for HTTPost 
	and defered parsing of postData"!

environmentAt: aKey 
	^self environmentAt: aKey ifAbsent: [nil]!

environmentAt: aKey ifAbsent: aBlock 
	^self environmentData at: aKey ifAbsent: aBlock!

environmentAt: aKey put: aValue 
	self environmentData at: aKey put: aValue!

environmentData
	environmentData isNil ifTrue: [self initEnvironmentData].
	^environmentData!

for: aRequestLine readFrom: aSwazooStream 
	"^self
I parse my headers from aStream and update my URI and HTTP version information from aRequest line.  I need to parse the headers first because, for some reason, the URI insists on knowing the host, and this is taken from the Host: header field."

	requestLine := aRequestLine.
	headers := HTTPHeaders readFrom: aSwazooStream.
	self setTimestamp.
	^self!

hasCookie
	"check if  Cookie:  was in request header"

	"it is GenericHeaderField!!"
	^self headers fields includesKey: 'COOKIE'

"	^self headers includesFieldOfClass: HTTPCookieField"!

headerAt: aKey ifAbsent: aBlock
	^self headers fieldNamed: aKey  ifNone: aBlock!

host
	^(self headers fieldOfClass: HTTPHostField ifNone: [^String new]) 
		hostName!

httpVersion
	^self requestLine httpVersion!

includesQuery: aString 
	^self uri includesQuery: aString!

initEnvironmentData
	environmentData := Dictionary new!

initRequestLine
	requestLine := HTTPRequestLine new!

ip
	^ip!

ip: anObject
	ip := anObject!

isAuthenticated
	^self authenticated isNil not!

isClose
	| connectionField |
	connectionField := self headers fieldOfClass: HTTPConnectionField
				ifNone: [nil].
	^connectionField notNil and: [connectionField connectionTokenIsClose]!

isDelete
	^false!

isEncrypted
	^self encrypted isNil not!

isFromLinux
	^self userAgent notNil and: ['*Linux*' match: self userAgent]!

isFromMSIE
	^self userAgent notNil and: ['*MSIE*' match: self userAgent]!

isFromNetscape
	"NS>7.0 or Mozilla or Firefox"
	^self userAgent notNil and: ['*Gecko*' match: self userAgent]!

isFromWindows
	^self userAgent notNil and: ['*Windows*' match: self userAgent]!

isGet
	^false!

isHead
	^false!

isHttp10
	"Version of requests's HTTP protocol is 1.0"
	^self requestLine isHttp10!

isHttp11
	"Version of requests's HTTP protocol is 1.0"
	^self requestLine isHttp11!

isKeepAlive
	| header |
	header := self connection.
	header isNil ifTrue: [^false].
	^'*Keep-Alive*' match: header!

isOptions
	^false!

isPost
	^false!

isPut
	^false!

isTrace
	^false!

keepAlive
	"how many seconds a connection must be kept alive"
	^(self headers fieldNamed: 'KeepAlive' ifNone: [^nil]) value!

methodName
	"HTTP method used for a request"
	^self class methodName!

peer
	^peer!

peer: anObject
	peer := anObject!

port
	"^an Integer
I return the port number to which the request was directed."
	| host |
	host := self headers fieldOfClass: HTTPHostField.
	^(host notNil and: [(self httpVersion at: 2) = 1])
		ifTrue: [host portNumber]
		ifFalse: [self requestLine requestURI port]!

printOn: aStream 
	aStream nextPutAll: 'a HTTPRequest ', self methodName.
	self isHttp10 ifTrue: [aStream nextPut: ' HTTP/1.0'].
	self peer notNil ifTrue: [aStream cr; tab; nextPutAll: ' from: '; nextPutAll: self peer].
	aStream cr; tab; nextPutAll: ' at: '. aStream nextPutAll: self timestamp printString.
	aStream cr; tab; nextPutAll: ' host: '; nextPutAll: (self headerAt: 'Host' ifAbsent: ['']) hostName.
	aStream cr; tab; nextPutAll: ' url: '. self uri printOn: aStream.
	self userAgent notNil ifTrue: 
		[aStream cr; tab; nextPutAll: ' browser: '; nextPutAll: self userAgent].
	self connection notNil ifTrue: 
		[aStream cr; tab; nextPutAll: ' connection: '; nextPutAll: self connection].
	self keepAlive notNil ifTrue: 
		[aStream cr; tab; nextPutAll: ' keep-alive: '; nextPutAll: self keepAlive].
	^self!

queries
	^self uri queries!

queryAt: aKey 
	^self uri queryAt: aKey!

queryAt: aKey ifAbsent: aBlock 
	^self uri queryAt: aKey ifAbsent: aBlock!

queryData
	^self uri queryData!

referer
	| field |
	field := self headers fieldOfClass: HTTPRefererField ifNone: [nil].
	^field isNil ifTrue: [nil] ifFalse: [field uri asString]!

request: aUriString from: aHostString at: anIPString 
	"For testing only (I'm guessing / hoping!!).
A request is manufactured that has a request line method of >>methodName and a request line URI with an identifier of aUriString.  A Host header is added to the headers and the ip address is set to anIP string.  I also set the HTTP version to #(1 1).
This may result in a corrupt or invalid request, but that's the natutre of testing, I guess."

	requestLine := (HTTPRequestLine new)
				method: self class methodName;
				requestURI: ((SwazooURI new)
							identifier: aUriString;
							yourself);
				httpVersion: #(1 1);
				yourself.
	self headers addField: (HTTPHostField newWithValueFrom: aHostString).
	self ip: anIPString.
	^self!

requestLine
	"^an HTTPRequestLine"

	requestLine isNil ifTrue: [self initRequestLine].
	^requestLine!

resolution
	^resolution!

resolution: anObject
	resolution := anObject!

resourcePath
	^self resolution resourcePath!

respondUsing: responseBlock 
	"^an HTTPResponse
By default, I let aBlock handle creating the response by passing myself as the agrument to the block.  My subclasses may override this method and directly respond.  This is most likely for Unsupported requests and for things like OPTIONS requsts.  c.f. HTTPServer>>answerTo: "

	^responseBlock value: self!

session
	^self environmentAt: #session!

session: aSession 
	self environmentAt: #session put: aSession!

setAuthenticated 	
	authenticated := true!

setEncrypted
	encrypted := true!

setTimestamp
	timestamp := SpTimestamp now!

streamedResponse
	"prepares (if not already) and return a streamed response"
	"necessary because we need an output stream to stream into"

	self task response isNil ifTrue: 
		[self task response: 
			(HTTPStreamedResponse on: self task stream: self task connection stream)].
	self task response class == HTTPStreamedResponse 
		ifFalse: [self halt. self error: 'not streamed response?'].  "this can happen if resp. is from before"
	^self task response!

tailPath
	^self resolution tailPath!

timestamp
	^timestamp!

uri
	^self requestLine requestURI!

uriString
	^self uri identifier!

urlString
	^self uri value!

userAgent
	| userAgentField |
	userAgentField := self headers fieldOfClass: HTTPUserAgentField
				ifNone: [nil].
	^userAgentField isNil ifTrue: [nil] ifFalse: [userAgentField productTokens]!

wantsConnectionClose
	self isClose ifTrue: [^true].
	^self isHttp10 and: [self isKeepAlive not]! !
!HTTPRequest categoriesFor: #authenticated!private! !
!HTTPRequest categoriesFor: #conditionalHeaderFields!public!services! !
!HTTPRequest categoriesFor: #connection!accessing-headers!public! !
!HTTPRequest categoriesFor: #contentLength!accessing-headers!public! !
!HTTPRequest categoriesFor: #cookie!accessing-headers!public! !
!HTTPRequest categoriesFor: #encrypted!private! !
!HTTPRequest categoriesFor: #ensureFullRead!private! !
!HTTPRequest categoriesFor: #environmentAt:!accessing!public! !
!HTTPRequest categoriesFor: #environmentAt:ifAbsent:!accessing!public! !
!HTTPRequest categoriesFor: #environmentAt:put:!accessing!public! !
!HTTPRequest categoriesFor: #environmentData!private! !
!HTTPRequest categoriesFor: #for:readFrom:!initialize-release!public! !
!HTTPRequest categoriesFor: #hasCookie!public!testing! !
!HTTPRequest categoriesFor: #headerAt:ifAbsent:!accessing-headers!public! !
!HTTPRequest categoriesFor: #host!accessing-headers!public! !
!HTTPRequest categoriesFor: #httpVersion!accessing!public! !
!HTTPRequest categoriesFor: #includesQuery:!accessing-queries!public! !
!HTTPRequest categoriesFor: #initEnvironmentData!initialize-release!public! !
!HTTPRequest categoriesFor: #initRequestLine!initialize-release!public! !
!HTTPRequest categoriesFor: #ip!accessing!public! !
!HTTPRequest categoriesFor: #ip:!private! !
!HTTPRequest categoriesFor: #isAuthenticated!public!testing! !
!HTTPRequest categoriesFor: #isClose!public!testing! !
!HTTPRequest categoriesFor: #isDelete!public!testing! !
!HTTPRequest categoriesFor: #isEncrypted!public!testing! !
!HTTPRequest categoriesFor: #isFromLinux!public!testing! !
!HTTPRequest categoriesFor: #isFromMSIE!public!testing! !
!HTTPRequest categoriesFor: #isFromNetscape!public!testing! !
!HTTPRequest categoriesFor: #isFromWindows!public!testing! !
!HTTPRequest categoriesFor: #isGet!public!testing! !
!HTTPRequest categoriesFor: #isHead!public!testing! !
!HTTPRequest categoriesFor: #isHttp10!public!testing! !
!HTTPRequest categoriesFor: #isHttp11!public!testing! !
!HTTPRequest categoriesFor: #isKeepAlive!public!testing! !
!HTTPRequest categoriesFor: #isOptions!public!testing! !
!HTTPRequest categoriesFor: #isPost!public!testing! !
!HTTPRequest categoriesFor: #isPut!public!testing! !
!HTTPRequest categoriesFor: #isTrace!public!testing! !
!HTTPRequest categoriesFor: #keepAlive!accessing-headers!public! !
!HTTPRequest categoriesFor: #methodName!accessing!public! !
!HTTPRequest categoriesFor: #peer!accessing!public! !
!HTTPRequest categoriesFor: #peer:!private! !
!HTTPRequest categoriesFor: #port!accessing-headers!public! !
!HTTPRequest categoriesFor: #printOn:!private! !
!HTTPRequest categoriesFor: #queries!private! !
!HTTPRequest categoriesFor: #queryAt:!accessing-queries!public! !
!HTTPRequest categoriesFor: #queryAt:ifAbsent:!accessing-queries!public! !
!HTTPRequest categoriesFor: #queryData!accessing-queries!public! !
!HTTPRequest categoriesFor: #referer!accessing-headers!public! !
!HTTPRequest categoriesFor: #request:from:at:!private! !
!HTTPRequest categoriesFor: #requestLine!accessing!public! !
!HTTPRequest categoriesFor: #resolution!accessing!public! !
!HTTPRequest categoriesFor: #resolution:!accessing!public! !
!HTTPRequest categoriesFor: #resourcePath!accessing!public! !
!HTTPRequest categoriesFor: #respondUsing:!public!services! !
!HTTPRequest categoriesFor: #session!accessing!public! !
!HTTPRequest categoriesFor: #session:!accessing!public! !
!HTTPRequest categoriesFor: #setAuthenticated!private! !
!HTTPRequest categoriesFor: #setEncrypted!private! !
!HTTPRequest categoriesFor: #setTimestamp!initialize-release!public! !
!HTTPRequest categoriesFor: #streamedResponse!accessing-response!public! !
!HTTPRequest categoriesFor: #tailPath!accessing!public! !
!HTTPRequest categoriesFor: #timestamp!accessing!public! !
!HTTPRequest categoriesFor: #uri!accessing!public! !
!HTTPRequest categoriesFor: #uriString!accessing!public! !
!HTTPRequest categoriesFor: #urlString!accessing!public! !
!HTTPRequest categoriesFor: #userAgent!accessing-headers!public! !
!HTTPRequest categoriesFor: #wantsConnectionClose!public!testing! !

!HTTPRequest class methodsFor!

allMethodNames
	"...of all request methods we support there"
	self subclasses collect: [:each | each methodName].!

methodName
	"HTTP method used for a request"
	^self subclassResponsibility!

newFor: aRequestLine readFrom: aSwazooStream 
	"to support an additional http method, simply subclass a HTTPRequest!!"
	| targetClass |
	targetClass := aRequestLine method = 'GET' 
		ifTrue: [HTTPGet] "most used anyway"
		ifFalse: [aRequestLine method = 'POST'  
			ifTrue: [HTTPPost]  "second most used"
			ifFalse: [self subclasses detect: [:each | 
				each methodName = aRequestLine method] ifNone: [nil] ] ].
	targetClass isNil ifTrue: [^HTTPException notImplemented].
	^targetClass new for: aRequestLine readFrom: aSwazooStream!

readFrom: aSwazooStream 
	"^an HTTPRequest
I create and return a new instance of one of my subclasses which will represent the HTTP request presumed to be the contents of aStream.
The first step is to work out which of my subclasses to create.  I do this by parsing the 'request-line' from the stream.  The request-line contains the 'method', and I look for the subclass that handles this method and delegate the rest of the message parsing to a new instance of that class."

	| requestLine |
	requestLine := HTTPRequestLine readFrom: aSwazooStream.
	^self newFor: requestLine readFrom: aSwazooStream!

request: aUriString 
	"For testing only (I'm guessing / hoping!!).  The idea to to create a request for a resource with the URI 'someHost/aUriString'."

	^self 
		request: aUriString
		from: 'someHost'
		at: 'someIP'!

request: aUriString from: aHostString at: anIPString 
	"For testing only (I'm guessing / hoping!!).
A request is manufactured that has a request line method of >>methodName and a request line URI with an identifier of aUriString.  A Host header is added to the headers and the ip address is set to anIP string.
This may result in a corrupt or invalid request, but that's the natutre of testing, I guess."

	^self new 
		request: aUriString
		from: aHostString
		at: anIPString! !
!HTTPRequest class categoriesFor: #allMethodNames!accessing!public! !
!HTTPRequest class categoriesFor: #methodName!accessing!public! !
!HTTPRequest class categoriesFor: #newFor:readFrom:!instance creation!public! !
!HTTPRequest class categoriesFor: #readFrom:!instance creation!public! !
!HTTPRequest class categoriesFor: #request:!public!tests support! !
!HTTPRequest class categoriesFor: #request:from:at:!public!tests support! !

