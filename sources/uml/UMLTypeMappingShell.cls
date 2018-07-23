"Filed out from Dolphin Smalltalk 7"!

UMLDialog subclass: #UMLTypeMappingShell
	instanceVariableNames: 'typeMappingComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTypeMappingShell guid: (GUID fromString: '{dd1d91db-5d15-4488-adcb-adfb132159f6}')!
UMLTypeMappingShell comment: ''!
!UMLTypeMappingShell categoriesForClass!Unclassified! !
!UMLTypeMappingShell methodsFor!

addType
	| map |

	map := UMLAttributeMappDialog showModal.
	map ifNil: [^self].
	map second ifNil: [^self].
	(map first notNil and: [map first isEmpty]) ifTrue: [^self].

	UMLClassAttribute addType: map first class: map second.

	self updateModel.!

createComponents

	super createComponents.

	typeMappingComposite := self add: UMLTypeMappingComposite new name: 'typeMappingComposite'.!

model: anOrderedCollection

	super model: anOrderedCollection.

	typeMappingComposite model: anOrderedCollection!

removeType
	| type |

	typeMappingComposite hasSelection ifFalse: [^self].

	type := typeMappingComposite selection.

	UMLClassAttribute removeType: type first.

	self updateModel.!

updateModel

	self model: (UMLClassAttribute typeMappingAsOrderedCollection)! !
!UMLTypeMappingShell categoriesFor: #addType!public! !
!UMLTypeMappingShell categoriesFor: #createComponents!public! !
!UMLTypeMappingShell categoriesFor: #model:!public! !
!UMLTypeMappingShell categoriesFor: #removeType!public! !
!UMLTypeMappingShell categoriesFor: #updateModel!public! !

!UMLTypeMappingShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  651 891 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 656 0 482 8 4278190080 0 7 0 0 0 656 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLTypeMappingComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 1 1 530 619 815 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 53 1 0 0 151 1 0 0] 608 530 193 193 0 27 8 'typeMappingComposite' 0 0 0 0 0 3 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 32 8 2007271748 834 202 208 98 3 898 928 98 2 530 3199 21 530 651 891 416 898 8 #text: 98 1 8 'Attribute Type Mapping' 416 898 8 #updateMenuBar 608 416 994 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 132 7 0 0 199 1 0 0] 98 1 656 1040 0 27 )! !
!UMLTypeMappingShell class categoriesFor: #resource_Default_view!public!resources-views! !

