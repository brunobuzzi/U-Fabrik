"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLListComposite
	instanceVariableNames: 'containerPresenter instVarName objectListPresenter listPresenterCreated cuantityPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLListComposite guid: (GUID fromString: '{c8ebb7e9-20c0-4977-95b4-f293d424dbfb}')!
UMLListComposite comment: ''!
!UMLListComposite categoriesForClass!Unclassified! !
!UMLListComposite methodsFor!

addColumn: aListViewColumn 

	^objectListPresenter view addColumn: aListViewColumn !

addNewObject
	| mainObject relatedObjectClass selectedObject |
	mainObject := self topShell getModel.
	mainObject belongToVirtualMachine 
		ifTrue: 
			[^MessageBox notify: 'Basic objects can be added from the UML Script panel'
				caption: self applicationName].
	relatedObjectClass := mainObject getRelatedClassForInstVarNamed: view name
				ifAbsent: [self selectClassForTheNewInstance].	"self selectedInstVar instVarName"
	relatedObjectClass hasSubclasses 
		ifTrue: 
			[relatedObjectClass := (DetalleDeOpciones 
						listaCon: relatedObjectClass allSubclasses
						para: 'UMLClasses view'
						titulo: 'Select the class to instance') ifNil: [^self] ifNotNil: [:value | value last]].
	selectedObject := relatedObjectClass newInstance.
	selectedObject runBehaviorInitialize.
	self addNewObject: selectedObject!

addNewObject: anUMLInstance
	| mainObject collection mainLink relatedLink relation |

	mainObject := self topShell getModel.
	relation := mainObject relationForInstVarNamed: view name.
	mainLink := relation getSymbolToLinkWith: mainObject umlClass.
	mainObject vmPerform: mainLink withArguments: (Array with: anUMLInstance).

	(relation relation isNavigable: anUMLInstance umlClass)
	ifTrue: [relatedLink := relation getSymbolToLinkWith: anUMLInstance umlClass.
		anUMLInstance vmPerform: relatedLink withArguments: (Array with: mainObject).].

	collection := (mainObject getVariableNamed: view name) smalltalkObject.
	(collection size = 1 and: [listPresenterCreated not]) ifTrue: [collection last createListViewFor: self].
	objectListPresenter model: (ListModel on: collection)!

addObject
	| mainObject relatedObjectClass setupObjects selectedObject |
	mainObject := self topShell getModel.
	relatedObjectClass := mainObject getRelatedClassForInstVarNamed: view name.
	relatedObjectClass 
		ifNil: [^MessageBox notify: 'No existing objects for this class' caption: self applicationName].
	setupObjects := (mainObject virtualMachine umlModelOf: mainObject umlClass) 
				getAnyStoreObjectOf: relatedObjectClass.
	selectedObject := (DetalleDeOpciones listaUMLDinamicaCon: setupObjects titulo: 'Seleccione Objeto') 
				ifNil: [self]
				ifNotNil: [:value | value last].
	selectedObject class == UMLInstance ifFalse: [^self].
	self addNewObject: selectedObject!

columnsList
	^objectListPresenter view columnsList!

containerPresenter
	^containerPresenter!

containerPresenter: anObject
	containerPresenter := anObject!

createComponents

	super createComponents.

	containerPresenter := self add: Presenter new name: 'listContainer'.
	objectListPresenter := self add: ListPresenter new name: 'objectList'.
	cuantityPresenter := self add: TextPresenter new name: 'cuantityPresenter'.!

createSchematicWiring

	super createSchematicWiring.

	objectListPresenter when: #leftButtonDoubleClicked: send: #onObjectListDoubleClicked: to: self;
		when: #drag: send: #onDragObject: to: self;
		when: #dragOver: send: #onDragOverList: to: self;
		when: #drop: send: #onDropOverList: to: self.!

disableAddRemoveToolbar

	(view viewNamed: 'addRemoveToolbar') isEnabled: false.

	objectListPresenter view isDragSource: false.
	objectListPresenter view isDropTarget: false.
	objectListPresenter view forecolor: Color blue.!

generateAccessorMethod
	| umlClass prompter vars |

	objectListPresenter hasSelection ifFalse: [^self].

	umlClass := objectListPresenter selection getMetaclass.

	vars := (umlClass instancesVariables select: [:each | each isBasic]  thenCollect: [:each | each name]) asSortedCollection.

	prompter := (ChoicePrompter choices: vars caption: 'Select variable to be used to generate the method') ifNil: [^self] ifNotNil: [:value | value asSymbol].

	umlClass createClassAccessorsForGlobalObject: self selection using: prompter.

	MessageBox notify: 'The method accessor has been created <', prompter, '>' caption: self applicationName!

generateCreationMethod
	| umlClass prompter vars |

	objectListPresenter hasSelection ifFalse: [^self].

	umlClass := objectListPresenter selection getMetaclass.

	vars := (umlClass instancesVariables select: [:each | each isBasic]  thenCollect: [:each | each name]) asSortedCollection.

	prompter := (ChoicePrompter choices: vars caption: 'Select variable to be used to generate the method') ifNil: [^self] ifNotNil: [:value | value asSymbol].

	umlClass createClassCreationMethodForGlobalObject: self selection using: prompter.

	MessageBox notify: 'The method accessor has been created <', prompter, '>' caption: self applicationName!

hasSelection
	^objectListPresenter hasSelection!

initializeObject

	objectListPresenter hasSelection ifFalse: [^self].

	objectListPresenter selection vmPerform: #initialize withArguments: #().

	objectListPresenter selection linkWith: self topShell model.

	objectListPresenter view invalidate.!

inspectGlobalObject

	objectListPresenter hasSelection ifFalse: [^self].

	objectListPresenter selection inspectUMLInstance!

instVarName
	^instVarName!

instVarName: anObject
	instVarName := anObject!

isReadOnly: aBoolean

	^objectListPresenter view isReadOnly: aBoolean!

listPresenterCreated
	^listPresenterCreated!

listPresenterCreated: anObject
	listPresenterCreated := anObject!

mainObjectLinkSymbol

	^#basicAdd:!

model: anOrderedCollection

	super model: anOrderedCollection.

	objectListPresenter model: (ListModel on: anOrderedCollection).

	cuantityPresenter value: anOrderedCollection size printString!

objectListPresenter
	^objectListPresenter!

onDragObject: aDragDropSession

	aDragDropSession dragObjects do: [:each | each format: #UMLInstance data: objectListPresenter selections.]!

onDragOverList: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	"aDragDropSession operation: aDragDropSession intendedOperation."

	((aDragDropSession suggestedSource class == UMLInstance) and: [(aDragDropSession dropTarget parentPresenter class == UMLListComposite) or:[aDragDropSession dropTarget parentPresenter class == UMLOneElementListComposite]]) 
	ifTrue:[aDragDropSession operation: aDragDropSession intendedOperation].

	aDragDropSession suggestedTarget ifNil: [^nil].
!

onDropOverList: aDragDropSession 
	| relation newInstance |

	relation := self topShell model 
				relationForInstVarNamed: aDragDropSession suggestedSource umlClass nameForRelation.
	relation ifNil: [^MessageBox notify: 'Drag and drop does not match between objects.' caption: self applicationName].

	relation isAssociationClass ifFalse: [^self addNewObject: aDragDropSession suggestedSource].
	newInstance := (relation relation classToCreateInstanceLinkedTo: aDragDropSession suggestedSource) vmPerform: #newInstance.
	newInstance vmPerform: #initialize.
	(newInstance hasVariableNamed: aDragDropSession suggestedSource umlClass nameForRelation asSymbol) 
	ifTrue: [newInstance atVariableName: aDragDropSession suggestedSource umlClass nameForRelation asSymbol put: aDragDropSession suggestedSource snapshot: nil.
		self addNewObject: newInstance]
	ifFalse: [self halt]	"Keyboard default isShiftDown "!

onObjectListDoubleClicked: aMouseEvent

	objectListPresenter hasSelection ifFalse: [^self].

	^self topShell inspectUMLInstance: objectListPresenter selection
!

onViewOpened

	super onViewOpened.

	listPresenterCreated := false.!

relatedObjectLinkSymbol

	^#basicAdd:!

removeObject
	| mainObject selectedObject collection relation mainLink relatedLink mainArgs relatedArgs |
	objectListPresenter hasSelection ifFalse: [^self].
	(MessageBox confirm: 'Do you want to remove the selected object ?'
		caption: 'UML Virtual Environment') ifFalse: [^nil].
	mainObject := self topShell selectedObject belongToVirtualMachine 
				ifFalse: [self topShell selectedObject]
				ifTrue: 
					[self topShell parentOfSelectedObject value 
						ifNil: 
							[^MessageBox notify: 'Objects can only be removed from Domain Object Inspectors !!'
								caption: self applicationName]
						ifNotNil: [:value | value]].
	selectedObject := self selection.
	collection := (mainObject getVariableNamed: view name) smalltalkObject.

	"	collection remove: selectedObject."
	relation := mainObject relationForInstVarNamed: view name.
	mainLink := relation getSymbolToBreakLinkWith: mainObject umlClass.
	mainArgs := mainLink = #setDirectRelationWith: 
				ifTrue: [Array with: self defaultVirtualMachine nilObject]
				ifFalse: [Array with: selectedObject].
	mainObject vmPerform: mainLink withArguments: mainArgs.
	(relation relation isNavigable: selectedObject umlClass) 
		ifTrue: 
			[relatedLink := relation getSymbolToBreakLinkWith: selectedObject umlClass.
			relatedArgs := relatedLink = #setDirectRelationWith: 
						ifTrue: [Array with: mainObject umlClass newInstance]
						ifFalse: [Array with: mainObject].
			selectedObject vmPerform: relatedLink withArguments: relatedArgs].
	objectListPresenter model: (ListModel on: collection)!

selectClassForTheNewInstance
	| selectedClass |
	
	selectedClass := (DetalleDeOpciones listaCon: self topShell model virtualMachine getAllClasses para: 'UMLClasses view') ifNil: [self topShell model virtualMachine objectClass] ifNotNil: [:value | value last].

	^selectedClass
	
!

selectedInstVar
	^self topShell selectedInstVar!

selection
	^objectListPresenter selection!

showClassDiagram

	self selection showClassDiagram!

storeAsGlobalObject
	self hasSelection ifFalse: [^self].
	self selection storeAsGlobalObject.
	MessageBox notify: 'Object stored as Global Object !!' caption: self applicationName!

storeAsSetupObject
	self hasSelection ifFalse: [^self].
	self selection storeAsSetupObject.
	MessageBox notify: 'Object stored as Parametric Object !!' caption: self applicationName!

umlClass

	^model umlClass!

umlRelation

	^self umlClass relationForClassNamed: instVarName capitalized! !
!UMLListComposite categoriesFor: #addColumn:!public! !
!UMLListComposite categoriesFor: #addNewObject!abm!public! !
!UMLListComposite categoriesFor: #addNewObject:!abm!public! !
!UMLListComposite categoriesFor: #addObject!abm!public! !
!UMLListComposite categoriesFor: #columnsList!public! !
!UMLListComposite categoriesFor: #containerPresenter!accessing!public! !
!UMLListComposite categoriesFor: #containerPresenter:!accessing!private! !
!UMLListComposite categoriesFor: #createComponents!public! !
!UMLListComposite categoriesFor: #createSchematicWiring!drag & drop!public! !
!UMLListComposite categoriesFor: #disableAddRemoveToolbar!public! !
!UMLListComposite categoriesFor: #generateAccessorMethod!public! !
!UMLListComposite categoriesFor: #generateCreationMethod!public! !
!UMLListComposite categoriesFor: #hasSelection!public! !
!UMLListComposite categoriesFor: #initializeObject!abm!public! !
!UMLListComposite categoriesFor: #inspectGlobalObject!public! !
!UMLListComposite categoriesFor: #instVarName!accessing!private! !
!UMLListComposite categoriesFor: #instVarName:!accessing!private! !
!UMLListComposite categoriesFor: #isReadOnly:!public! !
!UMLListComposite categoriesFor: #listPresenterCreated!accessing!private! !
!UMLListComposite categoriesFor: #listPresenterCreated:!accessing!private! !
!UMLListComposite categoriesFor: #mainObjectLinkSymbol!public! !
!UMLListComposite categoriesFor: #model:!public! !
!UMLListComposite categoriesFor: #objectListPresenter!accessing!public! !
!UMLListComposite categoriesFor: #onDragObject:!drag & drop!public! !
!UMLListComposite categoriesFor: #onDragOverList:!drag & drop!public! !
!UMLListComposite categoriesFor: #onDropOverList:!abm!drag & drop!public! !
!UMLListComposite categoriesFor: #onObjectListDoubleClicked:!public! !
!UMLListComposite categoriesFor: #onViewOpened!public! !
!UMLListComposite categoriesFor: #relatedObjectLinkSymbol!public! !
!UMLListComposite categoriesFor: #removeObject!abm!public! !
!UMLListComposite categoriesFor: #selectClassForTheNewInstance!public! !
!UMLListComposite categoriesFor: #selectedInstVar!public! !
!UMLListComposite categoriesFor: #selection!public! !
!UMLListComposite categoriesFor: #showClassDiagram!public! !
!UMLListComposite categoriesFor: #storeAsGlobalObject!public! !
!UMLListComposite categoriesFor: #storeAsSetupObject!public! !
!UMLListComposite categoriesFor: #umlClass!public! !
!UMLListComposite categoriesFor: #umlRelation!public! !

!UMLListComposite class methodsFor!

defaultModel

	^UMLInstance basicNew!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 34 2 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 576 nil nil nil 5 nil nil nil 576 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 576 34 2 8 1140850688 131073 672 nil nil nil 5 nil nil nil 672 642 1 1 nil nil 410 ##(Smalltalk.StaticText) 34 16 nil 672 34 2 8 1140850946 262145 752 nil nil nil 5 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[237 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point) 193 193 nil 752 196934 1 ##(Smalltalk.RGB) 16809985 8 1819028818 852486 ##(Smalltalk.NullConverter) nil nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 898 1241 1 898 91 51 752 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 108 2 0 0 0 0 0 0 153 2 0 0 25 0 0 0] 8 #() 898 193 193 nil 27 nil 410 ##(Smalltalk.Toolbar) 34 25 nil 672 34 2 8 1409288972 131137 1232 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 517 nil 818 nil true 850 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 898 193 193 nil 1232 1298 1328 8 1819218097 170 192 528 170 192 34 10 23369 1115206 1 ##(Smalltalk.ToolbarIconButton) 1232 1 1180998 4 ##(Smalltalk.CommandDescription) #addObject 8 'Add Existing Object' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'icons/addexisting.ico' nil 23369 23371 1490 1232 1 1522 #addNewObject 8 'Add New Object' 1 1 1570 nil true 1616 8 'icons/addnew.ico' nil 23371 23373 1490 1232 1 1522 #removeObject 8 'Remove Object' 1 1 1570 nil true 1616 8 'icons/remove.ico' nil 23373 23375 1490 1232 1 1522 #generateAccessorMethod 8 'Generate Accessor Method' 1 1 1570 nil true 1616 8 'icons/implementation02.ico' nil 23375 23377 1490 1232 1 1522 #generateCreationMethod 8 'Generate Creation Method' 1 1 1570 nil true 1616 8 'icons/umlinstance.ico' nil 23377 34 6 1504 1648 1728 1049158 1 ##(Smalltalk.ToolbarSeparator) 1232 1 1808 1888 170 176 34 10 657990 3 ##(Smalltalk.DIBSection) nil true nil nil nil nil 3 898 33 33 65 nil 3 2050 nil true nil nil nil nil 3 898 33 33 65 nil 5 2050 nil true nil nil nil nil 3 898 33 33 65 nil 7 2050 nil true nil nil nil nil 3 898 33 33 65 nil 1 2050 nil true nil nil nil nil 3 898 33 33 65 nil 9 nil 1 nil 898 33 33 898 45 45 nil 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 1010 138 144 34 2 1074 #createAt:extent: 34 2 898 1 1 898 1241 51 1232 1074 #updateSizePosted 528 1232 1154 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 108 2 0 0 25 0 0 0] 8 #() 1216 nil 27 170 192 34 4 1232 8 'addRemoveToolbar' 752 8 'cuantityPresenter' nil 1010 138 144 34 1 1074 #createAt:extent: 34 2 898 1 1 898 1331 51 672 1154 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 153 2 0 0 25 0 0 0] 34 2 1232 752 1216 nil 27 nil nil nil 410 ##(Smalltalk.ListView) 34 30 nil 576 34 2 8 1140920397 1025 2688 590662 2 ##(Smalltalk.ListModel) 138 144 528 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 1298 8 4278190080 nil 29 265030 4 ##(Smalltalk.Menu) nil true 34 6 984134 2 ##(Smalltalk.CommandMenuItem) 1 1522 #inspectGlobalObject 8 'Inspect Global Object' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 2914 1 1522 #showClassDiagram 8 'Show Class Diagram' 1 1 nil nil nil 2978 4097 2914 1 1522 #storeAsGlobalObject 8 'Store as Global Object' 1 1 nil nil nil 2914 1 1522 #storeAsSetupObject 8 'Store as Setup Object' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 2688 nil 8 1819272559 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil nil 138 144 34 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Column 1' 201 #left 3202 #displayString 3232 ##(Smalltalk.SortedCollection) nil nil 2688 nil 1 nil nil #report 528 nil 131171 nil 34 4 nil nil 898 1 1 nil 1010 138 144 34 3 1074 #createAt:extent: 34 2 898 1 51 898 1331 871 2688 1074 #contextMenu: 34 1 2880 2688 1074 #text: 34 1 8 'Column 1' 2688 1154 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 153 2 0 0 204 1 0 0] 8 #() 1216 nil 27 170 192 34 2 2688 8 'objectList' nil 1010 138 144 34 1 1074 #createAt:extent: 34 2 898 1 1 898 1331 921 576 1154 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 153 2 0 0 204 1 0 0] 34 2 2688 672 1216 nil 27 8 'listContainer' nil 1010 138 144 34 1 1074 #createAt:extent: 34 2 898 2719 21 898 1331 921 416 1154 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 232 7 0 0 214 1 0 0] 34 1 576 1216 nil 27 )! !
!UMLListComposite class categoriesFor: #defaultModel!public! !
!UMLListComposite class categoriesFor: #resource_Default_view!public!resources-views! !

