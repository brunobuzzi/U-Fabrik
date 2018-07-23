"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #JoomlaModule
	instanceVariableNames: 'header body'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JoomlaModule guid: (GUID fromString: '{9c4ff2ec-4bf9-4327-9a00-1a6b6ead7116}')!
JoomlaModule comment: 'JoomlaModule 

Add elements to #body, not to module itself!!'!
!JoomlaModule categoriesForClass!Unclassified! !
!JoomlaModule methodsFor!

body
	"body of the module, add elements to body, not to module directly!!"
	body isNil ifTrue: [body := WebElement new].
	^body!

header
	header isNil ifTrue: [^''].
	^header!

header: aString 
	"text on top of menu"
	header := aString!

prepareModule
	self class: #moduletable.
	self addTextH3: self header.
	self table width: 1; cellPadding: 0; cellSpacing: 0.
	self body elements notEmpty ifTrue: [self add: self body].!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareModule.
	self prepareToHTMLPrintOn: aSession.
	self scriptBefore notNil 
		ifTrue: [self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<div'. self printAttributesOn: aStream for: aSession. 
	aStream nextPutAll: '>', self eol.
	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: [element printHTMLPageOn: aStream for: aRequest on: aSession] ] ].
	aStream nextPutAll: self ident, '</div>', self eol.
	self scriptAfter notNil 
		ifTrue: [self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].! !
!JoomlaModule categoriesFor: #body!accessing!public! !
!JoomlaModule categoriesFor: #header!accessing!public! !
!JoomlaModule categoriesFor: #header:!accessing!public! !
!JoomlaModule categoriesFor: #prepareModule!printing!public! !
!JoomlaModule categoriesFor: #printHTMLPageOn:for:on:!printing!public! !

