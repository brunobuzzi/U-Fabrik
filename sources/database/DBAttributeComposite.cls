"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBAttributeComposite
	instanceVariableNames: 'namePresenter typePresenter isNullablePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBAttributeComposite guid: (GUID fromString: '{ef4f0174-77d8-4725-bef7-090e0baefd0c}')!
DBAttributeComposite comment: ''!
!DBAttributeComposite categoriesForClass!Unclassified! !
!DBAttributeComposite methodsFor!

createComponents

	super createComponents.

	namePresenter := self add: TextPresenter new name: 'name'.
	typePresenter := self add: TextPresenter new name: 'type'.
	isNullablePresenter := self add: BooleanPresenter new name: 'isNullable'.!

model: aBBDBAttribute

	super model: aBBDBAttribute.

	namePresenter model: (aBBDBAttribute aspectValue: #name).
	isNullablePresenter model: (aBBDBAttribute aspectValue: #nullable).

	typePresenter value: aBBDBAttribute printType.! !
!DBAttributeComposite categoriesFor: #createComponents!public! !
!DBAttributeComposite categoriesFor: #model:!public! !

!DBAttributeComposite class methodsFor!

defaultModel

	^BBDBAttribute new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 12 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 1 560 0 0 0 7 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 560 0 8 4294902131 852486 ##(Smalltalk.NullConverter)  0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 722 41 81 722 241 39 560 866 8 #text: 98 1 8 'Attribute Type' 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 40 0 0 0 140 0 0 0 59 0 0 0] 98 0 722 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 41 1146 1168 8 #fixedViewLeft 241 1146 1168 8 #fixedParentTop 81 1146 1168 8 #fixedViewTop 39 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916352 1025 1296 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 642 0 16 674 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 722 193 193 0 1296 0 8 4294902613 770 0 0 1 802 202 208 98 4 866 896 98 2 722 361 21 722 571 41 1296 866 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1296 866 8 #isTextModified: 98 1 32 1296 866 8 #setMarginWidths: 98 1 98 2 3 3 1296 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 180 0 0 0 10 0 0 0 209 1 0 0 30 0 0 0] 98 0 1088 0 27 1106 1152 361 1200 571 1232 21 1264 41 410 1312 98 16 0 416 98 2 8 1140916352 1025 1888 0 1378 1408 0 7 0 642 0 16 674 1456 722 193 193 0 1888 0 8 4294902613 770 0 0 1 802 202 208 98 4 866 896 98 2 722 361 81 722 571 41 1888 866 1648 98 1 1682 3 1 3 1888 866 1728 98 1 32 1888 866 1776 98 1 98 2 3 3 1888 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 180 0 0 0 40 0 0 0 209 1 0 0 60 0 0 0] 98 0 1088 0 27 1106 1152 361 1200 571 1232 81 1264 41 410 576 98 16 0 416 98 2 8 1140850944 1 2352 0 0 0 7 0 642 0 16 674 704 722 193 193 0 2352 0 8 4294902131 770 0 0 0 802 202 208 98 2 866 896 98 2 722 41 21 722 241 39 2352 866 976 98 1 8 'Attribute Name' 2352 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 10 0 0 0 140 0 0 0 29 0 0 0] 98 0 1088 0 27 1106 1152 41 1200 241 1232 21 1264 39 410 576 98 16 0 416 98 2 8 1140850944 1 2720 0 0 0 7 0 642 0 16 674 704 722 193 193 0 2720 0 8 4294902131 770 0 0 0 802 202 208 98 2 866 896 98 2 722 41 141 722 241 39 2720 866 976 98 1 8 'Nullable' 2720 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 70 0 0 0 140 0 0 0 89 0 0 0] 98 0 1088 0 27 1106 1152 41 1200 241 1232 141 1264 39 410 8 ##(Smalltalk.CheckBox)  98 16 0 416 98 2 8 1409363203 1 3088 721990 2 ##(Smalltalk.ValueHolder)  0 0 1146 8 ##(Smalltalk.SearchPolicy)  8 #never 32 0 0 5 0 0 0 3088 0 8 4294902087 770 0 0 0 802 202 208 98 2 866 896 98 2 722 361 141 722 571 41 3088 866 976 98 1 8 ' is nullable ?' 3088 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 180 0 0 0 70 0 0 0 209 1 0 0 90 0 0 0] 98 0 1088 0 27 1106 1152 361 1200 571 1232 141 1264 41 234 256 98 6 1888 8 'type' 1296 8 'name' 3088 8 'isNullable' 0 802 202 208 98 1 866 896 98 2 722 2879 21 722 971 221 416 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 132 7 0 0 120 0 0 0] 98 6 1296 560 1888 2352 2720 3088 1088 0 27 )! !
!DBAttributeComposite class categoriesFor: #defaultModel!public! !
!DBAttributeComposite class categoriesFor: #resource_Default_view!public!resources-views! !

