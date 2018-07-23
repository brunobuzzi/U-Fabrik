"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLStateMachineImportShell
	instanceVariableNames: 'composite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLStateMachineImportShell guid: (GUID fromString: '{61610e88-1b18-421f-b98c-188761240900}')!
UMLStateMachineImportShell comment: ''!
!UMLStateMachineImportShell categoriesForClass!Unclassified! !
!UMLStateMachineImportShell methodsFor!

createComponents

	super createComponents.

	composite := self add: UMLStateMachineImportComposite new name: 'composite'.!

model: anOrderedCollection

	super model: anOrderedCollection.

	composite model: anOrderedCollection.! !
!UMLStateMachineImportShell categoriesFor: #createComponents!public! !
!UMLStateMachineImportShell categoriesFor: #model:!public! !

!UMLStateMachineImportShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 39 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 608 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 608 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLStateMachineImportComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1149 1375 608 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 62 2 0 0 175 2 0 0] 560 930 193 193 0 27 8 'composite' 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 3199 21 930 1181 1451 416 866 8 #text: 98 1 8 'UML State Machine Import' 416 866 8 #updateMenuBar 560 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 79 8 0 0 223 2 0 0] 98 1 608 1024 0 27 )! !
!UMLStateMachineImportShell class categoriesFor: #resource_Default_view!public!resources-views! !

