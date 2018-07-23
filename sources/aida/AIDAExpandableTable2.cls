"Filed out from Dolphin Smalltalk 7"!

AIDAExpandableTable subclass: #AIDAExpandableTable2
	instanceVariableNames: 'rowDescription hasCheckBoxes checkBoxTitle expandableTableHasCheckBoxes expandableTableCheckBoxesTitle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAExpandableTable2 guid: (GUID fromString: '{2641d48a-a5c6-4acf-b6d7-634c4a57e486}')!
AIDAExpandableTable2 comment: ''!
!AIDAExpandableTable2 categoriesForClass!Unclassified! !
!AIDAExpandableTable2 methodsFor!

addCheckBoxes

	hasCheckBoxes := true!

addCheckBoxesToExpandableTable

	expandableTableHasCheckBoxes := true!

addSubCollectionTo: anObject in: saElement index: index
	| subCollection |

	objects isEmpty ifTrue: [^self].
	subCollection := self subObjectsFor: anObject.
	self createSameTitleIn: saElement tabs: 1 hide: true id: (tableName , index, '0').
	subCollection do: [:each | 
			saElement row style: 'display: none;'.
			saElement row id: (tableName, index, (subCollection indexOf: each) printString).
			saElement cell style: 'background: rgb(255,255,255)'. "first cell of the subcollection (subGrid) in white background"

			saElement newCell addLinkTo: each text: (each perform: expandAspectSelectors first).
			expandAspectSelectors allButFirst do: [:aspectSymbol  | 
				saElement newCell addText: (each perform: aspectSymbol).].

			(subCollection indexOf: each) even 
				ifTrue: [saElement row attributesAt: #style put: 'display: none;background: ', subEvenColor] 
				ifFalse:[saElement row attributesAt: #style put: 'display: none;background: ', subOddColor].
			expandableTableHasCheckBoxes ifTrue: [saElement newCell addCheckboxObject: each from: OrderedCollection new].
			saElement newRow.
		].
	saElement newRow.
	saElement row height: 5.
	1 to: (mainTitles size - 1) do: [:each | saElement newCell].
	saElement newRow.!

checkBoxTitle
	^checkBoxTitle!

checkBoxTitle: anObject
	checkBoxTitle := anObject!

createIn: e title: aString 
	| aWebElement |

	aidaComponent := e.
	hasCheckBoxes ifTrue: [^self createIn: e title: aString checkBoxTitle: checkBoxTitle].
	aWebElement := WebElement new.
	self createTitleGridWith: self defaultStyleClassName webElement: aWebElement title: aString.
	objects do: [:each |  | index |
		index := (objects indexOf: each) printString.
		self addExpandCollapseLinksIn: aWebElement index: index 	numberOfRows: (each perform: expandableSelector) size printString.
		aWebElement cell addText: ' '.
		rowDescription object: each.
		rowDescription applyOn: aWebElement.
		index asNumber even ifTrue: [aWebElement row attributesAt: #style put: 'background: ', mainEvenColor] ifFalse:[aWebElement row attributesAt: #style put: 'background: ', mainOddColor].
		hasCheckBoxes ifTrue: [aWebElement newCell addCheckboxObject: each from: OrderedCollection new].
		aWebElement newRow.
		self addSubCollectionTo: each in: aWebElement index: index].
	aWebElement table class: #webGrid.
	e add: aWebElement!

createIn: e title: aString checkBoxTitle: checkBoxTitile
	| aWebElement |

	aWebElement := WebElement new.
	self createTitleGridWith: self defaultStyleClassName webElement: aWebElement title: aString.

	objects do: [:each |  | index |
		index := (objects indexOf: each) printString.
		self addExpandCollapseLinksIn: aWebElement index: index 	numberOfRows: (each perform: expandableSelector) size printString.
		aWebElement cell addText: ' '.
		rowDescription object: each.
		rowDescription applyOn: aWebElement.
		index asNumber even ifTrue: [aWebElement row attributesAt: #style put: 'background: ', mainEvenColor] ifFalse:[aWebElement row attributesAt: #style put: 'background: ', mainOddColor].
		hasCheckBoxes ifTrue: [aWebElement newCell addCheckboxObject: each from: OrderedCollection new].
		aWebElement newRow.
		self addSubCollectionTo: each in: aWebElement index: index].
	aWebElement table class: #webGrid.
	e add: aWebElement!

createSameTitleIn: e tabs: anInteger hide: aBoolean id: stringId

	aBoolean ifTrue: [e row style: 'display: none;'.].
	e row id: stringId.
	1 to: anInteger do: [:index | e newCell].
	expandTitles do: 
		[:each | 
			e cell addText: each.
			e cell class: self defaultStyleClassName.
			e cell style: 'background: rgb(216,216,216); color: rgb(0,128,192);font-weight: bold;'.
			(each = expandTitles last) ifFalse: [e newCell].].
	expandableTableHasCheckBoxes ifTrue: [e newCell addText: expandableTableCheckBoxesTitle].
	e cell class: self defaultStyleClassName.
	e cell style: 'background: rgb(216,216,216); color: rgb(0,128,192);font-weight: bold;'.
	e newRow.!

createTitleGridWith: cssName webElement: e title: aString
	| titleElement |

	titleElement := WebElement new.
	titleElement addTextH1: aString.
	titleElement table class: cssName .
	mainTitles do: 
		[:each | 
			titleElement cell addText: each.
			titleElement cell attributesAt: #width put: 150.
			(each = mainTitles last) ifFalse: [titleElement newCell].].
	titleElement newCell addText: checkBoxTitle.
	e add: titleElement!

expandableTableCheckBoxesTitle
	^expandableTableCheckBoxesTitle!

expandableTableCheckBoxesTitle: anObject
	expandableTableCheckBoxesTitle := anObject!

expandableTableHasCheckBoxes
	^expandableTableHasCheckBoxes!

expandableTableHasCheckBoxes: anObject
	expandableTableHasCheckBoxes := anObject!

hasCheckBoxes
	^hasCheckBoxes!

hasCheckBoxes: anObject
	hasCheckBoxes := anObject!

initialize

	super initialize.

	hasCheckBoxes := false.
	checkBoxTitle := ''.
	expandableTableHasCheckBoxes := false.
	expandableTableCheckBoxesTitle := ''.!

removeCheckBoxes

	hasCheckBoxes := false!

removeCheckBoxesToExpandableTable

	expandableTableHasCheckBoxes := false!

rowDescription
	^rowDescription!

rowDescription: anObject
	rowDescription := anObject! !
!AIDAExpandableTable2 categoriesFor: #addCheckBoxes!public! !
!AIDAExpandableTable2 categoriesFor: #addCheckBoxesToExpandableTable!public! !
!AIDAExpandableTable2 categoriesFor: #addSubCollectionTo:in:index:!public! !
!AIDAExpandableTable2 categoriesFor: #checkBoxTitle!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #checkBoxTitle:!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #createIn:title:!public! !
!AIDAExpandableTable2 categoriesFor: #createIn:title:checkBoxTitle:!public! !
!AIDAExpandableTable2 categoriesFor: #createSameTitleIn:tabs:hide:id:!public! !
!AIDAExpandableTable2 categoriesFor: #createTitleGridWith:webElement:title:!public! !
!AIDAExpandableTable2 categoriesFor: #expandableTableCheckBoxesTitle!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #expandableTableCheckBoxesTitle:!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #expandableTableHasCheckBoxes!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #expandableTableHasCheckBoxes:!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #hasCheckBoxes!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #hasCheckBoxes:!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #initialize!public! !
!AIDAExpandableTable2 categoriesFor: #removeCheckBoxes!public! !
!AIDAExpandableTable2 categoriesFor: #removeCheckBoxesToExpandableTable!public! !
!AIDAExpandableTable2 categoriesFor: #rowDescription!accessing!private! !
!AIDAExpandableTable2 categoriesFor: #rowDescription:!accessing!private! !

