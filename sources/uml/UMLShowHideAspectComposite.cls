"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLShowHideAspectComposite
	instanceVariableNames: 'methodsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLShowHideAspectComposite guid: (GUID fromString: '{63968ef9-02ff-45f8-8f65-a86f26c9b75e}')!
UMLShowHideAspectComposite comment: ''!
!UMLShowHideAspectComposite categoriesForClass!Unclassified! !
!UMLShowHideAspectComposite methodsFor!

createComponents

	super createComponents.

	methodsPresenter := self add: ListPresenter new name: 'methodsPresenter'.!

model: anUMLParsedImplementation
	| rejectedSelectors possibleMethods |

	super model: anUMLParsedImplementation.

	methodsPresenter model: ListModel new.

	rejectedSelectors := #(#vmPerform: #variableNamed: #setDirectRelationWith: #getCollectionToOperateWith: #getCollectionToIterateOver: #add: #remove: #basicAdd: #basicRemove: #mutualAdd: #mutualRemove:).

	possibleMethods := anUMLParsedImplementation methodClass allImplementationsAsSortedCollection select: [:each | ((each methodName subStrings: ':') size = 1) and: [((each methodName indexOf: $:) ~= 0) and: [(rejectedSelectors includes: each methodName) not] ] ].

	methodsPresenter model: (ListModel on: possibleMethods)!

selectedClass
	^self model methodClass!

selectedMethod

	^methodsPresenter selectionOrNil! !
!UMLShowHideAspectComposite categoriesFor: #createComponents!public! !
!UMLShowHideAspectComposite categoriesFor: #model:!public! !
!UMLShowHideAspectComposite categoriesFor: #selectedClass!public! !
!UMLShowHideAspectComposite categoriesFor: #selectedMethod!public! !

!UMLShowHideAspectComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 592 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 592 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_UMLImplementation_list 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 914 971 501 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 229 1 0 0 250 0 0 0] 544 914 193 193 0 27 8 'methodsPresenter' 0 786 202 208 98 1 850 880 98 2 914 3199 21 914 971 501 416 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 36 8 0 0 4 1 0 0] 98 1 592 1008 0 27 )! !
!UMLShowHideAspectComposite class categoriesFor: #resource_Default_view!public!resources-views! !

