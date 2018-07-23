"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBPrimaryKeyComposite
	instanceVariableNames: 'primaryKeyNamePresenter primaryKeyAttributesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBPrimaryKeyComposite guid: (GUID fromString: '{62bf7bce-34df-402e-8af6-fa0437da1dc9}')!
DBPrimaryKeyComposite comment: ''!
!DBPrimaryKeyComposite categoriesForClass!Unclassified! !
!DBPrimaryKeyComposite methodsFor!

createComponents

	super createComponents.

	primaryKeyNamePresenter := self add: TextPresenter new name: 'primaryKeyName'.
	primaryKeyAttributesPresenter := self add: ListPresenter new name: 'primaryKeyAttributes'.
!

model: aBBDBPrimaryKey

	super model: aBBDBPrimaryKey.

	primaryKeyNamePresenter value: aBBDBPrimaryKey name.
	primaryKeyAttributesPresenter model: (ListModel on: aBBDBPrimaryKey keyAttributes asOrderedCollection).! !
!DBPrimaryKeyComposite categoriesFor: #createComponents!public! !
!DBPrimaryKeyComposite categoriesFor: #model:!public! !

!DBPrimaryKeyComposite class methodsFor!

defaultModel

	^BBDBPrimaryKey new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 6 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 1 560 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 560 0 8 4294902131 852486 ##(Smalltalk.NullConverter)  0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 722 21 31 722 351 41 560 866 8 #text: 98 1 8 'Primary Key Name' 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 15 0 0 0 185 0 0 0 35 0 0 0] 98 0 722 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 21 1146 1168 8 #fixedViewLeft 351 1146 1168 8 #fixedParentTop 31 1146 1168 8 #fixedViewTop 41 410 8 ##(Smalltalk.ListView)  98 30 0 416 98 2 8 1140920397 1025 1296 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1146 8 ##(Smalltalk.SearchPolicy)  8 #identity 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 1296 0 8 4294902013 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1146 8 ##(Smalltalk.IconImageManager)  8 #current 0 0 0 0 0 0 202 208 98 3 920646 5 ##(Smalltalk.ListViewColumn)  8 'Attribute Name' 601 8 #left 1554 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 1792 1840 7 513 0 0 0 1296 0 1 0 0 1714 8 'Type' 441 1760 1554 8 #printType 1808 1826 0 0 1858 2 1 1552 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 2032 2048 7 513 0 0 0 1296 0 1 0 0 1714 8 'Nullable' 201 1760 1554 8 #nullable 1808 1826 0 0 1858 3 1 1552 8 'doIt' 8 '[:a :b | a nullable printString <= a nullable printString]' 8 #[31 105 226 0 159 226 0 159 130 106] 2176 8 #printString 2192 7 513 0 0 0 1296 0 1 0 0 8 #report 1424 0 131169 0 0 802 202 208 98 2 866 896 98 2 722 1 101 722 1251 241 1296 866 976 98 1 8 'Attribute Name' 1296 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 50 0 0 0 113 2 0 0 170 0 0 0] 98 0 1088 0 27 1106 1152 1 1146 1168 8 #fixedParentRight 1 1232 101 1146 1168 8 #fixedParentBottom 1 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916352 1025 2592 0 1490 8 4278190080 0 5 0 0 0 2592 0 8 4294902613 770 0 0 1 802 202 208 98 3 866 896 98 2 722 381 31 722 351 41 2592 866 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 2592 866 8 #isTextModified: 98 1 32 2592 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 190 0 0 0 15 0 0 0 109 1 0 0 35 0 0 0] 98 0 1088 0 27 1106 1152 381 1200 351 1232 31 1264 41 234 256 98 4 2592 8 'primaryKeyName' 1296 8 'primaryKeyAttributes' 0 802 202 208 98 1 866 896 98 2 722 2879 21 722 1251 341 416 1026 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 16 8 0 0 180 0 0 0] 98 3 560 2592 1296 1088 0 27 )! !
!DBPrimaryKeyComposite class categoriesFor: #defaultModel!public! !
!DBPrimaryKeyComposite class categoriesFor: #resource_Default_view!public!resources-views! !

