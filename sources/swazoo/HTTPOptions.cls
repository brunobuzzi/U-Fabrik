"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPOptions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPOptions guid: (GUID fromString: '{90e03bad-33cc-4c99-902f-1f1f4bf2550e}')!
HTTPOptions comment: '
HTTPOptions

rfc26216 section 9.2

   The OPTIONS method represents a request for information about the
   communication options available on the request/response chain
   identified by the Request-URI. This method allows the client to
   determine the options and/or requirements associated with a resource,
   or the capabilities of a server, without implying a resource action
   or initiating a resource retrieval.

'!
!HTTPOptions categoriesForClass!Unclassified! !
!HTTPOptions methodsFor!

isOptions
	^true!

respondUsing: responseBlock 
	"^an HTTPResponse
I represent a request for the options supported by this server.  I respond with a 200 (OK) and a list of my supported methods in an Allow: header.  I ignore the responseBlock."

	| response allowField |
	response := HTTPResponse ok.
	allowField := HTTPAllowField new.
	allowField methods addAll: self class allMethodNames.
	response headers addField: allowField.
	^response! !
!HTTPOptions categoriesFor: #isOptions!public!testing! !
!HTTPOptions categoriesFor: #respondUsing:!public!services! !

!HTTPOptions class methodsFor!

methodName
	^'OPTIONS'! !
!HTTPOptions class categoriesFor: #methodName!accessing!public! !

