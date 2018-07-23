"Filed out from Dolphin Smalltalk 7"!

Presenter subclass: #MoenTreeInspectorComposite
	instanceVariableNames: 'treePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MoenTreeInspectorComposite guid: (GUID fromString: '{95fed022-203f-4f39-bc5b-ffde16c27663}')!
MoenTreeInspectorComposite comment: ''!
!MoenTreeInspectorComposite categoriesForClass!Unclassified! !
!MoenTreeInspectorComposite methodsFor!

createComponents

	super createComponents.

	treePresenter := self add: TreePresenter new name: 'tree'.!

createSchematicWiring

	super createSchematicWiring.

	treePresenter when: #selectionChanged send: #onTreeChanged to: self;
		when: #leftButtonDoubleClicked: send: #onTreeDoubleClicked: to: self.!

model: aTreeModel

	super model: aTreeModel.

	treePresenter model: aTreeModel!

onTreeChanged 

	treePresenter hasSelection ifFalse: [^self].

	(treePresenter selection isKindOf: Collection) 
	ifFalse: [model addTree: treePresenter selection asMoenTree asChildOf: treePresenter selection] 
	ifTrue: [treePresenter selection do: [:each | model add: each asChildOf: treePresenter selection]]!

onTreeDoubleClicked: aMouseEvent 

	treePresenter hasSelection ifFalse: [^self].

	treePresenter selection inspectInMoenTree! !
!MoenTreeInspectorComposite categoriesFor: #createComponents!public! !
!MoenTreeInspectorComposite categoriesFor: #createSchematicWiring!public! !
!MoenTreeInspectorComposite categoriesFor: #model:!public! !
!MoenTreeInspectorComposite categoriesFor: #onTreeChanged!public! !
!MoenTreeInspectorComposite categoriesFor: #onTreeDoubleClicked:!public! !

!MoenTreeInspectorComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 706 1451 801 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 116 8 0 0 154 1 0 0] 98 1 410 8 ##(Smalltalk.ScrollingDecorator)  98 18 0 416 98 2 8 1143996416 131073 816 0 0 0 5 0 0 0 816 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout)  16 234 256 98 2 410 8 ##(Smalltalk.MoenTreeView)  98 30 0 816 98 2 8 1140850688 1 960 590918 3 ##(Smalltalk.TreeModel)  0 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.SearchPolicy)  8 #identity 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 544 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 517 0 0 0 960 788998 ##(Smalltalk.MoenTreeNode)  0 721926 ##(Smalltalk.MoenContour)  0 0 0 0 706 1 1 1296 0 0 0 0 0 7 459270 ##(Smalltalk.Message)  8 #displayString 98 0 976 268435457 706 5 3 1082 8 ##(Smalltalk.IconImageManager)  8 #current 706 1 1 41 0 197382 ##(Smalltalk.Pen)  0 16 393478 ##(Smalltalk.LOGPEN)  8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 706 33 33 706 19999 19999 114721 1440 706 35 1 0 0 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1451 801 960 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 213 2 0 0 144 1 0 0] 98 0 706 193 193 0 27 8 'tree' 0 706 1 1 16 706 17 17 578 202 208 98 1 642 672 98 2 706 1 1 706 1451 801 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 213 2 0 0 144 1 0 0] 98 1 960 1744 0 27 1744 0 27 )! !
!MoenTreeInspectorComposite class categoriesFor: #resource_Default_view!public!resources-views! !

