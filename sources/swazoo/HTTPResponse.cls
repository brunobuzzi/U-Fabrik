"Filed out from Dolphin Smalltalk 7"!

HTTPMessage subclass: #HTTPResponse
	instanceVariableNames: 'code entity'
	classVariableNames: 'StatusCodes'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPResponse guid: (GUID fromString: '{a2949024-80e5-4328-9905-d86e906acbb5}')!
HTTPResponse comment: ''!
!HTTPResponse categoriesForClass!Unclassified! !
!HTTPResponse methodsFor!

addDateHeader
	"^self
Note that the server must have it's clock set to GMT"

	self headers addField: (HTTPDateField new date: SpTimestamp now).
	^self!

addDefaultBody
	self entity: '<HTML>
<HEAD><TITLE>', (StatusCodes at: self code ifAbsent: [self code printString]), '</TITLE></HEAD>
  <BODY>
   <H2>', self code printString, ' ', (StatusCodes at: self code ifAbsent: [self code printString]), '</H2>
   <P>The server experienced an error while processing this request. <BR>
   If this problem persists, please contact the webmaster.</P>
  <P>Swazoo Smalltalk Web Server</P>
  </BODY>
</HTML>'!

addHeaderName: aNameString value: aValueString
	^self headers 
		addField: (GenericHeaderField newForFieldName: aNameString withValueFrom: aValueString)!

addInitialHeaders
	self addServerHeader.
	self addDateHeader!

addServerHeader
	^self headers 
		addField: (HTTPServerField new productTokens: SwazooServer swazooVersion)!

cacheControl: aString
	"example: 'no-store, no-cache, must-revalidate'"
	self headers addField: (HTTPCacheControlField new directives: aString).!

code
	^code!

code: anInteger 
	code := anInteger.
	(#(200) includes: code) ifFalse: [self addDefaultBody].!

codeText
	^self class statusTextForCode: self code!

contentLength: anInteger
	self headers addField: (HTTPContentLengthField new contentLength: anInteger).
	^self!

contentSize
	^self entity notNil 
		ifTrue: [self entity size] 
		ifFalse: [0]!

contentType
	"^a String
Return the media type from my Content-Type header field."

	^self headers 
		fieldOfClass: ContentTypeField
		ifPresent: [:field | field mediaType]
		ifAbsent: ['application/octet-stream']!

contentType: aString 
	self headers addField: (ContentTypeField new mediaType: aString).
	^self!

cookie: aString 
	| newField |
	newField := HTTPSetCookieField new.
	newField addCookie: aString.
	self headers addField: newField.
	^self!

crlfOn: aStream 
	aStream
		nextPut: Character cr;
		nextPut: Character lf!

endHeaderOn: aStream 
	self crlfOn: aStream!

entity
	^entity!

entity: anEntity 
	entity := anEntity asByteArray "if not already"!

expires: aSpTimestamp  "from SPort "
	self headers addField: (HTTPExpiresField new timestamp: aSpTimestamp ).
	^self!

informConnectionClose
	self headers 
		fieldOfClass: HTTPConnectionField
		ifPresent: [:field | field setToClose]
		ifAbsent: [self headers addField: HTTPConnectionField new setToClose].
	^self!

informConnectionKeepAlive
	self headers 
		fieldOfClass: HTTPConnectionField
		ifPresent: [:field | field setToKeepAlive]
		ifAbsent: [self headers addField: HTTPConnectionField new setToKeepAlive].
	^self!

isBadRequest
	^self code = 400!

isFound
	^self code = 302!

isHttp10
	"we are responding by old HTTP/1.0 protocol"
	^self task request isHttp10!

isHttp11
	"we are responding by HTTP/1.1 protocol"
	^self task request isHttp11!

isInternalServerError
	^self code = 500!

isMovedPermanently
	^self code = 301!

isNotFound
	^self code = 404!

isNotImplemented
	^self code = 501!

isNotModified
	^self code = 304!

isOk
	^self code = 200!

isRedirectLink
	^self code = 302!

isSeeOther
	^self code = 303!

isStreamed
	^false!

isUnauthorized
	^self code = 401!

lastModified: aSpTimestamp "from SPort "
	self headers addField: (HTTPLastModifiedField new timestamp: aSpTimestamp).
	^self!

location: aString 
	self headers addField: (HTTPLocationField new uriString: aString).
	^self!

printChunkedTransferEncodingOn: aStream 
	aStream nextPutAll: 'Transfer-Encoding: chunked'.
	self crlfOn: aStream!

printContentLengthOn: aSwazooStream 
	"it is also added to headers. It is added so late because to be printed last, 
	just before body starts"
	self contentLength: self contentSize.
	(self headers fieldNamed: 'Content-length') printOn: aSwazooStream.
	self crlfOn: aSwazooStream!

printEntityOn: aStream 

	self entity isNil ifFalse: [aStream nextPutBytes: self entity]!

printHeadersOn: aSwazooStream 
	"^self
Write the headers (key-value pairs) to aStream.  The key
must be a String."

	self headers fields do: 
			[:aField | 
			aField printOn: aSwazooStream.
			self crlfOn: aSwazooStream]!

printStatusOn: aSwazooStream 
	| version |
	StatusCodes at: self code ifAbsent: [self class initialize]. "if some new status codes was added           													with #postInitialize method later"
	version := (self task isNil or: [self task request isNil or: [self task request isHttp11]]) 
		ifTrue: ['HTTP/1.1 '] ifFalse: ['HTTP/1.0 '].
	aSwazooStream
		nextPutAll: version;
		print: self code;
		space;
		nextPutAll: (self class statusTextForCode: self code).
	self crlfOn: aSwazooStream!

writeHeaderTo: aSwazooStream 
	self printStatusOn: aSwazooStream.
	self printHeadersOn: aSwazooStream.
	(self isStreamed and: [self shouldBeChunked])
		ifTrue: [self printChunkedTransferEncodingOn: aSwazooStream]
		ifFalse: [self printContentLengthOn: aSwazooStream].
	self endHeaderOn: aSwazooStream!

writeTo: aSwazooStream 
	self writeTo: aSwazooStream inResponseTo: nil!

writeTo: aSwazooStream inResponseTo: aRequest
	aSwazooStream isNil ifTrue: [ ^self ].
	self writeHeaderTo: aSwazooStream.
	(aRequest isNil or: [ aRequest isHead not ])
		ifTrue: [ self printEntityOn: aSwazooStream].
	aSwazooStream closeResponse! !
!HTTPResponse categoriesFor: #addDateHeader!initialize-release!public! !
!HTTPResponse categoriesFor: #addDefaultBody!initialize-release!public! !
!HTTPResponse categoriesFor: #addHeaderName:value:!accessing-headers!public! !
!HTTPResponse categoriesFor: #addInitialHeaders!initialize-release!public! !
!HTTPResponse categoriesFor: #addServerHeader!initialize-release!public! !
!HTTPResponse categoriesFor: #cacheControl:!accessing-headers!public! !
!HTTPResponse categoriesFor: #code!accessing!public! !
!HTTPResponse categoriesFor: #code:!initialize-release!public! !
!HTTPResponse categoriesFor: #codeText!accessing!public! !
!HTTPResponse categoriesFor: #contentLength:!accessing-headers!public! !
!HTTPResponse categoriesFor: #contentSize!accessing!public! !
!HTTPResponse categoriesFor: #contentType!accessing-headers!public! !
!HTTPResponse categoriesFor: #contentType:!accessing-headers!public! !
!HTTPResponse categoriesFor: #cookie:!accessing-headers!public! !
!HTTPResponse categoriesFor: #crlfOn:!private-sending!public! !
!HTTPResponse categoriesFor: #endHeaderOn:!private-sending!public! !
!HTTPResponse categoriesFor: #entity!accessing!public! !
!HTTPResponse categoriesFor: #entity:!accessing!public! !
!HTTPResponse categoriesFor: #expires:!accessing-headers!public! !
!HTTPResponse categoriesFor: #informConnectionClose!private! !
!HTTPResponse categoriesFor: #informConnectionKeepAlive!private! !
!HTTPResponse categoriesFor: #isBadRequest!public!testing! !
!HTTPResponse categoriesFor: #isFound!public!testing! !
!HTTPResponse categoriesFor: #isHttp10!public!testing! !
!HTTPResponse categoriesFor: #isHttp11!public!testing! !
!HTTPResponse categoriesFor: #isInternalServerError!public!testing! !
!HTTPResponse categoriesFor: #isMovedPermanently!public!testing! !
!HTTPResponse categoriesFor: #isNotFound!public!testing! !
!HTTPResponse categoriesFor: #isNotImplemented!public!testing! !
!HTTPResponse categoriesFor: #isNotModified!public!testing! !
!HTTPResponse categoriesFor: #isOk!public!testing! !
!HTTPResponse categoriesFor: #isRedirectLink!public!testing! !
!HTTPResponse categoriesFor: #isSeeOther!public!testing! !
!HTTPResponse categoriesFor: #isStreamed!public!testing! !
!HTTPResponse categoriesFor: #isUnauthorized!public!testing! !
!HTTPResponse categoriesFor: #lastModified:!accessing-headers!public! !
!HTTPResponse categoriesFor: #location:!accessing-headers!public! !
!HTTPResponse categoriesFor: #printChunkedTransferEncodingOn:!private-sending!public! !
!HTTPResponse categoriesFor: #printContentLengthOn:!private-sending!public! !
!HTTPResponse categoriesFor: #printEntityOn:!private-sending!public! !
!HTTPResponse categoriesFor: #printHeadersOn:!private-sending!public! !
!HTTPResponse categoriesFor: #printStatusOn:!private-sending!public! !
!HTTPResponse categoriesFor: #writeHeaderTo:!private-sending!public! !
!HTTPResponse categoriesFor: #writeTo:!public!sending! !
!HTTPResponse categoriesFor: #writeTo:inResponseTo:!public!sending! !

!HTTPResponse class methodsFor!

badRequest
	^super new code: 400!

forbidden
	^super new
		code: 403;
		entity: '<HTML>
<HEAD><TITLE>Forbidden</TITLE></HEAD>
<BODY>
<H1>403 Forbidden</H1>
<P>Access to the requested resource is forbidden.</P>
</BODY></HTML>'!

found
	^super new code: 302!

initialize
	"self initialize"

	StatusCodes := (Dictionary new)
				add: 100 -> 'Continue';
				add: 101 -> 'Switching Protocols';
				add: 200 -> 'OK';
				add: 201 -> 'Created';
				add: 202 -> 'Accepted';
				add: 203 -> 'Non-Authoritative Information';
				add: 204 -> 'No Content';
				add: 205 -> 'Reset Content';
				add: 206 -> 'Partial Content';
				add: 300 -> 'Multiple Choices';
				add: 301 -> 'Moved Permanently';
				add: 302 -> 'Found';
				add: 303 -> 'See Other';
				add: 304 -> 'Not Modified';
				add: 305 -> 'Use Proxy';
				add: 307 -> 'Temporary Redirect';
				add: 400 -> 'Bad Request';
				add: 401 -> 'Unauthorized';
				add: 402 -> 'Payment Required';
				add: 403 -> 'Forbidden';
				add: 404 -> 'Not Found';
				add: 405 -> 'Method Not Allowed';
				add: 406 -> 'Not Acceptable';
				add: 407 -> 'Proxy Authentication Required';
				add: 408 -> 'Request Time-out';
				add: 409 -> 'Conflict';
				add: 410 -> 'Gone';
				add: 411 -> 'Length Required';
				add: 412 -> 'Precondition Failed';
				add: 413 -> 'Request Entity Too Large';
				add: 414 -> 'Request-URI Too Large';
				add: 415 -> 'Unsupported Media Type';
				add: 416 -> 'Requested range not satisfiable';
				add: 417 -> 'Expectation Failed';
				add: 500 -> 'Internal Server Error';
				add: 501 -> 'Not Implemented';
				add: 502 -> 'Bad Gateway';
				add: 503 -> 'Service Unavailable';
				add: 504 -> 'Gateway Time-out';
				add: 505 -> 'HTTP Version not supported';
				yourself.
	self postInitialize.!

internalServerError
	^super new
		code: 500;
		entity: '<HTML>
<HEAD><TITLE>Not Found</TITLE></HEAD>
<BODY>
<H1>500 Internal Server Error</H1>
<P>The server experienced an error while processing this request.  If this problem persists, please contact the webmaster.</P>
</BODY></HTML>'!

internalServerError: debugErrorString
	^super new
		code: 500;
		entity: '<HTML>
<HEAD><TITLE>Not Found</TITLE></HEAD>
<BODY>
<H1>500 Internal Server Error</H1>
<P>', debugErrorString , '</P>
</BODY></HTML>'!

methodNotAllowed
"c.f. RFC 2616  10.4.6
   The method specified in the Request-Line is not allowed for the
   resource identified by the Request-URI. The response MUST include an
   Allow header containing a list of valid methods for the requested
   resource. "
	^super new code: 405!

movedPermanently
	^super new code: 301!

notFound
	^super new
		code: 404;
		entity: '<HTML>
<HEAD><TITLE>Not Found</TITLE></HEAD>
<BODY>
<H1>404 Not Found</H1>
<P>The requested resource was not found on this server.</P>
</BODY></HTML>'!

notImplemented
	^super new code: 501!

notModified
	^super new code: 304!

ok
	^super new code: 200!

postInitialize
	"WebDAV Status Code Extensions, rfc2518 sec10"
	StatusCodes
		add: 102 -> 'Processing';
		add: 207 -> 'Multi-Status';
		add: 422 -> 'Unprocessable Entity';
		add: 423 -> 'Locked';
		add: 424 -> 'Failed Dependency';
		add: 507 -> 'Insufficient Storage'!

redirectLink
	"^an HTTPResponse
Note that 302 is really the 'found' response.  This code should really be 303 (>>seeOther).  However, because many clients take 302 & 303 to be the same and because older clients don't understand 303, 302 is commonly used in this case.  See RFC 2616 10.3.4."

	^super new code: 302!

seeOther
	"^an HTTPResponse
The response to the request can be found under a different URI and SHOULD be retrieved using a GET method on that resource. This method exists primarily to allow the output of a POST-activated script to redirect the user agent to a selected resource.
See RFC 2616 10.3.4."

	^super new code: 303!

statusTextForCode: aNumber
	^StatusCodes at: aNumber ifAbsent: ['']!

unauthorized
	^super new code: 401!

xml: debugErrorString
	^super new
		code: 200;
		entity: debugErrorString! !
!HTTPResponse class categoriesFor: #badRequest!public!response types! !
!HTTPResponse class categoriesFor: #forbidden!public!response types! !
!HTTPResponse class categoriesFor: #found!public!response types! !
!HTTPResponse class categoriesFor: #initialize!class initialization!public! !
!HTTPResponse class categoriesFor: #internalServerError!public!response types! !
!HTTPResponse class categoriesFor: #internalServerError:!public! !
!HTTPResponse class categoriesFor: #methodNotAllowed!public!response types! !
!HTTPResponse class categoriesFor: #movedPermanently!public!response types! !
!HTTPResponse class categoriesFor: #notFound!public!response types! !
!HTTPResponse class categoriesFor: #notImplemented!public!response types! !
!HTTPResponse class categoriesFor: #notModified!public!response types! !
!HTTPResponse class categoriesFor: #ok!public!response types! !
!HTTPResponse class categoriesFor: #postInitialize!class initialization!public! !
!HTTPResponse class categoriesFor: #redirectLink!public!response types! !
!HTTPResponse class categoriesFor: #seeOther!public!response types! !
!HTTPResponse class categoriesFor: #statusTextForCode:!accessing!public! !
!HTTPResponse class categoriesFor: #unauthorized!public!response types! !
!HTTPResponse class categoriesFor: #xml:!public! !

