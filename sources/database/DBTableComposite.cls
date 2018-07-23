"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBTableComposite
	instanceVariableNames: 'namePresenter attributesPresenter foreignKeysPresenter primaryKeyNamePresenter primaryKeyAttributesPresenter keyImagePresenter attributeDescriptionComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBTableComposite guid: (GUID fromString: '{9e96c957-a43a-4e65-ae5c-bab082f32f6e}')!
DBTableComposite comment: ''!
!DBTableComposite categoriesForClass!Unclassified! !
!DBTableComposite methodsFor!

copyAttributeToClipboard
	| texto |

	attributesPresenter hasSelection ifFalse: [^Clipboard current setText: '' format: #String].
	texto := model name, '.', attributesPresenter selection name, String tab, attributesPresenter selection type value.
	^Clipboard current setText: texto format: #String!

copyFKAttributeName
	| texto |

	foreignKeysPresenter hasSelection ifFalse: [^Clipboard current setText: '' format: #String].
	texto := ''.

	foreignKeysPresenter model do: [:each | texto := texto, each printAttributeName, String tab, each printRelatedTableName, String lineDelimiter].

	^Clipboard current setText: texto format: #String!

createComponents

	super createComponents.

	namePresenter := self add: TextPresenter new name: 'name'.
	attributesPresenter := self add: ListPresenter new name: 'attributes'.
	foreignKeysPresenter := self add: ListPresenter new name: 'foreignKeys'.
	primaryKeyNamePresenter := self add: TextPresenter new name: 'primaryKeyName'.
	primaryKeyAttributesPresenter := self add: ListPresenter new name: 'primaryKeyAttributes'.
	keyImagePresenter := self add: ImagePresenter new name: 'keyImage'.
	attributeDescriptionComposite := self add: RichTextComposite new name: 'attributeDescription'.!

createNewForeignKeyFor: aDragDropSession
	| fk relatedTable |

	relatedTable := (DetalleDeOpciones listaCon: model databaseModel tablesAsSortedCollection para: 'ListViewTables' titulo: ('Select Foreign Table'))
		ifNil: [^self] ifNotNil: [:value | value last].
	
	fk := BBDBForeignKey newNamed: aDragDropSession suggestedSource name for: model.
	fk addAttribute: aDragDropSession suggestedSource;
		foreignAttribute: relatedTable primaryKey;
		relatedTable: relatedTable.

	model addForeignKey: fk.
	self model: self model.!

createSchematicWiring

	super createSchematicWiring.

	attributesPresenter when: #selectionChanged send: #onAttributeChanged to: self;
		when: #dragOver: send: #onDragOverAttribute: to: self;
		when: #drop: send: #onDropOverAttributes: to: self.

	primaryKeyAttributesPresenter when: #dragOver: send: #onDragOverPrimaryKey: to: self;
		when: #drop: send: #onDropOverPrimaryKey: to: self.

	foreignKeysPresenter when: #dragOver: send: #onDragOverForeignKey: to: self;
		when: #drop: send: #onDropOverForeignKey: to: self.
!

model: aBBDBTable

	super model: aBBDBTable.

	namePresenter model: (aBBDBTable aspectValue: #name).

	primaryKeyNamePresenter value: aBBDBTable primaryKey name.
	primaryKeyAttributesPresenter model: (ListModel on: aBBDBTable primaryKey keyAttributes asOrderedCollection).

	attributesPresenter model: (ListModel on: (aBBDBTable attributes asSortedCollection: [:a :b | a name <= b name])).

	foreignKeysPresenter model:  (ListModel on: aBBDBTable foreignKeys asOrderedCollection).

	keyImagePresenter value: (OLEPicture fromFile: 'primaryKey.jpg').

	keyImagePresenter view parentView backcolor: (aBBDBTable hasPrimaryKey ifFalse: [Color darkRed] ifTrue:[nil]).!

onAboutToDisplayMenu: popup 
	"The system is about to display the <Menu>, popup, this is our chance
	to fiddle with it."

	super onAboutToDisplayMenu: popup.

	foreignKeysPresenter hasSelection ifFalse: [^self].
	(popup name == #fkMenu) 
		ifTrue: [| docMenu fkSeleccionada | 
			docMenu := popup find: 'Remove Attribute from FK' ifAbsent: [^nil]. 
			docMenu clear.	
			fkSeleccionada := self selectedForeignKey.
			fkSeleccionada attributes do: [:each | | msg |
				msg := MessageSend receiver: self selector: #removeFKFieldNamed: argument: each name. 
				docMenu addCommand: msg description: each name].].!

onAttributeChanged

	attributesPresenter hasSelection ifFalse: [^attributeDescriptionComposite model: '' asValue].

	attributeDescriptionComposite model: (attributesPresenter selection aspectValue: #description).!

onDragOverAttribute: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	"aDragDropSession suggestedTarget ifNil: [^nil]."
	(aDragDropSession suggestedTarget  == aDragDropSession suggestedSource) ifTrue: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDragOverForeignKey: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	"aDragDropSession suggestedTarget ifNil: [^nil]."
	(aDragDropSession suggestedTarget  == aDragDropSession suggestedSource) ifTrue: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDragOverPrimaryKey: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	"aDragDropSession suggestedTarget ifNil: [^nil]."
	(aDragDropSession suggestedTarget  == aDragDropSession suggestedSource) ifTrue: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDropAttributeOverForeignKey: aDragDropSession

	aDragDropSession suggestedTarget addAttribute:  aDragDropSession suggestedSource.
	aDragDropSession suggestedTarget foreignAttribute: model primaryKey.

	self model: self model!

onDropOverAttributes: aDragDropSession

	aDragDropSession suggestedSource isForeignKey ifFalse: [self onDropPrimaryKeyAttributeOverAttributes: aDragDropSession]
!

onDropOverForeignKey: aDragDropSession

	aDragDropSession suggestedTarget ifNil: [^self createNewForeignKeyFor: aDragDropSession].

	self onDropAttributeOverForeignKey: aDragDropSession!

onDropOverPrimaryKey: aDragDropSession

	model primaryKey addKey: aDragDropSession suggestedSource.
	self model: self model!

onDropPrimaryKeyAttributeOverAttributes: aDragDropSession

	model primaryKey removeKey: aDragDropSession suggestedSource.
	self model: self model!

queryCommand: aCommandQuery 
	"Private - Enters details about a potential command for the receiver into the 
	<CommandQuery>."
	| cmd |

	super queryCommand: aCommandQuery.

	cmd := aCommandQuery commandSymbol.

	cmd == #fkMenu ifTrue: [aCommandQuery isEnabled: true.^true].!

removeFKFieldNamed: fkName

	foreignKeysPresenter hasSelection ifFalse: [^self].

	self selectedForeignKey removeAttributeNamed: fkName.

	self selectedForeignKey attributes isEmpty ifTrue: [model removeForeignKey: self selectedForeignKey].

	self model: self model!

removeForeignKey

	foreignKeysPresenter hasSelection ifFalse: [^self].

	(MessageBox confirm: 'Are you sure to remove this Foreign Key ?') ifFalse: [^self].

	model removeForeignKey: foreignKeysPresenter selection.

	self model: self model!

restoreTableAttributes

	self setTableAttributes: model attributes asOrderedCollection!

selectedAttributeNameIfNone: aNiladicValuable 

	attributesPresenter hasSelection ifFalse: [^aNiladicValuable value].
	^attributesPresenter selection name!

selectedForeignKey

	^foreignKeysPresenter selectionOrNil!

setTableAttributes: anOrderedCollection

	^attributesPresenter model: (ListModel on: (anOrderedCollection asSortedCollection: [:a :b | a name <= b name]))! !
!DBTableComposite categoriesFor: #copyAttributeToClipboard!public! !
!DBTableComposite categoriesFor: #copyFKAttributeName!public! !
!DBTableComposite categoriesFor: #createComponents!public! !
!DBTableComposite categoriesFor: #createNewForeignKeyFor:!drag & drop!public! !
!DBTableComposite categoriesFor: #createSchematicWiring!drag & drop!public! !
!DBTableComposite categoriesFor: #model:!public! !
!DBTableComposite categoriesFor: #onAboutToDisplayMenu:!public! !
!DBTableComposite categoriesFor: #onAttributeChanged!public! !
!DBTableComposite categoriesFor: #onDragOverAttribute:!drag & drop!public! !
!DBTableComposite categoriesFor: #onDragOverForeignKey:!drag & drop!public! !
!DBTableComposite categoriesFor: #onDragOverPrimaryKey:!drag & drop!public! !
!DBTableComposite categoriesFor: #onDropAttributeOverForeignKey:!drag & drop!public! !
!DBTableComposite categoriesFor: #onDropOverAttributes:!drag & drop!public! !
!DBTableComposite categoriesFor: #onDropOverForeignKey:!drag & drop!public! !
!DBTableComposite categoriesFor: #onDropOverPrimaryKey:!drag & drop!public! !
!DBTableComposite categoriesFor: #onDropPrimaryKeyAttributeOverAttributes:!drag & drop!public! !
!DBTableComposite categoriesFor: #queryCommand:!public! !
!DBTableComposite categoriesFor: #removeFKFieldNamed:!drag & drop!public! !
!DBTableComposite categoriesFor: #removeForeignKey!public! !
!DBTableComposite categoriesFor: #restoreTableAttributes!public! !
!DBTableComposite categoriesFor: #selectedAttributeNameIfNone:!public! !
!DBTableComposite categoriesFor: #selectedForeignKey!public! !
!DBTableComposite categoriesFor: #setTableAttributes:!public! !

!DBTableComposite class methodsFor!

defaultModel

	^BBDBTable new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 0 234 256 98 2 410 8 ##(Smalltalk.TextEdit)  98 16 0 560 98 2 8 1140916352 1025 656 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 656 0 8 4294903771 852486 ##(Smalltalk.NullConverter)  0 0 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 4 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 866 331 11 866 571 41 656 1010 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 656 1010 8 #isTextModified: 98 1 32 656 1010 8 #setMarginWidths: 98 1 98 2 3 3 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 5 0 0 0 194 1 0 0 25 0 0 0] 98 0 866 193 193 0 27 8 'name' 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1861 61 560 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 162 3 0 0 30 0 0 0] 98 2 656 410 8 ##(Smalltalk.StaticText)  98 16 0 560 98 2 8 1140850944 1 1552 0 0 0 5 0 786 0 16 818 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 866 193 193 0 1552 0 8 4294903783 914 0 0 0 946 202 208 98 2 1010 1040 98 2 866 51 11 866 241 39 1552 1010 8 #text: 98 1 8 'Table Name' 1552 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 5 0 0 0 145 0 0 0 24 0 0 0] 98 0 1360 0 27 1360 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 1986 8 #fixedParentRight 1 1986 8 #fixedParentTop 1 2064 61 410 432 98 15 0 416 98 2 8 1140850688 131073 2096 0 0 0 5 0 0 0 2096 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 2208 0 946 202 208 98 1 1010 1040 98 2 866 1 61 866 1861 1301 2096 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 162 3 0 0 168 2 0 0] 98 3 410 432 98 15 0 2096 98 2 8 1140850688 131073 2400 0 0 0 5 0 0 0 2400 2162 234 240 98 2 410 432 98 15 0 2400 98 2 8 1140850688 131073 2512 0 0 0 5 0 0 0 2512 2162 234 240 2208 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 2512 98 2 8 1140920397 1025 2640 590662 2 ##(Smalltalk.ListModel)  202 208 2208 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  738 8 4278190080 0 29 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #copyAttributeToClipboard 8 'Copy to Clipboard' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 2640 0 8 4294903759 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 6 920646 5 ##(Smalltalk.ListViewColumn)  8 'Attribute Name' 601 8 #left 3010 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3232 3280 7 513 0 0 0 2640 0 1 0 3266 0 0 3298 7 1 3264 8 'doIt' 8 '[:ctx | 
ctx forecolor:  (ctx item nullable ifTrue: [Color black] ifFalse:[Color darkBlue ])]' 8 #[35 105 17 226 0 159 120 31 161 111 31 162 181 106] 8 #item 8 #nullable 8 ##(Smalltalk.Color)  8 #black 8 #darkBlue 8 #forecolor: 3424 7 257 0 3154 8 'Type' 441 3200 3010 8 #printType 3248 3266 0 0 3298 2 1 3008 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 3648 3664 7 513 0 0 0 2640 0 1 0 0 3154 8 'Nullable' 201 3200 3010 3520 3248 3266 0 0 3298 3 1 3264 8 'doIt' 8 '[:a :b | a nullable printString <= b nullable printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 3520 8 #printString 3792 7 513 0 0 0 2640 0 1 0 0 3154 8 'Is Primary Key ?' 201 3200 3010 8 #isPrimaryKey 98 0 3266 0 0 3298 3 1 3264 8 'doIt' 8 '[:a :b | a isPrimaryKey printString <= b isPrimaryKey printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 3936 3872 3968 7 513 0 0 0 2640 0 1 0 0 3154 8 'Is Foreign Key ?' 201 3200 3010 8 #isForeignKey 98 0 3266 0 0 3298 3 1 3008 8 'doIt' 8 '[:a :b | a isForeignKey printString <= b isForeignKey printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 4096 3872 4128 7 513 0 0 0 2640 0 1 0 0 3154 8 'Is Basic Attribute ?' 221 3200 3010 8 #isBasic 98 0 3266 0 0 3298 3 1 3264 8 'doIt' 8 '[:a :b | a isBasic printString <= b isBasic printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 4256 3872 4288 7 513 0 0 0 2640 0 1 0 0 8 #report 2208 0 131169 0 0 946 202 208 98 3 1010 1040 98 2 866 1 1 866 1473 641 2640 1010 8 #contextMenu: 98 1 2848 2640 1010 1856 98 1 8 'Attribute Name' 2640 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 224 2 0 0 64 1 0 0] 98 0 1360 0 27 8 'attributes' 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1473 641 2512 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 224 2 0 0 64 1 0 0] 98 1 2640 1360 0 27 9 32 234 256 2208 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1861 641 2400 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 162 3 0 0 64 1 0 0] 98 3 2512 410 8 ##(Smalltalk.Splitter)  98 12 0 2400 98 2 8 1140850688 1 4992 0 738 8 4278190080 0 517 0 0 0 4992 946 202 208 98 1 1010 1040 98 2 866 1473 1 866 19 641 4992 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 224 2 0 0 0 0 0 0 233 2 0 0 64 1 0 0] 98 0 1360 0 27 410 432 98 15 0 2400 98 2 8 1140850688 131073 5264 0 0 0 5 0 0 0 5264 2162 234 240 2208 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 5264 98 2 8 1140850688 131073 5392 0 738 8 4278190080 0 5 0 0 0 5392 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 371 641 5392 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 185 0 0 0 64 1 0 0] 2208 1360 0 27 8 'attributeDescription' 0 946 202 208 98 1 1010 1040 98 2 866 1491 1 866 371 641 5264 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 233 2 0 0 0 0 0 0 162 3 0 0 64 1 0 0] 98 1 5392 1360 0 27 1360 0 27 410 5008 98 12 0 2096 98 2 8 1140850688 1 5888 0 738 8 4278190080 0 517 0 0 0 5888 946 202 208 98 1 1010 1040 98 2 866 1 641 866 1861 19 5888 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 64 1 0 0 162 3 0 0 73 1 0 0] 98 0 1360 0 27 410 8 ##(Smalltalk.SlideyInneyOuteyThing)  98 23 0 2096 98 2 8 1409286144 131073 6144 0 738 8 4278190080 0 517 0 0 0 6144 655878 ##(Smalltalk.CardLayout)  202 208 98 1 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Keys' 3266 0 0 3298 6 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Keys'' iconBlock: [BBDBPrimaryKey icon]' 8 #[29 30 34 112 31 161 106 194 105] 6352 6384 8 ##(Smalltalk.BBDBPrimaryKey)  8 #icon 8 #text:iconBlock: 6400 11 1 0 0 410 432 98 15 0 410 8 ##(Smalltalk.SlidingCardTray)  98 22 0 6144 98 2 8 1140850688 131073 6576 0 738 6240 0 5 0 0 0 6576 6272 234 256 2208 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 6144 98 2 8 1140916738 1 6688 2722 202 208 98 1 6368 0 2784 738 6240 0 1 0 0 0 6688 0 8 4294903761 8 ##(Smalltalk.BasicListAbstract)  3072 3104 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 946 202 208 98 3 1010 1040 98 2 866 1 1 866 1861 643 6688 1010 8 #basicSelectionsByIndex: 98 1 98 1 3 6688 1010 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 6688 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 162 3 0 0 65 1 0 0] 98 0 1360 0 27 0 6144 866 33 33 1049862 ##(Smalltalk.ButtonInteractor)  6576 0 590342 ##(Smalltalk.Rectangle)  866 1809 3 866 1841 35 1 2914 8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 946 202 208 98 1 1010 1040 98 2 866 9 9 866 1845 587 6576 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 4 0 0 0 158 3 0 0 41 1 0 0] 98 1 6544 1360 0 27 98 2 8 1140850688 131073 6544 0 0 0 5 0 0 0 6544 2162 234 240 2208 16 234 256 2208 0 946 202 208 98 1 1010 1040 98 2 866 1 37 866 1845 551 6544 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 154 3 0 0 37 1 0 0] 98 3 410 432 98 15 0 6544 98 2 8 1140850688 131073 7712 0 0 0 5 0 0 0 7712 2162 234 240 98 2 410 432 98 15 0 7712 98 2 8 1140850688 131073 7824 0 0 0 5 0 0 0 7824 2162 234 240 2208 32 234 256 98 2 410 2656 98 30 0 7824 98 2 8 1140920397 1025 7952 2722 202 208 2208 0 2784 738 2816 0 29 0 0 0 7952 0 8 4294903759 3010 3040 98 0 3072 3104 0 0 0 0 0 0 202 208 98 3 3154 8 'Attribute Name' 601 3200 3010 3232 98 0 3266 0 0 3298 2 1 3328 3376 3392 3408 3232 8208 7 513 0 0 0 7952 0 1 0 0 3154 3616 441 3200 3010 3648 8192 3266 0 0 3298 2 1 3008 3696 3712 3728 3648 8272 7 513 0 0 0 7952 0 1 0 0 3154 3760 201 3200 3010 3520 8192 3266 0 0 3298 3 1 3008 8 'doIt' 8 '[:a :b | a nullable printString <= a nullable printString]' 8 #[31 105 226 0 159 226 0 159 130 106] 3520 3872 8336 7 513 0 0 0 7952 0 1 0 0 4368 2208 0 131169 0 0 946 202 208 98 2 1010 1040 98 2 866 1 1 866 1371 267 7952 1010 1856 98 1 8 'Attribute Name' 7952 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 173 2 0 0 133 0 0 0] 98 0 1360 0 27 8 'primaryKeyAttributes' 0 946 202 208 98 1 1010 1040 98 2 866 475 1 866 1371 267 7824 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 237 0 0 0 0 0 0 0 154 3 0 0 133 0 0 0] 98 1 7952 1360 0 27 7 32 234 256 2208 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1845 267 7712 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 154 3 0 0 133 0 0 0] 98 3 410 432 98 15 0 7712 98 2 8 1140850688 131073 8976 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 8976 0 234 256 98 2 410 672 98 16 0 8976 98 2 8 1140916352 1025 9104 0 738 8 4278190080 0 5 0 0 0 9104 0 8 4294903771 914 0 0 1 946 202 208 98 3 1010 1040 98 2 866 41 81 866 351 41 9104 1010 1120 98 1 1154 3 1 3 9104 1010 1200 98 1 32 9104 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 40 0 0 0 195 0 0 0 60 0 0 0] 98 0 1360 0 27 8 'primaryKeyName' 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 457 267 8976 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 228 0 0 0 133 0 0 0] 98 2 410 1568 98 16 0 8976 98 2 8 1140850944 1 9648 0 0 0 5 0 786 0 16 818 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 866 193 193 0 9648 0 8 4294903783 914 0 0 0 946 202 208 98 2 1010 1040 98 2 866 41 21 866 351 41 9648 1010 1856 98 1 8 'Primary Key Name' 9648 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 10 0 0 0 195 0 0 0 30 0 0 0] 98 0 1360 0 27 9104 1360 0 27 410 5008 98 12 0 7712 98 2 8 1140850688 1 10016 0 738 5968 0 517 0 0 0 10016 946 202 208 98 1 1010 1040 98 2 866 457 1 866 19 267 10016 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 228 0 0 0 0 0 0 0 237 0 0 0 133 0 0 0] 98 0 1360 0 27 7824 1360 0 27 410 5008 98 12 0 6544 98 2 8 1140850688 1 10256 0 738 5968 0 517 0 0 0 10256 946 202 208 98 1 1010 1040 98 2 866 1 267 866 1845 19 10256 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 133 0 0 0 154 3 0 0 142 0 0 0] 98 0 1360 0 27 410 432 98 15 0 6544 98 2 8 1140850688 131073 10496 0 0 0 5 0 0 0 10496 2162 234 240 2208 32 234 256 98 2 410 2656 98 30 0 10496 98 2 8 1140920397 1025 10624 2722 202 208 2208 0 2784 738 2816 0 29 2834 0 16 98 6 2882 1 2914 8 #removeForeignKey 8 'Remove Foreign Key' 1 1 0 0 0 2834 0 16 98 0 8 'Remove Attribute from FK' 8 #fkMenu 134217729 0 0 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 2882 1 2914 8 #gotoRelatedTable 8 'Goto Related Table' 1 1 0 0 0 10898 4097 2882 1 2914 8 #copyFKAttributeName 8 'Copy Attribute Name' 1 1 0 0 0 8 '' 10880 134217729 0 0 0 0 0 0 0 10624 0 8 4294903759 3010 3040 98 0 3072 3104 0 0 0 0 0 0 202 208 98 3 3154 8 'Foreign Key Name' 561 3200 3010 8 #localName 98 0 3266 0 0 3298 2 1 3328 8 'doIt' 8 '[:a :b | a localName <= b localName]' 8 #[30 105 226 0 226 32 130 106] 11216 11248 7 513 0 0 0 10624 0 1 0 0 3154 8 'Attribute' 601 3200 3010 8 #printAttributeName 98 0 3266 0 0 3298 2 1 3264 8 'doIt' 8 '[:a :b | a printAttributeName <= b printAttributeName]' 8 #[30 105 226 0 226 32 130 106] 11376 11408 7 513 0 0 0 10624 0 1 0 0 3154 8 'Related Table' 401 3200 3010 8 #printRelatedTableName 98 0 3266 0 0 3298 2 1 3008 8 'doIt' 8 '[:a :b | a printRelatedTableName <= b printRelatedTableName]' 8 #[30 105 226 0 226 32 130 106] 11536 11568 7 513 0 0 0 10624 0 1 0 0 4368 2208 0 131169 0 0 946 202 208 98 3 1010 1040 98 2 866 1 1 866 1845 267 10624 1010 4512 98 1 10736 10624 1010 1856 98 1 8 'Foreign Key Name' 10624 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 154 3 0 0 133 0 0 0] 98 0 1360 0 27 8 'foreignKeys' 0 946 202 208 98 1 1010 1040 98 2 866 1 285 866 1845 267 10496 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 142 0 0 0 154 3 0 0 19 1 0 0] 98 1 10624 1360 0 27 1360 0 27 6544 234 256 2208 0 6688 6576 866 201 201 401 1 31 0 0 946 202 208 98 1 1010 1040 98 2 866 1 659 866 1861 643 6144 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 73 1 0 0 162 3 0 0 138 2 0 0] 98 2 6576 6688 1360 0 27 1360 0 27 1954 2000 1 2032 1 2064 61 1986 8 #fixedParentBottom 1 234 256 2208 0 946 202 208 98 1 1010 1040 98 2 866 3199 21 866 1861 1361 416 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 225 9 0 0 178 2 0 0] 98 2 560 2096 1360 0 27 )!

resource_Simple_view
	"Answer the literal data from which the 'Simple view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Simple_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 0 234 256 98 2 410 8 ##(Smalltalk.TextEdit)  98 16 0 560 98 2 8 1140916352 1025 656 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 656 0 8 4294902459 852486 ##(Smalltalk.NullConverter)  0 0 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 4 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 866 331 11 866 571 41 656 1010 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 656 1010 8 #isTextModified: 98 1 32 656 1010 8 #setMarginWidths: 98 1 98 2 3 3 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 5 0 0 0 194 1 0 0 25 0 0 0] 98 0 866 193 193 0 27 8 'name' 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1921 61 560 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 192 3 0 0 30 0 0 0] 98 2 656 410 8 ##(Smalltalk.StaticText)  98 16 0 560 98 2 8 1140850944 1 1552 0 0 0 5 0 786 0 16 818 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 866 193 193 0 1552 0 8 4294902463 914 0 0 0 946 202 208 98 2 1010 1040 98 2 866 51 11 866 241 39 1552 1010 8 #text: 98 1 8 'Table Name' 1552 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 5 0 0 0 145 0 0 0 24 0 0 0] 98 0 1360 0 27 1360 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 1994 2016 8 #fixedParentRight 1 1994 2016 8 #fixedParentTop 1 2080 61 410 432 98 15 0 416 98 2 8 1140850688 131073 2112 0 0 0 5 0 0 0 2112 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 2224 0 946 202 208 98 1 1010 1040 98 2 866 1 61 866 1921 771 2112 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 192 3 0 0 159 1 0 0] 98 1 410 432 98 15 0 2112 98 2 8 1140850688 131073 2416 0 0 0 5 0 0 0 2416 2178 234 240 98 2 410 432 98 15 0 2416 98 2 8 1140850688 131073 2528 0 0 0 5 0 0 0 2528 2178 234 240 2224 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 2528 98 2 8 1140920397 1025 2656 590662 2 ##(Smalltalk.ListModel)  202 208 2224 0 1994 8 ##(Smalltalk.SearchPolicy)  8 #identity 738 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #copyAttributeToClipboard 8 'Copy to Clipboard' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 2656 0 8 4294902465 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1994 8 ##(Smalltalk.IconImageManager)  8 #current 0 0 0 0 0 0 202 208 98 6 920646 5 ##(Smalltalk.ListViewColumn)  8 'Attribute Name' 601 8 #left 3042 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3280 3328 7 513 0 0 0 2656 0 1 0 3314 0 0 3346 7 1 3312 8 'doIt' 8 '[:ctx | 
ctx forecolor:  (ctx item nullable ifTrue: [Color black] ifFalse:[Color darkBlue ])]' 8 #[35 105 17 226 0 159 120 31 161 111 31 162 181 106] 8 #item 8 #nullable 8 ##(Smalltalk.Color)  8 #black 8 #darkBlue 8 #forecolor: 3472 7 257 0 3202 8 'Type' 441 3248 3042 8 #printType 3296 3314 0 0 3346 2 1 3040 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 3696 3712 7 513 0 0 0 2656 0 1 0 0 3202 8 'Nullable' 201 3248 3042 3568 3296 3314 0 0 3346 3 1 3312 8 'doIt' 8 '[:a :b | a nullable printString <= b nullable printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 3568 8 #printString 3840 7 513 0 0 0 2656 0 1 0 0 3202 8 'Is Primary Key ?' 201 3248 3042 8 #isPrimaryKey 98 0 3314 0 0 3346 3 1 3312 8 'doIt' 8 '[:a :b | a isPrimaryKey printString <= b isPrimaryKey printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 3984 3920 4016 7 513 0 0 0 2656 0 1 0 0 3202 8 'Is Foreign Key ?' 201 3248 3042 8 #isForeignKey 98 0 3314 0 0 3346 3 1 3040 8 'doIt' 8 '[:a :b | a isForeignKey printString <= b isForeignKey printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 4144 3920 4176 7 513 0 0 0 2656 0 1 0 0 3202 8 'Is Basic Attribute ?' 221 3248 3042 8 #isBasic 98 0 3314 0 0 3346 3 1 3312 8 'doIt' 8 '[:a :b | a isBasic printString <= b isBasic printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 4304 3920 4336 7 513 0 0 0 2656 0 1 0 0 8 #report 2224 0 131169 0 0 946 202 208 98 3 1010 1040 98 2 866 1 1 866 1921 501 2656 1010 8 #contextMenu: 98 1 2880 2656 1010 1856 98 1 8 'Attribute Name' 2656 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 192 3 0 0 250 0 0 0] 98 0 1360 0 27 8 'attributes' 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1921 501 2528 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 192 3 0 0 250 0 0 0] 98 1 2656 1360 0 27 5 16 234 256 2224 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1921 771 2416 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 192 3 0 0 129 1 0 0] 98 3 2528 410 8 ##(Smalltalk.Splitter)  98 12 0 2416 98 2 8 1140850688 1 5040 0 738 8 4278190080 0 517 0 0 0 5040 946 202 208 98 1 1010 1040 98 2 866 1 501 866 1921 19 5040 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 250 0 0 0 192 3 0 0 3 1 0 0] 98 0 1360 0 27 410 432 98 15 0 2416 98 2 8 1140850688 131073 5312 0 0 0 5 0 0 0 5312 2178 234 240 98 2 410 2672 98 30 0 5312 98 2 8 1140920397 1025 5424 2738 202 208 2224 0 2784 738 8 4278190080 0 5 2866 0 16 98 2 2914 1 2946 8 #copyFKAttributeName 8 'Copy Attribute Name' 1 1 0 0 0 2914 1 2946 8 #gotoRelatedTable 8 'Goto Related Table' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 5424 0 8 4294902465 3042 3072 98 0 3104 3120 0 0 0 0 0 0 202 208 98 3 3202 8 'Foreign Key Name' 561 3248 3042 8 #localName 98 0 3314 0 0 3346 2 1 3376 8 'doIt' 8 '[:a :b | a localName <= b localName]' 8 #[30 105 226 0 226 32 130 106] 5856 5888 7 513 0 0 0 5424 0 1 0 0 3202 8 'Attribute' 601 3248 3042 8 #printAttributeName 98 0 3314 0 0 3346 2 1 3312 8 'doIt' 8 '[:a :b | a printAttributeName <= b printAttributeName]' 8 #[30 105 226 0 226 32 130 106] 6016 6048 7 513 0 0 0 5424 0 1 0 0 3202 8 'Related Table' 401 3248 3042 8 #printRelatedTableName 98 0 3314 0 0 3346 2 1 3040 8 'doIt' 8 '[:a :b | a printRelatedTableName <= b printRelatedTableName]' 8 #[30 105 226 0 226 32 130 106] 6176 6208 7 513 0 0 0 5424 0 1 0 0 4416 2224 0 131169 0 0 946 202 208 98 3 1010 1040 98 2 866 1 1 866 1427 253 5424 1010 4560 98 1 5552 5424 1010 1856 98 1 8 'Foreign Key Name' 5424 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 201 2 0 0 126 0 0 0] 98 0 1360 0 27 7 32 234 256 98 4 5424 8 'foreignKeys' 410 8 ##(Smalltalk.ReferenceView)  98 14 0 5312 98 2 8 1140850688 131073 6576 0 738 8 4278190080 0 5 0 0 0 6576 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 946 202 208 98 1 1010 1040 98 2 866 1445 1 866 477 253 6576 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 210 2 0 0 0 0 0 0 192 3 0 0 126 0 0 0] 2224 1360 0 27 8 'attributeDescription' 0 946 202 208 98 1 1010 1040 98 2 866 1 519 866 1921 253 5312 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 3 1 0 0 192 3 0 0 129 1 0 0] 98 3 5424 410 5056 98 12 0 5312 98 2 8 1140850688 1 7072 0 738 8 4278190080 0 517 0 0 0 7072 946 202 208 98 1 1010 1040 98 2 866 1427 1 866 19 253 7072 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 201 2 0 0 0 0 0 0 210 2 0 0 126 0 0 0] 98 0 1360 0 27 6576 1360 0 27 1360 0 27 1360 0 27 1954 2000 1 2048 1 2080 61 1994 2016 8 #fixedParentBottom 1 234 256 2224 0 946 202 208 98 1 1010 1040 98 2 866 2879 21 866 1921 831 416 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 95 9 0 0 169 1 0 0] 98 2 560 2112 1360 0 27 )! !
!DBTableComposite class categoriesFor: #defaultModel!public! !
!DBTableComposite class categoriesFor: #resource_Default_view!public!resources-views! !
!DBTableComposite class categoriesFor: #resource_Simple_view!public!resources-views! !

