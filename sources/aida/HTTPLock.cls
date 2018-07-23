"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPLock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPLock guid: (GUID fromString: '{251df646-b7ca-4364-bbd0-b3691b96681d}')!
HTTPLock comment: 'HTTPLock  

WebDAV HTTP method for lock resources  or collections'!
!HTTPLock categoriesForClass!Unclassified! !
!HTTPLock methodsFor!

isLock
	^true! !
!HTTPLock categoriesFor: #isLock!public!testing! !

!HTTPLock class methodsFor!

methodName
	"HTTP method used for a request"
	^'LOCK'! !
!HTTPLock class categoriesFor: #methodName!accessing!public! !

