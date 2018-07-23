"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPDelete
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPDelete guid: (GUID fromString: '{5578e550-d9f8-48d2-a749-797613457548}')!
HTTPDelete comment: '
HTTPDelete 

rfc26216 section 9.7

The DELETE method requests that the origin server delete the resource
   identified by the Request-URI. This method MAY be overridden by human
   intervention (or other means) on the origin server. The client cannot
   be guaranteed that the operation has been carried out, even if the
   status code returned from the origin server indicates that the action
   has been completed successfully. However, the server SHOULD NOT
   indicate success unless, at the time the response is given, it
   intends to delete the resource or move it to an inaccessible
   location.
 ...
'!
!HTTPDelete categoriesForClass!Unclassified! !
!HTTPDelete methodsFor!

isDelete
	^true! !
!HTTPDelete categoriesFor: #isDelete!public!testing! !

!HTTPDelete class methodsFor!

methodName
	"HTTP method used for a request"
	^'DELETE'! !
!HTTPDelete class categoriesFor: #methodName!accessing!public! !

