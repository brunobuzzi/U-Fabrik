"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPMove
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPMove guid: (GUID fromString: '{035bda9e-e2bc-46e6-b243-d30336a2e593}')!
HTTPMove comment: 'HTTPMove

WebDAV HTTP method for move resources or collections'!
!HTTPMove categoriesForClass!Unclassified! !
!HTTPMove methodsFor!

isMove
	^true! !
!HTTPMove categoriesFor: #isMove!public!testing! !

!HTTPMove class methodsFor!

methodName
	"HTTP method used for a request"
	^'MOVE'! !
!HTTPMove class categoriesFor: #methodName!accessing!public! !

