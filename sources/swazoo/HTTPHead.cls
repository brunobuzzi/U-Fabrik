"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPHead
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPHead guid: (GUID fromString: '{5e16e011-61b5-4777-920a-26fc9d43b40c}')!
HTTPHead comment: '
HTTPHead

rfc26216 section 9.4

   The HEAD method is identical to GET except that the server MUST NOT
   return a message-body in the response. The metainformation contained
   in the HTTP headers in response to a HEAD request SHOULD be identical
   to the information sent in response to a GET request. This method can
   be used for obtaining metainformation about the entity implied by the
   request without transferring the entity-body itself. This method is
   often used for testing hypertext links for validity, accessibility,
   and recent modification.

'!
!HTTPHead categoriesForClass!Unclassified! !
!HTTPHead methodsFor!

isHead
	^true! !
!HTTPHead categoriesFor: #isHead!public!testing! !

!HTTPHead class methodsFor!

methodName
	^'HEAD'! !
!HTTPHead class categoriesFor: #methodName!accessing!public! !

