"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBForeignKeyComposite
	instanceVariableNames: 'localNamePresenter tableNamePresenter relatedTableNamePresenter attibutesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBForeignKeyComposite guid: (GUID fromString: '{cf7f2e43-eb8a-43b5-b3ad-ad03865fb33f}')!
DBForeignKeyComposite comment: ''!
!DBForeignKeyComposite categoriesForClass!Unclassified! !
!DBForeignKeyComposite methodsFor!

createComponents

	super createComponents.

	localNamePresenter := self add: TextPresenter new name: 'localName'.
	tableNamePresenter := self add: TextPresenter new name: 'tableName'.
	relatedTableNamePresenter := self add: TextPresenter new name: 'relatedTableName'.
	attibutesPresenter := self add: ListPresenter new name: 'attributes'.!

model: aBBDBForeignKey

	super model: aBBDBForeignKey.

	localNamePresenter model: (aBBDBForeignKey aspectValue: #localName).

	tableNamePresenter value: aBBDBForeignKey tableName.

	relatedTableNamePresenter value: aBBDBForeignKey relatedTableName.

	attibutesPresenter model: (ListModel on: aBBDBForeignKey attributesAsSortedCollection)! !
!DBForeignKeyComposite categoriesFor: #createComponents!public! !
!DBForeignKeyComposite categoriesFor: #model:!public! !

!DBForeignKeyComposite class methodsFor!

defaultModel

	^BBDBForeignKey new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 0 234 256 98 6 410 8 ##(Smalltalk.TextEdit)  98 16 0 560 98 2 8 1140916352 1025 656 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 656 0 8 4294902613 852486 ##(Smalltalk.NullConverter)  0 0 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 4 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 866 381 11 866 571 41 656 1010 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 656 1010 8 #isTextModified: 98 1 32 656 1010 8 #setMarginWidths: 98 1 98 2 3 3 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 190 0 0 0 5 0 0 0 219 1 0 0 25 0 0 0] 98 0 866 193 193 0 27 8 'localName' 410 672 98 16 0 560 98 2 8 1140916352 1025 1392 0 738 768 0 5 0 786 0 16 818 848 866 193 193 0 1392 0 8 4294902613 914 0 0 1 946 202 208 98 4 1010 1040 98 2 866 381 61 866 571 41 1392 1010 1120 98 1 1154 3 1 3 1392 1010 1200 98 1 32 1392 1010 1248 98 1 98 2 3 3 1392 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 190 0 0 0 30 0 0 0 219 1 0 0 50 0 0 0] 98 0 1360 0 27 8 'tableName' 410 672 98 16 0 560 98 2 8 1140916352 1025 1856 0 738 768 0 5 0 786 0 16 818 848 866 193 193 0 1856 0 8 4294902613 914 0 0 1 946 202 208 98 4 1010 1040 98 2 866 381 111 866 571 41 1856 1010 1120 98 1 1154 3 1 3 1856 1010 1200 98 1 32 1856 1010 1248 98 1 98 2 3 3 1856 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 190 0 0 0 55 0 0 0 219 1 0 0 75 0 0 0] 98 0 1360 0 27 8 'relatedTableName' 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1261 181 560 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 118 2 0 0 90 0 0 0] 98 6 656 1392 1856 410 8 ##(Smalltalk.StaticText)  98 16 0 560 98 2 8 1140850944 1 2480 0 0 0 5 0 786 0 16 818 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 866 193 193 0 2480 0 8 4294902131 914 0 0 0 946 202 208 98 2 1010 1040 98 2 866 21 11 866 321 41 2480 1010 8 #text: 98 1 8 'Foreign key name' 2480 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 5 0 0 0 170 0 0 0 25 0 0 0] 98 0 1360 0 27 410 2496 98 16 0 560 98 2 8 1140850944 1 2880 0 0 0 5 0 786 0 16 818 2592 866 193 193 0 2880 0 8 4294902131 914 0 0 0 946 202 208 98 2 1010 1040 98 2 866 21 61 866 321 41 2880 1010 2784 98 1 8 'Table name' 2880 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 30 0 0 0 170 0 0 0 50 0 0 0] 98 0 1360 0 27 410 2496 98 16 0 560 98 2 8 1140850944 1 3232 0 0 0 5 0 786 0 16 818 2592 866 193 193 0 3232 0 8 4294902131 914 0 0 0 946 202 208 98 2 1010 1040 98 2 866 21 111 866 321 41 3232 1010 2784 98 1 8 'Related table name' 3232 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 55 0 0 0 170 0 0 0 75 0 0 0] 98 0 1360 0 27 1360 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 3626 3648 8 #fixedParentRight 1 3626 3648 8 #fixedParentTop 1 3712 181 410 432 98 15 0 416 98 2 8 1140850688 131073 3744 0 0 0 5 0 0 0 3744 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 3856 0 946 202 208 98 1 1010 1040 98 2 866 1 181 866 1261 501 3744 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 90 0 0 0 118 2 0 0 84 1 0 0] 98 1 410 432 98 15 0 3744 98 2 8 1140850688 131073 4048 0 0 0 5 0 0 0 4048 3810 234 240 3856 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 4048 98 2 8 1140920397 1025 4176 590662 2 ##(Smalltalk.ListModel)  202 208 3856 0 3626 8 ##(Smalltalk.SearchPolicy)  8 #identity 738 8 4278190080 0 5 0 0 0 4176 0 8 4294902013 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  3626 8 ##(Smalltalk.IconImageManager)  8 #current 0 0 0 0 0 0 202 208 98 3 920646 5 ##(Smalltalk.ListViewColumn)  8 'Attribute Name' 601 8 #left 4402 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 4640 4688 7 513 0 0 0 4176 0 1 0 0 4562 8 'Type' 441 4608 4402 8 #printType 4656 4674 0 0 4706 2 1 4400 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 4880 4896 7 513 0 0 0 4176 0 1 0 0 4562 8 'Nullable' 201 4608 4402 8 #nullable 4656 4674 0 0 4706 3 1 4400 8 'doIt' 8 '[:a :b | a nullable printString <= a nullable printString]' 8 #[31 105 226 0 159 226 0 159 130 106] 5024 8 #printString 5040 7 513 0 0 0 4176 0 1 0 0 8 #report 3856 0 131169 0 0 946 202 208 98 2 1010 1040 98 2 866 1 1 866 1261 501 4176 1010 2784 98 1 8 'Attribute Name' 4176 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 118 2 0 0 250 0 0 0] 98 0 1360 0 27 8 'attributes' 0 946 202 208 98 1 1010 1040 98 2 866 1 1 866 1261 501 4048 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 118 2 0 0 250 0 0 0] 98 1 4176 1360 0 27 1360 0 27 3586 3632 1 3680 1 3712 181 3626 3648 8 #fixedParentBottom 1 234 256 3856 0 946 202 208 98 1 1010 1040 98 2 866 2879 21 866 1261 681 416 1298 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 21 8 0 0 94 1 0 0] 98 2 560 3744 1360 0 27 )! !
!DBForeignKeyComposite class categoriesFor: #defaultModel!public! !
!DBForeignKeyComposite class categoriesFor: #resource_Default_view!public!resources-views! !

