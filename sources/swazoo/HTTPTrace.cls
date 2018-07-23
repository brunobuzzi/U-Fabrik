"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPTrace
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPTrace guid: (GUID fromString: '{40e1fb48-ec2d-4d5a-b264-1cfecf1d5ffa}')!
HTTPTrace comment: '
HTTPTrace 

rfc26216 section 9.8

   The TRACE method is used to invoke a remote, application-layer loop-
   back of the request message. The final recipient of the request
   SHOULD reflect the message received back to the client as the
   entity-body of a 200 (OK) response
'!
!HTTPTrace categoriesForClass!Unclassified! !
!HTTPTrace methodsFor!

isTrace
	^true! !
!HTTPTrace categoriesFor: #isTrace!public!testing! !

!HTTPTrace class methodsFor!

methodName
	^'TRACE'! !
!HTTPTrace class categoriesFor: #methodName!accessing!public! !

