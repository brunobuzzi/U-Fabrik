"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPUnlock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPUnlock guid: (GUID fromString: '{5bb5d713-5074-488d-8919-9b83595a26a9}')!
HTTPUnlock comment: 'HTTPUnlock 

WebDAV HTTP method for unlock resources or collections'!
!HTTPUnlock categoriesForClass!Unclassified! !
!HTTPUnlock methodsFor!

isPropPatch
	^true!

isUnlock
	^true! !
!HTTPUnlock categoriesFor: #isPropPatch!public!testing! !
!HTTPUnlock categoriesFor: #isUnlock!public!testing! !

!HTTPUnlock class methodsFor!

methodName
	"HTTP method used for a request"
	^'UNLOCK'! !
!HTTPUnlock class categoriesFor: #methodName!accessing!public! !

