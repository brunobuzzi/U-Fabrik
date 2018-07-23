"Filed out from Dolphin Smalltalk 7"!

UMLElementComparision subclass: #UMLClassComparision
	instanceVariableNames: 'firstModel secondModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassComparision guid: (GUID fromString: '{fc93f94a-ea31-4c61-ba9a-7e1d57a7ea89}')!
UMLClassComparision comment: ''!
!UMLClassComparision categoriesForClass!Unclassified! !
!UMLClassComparision methodsFor!

compareElements
	| instVarDifferences relationDifferences |

	instVarDifferences := self compareInstancesVariables.
	
	relationDifferences := self compareRelations.

	^instVarDifferences, relationDifferences
	
!

compareInstancesVariables
	" The receiver compare the two elements's instances variables, answer anOrderedCollection with it's differences "
	| differences firstElementInstancesVariablesNames secondElementInstancesVariablesNames sharedVariables |

	self instVarElementsHasFullMatch ifTrue: [^OrderedCollection new].
	differences := OrderedCollection new.
	firstElementInstancesVariablesNames := self firstElementInstancesVariablesNames.
	secondElementInstancesVariablesNames := self secondElementInstancesVariablesNames.

	(secondElementInstancesVariablesNames reject: [:each | firstElementInstancesVariablesNames includes: each]) do: [:each | | diffClass |
		diffClass := UMLInstVarDifference firstClass: secondElement secondClass: firstElement varName: each.
		diffClass absentModel: firstModel.
		differences add: diffClass]. "variables que existen en la segunda clase pero no en la primera clase "

	(firstElementInstancesVariablesNames reject: [:each | secondElementInstancesVariablesNames includes: each]) do: [:each | | diffClass |
		diffClass := UMLInstVarDifference firstClass: firstElement secondClass: secondElement varName: each.
		diffClass absentModel: secondModel.
		differences add: diffClass]. "variables que existen en la primera clase pero no en la segunda clase "

	sharedVariables := self firstElementInstancesVariablesNames intersection: self secondElementInstancesVariablesNames.

	(sharedVariables reject: [:each | (self firstElementInstancesVariables at: each) originalType = (self secondElementInstancesVariables at: each) originalType]) do: [:each | | varTypeDiff |
		varTypeDiff := UMLInstVarTypeDifference firstClass: firstElement secondClass: secondElement varName: each.
		varTypeDiff firstClassType: (self firstElementInstancesVariables at: each) originalType.
		varTypeDiff secondClassType: (self secondElementInstancesVariables at: each) originalType.
		differences add: varTypeDiff]. "search for differences in the type of each variable "

	^differences
!

compareRelations
	| differences relationComparator |

	differences := OrderedCollection new.

	firstElement relations do: [:eachRelation | | oppositeRelation |
		oppositeRelation := secondElement relations detect: [:each | eachRelation hasSameRelatedClassesAs: each] ifNone: [].
		oppositeRelation ifNotNil: [:notNilValue | 
			relationComparator := UMLRelationComparision with: eachRelation with: notNilValue.
			differences addAll: relationComparator compareElements.] ].

	secondElement relations reject: [:each | each ].

	^differences!

firstElementInstancesVariables

	^firstElement instancesVariables!

firstElementInstancesVariablesNames

	^self firstElementInstancesVariables collect: [:each | each name]!

firstModel
	^firstModel!

firstModel: anObject
	firstModel := anObject!

instVarElementsHasFullMatch
	"The receiver compare the size of the collection that hold instances variables must be equal to al full match.
	After that it compare the names of the instances variables of both elements "
	| secondElementInstancesVariables |

	(firstElement instVarSize = secondElement instVarSize) ifFalse: [^false].

	(self firstElementInstancesVariablesNames asSortedCollection) = (self secondElementInstancesVariablesNames asSortedCollection) ifFalse: [^false].

	secondElementInstancesVariables := self secondElementInstancesVariables.

	^self firstElementInstancesVariables allSatisfy: [:each | each type = (secondElementInstancesVariables at: each name) type] " here variables types are compared "!

rtfDetail
	^''!

secondElementInstancesVariables

	^secondElement instancesVariables!

secondElementInstancesVariablesNames

	^self secondElementInstancesVariables collect: [:each | each name]!

secondModel
	^secondModel!

secondModel: anObject
	secondModel := anObject!

typeString
	^'Class Comparision <', firstElement name, '>'! !
!UMLClassComparision categoriesFor: #compareElements!comparing!public! !
!UMLClassComparision categoriesFor: #compareInstancesVariables!comparing!public! !
!UMLClassComparision categoriesFor: #compareRelations!comparing!public! !
!UMLClassComparision categoriesFor: #firstElementInstancesVariables!public! !
!UMLClassComparision categoriesFor: #firstElementInstancesVariablesNames!public! !
!UMLClassComparision categoriesFor: #firstModel!accessing!private! !
!UMLClassComparision categoriesFor: #firstModel:!accessing!private! !
!UMLClassComparision categoriesFor: #instVarElementsHasFullMatch!comparing!public! !
!UMLClassComparision categoriesFor: #rtfDetail!public! !
!UMLClassComparision categoriesFor: #secondElementInstancesVariables!public! !
!UMLClassComparision categoriesFor: #secondElementInstancesVariablesNames!public! !
!UMLClassComparision categoriesFor: #secondModel!accessing!private! !
!UMLClassComparision categoriesFor: #secondModel:!accessing!private! !
!UMLClassComparision categoriesFor: #typeString!public! !

