"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebHelpApp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebHelpApp guid: (GUID fromString: '{79752cb5-3bad-4564-b1e8-d7b29051dbaf}')!
WebHelpApp comment: ''!
!WebHelpApp categoriesForClass!Unclassified! !
!WebHelpApp methodsFor!

viewNewPage
	| appName viewName helpPage |
	appName := (self session lastRequest queryAt: 'app') asSymbol.
	viewName := (self session lastRequest queryAt: 'hview') asSymbol.
	helpPage := WebHelpPage newForApp: appName view: viewName parent: self observee.
	self redirectTo: helpPage view: #new.! !
!WebHelpApp categoriesFor: #viewNewPage!printing!public! !

