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

	treePresenter view expandAll!

viewParsedTree

	treePresenter hasSelection ifFalse: [^self].

	^UMLParsedCodeShell showOn: treePresenter selection parsedCode! !
!UMLTreeImplementationsComposite categoriesFor: #createComponents!public! !
!UMLTreeImplementationsComposite categoriesFor: #createSchematicWiring!public! !
!UMLTreeImplementationsComposite categoriesFor: #model:!public! !
!UMLTreeImplementationsComposite categoriesFor: #onMethodChanged!public! !
!UMLTreeImplementationsComposite categoriesFor: #onViewOpened!public! !
!UMLTreeImplementationsComposite categoriesFor: #viewParsedTree!public! !

!UMLTreeImplementationsComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() true 170 192 34 4 410 ##(Smalltalk.TreeView) 34 27 nil 416 34 2 8 1409352231 1025 576 590918 3 ##(Smalltalk.TreeModel) nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 525062 ##(Smalltalk.TreeNode) nil nil nil 170 192 528 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 265030 4 ##(Smalltalk.Menu) nil true 34 1 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) #viewParsedTree 8 'View Parsed Tree' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 576 nil 8 1911163534 459270 ##(Smalltalk.Message) #printTreeName 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil 170 176 528 17 #smallIcons 1 170 ##(Smalltalk.PluggableLookupTable) 528 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 1186 1251 371 576 1138 #contextMenu: 34 1 816 576 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 113 2 0 0 185 0 0 0] 8 #() 1186 193 193 nil 27 8 'methods' 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 1360 nil 754 8 4278190080 nil 5 nil nil nil 1360 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.UMLImplementationComposite) #resource_Default_view nil 1074 138 144 34 1 1138 #createAt:extent: 34 2 1186 1 381 1186 1251 371 1360 1266 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 190 0 0 0 113 2 0 0 119 1 0 0] 528 1328 nil 27 8 'implementation' nil 1074 138 144 34 1 1138 #createAt:extent: 34 2 1186 2719 21 1186 1251 751 416 1266 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 192 7 0 0 129 1 0 0] 34 3 576 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 1808 nil 754 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 1808 nil 1 #left nil nil nil 1186 1 1 1186 9 9 nil 1936 nil 1074 138 144 34 1 1138 #createAt:extent: 34 2 1186 1 371 1186 1251 11 1808 1266 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 185 0 0 0 113 2 0 0 190 0 0 0] 8 #() 1328 nil 27 1360 1328 nil 27 )! !
!UMLTreeImplementationsComposite class categoriesFor: #resource_Default_view!public!resources-views! !

