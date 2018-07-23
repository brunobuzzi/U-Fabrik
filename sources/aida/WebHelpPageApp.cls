"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebHelpPageApp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebHelpPageApp guid: (GUID fromString: '{9ef1536a-c0e1-4c8f-8868-a3fa4ba2c37c}')!
WebHelpPageApp comment: ''!
!WebHelpPageApp categoriesForClass!Unclassified! !
!WebHelpPageApp methodsFor!

actionEdit
	self newView: #main!

actionMainEdit
	self redirectToView: #edit!

actionNew
	self observee parent add: self observee.
	self newView: #main!

canBeEdited
	^self user inAdminGroup!

viewEdit
	| e |
	e := WebElement new.
	e cell addTextH4: 'Help page for ', self observee app asString, ', view #', self observee view. 
	e newRow.
	e cell addText: 'Title'; addBreak; 
		addInputFieldAspect: #title for: self observee size: 79. e newRow.
	e cell addText: 'Contents'; addBreak; 
		addRichEditorAspect: #body for: self observee size: 80@20. e newRow.
	e cell addButtonText: 'Save help page'.
	self style pageFrameWith: e title: self title!

viewMain
	| e |
	e := WebElement new.
	e table width: 1 "100%".
	e cell addTextH1: 'Help: ', self observee title. e newRow.
	self canBeEdited ifTrue: [e cell addButtonText: 'Edit' action: #edit. e newRow].
	e cell addText: self observee body "asWikiLinksOnlyHtml".
	self style pageFrameWith: e title: self title!

viewNew
	self viewEdit! !
!WebHelpPageApp categoriesFor: #actionEdit!actions!public! !
!WebHelpPageApp categoriesFor: #actionMainEdit!actions!public! !
!WebHelpPageApp categoriesFor: #actionNew!actions!public! !
!WebHelpPageApp categoriesFor: #canBeEdited!public!testing! !
!WebHelpPageApp categoriesFor: #viewEdit!printing!public! !
!WebHelpPageApp categoriesFor: #viewMain!printing!public! !
!WebHelpPageApp categoriesFor: #viewNew!printing!public! !

