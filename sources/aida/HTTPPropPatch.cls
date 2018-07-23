"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPPropPatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPPropPatch guid: (GUID fromString: '{1b47ed01-a25a-46e4-9a6d-ea68b52a36c4}')!
HTTPPropPatch comment: 'HTTPPropPatch 

WebDAV HTTP method for updating properties'!
!HTTPPropPatch categoriesForClass!Unclassified! !
!HTTPPropPatch methodsFor!

isPropPatch
	^true! !
!HTTPPropPatch categoriesFor: #isPropPatch!public!testing! !

!HTTPPropPatch class methodsFor!

methodName
	"HTTP method used for a request"
	^'PROPPATCH'! !
!HTTPPropPatch class categoriesFor: #methodName!accessing!public! !

