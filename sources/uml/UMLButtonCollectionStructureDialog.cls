"Filed out from Dolphin Smalltalk 7"!

UMLAbstractCommandStructureDialog subclass: #UMLButtonCollectionStructureDialog
	instanceVariableNames: 'buttonCollectionStructureComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLButtonCollectionStructureDialog guid: (GUID fromString: '{f529d052-4040-4f81-9c00-749501ab8375}')!
UMLButtonCollectionStructureDialog comment: ''!
!UMLButtonCollectionStructureDialog categoriesForClass!Unclassified! !
!UMLButtonCollectionStructureDialog methodsFor!

compositeClass

	^UMLButtonCollectionStructureComposite!

createComponents
	super createComponents.
	buttonCollectionStructureComposite := self add: self compositeClass new name: 'buttonCollectionStructureComposite'!

methodName

	^buttonCollectionStructureComposite methodName!

methodName: aString

	^buttonCollectionStructureComposite methodName: aString!

model: aModel

	super model: aModel.

	buttonCollectionStructureComposite model: aModel! !
!UMLButtonCollectionStructureDialog categoriesFor: #compositeClass!public! !
!UMLButtonCollectionStructureDialog categoriesFor: #createComponents!public! !
!UMLButtonCollectionStructureDialog categoriesFor: #methodName!public! !
!UMLButtonCollectionStructureDialog categoriesFor: #methodName:!public! !
!UMLButtonCollectionStructureDialog categoriesFor: #model:!public! !

!UMLButtonCollectionStructureDialog class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1111 581 679 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 656 0 721158 ##(Smalltalk.SystemColor)  31 0 7 0 0 0 656 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLButtonCollectionStructureComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 1 21 530 1079 485 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 10 0 0 0 27 2 0 0 252 0 0 0] 608 530 193 193 0 27 8 'buttonCollectionStructureComposite' 590342 ##(Smalltalk.Rectangle)  530 1 21 530 1 1 0 0 0 0 3 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 32 8 1997113668 834 202 208 98 3 898 928 98 2 530 3199 21 530 1111 581 416 898 8 #text: 98 1 8 'Buttons with arguments Editor' 416 898 8 #updateMenuBar 608 416 994 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 106 8 0 0 44 1 0 0] 98 1 656 1040 0 27 )! !
!UMLButtonCollectionStructureDialog class categoriesFor: #resource_Default_view!public!resources-views! !

