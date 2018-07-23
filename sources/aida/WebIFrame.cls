"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebIFrame
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebIFrame guid: (GUID fromString: '{b3b7b4f3-1756-4af8-94aa-0d73c8f20177}')!
WebIFrame comment: 'WebIFrame is frame, inserted within a block of text. See IFRAME tag in HTML 4.01 spec'!
!WebIFrame categoriesForClass!Unclassified! !
!WebIFrame methodsFor!

frameBorder: aNumber
	"1 yes (default), 0 no"
	self attributesAt: #frameborder put: aNumber!

height: aNumber
	self attributesAt: #height put: aNumber printString!

printHTMLPageOn: aStream for: aRequest on: aSession
	self prepareToHTMLPrintOn: aSession. 
	self scriptBefore notNil ifTrue: 
		[self scriptBefore printHTMLPageOn: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<iframe'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '>'.
	aStream nextPutAll: '</iframe>'.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter printHTMLPageOn: aStream for: aRequest on: aSession].!

scrolling: aSymbol
	"#yes #no #auto (default)"
	self attributesAt: #scrolling put: aSymbol!

size: aPoint
	"set the size of frame area in format width@height pixels"
	self width: aPoint x.
	self height: aPoint y.!

src: anUrlString
	self attributesAt: #src put: anUrlString!

width: aNumber
	self attributesAt: #width put: aNumber printString! !
!WebIFrame categoriesFor: #frameBorder:!attributes!public! !
!WebIFrame categoriesFor: #height:!attributes!public! !
!WebIFrame categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebIFrame categoriesFor: #scrolling:!attributes!public! !
!WebIFrame categoriesFor: #size:!attributes!public! !
!WebIFrame categoriesFor: #src:!attributes!public! !
!WebIFrame categoriesFor: #width:!attributes!public! !

