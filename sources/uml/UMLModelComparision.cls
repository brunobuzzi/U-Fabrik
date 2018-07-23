"Filed out from Dolphin Smalltalk 7"!

UMLElementComparision subclass: #UMLModelComparision
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelComparision guid: (GUID fromString: '{bd470efe-4d90-4812-b45e-1950555c891d}')!
UMLModelComparision comment: ''!
!UMLModelComparision categoriesForClass!Unclassified! !
!UMLModelComparision methodsFor!

compareElements
	" Answer aTreeModel with the differences between #firstElement and #secondElement "
	| elementsDifferences |

	elementsDifferences := TreeModel withRoots: (OrderedCollection with: UMLModelComparision).
	firstElement classesAsSortedCollection do: [:each | | comparator secondClass |
		secondClass := secondElement getClassNamed: each name.
		secondClass isNil 
		ifTrue: [ | absentClassDifference |
			comparator := UMLClassComparision with: each.
			absentClassDifference := (UMLClassNotExistDifference comparator: comparator) absentModel: secondElement; yourself.
			elementsDifferences add: absentClassDifference asChildOf: UMLModelComparision]
		ifFalse: [comparator := UMLClassComparision with: each with: secondClass.
			comparator firstModel: firstElement; secondModel: secondElement.
			comparator compareElements notEmpty ifTrue: [elementsDifferences add: comparator asChildOf: UMLModelComparision].
			comparator compareElements do: [:eachDiff | elementsDifferences add: eachDiff asChildOf: comparator].].
		].

	(secondElement classesAsSortedCollection reject: [:each | firstElement umlClasses includes: each]) do: [:each | | comparator secondClass |
		secondClass := firstElement getClassNamed: each.
		secondClass isNil 
		ifTrue: [ | absentClassDifference |
			comparator := UMLClassComparision with: each.
			absentClassDifference := (UMLClassNotExistDifference comparator: comparator) absentModel: firstElement; yourself.
			elementsDifferences add: absentClassDifference asChildOf: UMLModelComparision]
		ifFalse: [comparator := UMLClassComparision with: (secondElement getClassNamed: each) with: secondClass.
			comparator firstModel: secondElement; secondModel: firstElement.
			comparator compareElements notEmpty ifTrue: [elementsDifferences add: comparator asChildOf: UMLModelComparision].
			comparator compareElements do: [:eachDiff | elementsDifferences add: eachDiff asChildOf: comparator].].
		].
	^elementsDifferences
!

fileInFirstModelFrom: pathFile

	^firstElement := self fileInFrom: pathFile as: (File splitFilenameFrom: pathFile)!

fileInFrom: pathFile as: modelName 
	| umlModel eaModel |

"	eaModel := XmiModel new getModelFrom: pathFile.
	umlModel := UMLModel new name: modelName.
	umlModel addAllClasses: (eaModel eaClasses collect: [:each | each asUMLObject]).
	umlModel initializeAssociationsFrom: eaModel eaAssociations.
	umlModel setAllRelationsMultiplicity.
	umlModel setSubclasses.
	^umlModel"!

fileInSecondModelFrom: pathFile

	^secondElement := self fileInFrom: pathFile as: (File splitFilenameFrom: pathFile)! !
!UMLModelComparision categoriesFor: #compareElements!comparing!public! !
!UMLModelComparision categoriesFor: #fileInFirstModelFrom:!binary filing!public! !
!UMLModelComparision categoriesFor: #fileInFrom:as:!binary filing!public! !
!UMLModelComparision categoriesFor: #fileInSecondModelFrom:!binary filing!public! !

!UMLModelComparision class methodsFor!

rtfDetail
	^''!

typeString
	^'UML Model Comparision'! !
!UMLModelComparision class categoriesFor: #rtfDetail!public! !
!UMLModelComparision class categoriesFor: #typeString!public! !

