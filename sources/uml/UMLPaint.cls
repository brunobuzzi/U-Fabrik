"Filed out from Dolphin Smalltalk 7"!

Object subclass: #UMLPaint
	instanceVariableNames: 'umlClass bitmap'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLPaint guid: (GUID fromString: '{a87164c9-60fd-4611-bc5e-40029bd4fe82}')!
UMLPaint comment: ''!
!UMLPaint categoriesForClass!Unclassified! !
!UMLPaint methodsFor!

bitmap
	^bitmap!

bitmap: anObject
	bitmap := anObject!

centerClassConnectors

	^(Array new: 8) 
		at: 1 put: 300@150;
		at: 2 put: 350@150;
		at: 3 put: 420@150; 
		at: 4 put: 300@175;
		at: 5 put: 420@175;
		at: 6 put: 300@200;
		at: 7 put: 350@200;
		at: 8 put: 420@200;
		yourself.!

centerClassConnectorsLevel2

	^(Array new: 8)
		at: 1 put: 320@150; 
		at: 2 put: 400@150; 
		at: 3 put: 300@165; 
		at: 4 put: 420@165; 
		at: 5 put: 300@190; 
		at: 6 put: 420@190; 
		at: 7 put: 320@200; 
		at: 8 put: 400@200; 
		yourself!

defaultCenterPoint

	^350@175!

defaultClassNameFont

	^GdiplusFont name: 'Trebuchet MS' emSize: 11.!

defaultRectanlgeCorner

	^300@150!

defaultRelatedClassConnectorsLevel1

	^(Array new: 8)
		at: 1 put: 200@100; 
		at: 2 put: 350@100; 
		at: 3 put: 500@100; 
		at: 4 put: 200@175; 
		at: 5 put: 500@175; 
		at: 6 put: 200@250; 
		at: 7 put: 350@250; 
		at: 8 put: 500@250; 
		yourself!

defaultRelatedClassConnectorsLevel2

	^(Array new: 8)
		at: 1 put: 250@50; 
		at: 2 put: 450@50; 
		at: 3 put: 120@125; 
		at: 4 put: 600@125; 
		at: 5 put: 120@225; 
		at: 6 put: 600@225; 
		at: 7 put: 250@300; 
		at: 8 put: 450@300; 
		yourself!

defaultUMLClassRectangleSize

	^120 @ 50!

drawUMLClassAtCenter
	| rectEllipse blackPen |

	rectEllipse := self defaultRectanlgeCorner extent: self defaultUMLClassRectangleSize.
	blackPen := GdiplusPen brush: (GdiplusSolidBrush color: Color darkGreen asARGB) width: 3.
	bitmap graphics drawRectangle: rectEllipse pen: blackPen.
	bitmap graphics 
		drawString: umlClass name 
		font: self defaultClassNameFont 
		at: 302@165 
		format: nil 
		brush: nil.!

drawUMLRelationClasses: anOrderedCollection
	| blackPen |
	
	blackPen := GdiplusPen brush: (GdiplusSolidBrush color: Color black asARGB) width: 3.
	anOrderedCollection keysAndValuesDo: [:eachKey :eachValue | | relatedClass rectangle startPoint |
		relatedClass := eachValue relatedClassTo: umlClass.
		startPoint := self rectanglesLevel1 at: eachKey.
		rectangle := startPoint extent: self defaultUMLClassRectangleSize.
		bitmap graphics drawRectangle: rectangle pen: blackPen.
		bitmap graphics drawString: relatedClass name font: self defaultClassNameFont at: (startPoint + 5) format: nil  brush: nil.
		bitmap graphics drawString: (eachValue getMultiplicityFor: umlClass) text
					font: self defaultClassNameFont 
					at:  (self centerClassConnectors at: eachKey) + 3
					format: nil  brush: (GdiplusSolidBrush color: (Color blue asARGB)).
		bitmap graphics drawString: (eachValue getMultiplicityFor: relatedClass) text
					font: self defaultClassNameFont 
					at:  (self defaultRelatedClassConnectorsLevel1 at: eachKey) + 3
					format: nil  brush: (GdiplusSolidBrush color: (Color blue asARGB)).
		bitmap graphics drawLineFrom: (self centerClassConnectors at: eachKey) 
					to: (self defaultRelatedClassConnectorsLevel1 at: eachKey) 
					pen: (GdiplusPen brush: (GdiplusSolidBrush color: Color darkGray asARGB) width: 3).
		(eachValue getMultiplicityFor: umlClass) text isEmpty ifTrue: [bitmap graphics fillEllipse: (Rectangle center: (self centerClassConnectors at: eachKey) extent: 10@10) brush: (GdiplusSolidBrush color: Color darkRed asARGB)].
		(eachValue getMultiplicityFor: relatedClass) text isEmpty ifTrue: [bitmap graphics  fillEllipse: (Rectangle center: (self defaultRelatedClassConnectorsLevel1 at: eachKey) extent: 10@10) brush: (GdiplusSolidBrush color: Color darkRed asARGB)].].!

drawUMLRelationClassesLevel2: anOrderedCollection
	| blackPen |

	blackPen := GdiplusPen brush: (GdiplusSolidBrush color: Color black asARGB) width: 3.
	anOrderedCollection keysAndValuesDo: [:eachKey :eachValue | | relatedClass rectangle startPoint |
		relatedClass := eachValue relatedClassTo: umlClass.
		startPoint := self rectanglesLevel2 at: eachKey.
		rectangle := startPoint extent: self defaultUMLClassRectangleSize.
		bitmap graphics drawRectangle: rectangle pen: blackPen.
		bitmap graphics drawString: relatedClass name font: self defaultClassNameFont at: (startPoint + 5) format: nil  brush: nil.
		bitmap graphics drawString: (eachValue getMultiplicityFor: umlClass) text
					font: self defaultClassNameFont 
					at:  (self centerClassConnectorsLevel2 at: eachKey) + 3
					format: nil  brush: (GdiplusSolidBrush color: (Color blue asARGB)).
		bitmap graphics drawString: (eachValue getMultiplicityFor: relatedClass) text
					font: self defaultClassNameFont 
					at:  (self defaultRelatedClassConnectorsLevel2 at: eachKey) + 3
					format: nil  brush: (GdiplusSolidBrush color: (Color blue asARGB)).
		bitmap graphics drawLineFrom: (self centerClassConnectorsLevel2 at: eachKey) 
					to: (self defaultRelatedClassConnectorsLevel2 at: eachKey) 
					pen: (GdiplusPen brush: (GdiplusSolidBrush color: Color darkGray asARGB) width: 3).
		(eachValue getMultiplicityFor: umlClass) text isEmpty ifTrue: [bitmap graphics fillEllipse: (Rectangle center: (self centerClassConnectorsLevel2 at: eachKey) extent: 10@10) brush: (GdiplusSolidBrush color: Color darkRed asARGB)].
		(eachValue getMultiplicityFor: relatedClass) text isEmpty ifTrue: [bitmap graphics  fillEllipse: (Rectangle center: (self defaultRelatedClassConnectorsLevel2 at: eachKey) extent: 10@10) brush: (GdiplusSolidBrush color: Color darkRed asARGB)].].!

drawUMLRelations
	| relations |

	relations := umlClass allRelations.
	(relations size > 8)
	ifFalse: [self drawUMLRelationClasses: relations] 
	ifTrue: [self drawUMLRelationClasses: (relations first: 8).
		self drawUMLRelationClassesLevel2: (relations allButFirst: 8).]
	
!

generate

	self drawUMLClassAtCenter.
	self drawUMLRelations.
!

initialize

	super initialize.

	bitmap := GdiplusBitmap extent: 725 @ 350.!

rectanglesLevel1

	^(Array new: 8)
		at: 1 put: 80@50; 
		at: 2 put: 300@50; 
		at: 3 put: 500@50; 
		at: 4 put: 80@150; 
		at: 5 put: 500@150; 
		at: 6 put: 80@250; 
		at: 7 put: 300@250; 
		at: 8 put: 500@250; 
		yourself!

rectanglesLevel2

	^(Array new: 8)
		at: 1 put: 200@0; 
		at: 2 put: 400@0; 
		at: 3 put: 0@100; 
		at: 4 put: 600@100; 
		at: 5 put: 0@200; 
		at: 6 put: 600@200; 
		at: 7 put: 200@300; 
		at: 8 put: 400@300; 
		yourself
	!

show

	self generate.
	bitmap class showExample: bitmap!

umlClass
	^umlClass!

umlClass: anObject
	umlClass := anObject! !
!UMLPaint categoriesFor: #bitmap!accessing!private! !
!UMLPaint categoriesFor: #bitmap:!accessing!private! !
!UMLPaint categoriesFor: #centerClassConnectors!public! !
!UMLPaint categoriesFor: #centerClassConnectorsLevel2!public! !
!UMLPaint categoriesFor: #defaultCenterPoint!public! !
!UMLPaint categoriesFor: #defaultClassNameFont!public! !
!UMLPaint categoriesFor: #defaultRectanlgeCorner!public! !
!UMLPaint categoriesFor: #defaultRelatedClassConnectorsLevel1!public! !
!UMLPaint categoriesFor: #defaultRelatedClassConnectorsLevel2!public! !
!UMLPaint categoriesFor: #defaultUMLClassRectangleSize!public! !
!UMLPaint categoriesFor: #drawUMLClassAtCenter!public! !
!UMLPaint categoriesFor: #drawUMLRelationClasses:!public! !
!UMLPaint categoriesFor: #drawUMLRelationClassesLevel2:!public! !
!UMLPaint categoriesFor: #drawUMLRelations!public! !
!UMLPaint categoriesFor: #generate!public! !
!UMLPaint categoriesFor: #initialize!public! !
!UMLPaint categoriesFor: #rectanglesLevel1!public! !
!UMLPaint categoriesFor: #rectanglesLevel2!public! !
!UMLPaint categoriesFor: #show!public! !
!UMLPaint categoriesFor: #umlClass!accessing!private! !
!UMLPaint categoriesFor: #umlClass:!accessing!private! !

!UMLPaint class methodsFor!

on: anUMLClass

	^super new initialize
		umlClass: anUMLClass;
		yourself.! !
!UMLPaint class categoriesFor: #on:!public! !

