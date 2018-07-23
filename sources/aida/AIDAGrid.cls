"Filed out from Dolphin Smalltalk 7"!

WebElement subclass: #AIDAGrid
	instanceVariableNames: 'aidaComponent tableName objects mainTitles mainEvenColor mainOddColor mainAspectsSelectors hasAddBehavior hasRemoveBehavior'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDAGrid guid: (GUID fromString: '{63371476-0b00-465d-a9a6-12e1bf7411e3}')!
AIDAGrid comment: ''!
!AIDAGrid categoriesForClass!Unclassified! !
!AIDAGrid methodsFor!

aidaComponent
	^aidaComponent!

aidaComponent: anObject
	aidaComponent := anObject!

beWithAddBehavior

	hasAddBehavior := true!

beWithRemoveBehavior

	hasRemoveBehavior := true!

createAddLinkTo: aWebElement
	| actionButton |

	"webElement := WebLink image: '\images\collapseList.gif' linkTo: 'javascript:removeElement()'."
	actionButton := WebButton text: 'Add Item' action: #addItem.
	actionButton type: #submit.
	aWebElement add: actionButton

	

	!

createIn: e title: aString 
	| aWebElement |

	aidaComponent := e.
	aWebElement := WebElement new newTable;yourself.
	self createTitleGridWith: self defaultStyleClassName webElement: e title: aString.
	objects do: [:each |  | index |
		aWebElement newRow.
		index := (objects indexOf: each) printString.
		index asNumber even ifTrue: [aWebElement row attributesAt: #style put: 'background: ', mainEvenColor] ifFalse:[aWebElement row attributesAt: #style put: 'background: ', mainOddColor].
		aWebElement cell addText: (each perform: mainAspectsSelectors first).
		mainAspectsSelectors allButFirst do: [:mainAspect | aWebElement newCell addText: (each perform: mainAspect).].
		hasRemoveBehavior ifTrue: [self createRemoveLinkTo: aWebElement newCell index: index]].
	aWebElement table class: #webGrid.
	e add: aWebElement!

createRemoveLinkTo: aWebElement
	| webElement |

	"webElement := WebLink image: '\images\collapseList.gif' linkTo: 'javascript:removeElement()'."
	webElement := WebButton text: 'Remove' action: #removeItem.
	webElement type: #submit.
	aWebElement add: webElement.
	"webElement onClick: 'alert(''This is an alert!!'')'"!

createRemoveLinkTo: aWebElement index: stringIndex
	| webElement |

	"webElement := WebLink image: '\images\collapseList.gif' linkTo: 'javascript:removeElement()'."
	webElement := WebButton text: 'Remove' action: #removeItem.
	webElement type: #submit.
	aWebElement add: webElement.
	aWebElement id: ('removeButton', stringIndex) asSymbol.
	"webElement onClick: 'alert(''This is an alert!!'')'"!

createTitleGridWith: cssName webElement: e title: aString
	| titleElement |

	titleElement := WebElement new.
	titleElement addTextH1: aString.
	titleElement table class: cssName .
	mainTitles do: 
		[:each | 
			titleElement cell addText: each.
			(each = mainTitles last) ifFalse: [titleElement newCell].].
	hasAddBehavior ifTrue: [self createAddLinkTo: titleElement newCell].
	e add: titleElement!

defaultStyleClassName

	^#webGridTitle!

hasAddBehavior
	^hasAddBehavior!

hasAddBehavior: anObject
	hasAddBehavior := anObject!

hasRemoveBehavior
	^hasRemoveBehavior!

hasRemoveBehavior: anObject
	hasRemoveBehavior := anObject!

initialize

	super initialize.

	hasAddBehavior := false.
	hasRemoveBehavior := false.
	mainTitles := OrderedCollection  new.
	mainAspectsSelectors := OrderedCollection new.
	mainEvenColor := 'rgb(235,235,235)'.
	mainOddColor := 'rgb(245,245,245)'.!

itemsBecomeRemovable

	hasRemoveBehavior := true!

mainAspectsSelectors
	^mainAspectsSelectors!

mainAspectsSelectors: anObject
	mainAspectsSelectors := anObject!

mainEvenColor
	^mainEvenColor!

mainEvenColor: anObject
	mainEvenColor := anObject!

mainOddColor
	^mainOddColor!

mainOddColor: anObject
	mainOddColor := anObject!

mainTitles
	^mainTitles!

mainTitles: anObject
	mainTitles := anObject!

objects
	^objects!

objects: anObject
	objects := anObject!

tableName
	^tableName!

tableName: anObject
	tableName := anObject! !
!AIDAGrid categoriesFor: #aidaComponent!accessing!private! !
!AIDAGrid categoriesFor: #aidaComponent:!accessing!private! !
!AIDAGrid categoriesFor: #beWithAddBehavior!public! !
!AIDAGrid categoriesFor: #beWithRemoveBehavior!public! !
!AIDAGrid categoriesFor: #createAddLinkTo:!public! !
!AIDAGrid categoriesFor: #createIn:title:!public! !
!AIDAGrid categoriesFor: #createRemoveLinkTo:!public! !
!AIDAGrid categoriesFor: #createRemoveLinkTo:index:!public! !
!AIDAGrid categoriesFor: #createTitleGridWith:webElement:title:!public! !
!AIDAGrid categoriesFor: #defaultStyleClassName!public! !
!AIDAGrid categoriesFor: #hasAddBehavior!accessing!private! !
!AIDAGrid categoriesFor: #hasAddBehavior:!accessing!private! !
!AIDAGrid categoriesFor: #hasRemoveBehavior!accessing!private! !
!AIDAGrid categoriesFor: #hasRemoveBehavior:!accessing!private! !
!AIDAGrid categoriesFor: #initialize!public! !
!AIDAGrid categoriesFor: #itemsBecomeRemovable!public! !
!AIDAGrid categoriesFor: #mainAspectsSelectors!accessing!private! !
!AIDAGrid categoriesFor: #mainAspectsSelectors:!accessing!private! !
!AIDAGrid categoriesFor: #mainEvenColor!accessing!private! !
!AIDAGrid categoriesFor: #mainEvenColor:!accessing!private! !
!AIDAGrid categoriesFor: #mainOddColor!accessing!private! !
!AIDAGrid categoriesFor: #mainOddColor:!accessing!private! !
!AIDAGrid categoriesFor: #mainTitles!accessing!private! !
!AIDAGrid categoriesFor: #mainTitles:!accessing!private! !
!AIDAGrid categoriesFor: #objects!accessing!private! !
!AIDAGrid categoriesFor: #objects:!accessing!private! !
!AIDAGrid categoriesFor: #tableName!accessing!private! !
!AIDAGrid categoriesFor: #tableName:!accessing!private! !

!AIDAGrid class methodsFor!

with: aCollection

	^super new initialize
		objects: aCollection;
		yourself.! !
!AIDAGrid class categoriesFor: #with:!public! !

