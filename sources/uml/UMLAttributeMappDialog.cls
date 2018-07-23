"Filed out from Dolphin Smalltalk 7"!

UMLDialog subclass: #UMLAttributeMappDialog
	instanceVariableNames: 'typePresenter classPresenter value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAttributeMappDialog guid: (GUID fromString: '{bccdca8a-737f-44dd-b3cb-1e3bb9a5bd57}')!
UMLAttributeMappDialog comment: ''!
!UMLAttributeMappDialog categoriesForClass!Unclassified! !
!UMLAttributeMappDialog methodsFor!

answer

	^value!

apply

	value := OrderedCollection with: typePresenter value with: classPresenter selection!

createComponents

	super createComponents.

	typePresenter := self add: TextPresenter new name: 'typePresenter'.
	classPresenter := self add: ListPresenter new name: 'classPresenter'.!

ok

	self answer.

	super ok.!

onViewOpened

	super onViewOpened.

	classPresenter model: (ListModel on: (self defaultVirtualMachine classes asSortedCollection: [:a :b | a name <= b name]))! !
!UMLAttributeMappDialog categoriesFor: #answer!public! !
!UMLAttributeMappDialog categoriesFor: #apply!public! !
!UMLAttributeMappDialog categoriesFor: #createComponents!public! !
!UMLAttributeMappDialog categoriesFor: #ok!public! !
!UMLAttributeMappDialog categoriesFor: #onViewOpened!public! !

!UMLAttributeMappDialog class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 26214401 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  991 351 679 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 592 0 0 0 7 0 0 0 592 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Presenter)  8 #resource_OK_Cancel_button_block 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 21 205 530 939 71 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 102 0 0 0 223 1 0 0 137 0 0 0] 98 0 530 193 193 0 27 0 0 0 234 256 98 4 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916352 1025 1008 0 482 8 4278190080 0 7 0 0 0 1008 0 8 4294903125 852486 ##(Smalltalk.NullConverter)  0 0 1 738 202 208 98 3 802 832 98 2 530 365 31 530 591 51 1008 802 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1008 802 8 #isTextModified: 98 1 32 1008 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 182 0 0 0 15 0 0 0 221 1 0 0 40 0 0 0] 98 0 960 0 27 8 'typePresenter' 410 8 ##(Smalltalk.ComboBox)  98 17 0 416 98 2 8 1412498947 1025 1472 590662 2 ##(Smalltalk.ListModel)  202 208 944 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  482 8 4278190080 0 7 0 0 0 1472 0 8 4294903124 459270 ##(Smalltalk.Message)  8 #name 944 944 401 738 202 208 98 1 802 832 98 2 530 365 121 530 591 47 1472 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 182 0 0 0 60 0 0 0 221 1 0 0 83 0 0 0] 98 0 960 0 27 8 'classPresenter' 590342 ##(Smalltalk.Rectangle)  530 21 21 530 21 21 0 0 0 0 42123 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 0 8 2007271748 738 202 208 98 3 802 832 98 2 530 3199 21 530 991 351 416 802 8 #text: 98 1 8 'Type - UML Class map' 416 802 8 #updateMenuBar 944 416 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 46 8 0 0 185 0 0 0] 98 5 592 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 1 2272 0 0 0 7 0 0 0 2272 0 8 4294903100 1138 0 0 0 738 202 208 98 2 802 832 98 2 530 29 41 530 241 39 2272 802 2144 98 1 8 'Original Type' 2272 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 14 0 0 0 20 0 0 0 134 0 0 0 39 0 0 0] 98 0 960 0 27 410 2288 98 16 0 416 98 2 8 1140850944 1 2592 0 0 0 7 0 0 0 2592 0 8 4294903100 1138 0 0 0 738 202 208 98 2 802 832 98 2 530 31 131 530 241 39 2592 802 2144 98 1 8 'UML Class' 2592 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 65 0 0 0 135 0 0 0 84 0 0 0] 98 0 960 0 27 1008 1472 960 0 27 )! !
!UMLAttributeMappDialog class categoriesFor: #resource_Default_view!public!resources-views! !

