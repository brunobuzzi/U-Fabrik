"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLCollectionDescriptorPresenter
	instanceVariableNames: 'cardNamePresenter iconsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCollectionDescriptorPresenter guid: (GUID fromString: '{732dd47f-3135-4a96-9a8c-6856ac336927}')!
UMLCollectionDescriptorPresenter comment: ''!
!UMLCollectionDescriptorPresenter categoriesForClass!MVP-Resources-UFabrik! !
!UMLCollectionDescriptorPresenter methodsFor!

createComponents

	super createComponents.

	cardNamePresenter := self add: TextPresenter new name: 'cardName'.
	iconsPresenter := self add: ListPresenter new name: 'icons'.!

createSchematicWiring

	super createSchematicWiring.

	iconsPresenter when: #selectionChanged send: #onIconChanged to: self!

model: anUMLCardViewDescriptor

	super model: anUMLCardViewDescriptor.

	cardNamePresenter model: (anUMLCardViewDescriptor aspectValue: #label).

	iconsPresenter model: IconWrapper getAll.

	iconsPresenter selection: anUMLCardViewDescriptor iconLabel ifAbsent: [].!

onIconChanged

	iconsPresenter hasSelection ifFalse: [^self].

	model iconLabel: iconsPresenter selection icon! !
!UMLCollectionDescriptorPresenter categoriesFor: #createComponents!public! !
!UMLCollectionDescriptorPresenter categoriesFor: #createSchematicWiring!public! !
!UMLCollectionDescriptorPresenter categoriesFor: #model:!public! !
!UMLCollectionDescriptorPresenter categoriesFor: #onIconChanged!public! !

!UMLCollectionDescriptorPresenter class methodsFor!

defaultModel

	^UMLCardViewDescriptor new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 416 0 234 256 98 4 410 8 ##(Smalltalk.ListView)  98 30 0 416 98 2 8 1140920398 1025 560 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.SearchPolicy)  8 #identity 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 560 0 8 4294902707 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  714 8 ##(Smalltalk.IconImageManager)  8 #current 0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Column 1' 201 8 #left 834 864 880 8 ##(Smalltalk.SortedCollection)  0 0 560 0 1 0 0 8 #smallIcons 688 0 131169 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  21 201 1234 901 311 560 1170 8 #text: 98 1 8 'Column 1' 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 100 0 0 0 204 1 0 0 255 0 0 0] 98 0 1234 193 193 0 27 8 'icons' 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916352 1025 1440 0 770 8 4278190080 0 5 0 0 0 1440 0 8 4294902745 852486 ##(Smalltalk.NullConverter)  0 0 1 1106 202 208 98 3 1170 1200 98 2 1234 41 81 1234 861 41 1440 1170 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1440 1170 8 #isTextModified: 98 1 32 1440 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 40 0 0 0 194 1 0 0 60 0 0 0] 98 0 1408 0 27 8 'cardName' 0 1106 202 208 98 1 1170 1200 98 2 1234 2879 21 1234 941 571 416 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 117 7 0 0 39 1 0 0] 98 3 1440 410 8 ##(Smalltalk.GroupBox)  98 14 0 416 98 2 8 1140850695 65 2064 0 770 8 4278190080 0 5 0 0 0 2064 0 8 4294902723 1106 202 208 98 2 1170 1200 98 2 1234 21 21 1234 901 141 2064 1170 1296 98 1 8 'Card Name' 2064 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 204 1 0 0 80 0 0 0] 98 0 1408 0 27 560 1408 0 27 )! !
!UMLCollectionDescriptorPresenter class categoriesFor: #defaultModel!public! !
!UMLCollectionDescriptorPresenter class categoriesFor: #resource_Default_view!public!resources-views! !

