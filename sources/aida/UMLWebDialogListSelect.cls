"Filed out from Dolphin Smalltalk 7"!

WebDialog subclass: #UMLWebDialogListSelect
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebDialogListSelect guid: (GUID fromString: '{0731a5cf-7fc3-41ca-8c3f-21ad7463744f}')!
UMLWebDialogListSelect comment: ''!
!UMLWebDialogListSelect categoriesForClass!Unclassified! !
!UMLWebDialogListSelect methodsFor!

buildConfirmation

	self addText: self text.
	self addBreak.
	self add: component.
	self addBreak.

	(self addButtonText: 'Close') ajaxSubmit; onSubmitAnswer: component. "and close"!

newBasic

	"component := aWebGrid."

	self method: #ajaxUpdate.
	self type: #confirmation.!

newFor: aWebGrid

	component := aWebGrid.

	self method: #ajaxUpdate.
	self type: #confirmation.! !
!UMLWebDialogListSelect categoriesFor: #buildConfirmation!printing!public! !
!UMLWebDialogListSelect categoriesFor: #newBasic!public! !
!UMLWebDialogListSelect categoriesFor: #newFor:!public! !

!UMLWebDialogListSelect class methodsFor!

newBasic

	^super new initialize
		yourself.!

newFor: aWebGrid

	^super new initialize
		newFor: aWebGrid;
		yourself.! !
!UMLWebDialogListSelect class categoriesFor: #newBasic!public! !
!UMLWebDialogListSelect class categoriesFor: #newFor:!public! !

