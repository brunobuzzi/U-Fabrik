"Filed out from Dolphin Smalltalk 7"!

Object subclass: #DBElementComparision
	instanceVariableNames: 'firstElement secondElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBElementComparision guid: (GUID fromString: '{77da274a-93c9-423e-8d54-40fa521ff810}')!
DBElementComparision comment: ''!
!DBElementComparision categoriesForClass!Unclassified! !
!DBElementComparision methodsFor!

compareElements

	^self subclassResponsibility!

firstElement
	^firstElement!

firstElement: anObject
	firstElement := anObject!

hasIndividualComposite

	^false!

rtfDetail
	^''!

secondElement
	^secondElement!

secondElement: anObject
	secondElement := anObject!

typeString
	^'Database Model Comparision'! !
!DBElementComparision categoriesFor: #compareElements!public! !
!DBElementComparision categoriesFor: #firstElement!accessing!private! !
!DBElementComparision categoriesFor: #firstElement:!accessing!private! !
!DBElementComparision categoriesFor: #hasIndividualComposite!public! !
!DBElementComparision categoriesFor: #rtfDetail!public! !
!DBElementComparision categoriesFor: #secondElement!accessing!private! !
!DBElementComparision categoriesFor: #secondElement:!accessing!private! !
!DBElementComparision categoriesFor: #typeString!public! !

!DBElementComparision class methodsFor!

with: firstDBObject

	^self with: firstDBObject with: nil!

with: firstDBObject with: secondDBObject

	^super new initialize
		firstElement: firstDBObject;
		secondElement: secondDBObject;
		yourself.! !
!DBElementComparision class categoriesFor: #with:!public! !
!DBElementComparision class categoriesFor: #with:with:!public! !

