"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBFKCascadeTreeComposite
	instanceVariableNames: 'tablesPresenter foreignTreePresenter scriptPresenter sqlCommandsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBFKCascadeTreeComposite guid: (GUID fromString: '{ea8e82e7-6474-4bff-bb1d-2f47bb9b69f0}')!
DBFKCascadeTreeComposite comment: ''!
!DBFKCascadeTreeComposite categoriesForClass!Unclassified! !
!DBFKCascadeTreeComposite methodsFor!

copyDeleteScriptToClipboard
	| sqlString |

	sqlString := ''.
	foreignTreePresenter model endOrderDo: [:each |
		sqlString := sqlString, 'DELETE FROM STAGING_AREA.', each name, ';', String lineDelimiter].

	^Clipboard current  setText: sqlString format: #String !

createComponents

	super createComponents.

	foreignTreePresenter := self add: TreePresenter new name: 'foreignTree'.
	tablesPresenter := self add: ListPresenter new name: 'tables'.
	sqlCommandsPresenter := self add: ListPresenter new name: 'sqlCommands'.
	scriptPresenter := self add: TextPresenter new name: 'script'.!

createSchematicWiring

	super createSchematicWiring.

	tablesPresenter when: #selectionChanged send: #onTableChanged to: self.

	sqlCommandsPresenter when: #selectionChanged send: #onSqlCommandChanged to: self!

model: anOrderedCollection

	super model: anOrderedCollection.

	tablesPresenter model: (ListModel on: (anOrderedCollection asSortedCollection: [:a :b | a name <= b name])).

	sqlCommandsPresenter model: (ListModel on: #('Truncate Table' 'Truncate Table Cascade' 'Drop Table'  'Delete From') asOrderedCollection).
!

onSqlCommandChanged

	scriptPresenter value: ''.

	self registerDeleteScript.!

onTableChanged

	tablesPresenter hasSelection ifFalse: [foreignTreePresenter model: TreeModel new].

	self setFKTreeFor: tablesPresenter selection.

	self registerDeleteScript.!

registerDeleteScript
	| sqlString sqlCommand |

	sqlString := ''.
	sqlCommand := sqlCommandsPresenter hasSelection ifFalse: ['Drop'] ifTrue: [sqlCommandsPresenter selection].
	foreignTreePresenter model endOrderDo: [:each |	sqlString := sqlString,  sqlCommand ,' ', each name, ';', String lineDelimiter].

	scriptPresenter value: (scriptPresenter value, String lineDelimiter, sqlString)!

setFKTreeFor: aBBDBTable
	| fkTree |

	fkTree := TreeModel withRoots: (OrderedCollection with: aBBDBTable).

	aBBDBTable collectCascadeTablesIn: fkTree processedTables: OrderedCollection new.

	foreignTreePresenter model: fkTree.

	self registerDeleteScript.
	! !
!DBFKCascadeTreeComposite categoriesFor: #copyDeleteScriptToClipboard!public! !
!DBFKCascadeTreeComposite categoriesFor: #createComponents!public! !
!DBFKCascadeTreeComposite categoriesFor: #createSchematicWiring!public! !
!DBFKCascadeTreeComposite categoriesFor: #model:!public! !
!DBFKCascadeTreeComposite categoriesFor: #onSqlCommandChanged!public! !
!DBFKCascadeTreeComposite categoriesFor: #onTableChanged!public! !
!DBFKCascadeTreeComposite categoriesFor: #registerDeleteScript!public! !
!DBFKCascadeTreeComposite categoriesFor: #setFKTreeFor:!public! !

!DBFKCascadeTreeComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 528 0 234 256 98 4 410 8 ##(Smalltalk.ComboBox)  98 17 0 528 98 2 8 1412498947 1025 656 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 656 0 8 4294903183 459270 ##(Smalltalk.Message)  8 #name 98 0 784 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  11 11 1090 831 47 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 164 1 0 0 28 0 0 0] 98 0 1090 193 193 0 27 8 'tables' 410 672 98 17 0 528 98 2 8 1412498946 1025 1232 738 202 208 784 0 816 834 8 4278190080 0 5 0 0 0 1232 0 8 4294903183 898 8 #displayString 98 0 784 401 962 202 208 98 1 1026 1056 98 2 1090 891 11 1090 351 47 1232 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 189 1 0 0 5 0 0 0 108 2 0 0 28 0 0 0] 98 0 1200 0 27 8 'sqlCommands' 0 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 1861 61 528 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 162 3 0 0 30 0 0 0] 98 2 656 1232 1200 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 1760 0 0 0 5 0 0 0 1760 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 8 ##(Smalltalk.ScrollingDecorator)  98 18 0 1760 98 2 8 1143996416 131073 1888 0 0 0 5 0 0 0 1888 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout)  16 234 256 98 2 410 8 ##(Smalltalk.MoenTreeView)  98 30 0 1888 98 2 8 1140850688 1 2032 590918 3 ##(Smalltalk.TreeModel)  0 816 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 784 834 8 4278190080 0 517 0 0 0 2032 788998 ##(Smalltalk.MoenTreeNode)  0 721926 ##(Smalltalk.MoenContour)  0 0 0 0 1090 1 1 2288 0 0 0 0 0 7 898 8 #printForeignTreeName 98 0 2048 268435459 1090 5 3 1049670 1 ##(Smalltalk.IconImageManager)  1090 1 1 41 0 197382 ##(Smalltalk.Pen)  0 16 393478 ##(Smalltalk.LOGPEN)  8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 1090 33 33 1090 19999 19999 114721 2400 1090 35 1 0 0 0 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 1229 1211 2032 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 102 2 0 0 93 2 0 0] 98 0 1200 0 27 8 'foreignTree' 0 1090 1 1 16 1090 17 17 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 1229 1211 1888 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 102 2 0 0 93 2 0 0] 98 1 2032 1200 0 27 5 32 234 256 784 0 962 202 208 98 1 1026 1056 98 2 1090 1 61 1090 1861 1211 1760 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 162 3 0 0 123 2 0 0] 98 3 1888 410 8 ##(Smalltalk.Splitter)  98 12 0 1760 98 2 8 1140850688 1 3088 0 834 8 4278190080 0 517 0 0 0 3088 962 202 208 98 1 1026 1056 98 2 1090 1229 1 1090 19 1211 3088 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 102 2 0 0 0 0 0 0 111 2 0 0 93 2 0 0] 98 0 1200 0 27 410 432 98 15 0 1760 98 2 8 1140850688 131073 3360 0 0 0 5 0 0 0 3360 1826 234 240 784 32 234 256 98 2 410 8 ##(Smalltalk.MultilineTextEdit)  98 16 0 3360 98 2 8 1143017796 1025 3488 0 834 8 4278190080 0 5 0 0 0 3488 0 8 4294903135 852486 ##(Smalltalk.NullConverter)  0 0 9 962 202 208 98 3 1026 1056 98 2 1090 1 1 1090 615 1211 3488 1026 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 3488 1026 8 #isTextModified: 98 1 32 3488 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 51 1 0 0 93 2 0 0] 98 0 1200 0 27 8 'script' 0 962 202 208 98 1 1026 1056 98 2 1090 1247 1 1090 615 1211 3360 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 111 2 0 0 0 0 0 0 162 3 0 0 93 2 0 0] 98 1 3488 1200 0 27 1200 0 27 234 256 784 0 962 202 208 98 1 1026 1056 98 2 1090 3199 21 1090 1861 1271 416 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 225 9 0 0 133 2 0 0] 98 2 528 1760 1200 0 27 )! !
!DBFKCascadeTreeComposite class categoriesFor: #resource_Default_view!public!resources-views! !

