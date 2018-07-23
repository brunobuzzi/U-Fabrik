"Filed out from Dolphin Smalltalk 7"!

WebTabs subclass: #ViewTabs
	instanceVariableNames: 'views'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ViewTabs guid: (GUID fromString: '{4f0cd272-13b6-4d12-b7ef-5a0aca1b0f53}')!
ViewTabs comment: 'For quick selection of App views. Just fill with view names and descriptions, all other will be automatic. Tab for curently shown will be colored as shown, other tabls will have links to self observee and appropriate view'!
!ViewTabs categoriesForClass!Unclassified! !
!ViewTabs methodsFor!

addView: aSymbol description: aString
	(self views contains: [:each | each key == aSymbol asSymbol]) 
		ifFalse: [self views add: (Association key: aSymbol asSymbol value: (Array with: aString with: #()))]!

addView: aSymbol description: aString also: aSymbolArray
	"if view is in aSymbolArray, then it is also considered selected"
	(self views contains: [:each | each key == aSymbol asSymbol]) 
		ifFalse: [self views add: (Association key: aSymbol asSymbol 
			value: (Array with: aString with: aSymbolArray))]!

initialize
	super initialize.
	self initViews.
	^self!

initViews
	views := OrderedCollection new.!

prepareTabsList
	| inx view |

	inx := 1. 
	view := self app view. 
	view = #'' ifTrue: [view := #main].
	self views do: [:each | 
		view = each key | ((each value at: 2) includes: view)
			ifTrue: [self addLinkTo: self app observee text: (each value at: 1) view: each key.
				self selected: inx]
"		 	ifTrue: [self addTextBold: (each value at: 1). self selected: inx] "
			ifFalse: [self addLinkTo: self app observee text: (each value at: 1) view: each key].
		inx := inx + 1]!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareTabsList.
	^super printHTMLPageOn: aStream for: aRequest on: aSession!

views
	^views! !
!ViewTabs categoriesFor: #addView:description:!accessing!public! !
!ViewTabs categoriesFor: #addView:description:also:!accessing!public! !
!ViewTabs categoriesFor: #initialize!initialize-release!public! !
!ViewTabs categoriesFor: #initViews!initialize-release!public! !
!ViewTabs categoriesFor: #prepareTabsList!printing!public! !
!ViewTabs categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!ViewTabs categoriesFor: #views!private! !

!ViewTabs class methodsFor!

new
	^super new initialize! !
!ViewTabs class categoriesFor: #new!instance creation!public! !

