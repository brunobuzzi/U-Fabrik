"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooCacheControl
	instanceVariableNames: 'request cacheTarget etag lastModified'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooCacheControl guid: (GUID fromString: '{78e318a6-655c-4915-b02a-d2f97a344aa0}')!
SwazooCacheControl comment: ''!
!SwazooCacheControl categoriesForClass!Unclassified! !
!SwazooCacheControl methodsFor!

addNotModifedHeaders: aResponse 
	"RFC2616 10.3.5
	If the conditional GET used a strong cache validator (see section 13.3.3), the response SHOULD NOT include other entity-headers. ... this prevents inconsistencies between cached entity-bodies and updated headers. "

	self isRequestStrongValidator 
		ifTrue: [aResponse headers addField: (HTTPETagField new entityTag: self etag)]
		ifFalse: [self basicAddResponseHeaders: aResponse].
	^aResponse!

addResponseHeaders: aResponse 
	"Add response headers to the response.
	We MUST differentiate between 200/302 responses"

	^aResponse isNotModified 
		ifTrue: [self addNotModifedHeaders: aResponse]
		ifFalse: [self basicAddResponseHeaders: aResponse]!

basicAddResponseHeaders: aResponse 
	"RFC 2616 13.3.4
	HTTP/1.1 origin servers: 
      	- SHOULD send an entity tag validator unless it is not feasible to generate one.
		- SHOULD send a Last-Modified value "

	aResponse headers addField: (HTTPETagField new entityTag: self etag).
	aResponse headers addField: (HTTPLastModifiedField new timestamp: self lastModified).
	^aResponse!

cacheTarget
	^cacheTarget!

etag
	etag isNil ifTrue: [etag := self generateETag].
	^etag!

etag: aString 
	etag := aString!

generateETag
	^self cacheTarget etag!

generateLastModified
	^self cacheTarget lastModified!

isIfModifiedSince
	"Answers true if either 
		- the request does not included the header
		-or there is not a match"

	| ifModifiedSince |
	ifModifiedSince := request headers fieldOfClass: HTTPIfModifiedSinceField
				ifNone: [nil].
	^ifModifiedSince isNil or: [self lastModified > ifModifiedSince date]!

isIfNoneMatch
	"Answers true if either 
		- the request does not included the header
		-or there is not a match"

	| field |
	field := request headers fieldOfClass: HTTPIfNoneMatchField ifNone: [nil].
	^field isNil or: [(field entityTags includes: self etag) not]!

isNotModified
	"Compare the cacheTarget with the request headers and answer if the client's version is not modified.
	Takes into account http version, and uses best practices defined by HTTP spec"

	^self isIfNoneMatch not or: [self isIfModifiedSince not]!

isRequestStrongValidator
	| field |
	field := request headers fieldOfClass: HTTPIfNoneMatchField ifNone: [nil].
	^field notNil and: [field entityTags isEmpty not]!

lastModified
	lastModified isNil ifTrue: [lastModified := self generateLastModified].
	^lastModified!

lastModified: aRFC1123TimeStampString 
	lastModified := aRFC1123TimeStampString!

request: aHTTPGet cacheTarget: anObject 
	request := aHTTPGet.
	cacheTarget := anObject! !
!SwazooCacheControl categoriesFor: #addNotModifedHeaders:!operations!public! !
!SwazooCacheControl categoriesFor: #addResponseHeaders:!operations!public! !
!SwazooCacheControl categoriesFor: #basicAddResponseHeaders:!operations!public! !
!SwazooCacheControl categoriesFor: #cacheTarget!accessing!public! !
!SwazooCacheControl categoriesFor: #etag!accessing!public! !
!SwazooCacheControl categoriesFor: #etag:!accessing!public! !
!SwazooCacheControl categoriesFor: #generateETag!operations!public! !
!SwazooCacheControl categoriesFor: #generateLastModified!operations!public! !
!SwazooCacheControl categoriesFor: #isIfModifiedSince!public!testing! !
!SwazooCacheControl categoriesFor: #isIfNoneMatch!public!testing! !
!SwazooCacheControl categoriesFor: #isNotModified!public!testing! !
!SwazooCacheControl categoriesFor: #isRequestStrongValidator!public!testing! !
!SwazooCacheControl categoriesFor: #lastModified!public!testing! !
!SwazooCacheControl categoriesFor: #lastModified:!public!testing! !
!SwazooCacheControl categoriesFor: #request:cacheTarget:!accessing!public! !

