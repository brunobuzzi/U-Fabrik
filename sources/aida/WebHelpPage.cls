"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebHelpPage
	instanceVariableNames: 'parent app view title body'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebHelpPage guid: (GUID fromString: '{595a3579-277e-447d-9938-bf93577a5eb0}')!
WebHelpPage comment: 'WebHelpPage contains help for particulal view on particular WebApp

Instance Variables:
	parent	<WebHelp>	back link to WebHelp
	app		<Symbol>	a name of WebApplication subclass
	view	<Symbol>	view of app for which is this help page
	title		<String>	 	title of that help page
	body	<String>	   	help content for that App and view in Wiki format'!
!WebHelpPage categoriesForClass!Unclassified! !
!WebHelpPage methodsFor!

app
	^app!

app: aSymbol
	app := aSymbol!

body
	body isNil ifTrue: [^''].
	^body!

body: aString
	body := aString!

parent
	^parent!

parent: aWebHelp
	parent := aWebHelp!

preferedUrl
	^'/help/',  self app asString, '/', self view asString, '.html'!

title
	title isNil ifTrue: [^''].
	^title!

title: anObject
	title := anObject!

view
	^view!

view: aSymbol
	view := aSymbol! !
!WebHelpPage categoriesFor: #app!accessing!public! !
!WebHelpPage categoriesFor: #app:!accessing!public! !
!WebHelpPage categoriesFor: #body!accessing!public! !
!WebHelpPage categoriesFor: #body:!accessing!public! !
!WebHelpPage categoriesFor: #parent!accessing!public! !
!WebHelpPage categoriesFor: #parent:!accessing!public! !
!WebHelpPage categoriesFor: #preferedUrl!accessing!public! !
!WebHelpPage categoriesFor: #title!accessing!public! !
!WebHelpPage categoriesFor: #title:!accessing!public! !
!WebHelpPage categoriesFor: #view!accessing!public! !
!WebHelpPage categoriesFor: #view:!accessing!public! !

!WebHelpPage class methodsFor!

newForApp: anAppNameSymbol view: aSymbol parent: aWebHelp
	^super new
		app: anAppNameSymbol;
		view: aSymbol;
		parent: aWebHelp! !
!WebHelpPage class categoriesFor: #newForApp:view:parent:!instance creation!public! !

