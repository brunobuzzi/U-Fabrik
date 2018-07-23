"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPCopy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPCopy guid: (GUID fromString: '{46f7395d-17d3-4179-b97b-79217f8d7f98}')!
HTTPCopy comment: 'HTTPCopy  

WebDAV HTTP method for copy resources or collections'!
!HTTPCopy categoriesForClass!Unclassified! !
!HTTPCopy methodsFor!

isCopy
	^true! !
!HTTPCopy categoriesFor: #isCopy!public!testing! !

!HTTPCopy class methodsFor!

methodName
	"HTTP method used for a request"
	^'COPY'! !
!HTTPCopy class categoriesFor: #methodName!accessing!public! !

