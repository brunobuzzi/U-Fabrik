"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLElementComparision
	instanceVariableNames: 'firstElement secondElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLElementComparision guid: (GUID fromString: '{14733cab-d120-49ef-836e-92e6e36106a3}')!
UMLElementComparision comment: ''!
!UMLElementComparision categoriesForClass!Unclassified! !
!UMLElementComparision methodsFor!

compareElements

	^self subclassResponsibility!

firstElement
	^firstElement!

firstElement: anObject
	firstElement := anObject!

secondElement
	^secondElement!

secondElement: anObject
	secondElement := anObject! !
!UMLElementComparision categoriesFor: #compareElements!public! !
!UMLElementComparision categoriesFor: #firstElement!accessing!private! !
!UMLElementComparision categoriesFor: #firstElement:!accessing!private! !
!UMLElementComparision categoriesFor: #secondElement!accessing!private! !
!UMLElementComparision categoriesFor: #secondElement:!accessing!private! !

!UMLElementComparision class methodsFor!

icon

	^Icon fromId: 'XML.ICO'!

with: firstUMLObject

	^self with: firstUMLObject with: nil!

with: firstUMLObject with: secondUMLObject

	^super new initialize
		firstElement: firstUMLObject;
		secondElement: secondUMLObject;
		yourself.! !
!UMLElementComparision class categoriesFor: #icon!public! !
!UMLElementComparision class categoriesFor: #with:!public! !
!UMLElementComparision class categoriesFor: #with:with:!public! !

