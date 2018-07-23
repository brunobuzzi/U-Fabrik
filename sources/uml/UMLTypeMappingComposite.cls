"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLTypeMappingComposite
	instanceVariableNames: 'typesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTypeMappingComposite guid: (GUID fromString: '{56b285e5-16bb-4420-8fbf-2f0fcc2d81a5}')!
UMLTypeMappingComposite comment: ''!
!UMLTypeMappingComposite categoriesForClass!Unclassified! !
!UMLTypeMappingComposite methodsFor!

createComponents

	super createComponents.

	typesPresenter := self add: ListPresenter new name: 'typesPresenter'.!

hasSelection
	^typesPresenter hasSelection!

model: anOrderedCollection

	super model: anOrderedCollection.

	typesPresenter model: (ListModel on: anOrderedCollection)!

selection
	^typesPresenter selection! !
!UMLTypeMappingComposite categoriesFor: #createComponents!public! !
!UMLTypeMappingComposite categoriesFor: #hasSelection!public! !
!UMLTypeMappingComposite categoriesFor: #model:!public! !
!UMLTypeMappingComposite categoriesFor: #selection!public! !

!UMLTypeMappingComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 0 234 256 98 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 521 786 651 101 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 4 1 0 0 69 1 0 0 54 1 0 0] 98 2 410 8 ##(Smalltalk.PushButton)  98 20 0 560 98 2 8 1140924416 1 896 0 0 0 5 0 0 0 896 0 8 4294903044 1180998 4 ##(Smalltalk.CommandDescription)  8 #addType 8 'Add Type' 1 1 0 0 32 0 0 0 658 202 208 98 3 722 752 98 2 786 61 21 786 171 71 896 722 8 #isEnabled: 98 1 32 896 722 8 #text: 98 1 8 'Add Type' 896 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 10 0 0 0 115 0 0 0 45 0 0 0] 98 0 786 193 193 0 29 410 912 98 20 0 560 98 2 8 1140924416 1 1344 0 0 0 5 0 0 0 1344 0 8 4294903044 994 8 #removeType 8 'Remove Type' 1 1 0 0 32 0 0 0 658 202 208 98 3 722 752 98 2 786 331 21 786 171 71 1344 722 1184 98 1 32 1344 722 1232 98 1 8 'Remove Type' 1344 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 10 0 0 0 250 0 0 0 45 0 0 0] 98 0 1328 0 29 1328 0 27 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 1712 0 0 0 5 0 0 0 1712 1180166 ##(Smalltalk.ProportionalLayout)  234 240 640 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 1712 98 2 8 1409355853 1025 1856 590662 2 ##(Smalltalk.ListModel)  202 208 640 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 1856 0 8 4294902437 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 2 920646 5 ##(Smalltalk.ListViewColumn)  8 'Original Type' 301 8 #left 2082 8 #first 640 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a first <= b first]' 8 #[30 105 226 0 226 32 130 106] 2304 2336 7 513 0 0 0 1856 0 1 0 0 2226 8 'UML Class' 301 2272 2082 8 #second 640 2322 0 0 2354 2 1 2080 8 'doIt' 8 '[:a :b | a second <= b second]' 8 #[30 105 226 0 226 32 130 106] 2528 2544 7 513 0 0 0 1856 0 1 0 0 8 #report 640 0 131169 0 0 658 202 208 98 2 722 752 98 2 786 1 1 786 651 521 1856 722 1232 98 1 8 'Original Type' 1856 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 69 1 0 0 4 1 0 0] 98 0 1328 0 27 8 'typesPresenter' 0 658 202 208 98 1 722 752 98 2 786 1 1 786 651 521 1712 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 69 1 0 0 4 1 0 0] 98 1 1856 1328 0 27 234 256 640 0 658 202 208 98 1 722 752 98 2 786 3199 21 786 651 621 416 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 132 7 0 0 64 1 0 0] 98 2 1712 560 1328 0 27 )! !
!UMLTypeMappingComposite class categoriesFor: #resource_Default_view!public!resources-views! !

