"Filed out from Dolphin Smalltalk 7"!

AIDAExpandableTable2 subclass: #AIDAExpandableTableWithArguments
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAExpandableTableWithArguments guid: (GUID fromString: '{59cbca1a-edee-410d-9a65-ced80a7818bd}')!
AIDAExpandableTableWithArguments comment: ''!
!AIDAExpandableTableWithArguments categoriesForClass!Unclassified! !
!AIDAExpandableTableWithArguments methodsFor!

addSubCollectionTo: anObject in: saElement index: index
	| subCollection |

	objects isEmpty ifTrue: [^self].
	subCollection := self subObjectsFor: anObject.
	self createSameTitleIn: saElement tabs: 1 hide: true id: (tableName , index, '0').
	subCollection do: [:each | 
			saElement row style: 'display: none;'.
			saElement row id: (tableName, index, (subCollection indexOf: each) printString).
			saElement cell style: 'background: rgb(255,255,255)'. "first cell of the subcollection (subGrid) in white background"

			saElement newCell addLinkTo: each text: (each perform: expandAspectSelectors first first withArguments: expandAspectSelectors first second).
			expandAspectSelectors allButFirst do: [:aspectSymbol  | 
				saElement newCell addText: (each perform: aspectSymbol first withArguments: aspectSymbol second).].

			(subCollection indexOf: each) even 
				ifTrue: [saElement row attributesAt: #style put: 'display: none;background: ', subEvenColor] 
				ifFalse:[saElement row attributesAt: #style put: 'display: none;background: ', subOddColor].
			expandableTableHasCheckBoxes ifTrue: [saElement newCell addCheckboxObject: each from: OrderedCollection new].
			saElement newRow.
		].
	saElement newRow.
	saElement row height: 5.
	1 to: (mainTitles size - 1) do: [:each | saElement newCell].
	saElement newRow.! !
!AIDAExpandableTableWithArguments categoriesFor: #addSubCollectionTo:in:index:!public! !

