"Filed out from Dolphin Smalltalk 7"!

Object subclass: #DBElementDifference
	instanceVariableNames: 'comparator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBElementDifference guid: (GUID fromString: '{bec7ec00-c6d3-462f-81b0-113be10506d6}')!
DBElementDifference comment: ''!
!DBElementDifference categoriesForClass!Unclassified! !
!DBElementDifference methodsFor!

comparator
	^comparator!

comparator: anObject
	comparator := anObject!

comparedElement

	^self subclassResponsibility!

defaultComposite
	^self firstElement defaultComposite!

firstElement

	^comparator firstElement!

hasIndividualComposite

	^true!

oppositeComparedElement

	^self subclassResponsibility!

secondElement

	^comparator secondElement! !
!DBElementDifference categoriesFor: #comparator!accessing!private! !
!DBElementDifference categoriesFor: #comparator:!accessing!private! !
!DBElementDifference categoriesFor: #comparedElement!public! !
!DBElementDifference categoriesFor: #defaultComposite!public! !
!DBElementDifference categoriesFor: #firstElement!public! !
!DBElementDifference categoriesFor: #hasIndividualComposite!public! !
!DBElementDifference categoriesFor: #oppositeComparedElement!public! !
!DBElementDifference categoriesFor: #secondElement!public! !

!DBElementDifference class methodsFor!

isComboSelectable

	^false! !
!DBElementDifference class categoriesFor: #isComboSelectable!public! !

