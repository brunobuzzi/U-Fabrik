"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebHelp
	instanceVariableNames: 'pages'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebHelp guid: (GUID fromString: '{bada217e-4199-44e6-bb63-0e50f9d99817}')!
WebHelp comment: 'WebHelp for easy made of help system. each view of each App can have its own help page. Each aWebHelpPage has url like http://www.server.com/help/AdminApp/main.html for view #main in AdminApp.


Instance Variables:
	pages	<Dictionary of Dictionary> key=App class name, 
											value=dictionary key: view, value aWebHelpPage'!
!WebHelp categoriesForClass!Unclassified! !
!WebHelp methodsFor!

add: aWebHelpPage
	self forApp: aWebHelpPage app view: aWebHelpPage view put: aWebHelpPage!

existApp: anApp view: aSymbol
	^(self forApp:anApp view: aSymbol) notNil!

forApp: anApp view: aSymbol
	| appName |
	appName := (anApp isKindOf: WebApplication) ifTrue: [anApp class name] ifFalse: [anApp].
	^(self pages at: appName ifAbsent: [^nil]) at: aSymbol asSymbol ifAbsent: [nil]!

forApp: anApp view: aSymbol put: aWebHelpPage
	| appName |
	appName := (anApp isKindOf: WebApplication) ifTrue: [anApp class name] ifFalse: [anApp].
	(self pages at: appName ifAbsentPut: [Dictionary new]) at: aSymbol asSymbol put: aWebHelpPage!

initPages
	pages := Dictionary new.!

pages
	pages isNil ifTrue: [self initPages].
	^pages! !
!WebHelp categoriesFor: #add:!accessing!public! !
!WebHelp categoriesFor: #existApp:view:!accessing!public! !
!WebHelp categoriesFor: #forApp:view:!accessing!public! !
!WebHelp categoriesFor: #forApp:view:put:!accessing!public! !
!WebHelp categoriesFor: #initPages!initialize-release!public! !
!WebHelp categoriesFor: #pages!private! !

