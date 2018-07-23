"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLModelsBrowserShell
	instanceVariableNames: 'modelsComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelsBrowserShell guid: (GUID fromString: '{d2e0d72c-955a-47af-b55e-c3fcf9bb55ae}')!
UMLModelsBrowserShell comment: ''!
!UMLModelsBrowserShell categoriesForClass!Unclassified! !
!UMLModelsBrowserShell methodsFor!

createComponents

	super createComponents.

	"modelsComposite := self add: UMLModelsBrowserComposite new name: 'modelsComposite'."!

model: aModel

	super model: aModel.

	modelsComposite model: aModel.! !
!UMLModelsBrowserShell categoriesFor: #createComponents!public! !
!UMLModelsBrowserShell categoriesFor: #model:!public! !

!UMLModelsBrowserShell class methodsFor!

defaultModel

	^UMLVirtualMachine default!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 576 0 0 0 0 0 1 0 0 0 0 1 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 738 1701 1191 416 674 8 #text: 98 1 8 'Browse UML Models' 416 674 8 #updateMenuBar 576 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 241 8 0 0 93 2 0 0] 98 0 738 193 193 0 27 )! !
!UMLModelsBrowserShell class categoriesFor: #defaultModel!public! !
!UMLModelsBrowserShell class categoriesFor: #resource_Default_view!public!resources-views! !

