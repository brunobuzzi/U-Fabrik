"Filed out from Dolphin Smalltalk 7"!

JoomlaModule subclass: #JoomlaMenu
	instanceVariableNames: 'pages'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JoomlaMenu guid: (GUID fromString: '{74d9f72b-1bc5-4b8a-8063-d1fd6aae9160}')!
JoomlaMenu comment: ''!
!JoomlaMenu categoriesForClass!Unclassified! !
!JoomlaMenu methodsFor!

addFirstPageWithDescription: aString
	| firstPage assoc firstPageTitle |
	firstPage := self app observee parent defaultPage.
	assoc := self app observee parent pages associations detect: [:each | each value == firstPage].
	firstPageTitle := assoc key.
	self addPage: firstPageTitle description: aString!

addPage: aNameString description: aTabNameString
	"aNameString is original/first title of page, not changed one!!"
	| name pageTitle |
	name := aNameString convertToSloveneChars.
	(self pages contains: [:each | each key == name]) ifTrue: [^nil]. 
	pageTitle := (self app observee parent pageTitled: name).
	pageTitle := pageTitle notNil ifTrue: [pageTitle title] ifFalse: [''].
	self pages add:
		(Association key: name value: (Array with: aTabNameString with: pageTitle ))!

initialize
	self initPages.
	^self!

initPages
	pages := OrderedCollection new.!

linkToWikiPage: aTitleString text: aString
	| page titleString |
	titleString := aTitleString "AIDASite convertFromWeb: aTitleString on: self app session".
	page := self app observee parent pageTitled: titleString.
	page notNil ifTrue: [^WebLink text: aString linkTo: page ].
	^(WebLink text: aString linkTo: self app observee parent view: #add )  "new page"
		parameter: 'title' value: (AIDASite convertToWebString: aTitleString)!

pages
	^pages!

prepareModule
	| inx tabTitle |
	super prepareModule.
	inx := 1.
	self pages do: [:each | 
		tabTitle := each key ensureUnicodeSloveneChars.
		self cell add: 
			((self linkToWikiPage: each key text: each value first) class: #mainlevel).
		each ~= self pages last ifTrue: [self newRow]. 
		inx := inx + 1]! !
!JoomlaMenu categoriesFor: #addFirstPageWithDescription:!accessing!public! !
!JoomlaMenu categoriesFor: #addPage:description:!accessing!public! !
!JoomlaMenu categoriesFor: #initialize!initialize-release!public! !
!JoomlaMenu categoriesFor: #initPages!initialize-release!public! !
!JoomlaMenu categoriesFor: #linkToWikiPage:text:!printing!public! !
!JoomlaMenu categoriesFor: #pages!private! !
!JoomlaMenu categoriesFor: #prepareModule!printing!public! !

!JoomlaMenu class methodsFor!

new
	^super new initialize! !
!JoomlaMenu class categoriesFor: #new!instance creation!public! !

