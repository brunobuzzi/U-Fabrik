"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBModelComposite
	instanceVariableNames: 'tablesPresenter tableComposite tableDescriptionComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBModelComposite guid: (GUID fromString: '{90e77a56-9cac-435f-8cd8-c0606afc6f8a}')!
DBModelComposite comment: ''!
!DBModelComposite categoriesForClass!Unclassified! !
!DBModelComposite methodsFor!

copyTableAttributesToClipboard

	tablesPresenter hasSelection ifFalse: [^self].

	tablesPresenter selection copyAttributesToClipboard

!

createComponents

	super createComponents.

	tablesPresenter := self add: TreePresenter new name: 'tables'.
	tableComposite := self add: DBTableComposite new name: 'tableComposite'.
	tableDescriptionComposite := self add: RichTextComposite new name: 'tableDescription'.!

createSchematicWiring

	super createSchematicWiring.

	tablesPresenter when: #selectionChanged send: #onTableChanged to: self;
		when: #leftButtonDoubleClicked: send: #onTableDoubleClicked: to: self.!

expandDBModel

	tablesPresenter expand: model!

gotoRelatedTable

	tableComposite selectedForeignKey ifNil: [^self].

	tablesPresenter selection: tableComposite selectedForeignKey relatedTable ifAbsent: [^MessageBox  notify: 'Related Class does not exist in this model' ]!

model: aDataBaseModel

	super model: aDataBaseModel.

	tablesPresenter model: aDataBaseModel asTreeModel.!

onTableChanged

	tablesPresenter hasSelection ifFalse: [tableComposite model: BBDBTable new. ^self topShell view caption: model printCaptionName].

	self topShell view caption: tablesPresenter selection printCaptionName.

	tablesPresenter selection class == BBDataBaseModel ifTrue: [^tableComposite model: BBDBTable new].

	tableComposite model: tablesPresenter selection.

	tableDescriptionComposite model: (tablesPresenter selection aspectValue: #description).
!

onTableDoubleClicked: aMouseEvent

	tablesPresenter hasSelection ifFalse: [^self].

	^[tablesPresenter selection show] forkAt: 4!

onViewOpened
	super onViewOpened.
	tablesPresenter expandAll: model!

restoreTableAttributes
	^tableComposite restoreTableAttributes!

selectedAttributeNameIfNone: aNiladicValuable 

	^tableComposite selectedAttributeNameIfNone: aNiladicValuable!

selectedTable

	^tablesPresenter selection!

setTableAttributes: anOrderedCollection

	^tableComposite setTableAttributes: anOrderedCollection!

showForeignCascadeTree
	| dbModel shell |

	dbModel := tablesPresenter selection databaseModel.
	shell := DBFKCascadeTreeShell showOn: dbModel tables asOrderedCollection.
	shell setFKTreeFor: tablesPresenter selection! !
!DBModelComposite categoriesFor: #copyTableAttributesToClipboard!public! !
!DBModelComposite categoriesFor: #createComponents!public! !
!DBModelComposite categoriesFor: #createSchematicWiring!public! !
!DBModelComposite categoriesFor: #expandDBModel!public! !
!DBModelComposite categoriesFor: #gotoRelatedTable!public! !
!DBModelComposite categoriesFor: #model:!public! !
!DBModelComposite categoriesFor: #onTableChanged!public! !
!DBModelComposite categoriesFor: #onTableDoubleClicked:!public! !
!DBModelComposite categoriesFor: #onViewOpened!public! !
!DBModelComposite categoriesFor: #restoreTableAttributes!public! !
!DBModelComposite categoriesFor: #selectedAttributeNameIfNone:!public! !
!DBModelComposite categoriesFor: #selectedTable!public! !
!DBModelComposite categoriesFor: #setTableAttributes:!public! !
!DBModelComposite categoriesFor: #showForeignCascadeTree!public! !

!DBModelComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 672 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 672 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.DBTableComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 321 994 1427 911 672 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 160 0 0 0 201 2 0 0 103 2 0 0] 98 0 994 193 193 0 27 7 16 234 256 98 2 672 8 'tableComposite' 0 866 202 208 98 1 930 960 98 2 994 375 1 994 1427 1231 560 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 187 0 0 0 0 0 0 0 132 3 0 0 103 2 0 0] 98 3 410 8 ##(Smalltalk.SlideyInneyOuteyThing)  98 23 0 560 98 2 8 1409286144 131073 1328 0 754 8 4278190080 0 517 0 0 0 1328 655878 ##(Smalltalk.CardLayout)  202 208 98 1 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Table Description' 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  6 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Table Description'' iconBlock: [String icon]' 8 #[29 30 34 112 31 161 106 194 105] 1536 1568 80 8 #icon 8 #text:iconBlock: 1600 11 1 0 0 410 688 98 14 0 410 8 ##(Smalltalk.SlidingCardTray)  98 22 0 1328 98 2 8 1140850688 131073 1776 0 754 1424 0 5 0 0 0 1776 1456 234 256 98 2 1744 8 'tableDescription' 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 1328 98 2 8 1140916736 1 1920 590662 2 ##(Smalltalk.ListModel)  202 208 98 1 1552 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  754 1424 0 1 0 0 0 1920 0 8 4294903531 8 ##(Smalltalk.BasicListAbstract)  8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 8 #smallIcons 0 0 0 0 0 866 202 208 98 3 930 960 98 2 994 1 1 994 1427 303 1920 930 8 #basicSelectionsByIndex: 98 1 98 1 3 1920 930 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 1920 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 201 2 0 0 151 0 0 0] 98 0 1104 0 27 0 1328 994 33 33 1049862 ##(Smalltalk.ButtonInteractor)  1776 0 590342 ##(Smalltalk.Rectangle)  994 1375 213 994 1407 245 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 866 202 208 98 1 930 960 98 2 994 9 49 994 1411 247 1776 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 197 2 0 0 147 0 0 0] 98 1 1744 1104 0 27 98 2 8 1140850688 131073 1744 0 754 8 4278190080 0 5 0 0 0 1744 802 8 ##(Smalltalk.RichTextComposite)  848 0 866 202 208 98 1 930 960 98 2 994 1 1 994 1411 211 1744 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 193 2 0 0 105 0 0 0] 1088 1104 0 27 1744 234 256 1088 0 1920 1776 994 201 201 401 1 31 0 0 866 202 208 98 1 930 960 98 2 994 1 1 994 1427 303 1328 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 201 2 0 0 151 0 0 0] 98 2 1776 1920 1104 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 560 98 2 8 1140850688 1 3248 0 754 8 4278190080 0 517 0 0 0 3248 866 202 208 98 1 930 960 98 2 994 1 303 994 1427 19 3248 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 151 0 0 0 201 2 0 0 160 0 0 0] 98 0 1104 0 27 672 1104 0 27 9 32 234 256 1088 0 866 202 208 98 1 930 960 98 2 994 3199 21 994 1801 1231 416 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 195 9 0 0 113 2 0 0] 98 3 410 1344 98 23 0 416 98 2 8 1409286144 131073 3696 0 754 8 4278190080 0 517 0 0 0 3696 1442 202 208 98 1 1506 1538 8 'Models' 1586 0 0 1618 6 1 1536 8 'doIt' 8 '(CardLabel text: ''Models'' iconBlock: [BBDataBaseModel icon])' 8 #[29 30 34 112 31 161 106 194 105] 1536 3872 8 ##(Smalltalk.BBDataBaseModel)  1712 1728 3888 11 1 0 0 410 432 98 15 0 410 1792 98 22 0 3696 98 2 8 1140850688 131073 4016 0 754 3776 0 5 0 0 0 4016 3792 234 256 1088 0 410 1936 98 28 0 3696 98 2 8 1140916864 1 4112 2002 202 208 98 1 3856 0 2080 754 3776 0 1 0 0 0 4112 0 8 4294903531 2128 2144 2176 0 0 0 0 0 8 #largeIcons 0 0 0 0 0 866 202 208 98 3 930 960 98 2 994 1 1 994 357 1231 4112 930 2336 98 1 98 1 3 4112 930 2400 98 2 -1 1 4112 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 178 0 0 0 103 2 0 0] 98 0 1104 0 27 0 3696 994 33 33 2498 4016 0 2530 994 235 3 994 267 35 1 2594 2624 8 'Pin or Unpin the tray' 1 1 0 0 0 866 202 208 98 1 930 960 98 2 994 79 9 994 271 1215 4016 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 39 0 0 0 4 0 0 0 174 0 0 0 99 2 0 0] 98 1 3984 1104 0 27 98 2 8 1140850688 131073 3984 0 0 0 5 0 0 0 3984 498 234 240 98 2 410 8 ##(Smalltalk.TreeView)  98 27 0 3984 98 2 8 1140916775 1025 4864 590918 3 ##(Smalltalk.TreeModel)  0 2080 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 1088 754 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 3 984134 2 ##(Smalltalk.CommandMenuItem)  1 2594 8 #copyTableAttributesToClipboard 8 'Copy Attributes to Clipboard' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 5106 1 2594 8 #showForeignCascadeTree 8 'Show FK Cascade Tree' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 4864 0 8 4294903943 459270 ##(Smalltalk.Message)  8 #printTreeName 98 0 2144 2176 0 0 1586 0 0 1618 4 1 8 ##(Smalltalk.UndefinedObject)  8 'doIt' 8 '[:ctx | ctx forecolor: ctx item colorForPrimaryKey]' 8 #[32 105 17 226 0 159 178 106] 8 #item 8 #colorForPrimaryKey 8 #forecolor: 5376 7 257 0 0 0 234 240 1088 17 2192 1 0 866 202 208 98 2 930 960 98 2 994 1 1 994 271 1179 4864 930 8 #contextMenu: 98 1 5072 4864 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 135 0 0 0 77 2 0 0] 98 0 1104 0 27 7 16 234 256 98 2 4864 8 'tables' 0 866 202 208 98 1 930 960 98 2 994 1 37 994 271 1179 3984 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 135 0 0 0 95 2 0 0] 98 1 4864 1104 0 27 3984 234 256 1088 0 4112 4016 994 201 201 401 1 31 0 0 866 202 208 98 1 930 960 98 2 994 1 1 994 357 1231 3696 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 178 0 0 0 103 2 0 0] 98 2 4016 4112 1104 0 27 410 3264 98 12 0 416 98 2 8 1140850688 1 6144 0 754 8 4278190080 0 517 0 0 0 6144 866 202 208 98 1 930 960 98 2 994 357 1 994 19 1231 6144 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 178 0 0 0 0 0 0 0 187 0 0 0 103 2 0 0] 98 0 1104 0 27 560 1104 0 27 )! !
!DBModelComposite class categoriesFor: #resource_Default_view!public!resources-views! !

