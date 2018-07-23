"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTableCell guid: (GUID fromString: '{ffbbca83-ad7a-4b37-8eed-ba2195453273}')!
WebTableCell comment: ''!
!WebTableCell categoriesForClass!Unclassified! !
!WebTableCell methodsFor!

align: aSymbol
	"set a horizontal aligment if cell content. It can be #left, #center or #right"
	self attributesAt: #align put: aSymbol asString.!

background: aWebImage
	"bachground image"
	self attributesAt: #background put:
		(((aWebImage isKindOf: WebImage) ifTrue: [aWebImage] ifFalse: [WebImage image: aWebImage]) 
			urlOnSession: self session)!

bgColor: aColorSymbol
	"set the color of table cell background. It can be in hex format (for example #00FF00) 
	or name of color (for example #White)"
	self attributesAt: #bgcolor put: (self colorValue: aColorSymbol)!

color: aColorSymbol
	self	bgColor: aColorSymbol!

colspan: aNumber
	"set the number of columns this cell will span"
	self attributesAt: #colspan put: aNumber printString.!

height: aNumber
	| text |
	text := aNumber <= 1 
			ifTrue: [(aNumber * 100) asInteger printString, '%']
			ifFalse: [aNumber asInteger printString].
	self attributesAt: #height put: text!

initialize!

isTableHeader
	^false!

nowrap: aBoolean
	"if true then text is not wrapped in new lines of a cell but a cell is expanded to carry all the text"
	self attributesAt: #nowrap put: aBoolean.!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession. 
	aStream nextPutAll: self ident, '<td'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>'.
	super printHTMLPageOn: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</td>', self eol.!

rowspan: aNumber
	"set the number of rows this cell will span"
	self attributesAt: #rowspan put: aNumber printString.!

shouldIdent
	^false!

valign: aSymbol
	"set a verttical aligment if cell content. It can be #top, #middle, #bottom or #centerline"
	self attributesAt: #valign put: aSymbol asString.!

width: aNumber
	"set the width of a cell. If nil, then cell automaticaly addjust itself. 
	If number is between 0 and 1 then width is percent of table width. 
	If number above 1 then width in pixels"
	| text |
	text := aNumber <= 1 
			ifTrue: [(aNumber * 100) asInteger printString, '%']
			ifFalse: [aNumber asInteger printString].
	self attributesAt: #width put: text! !
!WebTableCell categoriesFor: #align:!attributes!public! !
!WebTableCell categoriesFor: #background:!attributes!public! !
!WebTableCell categoriesFor: #bgColor:!attributes!public! !
!WebTableCell categoriesFor: #color:!attributes!public! !
!WebTableCell categoriesFor: #colspan:!attributes!public! !
!WebTableCell categoriesFor: #height:!attributes!public! !
!WebTableCell categoriesFor: #initialize!initialize-release!public! !
!WebTableCell categoriesFor: #isTableHeader!public!testing! !
!WebTableCell categoriesFor: #nowrap:!attributes!public! !
!WebTableCell categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebTableCell categoriesFor: #rowspan:!attributes!public! !
!WebTableCell categoriesFor: #shouldIdent!public!testing! !
!WebTableCell categoriesFor: #valign:!attributes!public! !
!WebTableCell categoriesFor: #width:!attributes!public! !

!WebTableCell class methodsFor!

new
	^super new initialize! !
!WebTableCell class categoriesFor: #new!instance creation!public! !

