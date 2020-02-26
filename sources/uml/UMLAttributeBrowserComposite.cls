"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLAttributeBrowserComposite
	instanceVariableNames: 'attributesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAttributeBrowserComposite guid: (GUID fromString: '{8194a927-2f83-4d8c-9b31-5a0fb6e89ead}')!
UMLAttributeBrowserComposite comment: ''!
!UMLAttributeBrowserComposite categoriesForClass!MVP-Resources-UFabrik! !
!UMLAttributeBrowserComposite methodsFor!

attributesPresenter
	^attributesPresenter!

attributesPresenter: anObject
	attributesPresenter := anObject!

createComponents

	super createComponents.

	attributesPresenter := self add: ListPresenter new name: 'attributes'.!

hasSelection

	^attributesPresenter hasSelection!

model: anOrderedCollection

	super model: anOrderedCollection.

	attributesPresenter model: (ListModel on: anOrderedCollection)!

selection

	^attributesPresenter selection! !
!UMLAttributeBrowserComposite categoriesFor: #attributesPresenter!accessing!private! !
!UMLAttributeBrowserComposite categoriesFor: #attributesPresenter:!accessing!private! !
!UMLAttributeBrowserComposite categoriesFor: #createComponents!public! !
!UMLAttributeBrowserComposite categoriesFor: #hasSelection!public! !
!UMLAttributeBrowserComposite categoriesFor: #model:!public! !
!UMLAttributeBrowserComposite categoriesFor: #selection!public! !

!UMLAttributeBrowserComposite class methodsFor!

resource_Attributes_with_class_view
	"Answer the literal data from which the 'Attributes with class view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Attributes_with_class_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 592 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 592 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_UMLAttributes_with_class_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 914 1691 751 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 3 0 0 119 1 0 0] 544 914 193 193 0 27 8 'attributes' 0 786 202 208 98 1 850 880 98 2 914 3199 21 914 1691 751 416 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 140 9 0 0 129 1 0 0] 98 1 592 1008 0 27 )!

resource_UML_view
	"Answer the literal data from which the 'UML view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_UML_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 592 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 592 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_UMLAttributes_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 914 1001 751 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 244 1 0 0 119 1 0 0] 544 914 193 193 0 27 8 'attributes' 0 786 202 208 98 1 850 880 98 2 914 2879 21 914 1001 751 416 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 147 7 0 0 129 1 0 0] 98 1 592 1008 0 27 )! !
!UMLAttributeBrowserComposite class categoriesFor: #resource_Attributes_with_class_view!public!resources-views! !
!UMLAttributeBrowserComposite class categoriesFor: #resource_UML_view!public!resources-views! !

