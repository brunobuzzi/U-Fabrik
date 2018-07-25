"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLVirtualMachineBrowser
	instanceVariableNames: 'hierarchyPresenter classListPresenter implementationsPresenter implementationComposite classSidePresenter metaclassSidePresenter radioButtonsPresenter categoriesPresenter packagesPresenter traitsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineBrowser guid: (GUID fromString: '{ed01a6e8-b50c-433b-a912-3bc360ba1845}')!
UMLVirtualMachineBrowser comment: ''!
!UMLVirtualMachineBrowser categoriesForClass!Unclassified! !
!UMLVirtualMachineBrowser methodsFor!

aboutThisTool
	^Error notYetImplemented!

addCategory
	| categoryName newCategory |

	categoryName := Prompter prompt: 'Enter the new category' caption: self applicationName.
	categoryName ifNil: [^self].

	newCategory := UMLImplementationCategory newNamed: categoryName.

	self selectedClassDescription addCategory: newCategory.
	categoriesPresenter model: (ListModel on: self selectedClassDescription getAllCategoriesButGUICategories)!

addImplementation
	| implementationName |

	implementationName := (Prompter prompt: 'Enter Implementation Name:') ifNil: [^nil] ifNotNil: [:value | value asSymbol].

	self currentCardSelectionPresenter selection addImplementation: (UMLParsedImplementation newNamed: implementationName).

	implementationsPresenter model: (ListModel on: self currentCardSelectionPresenter selection implementations asOrderedCollection)!

addImplementationClass: anUMLImplementationClass
	| implementationName |

	implementationName := (Prompter prompt: 'Enter Implementation Name:') ifNil: [^nil] ifNotNil: [:value | value asSymbol].

	self selectedClass addImplementation: (anUMLImplementationClass newNamed: implementationName).

	implementationsPresenter model: (ListModel on: (self selectedClass implementations asSortedCollection: [:a :b | a methodName <= b methodName])).!

addMessageToImplementation
	| result implementation selectedClass |
	result := self parser parseMethod: self getAllText.	"we parse the source code into aStMethodNode"
	selectedClass := self topShell isClassSideSelected 
				ifTrue: [self selectedClass]
				ifFalse: [self selectedClass getMetaclass].
	selectedClass 
		ifNil: 
			[^MessageBox notify: 'You have to select a class to create a method' caption: self applicationName].
	(self checkCompilationErrorsFor: result inClass: selectedClass) 
		ifFalse: 
			[(MessageBox confirm: 'Do you want to proceed any way ?' caption: self applicationName) 
				ifFalse: [^self]].
	implementation := (UMLParsedImplementation newNamed: result selector) parsedCode: result.	"we create the implementation for the parsed code"
	"	(result canBeCompiledIn: context) "
	selectedClass addImplementation: implementation.
	self topShell onClassListChanged.
	self topShell selectImplementation: implementation.
	self topShell mainComposite trigger: #newMethod:toClass:in:
		withArguments: (Array 
				with: implementation
				with: selectedClass
				with: self topShell mainComposite).
	self checkCompilationErrorsFor: result inClass: selectedClass!

addParsedImplementation

	^self addImplementationClass: UMLParsedImplementation!

addTraitToSelectedClass
	| traits |

	traits := DetalleDeOpciones listaCon: model traits asOrderedCollection para: 'UMLClasses view' titulo: 'Select TRAIT to Add'.
	traits ifNil: [^nil].

	self selectedClass addTrait: traits last.
!

addUnpackagedClasses

	packagesPresenter hasSelection ifFalse: [^self].

	model unpackagedClasses do: [:each | 
		packagesPresenter selection addClass: each].

	self onPackageChanged.!

addVirtualMachineClass
	| className newMetaclass superClass |
	className := (Prompter prompt: 'Enter the name of the new UML Class') ifNil: [^self].
	(model includesClassNamed: className) ifTrue: [^MessageBox notify: 'That class already exist !!'].
	newMetaclass := UMLVirtualMachineMetaclass newNamed: className.
	superClass := hierarchyPresenter hasSelection 
				ifTrue: [hierarchyPresenter selection]
				ifFalse: [model objectClass].
	newMetaclass umlSuperclass: superClass getMetaclass.
	newMetaclass setInstanceClassSuperClass: superClass.
	newMetaclass instanceClass smalltalkClass: (Smalltalk at: newMetaclass name asSymbol
				ifAbsent: 
					[(Prompter prompt: 'Enter the name of VM class' caption: self applicationName) 
						ifNil: [^self]
						ifNotNil: 
							[:value | 
							Smalltalk at: value asSymbol
								ifAbsent: 
									[^MessageBox 
										notify: 'The current version of the this UML Virtual Machine does not includes that class, is no possible to create it.'
										caption: self applicationName]]]).
	model addUMLMetaclass: newMetaclass.
	self model: model.
	newMetaclass virtualMachine: model.
	newMetaclass instanceClass virtualMachine: model.
	self onViewOpened!

addVirtualMachinePackage
	| packageName pack |

	packageName := Prompter prompt: 'Enter the name of the new Virtual Machine Package' caption: 'UMLAlmighty'.
	packageName ifNil: [^self].

	(self defaultVirtualMachine includesPackageNamed: packageName) ifTrue: [^self].

	pack := UMLVirtualMachinePackage new name: packageName.
	self defaultVirtualMachine addPackage: pack.

	packagesPresenter model add: pack.
!

autogenerateInitializeMethod

	self selectedClass autoGenerateInitializeMethodIn: model.
	implementationsPresenter model: (ListModel on: (self selectedClass implementations asSortedCollection: [:a :b | a methodName <= b methodName]))!

browseClassReferences
	| classes shell |

	classes := model searchClassesWithAttributeType: self selectedClass.

	shell := UMLClassListShell showOn: classes.

	shell view caption: 'Classes referencing <', self selectedClass name, '> class in it''s instances variables' !

browseClassReferencesInRelations
	| classes shell |

	classes := model searchClassesWithRelationType: self selectedClass.

	shell := UMLClassListShell showOn: classes.

	shell view caption: 'Classes referencing <', self selectedClass name, '> class in it''s relations' !

browserImplementationDefenitions
	| definitions methodName |
	methodName := implementationsPresenter hasSelection 
				ifFalse: 
					[(Prompter prompt: 'Enter the method name to search...' caption: self applicationName) 
						ifNil: [^self]
						ifNotNil: [:value | value asSymbol]]
				ifTrue: [implementationsPresenter selection name].
	definitions := model allDefinitionsOf: methodName.
	UMLMethodBrowserShell showOn: definitions!

browserImplementationOfCategory
	| methods allClasses |

	methods := OrderedCollection new.
	allClasses := self isClassSideSelected ifTrue: [model getAllClasses] ifFalse: [model getAllClasses collect: [:each | each metaclass] ].

	(allClasses select: [:each | each includesCategory: categoriesPresenter selection]) 
		do:  [:each | methods addAll: (each methodsOfCategory:  categoriesPresenter selection)].
	
	UMLMethodBrowserShell showOn: methods!

browserImplementationReferences
	| references methodName |
	methodName := implementationsPresenter hasSelection 
				ifFalse: 
					[(Prompter prompt: 'Enter the method name to search...' caption: self applicationName) 
						ifNil: [^self]
						ifNotNil: [:value | value asSymbol]]
				ifTrue: [implementationsPresenter selection name].
	references := self defaultVirtualMachine getReferencesTo: methodName.
	UMLMethodBrowserShell showOn: references!

card

	^(view viewNamed: 'card')!

colorForCategory: anUMLImplementationCategory

	self selectedClassDescription ifNil: [^Color black].

	(implementationsPresenter hasSelection and: [self selectedClassDescription category: anUMLImplementationCategory includes: self selectedImplementation]) 
	ifTrue: [^Color black].

	^Color black fadedBy: 4!

createComponents

	super createComponents.

	hierarchyPresenter := self add: TreePresenter new name: 'hierarchy'.
	implementationsPresenter := self add: ListPresenter new name: 'implementations'.
	implementationComposite := self add: UMLImplementationComposite new name: 'implementationComposite'.
	radioButtonsPresenter := self add: RadioButtonSetPresenter new name: 'radioButtons'.
	categoriesPresenter := self add: ListPresenter new name: 'categories'.
	packagesPresenter := self add: ListPresenter new name: 'packagesPresenter'.
	classListPresenter := self add: ListPresenter new name: 'classList'.
	traitsPresenter := self add: ListPresenter new name: 'traits'.!

createSchematicWiring

	super createSchematicWiring.

	hierarchyPresenter when: #selectionChanged send: #onTreeClassChanged to: self.

	implementationsPresenter when: #selectionChanged send: #onImplementationChanged to: self.

	radioButtonsPresenter when: #valueChanged send: #onSideClicked to: self.

	categoriesPresenter 
		when: #selectionChanged send: #onCategoriaChanged to: self;
		when: #dragOver: send: #onDragOverCategoria: to: self;
		when: #drop: send: #onDropUMLImplementationOverCategoria: to: self.

	packagesPresenter when: #selectionChanged send: #onPackageChanged to: self;
		when: #dragOver: send: #onDragOverVirtualMachinePackage: to: self;
		when: #drop: send: #onDropClassOverVirtualMachinePackage: to: self.

	classListPresenter when: #selectionChanged send: #onClassListChanged to: self.

	traitsPresenter when: #leftButtonDoubleClicked: send: #onTraitDoubleCliked: to: self.!

currentCard

	^self card currentCard!

currentCardSelection

	^self card currentCard!

currentCardSelectionPresenter

	^self currentCardSelection presenter!

fileInVirtualMachine
	^self topShell fileInVirtualMachine!

fileOutVirtualMachine
	^self topShell fileOutVirtualMachine
!

getAllClasses

	^model getAllClasses!

getAllText
	^implementationComposite getAllText!

hasSelectedClass
	^self selectedClass notNil!

hasSelectedImplementation
	^implementationsPresenter hasSelection!

helpWithThisTool
	^Error notYetImplemented!

importPackage

	Error notYetImplemented!

inspectCustomizedNewInstance
	| newInstance |

	newInstance := self selectedClass newInstance.
	newInstance runBehaviorInitialize.
	^newInstance inspectUMLWithCustomizedView!

isClassSideSelected

	^radioButtonsPresenter value = #classSide!

menuBar
	| menu |
	menu := MenuBar new.
	(menu addSubmenu: 'File')
		addCommand: (MessageSend receiver: self selector: #fileOutVirtualMachine)
			description: 'File out Virtual Machine';
		addCommand: (MessageSend receiver: self selector: #fileInVirtualMachine)
			description: 'File in Virtual Machine';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #exit) description: 'Exit'.
	(menu addSubmenu: 'Support')
		addCommand: (MessageSend receiver: self selector: #gotoUFabrikWebSite)
			description: self applicationName , ' Web site';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyNewsGroup)
			description: 'News Group';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyDocumentation)
			description: 'Online Documents';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyEnglishVideos)
			description: 'Online Videos - English';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyVideos)
			description: 'Online Videos - Spanish';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyBlog) description: 'Blog'.
	(menu addSubmenu: 'About')
		addCommand: (MessageSend receiver: self selector: #aboutThisTool) description: 'About this tool';
		addCommand: (MessageSend receiver: self selector: #helpWithThisTool)
			description: 'Help with this tool';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #aboutUMLAlmighty)
			description: 'About ' , self applicationName.
	^menu!

model: anUMLVirtualMachine

	super model: anUMLVirtualMachine.

	hierarchyPresenter model: anUMLVirtualMachine classesAsVirtualMachineTreeModel.

	packagesPresenter model: (ListModel on: anUMLVirtualMachine packagesAsSortedCollection)!

onCategoriaChanged
	| methods |

	categoriesPresenter hasSelection ifFalse: [^self showImplementationsOf: self selectedClassDescription].

	methods := self selectedClassDescription methodsOfCategory: categoriesPresenter selection.

	implementationsPresenter model: (ListModel on: methods).!

onClassListChanged

	self hasSelectedClass ifFalse: [^implementationsPresenter model: ListModel new.].

	self selectClass: self selectedClassDescription!

onClassSideClicked

	hierarchyPresenter hasSelection ifFalse: [^nil].
	classSidePresenter value ifTrue: [self showClassSide].

!

onDragOverCategoria: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDragOverVirtualMachinePackage: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDropClassOverVirtualMachinePackage: aDragDropSession
	| vmPackage |

	vmPackage := aDragDropSession suggestedTarget.

	Keyboard default isShiftDown 
	ifFalse: [aDragDropSession dragObjects do: [:each | 
			vmPackage addClass: each object.
			packagesPresenter hasSelection ifTrue: [packagesPresenter selection removeClass: each object] ]]
	ifTrue: [aDragDropSession dragObjects do: [:each | vmPackage removeClass: each object]].

	self onPackageChanged.!

onDropUMLImplementationOverCategoria: aDragDropSession
	| categoria |

	categoria := aDragDropSession suggestedTarget.

	Keyboard default isShiftDown 
	ifFalse: [aDragDropSession dragObjects do: [:each | self selectedClassDescription add: each object toCategory: categoria]]
	ifTrue: [aDragDropSession dragObjects do: [:each | self selectedClassDescription remove: each object from: categoria]].!

onImplementationChanged

	categoriesPresenter view invalidate.

	implementationsPresenter hasSelection ifFalse: [^implementationComposite model: UMLImplementation new].

	implementationComposite model: implementationsPresenter selection!

onMetaclassSideClicked

	hierarchyPresenter hasSelection ifFalse: [^nil].
	metaclassSidePresenter value ifTrue: [self showMetaclassSide].

!

onPackageChanged

	classListPresenter model: (ListModel on: 
		(packagesPresenter selections inject: (SortedCollection sortBlock: [:a :b | a name <= b name]) into: [:all :each | all addAll: each classes. all])).

	traitsPresenter model: (ListModel on:
		(packagesPresenter selections inject: (SortedCollection sortBlock: [:a :b | a name <= b name]) into: [:all :each | all addAll: each traits. all])).!

onSideClicked

	self selectedClassDescription ifNil: [^nil].

	implementationsPresenter model: (ListModel on: self selectedClassDescription implementationsAsSortedCollection).

	categoriesPresenter model: (ListModel on: self selectedClassDescription getAllCategoriesButGUICategories)!

onTraitDoubleCliked: aMouseEvent
	| shell |

	traitsPresenter hasSelection ifFalse: [^self].

	shell := UMLTraitBrowserShell show.
	shell selectTrait: traitsPresenter selection!

onTreeClassChanged

	hierarchyPresenter hasSelection ifFalse: [^implementationsPresenter model: ListModel new.].

	self selectClass: self selectedClassDescription!

onUMLModelClassChanged

	^self onClassListChanged!

onViewOpened

	super onViewOpened.

	radioButtonsPresenter enable: #classSide.!

removeCategory
	categoriesPresenter selection isVirtual 
		ifTrue: [^MessageBox notify: 'Virtual categories can NOT be deleted !!' caption: self applicationName].
	(MessageBox confirm: 'Are you sure to remove this category (no implementations will be deleted) ?'
		caption: self applicationName) ifFalse: [^self].
	self selectedClass removeCategory: categoriesPresenter selection.
	categoriesPresenter model: (ListModel on: self selectedClass getAllCategoriesButGUICategories)!

removeClass
	| selectedClass |

	(MessageBox confirm: 'Are sure to remove the selected class?') ifFalse: [^self].
	selectedClass := hierarchyPresenter hasSelection ifTrue: [hierarchyPresenter selection] ifFalse: [^self].
	model removeUMLMetaclass: selectedClass metaclass.
	self model: model.!

removeImplementation
	implementationsPresenter hasSelection ifFalse: [^nil].
	(MessageBox 
		confirm: 'Are you sure to remove <' , implementationsPresenter selection name , '> implementation ?'
		caption: self applicationName) ifFalse: [^self].
	self selectedClassDescription removeImplementation: implementationsPresenter selection.
	implementationsPresenter model remove: implementationsPresenter selection!

removeVirtualMachinePackage
	| packToRemove |

	packagesPresenter hasSelection ifFalse: [^self].
	packToRemove := packagesPresenter selection.

	packToRemove canBeRemoved ifFalse: [^MessageBox notify: 'The package is not empty, can not be removed !!' caption: 'UMLAlmighty'].

	(MessageBox confirm: 'Are you sure to delete <', packToRemove name, '> package from the Virtual Machine ?' caption: 'UMLAlmighty') ifFalse: [^self].

	self defaultVirtualMachine removePackage: packToRemove.

	packagesPresenter model remove: packToRemove!

selectClass: anUMLClass

	self showImplementationsOf: anUMLClass.

	categoriesPresenter model: (ListModel on: (anUMLClass getAllCategoriesButGUICategories)).!

selectedClass

	^(self currentCardSelection name = 'packagesContainer') ifTrue: [classListPresenter selectionOrNil] ifFalse: [hierarchyPresenter selectionOrNil]!

selectedClassDescription

	self selectedClass ifNil: [^nil].

	^self isClassSideSelected 
	ifTrue: [self selectedClass] 
	ifFalse: [self selectedClass getMetaclass]
	!

selectedClassIsMetaclass

	^metaclassSidePresenter value!

selectedImplementation
	^implementationsPresenter selection!

selectedImplementationIfNone: aBlock

	implementationsPresenter hasSelection ifFalse: [^aBlock value].
	^implementationsPresenter selection!

selectImplementation: anUMLParsedImplementation 

	implementationsPresenter selection: anUMLParsedImplementation ifAbsent: []!

selectSanityCard
	^implementationComposite selectSanityCard!

setSanityCheckWith: aTreeModel 
	^implementationComposite setSanityCheckWith: aTreeModel!

showClassSide
	| selectedClass |

	selectedClass := hierarchyPresenter hasSelection ifTrue: [hierarchyPresenter selection] ifFalse: [^implementationsPresenter model: ListModel new].

	implementationsPresenter model: (ListModel on: selectedClass implementations asOrderedCollection).!

showImplementationsOf: anUMLClass

	"classSidePresenter value: classSidePresenter value.
	metaclassSidePresenter value: metaclassSidePresenter value."

	implementationsPresenter model: (ListModel on: (anUMLClass implementations asSortedCollection: [:a :b | a name <= b name])).!

showMetaclassSide
	| selectedClass |

	hierarchyPresenter hasSelection ifFalse: [^implementationsPresenter model: ListModel new].

	selectedClass := hierarchyPresenter hasSelection ifTrue: [hierarchyPresenter selection] ifFalse: [^implementationsPresenter model: ListModel new].

	implementationsPresenter model: (ListModel on: selectedClass metaclass implementations asOrderedCollection).! !
!UMLVirtualMachineBrowser categoriesFor: #aboutThisTool!public! !
!UMLVirtualMachineBrowser categoriesFor: #addCategory!categories!public! !
!UMLVirtualMachineBrowser categoriesFor: #addImplementation!public! !
!UMLVirtualMachineBrowser categoriesFor: #addImplementationClass:!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #addMessageToImplementation!public! !
!UMLVirtualMachineBrowser categoriesFor: #addParsedImplementation!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #addTraitToSelectedClass!public! !
!UMLVirtualMachineBrowser categoriesFor: #addUnpackagedClasses!public! !
!UMLVirtualMachineBrowser categoriesFor: #addVirtualMachineClass!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #addVirtualMachinePackage!public! !
!UMLVirtualMachineBrowser categoriesFor: #autogenerateInitializeMethod!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #browseClassReferences!public! !
!UMLVirtualMachineBrowser categoriesFor: #browseClassReferencesInRelations!public! !
!UMLVirtualMachineBrowser categoriesFor: #browserImplementationDefenitions!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #browserImplementationOfCategory!categories!public! !
!UMLVirtualMachineBrowser categoriesFor: #browserImplementationReferences!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #card!public! !
!UMLVirtualMachineBrowser categoriesFor: #colorForCategory:!categories!public! !
!UMLVirtualMachineBrowser categoriesFor: #createComponents!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #createSchematicWiring!categories!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #currentCard!public! !
!UMLVirtualMachineBrowser categoriesFor: #currentCardSelection!public! !
!UMLVirtualMachineBrowser categoriesFor: #currentCardSelectionPresenter!public! !
!UMLVirtualMachineBrowser categoriesFor: #fileInVirtualMachine!public! !
!UMLVirtualMachineBrowser categoriesFor: #fileOutVirtualMachine!public! !
!UMLVirtualMachineBrowser categoriesFor: #getAllClasses!categories!public! !
!UMLVirtualMachineBrowser categoriesFor: #getAllText!public! !
!UMLVirtualMachineBrowser categoriesFor: #hasSelectedClass!public! !
!UMLVirtualMachineBrowser categoriesFor: #hasSelectedImplementation!public! !
!UMLVirtualMachineBrowser categoriesFor: #helpWithThisTool!public! !
!UMLVirtualMachineBrowser categoriesFor: #importPackage!public! !
!UMLVirtualMachineBrowser categoriesFor: #inspectCustomizedNewInstance!public! !
!UMLVirtualMachineBrowser categoriesFor: #isClassSideSelected!class changed!public! !
!UMLVirtualMachineBrowser categoriesFor: #menuBar!public! !
!UMLVirtualMachineBrowser categoriesFor: #model:!public! !
!UMLVirtualMachineBrowser categoriesFor: #onCategoriaChanged!categories!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #onClassListChanged!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #onClassSideClicked!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #onDragOverCategoria:!categories!private! !
!UMLVirtualMachineBrowser categoriesFor: #onDragOverVirtualMachinePackage:!categories!private! !
!UMLVirtualMachineBrowser categoriesFor: #onDropClassOverVirtualMachinePackage:!categories!public! !
!UMLVirtualMachineBrowser categoriesFor: #onDropUMLImplementationOverCategoria:!categories!public! !
!UMLVirtualMachineBrowser categoriesFor: #onImplementationChanged!categories!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #onMetaclassSideClicked!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #onPackageChanged!categories!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #onSideClicked!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #onTraitDoubleCliked:!categories!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #onTreeClassChanged!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #onUMLModelClassChanged!public! !
!UMLVirtualMachineBrowser categoriesFor: #onViewOpened!public! !
!UMLVirtualMachineBrowser categoriesFor: #removeCategory!categories!public! !
!UMLVirtualMachineBrowser categoriesFor: #removeClass!public! !
!UMLVirtualMachineBrowser categoriesFor: #removeImplementation!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #removeVirtualMachinePackage!public! !
!UMLVirtualMachineBrowser categoriesFor: #selectClass:!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #selectedClass!public! !
!UMLVirtualMachineBrowser categoriesFor: #selectedClassDescription!public! !
!UMLVirtualMachineBrowser categoriesFor: #selectedClassIsMetaclass!public! !
!UMLVirtualMachineBrowser categoriesFor: #selectedImplementation!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #selectedImplementationIfNone:!implementations!public! !
!UMLVirtualMachineBrowser categoriesFor: #selectImplementation:!public! !
!UMLVirtualMachineBrowser categoriesFor: #selectSanityCard!public! !
!UMLVirtualMachineBrowser categoriesFor: #setSanityCheckWith:!public! !
!UMLVirtualMachineBrowser categoriesFor: #showClassSide!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #showImplementationsOf:!class metaclass switch!public! !
!UMLVirtualMachineBrowser categoriesFor: #showMetaclassSide!class metaclass switch!public! !

!UMLVirtualMachineBrowser class methodsFor!

defaultModel

	^UMLVirtualMachine default!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 656 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 679 818 1981 653 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 83 1 0 0 222 3 0 0 153 2 0 0] 98 1 410 8 ##(Smalltalk.CardContainer)  98 16 0 560 98 2 8 1409286144 131073 928 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 928 655878 ##(Smalltalk.CardLayout)  202 208 98 1 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Parsed Implementation' 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  6 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Parsed Implementation'' iconBlock: [UMLParsedImplementation  icon]' 8 #[29 30 34 112 31 161 106 194 105] 1152 1184 8 ##(Smalltalk.UMLParsedImplementation)  8 #icon 8 #text:iconBlock: 1216 11 1 0 0 410 432 98 15 0 928 98 2 8 1409286144 131073 1376 0 0 0 5 0 0 0 1376 498 234 240 656 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 1376 98 2 8 1140850688 131073 1504 0 1010 8 4278190080 0 5 0 0 0 1504 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLImplementationComposite)  8 #resource_Default_view 0 690 202 208 98 1 754 784 98 2 818 1 1 818 1965 597 1504 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 214 3 0 0 42 1 0 0] 656 818 193 193 0 27 8 'implementationComposite' 0 690 202 208 98 1 754 784 98 2 818 9 49 818 1965 597 1376 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 218 3 0 0 66 1 0 0] 98 1 1504 1824 0 27 1376 234 256 656 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 928 98 2 8 1140916736 1 2032 590662 2 ##(Smalltalk.ListModel)  202 208 98 1 1168 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  0 0 1 0 0 0 2032 0 8 4294903246 1202 0 0 918822 ##(Smalltalk.CompiledMethod)  2 3 8 ##(Smalltalk.ListControlView)  8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 8 #displayString 2224 7 257 0 1202 0 0 2242 2 3 8 ##(Smalltalk.IconicListAbstract)  8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 2336 7 257 0 1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 8 #smallIcons 0 0 0 0 0 690 202 208 98 3 754 784 98 2 818 1 1 818 1981 653 2032 754 8 #basicSelectionsByIndex: 98 1 98 1 3 2032 754 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 2032 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 222 3 0 0 70 1 0 0] 98 0 1824 0 27 690 202 208 98 1 754 784 98 2 818 1 1 818 1981 653 928 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 222 3 0 0 70 1 0 0] 98 2 1376 2032 1824 0 27 1824 0 27 3 16 234 256 656 0 690 202 208 98 1 754 784 98 2 818 3199 21 818 1981 1331 416 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 29 10 0 0 163 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 3088 0 0 0 5 0 0 0 3088 498 234 240 98 2 410 432 98 15 0 3088 98 2 8 1140850688 131073 3200 0 0 0 5 0 0 0 3200 498 234 240 656 32 234 256 656 0 690 202 208 98 1 754 784 98 2 818 673 1 818 1309 653 3200 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 80 1 0 0 0 0 0 0 222 3 0 0 70 1 0 0] 98 3 410 432 98 15 0 3200 98 2 8 1140850688 131073 3472 0 0 0 5 0 0 0 3472 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 432 98 15 0 3472 98 2 8 1409286144 131073 3568 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 3568 498 234 240 656 32 234 256 98 4 410 8 ##(Smalltalk.RadioButton)  98 16 0 3568 98 2 8 1141058825 1 3728 721990 2 ##(Smalltalk.ValueHolder)  0 32 1376774 ##(Smalltalk.PluggableSearchPolicy)  459270 ##(Smalltalk.Message)  8 #= 98 0 3874 8 #hash 98 0 16 1010 8 4278190080 0 5 0 0 0 3728 0 8 4294903395 852486 ##(Smalltalk.NullConverter)  0 0 0 690 202 208 98 2 754 784 98 2 818 21 1 818 313 61 3728 754 8 #text: 98 1 8 'Instance methods' 3728 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 166 0 0 0 30 0 0 0] 98 0 1824 0 27 8 'classSide' 410 3744 98 16 0 3568 98 2 8 1140924425 1 4304 3810 0 0 3842 3874 3904 98 0 3874 3952 98 0 32 1010 4000 0 5 0 0 0 4304 0 8 4294903395 4034 0 0 0 690 202 208 98 2 754 784 98 2 818 333 1 818 313 61 4304 754 4192 98 1 8 'Class methods' 4304 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 166 0 0 0 0 0 0 0 66 1 0 0 30 0 0 0] 98 0 1824 0 27 8 'metaclassSide' 590342 ##(Smalltalk.Rectangle)  818 21 1 818 1 1 690 202 208 98 1 754 784 98 2 818 1 593 818 645 61 3568 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 40 1 0 0 66 1 0 0 70 1 0 0] 98 2 3728 4304 1824 0 27 0 0 410 1520 98 14 0 3472 98 2 8 1140850688 131073 4960 0 1010 8 4278190080 0 13 0 0 0 4960 1618 8 ##(Smalltalk.ListPresenter)  8 #resource_UMLImplementation_list 0 690 202 208 98 1 754 784 98 2 818 1 1 818 645 593 4960 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 66 1 0 0 40 1 0 0] 656 1824 0 27 234 256 98 4 3568 8 'radioButtons' 4960 8 'implementations' 0 690 202 208 98 1 754 784 98 2 818 1 1 818 645 653 3472 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 66 1 0 0 70 1 0 0] 98 2 4960 3568 1824 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 3200 98 2 8 1140850688 1 5472 0 1010 8 4278190080 0 517 0 0 0 5472 690 202 208 98 1 754 784 98 2 818 645 1 818 19 653 5472 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 66 1 0 0 0 0 0 0 75 1 0 0 70 1 0 0] 98 0 1824 0 27 410 432 98 15 0 3200 98 2 8 1140850688 131073 5744 0 0 0 5 0 0 0 5744 498 234 240 656 32 234 256 98 2 410 1520 98 14 0 5744 98 2 8 1140850688 131073 5872 0 1010 8 4278190080 0 21 265030 4 ##(Smalltalk.Menu)  0 16 98 4 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #addCategory 8 'Add Category' 1 1 0 0 0 6018 1 6050 8 #removeCategory 8 'Remove Category' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 6018 1 6050 8 #browserImplementationOfCategory 8 'Browse Implementations' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 5872 1618 5072 8 #resource_UMLCategory_list 0 690 202 208 98 2 754 784 98 2 818 1 1 818 647 653 5872 754 8 #contextMenu: 98 1 5984 5872 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 67 1 0 0 70 1 0 0] 656 1824 0 27 8 'categories' 0 690 202 208 98 1 754 784 98 2 818 663 1 818 647 653 5744 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 75 1 0 0 0 0 0 0 142 2 0 0 70 1 0 0] 98 1 5872 1824 0 27 1824 0 27 5 32 234 256 656 0 690 202 208 98 1 754 784 98 2 818 1 1 818 1981 653 3088 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 222 3 0 0 70 1 0 0] 98 3 410 432 98 15 0 3088 98 2 8 1140850688 131073 6864 0 0 0 5 0 0 0 6864 498 234 240 656 16 234 256 98 2 410 944 98 16 0 6864 98 2 8 1409286144 131073 6992 0 1010 8 4278190080 0 5 0 0 0 6992 1058 202 208 98 2 1122 1154 8 'VM Packages' 1202 0 0 1234 6 1 1264 8 'doIt' 8 'CardLabel text: ''VM Packages'' iconBlock: [UMLVirtualMachinePackage icon]' 8 #[29 30 34 112 31 161 106 194 105] 1152 7168 8 ##(Smalltalk.UMLVirtualMachinePackage)  1344 1360 7184 11 1 0 0 410 432 98 15 0 6992 98 2 8 1140850688 131073 7280 0 0 0 5 0 0 0 7280 498 234 240 98 2 410 944 98 16 0 7280 98 2 8 1409286144 131073 7392 0 1010 8 4278190080 0 5 0 0 0 7392 1058 202 208 98 2 1122 1154 8 'VM Classes' 1202 0 0 1234 6 1 1264 8 'doIt' 8 'CardLabel text: ''VM Classes'' iconBlock: [UMLVirtualMachineClass icon]' 8 #[29 30 34 112 31 161 106 194 105] 1152 7568 8 ##(Smalltalk.UMLVirtualMachineClass)  1344 1360 7584 11 1 0 0 410 8 ##(Smalltalk.ListView)  98 30 0 7392 98 2 8 1409290316 1025 7680 2114 202 208 656 0 2192 1010 8 4278190080 0 13 0 0 0 7680 0 8 4294902919 3874 8 #name 98 0 2368 2448 0 0 0 818 65 65 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Class Name' 1001 8 #left 3874 7856 98 0 1202 0 0 1234 2 1 1200 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 7856 8032 7 513 0 0 0 7680 0 1 0 0 8 #largeIcons 656 0 131169 0 0 690 202 208 98 2 754 784 98 2 818 9 49 818 623 379 7680 754 4192 98 1 8 'Class Name' 7680 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 59 1 0 0 213 0 0 0] 98 0 1824 0 27 1122 1154 8 'Traits' 1202 0 0 1234 6 1 1264 8 'doIt' 8 'CardLabel text: ''Traits'' iconBlock: [UMLTrait icon]' 8 #[29 30 34 112 31 161 106 194 105] 1152 8368 8 ##(Smalltalk.UMLTrait)  1344 1360 8384 11 1 0 0 410 7696 98 30 0 7392 98 2 8 1409355852 1025 8480 2114 202 208 656 0 2192 1010 8 4278190080 0 5 0 0 0 8480 0 8 4294902919 3874 7856 98 0 2368 2448 0 0 0 818 65 65 0 0 202 208 98 1 7938 8 'Column 1' 201 7984 3874 2320 98 0 8 ##(Smalltalk.SortedCollection)  0 0 8480 0 1 0 0 8112 656 0 131169 0 0 690 202 208 98 2 754 784 98 2 818 9 49 818 623 379 8480 754 4192 98 1 8 'Column 1' 8480 866 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 59 1 0 0 213 0 0 0] 98 0 1824 0 27 7680 234 256 98 4 7680 8 'classList' 8480 8 'traits' 0 410 2048 98 28 0 7392 98 2 8 1140916736 1 9056 2114 202 208 98 2 7552 8352 0 2192 0 0 1 0 0 0 9056 0 8 4294903246 1202 0 0 2242 2 3 2272 2288 575230339 8 #[30 105 226 0 106] 2320 9184 7 257 0 1202 0 0 2242 2 3 2368 2384 579598755 8 #[30 105 226 0 106] 2416 9232 7 257 0 2448 0 0 0 0 0 2464 0 0 0 0 0 690 202 208 98 3 754 784 98 2 818 1 1 818 639 435 9056 754 2608 98 1 98 1 3 9056 754 2672 98 2 -1 1 9056 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 217 0 0 0] 98 0 1824 0 27 690 202 208 98 1 754 784 98 2 818 1 163 818 639 435 7392 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 81 0 0 0 63 1 0 0 42 1 0 0] 98 3 7680 8480 9056 1824 0 27 7 16 234 256 98 2 410 7696 98 30 0 7280 98 2 8 1409355848 1025 9712 2114 202 208 656 0 2192 1010 8 4278190080 0 21 5970 0 16 98 6 6018 1 6050 8 #addVirtualMachinePackage 8 'Add Virtual Machine Package' 1 1 0 0 0 6018 1 6050 8 #importPackage 8 'Import Package' 1 1 0 0 0 6178 4097 6018 1 6050 8 #addUnpackagedClasses 8 'Add unpacked classes' 1 1 0 0 0 6178 4097 6018 1 6050 8 #removeVirtualMachinePackage 8 'Remove Virtual Machine Package' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 9712 0 8 4294902919 3874 7856 98 0 2368 2448 0 0 0 818 65 65 0 0 202 208 98 1 7938 8 'Package Name' 501 7984 3874 7856 98 0 1202 0 0 1234 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 7856 10336 7 513 0 0 0 9712 0 1 0 0 8112 656 0 131169 0 0 690 202 208 98 3 754 784 98 2 818 1 1 818 639 145 9712 754 6448 98 1 9840 9712 754 4192 98 1 8 'Package Name' 9712 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 72 0 0 0] 98 0 1824 0 27 8 'packagesPresenter' 0 690 202 208 98 1 754 784 98 2 818 9 49 818 639 597 7280 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 67 1 0 0 66 1 0 0] 98 3 9712 410 5488 98 12 0 7280 98 2 8 1140850688 1 10880 0 1010 8 4278190080 0 517 0 0 0 10880 690 202 208 98 1 754 784 98 2 818 1 145 818 639 19 10880 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 72 0 0 0 63 1 0 0 81 0 0 0] 98 0 1824 0 27 7392 1824 0 27 1122 1154 8 'Hierarchy' 1202 0 0 1234 6 1 1264 8 'doIt' 8 'CardLabel text: ''Hierarchy'' iconBlock: [TreeModel icon]' 8 #[29 30 34 112 31 161 106 194 105] 1152 11168 8 ##(Smalltalk.TreeModel)  1344 1360 11184 11 1 0 0 410 8 ##(Smalltalk.TreeView)  98 27 0 6992 98 2 8 1140916775 1025 11280 11266 0 2192 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 656 1010 8 4278190080 0 5 5970 0 16 98 1 6018 1 6050 8 #addVirtualMachineClass 8 'Add Virtual Machine Class' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 11280 0 8 4294903295 3874 7856 98 0 2368 2448 0 1202 0 0 1234 2 1 8 ##(Smalltalk.UndefinedObject)  8 'doIt' 8 '[:e | e printAllAttributesNames]' 8 #[30 105 226 0 106] 8 #printAllAttributesNames 11616 7 257 0 0 0 0 234 240 656 17 2464 1 0 690 202 208 98 2 754 784 98 2 818 9 49 818 639 597 11280 754 6448 98 1 11456 11280 866 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 67 1 0 0 66 1 0 0] 98 0 1824 0 27 7280 234 256 98 4 7280 8 'packagesContainer' 11280 8 'hierarchy' 0 410 2048 98 28 0 6992 98 2 8 1140916736 1 12000 2114 202 208 98 2 7152 11152 0 2192 0 0 1 0 0 0 12000 0 8 4294903246 1202 0 0 2242 2 3 2272 2288 575230339 8 #[30 105 226 0 106] 2320 12128 7 257 0 1202 0 0 2242 2 3 2368 2384 579598755 8 #[30 105 226 0 106] 2416 12176 7 257 0 2448 0 0 0 0 0 2464 0 0 0 0 0 690 202 208 98 3 754 784 98 2 818 1 1 818 655 653 12000 754 2608 98 1 98 1 3 12000 754 2672 98 2 -1 1 12000 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 71 1 0 0 70 1 0 0] 98 0 1824 0 27 690 202 208 98 1 754 784 98 2 818 1 1 818 655 653 6992 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 71 1 0 0 70 1 0 0] 98 3 7280 11280 12000 1824 0 27 8 'card' 0 690 202 208 98 1 754 784 98 2 818 1 1 818 655 653 6864 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 71 1 0 0 70 1 0 0] 98 2 410 5488 98 12 0 6864 98 2 8 1140850688 1 12800 0 1010 8 4278190080 0 517 0 0 0 12800 690 202 208 98 1 754 784 98 2 818 1 159 818 655 19 12800 866 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 79 0 0 0 71 1 0 0 88 0 0 0] 98 0 1824 0 27 6992 1824 0 27 410 5488 98 12 0 3088 98 2 8 1140850688 1 13056 0 1010 8 4278190080 0 517 0 0 0 13056 690 202 208 98 1 754 784 98 2 818 655 1 818 19 653 13056 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 71 1 0 0 0 0 0 0 80 1 0 0 70 1 0 0] 98 0 1824 0 27 3200 1824 0 27 410 5488 98 12 0 416 98 2 8 1140850688 1025 13312 0 1010 8 4278190080 0 517 0 0 0 13312 690 202 208 98 1 754 784 98 2 818 1 653 818 1981 27 13312 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 70 1 0 0 222 3 0 0 83 1 0 0] 98 0 1824 0 27 560 1824 0 27 )! !
!UMLVirtualMachineBrowser class categoriesFor: #defaultModel!public! !
!UMLVirtualMachineBrowser class categoriesFor: #resource_Default_view!public!resources-views! !

