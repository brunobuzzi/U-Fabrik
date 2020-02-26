"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLRelationBrowser
	instanceVariableNames: 'relationsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRelationBrowser guid: (GUID fromString: '{67121c7d-8b26-4975-bbaa-b50fc80bbed6}')!
UMLRelationBrowser comment: ''!
!UMLRelationBrowser categoriesForClass!MVP-Resources-UFabrik! !
!UMLRelationBrowser methodsFor!

createComponents

	super createComponents.

	relationsPresenter := self add: ListPresenter new name: 'relations'.!

model: aModel

	super model: aModel.

	relationsPresenter model: (ListModel on: aModel)! !
!UMLRelationBrowser categoriesFor: #createComponents!public! !
!UMLRelationBrowser categoriesFor: #model:!public! !

!UMLRelationBrowser class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 416 98 2 8 1140920397 1025 592 590662 2 ##(Smalltalk.ListModel)  202 208 544 0 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.SearchPolicy)  8 #identity 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 592 0 8 4294902705 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  730 8 ##(Smalltalk.IconImageManager)  8 #current 0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Name' 1001 8 #left 850 8 #printMultiplicity 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a printName <= b printName]' 8 #[30 105 226 0 226 32 130 106] 8 #printName 1136 7 513 0 0 0 592 0 1 0 0 8 #report 544 0 131169 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1442 1021 781 592 1378 8 #text: 98 1 8 'Name' 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 254 1 0 0 134 1 0 0] 98 0 1442 193 193 0 27 8 'relations' 0 1314 202 208 98 1 1378 1408 98 2 1442 2879 21 1442 1021 781 416 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 157 7 0 0 144 1 0 0] 98 1 592 1616 0 27 )! !
!UMLRelationBrowser class categoriesFor: #resource_Default_view!public!resources-views! !

