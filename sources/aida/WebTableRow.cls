"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebTableRow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTableRow guid: (GUID fromString: '{1d69dbdf-d0ae-49b7-9c35-a4e9946a8dfb}')!
WebTableRow comment: ''!
!WebTableRow categoriesForClass!Unclassified! !
!WebTableRow methodsFor!

align: aSymbol
	"set a horizontal aligment for all cells in this row. It can be #left, #center or #right"
	self attributesAt: #align put: aSymbol asString.!

bgColor: aColorSymbol
	"set the color of table row background. It can be in hex format (for example #00FF00) 
	or name of color (for example #White)"
	self attributesAt: #bgcolor put: (self colorValue: aColorSymbol)!

color: aColorSymbol
	self	bgColor: aColorSymbol!

height: aNumber
	| text |
	text := aNumber <= 1 
			ifTrue: [(aNumber * 100) asInteger printString, '%']
			ifFalse: [aNumber asInteger printString].
	self attributesAt: #height put: text!

initialize!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession. 
	aStream nextPutAll: self ident, '<tr'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>', self eol.
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</tr>', self eol.!

shouldIdent
	^true!

valign: aSymbol
	"set a vertical aligment for all cells in this row. It can be #top, #middle, #bottom or #baseline"
	self attributesAt: #valign put: aSymbol asString.! !
!WebTableRow categoriesFor: #align:!attributes!public! !
!WebTableRow categoriesFor: #bgColor:!attributes!public! !
!WebTableRow categoriesFor: #color:!attributes!public! !
!WebTableRow categoriesFor: #height:!attributes!public! !
!WebTableRow categoriesFor: #initialize!initialize-release!public! !
!WebTableRow categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebTableRow categoriesFor: #shouldIdent!public!testing! !
!WebTableRow categoriesFor: #valign:!attributes!public! !

!WebTableRow class methodsFor!

new
	^super new initialize! !
!WebTableRow class categoriesFor: #new!instance creation!public! !

