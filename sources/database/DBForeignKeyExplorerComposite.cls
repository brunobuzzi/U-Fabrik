"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBForeignKeyExplorerComposite
	instanceVariableNames: 'foreignTreePresenter tablesPresenter tableComposite modelTablesPresenter dependentTablesPresenter dependentTableAttributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBForeignKeyExplorerComposite guid: (GUID fromString: '{b1863b82-e149-4cfe-ab3d-ef64511df742}')!
DBForeignKeyExplorerComposite comment: ''!
!DBForeignKeyExplorerComposite categoriesForClass!Unclassified! !
!DBForeignKeyExplorerComposite methodsFor!

browseDependentTableTree

	dependentTablesPresenter hasSelection ifFalse: [^self].

	(DBTableForeignKeyExplorerShell showOn: dependentTablesPresenter selection)

	
	!

copyAttributesToClipboard

	foreignTreePresenter hasSelection ifFalse: [^self].

	foreignTreePresenter selection copyAttributesToClipboard!

createComponents

	super createComponents.

	foreignTreePresenter := self add: TreePresenter new name: 'foreignTree'.
	tablesPresenter := self add: ListPresenter new name: 'tables'.
	tableComposite := self add: DBTableComposite new name: 'table'.
	modelTablesPresenter := self add: ListPresenter new name: 'tablasDelModelo'.
	dependentTablesPresenter := self add: ListPresenter new name: 'dependentTables'.
	dependentTableAttributes := self add: ListPresenter new name: 'dependentTableAttributes'.!

createSchematicWiring

	super createSchematicWiring.

	foreignTreePresenter when: #leftButtonDoubleClicked: send: #onForeingTreeDoubleClicked: to: self;
		when: #selectionChanged send: #onTreeSelectionChanged to: self.

	tablesPresenter when: #selectionChanged send: #onTableChanged to: self.

	modelTablesPresenter when: #selectionChanged send: #onModelTableChanged to: self.

	dependentTablesPresenter when: #leftButtonDoubleClicked: send: #onDependentTableDoubleClicked: to: self;
		when: #selectionChanged send: #onDependentTableChanged to: self.!

model: aBBDBTable
	| fkTree allTables |

	super model: aBBDBTable.

	fkTree := aBBDBTable foreignKeysAsTreeModel: OrderedCollection new.
	foreignTreePresenter model: fkTree.

	tablesPresenter model: (ListModel on: ((fkTree asOrderedCollection select: [:each | each isDBTable]) asSortedCollection: [:a :b |  a name <= b name])).

	modelTablesPresenter model isEmpty ifTrue: [
		allTables  := aBBDBTable databaseModel ifNotNil: [:value | value tables asOrderedCollection] ifNil: [OrderedCollection new].

		modelTablesPresenter model: (ListModel on: (allTables asSortedCollection: [:a :b | a name <= b name])).].!

onDependentTableChanged

	dependentTablesPresenter hasSelection ifFalse: [^dependentTableAttributes model: ListModel new].

	dependentTableAttributes  model: (ListModel on: dependentTablesPresenter selection attributesAsSortedCollection)!

onDependentTableDoubleClicked: aMouseEvent

	dependentTablesPresenter hasSelection ifFalse: [^self].

	modelTablesPresenter selection: dependentTablesPresenter selection!

onForeingTreeDoubleClicked: aMouseEvent

	foreignTreePresenter hasSelection ifFalse: [^self].

	foreignTreePresenter selection show!

onModelTableChanged

	modelTablesPresenter hasSelection ifFalse: [^self].

	self model: modelTablesPresenter selection!

onTableChanged
	tablesPresenter hasSelection ifFalse: [^self].
	foreignTreePresenter selection: tablesPresenter selection.
	tablesPresenter view ensureSelectionVisible.
	foreignTreePresenter view setFocus!

onTreeSelectionChanged
	| depedentTableLabel |

	depedentTableLabel := ''.
	foreignTreePresenter hasSelection ifFalse: [^tableComposite model: BBDBTable new].

	foreignTreePresenter selection isDBTable 
	ifTrue: [tableComposite model: foreignTreePresenter selection.
		dependentTablesPresenter model: (ListModel on: (foreignTreePresenter selection dependentTables asSortedCollection: [:a :b | a name <= b name] )).
		depedentTableLabel := 'Apuntan con FK a <', foreignTreePresenter selection name, '>']
	ifFalse: [tableComposite model: foreignTreePresenter selection relatedTable.
		dependentTablesPresenter model: ListModel new].

	dependentTablesPresenter view columnsList first text: depedentTableLabel!

refreshTree

	foreignTreePresenter view invalidate!

showForeignCascadeTree
	| dbModel shell |

	dbModel := foreignTreePresenter selection databaseModel.
	shell := DBFKCascadeTreeShell showOn: dbModel tables asOrderedCollection.
	shell setFKTreeFor: foreignTreePresenter selection! !
!DBForeignKeyExplorerComposite categoriesFor: #browseDependentTableTree!public! !
!DBForeignKeyExplorerComposite categoriesFor: #copyAttributesToClipboard!public! !
!DBForeignKeyExplorerComposite categoriesFor: #createComponents!public! !
!DBForeignKeyExplorerComposite categoriesFor: #createSchematicWiring!public! !
!DBForeignKeyExplorerComposite categoriesFor: #model:!public! !
!DBForeignKeyExplorerComposite categoriesFor: #onDependentTableChanged!public! !
!DBForeignKeyExplorerComposite categoriesFor: #onDependentTableDoubleClicked:!public! !
!DBForeignKeyExplorerComposite categoriesFor: #onForeingTreeDoubleClicked:!public! !
!DBForeignKeyExplorerComposite categoriesFor: #onModelTableChanged!public! !
!DBForeignKeyExplorerComposite categoriesFor: #onTableChanged!public! !
!DBForeignKeyExplorerComposite categoriesFor: #onTreeSelectionChanged!public! !
!DBForeignKeyExplorerComposite categoriesFor: #refreshTree!public! !
!DBForeignKeyExplorerComposite categoriesFor: #showForeignCascadeTree!public! !

!DBForeignKeyExplorerComposite class methodsFor!

defaultModel

	^BBDBTable new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 528 0 234 256 98 4 410 8 ##(Smalltalk.ComboBox)  98 17 0 528 98 2 8 1144063491 1025 656 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.SearchPolicy)  8 #identity 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 656 0 8 4294905629 459270 ##(Smalltalk.Message)  8 #name 98 0 784 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  601 41 1122 571 47 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 44 1 0 0 20 0 0 0 73 2 0 0 43 0 0 0] 98 0 1122 193 193 0 27 8 'tables' 410 672 98 17 0 528 98 2 8 1144063491 1025 1264 738 202 208 784 0 816 866 8 4278190080 0 5 0 0 0 1264 0 8 4294905629 930 960 98 0 784 401 994 202 208 98 1 1058 1088 98 2 1122 41 41 1122 481 47 1264 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 20 0 0 0 4 1 0 0 43 0 0 0] 98 0 1232 0 27 8 'tablasDelModelo' 0 994 202 208 98 1 1058 1088 98 2 1122 1 1 1122 1741 131 528 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 102 3 0 0 65 0 0 0] 98 5 656 410 8 ##(Smalltalk.GroupBox)  98 14 0 528 98 2 8 1140850695 65 1776 0 866 8 4278190080 0 5 0 0 0 1776 0 8 4294905535 994 202 208 98 2 1058 1088 98 2 1122 571 1 1122 651 111 1776 1058 8 #text: 98 1 8 'Seleccionar Tabla del Arbol' 1776 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 29 1 0 0 0 0 0 0 98 2 0 0 55 0 0 0] 98 0 1232 0 27 1264 410 1792 98 14 0 528 98 2 8 1140850695 65 2128 0 866 1872 0 5 0 0 0 2128 0 8 4294905535 994 202 208 98 2 1058 1088 98 2 1122 21 1 1122 521 111 2128 1058 2032 98 1 8 'Seleccionar Nueva Tabla' 2128 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 14 1 0 0 55 0 0 0] 98 0 1232 0 27 410 8 ##(Smalltalk.PushButton)  98 17 0 528 98 2 8 1140924416 1 2432 0 0 0 5 0 0 0 2432 0 8 4294905535 1180998 4 ##(Smalltalk.CommandDescription)  8 #refreshTree 8 'Refresh Tree' 1 1 0 0 32 994 202 208 98 3 1058 1088 98 2 1122 1241 21 1122 91 71 2432 1058 8 #isEnabled: 98 1 32 2432 1058 2032 98 1 8 'Refresh Tree' 2432 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 108 2 0 0 10 0 0 0 153 2 0 0 45 0 0 0] 98 0 1232 0 27 1232 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 2848 0 0 0 5 0 0 0 2848 1180166 ##(Smalltalk.ProportionalLayout)  234 240 784 16 234 256 784 0 994 202 208 98 1 1058 1088 98 2 1122 1 131 1122 1741 961 2848 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 65 0 0 0 102 3 0 0 33 2 0 0] 98 3 410 8 ##(Smalltalk.ScrollingDecorator)  98 18 0 2848 98 2 8 1143996416 131073 3136 0 0 0 5 0 0 0 3136 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout)  16 234 256 98 2 410 8 ##(Smalltalk.MoenTreeView)  98 30 0 3136 98 2 8 1140850688 1 3280 590918 3 ##(Smalltalk.TreeModel)  0 816 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 784 866 8 4278190080 0 517 265030 4 ##(Smalltalk.Menu)  0 16 98 3 984134 2 ##(Smalltalk.CommandMenuItem)  1 2530 8 #copyAttributesToClipboard 8 'Copy Attributes to Clipboard' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 3522 1 2530 8 #showForeignCascadeTree 8 'Show FK Cascade Tree' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 3280 788998 ##(Smalltalk.MoenTreeNode)  0 721926 ##(Smalltalk.MoenContour)  0 0 0 0 1122 1 1 3776 0 0 0 0 0 7 930 8 #printForeignTreeName 98 0 3296 268435459 1122 5 3 810 8 ##(Smalltalk.IconImageManager)  8 #current 1122 1 1 41 0 197382 ##(Smalltalk.Pen)  0 16 393478 ##(Smalltalk.LOGPEN)  8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 1122 33 33 1122 19999 19999 114721 3904 1122 35 1 0 0 0 994 202 208 98 2 1058 1088 98 2 1122 1 1 1122 1741 471 3280 1058 8 #contextMenu: 98 1 3488 3280 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 102 3 0 0 235 0 0 0] 98 0 1232 0 27 8 'foreignTree' 0 1122 1 1 16 1122 17 17 994 202 208 98 1 1058 1088 98 2 1122 1 1 1122 1741 471 3136 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 102 3 0 0 235 0 0 0] 98 1 3280 1232 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 2848 98 2 8 1140850688 1 4464 0 866 8 4278190080 0 517 0 0 0 4464 994 202 208 98 1 1058 1088 98 2 1122 1 471 1122 1741 19 4464 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 235 0 0 0 102 3 0 0 244 0 0 0] 98 0 1232 0 27 410 432 98 15 0 2848 98 2 8 1140850688 131073 4736 0 0 0 5 0 0 0 4736 2914 234 240 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 4736 98 2 8 1140850688 131073 4848 0 866 8 4278190080 0 5 0 0 0 4848 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.DBTableComposite)  8 #resource_Simple_view 0 994 202 208 98 1 1058 1088 98 2 1122 1 1 1122 1291 473 4848 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 2 0 0 236 0 0 0] 784 1232 0 27 7 32 234 256 98 2 4848 8 'table' 0 994 202 208 98 1 1058 1088 98 2 1122 1 489 1122 1741 473 4736 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 244 0 0 0 102 3 0 0 224 1 0 0] 98 3 4848 410 4480 98 12 0 4736 98 2 8 1140850688 1 5376 0 866 8 4278190080 0 517 0 0 0 5376 994 202 208 98 1 1058 1088 98 2 1122 1291 1 1122 19 473 5376 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 133 2 0 0 0 0 0 0 142 2 0 0 236 0 0 0] 98 0 1232 0 27 410 432 98 15 0 4736 98 2 8 1140850688 131073 5632 0 0 0 5 0 0 0 5632 2914 234 240 784 16 234 256 98 4 410 8 ##(Smalltalk.ListView)  98 30 0 5632 98 2 8 1140920397 1025 5760 738 202 208 784 0 816 866 8 4278190080 0 5 3474 0 16 98 1 3522 1 2530 8 #copyAttributeToClipboard 8 'Copy to Clipboard' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 5760 0 8 4294902165 930 8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  3856 0 0 0 0 0 0 202 208 98 6 920646 5 ##(Smalltalk.ListViewColumn)  8 'Attribute Name' 601 8 #left 930 960 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 960 6240 7 513 0 0 0 5760 0 1 0 0 6130 8 'Type' 201 6176 930 8 #printType 6208 6226 0 0 6258 2 1 928 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 6432 6448 7 513 0 0 0 5760 0 1 0 0 6130 8 'Nullable' 201 6176 930 8 #nullable 6208 6226 0 0 6258 3 1 6224 8 'doIt' 8 '[:a :b | a nullable printString <= b nullable printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 6576 8 #printString 6592 7 513 0 0 0 5760 0 1 0 0 6130 8 'Is Primary Key ?' 201 6176 930 8 #isPrimaryKey 98 0 6226 0 0 6258 3 1 6224 8 'doIt' 8 '[:a :b | a isPrimaryKey printString <= b isPrimaryKey printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 6736 6672 6768 7 513 0 0 0 5760 0 1 0 0 6130 8 'Is Foreign Key ?' 201 6176 930 8 #isForeignKey 98 0 6226 0 0 6258 3 1 928 8 'doIt' 8 '[:a :b | a isForeignKey printString <= b isForeignKey printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 6896 6672 6928 7 513 0 0 0 5760 0 1 0 0 6130 8 'Is Basic Attribute ?' 221 6176 930 8 #isBasic 98 0 6226 0 0 6258 3 1 6224 8 'doIt' 8 '[:a :b | a isBasic printString <= b isBasic printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 7056 6672 7088 7 513 0 0 0 5760 0 1 0 0 8 #report 784 0 131169 0 0 994 202 208 98 3 1058 1088 98 2 1122 1 245 1122 433 229 5760 1058 4176 98 1 5904 5760 1058 2032 98 1 8 'Attribute Name' 5760 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 122 0 0 0 216 0 0 0 236 0 0 0] 98 0 1232 0 27 8 'dependentTableAttributes' 410 5776 98 30 0 5632 98 2 8 1409355853 1025 7440 738 202 208 784 0 816 866 8 4278190080 0 5 3474 0 16 98 3 3522 1 2530 5968 8 'Copy to Clipboard' 1 1 0 0 0 3602 4097 3522 1 2530 8 #browseDependentTableTree 8 'Browse Tree' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 7440 0 8 4294902165 930 6048 98 0 6080 3856 0 6226 0 0 6258 3 1 8 ##(Smalltalk.UndefinedObject)  8 'doIt' 8 '[:e | e description asString]' 8 #[31 105 226 0 159 106] 8 #description 8 #asString 7792 7 257 0 0 0 0 0 202 208 98 1 6130 8 'Table' 501 6176 930 960 98 0 6226 0 0 6258 2 1 6224 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 960 8016 7 513 0 0 0 7440 0 1 0 0 7168 784 0 131169 0 0 994 202 208 98 3 1058 1088 98 2 1122 1 1 1122 433 227 7440 1058 4176 98 1 7568 7440 1058 2032 98 1 8 'Table' 7440 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 216 0 0 0 113 0 0 0] 98 0 1232 0 27 8 'dependentTables' 0 994 202 208 98 1 1058 1088 98 2 1122 1309 1 1122 433 473 5632 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 142 2 0 0 0 0 0 0 102 3 0 0 236 0 0 0] 98 3 7440 410 4480 98 12 0 5632 98 2 8 1140850688 1 8512 0 866 8 4278190080 0 517 0 0 0 8512 994 202 208 98 1 1058 1088 98 2 1122 1 227 1122 433 19 8512 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 113 0 0 0 216 0 0 0 122 0 0 0] 98 0 1232 0 27 5760 1232 0 27 1232 0 27 1232 0 27 234 256 784 0 994 202 208 98 1 1058 1088 98 2 1122 2879 21 1122 1741 1091 416 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 5 9 0 0 43 2 0 0] 98 2 528 2848 1232 0 27 )! !
!DBForeignKeyExplorerComposite class categoriesFor: #defaultModel!public! !
!DBForeignKeyExplorerComposite class categoriesFor: #resource_Default_view!public!resources-views! !

