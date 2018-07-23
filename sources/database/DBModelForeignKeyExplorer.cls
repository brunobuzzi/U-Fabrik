"Filed out from Dolphin Smalltalk 7"!

DBShell subclass: #DBModelForeignKeyExplorer
	instanceVariableNames: 'treePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBModelForeignKeyExplorer guid: (GUID fromString: '{4c90f53f-05ca-46e1-8a84-4ea27f9e6ef4}')!
DBModelForeignKeyExplorer comment: ''!
!DBModelForeignKeyExplorer categoriesForClass!Unclassified! !
!DBModelForeignKeyExplorer methodsFor!

createComponents

	super createComponents.

	treePresenter := self add: TreePresenter new name: 'tree'!

model: aBBDataBaseModel
	| treeModel |

	super model: aBBDataBaseModel.
self halt.

	! !
!DBModelForeignKeyExplorer categoriesFor: #createComponents!public! !
!DBModelForeignKeyExplorer categoriesFor: #model:!public! !

!DBModelForeignKeyExplorer class methodsFor!

defaultModel

	^BBDataBaseModel new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 576 0 0 0 0 0 1 0 0 0 0 1 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 738 1961 1381 416 674 8 #text: 98 1 8 'Data Base Model Foreign Key Explorer' 416 674 8 #updateMenuBar 576 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 115 9 0 0 188 2 0 0] 98 1 410 8 ##(Smalltalk.ScrollingDecorator)  98 18 0 416 98 2 8 1143996416 131073 944 0 0 0 7 0 0 0 944 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout)  16 234 256 98 2 410 8 ##(Smalltalk.MoenTreeView)  98 30 0 944 98 2 8 1140850688 1 1088 590918 3 ##(Smalltalk.TreeModel)  0 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.SearchPolicy)  8 #identity 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 576 482 8 4278190080 0 519 0 0 0 1088 788998 ##(Smalltalk.MoenTreeNode)  0 721926 ##(Smalltalk.MoenContour)  525062 ##(Smalltalk.MoenLink)  1410 0 1 1 1 1 1440 1410 0 1 1 1456 738 1 1 1472 0 0 0 590342 ##(Smalltalk.Rectangle)  1472 738 19 1 738 1 1 7 459270 ##(Smalltalk.Message)  8 #printForeignTreeName 576 1104 268435459 738 3 1 1210 8 ##(Smalltalk.IconImageManager)  8 #current 738 1 1 41 0 197382 ##(Smalltalk.Pen)  0 16 393478 ##(Smalltalk.LOGPEN)  8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 738 33 33 738 19999 19999 114721 1664 738 35 1 0 0 0 610 202 208 98 1 674 704 98 2 738 1 1 738 1929 1309 1088 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 196 3 0 0 142 2 0 0] 98 0 738 193 193 0 27 8 'tree' 0 738 1 1 16 738 17 17 610 202 208 98 1 674 704 98 2 738 1 1 738 1929 1309 944 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 196 3 0 0 142 2 0 0] 98 1 1088 1968 0 27 1968 0 27 )! !
!DBModelForeignKeyExplorer class categoriesFor: #defaultModel!public! !
!DBModelForeignKeyExplorer class categoriesFor: #resource_Default_view!public!resources-views! !

