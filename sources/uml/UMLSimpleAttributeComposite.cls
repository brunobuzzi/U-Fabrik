"Filed out from Dolphin Smalltalk 7"!

UMLAttributeComposite subclass: #UMLSimpleAttributeComposite
	instanceVariableNames: 'namePresenter aliasPresenter descriptionPresenter originalTypePresenter typePresenter ownerClassPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLSimpleAttributeComposite guid: (GUID fromString: '{d150fec2-89b4-4fcf-a528-08feb9a97f0b}')!
UMLSimpleAttributeComposite comment: ''!
!UMLSimpleAttributeComposite categoriesForClass!Unclassified! !
!UMLSimpleAttributeComposite methodsFor!

createComponents

	super createComponents.

	namePresenter := self add: TextPresenter new name: 'namePresenter'.
	aliasPresenter := self add: TextPresenter new name: 'aliasPresenter'.
	descriptionPresenter := self add: TextPresenter new name: 'descriptionPresenter'.
	originalTypePresenter := self add: TextPresenter new name: 'originalTypePresenter'.
	typePresenter := self add: ListPresenter new name: 'typePresenter'.
	ownerClassPresenter := self add: ListPresenter new name: 'ownerClassPresenter'.!

model: anUMLClassAttribute

	super model: anUMLClassAttribute.

	aliasPresenter model: (anUMLClassAttribute aspectValue: #alias).
	namePresenter model: (anUMLClassAttribute aspectValue: #name).
	descriptionPresenter model: (anUMLClassAttribute aspectValue: #description).
	originalTypePresenter model: (anUMLClassAttribute aspectValue: #originalType).
!

onViewOpened

	super onViewOpened.

	typePresenter model: (ListModel on: self defaultVirtualMachine basicClasses).
	ownerClassPresenter model: (ListModel on: (self defaultVirtualMachine getAllClasses asSortedCollection: [:a :b | a name <= b name])).

	typePresenter selection: model type ifAbsent: [].
	ownerClassPresenter selection: model umlClass ifAbsent: [].!

selectedType

	^typePresenter selectionOrNil! !
!UMLSimpleAttributeComposite categoriesFor: #createComponents!public! !
!UMLSimpleAttributeComposite categoriesFor: #model:!public! !
!UMLSimpleAttributeComposite categoriesFor: #onViewOpened!public! !
!UMLSimpleAttributeComposite categoriesFor: #selectedType!public! !

!UMLSimpleAttributeComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 416 0 234 256 98 12 410 8 ##(Smalltalk.ComboBox)  98 17 0 416 98 2 8 1412498947 1025 560 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 560 0 8 4294902803 459270 ##(Smalltalk.Message)  8 #name 688 688 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  291 411 978 521 47 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 205 0 0 0 149 1 0 0 228 0 0 0] 98 0 978 193 193 0 27 8 'ownerClassPresenter' 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916352 1025 1120 0 738 8 4278190080 0 7 0 0 0 1120 0 8 4294902595 852486 ##(Smalltalk.NullConverter)  0 0 1 850 202 208 98 3 914 944 98 2 978 291 191 978 521 39 1120 914 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1120 914 8 #isTextModified: 98 1 32 1120 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 95 0 0 0 149 1 0 0 114 0 0 0] 98 0 1088 0 27 8 'descriptionPresenter' 410 1136 98 16 0 416 98 2 8 1140916352 1025 1584 0 738 1216 0 7 0 0 0 1584 0 8 4294902595 1250 0 0 1 850 202 208 98 3 914 944 98 2 978 291 261 978 521 39 1584 914 1408 98 1 1442 3 1 3 1584 914 1488 98 1 32 1584 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 130 0 0 0 149 1 0 0 149 0 0 0] 98 0 1088 0 27 8 'originalTypePresenter' 410 576 98 17 0 416 98 2 8 1412498947 1025 1952 642 202 208 688 0 720 738 768 0 5 0 0 0 1952 0 8 4294902803 802 832 688 688 401 850 202 208 98 1 914 944 98 2 978 291 331 978 521 47 1952 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 165 0 0 0 149 1 0 0 188 0 0 0] 98 0 1088 0 27 8 'typePresenter' 410 1136 98 16 0 416 98 2 8 1140916352 1025 2272 0 738 1216 0 7 0 0 0 2272 0 8 4294902595 1250 0 0 1 850 202 208 98 3 914 944 98 2 978 291 51 978 521 41 2272 914 1408 98 1 1442 3 1 3 2272 914 1488 98 1 32 2272 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 25 0 0 0 149 1 0 0 45 0 0 0] 98 0 1088 0 27 8 'namePresenter' 410 1136 98 16 0 416 98 2 8 1140916352 1025 2640 0 738 1216 0 7 0 0 0 2640 0 8 4294902595 1250 0 0 1 850 202 208 98 3 914 944 98 2 978 291 121 978 521 41 2640 914 1408 98 1 1442 3 1 3 2640 914 1488 98 1 32 2640 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 60 0 0 0 149 1 0 0 80 0 0 0] 98 0 1088 0 27 8 'aliasPresenter' 0 850 202 208 98 1 914 944 98 2 978 2879 21 978 841 481 416 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 67 7 0 0 250 0 0 0] 98 12 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 1 3168 0 0 0 7 0 0 0 3168 0 8 4294902799 1250 0 0 0 850 202 208 98 2 914 944 98 2 978 21 51 978 241 39 3168 914 8 #text: 98 1 8 'Name' 3168 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 25 0 0 0 130 0 0 0 44 0 0 0] 98 0 1088 0 27 410 3184 98 16 0 416 98 2 8 1140850944 1 3504 0 0 0 7 0 0 0 3504 0 8 4294902799 1250 0 0 0 850 202 208 98 2 914 944 98 2 978 21 121 978 241 39 3504 914 3408 98 1 8 'Alias' 3504 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 60 0 0 0 130 0 0 0 79 0 0 0] 98 0 1088 0 27 410 3184 98 16 0 416 98 2 8 1140850944 1 3808 0 0 0 7 0 0 0 3808 0 8 4294902799 1250 0 0 0 850 202 208 98 2 914 944 98 2 978 21 191 978 241 39 3808 914 3408 98 1 8 'Description' 3808 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 95 0 0 0 130 0 0 0 114 0 0 0] 98 0 1088 0 27 410 3184 98 16 0 416 98 2 8 1140850944 1 4112 0 0 0 7 0 0 0 4112 0 8 4294902799 1250 0 0 0 850 202 208 98 2 914 944 98 2 978 21 271 978 241 39 4112 914 3408 98 1 8 'Original Type' 4112 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 135 0 0 0 130 0 0 0 154 0 0 0] 98 0 1088 0 27 410 3184 98 16 0 416 98 2 8 1140850944 1 4416 0 0 0 7 0 0 0 4416 0 8 4294902799 1250 0 0 0 850 202 208 98 2 914 944 98 2 978 21 341 978 241 39 4416 914 3408 98 1 8 'Type' 4416 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 170 0 0 0 130 0 0 0 189 0 0 0] 98 0 1088 0 27 410 3184 98 16 0 416 98 2 8 1140850944 1 4720 0 0 0 7 0 0 0 4720 0 8 4294902799 1250 0 0 0 850 202 208 98 2 914 944 98 2 978 21 411 978 241 39 4720 914 3408 98 1 8 'Owner Class' 4720 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 205 0 0 0 130 0 0 0 224 0 0 0] 98 0 1088 0 27 2272 2640 1120 1584 1952 560 1088 0 27 )! !
!UMLSimpleAttributeComposite class categoriesFor: #resource_Default_view!public!resources-views! !

