"Filed out from Dolphin Smalltalk 7"!

DBShell subclass: #DBModelShell
	instanceVariableNames: 'dbmodelComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBModelShell guid: (GUID fromString: '{b892c305-0e24-4d1d-828e-f47176e52434}')!
DBModelShell comment: ''!
!DBModelShell categoriesForClass!Unclassified! !
!DBModelShell methodsFor!

createComponents

	super createComponents.

	dbmodelComposite := self add: DBModelComposite new name: 'dbmodelComposite'.!

fileInDataBaseModel

	self halt!

fileOutDataBaseModel

	self halt!

foreingKeyWithBadDefinitions

	^DetalleDeOpciones listaCon: model foreingKeyWithBadDefinitions para: 'ForeignKey list' titulo: 'Bad Foreign Keys'!

generateInsertChain
	"The receiver answer aTreeModel that represent the chain to be followed to insert data in receiver's model.
	The root of the TreeModel are the tables that do NOT have foreign keys"

	^model generateInsertChain inspect!

model: aBBDataBaseModel

	super model: aBBDataBaseModel.

	dbmodelComposite model: aBBDataBaseModel!

openAnotherBrowser

	self class showOn: self model!

searchAttributeDescription
	| table attibuteDescription attributes |

	table := dbmodelComposite selectedTable ifNil: [^dbmodelComposite restoreTableAttributes].
	attibuteDescription := (Prompter prompt: 'Enter the Attribute Description to Search' caption: 'DataBase Browser') ifNil: [^dbmodelComposite restoreTableAttributes].
	attributes := table getAttributeWithDescription: attibuteDescription.

	dbmodelComposite setTableAttributes: attributes!

searchAttributeNamed
	| attibuteName attributes |

	attibuteName := self selectedAttributeNameIfNone: [(Prompter prompt: 'Enter the Attribute Name to Search' caption: 'DataBase Browser') ifNil: [^self]].
	attributes := model getAttributeNamed: attibuteName.

	^DetalleDeOpciones listaCon: attributes para: 'Database Tables and Attributes' titulo: ('Attributes Named <', attibuteName, '>')


!

searchAttributeWithType
	| type attributes |

	type := (Prompter prompt: 'Enter the Type of the Attribute Search' caption: 'DataBase Browser') ifNil: [^self].
	attributes := model tablesWithAttributeWithType: type.

	(ListPresenter show: 'Database Tables and Attributes' on: (ListModel on: attributes))


!

searchRawAttributeNamed
	"The receiver prompt to get <aString> to search -RAW attributes- with name matching <aString>. A -RAW attributes- is an attribute which is NO primary key and NOT a Foreignkey"
	| attibuteName rawAttributes |

	attibuteName := (Prompter prompt: 'Enter the RAW Attribute Name to Search' caption: 'DataBase Browser') ifNotNil: [:value | value] ifNil: [^self] .
	rawAttributes := model getAttributeNamed: attibuteName.

	^DetalleDeOpciones listaCon: rawAttributes para: 'Database Tables and Attributes' titulo: ('Attributes Named <', attibuteName, '>')

!

searchTableNamed
	| tableName tables dbQueryModel |

	tableName := (Prompter prompt: 'Enter the Table Name to Search' caption: 'DataBase Browser') 
				ifNil: [^self].
	tables := model getTablesMatching: tableName.

	dbQueryModel := BBDataBaseModel new 
				name: 'Search for Tables Matching Name <' , tableName , '> in <' , model name , '>'.

	dbQueryModel addAllTables: tables asOrderedCollection.
	dbQueryModel show!

selectedAttributeNameIfNone: aNiladicValuable 

	^dbmodelComposite selectedAttributeNameIfNone: aNiladicValuable!

showTableReferenes
	dbmodelComposite selectedTable ifNil: [^self].
	^DBTableForeignKeyExplorerShell showOn: dbmodelComposite selectedTable! !
!DBModelShell categoriesFor: #createComponents!public! !
!DBModelShell categoriesFor: #fileInDataBaseModel!public! !
!DBModelShell categoriesFor: #fileOutDataBaseModel!public! !
!DBModelShell categoriesFor: #foreingKeyWithBadDefinitions!public! !
!DBModelShell categoriesFor: #generateInsertChain!public! !
!DBModelShell categoriesFor: #model:!public! !
!DBModelShell categoriesFor: #openAnotherBrowser!public! !
!DBModelShell categoriesFor: #searchAttributeDescription!public! !
!DBModelShell categoriesFor: #searchAttributeNamed!public! !
!DBModelShell categoriesFor: #searchAttributeWithType!public! !
!DBModelShell categoriesFor: #searchRawAttributeNamed!public! !
!DBModelShell categoriesFor: #searchTableNamed!public! !
!DBModelShell categoriesFor: #selectedAttributeNameIfNone:!public! !
!DBModelShell categoriesFor: #showTableReferenes!public! !

!DBModelShell class methodsFor!

icon
	^BBDataBaseModel icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 7 0 0 0 560 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 688 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 850 1949 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 206 3 0 0 25 0 0 0] 98 1 410 8 ##(Smalltalk.Toolbar)  98 25 0 560 98 2 8 1409288972 131137 960 0 482 8 4278190080 0 519 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 850 193 193 0 960 482 1056 8 4294902517 234 256 688 234 256 98 10 25003 1115910 ##(Smalltalk.ToolbarIconButton)  25003 0 960 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #fileOutDataBaseModel 8 'File Out Data Base Model' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.ImageRelativeFileLocator)  8 #current 8 'FileSave.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 850 33 33 1 25005 1250 25005 0 960 1 1282 8 #fileInDataBaseModel 8 'File In Data Base Model' 1 1 1346 0 16 1392 8 'FileOpen.ico' 1472 1506 0 16 0 0 0 0 3 850 33 33 1 25007 1250 25007 0 960 1 1282 8 #searchAttributeNamed 8 'Search Attribute Named' 1 1 1346 0 16 1392 8 'ListViewColumn.ico' 1472 1506 0 16 0 0 0 0 3 850 33 33 1 25009 1250 25009 0 960 1 1282 8 #generateInsertChain 8 'Generate Insert Chain' 1 1 1346 0 16 1392 8 'ClassHierarchyDiagram.ico' 1472 1506 0 16 0 0 0 0 3 850 33 33 1 25011 1250 25011 0 960 1 1282 8 #showTableReferenes 8 'Show Selected Table References' 1 1 1346 0 16 1392 8 'MoenTreeView.ico' 1472 1506 0 16 0 0 0 0 3 850 33 33 1 98 7 1264 1552 1050118 ##(Smalltalk.ToolbarSeparator)  0 0 960 3 0 1 1680 2082 0 0 960 3 0 1 1808 1936 234 240 98 10 1776 5 1520 1 1648 3 1904 7 2032 9 0 1 0 850 33 33 850 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 722 202 208 98 2 786 816 98 2 850 1 1 850 1949 51 960 786 8 #updateSize 688 960 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 206 3 0 0 25 0 0 0] 98 0 850 193 193 0 27 2416 0 27 0 0 0 410 576 98 15 0 416 98 2 8 1140850688 131073 2432 0 0 0 7 0 0 0 2432 642 234 240 688 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 2432 98 2 8 1140850688 131073 2560 0 482 8 4278190080 0 7 0 0 0 2560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.DBModelComposite)  8 #resource_Default_view 0 722 202 208 98 1 786 816 98 2 850 1 1 850 1949 1289 2560 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 206 3 0 0 132 2 0 0] 688 2416 0 27 8 'dbmodelComposite' 0 722 202 208 98 1 786 816 98 2 850 1 51 850 1949 1289 2432 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 206 3 0 0 157 2 0 0] 98 1 2560 2416 0 27 234 256 688 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 3 265030 4 ##(Smalltalk.Menu)  0 16 98 6 984134 2 ##(Smalltalk.CommandMenuItem)  1 1282 1312 8 'File Out Data Base Model' 1 1 0 0 0 3170 1 1282 1584 8 'File In Data Base Model' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 3170 1 1282 8 #openAnotherBrowser 8 'Open Another Browser' 1 1 0 0 0 3282 4097 3170 1 1282 8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 25097 0 0 3122 0 16 98 9 3170 1 1282 8 #searchTableNamed 8 'Table Named' 1 1 0 0 0 3282 4097 3170 1 1282 1712 8 'Attribute Named' 1 1 0 0 0 3170 1 1282 8 #searchRawAttributeNamed 8 'Raw Attribute Named' 1 1 0 0 0 3282 4097 3170 1 1282 8 #searchAttributeWithType 8 'Attribute with Type' 1 1 0 0 0 3282 4097 3170 1 1282 8 #searchTableDescription 8 'Table Description' 1 1 0 0 0 3170 1 1282 8 #searchAttributeDescription 8 'Attribute Description' 1 1 0 0 0 8 'Search' 0 134217729 0 0 25111 0 0 3122 0 16 98 1 3170 1 1282 8 #foreingKeyWithBadDefinitions 8 'List of Bad FK' 1 1 0 0 0 8 'Test' 0 134217729 0 0 25115 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 722 202 208 98 3 786 816 98 2 850 2879 21 850 1981 1451 416 786 8 #text: 98 1 8 'Database Browser' 416 786 8 #updateMenuBar 688 416 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 125 9 0 0 223 2 0 0] 98 2 560 2432 2416 0 27 )! !
!DBModelShell class categoriesFor: #icon!public! !
!DBModelShell class categoriesFor: #resource_Default_view!public!resources-views! !

