"Filed out from Dolphin Smalltalk 7"!

AIDAGrid subclass: #AIDASelectableItemsTable
	instanceVariableNames: 'hasCheckBoxes checkBoxTitle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDASelectableItemsTable guid: (GUID fromString: '{56fdd7f8-3ade-45d7-8be1-bac801804fcb}')!
AIDASelectableItemsTable comment: ''!
!AIDASelectableItemsTable categoriesForClass!Unclassified! !
!AIDASelectableItemsTable methodsFor!

addCheckBoxes

	hasCheckBoxes := true!

checkBoxTitle
	^checkBoxTitle!

checkBoxTitle: anObject
	checkBoxTitle := anObject!

createIn: e title: aString 
	| aWebElement |

	aidaComponent := e.
	aWebElement := WebElement new newTable;yourself.
	self createTitleGridWith: self defaultStyleClassName webElement: e title: aString checkedString: checkBoxTitle.
	objects do: [:each |  | index |
		aWebElement newRow.
		index := (objects indexOf: each) printString.
		index asNumber even ifTrue: [aWebElement row attributesAt: #style put: 'background: ', mainEvenColor] ifFalse:[aWebElement row attributesAt: #style put: 'background: ', mainOddColor].
		aWebElement cell addText: (each perform: mainAspectsSelectors first).
		mainAspectsSelectors allButFirst do: [:mainAspect | aWebElement newCell addText: (each perform: mainAspect).].
		hasCheckBoxes ifTrue: [aWebElement newCell addCheckboxObject: each from: OrderedCollection new.].
		hasRemoveBehavior ifTrue: [self createRemoveLinkTo: aWebElement newCell index: index]].
	aWebElement table class: #webGrid.
	e add: aWebElement!

createIn: aWebElement titleGridWith: cssName webElement: e title: aString checkedString: checkedString
	| titleElement |

	titleElement := WebElement new.
	titleElement addTextH1: aString.
	titleElement table class: cssName .
	mainTitles do: 
		[:each | 
			aWebElement cell addText: each.
			(each = mainTitles last) ifFalse: [aWebElement newCell].].
	hasAddBehavior ifTrue: [self createAddLinkTo: titleElement newCell].
	hasCheckBoxes ifTrue: [aWebElement newCell addText: checkedString].
	e add: titleElement!

hasCheckBoxes
	^hasCheckBoxes!

hasCheckBoxes: anObject
	hasCheckBoxes := anObject!

initialize

	super initialize.

	checkBoxTitle := ''.
	hasCheckBoxes := false.!

removeCheckBoxes

	hasCheckBoxes := false! !
!AIDASelectableItemsTable categoriesFor: #addCheckBoxes!public! !
!AIDASelectableItemsTable categoriesFor: #checkBoxTitle!accessing!private! !
!AIDASelectableItemsTable categoriesFor: #checkBoxTitle:!accessing!private! !
!AIDASelectableItemsTable categoriesFor: #createIn:title:!public! !
!AIDASelectableItemsTable categoriesFor: #createIn:titleGridWith:webElement:title:checkedString:!public! !
!AIDASelectableItemsTable categoriesFor: #hasCheckBoxes!accessing!private! !
!AIDASelectableItemsTable categoriesFor: #hasCheckBoxes:!accessing!private! !
!AIDASelectableItemsTable categoriesFor: #initialize!public! !
!AIDASelectableItemsTable categoriesFor: #removeCheckBoxes!public! !

