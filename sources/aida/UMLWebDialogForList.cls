"Filed out from Dolphin Smalltalk 7"!

WebDialog subclass: #UMLWebDialogForList
	instanceVariableNames: 'component caption'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebDialogForList guid: (GUID fromString: '{3b5e8faa-21e4-4d4e-87aa-e2462d864d0f}')!
UMLWebDialogForList comment: ''!
!UMLWebDialogForList categoriesForClass!Unclassified! !
!UMLWebDialogForList methodsFor!

addBottomDecoration
	| cell table webElement |

	webElement := WebElement new.
	table := webElement newTable.
	table style: 'width: 100%; height: 15px; pading: -10px;'.
"	table style: 'width: 100%; height: 15px; margin-left: -10px; margin-right: 0; margin-top: -10px'."

	cell := webElement cell.
	cell style: 'background-color: gray; width: 90%'.

	cell := webElement newCell.
	cell style: 'background-color: blue; width: 10%'.

	self add: webElement.

!

addTopDecoration
	| cell table webElement |

	webElement := WebElement new.
	table := webElement newTable.
	table style: 'width: 100%; height: 15px; pading: -10px; background-color: rgb(248,248,248)'.
"	table style: 'width: 100%; height: 15px; margin-left: -10px; margin-right: 0; margin-top: -10px'."

	cell := webElement cell.
	cell style: 'width: 90%; background-color: rgb(248,248,248)'.

	cell := webElement newCell.
	cell style: 'width: 10%; background-color: rgb(248,248,248)'.

	self add: webElement.

!

build
	self clear.
	self registerId.
	self isConfirmation ifTrue: [self buildConfirmation].
	self isInfo ifTrue: [self buildInfo].
	self context form registerFormElementsIn: self.!

buildConfirmation
	| button |

	"self addTopDecoration."
	caption notEmpty ifTrue: [self addTextBold:  'Select an entry'; addBreak ].
	self addText: self text.
	self add: component.

	self addBreak.
	button := self addButtonText: 'Add'.
	button ajaxSubmit; onSubmitAnswer: component. "and close"
	button style: 'background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) ); width: 40%; margin-left: 2px; font-weight: bold;' .
	self addSpace.

	button := self addButtonText: 'Close'.
	button ajaxSubmit; onSubmitAnswer: component. "and close"
	button style: 'background:-webkit-gradient( linear, right top, right bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) ); width: 40%; float: right; margin-right: 2px; font-weight: bold;' .
!

caption
	^caption!

caption: anObject
	caption := anObject!

initialize

	super initialize.

	caption := ''.!

newBasic

	"component := aWebGrid."

	self method: #ajaxUpdate.
	self type: #confirmation.!

newFor: aWebGrid

	component := aWebGrid.

	self method: #ajaxUpdate.
	self type: #confirmation.!

newFor: aWebGrid caption: aString

	component := aWebGrid.

	self method: #ajaxUpdate.
	self type: #confirmation.! !
!UMLWebDialogForList categoriesFor: #addBottomDecoration!printing!public! !
!UMLWebDialogForList categoriesFor: #addTopDecoration!printing!public! !
!UMLWebDialogForList categoriesFor: #build!printing!public! !
!UMLWebDialogForList categoriesFor: #buildConfirmation!printing!public! !
!UMLWebDialogForList categoriesFor: #caption!accessing!private! !
!UMLWebDialogForList categoriesFor: #caption:!accessing!private! !
!UMLWebDialogForList categoriesFor: #initialize!public! !
!UMLWebDialogForList categoriesFor: #newBasic!public! !
!UMLWebDialogForList categoriesFor: #newFor:!public! !
!UMLWebDialogForList categoriesFor: #newFor:caption:!public! !

!UMLWebDialogForList class methodsFor!

newBasic

	^super new initialize
		yourself.!

newFor: aWebGrid

	^super new initialize
		newFor: aWebGrid;
		yourself.!

newFor: aWebGrid caption: aString

	^super new initialize
		newFor: aWebGrid;
		caption: aString;
		yourself.! !
!UMLWebDialogForList class categoriesFor: #newBasic!public! !
!UMLWebDialogForList class categoriesFor: #newFor:!public! !
!UMLWebDialogForList class categoriesFor: #newFor:caption:!public! !

