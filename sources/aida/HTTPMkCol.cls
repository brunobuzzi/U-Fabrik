"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPMkCol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPMkCol guid: (GUID fromString: '{7ebfc49b-1686-461e-945c-d313219417ab}')!
HTTPMkCol comment: 'HTTPMkCol 

WebDAV HTTP method for making new collection (directories, folders)'!
!HTTPMkCol categoriesForClass!Unclassified! !
!HTTPMkCol methodsFor!

isMkCol
	^true! !
!HTTPMkCol categoriesFor: #isMkCol!public!testing! !

!HTTPMkCol class methodsFor!

methodName
	"HTTP method used for a request"
	^'MKCOL'! !
!HTTPMkCol class categoriesFor: #methodName!accessing!public! !

