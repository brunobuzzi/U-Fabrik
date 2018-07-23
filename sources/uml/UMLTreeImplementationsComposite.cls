"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLTreeImplementationsComposite
	instanceVariableNames: 'treePresenter implementationPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTreeImplementationsComposite guid: (GUID fromString: '{628058f9-0af9-4ffb-bb8f-f2719eb99b8a}')!
UMLTreeImplementationsComposite comment: ''!
!UMLTreeImplementationsComposite categoriesForClass!Unclassified! !
!UMLTreeImplementationsComposite methodsFor!

createComponents

	super createComponents.

	treePresenter := self add: TreePresenter new name: 'methods'.
	implementationPresenter := self add: UMLImplementationComposite new name: 'implementation'.!

createSchematicWiring

	super createSchematicWiring.

	treePresenter when: #selectionChanged send: #onMethodChanged to: self!

model: aTreeModel

	super model: aTreeModel.

	treePresenter model: aTreeModel.!

onMethodChanged

	treePresenter hasSelection ifFalse: [^self].

	implementationPresenter model: treePresenter selection!

onViewOpened

	super onViewOpened.

	treePresenter view expandAll! !
!UMLTreeImplementationsComposite categoriesFor: #createComponents!public! !
!UMLTreeImplementationsComposite categoriesFor: #createSchematicWiring!public! !
!UMLTreeImplementationsComposite categoriesFor: #model:!public! !
!UMLTreeImplementationsComposite categoriesFor: #onMethodChanged!public! !
!UMLTreeImplementationsComposite categoriesFor: #onViewOpened!public! !

!UMLTreeImplementationsComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 98 4 410 8 ##(Smalltalk.TreeView)  98 27 0 416 98 2 8 1409352231 1025 592 590918 3 ##(Smalltalk.TreeModel)  0 1310726 ##(Smalltalk.IdentitySearchPolicy)  525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 544 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 592 0 8 4294903123 459270 ##(Smalltalk.Message)  8 #printTreeName 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 234 240 544 17 8 #smallIcons 1 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1122 1251 367 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 113 2 0 0 183 0 0 0] 98 0 1122 193 193 0 27 8 'methods' 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 1264 0 786 8 4278190080 0 5 0 0 0 1264 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLImplementationComposite)  8 #resource_Default_view 0 994 202 208 98 1 1058 1088 98 2 1122 1 385 1122 1251 367 1264 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 192 0 0 0 113 2 0 0 119 1 0 0] 544 1232 0 27 8 'implementation' 0 994 202 208 98 1 1058 1088 98 2 1122 2731 21 1122 1251 751 416 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 5 0 0 10 0 0 0 198 7 0 0 129 1 0 0] 98 3 592 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 1760 0 786 8 4278190080 0 517 0 0 0 1760 994 202 208 98 1 1058 1088 98 2 1122 1 367 1122 1251 19 1760 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 183 0 0 0 113 2 0 0 192 0 0 0] 98 0 1232 0 27 1264 1232 0 27 )! !
!UMLTreeImplementationsComposite class categoriesFor: #resource_Default_view!public!resources-views! !

