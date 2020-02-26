"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLDynamicViewComposer
	instanceVariableNames: 'inspectorComposite viewStructurePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDynamicViewComposer guid: (GUID fromString: '{4b0e246b-7852-48ce-8b7a-ca924207464a}')!
UMLDynamicViewComposer comment: ''!
!UMLDynamicViewComposer categoriesForClass!MVP-Resources-UFabrik! !
!UMLDynamicViewComposer methodsFor!

addBasicObject

	viewStructurePresenter hasSelection ifFalse: [^self].

	viewStructurePresenter model add: UMLSimpleObjectViewDescriptor new asChildOf: viewStructurePresenter selection.!

addCard
	| descriptor |

	viewStructurePresenter hasSelection ifFalse: [^self].

	descriptor := UMLCardViewDescriptor new.
	viewStructurePresenter model add: descriptor asChildOf: viewStructurePresenter selection.

	BBEditingDialog createOn: descriptor forAdd: UMLCollectionDescriptorPresenter state: #edit.

	viewStructurePresenter view refreshContents.
!

addCollection

	viewStructurePresenter hasSelection ifFalse: [^self].

	viewStructurePresenter model add: UMLCollectionViewDescriptor new asChildOf: viewStructurePresenter selection.!

addComponentGroup

	viewStructurePresenter hasSelection ifFalse: [^self].

	viewStructurePresenter model add: UMLBasicObjectGroupViewDescriptor new asChildOf: viewStructurePresenter selection.!

addObjectLink

	viewStructurePresenter hasSelection ifFalse: [^self].

	viewStructurePresenter model add: UMLObjectLinkViewDescriptor new asChildOf: viewStructurePresenter selection.!

createComponents

	super createComponents.

	inspectorComposite := self add: UMLBasicInspectorComposite new name: 'inspector'.
	viewStructurePresenter := self add: TreePresenter new name: 'viewStructure'.!

createSchematicWiring

	super createSchematicWiring.

	viewStructurePresenter when: #dragOver: send: #onDragOverViewStructure: to: self;
		when: #drop: send: #onDropOverViewStructure: to: self.!

generatePresenter

	^model inspectUMLWithCustomizedView!

inspectorComposite
	^inspectorComposite!

inspectorComposite: anObject
	inspectorComposite := anObject!

model: anUMLInstance

	super model: anUMLInstance.

	inspectorComposite model: anUMLInstance.

	(anUMLInstance umlModel viewDesignFor: anUMLInstance)
	ifNil: [viewStructurePresenter model addRoot: anUMLInstance umlClass.] 
	ifNotNil: [:value | viewStructurePresenter model: value]
	!

onDragOverViewStructure: aDragDropSession

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation.!

onDropOverViewStructure: aDragDropSession
	| dragObject targetObject descriptor |

	dragObject := aDragDropSession suggestedSource.
	targetObject := aDragDropSession suggestedTarget.

	descriptor := dragObject value asUMLDescriptor.
	descriptor aspectName: dragObject instVarName.
	descriptor instance: model.
	targetObject addComponent: descriptor.
	viewStructurePresenter model add: descriptor asChildOf: targetObject.!

removeViewDescriptor
	| parentDescriptor |

	viewStructurePresenter hasSelection ifFalse: [^self].
	(MessageBox confirm: 'Do you want to remove the selected object ?' caption: 'UML Virtual Environment') ifFalse: [^nil].


	parentDescriptor := viewStructurePresenter model parentOf: viewStructurePresenter selection.

	(parentDescriptor class == UMLClass) ifFalse: [parentDescriptor removeComponent: viewStructurePresenter selection].

	viewStructurePresenter model remove: viewStructurePresenter selection.!

selectedInstVar
	^inspectorComposite selectedInstVar!

switchJoint

	viewStructurePresenter view hasButtons: viewStructurePresenter view hasButtons not!

testView

	self generatePresenter.

	model storeViewDesignWith: viewStructurePresenter model.

	
	!

updateList
	^inspectorComposite updateList! !
!UMLDynamicViewComposer categoriesFor: #addBasicObject!public!view structure modification! !
!UMLDynamicViewComposer categoriesFor: #addCard!public!view structure modification! !
!UMLDynamicViewComposer categoriesFor: #addCollection!public!view structure modification! !
!UMLDynamicViewComposer categoriesFor: #addComponentGroup!public!view structure modification! !
!UMLDynamicViewComposer categoriesFor: #addObjectLink!public!view structure modification! !
!UMLDynamicViewComposer categoriesFor: #createComponents!public! !
!UMLDynamicViewComposer categoriesFor: #createSchematicWiring!drag & drop!public! !
!UMLDynamicViewComposer categoriesFor: #generatePresenter!dynamic view generation!public! !
!UMLDynamicViewComposer categoriesFor: #inspectorComposite!accessing!private! !
!UMLDynamicViewComposer categoriesFor: #inspectorComposite:!accessing!private! !
!UMLDynamicViewComposer categoriesFor: #model:!public! !
!UMLDynamicViewComposer categoriesFor: #onDragOverViewStructure:!drag & drop!public!view structure modification! !
!UMLDynamicViewComposer categoriesFor: #onDropOverViewStructure:!drag & drop!public!view structure modification! !
!UMLDynamicViewComposer categoriesFor: #removeViewDescriptor!public!view structure modification! !
!UMLDynamicViewComposer categoriesFor: #selectedInstVar!public! !
!UMLDynamicViewComposer categoriesFor: #switchJoint!public! !
!UMLDynamicViewComposer categoriesFor: #testView!dynamic view generation!public! !
!UMLDynamicViewComposer categoriesFor: #updateList!public! !

!UMLDynamicViewComposer class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 706 1541 1191 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 161 8 0 0 93 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 816 0 0 0 5 0 0 0 816 498 234 240 544 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 816 98 2 8 1140850688 131073 944 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 944 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLBasicInspectorComposite)  8 #resource_Default_view 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1541 587 944 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 2 3 0 0 37 1 0 0] 544 706 193 193 0 27 8 'inspector' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1541 587 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 2 3 0 0 37 1 0 0] 98 1 944 1280 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 1472 0 1026 8 4278190080 0 517 0 0 0 1472 578 202 208 98 1 642 672 98 2 706 1 587 706 1541 19 1472 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 37 1 0 0 2 3 0 0 46 1 0 0] 98 0 1280 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 1744 0 0 0 5 0 0 0 1744 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 1744 98 2 8 1140850688 131073 1872 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 1872 0 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1541 51 1872 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 2 3 0 0 25 0 0 0] 98 1 410 8 ##(Smalltalk.Toolbar)  98 25 0 1872 98 2 8 1409288972 131137 2144 0 1026 8 4278190080 0 517 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 706 193 193 0 2144 1026 2240 8 4294905641 234 256 544 234 256 98 14 8515 1115910 ##(Smalltalk.ToolbarIconButton)  8515 0 2144 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #addCollection 8 'Add Collection' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.ImageRelativeFileLocator)  8 #current 8 'Collection.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 706 33 33 1 8517 2434 8517 0 2144 1 2466 8 #addObjectLink 8 'Add Object Link' 1 1 2530 0 16 2576 8 'object5.ico' 0 2690 0 16 0 0 0 0 3 706 33 33 1 8519 2434 8519 0 2144 1 2466 8 #addBasicObject 8 'Add Basic Object' 1 1 2530 0 16 2576 8 'String.ico' 2656 2690 0 16 0 0 0 0 3 706 33 33 1 8521 2434 8521 0 2144 1 2466 8 #addComponentGroup 8 'Add Component Group' 1 1 2530 0 16 2576 8 'GroupBox.ico' 2656 2690 0 16 0 0 0 0 3 706 33 33 1 8523 2434 8523 0 2144 1 2466 8 #testView 8 'Test View' 1 1 2530 0 16 2576 8 'ShellView.ico' 2656 2690 0 16 0 0 0 0 3 706 33 33 1 8525 2434 8525 0 2144 1 2466 8 #removeViewDescriptor 8 'Remove View Descriptor' 1 1 2530 0 16 2576 8 'remove.ico' 0 2690 0 16 0 0 0 0 3 706 33 33 1 8513 2434 8513 0 2144 1 2466 8 #addCard 8 'Add Card' 1 1 2530 0 16 2576 8 'AbstractCardContainer.ico' 2656 2690 0 16 0 0 0 0 3 706 33 33 1 98 12 3376 1050118 ##(Smalltalk.ToolbarSeparator)  0 0 2144 3 0 1 2448 3522 0 0 2144 3 0 1 2736 2864 3522 0 0 2144 3 0 1 2992 3522 0 0 2144 3 0 1 3120 3522 0 0 2144 3 0 1 3248 234 240 98 14 2832 5 3472 1 2704 3 2960 7 3088 9 3216 11 3344 13 0 1 0 706 33 33 706 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 578 202 208 98 2 642 672 98 2 706 1 1 706 701 51 2144 642 8 #updateSize 544 2144 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 94 1 0 0 25 0 0 0] 98 0 1280 0 27 1280 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  2570 8 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 2570 3952 8 #fixedParentRight 1 2570 3952 8 #fixedParentTop 1 4016 51 410 432 98 15 0 1744 98 2 8 1140850688 131073 4048 0 0 0 5 0 0 0 4048 498 234 240 544 32 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 51 706 1541 537 4048 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 2 3 0 0 37 1 0 0] 98 1 410 8 ##(Smalltalk.ScrollingDecorator)  98 18 0 4048 98 2 8 1143996416 131073 4320 0 0 0 5 0 0 0 4320 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout)  16 234 256 98 2 410 8 ##(Smalltalk.MoenTreeView)  98 30 0 4320 98 2 8 1140850688 1 4464 590918 3 ##(Smalltalk.TreeModel)  0 2570 8 ##(Smalltalk.SearchPolicy)  8 #identity 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 544 1026 8 4278190080 0 541 265030 4 ##(Smalltalk.Menu)  0 16 98 3 984134 2 ##(Smalltalk.CommandMenuItem)  1 2466 3280 8 'Remove View Descriptor' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 4754 1 2466 8 #switchJoint 8 'Switch Joint' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 4464 788998 ##(Smalltalk.MoenTreeNode)  0 721926 ##(Smalltalk.MoenContour)  0 0 0 0 706 1 1 4992 0 0 0 0 0 7 459270 ##(Smalltalk.Message)  8 #displayDescriptorString 544 4480 268435457 706 5 3 2570 8 ##(Smalltalk.IconImageManager)  2608 706 1 1 41 0 197382 ##(Smalltalk.Pen)  0 16 393478 ##(Smalltalk.LOGPEN)  8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 706 33 33 706 19999 19999 114721 5104 706 35 1 0 0 0 578 202 208 98 2 642 672 98 2 706 1 1 706 1541 537 4464 642 8 #contextMenu: 98 1 4720 4464 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 2 3 0 0 12 1 0 0] 98 0 1280 0 27 8 'viewStructure' 0 706 1 1 16 706 17 17 578 202 208 98 1 642 672 98 2 706 1 1 706 1541 537 4320 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 2 3 0 0 12 1 0 0] 98 1 4464 1280 0 27 1280 0 27 3906 3936 1 3984 1 4016 51 2570 3952 8 #fixedParentBottom 1 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 605 706 1541 587 1744 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 46 1 0 0 2 3 0 0 83 2 0 0] 98 2 1872 4048 1280 0 27 1280 0 27 )! !
!UMLDynamicViewComposer class categoriesFor: #resource_Default_view!public!resources-views! !

