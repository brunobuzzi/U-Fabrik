"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #WebImageMap
	instanceVariableNames: 'areas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebImageMap guid: (GUID fromString: '{b0c6c8ab-d7fb-4e55-9104-71672f917ebf}')!
WebImageMap comment: ''!
!WebImageMap categoriesForClass!Unclassified! !
!WebImageMap methodsFor!

addCirclePos: aPositionPoint diameter: aNumber  link: aWebLink

	| coords |
	coords := Array
		with: aPositionPoint x
		with: aPositionPoint y
		with: aNumber.
	self addShape: #circle coordinates: coords link: aWebLink!

addRectanglePos: aPositionPoint size: aSizePoint  link: aWebLink

	| coords |
	coords := Array
		with: aPositionPoint x
		with: aPositionPoint y
		with: (aPositionPoint + aSizePoint) x
		with: (aPositionPoint + aSizePoint) y.
	self addShape: #rect coordinates: coords link: aWebLink!

addShape: aShapeSymbol coordinates: anArray link: aWebLink

	self areas add: 
		(Array with: aShapeSymbol with: anArray with: aWebLink)!

areas
	areas isNil ifTrue: [self initAreas].
	^areas!

initAreas
	areas := OrderedCollection new.!

initialize
	self name: self randomName.!

name
	^self attributesAt: #name!

name: aString
	self attributesAt: #name put: aString.!

printHTMLPageOn: aStream for: aRequest on: aSession 
	| link |
	self prepareToHTMLPrintOn: aSession.
	aStream nextPutAll: self ident , '<map'.
	self printAttributesOn: aStream for: aSession.
	aStream nextPutAll: '"> ' , self eol.
	self areas do: 
			[:area | 
			aStream
				nextPutAll: self identMore , '<area shape="';
				nextPutAll: (area at: 1) asString;
				nextPutAll: '" coords="'.
			1 to: (area at: 2) size
				do: 
					[:inx | 
					inx > 1 ifTrue: [aStream nextPutAll: ','].
					aStream nextPutAll: ((area at: 2) at: inx) printString].
			link := area at: 3.
			link prepareAttributesToPrintOn: aSession.
			link printAttributesOn: aStream for: aSession.
			aStream nextPutAll: '"> ' , self eol].
	aStream nextPutAll: self ident , '</map>' , self eol!

randomName

	^'map', ((AIDASite random next * 100) truncated) printString!

shouldIdent
	^true! !
!WebImageMap categoriesFor: #addCirclePos:diameter:link:!adding areas!public! !
!WebImageMap categoriesFor: #addRectanglePos:size:link:!adding areas!public! !
!WebImageMap categoriesFor: #addShape:coordinates:link:!adding areas!public! !
!WebImageMap categoriesFor: #areas!private! !
!WebImageMap categoriesFor: #initAreas!initialize - release!public! !
!WebImageMap categoriesFor: #initialize!initialize - release!public! !
!WebImageMap categoriesFor: #name!attributes!public! !
!WebImageMap categoriesFor: #name:!attributes!public! !
!WebImageMap categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebImageMap categoriesFor: #randomName!private! !
!WebImageMap categoriesFor: #shouldIdent!private! !

!WebImageMap class methodsFor!

new
	^super new initialize! !
!WebImageMap class categoriesFor: #new!instance creation!public! !

