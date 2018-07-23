"Filed out from Dolphin Smalltalk 7"!

UMLElementComparision subclass: #UMLRelationComparision
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRelationComparision guid: (GUID fromString: '{0ac625e5-f293-410f-9a66-3f9e9b0ccbc1}')!
UMLRelationComparision comment: ''!
!UMLRelationComparision categoriesForClass!Unclassified! !
!UMLRelationComparision methodsFor!

compareElements
	| differences |

	differences := OrderedCollection new.
	differences addAll: self compareNavigability;
		addAll: self compareMultiplicity.	

	^differences!

compareMultiplicity
	| differences |

	self relationsAreInverted ifTrue: [].
	differences := OrderedCollection new.
	(firstElement relationMultiplicity isSameTypeAs: secondElement relationMultiplicity) "comparo la multiplicity de source y del target "
	ifFalse: [differences add: (UMLEntireMultiplicityDifference comparator: self)]
	ifTrue:[(firstElement relationMultiplicity sourceMultiplicity isSameTypeAs: secondElement relationMultiplicity sourceMultiplicity) 
		ifFalse: [differences add: (UMLSourceSideMultiplicityDifference comparator: self) ]
		ifTrue: [(firstElement relationMultiplicity sourceMultiplicity text = secondElement relationMultiplicity sourceMultiplicity text)
			ifFalse: [differences add: (UMLSourceSideMultiplicityDifference comparator: self)]].
		(firstElement relationMultiplicity targetMultiplicity isSameTypeAs: secondElement relationMultiplicity targetMultiplicity) 
		ifFalse: [differences add: (UMLTargetSideMultiplicityDifference comparator: self)]
		ifTrue: [(firstElement relationMultiplicity targetMultiplicity text = secondElement relationMultiplicity targetMultiplicity text)
			ifFalse: [differences add: (UMLTargetSideMultiplicityDifference comparator: self)]]
		].

	^differences!

compareNavigability

	self relationsAreInverted ifTrue: [].

	(firstElement navigability = secondElement navigability) ifTrue: [^OrderedCollection new].

	^OrderedCollection with: (UMLNavigabilityDifference comparator: self)
	!

printClassesNames

	^firstElement sourceClass name, ' - ', firstElement targetClass name!

printClassName

	^firstElement sourceClass name!

printFirstLongName

	^firstElement printLongName!

printFirstMultiplicity

	^firstElement printMultiplicity!

printFirstNavigability

	^firstElement printNavigability!

printFirstSourceSideMultiplicity

	^firstElement sourceMultiplicity text!

printFirstTargetSideMultiplicity

	^firstElement targetMultiplicity text!

printLongName

	^firstElement printLongName!

printSecondLongName

	^secondElement printLongName!

printSecondMultiplicity

	^secondElement printMultiplicity!

printSecondNavigability

	^secondElement printNavigability!

printSecondSourceSideMultiplicity

	^secondElement sourceMultiplicity text!

printSecondTargerSideMultiplicity

	^secondElement targetMultiplicity text!

printSourceSideMultiplicity

	^firstElement sourceMultiplicity text!

relationsAreInverted
	"Answer whether or not the receiver has the source and target classes inverted "

	^firstElement sourceClassName = secondElement sourceClassName! !
!UMLRelationComparision categoriesFor: #compareElements!comparing!public! !
!UMLRelationComparision categoriesFor: #compareMultiplicity!comparing!public! !
!UMLRelationComparision categoriesFor: #compareNavigability!comparing!public! !
!UMLRelationComparision categoriesFor: #printClassesNames!public! !
!UMLRelationComparision categoriesFor: #printClassName!public! !
!UMLRelationComparision categoriesFor: #printFirstLongName!public! !
!UMLRelationComparision categoriesFor: #printFirstMultiplicity!public! !
!UMLRelationComparision categoriesFor: #printFirstNavigability!public! !
!UMLRelationComparision categoriesFor: #printFirstSourceSideMultiplicity!public! !
!UMLRelationComparision categoriesFor: #printFirstTargetSideMultiplicity!public! !
!UMLRelationComparision categoriesFor: #printLongName!public! !
!UMLRelationComparision categoriesFor: #printSecondLongName!public! !
!UMLRelationComparision categoriesFor: #printSecondMultiplicity!public! !
!UMLRelationComparision categoriesFor: #printSecondNavigability!public! !
!UMLRelationComparision categoriesFor: #printSecondSourceSideMultiplicity!public! !
!UMLRelationComparision categoriesFor: #printSecondTargerSideMultiplicity!public! !
!UMLRelationComparision categoriesFor: #printSourceSideMultiplicity!public! !
!UMLRelationComparision categoriesFor: #relationsAreInverted!public! !

