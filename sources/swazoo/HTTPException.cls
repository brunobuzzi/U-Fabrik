"Filed out from Dolphin Smalltalk 7"!

Error subclass: #HTTPException
	instanceVariableNames: 'response'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPException guid: (GUID fromString: '{1f804f70-1fbb-4b13-a4a5-87ff117539db}')!
HTTPException comment: '
HTTPException immediatelly returns attached HTTP response to client. That way it is easier to respond with different status codes (like 201 Created). Not only error ones!!!! You can respond somewhere deeply in code of your resource with raising that exception and adding a prepared HTTPResponse. 
This exception is non-resumable!!!!

Example of ways to raise http response (200 Ok):

	HTTPException raiseResponse: (HTTPResponse new code: 200).
	HTTPException raiseResponseCode: 200.
	HTTPException ok.

Instance Variables:
	response	<HTTPResponse>	a response to be sent to client

'!
!HTTPException categoriesForClass!Unclassified! !
!HTTPException methodsFor!

response
	^response!

response: aHTTPResponse
	response := aHTTPResponse! !
!HTTPException categoriesFor: #response!accessing!public! !
!HTTPException categoriesFor: #response:!accessing!public! !

!HTTPException class methodsFor!

accepted
	^self raiseResponse: (HTTPResponse new code: 202)!

badGateway
	^self raiseResponse: (HTTPResponse new code: 502)!

badRequest
	^self raiseResponse: (HTTPResponse new code: 400)!

conflict
	^self raiseResponse: (HTTPResponse new code: 409)!

continue
	^self raiseResponse: (HTTPResponse new code: 100)!

created
	^self raiseResponse: (HTTPResponse new code: 201)!

expectationFailed
	^self raiseResponse: (HTTPResponse new code: 416)!

forbidden
	^self raiseResponse: (HTTPResponse new code: 403)!

found
	^self raiseResponse: (HTTPResponse new code: 302)!

gatewayTimeout
	^self raiseResponse: (HTTPResponse new code: 504)!

gone
	^self raiseResponse: (HTTPResponse new code: 410)!

httpVersionNotSupported
	^self raiseResponse: (HTTPResponse new code: 505)!

internalServerError
	^self raiseResponse: (HTTPResponse new code: 500)!

lengthRequired
	^self raiseResponse: (HTTPResponse new code: 411)!

methodNotAllowed
	^self raiseResponse: (HTTPResponse new code: 405)!

movedPermanently
	^self raiseResponse: (HTTPResponse new code: 301)!

multipleChoices
	^self raiseResponse: (HTTPResponse new code: 300)!

noContent
	^self raiseResponse: (HTTPResponse new code: 204)!

nonAuthorativeInformation
	^self raiseResponse: (HTTPResponse new code: 203)!

notAcceptable
	^self raiseResponse: (HTTPResponse new code: 406)!

notFound
	^self raiseResponse: (HTTPResponse new code: 404)!

notImplemented
	^self raiseResponse: (HTTPResponse new code: 501)!

notModified
	^self raiseResponse: (HTTPResponse new code: 304)!

ok
	^self raiseResponse: HTTPResponse ok!

partialContent
	^self raiseResponse: (HTTPResponse new code: 206)!

paymentRequired
	^self raiseResponse: (HTTPResponse new code: 402)!

preconditionFailed
	^self raiseResponse: (HTTPResponse new code: 412)!

proxyAuthenticationRequired
	^self raiseResponse: (HTTPResponse new code: 407)!

raiseResponseCode: aNumber
	"Raise an exception to immediatelly return http response with that code"
	^self raiseResponse: (HTTPResponse new code: aNumber)!

requestedRangeNotSatisfiable
	^self raiseResponse: (HTTPResponse new code: 416)!

requestEntityTooLarge
	^self raiseResponse: (HTTPResponse new code: 413)!

requestTimeout
	^self raiseResponse: (HTTPResponse new code: 408)!

requestURITooLong
	^self raiseResponse: (HTTPResponse new code: 414)!

resetContent
	^self raiseResponse: (HTTPResponse new code: 205)!

seeOther
	^self raiseResponse: (HTTPResponse new code: 303)!

serviceUnavailable
	^self raiseResponse: (HTTPResponse new code: 503)!

switchingProtocols
	^self raiseResponse: (HTTPResponse new code: 101)!

temporaryRedirect
	^self raiseResponse: (HTTPResponse new code: 307)!

unathorized
	^self raiseResponse: (HTTPResponse new code: 401)!

unsupportedMediaType
	^self raiseResponse: (HTTPResponse new code: 415)!

useProxy
	^self raiseResponse: (HTTPResponse new code: 305)! !
!HTTPException class categoriesFor: #accepted!public!responses-succesfull! !
!HTTPException class categoriesFor: #badGateway!public!responses-server error! !
!HTTPException class categoriesFor: #badRequest!public!responses-client error! !
!HTTPException class categoriesFor: #conflict!public!responses-client error! !
!HTTPException class categoriesFor: #continue!public!responses-informational! !
!HTTPException class categoriesFor: #created!public!responses-succesfull! !
!HTTPException class categoriesFor: #expectationFailed!public!responses-client error! !
!HTTPException class categoriesFor: #forbidden!public!responses-client error! !
!HTTPException class categoriesFor: #found!public!responses-redirection! !
!HTTPException class categoriesFor: #gatewayTimeout!public!responses-server error! !
!HTTPException class categoriesFor: #gone!public!responses-client error! !
!HTTPException class categoriesFor: #httpVersionNotSupported!public!responses-server error! !
!HTTPException class categoriesFor: #internalServerError!public!responses-server error! !
!HTTPException class categoriesFor: #lengthRequired!public!responses-client error! !
!HTTPException class categoriesFor: #methodNotAllowed!public!responses-client error! !
!HTTPException class categoriesFor: #movedPermanently!public!responses-redirection! !
!HTTPException class categoriesFor: #multipleChoices!public!responses-redirection! !
!HTTPException class categoriesFor: #noContent!public!responses-succesfull! !
!HTTPException class categoriesFor: #nonAuthorativeInformation!public!responses-succesfull! !
!HTTPException class categoriesFor: #notAcceptable!public!responses-client error! !
!HTTPException class categoriesFor: #notFound!public!responses-client error! !
!HTTPException class categoriesFor: #notImplemented!public!responses-server error! !
!HTTPException class categoriesFor: #notModified!public!responses-redirection! !
!HTTPException class categoriesFor: #ok!public!responses-succesfull! !
!HTTPException class categoriesFor: #partialContent!public!responses-succesfull! !
!HTTPException class categoriesFor: #paymentRequired!public!responses-client error! !
!HTTPException class categoriesFor: #preconditionFailed!public!responses-client error! !
!HTTPException class categoriesFor: #proxyAuthenticationRequired!public!responses-client error! !
!HTTPException class categoriesFor: #raiseResponseCode:!public!signalling! !
!HTTPException class categoriesFor: #requestedRangeNotSatisfiable!public!responses-client error! !
!HTTPException class categoriesFor: #requestEntityTooLarge!public!responses-client error! !
!HTTPException class categoriesFor: #requestTimeout!public!responses-client error! !
!HTTPException class categoriesFor: #requestURITooLong!public!responses-client error! !
!HTTPException class categoriesFor: #resetContent!public!responses-succesfull! !
!HTTPException class categoriesFor: #seeOther!public!responses-redirection! !
!HTTPException class categoriesFor: #serviceUnavailable!public!responses-server error! !
!HTTPException class categoriesFor: #switchingProtocols!public!responses-informational! !
!HTTPException class categoriesFor: #temporaryRedirect!public!responses-redirection! !
!HTTPException class categoriesFor: #unathorized!public!responses-client error! !
!HTTPException class categoriesFor: #unsupportedMediaType!public!responses-client error! !
!HTTPException class categoriesFor: #useProxy!public!responses-redirection! !

