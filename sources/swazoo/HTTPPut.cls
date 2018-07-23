"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPPut
	instanceVariableNames: 'putData'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPPut guid: (GUID fromString: '{1a5378bb-5de7-43a3-b1f0-37b24de14e40}')!
HTTPPut comment: '
HTTPPut 

rfc26216 section 9.6

   The PUT method requests that the enclosed entity be stored under the
   supplied Request-URI. If the Request-URI refers to an already
   existing resource, the enclosed entity SHOULD be considered as a
   modified version of the one residing on the origin server. If the
   Request-URI does not point to an existing resource, and that URI is
   capable of being defined as a new resource by the requesting user
   agent, the origin server can create the resource with that URI. If a
   new resource is created, the origin server MUST inform the user agent
   via the 201 (Created) response. If an existing resource is modified,
   either the 200 (OK) or 204 (No Content) response codes SHOULD be sent
   to indicate successful completion of the request. If the resource
   could not be created or modified with the Request-URI, an appropriate
   error response SHOULD be given that reflects the nature of the
   problem. The recipient of the entity MUST NOT ignore any Content-*
   (e.g. Content-Range) headers that it does not understand or implement
   and MUST return a 501 (Not Implemented) response in such cases.

Instance Variables:
	putData	<>	

'!
!HTTPPut categoriesForClass!Unclassified! !
!HTTPPut methodsFor!

isPut
	^true!

octetDataFrom: aStream 
	self headers fieldOfClass: HTTPContentLengthField
		ifNone: [^SwazooHTTPPutError raiseSignal: 'Missing Content-Length'].
	self putData: (aStream nextBytes: self contentLength)!

putData
	^putData!

putData: aString
	putData := aString!

readFrom: aStream 
	| contentTypeField |
	super readFrom: aStream.
	contentTypeField := self headers fieldOfClass: ContentTypeField
				ifNone: [SwazooHTTPPutError raiseSignal: 'Missing Content-Type'].
	contentTypeField mediaType = 'application/octet-stream' 
		ifTrue: [self octetDataFrom: aStream]
		ifFalse: [self urlencodedDataFrom: aStream].
	^self! !
!HTTPPut categoriesFor: #isPut!public!testing! !
!HTTPPut categoriesFor: #octetDataFrom:!public!reading! !
!HTTPPut categoriesFor: #putData!accessing!public! !
!HTTPPut categoriesFor: #putData:!private! !
!HTTPPut categoriesFor: #readFrom:!public!reading! !

!HTTPPut class methodsFor!

methodName
	^'PUT'! !
!HTTPPut class categoriesFor: #methodName!accessing!public! !

