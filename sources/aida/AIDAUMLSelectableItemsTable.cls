"Filed out from Dolphin Smalltalk 7"!

AIDASelectableItemsTable subclass: #AIDAUMLSelectableItemsTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAUMLSelectableItemsTable guid: (GUID fromString: '{b572027a-9b62-4968-a4ed-f825883bbfb5}')!
AIDAUMLSelectableItemsTable comment: ''!
!AIDAUMLSelectableItemsTable categoriesForClass!Unclassified! !
!AIDAUMLSelectableItemsTable methodsFor!

addAddRemoveButtonsTo: aWebElement

	aWebElement newRow.
	aWebElement cell addButtonText: 'Add New' action: #addNewObect:.
	(aWebElement newCell addButtonText: 'Add Existing' action: #addExisting:) ajaxSubmit.
	(aWebElement newCell addButtonText: 'Remove Selected' action: #removeSelected:) ajaxSubmit.

!

createIn: e title: aString 
	| aWebElement |

	aidaComponent := e.
	aWebElement := WebElement new newTable;yourself.
	aWebElement attributesAt: #style put: 'width: 100%'.
	aWebElement table attributesAt: #style put: 'width: 100%'.
	self createIn: aWebElement titleGridWith: #webGrid webElement: e title: aString checkedString: checkBoxTitle.
	objects do: [:each |  | index style textToPrint |
		aWebElement newRow.
		index := (objects indexOf: each) printString.
		style := (index asNumber even ifTrue: ['background: ', mainEvenColor] ifFalse:['background: ', mainOddColor]).
		aWebElement row attributesAt: #style put: style.
		textToPrint := (each vmPerform: mainAspectsSelectors first) printString.
		aWebElement cell addLinkTo: each text: textToPrint.
		mainAspectsSelectors allButFirst do: [:mainAspect | | text |
			text := (each vmPerform: mainAspect) printString.
			aWebElement newCell addText: text.
			aWebElement cell attributesAt: #style put: style.].
		hasCheckBoxes ifTrue: [aWebElement newCell addCheckboxObject: each from: OrderedCollection new.].
		hasRemoveBehavior ifTrue: [self createRemoveLinkTo: aWebElement newCell index: index].].
	aWebElement table class: #webGrid.
	self addAddRemoveButtonsTo: aWebElement.
	e add: aWebElement.!

createIn: aWebElement titleGridWith: cssName webElement: e title: aString checkedString: checkedString
	| titleElement |

	titleElement := WebElement new.
	titleElement addTextH1: aString.
	titleElement addBreak.
	titleElement attributesAt: #style put: 'background: Beige'.
	aWebElement table class: cssName.
	mainTitles do: [:each | 
		aWebElement cell addText: ((each size > 19) ifTrue: [each first: 19] ifFalse: [each]). 
		aWebElement cell attributesAt: #style put: 'background: DarkCyan; color: LightGrey'.
		(each = mainTitles last) ifFalse: [aWebElement newCell].].

	hasAddBehavior ifTrue: [self createAddLinkTo: titleElement newCell].
	hasCheckBoxes 
	ifTrue: [aWebElement newCell addText: checkedString. 
		aWebElement cell attributesAt: #style put: 'background: DarkCyan; color: LightGrey'.].

	e add: titleElement !

initialize

	super initialize.

	mainOddColor := 'Khaki'.
	mainEvenColor := 'Gainsboro'.! !
!AIDAUMLSelectableItemsTable categoriesFor: #addAddRemoveButtonsTo:!public! !
!AIDAUMLSelectableItemsTable categoriesFor: #createIn:title:!public! !
!AIDAUMLSelectableItemsTable categoriesFor: #createIn:titleGridWith:webElement:title:checkedString:!public! !
!AIDAUMLSelectableItemsTable categoriesFor: #initialize!public! !

