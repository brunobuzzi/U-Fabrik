"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLClassDefinitionListComposite
	instanceVariableNames: 'classesPresenter implementationsPresenter classCommentPresenter instVarPresenter relationsPresenter classSidePresenter metaclassSidePresenter radioButtonsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassDefinitionListComposite guid: (GUID fromString: '{20450628-5aca-4569-9608-9a1ab8f93aae}')!
UMLClassDefinitionListComposite comment: ''!
!UMLClassDefinitionListComposite categoriesForClass!Unclassified! !
!UMLClassDefinitionListComposite methodsFor!

classes

	^model!

createComponents

	super createComponents.

	classesPresenter := self add: ListPresenter new name: 'classes'.
	implementationsPresenter := self add: ListPresenter new name: 'implementations'.
	classCommentPresenter := self add: RichTextComposite new name: 'classComment'.
	instVarPresenter := self add: ListPresenter new name: 'instancesVariables'.
	relationsPresenter := self add: ListPresenter new name: 'collectionVariables'.!

createSchematicWiring

	super createSchematicWiring.

	classesPresenter when: #selectionChanged send: #onClassChanged to: self!

model: anOrderedCollection

	super model: anOrderedCollection.

	classesPresenter model: (ListModel on: anOrderedCollection)!

onClassChanged

	classesPresenter hasSelection ifFalse: [instVarPresenter model: ListModel new. ^relationsPresenter model: ListModel new].

	instVarPresenter model: (ListModel on: classesPresenter selection allAttributes).

	relationsPresenter model: (ListModel on: classesPresenter selection allRelations).!

showImplementationsOf: anUMLClass

	classSidePresenter value: classSidePresenter value.
	metaclassSidePresenter value: metaclassSidePresenter value.

	implementationsPresenter model: (ListModel on: (anUMLClass implementations asSortedCollection: [:a :b | a name <= b name])).

	instVarPresenter model: (ListModel on: (anUMLClass basicAndObjectVariables asSortedCollection: [:a :b | a name <= b name])).

	relationsPresenter model: (ListModel on: (anUMLClass relations asSortedCollection: [:a :b | a printName <= b printName])).! !
!UMLClassDefinitionListComposite categoriesFor: #classes!public! !
!UMLClassDefinitionListComposite categoriesFor: #createComponents!public! !
!UMLClassDefinitionListComposite categoriesFor: #createSchematicWiring!public! !
!UMLClassDefinitionListComposite categoriesFor: #model:!public! !
!UMLClassDefinitionListComposite categoriesFor: #onClassChanged!public! !
!UMLClassDefinitionListComposite categoriesFor: #showImplementationsOf:!public! !

!UMLClassDefinitionListComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 656 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  585 1 818 1137 1331 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 36 1 0 0 0 0 0 0 92 3 0 0 153 2 0 0] 98 1 410 432 98 15 0 560 98 2 8 1140850688 131073 928 0 0 0 5 0 0 0 928 498 234 240 656 16 234 256 98 4 410 8 ##(Smalltalk.ListView)  98 30 0 928 98 2 8 1140920397 1025 1056 590662 2 ##(Smalltalk.ListModel)  202 208 656 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 3 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #createGettersSetters 8 'Create Getters/Setters' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1314 1 1346 8 #copyInstanceVariableToClipboard 8 'Copy to Clipboard' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1056 0 8 4294902505 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 3 920646 5 ##(Smalltalk.ListViewColumn)  8 'Variable Name' 501 8 #left 1538 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 176 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 1760 1808 7 513 0 0 0 1056 0 1 0 0 1682 8 'UML Type' 501 1728 1538 8 #printTypeName 98 0 1794 0 0 1826 3 1 1792 8 'doIt' 8 '[:a :b | a type name  <= b type name]' 8 #[31 105 226 0 159 226 32 159 130 106] 8 #type 1760 1984 7 513 0 0 0 1056 0 1 0 0 1682 8 'Original Type' 401 1728 1538 8 #originalType 98 0 1794 0 0 1826 2 1 1536 8 'doIt' 8 '[:a :b | a originalType <= b originalType]' 8 #[30 105 226 0 226 32 130 106] 2128 2160 7 513 0 0 0 1056 0 1 0 0 8 #report 656 0 131169 0 0 690 202 208 98 3 754 784 98 2 818 1 1 818 1137 657 1056 754 8 #contextMenu: 98 1 1280 1056 754 8 #text: 98 1 8 'Variable Name' 1056 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 56 2 0 0 72 1 0 0] 98 0 818 193 193 0 27 8 'instancesVariables' 410 8 ##(Smalltalk.ReferenceView)  98 14 0 928 98 2 8 1140850688 131073 2560 0 1218 8 4278190080 0 5 0 0 0 2560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_UMLRelations_view 0 690 202 208 98 1 754 784 98 2 818 1 675 818 1137 657 2560 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 81 1 0 0 56 2 0 0 153 2 0 0] 656 2528 0 27 8 'collectionVariables' 0 690 202 208 98 1 754 784 98 2 818 1 1 818 1137 1331 928 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 56 2 0 0 153 2 0 0] 98 3 1056 410 8 ##(Smalltalk.Splitter)  98 12 0 928 98 2 8 1140850688 1 3056 0 1218 8 4278190080 0 517 0 0 0 3056 690 202 208 98 1 754 784 98 2 818 1 657 818 1137 19 3056 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 72 1 0 0 56 2 0 0 81 1 0 0] 98 0 2528 0 27 2560 2528 0 27 2528 0 27 5 32 234 256 656 0 690 202 208 98 1 754 784 98 2 818 2879 21 818 1721 1331 416 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 251 8 0 0 163 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 3504 0 0 0 5 0 0 0 3504 498 234 240 98 2 410 432 98 15 0 3504 98 2 8 1140850688 131073 3616 0 0 0 5 0 0 0 3616 498 234 240 656 32 234 256 98 2 410 2576 98 14 0 3616 98 2 8 1140850688 131073 3744 0 1218 8 4278190080 0 5 0 0 0 3744 2674 8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 690 202 208 98 1 754 784 98 2 818 1 1 818 567 657 3744 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 27 1 0 0 72 1 0 0] 656 2528 0 27 8 'classComments' 0 690 202 208 98 1 754 784 98 2 818 1 675 818 567 657 3616 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 81 1 0 0 27 1 0 0 153 2 0 0] 98 1 3744 2528 0 27 3 16 234 256 98 2 410 2576 98 14 0 3504 98 2 8 1140850688 131073 4240 0 1218 8 4278190080 0 5 0 0 0 4240 2674 2704 8 #resource_UMLClasses_view 0 690 202 208 98 1 754 784 98 2 818 1 1 818 567 657 4240 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 27 1 0 0 72 1 0 0] 656 2528 0 27 8 'classes' 0 690 202 208 98 1 754 784 98 2 818 1 1 818 567 1331 3504 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 27 1 0 0 153 2 0 0] 98 3 4240 410 3072 98 12 0 3504 98 2 8 1140850688 1 4688 0 1218 8 4278190080 0 517 0 0 0 4688 690 202 208 98 1 754 784 98 2 818 1 657 818 567 19 4688 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 72 1 0 0 27 1 0 0 81 1 0 0] 98 0 2528 0 27 3616 2528 0 27 410 3072 98 12 0 416 98 2 8 1140850688 1 4944 0 1218 8 4278190080 0 517 0 0 0 4944 690 202 208 98 1 754 784 98 2 818 567 1 818 19 1331 4944 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 27 1 0 0 0 0 0 0 36 1 0 0 153 2 0 0] 98 0 2528 0 27 560 2528 0 27 )! !
!UMLClassDefinitionListComposite class categoriesFor: #resource_Default_view!public!resources-views! !

