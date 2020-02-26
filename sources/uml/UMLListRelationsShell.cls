"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLListRelationsShell
	instanceVariableNames: 'relationsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLListRelationsShell guid: (GUID fromString: '{bca12049-64f7-47f1-8331-ef3c964ad63c}')!
UMLListRelationsShell comment: ''!
!UMLListRelationsShell categoriesForClass!MVP-Resources-UFabrik! !
!UMLListRelationsShell methodsFor!

createComponents

	super createComponents.

	relationsPresenter := self add: ListPresenter new name: 'relations'.!

model: anOrderedCollection

	super model: anOrderedCollection.

	relationsPresenter model: (ListModel on: anOrderedCollection)! !
!UMLListRelationsShell categoriesFor: #createComponents!public! !
!UMLListRelationsShell categoriesFor: #model:!public! !

!UMLListRelationsShell class methodsFor!

icon

	^UMLRelation icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_UMLRelations_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1399 833 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 187 2 0 0 160 1 0 0] 576 930 193 193 0 27 8 'relations' 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 2731 21 930 1431 911 416 866 8 #text: 98 1 8 'Relations Browser' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 5 0 0 10 0 0 0 32 8 0 0 209 1 0 0] 98 1 624 1024 0 27 )! !
!UMLListRelationsShell class categoriesFor: #icon!public! !
!UMLListRelationsShell class categoriesFor: #resource_Default_view!public!resources-views! !

