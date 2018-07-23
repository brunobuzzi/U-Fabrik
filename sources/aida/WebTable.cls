"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTable guid: (GUID fromString: '{4b162f9b-cbe4-4982-8431-755ddc48af3f}')!
WebTable comment: ''!
!WebTable categoriesForClass!Unclassified! !
!WebTable methodsFor!

bgColor: aColorSymbol
	self attributesAt: #bgcolor put: (self colorValue: aColorSymbol)!

border: aNumber
	"set the width of table border. default is 0"
	self attributesAt: #border put: aNumber printString.!

cellPadding: aNumber
	"define spacing between vertically adjacent cells"
	self attributesAt: #cellpadding put: aNumber printString.!

cellSpacing: aNumber
	"define spacing between adjacent cells horizontally"
	self attributesAt: #cellspacing put: aNumber printString.!

color: aColorSymbol
	self	bgColor: aColorSymbol!

height: aNumber
	| text |
	text := aNumber <= 1 
			ifTrue: [(aNumber * 100) asInteger printString, '%']
			ifFalse: [aNumber asInteger printString].
	self attributesAt: #height put: text!

initialize
	"self border: 0."!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession. 
	self scriptBefore notNil ifTrue: 
		[self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<table'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>', self eol.
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</table>', self eol.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].!

shouldIdent
	^true!

width: aNumber
	"set the width of entire table If nil, then table automaticaly addjust itself. 
	If number is between 0 and 1 then width is percent of document width.
	If number above 1 then width in pixels"
	| text |
	text := aNumber <= 1 
			ifTrue: [(aNumber * 100) asInteger printString, '%']
			ifFalse: [aNumber asInteger printString].
	self attributesAt: #width put: text! !
!WebTable categoriesFor: #bgColor:!attributes!public! !
!WebTable categoriesFor: #border:!attributes!public! !
!WebTable categoriesFor: #cellPadding:!attributes!public! !
!WebTable categoriesFor: #cellSpacing:!attributes!public! !
!WebTable categoriesFor: #color:!attributes!public! !
!WebTable categoriesFor: #height:!attributes!public! !
!WebTable categoriesFor: #initialize!initialize-release!public! !
!WebTable categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebTable categoriesFor: #shouldIdent!public!testing! !
!WebTable categoriesFor: #width:!attributes!public! !

!WebTable class methodsFor!

new
	^super new initialize! !
!WebTable class categoriesFor: #new!instance creation!public! !

