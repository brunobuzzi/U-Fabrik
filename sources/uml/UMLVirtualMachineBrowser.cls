"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLVirtualMachineBrowser
	instanceVariableNames: 'hierarchyPresenter classListPresenter implementationsPresenter implementationComposite classSidePresenter metaclassSidePresenter radioButtonsPresenter categoriesPresenter packagesPresenter traitsPresenter classCommentsPresenter'
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
	traitsPresenter := self add: ListPresenter new name: 'traits'.
	classCommentsPresenter := self add: RichTextComposite new name: 'classComments'.!

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

	self selectedClassDescription ifNil: [^self].

	methods := self selectedClassDescription methodsOfCategory: categoriesPresenter selection.

	implementationsPresenter model: (ListModel on: methods).!

onClassListChanged

	self hasSelectedClass ifFalse: [^implementationsPresenter model: ListModel new.].

	self selectClass: self selectedClassDescription.

	classCommentsPresenter model: (self selectedClassDescription aspectValue: #comments). !

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

	categoriesPresenter model: (ListModel on: self selectedClassDescription getAllCategoriesButGUICategories).

	classCommentsPresenter model: (self selectedClassDescription aspectValue: #comments). !

onTraitDoubleCliked: aMouseEvent
	| shell |

	traitsPresenter hasSelection ifFalse: [^self].

	shell := UMLTraitBrowserShell show.
	shell selectTrait: traitsPresenter selection!

onTreeClassChanged

	hierarchyPresenter hasSelection ifFalse: [^implementationsPresenter model: ListModel new.].

	self selectClass: self selectedClassDescription.

	classCommentsPresenter model: (self selectedClassDescription aspectValue: #comments). !

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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 34 2 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 544 nil nil nil 5 nil nil nil 544 482 170 176 8 #() false 170 192 640 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 675 786 1981 657 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 81 1 0 0 222 3 0 0 153 2 0 0] 34 1 410 ##(Smalltalk.CardContainer) 34 16 nil 544 34 2 8 1409286144 131073 896 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 896 655878 ##(Smalltalk.CardLayout) 138 144 34 2 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Parsed Implementation' 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Parsed Implementation'' iconBlock: [UMLParsedImplementation  icon]' 8 #[29 30 34 112 31 161 106 194 105] 1104 1136 ##(Smalltalk.UMLParsedImplementation) #icon #text:iconBlock: 1168 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 896 34 2 8 1409286144 131073 1264 nil nil nil 5 nil nil nil 1264 482 170 176 640 false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 1264 34 2 8 1140850688 131073 1392 nil 962 8 4278190080 nil 5 nil nil nil 1392 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.UMLImplementationComposite) #resource_Default_view nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 1 786 1965 597 1392 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 214 3 0 0 42 1 0 0] 640 786 193 193 nil 27 8 'implementationComposite' nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 9 53 786 1965 597 1264 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 218 3 0 0 68 1 0 0] 34 1 1392 1664 nil 27 1074 1106 8 'Class Comments' 1154 0 nil 1186 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Class Comments'' iconBlock: [String icon]' 8 #[45 30 34 112 47 161 106 194 105] 983558 ##(Smalltalk.VariableBinding) #CardLabel 1104 1888 1986 #String ##(Smalltalk.String) #icon #text:iconBlock: 1904 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 896 34 2 8 1140850688 131073 2032 nil nil nil 5 nil nil nil 2032 482 170 176 640 false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 2032 34 2 8 1140850688 131073 2160 nil 962 8 4278190080 nil 5 nil nil nil 2160 1490 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 1 786 1965 597 2160 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 214 3 0 0 42 1 0 0] 640 1664 nil 27 8 'classComments' nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 9 53 786 1965 597 2032 834 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 218 3 0 0 68 1 0 0] 34 1 2160 1664 nil 27 1264 170 192 640 nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 896 34 2 8 1140916736 1 2608 590662 2 ##(Smalltalk.ListModel) 138 144 34 2 1120 1872 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) nil nil 1 nil nil nil 2608 nil 8 1917116126 1154 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 2784 7 257 nil 1154 0 nil 2802 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 2848 7 257 nil 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil #smallIcons nil nil nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 1 1 786 1981 657 2608 738 #basicSelectionsByIndex: 34 1 8 #(1) 2608 738 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 2608 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 222 3 0 0 72 1 0 0] 8 #() 1664 nil 27 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 1 786 1981 657 896 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 222 3 0 0 72 1 0 0] 34 3 1264 2032 2608 1664 nil 27 1664 nil 27 3 true 170 192 640 nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 2719 21 786 1981 1331 416 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 45 9 0 0 163 2 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 3504 nil nil nil 5 nil nil nil 3504 482 170 176 34 2 410 ##(Smalltalk.ContainerView) 34 15 nil 3504 34 2 8 1140850688 131073 3616 nil nil nil 5 nil nil nil 3616 482 170 176 640 false 170 192 640 nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 667 1 786 1315 657 3616 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 77 1 0 0 0 0 0 0 222 3 0 0 72 1 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 3616 34 2 8 1140850688 131073 3888 nil nil nil 5 nil nil nil 3888 788230 ##(Smalltalk.BorderLayout) 1 1 nil 410 ##(Smalltalk.ContainerView) 34 15 nil 3888 34 2 8 1409286144 131073 3984 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 3984 482 170 176 640 false 170 192 34 4 410 ##(Smalltalk.RadioButton) 34 16 nil 3984 34 2 8 1141058825 1 4144 721990 2 ##(Smalltalk.ValueHolder) nil false 1376774 ##(Smalltalk.PluggableSearchPolicy) 459270 ##(Smalltalk.Message) #= 8 #() 4274 #hash 8 #() true 962 8 4278190080 nil 5 nil nil nil 4144 nil 8 1917288844 852486 ##(Smalltalk.NullConverter) nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 21 1 786 317 61 4144 738 #text: 34 1 8 'Instance methods' 4144 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 168 0 0 0 30 0 0 0] 8 #() 1664 nil 27 8 'classSide' 410 ##(Smalltalk.RadioButton) 34 16 nil 3984 34 2 8 1140924425 1 4656 4210 nil nil 4242 4274 #= 8 #() 4274 #hash 8 #() false 962 4368 nil 5 nil nil nil 4656 nil 8 1917288844 4402 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 337 1 786 317 61 4656 738 #text: 34 1 8 'Class methods' 4656 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 168 0 0 0 0 0 0 0 70 1 0 0 30 0 0 0] 8 #() 1664 nil 27 8 'metaclassSide' 590342 ##(Smalltalk.Rectangle) 786 21 1 786 1 1 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 597 786 653 61 3984 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 42 1 0 0 70 1 0 0 72 1 0 0] 34 2 4144 4656 1664 nil 27 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 3888 34 2 8 1140850688 131073 5312 nil 962 8 4278190080 nil 13 nil nil nil 5312 1490 ##(Smalltalk.ListPresenter) #resource_UMLImplementation_list nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 1 786 653 597 5312 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 70 1 0 0 42 1 0 0] 640 1664 nil 27 170 192 34 4 3984 8 'radioButtons' 5312 8 'implementations' nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 1 786 653 657 3888 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 70 1 0 0 72 1 0 0] 34 2 5312 3984 1664 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 3616 34 2 8 1140850688 1 5792 nil 962 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 5792 nil 1 #left nil nil nil 786 1 1 786 9 9 nil 5920 nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 653 1 786 11 657 5792 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 70 1 0 0 0 0 0 0 75 1 0 0 72 1 0 0] 8 #() 1664 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 3616 34 2 8 1140850688 131073 6112 nil nil nil 5 nil nil nil 6112 482 170 176 640 false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 6112 34 2 8 1140850688 131073 6240 nil 962 8 4278190080 nil 21 265030 4 ##(Smalltalk.Menu) nil true 34 4 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) #addCategory 8 'Add Category' 1 1 nil nil nil 6386 1 6418 #removeCategory 8 'Remove Category' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 6386 1 6418 #browserImplementationOfCategory 8 'Browse Implementations' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 6240 1490 ##(Smalltalk.ListPresenter) #resource_UMLCategory_list nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 1 1 786 653 657 6240 738 #contextMenu: 34 1 6352 6240 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 70 1 0 0 72 1 0 0] 640 1664 nil 27 8 'categories' nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 663 1 786 653 657 6112 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 75 1 0 0 0 0 0 0 145 2 0 0 72 1 0 0] 34 1 6240 1664 nil 27 1664 nil 27 5 false 170 192 640 nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 1 786 1981 657 3504 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 222 3 0 0 72 1 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 3504 34 2 8 1140850688 131073 7152 nil nil nil 5 nil nil nil 7152 482 170 176 640 true 170 192 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 7152 34 2 8 1409286144 131073 7280 nil 962 8 4278190080 nil 5 nil nil nil 7280 1010 138 144 34 2 1074 1106 8 'VM Packages' 1154 0 nil 1186 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''VM Packages'' iconBlock: [UMLVirtualMachinePackage icon]' 8 #[29 30 34 112 31 161 106 194 105] 1104 7456 ##(Smalltalk.UMLVirtualMachinePackage) #icon #text:iconBlock: 7472 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 7280 34 2 8 1140850688 131073 7552 nil nil nil 5 nil nil nil 7552 482 170 176 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 7552 34 2 8 1409286144 131073 7664 nil 962 8 4278190080 nil 5 nil nil nil 7664 1010 138 144 34 2 1074 1106 8 'VM Classes' 1154 0 nil 1186 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''VM Classes'' iconBlock: [UMLVirtualMachineClass icon]' 8 #[29 30 34 112 31 161 106 194 105] 1104 7840 ##(Smalltalk.UMLVirtualMachineClass) #icon #text:iconBlock: 7856 11 1 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 7664 34 2 8 1409290316 1025 7936 2674 138 144 640 nil 2752 962 8 4278190080 nil 13 nil nil nil 7936 nil 8 1917445487 4274 #name 8 #() ##(Smalltalk.IconicListAbstract) 2912 nil nil nil 786 65 65 nil nil 138 144 34 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Class Name' 1001 #left 4274 #name 8 #() 1154 0 nil 1186 2 1 1152 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 8240 7 513 nil nil nil 7936 nil 1 nil nil #largeIcons 640 nil 131169 nil 8 #(nil) 674 138 144 34 2 738 #createAt:extent: 34 2 786 9 53 786 625 381 7936 738 #text: 34 1 8 'Class Name' 7936 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 60 1 0 0 216 0 0 0] 8 #() 1664 nil 27 1074 1106 8 'Traits' 1154 0 nil 1186 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Traits'' iconBlock: [UMLTrait icon]' 8 #[29 30 34 112 31 161 106 194 105] 1104 8576 ##(Smalltalk.UMLTrait) #icon #text:iconBlock: 8592 11 1 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 7664 34 2 8 1409355852 1025 8672 2674 138 144 640 nil 2752 962 8 4278190080 nil 5 nil nil nil 8672 nil 8 1917445487 4274 #name 8 #() ##(Smalltalk.IconicListAbstract) 2912 nil nil nil 786 65 65 nil nil 138 144 34 1 8162 8 'Column 1' 201 #left 4274 #displayString 8 #() ##(Smalltalk.SortedCollection) nil nil 8672 nil 1 nil nil #largeIcons 640 nil 131169 nil 8 #(nil) 674 138 144 34 2 738 #createAt:extent: 34 2 786 9 53 786 625 381 8672 738 #text: 34 1 8 'Column 1' 8672 834 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 60 1 0 0 216 0 0 0] 8 #() 1664 nil 27 7936 170 192 34 4 8672 8 'traits' 7936 8 'classList' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 7664 34 2 8 1140916736 1 9248 2674 138 144 34 2 7824 8560 nil 2752 nil nil 1 nil nil nil 9248 nil 8 1917116126 1154 0 nil 2802 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 9376 7 257 nil 1154 0 nil 2802 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 9424 7 257 nil 2912 nil nil nil nil nil #smallIcons nil nil nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 1 1 786 641 441 9248 738 #basicSelectionsByIndex: 34 1 8 #(1) 9248 738 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 9248 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 64 1 0 0 220 0 0 0] 8 #() 1664 nil 27 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 157 786 641 441 7664 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 78 0 0 0 64 1 0 0 42 1 0 0] 34 3 7936 8672 9248 1664 nil 27 7 true 170 192 34 2 410 ##(Smalltalk.ListView) 34 30 nil 7552 34 2 8 1409355848 1025 9904 2674 138 144 640 nil 2752 962 8 4278190080 nil 21 6338 nil true 34 6 6386 1 6418 #addVirtualMachinePackage 8 'Add Virtual Machine Package' 1 1 nil nil nil 6386 1 6418 #importPackage 8 'Import Package' 1 1 nil nil nil 6514 4097 6386 1 6418 #addUnpackagedClasses 8 'Add unpacked classes' 1 1 nil nil nil 6514 4097 6386 1 6418 #removeVirtualMachinePackage 8 'Remove Virtual Machine Package' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 9904 nil 8 1917445487 4274 #name 8 #() ##(Smalltalk.IconicListAbstract) 2912 nil nil nil 786 65 65 nil nil 138 144 34 1 8162 8 'Package Name' 501 #left 4274 #name 8 #() 1154 0 nil 1186 2 1 106 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 10464 7 513 nil nil nil 9904 nil 1 nil nil #largeIcons 640 nil 131169 nil 8 #(nil) 674 138 144 34 3 738 #createAt:extent: 34 2 786 1 1 786 641 147 9904 738 #contextMenu: 34 1 10032 9904 738 #text: 34 1 8 'Package Name' 9904 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 64 1 0 0 73 0 0 0] 8 #() 1664 nil 27 8 'packagesPresenter' nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 9 53 786 641 597 7552 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 68 1 0 0 68 1 0 0] 34 3 9904 410 ##(Smalltalk.Splitter) 34 12 nil 7552 34 2 8 1140850688 1 11024 nil 962 8 4278190080 nil 517 nil nil nil 5890 11024 nil 1 #left nil nil nil 786 1 1 5936 nil 11136 nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 147 786 641 11 11024 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 73 0 0 0 64 1 0 0 78 0 0 0] 8 #() 1664 nil 27 7664 1664 nil 27 1074 1106 8 'Hierarchy' 1154 0 nil 1186 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Hierarchy'' iconBlock: [TreeModel icon]' 8 #[29 30 34 112 31 161 106 194 105] 1104 11344 ##(Smalltalk.TreeModel) #icon #text:iconBlock: 11360 11 1 nil nil 410 ##(Smalltalk.TreeView) 34 27 nil 7280 34 2 8 1140916775 1025 11440 590918 3 ##(Smalltalk.TreeModel) nil 2752 525062 ##(Smalltalk.TreeNode) nil nil nil 170 192 640 962 8 4278190080 nil 5 6338 nil true 34 1 6386 1 6418 #addVirtualMachineClass 8 'Add Virtual Machine Class' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 11440 nil 8 1917192846 4274 #name 8 #() ##(Smalltalk.IconicListAbstract) 2912 nil 1154 0 nil 1186 2 1 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:e | e printAllAttributesNames]' 8 #[30 105 226 0 106] #printAllAttributesNames 11760 7 257 nil nil nil nil 170 176 640 17 #smallIcons 1 170 ##(Smalltalk.PluggableLookupTable) 640 674 138 144 34 2 738 #createAt:extent: 34 2 786 9 53 786 641 597 11440 738 #contextMenu: 34 1 11616 11440 834 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 68 1 0 0 68 1 0 0] 8 #() 1664 nil 27 7552 170 192 34 4 11440 8 'hierarchy' 7552 8 'packagesContainer' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 7280 34 2 8 1140916736 1 12128 2674 138 144 34 2 7440 11328 nil 2752 nil nil 1 nil nil nil 12128 nil 8 1917116126 1154 0 nil 2802 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 12256 7 257 nil 1154 0 nil 2802 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 12304 7 257 nil 2912 nil nil nil nil nil #smallIcons nil nil nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 1 1 786 657 657 12128 738 #basicSelectionsByIndex: 34 1 8 #(1) 12128 738 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 12128 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 72 1 0 0 72 1 0 0] 8 #() 1664 nil 27 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 1 786 657 657 7280 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 72 1 0 0 72 1 0 0] 34 3 7552 11440 12128 1664 nil 27 8 'card' nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 1 786 657 657 7152 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 72 1 0 0 72 1 0 0] 34 2 410 ##(Smalltalk.Splitter) 34 12 nil 7152 34 2 8 1140850688 1 12928 nil 962 8 4278190080 nil 517 nil nil nil 5890 12928 nil 1 #left nil nil nil 786 1 1 5936 nil 13040 nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 159 786 655 19 12928 834 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 79 0 0 0 71 1 0 0 88 0 0 0] 8 #() 1664 nil 27 7280 1664 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 3504 34 2 8 1140850688 1 13216 nil 962 8 4278190080 nil 517 nil nil nil 5890 13216 nil 1 #left nil nil nil 786 1 1 5936 nil 13328 nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 657 1 786 11 657 13216 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 72 1 0 0 0 0 0 0 77 1 0 0 72 1 0 0] 8 #() 1664 nil 27 3616 1664 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1025 13504 nil 962 8 4278190080 nil 517 nil nil nil 5890 13504 nil 1 #left nil nil nil 786 1 1 5936 nil 13616 nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 657 786 1981 19 13504 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 72 1 0 0 222 3 0 0 81 1 0 0] 8 #() 1664 nil 27 544 1664 nil 27 )! !
!UMLVirtualMachineBrowser class categoriesFor: #defaultModel!public! !
!UMLVirtualMachineBrowser class categoriesFor: #resource_Default_view!public!resources-views! !

