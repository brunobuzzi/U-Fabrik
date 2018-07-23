"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLDuplicatedAttributesComposite
	instanceVariableNames: 'attributesComposite classesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDuplicatedAttributesComposite guid: (GUID fromString: '{4ba977ba-f0d4-41ea-92bb-1ac5f58b4e35}')!
UMLDuplicatedAttributesComposite comment: ''!
!UMLDuplicatedAttributesComposite categoriesForClass!Unclassified! !
!UMLDuplicatedAttributesComposite methodsFor!

createComponents

	super createComponents.

	attributesComposite := self add: UMLAttributeBrowserComposite new name: 'attributes'.
	classesPresenter := self add: ListPresenter new name: 'classes'.!

createSchematicWiring

	super createSchematicWiring.

	attributesComposite attributesPresenter when: #selectionChanged send: #onAttributeChanged to: self.!

model: anUMLModel

	super model: anUMLModel.

	attributesComposite model: (ListModel on: anUMLModel duplicatedAttributesAsOrderedCollection).!

onAttributeChanged

	attributesComposite hasSelection ifFalse: [^nil].

	classesPresenter model: (ListModel on: ((model duplicatedAttributes at: attributesComposite selection name) collect: [:each | each umlClass]))! !
!UMLDuplicatedAttributesComposite categoriesFor: #createComponents!public! !
!UMLDuplicatedAttributesComposite categoriesFor: #createSchematicWiring!public! !
!UMLDuplicatedAttributesComposite categoriesFor: #model:!public! !
!UMLDuplicatedAttributesComposite categoriesFor: #onAttributeChanged!public! !

!UMLDuplicatedAttributesComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 560 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLAttributeBrowserComposite)  8 #resource_UML_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 882 901 831 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 194 1 0 0 159 1 0 0] 98 0 882 193 193 0 27 5 32 234 256 98 4 560 8 'attributes' 410 8 ##(Smalltalk.ListView)  98 30 0 416 98 2 8 1140920397 1025 1056 590662 2 ##(Smalltalk.ListModel)  202 208 976 0 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.SearchPolicy)  8 #identity 642 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #viewAsGenexusTransaction 8 'View as GeneXus Transaction' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1056 0 8 4294902445 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1194 8 ##(Smalltalk.IconImageManager)  8 #current 0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Class Name' 401 8 #left 1458 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 1696 1744 7 513 0 0 0 1056 0 1 0 0 8 #report 976 0 131169 0 0 754 202 208 98 3 818 848 98 2 882 919 1 882 453 831 1056 818 8 #contextMenu: 98 1 1296 1056 818 8 #text: 98 1 8 'Class Name' 1056 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 203 1 0 0 0 0 0 0 173 2 0 0 159 1 0 0] 98 0 992 0 27 8 'classes' 0 754 202 208 98 1 818 848 98 2 882 2879 21 882 1371 831 416 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 76 8 0 0 169 1 0 0] 98 3 560 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 2352 0 642 8 4278190080 0 517 0 0 0 2352 754 202 208 98 1 818 848 98 2 882 901 1 882 19 831 2352 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 194 1 0 0 0 0 0 0 203 1 0 0 159 1 0 0] 98 0 992 0 27 1056 992 0 27 )! !
!UMLDuplicatedAttributesComposite class categoriesFor: #resource_Default_view!public!resources-views! !

