"Filed out from Dolphin Smalltalk 7"!

UMLAbstractCommandStructureDialog subclass: #UMLButtonStoredArgumentsStructureDialog
	instanceVariableNames: 'umlButtonCommandStructureComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLButtonStoredArgumentsStructureDialog guid: (GUID fromString: '{8a7b6aeb-028e-4549-8dd2-8d675f5c2f05}')!
UMLButtonStoredArgumentsStructureDialog comment: ''!
!UMLButtonStoredArgumentsStructureDialog categoriesForClass!Unclassified! !
!UMLButtonStoredArgumentsStructureDialog methodsFor!

createComponents
	super createComponents.
	umlButtonCommandStructureComposite := self
		add: UMLButtonStoredArgumentsStructureComposite new
		name: 'umlButtonCommandStructureComposite'!

methodName

	^umlButtonCommandStructureComposite methodName!

methodName: aString

	^umlButtonCommandStructureComposite methodName: aString!

model: aModel

	super model: aModel.

	umlButtonCommandStructureComposite model: aModel! !
!UMLButtonStoredArgumentsStructureDialog categoriesFor: #createComponents!public! !
!UMLButtonStoredArgumentsStructureDialog categoriesFor: #methodName!public! !
!UMLButtonStoredArgumentsStructureDialog categoriesFor: #methodName:!public! !
!UMLButtonStoredArgumentsStructureDialog categoriesFor: #model:!public! !

!UMLButtonStoredArgumentsStructureDialog class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1111 1111 679 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 656 0 482 8 4278190080 0 7 0 0 0 656 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLButtonStoredArgumentsStructureComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 1 1 530 1079 1035 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 27 2 0 0 5 2 0 0] 608 530 193 193 0 27 8 'umlButtonCommandStructureComposite' 0 0 0 0 0 3 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 32 8 1997113668 834 202 208 98 3 898 928 98 2 530 3199 21 530 1111 1111 416 898 8 #text: 98 1 8 'Buttons with arguments Editor' 416 898 8 #updateMenuBar 608 416 994 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 106 8 0 0 53 2 0 0] 98 1 656 1040 0 27 )! !
!UMLButtonStoredArgumentsStructureDialog class categoriesFor: #resource_Default_view!public!resources-views! !

