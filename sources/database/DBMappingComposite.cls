"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBMappingComposite
	instanceVariableNames: 'migrationNamePresenter mappingsPresenter migrationDescriptionPresenter sourceDatabasePresenter targetDatabasePresenter attributesSourcePresenter attributesTargetPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBMappingComposite guid: (GUID fromString: '{325b1668-e65d-45f4-8566-a43c02111852}')!
DBMappingComposite comment: ''!
!DBMappingComposite categoriesForClass!Unclassified! !
!DBMappingComposite methodsFor!

createComponents

	super createComponents.

	sourceDatabasePresenter := self add: ListPresenter new name: 'sourceDatabasePresenter'.
	targetDatabasePresenter := self add: ListPresenter new name: 'targetDatabasePresenter'.
	attributesSourcePresenter := self add: ListPresenter new name: 'attributesSourcePresenter'.
	attributesTargetPresenter := self add: ListPresenter new name: 'attributesTargetPresenter'.
	migrationNamePresenter := self add: TextPresenter new name: 'migrationNamePresenter'.
	mappingsPresenter := self add: ListPresenter new name: 'mappingsPresenter'.
	migrationDescriptionPresenter := self add: RichTextComposite new name: 'migrationDescriptionPresenter'.!

createSchematicWiring

	super createSchematicWiring.

	sourceDatabasePresenter when: #selectionChanged send: #onSourceDatabaseChanged to: self.

	targetDatabasePresenter when: #selectionChanged send: #onTargetDatabaseChanged to: self.

	mappingsPresenter when: #selectionChanged send: #onMappingChanged to: self.

	attributesTargetPresenter when: #dragOver: send: #onDragOverTargetAttribute: to: self;
		when: #drop: send: #onDropSourceAttributeOverTargetAttribute: to: self.

!

model: aBBDBModelMigrationMap 

	super model: aBBDBModelMigrationMap.

	migrationNamePresenter model: (aBBDBModelMigrationMap aspectValue: #name).
	sourceDatabasePresenter model: (ListModel on: aBBDBModelMigrationMap allDatabases).
	targetDatabasePresenter model: (ListModel on: aBBDBModelMigrationMap allDatabases).

	mappingsPresenter model: (ListModel on: aBBDBModelMigrationMap mappings).!

onDragOverTargetAttribute: aDragDropSession

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDropSourceAttributeOverTargetAttribute: aDragDropSession
	| valueMapping |

	valueMapping := BBValueMigrationMap source: aDragDropSession suggestedSource target: aDragDropSession suggestedTarget.

	model addMapping: valueMapping.

	mappingsPresenter model: (ListModel on: model mappings).!

onMappingChanged 

	mappingsPresenter hasSelection ifFalse: [^migrationDescriptionPresenter model: '' asValue].

	migrationDescriptionPresenter model: (mappingsPresenter selection aspectValue: #transformationDescription).!

onSourceDatabaseChanged

	attributesSourcePresenter model: (ListModel on: sourceDatabasePresenter selection allAttributes).!

onTargetDatabaseChanged

	attributesTargetPresenter model: (ListModel on: targetDatabasePresenter selection allAttributes).!

removeMapping

	mappingsPresenter hasSelection ifFalse: [^self].

	model removeMapping: mappingsPresenter selection.

	mappingsPresenter model: (ListModel on: model mappings).
! !
!DBMappingComposite categoriesFor: #createComponents!public! !
!DBMappingComposite categoriesFor: #createSchematicWiring!public! !
!DBMappingComposite categoriesFor: #model:!public! !
!DBMappingComposite categoriesFor: #onDragOverTargetAttribute:!public! !
!DBMappingComposite categoriesFor: #onDropSourceAttributeOverTargetAttribute:!public! !
!DBMappingComposite categoriesFor: #onMappingChanged!public! !
!DBMappingComposite categoriesFor: #onSourceDatabaseChanged!public! !
!DBMappingComposite categoriesFor: #onTargetDatabaseChanged!public! !
!DBMappingComposite categoriesFor: #removeMapping!public! !

!DBMappingComposite class methodsFor!

defaultModel

	^BBDBModelMigrationMap new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 0 0 5 0 0 0 528 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 640 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 802 1971 51 528 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 25 0 0 0] 98 1 410 8 ##(Smalltalk.Toolbar)  98 25 0 528 98 2 8 1409288972 131137 912 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 517 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 0 912 994 1024 8 4294902545 234 256 640 234 256 98 2 46053 1115910 ##(Smalltalk.ToolbarIconButton)  46053 0 912 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #removeMapping 8 'Remove Mapping' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'False.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 802 33 33 1 98 1 1232 234 240 98 2 1456 1 0 1 0 802 33 33 802 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 674 202 208 98 2 738 768 98 2 802 1 1 802 1971 51 912 738 8 #updateSize 640 912 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 25 0 0 0] 98 0 802 193 193 0 27 1792 0 27 0 0 0 410 8 ##(Smalltalk.CardContainer)  98 16 0 416 98 2 8 1409286144 131073 1808 0 994 8 4278190080 0 5 0 0 0 1808 655878 ##(Smalltalk.CardLayout)  202 208 98 2 721414 ##(Smalltalk.Association)  3 410 432 98 15 0 1808 98 2 8 1140850688 131073 2016 0 0 0 5 0 0 0 2016 594 234 240 98 2 410 432 98 15 0 2016 98 2 8 1140850688 131073 2128 0 0 0 5 0 0 0 2128 498 1 1 410 432 98 15 0 2128 98 2 8 1140850688 131073 2208 0 0 0 5 0 0 0 2208 0 234 256 98 4 410 8 ##(Smalltalk.ComboBox)  98 17 0 2208 98 2 8 1412498947 1025 2304 590662 2 ##(Smalltalk.ListModel)  202 208 640 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  994 8 4278190080 0 5 0 0 0 2304 0 8 4294902733 459270 ##(Smalltalk.Message)  8 #name 98 0 640 401 674 202 208 98 1 738 768 98 2 802 731 1 802 551 47 2304 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 109 1 0 0 0 0 0 0 128 2 0 0 23 0 0 0] 98 0 1792 0 27 8 'targetDatabasePresenter' 410 2320 98 17 0 2208 98 2 8 1412498947 1025 2752 2386 202 208 640 0 2448 994 2480 0 5 0 0 0 2752 0 8 4294902733 2514 2544 2560 640 401 674 202 208 98 1 738 768 98 2 802 1 1 802 611 47 2752 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 49 1 0 0 23 0 0 0] 98 0 1792 0 27 8 'sourceDatabasePresenter' 0 674 202 208 98 1 738 768 98 2 802 1 1 802 1291 61 2208 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 2 0 0 30 0 0 0] 98 2 2752 2304 1792 0 27 0 0 0 410 432 98 15 0 2128 98 2 8 1140850688 131073 3232 0 0 0 5 0 0 0 3232 594 234 240 640 16 234 256 640 0 674 202 208 98 1 738 768 98 2 802 1 61 802 1291 1025 3232 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 133 2 0 0 30 2 0 0] 98 3 410 432 98 15 0 3232 98 2 8 1140850688 131073 3504 0 0 0 5 0 0 0 3504 594 234 240 640 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 3504 98 2 8 1140920397 1025 3632 2386 202 208 640 0 2448 994 8 4278190080 0 13 0 0 0 3632 0 8 4294902699 2514 8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 6 920646 5 ##(Smalltalk.ListViewColumn)  8 'Table' 241 8 #left 2514 8 #tableName 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 2512 8 'doIt' 8 '[:a :b | a tableName <= b tableName]' 8 #[30 105 226 0 226 32 130 106] 4000 4048 7 513 0 0 0 3632 0 1 0 0 3922 8 'Attribute Name' 601 3968 2514 2544 98 0 4034 0 0 4066 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 2544 4208 7 513 0 0 0 3632 0 1 0 4034 0 0 4066 7 1 4032 8 'doIt' 8 '[:ctx | 
ctx forecolor:  (ctx item nullable ifTrue: [Color black] ifFalse:[Color darkBlue ])]' 8 #[35 105 17 226 0 159 120 31 161 111 31 162 181 106] 8 #item 8 #nullable 8 ##(Smalltalk.Color)  8 #black 8 #darkBlue 8 #forecolor: 4336 7 257 0 3922 8 'Type' 301 3968 2514 8 #printType 4192 4034 0 0 4066 2 1 2512 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 4560 4576 7 513 0 0 0 3632 0 1 0 0 3922 8 'Nullable' 201 3968 2514 4432 4192 4034 0 0 4066 3 1 4032 8 'doIt' 8 '[:a :b | a nullable printString <= b nullable printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 4432 8 #printString 4704 7 513 0 0 0 3632 0 1 0 0 3922 8 'Is Primary Key ?' 201 3968 2514 8 #isPrimaryKey 98 0 4034 0 0 4066 3 1 4032 8 'doIt' 8 '[:a :b | a isPrimaryKey printString <= b isPrimaryKey printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 4848 4784 4880 7 513 0 0 0 3632 0 1 0 0 3922 8 'Is Foreign Key ?' 201 3968 2514 8 #isForeignKey 98 0 4034 0 0 4066 3 1 2512 8 'doIt' 8 '[:a :b | a isForeignKey printString <= b isForeignKey printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 5008 4784 5040 7 513 0 0 0 3632 0 1 0 0 8 #report 640 0 131169 0 0 674 202 208 98 2 738 768 98 2 802 1 1 802 1291 503 3632 738 8 #text: 98 1 8 'Table' 3632 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 2 0 0 251 0 0 0] 98 0 1792 0 27 8 'attributesSourcePresenter' 0 674 202 208 98 1 738 768 98 2 802 1 1 802 1291 503 3504 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 2 0 0 251 0 0 0] 98 1 3632 1792 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 3232 98 2 8 1140850688 1 5536 0 994 8 4278190080 0 517 0 0 0 5536 674 202 208 98 1 738 768 98 2 802 1 503 802 1291 19 5536 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 251 0 0 0 133 2 0 0 4 1 0 0] 98 0 1792 0 27 410 432 98 15 0 3232 98 2 8 1140850688 131073 5808 0 0 0 5 0 0 0 5808 594 234 240 640 32 234 256 98 2 410 3648 98 30 0 5808 98 2 8 1140920397 1025 5936 2386 202 208 640 0 2448 994 3760 0 21 0 0 0 5936 0 8 4294902699 2514 3808 98 0 3840 3872 0 0 0 0 0 0 202 208 98 6 3922 8 'Table' 241 3968 2514 4000 98 0 4034 0 0 4066 2 1 2512 4096 4112 8 #[30 105 226 0 226 32 130 106] 4000 6192 7 513 0 0 0 5936 0 1 0 0 3922 4160 601 3968 2514 2544 98 0 4034 0 0 4066 2 1 4240 4288 4304 4320 2544 6288 7 513 0 0 0 5936 0 1 0 4034 0 0 4066 7 1 4032 4368 4384 4400 4416 4432 4448 4464 4480 4496 6320 7 257 0 3922 4528 301 3968 2514 4560 6272 4034 0 0 4066 2 1 2512 4608 4624 4640 4560 6384 7 513 0 0 0 5936 0 1 0 0 3922 4672 201 3968 2514 4432 6272 4034 0 0 4066 3 1 4032 4736 4752 4768 4432 4784 6448 7 513 0 0 0 5936 0 1 0 0 3922 4816 201 3968 2514 4848 98 0 4034 0 0 4066 3 1 4032 4912 4928 4944 4848 4784 6528 7 513 0 0 0 5936 0 1 0 0 3922 4976 201 3968 2514 5008 98 0 4034 0 0 4066 3 1 2512 5072 5088 5104 5008 4784 6608 7 513 0 0 0 5936 0 1 0 0 5120 640 0 131169 0 0 674 202 208 98 2 738 768 98 2 802 1 1 802 1291 505 5936 738 5264 98 1 8 'Table' 5936 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 2 0 0 252 0 0 0] 98 0 1792 0 27 8 'attributesTargetPresenter' 0 674 202 208 98 1 738 768 98 2 802 1 521 802 1291 505 5808 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 4 1 0 0 133 2 0 0 0 2 0 0] 98 1 5936 1792 0 27 1792 0 27 234 256 640 0 674 202 208 98 1 738 768 98 2 802 1 1 802 1291 1085 2128 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 2 0 0 30 2 0 0] 98 2 2208 3232 1792 0 27 5 32 234 256 640 0 674 202 208 98 1 738 768 98 2 802 9 49 802 1955 1085 2016 850 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 213 3 0 0 54 2 0 0] 98 3 2128 410 5552 98 12 0 2016 98 2 8 1140850688 1 7376 0 994 5632 0 517 0 0 0 7376 674 202 208 98 1 738 768 98 2 802 1291 1 802 19 1085 7376 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 133 2 0 0 0 0 0 0 142 2 0 0 30 2 0 0] 98 0 1792 0 27 410 432 98 15 0 2016 98 2 8 1140850688 131073 7616 0 0 0 5 0 0 0 7616 0 234 256 640 0 674 202 208 98 1 738 768 98 2 802 1309 1 802 647 1085 7616 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 142 2 0 0 0 0 0 0 209 3 0 0 30 2 0 0] 98 0 1792 0 27 1792 0 27 1986 5 410 432 98 15 0 1808 98 2 8 1140850688 131073 7872 0 0 0 5 0 0 0 7872 498 1 1 410 432 98 15 0 7872 98 2 8 1140850688 131073 7952 0 0 0 5 0 0 0 7952 0 234 256 98 2 410 8 ##(Smalltalk.TextEdit)  98 16 0 7952 98 2 8 1140916352 263169 8048 0 994 8 4278190080 0 5 0 0 0 8048 0 8 4294902735 852486 ##(Smalltalk.NullConverter)  0 0 1 674 202 208 98 3 738 768 98 2 802 21 11 802 551 51 8048 738 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 8048 738 8 #isTextModified: 98 1 32 8048 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 5 0 0 0 29 1 0 0 30 0 0 0] 98 0 1792 0 27 8 'migrationNamePresenter' 0 674 202 208 98 1 738 768 98 2 802 1 1 802 1955 71 7952 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 209 3 0 0 35 0 0 0] 98 1 8048 1792 0 27 0 0 0 410 432 98 15 0 7872 98 2 8 1140850688 131073 8672 0 0 0 5 0 0 0 8672 594 234 240 98 2 410 432 98 15 0 8672 98 2 8 1140850688 131073 8784 0 0 0 5 0 0 0 8784 594 234 240 640 16 234 256 98 4 410 3648 98 30 0 8784 98 2 8 1409355853 1025 8912 2386 202 208 640 0 2448 994 8 4278190080 0 5 0 0 0 8912 0 8 4294902699 2514 3808 98 0 3840 3872 0 0 0 0 0 0 202 208 98 9 3922 8 'Source DB' 201 3968 2514 8 #sourceDatabaseName 98 0 4034 0 0 4066 2 1 4240 8 'doIt' 8 '[:a :b | a sourceDatabaseName <= b sourceDatabaseName]' 8 #[30 105 226 0 226 32 130 106] 9168 9200 7 513 0 0 0 8912 0 1 0 4034 0 0 4066 4 1 8 ##(Smalltalk.UndefinedObject)  8 'doIt' 8 '[:ctx | ctx forecolor: ctx item color]' 8 #[32 105 17 226 0 159 178 106] 4416 8 #color 4496 9280 7 257 0 3922 8 'Source Table' 201 3968 2514 8 #sourceTableName 9184 4034 0 0 4066 2 1 2512 8 'doIt' 8 '[:a :b | a sourceTableName <= b sourceTableName]' 8 #[30 105 226 0 226 32 130 106] 9440 9456 7 513 0 0 0 8912 0 1 0 0 3922 8 'Source Attribute' 201 3968 2514 8 #sourceAttributeName 9184 4034 0 0 4066 2 1 2512 8 'doIt' 8 '[:a :b | a sourceAttributeName <= b sourceAttributeName]' 8 #[30 105 226 0 226 32 130 106] 9584 9600 7 513 0 0 0 8912 0 1 0 0 3922 8 'Source Type' 201 3968 2514 8 #sourceAttributeType 9184 4034 0 0 4066 2 1 2512 8 'doIt' 8 '[:a :b | a sourceAttributeType <= b sourceAttributeType]' 8 #[30 105 226 0 226 32 130 106] 9728 9744 7 513 0 0 0 8912 0 1 0 0 3922 8 'Target DB' 201 3968 2514 8 #targetDatabaseName 9184 4034 0 0 4066 2 1 4032 8 'doIt' 8 '[:a :b | a targetDatabaseName <= b targetDatabaseName]' 8 #[30 105 226 0 226 32 130 106] 9872 9888 7 513 0 0 0 8912 0 1 0 0 3922 8 'Target Table' 201 3968 2514 8 #targetTableName 9184 4034 0 0 4066 2 1 4032 8 'doIt' 8 '[:a :b | a targetTableName <= b targetTableName]' 8 #[30 105 226 0 226 32 130 106] 10016 10032 7 513 0 0 0 8912 0 1 0 0 3922 8 'Target Attribute' 201 3968 2514 8 #targetAttributeName 9184 4034 0 0 4066 2 1 4032 8 'doIt' 8 '[:a :b | a targetAttributeName <= b targetAttributeName]' 8 #[30 105 226 0 226 32 130 106] 10160 10176 7 513 0 0 0 8912 0 1 0 0 3922 8 'Target Type' 201 3968 2514 8 #targetAttributeType 9184 4034 0 0 4066 2 1 4032 8 'doIt' 8 '[:a :b | a targetAttributeType <= b targetAttributeType]' 8 #[30 105 226 0 226 32 130 106] 10304 10320 7 513 0 0 0 8912 0 1 0 0 3922 8 'Mismatch' 201 3968 2514 8 #isMismatched 98 0 4034 0 0 4066 3 1 4032 8 'doIt' 8 '[:a :b | a isMismatched printString <= b isMismatched printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 10448 4784 10480 7 513 0 0 0 8912 0 1 0 0 5120 640 0 131169 0 0 674 202 208 98 2 738 768 98 2 802 1 1 802 1291 499 8912 738 5264 98 1 8 'Source DB' 8912 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 2 0 0 249 0 0 0] 98 0 1792 0 27 8 'mappingsPresenter' 410 8 ##(Smalltalk.ReferenceView)  98 14 0 8784 98 2 8 1140850688 131073 10784 0 994 8 4278190080 0 5 0 0 0 10784 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 674 202 208 98 1 738 768 98 2 802 1 517 802 1291 499 10784 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 2 1 0 0 133 2 0 0 251 1 0 0] 640 1792 0 27 8 'migrationDescriptionPresenter' 0 674 202 208 98 1 738 768 98 2 802 1 1 802 1291 1015 8784 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 2 0 0 251 1 0 0] 98 3 8912 410 5552 98 12 0 8784 98 2 8 1140850688 1 11280 0 994 8 4278190080 0 517 0 0 0 11280 674 202 208 98 1 738 768 98 2 802 1 499 802 1291 19 11280 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 249 0 0 0 133 2 0 0 2 1 0 0] 98 0 1792 0 27 10784 1792 0 27 5 32 234 256 640 0 674 202 208 98 1 738 768 98 2 802 1 71 802 1955 1015 8672 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 35 0 0 0 209 3 0 0 30 2 0 0] 98 3 8784 410 5552 98 12 0 8672 98 2 8 1140850688 1 11712 0 994 8 4278190080 0 517 0 0 0 11712 674 202 208 98 1 738 768 98 2 802 1291 1 802 19 1015 11712 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 133 2 0 0 0 0 0 0 142 2 0 0 251 1 0 0] 98 0 1792 0 27 410 432 98 15 0 8672 98 2 8 1140850688 131073 11968 0 0 0 5 0 0 0 11968 0 234 256 640 0 674 202 208 98 1 738 768 98 2 802 1309 1 802 647 1015 11968 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 142 2 0 0 0 0 0 0 209 3 0 0 251 1 0 0] 98 0 1792 0 27 1792 0 27 234 256 640 0 674 202 208 98 1 738 768 98 2 802 9 49 802 1955 1085 7872 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 213 3 0 0 54 2 0 0] 98 2 7952 8672 1792 0 27 7872 234 256 640 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 1808 98 2 8 1140916736 1 12400 2386 202 208 98 2 5 3 0 2448 0 0 1 0 0 0 12400 0 8 4294902703 4034 0 0 918822 ##(Smalltalk.CompiledMethod)  2 3 8 ##(Smalltalk.ListControlView)  8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 3808 12544 7 257 0 4034 0 0 12562 2 3 3840 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 12640 7 257 0 3872 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 674 202 208 98 3 738 768 98 2 802 1 1 802 1971 1141 12400 738 8 #basicSelectionsByIndex: 98 1 98 1 3 12400 738 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 12400 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 58 2 0 0] 98 0 1792 0 27 674 202 208 98 1 738 768 98 2 802 1 51 802 1971 1141 1808 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 217 3 0 0 83 2 0 0] 98 3 7872 2016 12400 1792 0 27 234 256 640 0 674 202 208 98 1 738 768 98 2 802 2879 21 802 1971 1191 416 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 120 9 0 0 93 2 0 0] 98 2 528 1808 1792 0 27 )! !
!DBMappingComposite class categoriesFor: #defaultModel!public! !
!DBMappingComposite class categoriesFor: #resource_Default_view!public!resources-views! !

