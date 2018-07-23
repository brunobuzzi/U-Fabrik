"Filed out from Dolphin Smalltalk 7"!

SwazooResource subclass: #RedirectionResource
	instanceVariableNames: 'targetUri'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RedirectionResource guid: (GUID fromString: '{1568296d-0c07-4f0a-80b6-14ceb5e45863}')!
RedirectionResource comment: ''!
!RedirectionResource categoriesForClass!Unclassified! !
!RedirectionResource methodsFor!

answerTo: aRequest 
	| answer |
	answer := HTTPResponse movedPermanently.
	answer headers addField: (HTTPLocationField new uriString: self targetUri).
	^answer!

targetUri
	^targetUri!

targetUri: aString 
	targetUri := aString! !
!RedirectionResource categoriesFor: #answerTo:!public!serving! !
!RedirectionResource categoriesFor: #targetUri!private-initialize!public! !
!RedirectionResource categoriesFor: #targetUri:!private-initialize!public! !

!RedirectionResource class methodsFor!

uriPattern: aString targetUri: bString 
	^(self uriPattern: aString) targetUri: bString! !
!RedirectionResource class categoriesFor: #uriPattern:targetUri:!instance creation!public! !

