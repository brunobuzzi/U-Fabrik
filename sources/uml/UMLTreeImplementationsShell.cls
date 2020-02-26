"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLTreeImplementationsShell
	instanceVariableNames: 'treeComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTreeImplementationsShell guid: (GUID fromString: '{177313e9-abcc-4bfe-ae7a-30847fff873f}')!
UMLTreeImplementationsShell comment: ''!
!UMLTreeImplementationsShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLTreeImplementationsShell methodsFor!

createComponents

	super createComponents.

	treeComposite := self add: UMLTreeImplementationsComposite new name: 'treeComposite'.!

model: aTreeModel

	super model: aTreeModel.

	treeComposite model: aTreeModel
	! !
!UMLTreeImplementationsShell categoriesFor: #createComponents!public! !
!UMLTreeImplementationsShell categoriesFor: #model:!public! !

!UMLTreeImplementationsShell class methodsFor!

icon

	^TreeModel icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 39 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLTreeImplementationsComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1819 1093 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 141 3 0 0 34 2 0 0] 576 930 193 193 0 27 8 'treeComposite' 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 2731 21 930 1851 1171 416 866 8 #text: 98 1 8 'Implementation Tree' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 5 0 0 10 0 0 0 242 8 0 0 83 2 0 0] 98 1 624 1024 0 27 )! !
!UMLTreeImplementationsShell class categoriesFor: #icon!public! !
!UMLTreeImplementationsShell class categoriesFor: #resource_Default_view!public!resources-views! !

