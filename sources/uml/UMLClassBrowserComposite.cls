"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLClassBrowserComposite
	instanceVariableNames: 'classesPresenter hierarchyPresenter categoryBrowser attributesPresenter relationsPresenter traitsPresenter radioButtonsPresenter diagramPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassBrowserComposite guid: (GUID fromString: '{60a8c8e6-5038-43cb-b727-b2ca4d030b74}')!
UMLClassBrowserComposite comment: ''!
!UMLClassBrowserComposite categoriesForClass!Unclassified! !
!UMLClassBrowserComposite methodsFor!

addCategory
	^categoryBrowser addCategory!

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
	(implementation hasInstanceVariableSendingAddRemoveIn: selectedClass) 
		ifTrue: [^MessageBox notify: self canNotSendAddRemoveToInstanceVariable caption: self applicationName].
	selectedClass addImplementation: implementation.
	self topShell onUMLModelClassChanged.
	self topShell selectImplementation: implementation.
	self topShell mainComposite trigger: #newMethod:toClass:in:
		withArguments: (Array 
				with: implementation
				with: selectedClass
				with: self topShell mainComposite).
	self checkCompilationErrorsFor: result inClass: selectedClass!

addNewClass
	| className newMetaclass metaSuperclass instSuperclass selectedModel |
	self topShell selectedModel 
		ifNil: 
			[^MessageBox notify: 'Select the UML Model of the new class first !!' caption: self applicationName].
	className := Prompter prompt: 'Enter the name of the new class' caption: self applicationName.
	(className isNil or: [className isEmpty]) ifTrue: [^self].
	selectedModel := model.
	(selectedModel virtualMachine hasClassNamed: className) 
		ifTrue: [^MessageBox notify: 'This class already exist' caption: self applicationName].
	newMetaclass := UMLMetaclass newNamed: className.
	newMetaclass virtualMachine: self defaultVirtualMachine.
	metaSuperclass := (self topShell selectedClass 
				ifNil: [selectedModel virtualMachine objectClass]
				ifNotNil: [:value | self topShell selectedClassDescription]) getMetaclass.
	instSuperclass := (self topShell selectedClass 
				ifNil: [selectedModel virtualMachine objectClass]
				ifNotNil: [:value | self topShell selectedClassDescription]) instanceClass.
	newMetaclass umlSuperclass: metaSuperclass.
	newMetaclass instanceClass umlSuperclass: instSuperclass.
	model addClass: newMetaclass instanceClass.
	newMetaclass instanceClass virtualMachine: self defaultVirtualMachine.
	self topShell model: self topShell model.
	self topShell selectUMLModel: selectedModel ifAbsent: [].
	self topShell selectClass: newMetaclass instanceClass ifAbsent: [].
	self topShell mainComposite trigger: #newClassAdded:toModel:in:
		withArguments: (Array 
				with: newMetaclass instanceClass
				with: self topShell selectedModel
				with: self topShell mainComposite)!

addSimpleAttribute
	| newAttribute |

	newAttribute := UMLClassAttribute new umlClass: self selectedClass.
	newAttribute := UMLSimpleAttributeDialog showModalOn: newAttribute.
	newAttribute ifNil: [^self].
	self selectedClass addAttribute: newAttribute.

	self refreshInstancesVariables.

	self topShell mainComposite trigger: #newAttribute:addedToClass:in: withArguments: (Array with: newAttribute with: self selectedClass with: self topShell mainComposite)!

addTrait

	^self addTraitToSelectedClass!

addTraitToSelectedClass
	| traits |
	self hasSelectedClass 
		ifFalse: [^MessageBox notify: 'You have to select a class' caption: self applicationName].
	traits := DetalleDeOpciones 
				listaCon: self defaultVirtualMachine traits asOrderedCollection
				para: 'UMLClasses view'
				titulo: 'Select TRAIT to Add'.
	traits ifNil: [^nil].
	self selectedClass addTrait: traits last.
	traitsPresenter model: (ListModel on: self selectedClass traits)!

addUMLRelation
	"We are going to add a relation to the selected class. We create <anUMLAggreagation> with <one to one> relation multiplicity by default"
	| newRelation relationMultiplicity shell |

	newRelation := UMLAggregation new.
	newRelation relationMultiplicity: (UMLOneToOneMultiplicity association: newRelation);
		sourceMultiplicity: UMLOneSM new;
		targetMultiplicity: UMLOneSM new.
	relationMultiplicity := newRelation relationMultiplicity.
	relationMultiplicity sourceMultiplicity: newRelation sourceMultiplicity.
	relationMultiplicity sourceMultiplicity association: newRelation.
	relationMultiplicity targetMultiplicity: newRelation targetMultiplicity.
	relationMultiplicity targetMultiplicity association: newRelation.
	newRelation sourceClass: self topShell selectedClass.
	shell := newRelation showForAdd.
	shell parentPresenter: self.!

autogenerateInitializeMethod
	self hasSelectedClass 
		ifFalse: [^MessageBox notify: 'You have to select a class' caption: self applicationName].
	self selectedClass autoGenerateInitializeMethodIn: self defaultVirtualMachine.
	self onClassChanged!

basicSelectedClass
	| currentCard |

	currentCard := (self currentCard == DeafObject current) ifFalse: [self currentCard] ifTrue: [(parentPresenter view viewNamed: 'card') currentCard].

	currentCard ifNil: [^nil].

	^currentCard selectionOrNil!

browseAttributeClass
	| shell selectedType |

	attributesPresenter hasSelection ifFalse: [^self ].

	selectedType := self selectedClass isClassAssociation 
		ifTrue: [attributesPresenter selection getType] 
		ifFalse: [attributesPresenter selection type].

	shell := self topShell openUMLBrowser.
	shell selectUMLClass: selectedType ifAbsent: []!

browseClassReferences
	| references browser className |
	className := self hasSelectedClass 
				ifFalse: 
					[(Prompter prompt: 'Enter the Class name to search...' caption: self applicationName) 
						ifNil: [^self]
						ifNotNil: [:value | value asSymbol]]
				ifTrue: [self selectedClass className].
	references := self defaultVirtualMachine getReferencesToClassName: className.
	browser := UMLMethodBrowserShell showOn: references.
	browser view caption: browser view caption , ' - references to Class: <' , className , '>'!

browserImplementationDefenitions
	^categoryBrowser browserImplementationDefenitions!

browserImplementationOfCategory
	^categoryBrowser browserImplementationOfCategory!

browserImplementationReferences
	^categoryBrowser browserImplementationReferences!

canNotSendAddRemoveToInstanceVariable

	^'The instance variable of an object can NOT receive #add: or #remove: messages. 
In order to add an object send: <self add: myObject>. If you want to add any kind of object to instances variables you should use a FreeCollection instead of OrderedCollection, check the #initialize method.'!

card

	^(view viewNamed: 'card')!

checkSelectedMethod

	self hasSelectedClass ifFalse: [^self ].
	self hasSelectedImplementation ifFalse: [^self].

	self checkCompilationErrorsFor: self selectedImplementation parsedCode inClass: self selectedClass!

classes
	| all |

	all := Dictionary new.
	classesPresenter model list do: [:each | all at: each name put: each].
	^all
!

createComponents
	super createComponents.
	classesPresenter := self add: ListPresenter new name: 'classes'.
	hierarchyPresenter := self add: TreePresenter new name: 'hierarchy'.
	categoryBrowser := self add: UMLCategoryBrowser new name: 'categoryBrowser'.
	attributesPresenter := self add: ListPresenter new name: 'attributesPresenter'.
	relationsPresenter := self add: ListPresenter new name: 'relationsPresenter'.
	traitsPresenter := self add: ListPresenter new name: 'traitsPresenter'.
	radioButtonsPresenter := self add: RadioButtonSetPresenter new name: 'radioButtonsPresenter'.
	diagramPresenter := self add: ImagePresenter new name: 'diagram'.!

createSchematicWiring

	super createSchematicWiring.

	classesPresenter when: #selectionChanged send: #onClassChanged to: self;
		when: #dragOver: send: #onDragOverClass: to: self;
		when: #drop: send: #onDropUMLImplementationOverClass: to: self.

	hierarchyPresenter when: #selectionChanged send: #onTreeClassChanged to: self;
		when: #dragOver: send: #onDragOverClass: to: self;
		when: #drop: send: #onDropUMLImplementationOverClass: to: self.

	attributesPresenter when: #leftButtonDoubleClicked: send: #onAttributeDoubleClicked: to: self.

	radioButtonsPresenter when: #valueChanged send: #onRadioButtonChanged to: self.

	relationsPresenter when: #leftButtonDoubleClicked: send: #onRelationsDoubleClicked: to: self.

	traitsPresenter when: #selectionChanged send: #onTraitChanged to: self.

!

currentCard

	(self card == DeafObject current) ifTrue: [^(parentPresenter view viewNamed: 'card' ifNone: [^nil]) currentCard].
	^self card currentCard!

currentCardSelection

	(self card == DeafObject current) ifTrue: [^(parentPresenter view viewNamed: 'card') currentCard selection].

	^self card currentCard selection!

designCustomizedView
	| instance |
	self hasSelectedClass 
		ifFalse: [^MessageBox notify: 'You have to select a class' caption: self applicationName].
	instance := self selectedClass newInstance.
	instance runBehaviorInitialize.
	^instance inspectUMLInstanceForDesign!

emptyAll

	classesPresenter model: ListModel new.
	hierarchyPresenter model: TreeModel new.
	categoryBrowser blankAll.
	
	!

fileInMethodsOfCategory
	^categoryBrowser fileInMethodsOfCategory!

fileOutMethodsOfCategory
	^categoryBrowser fileOutMethodsOfCategory!

generateAttributesFromRelations
	(MessageBox confirm: 'Are you sure to re-generate the attributes for each relation of this class ?'
		caption: self applicationName) ifFalse: [^self].
	self selectedClass removeAllRelationsAttributes.
	self selectedClass generateAttributesForRelations.
	self selectClass: self selectedClass!

getAllClasses

	(self currentCardSelection == DeafObject current) 
	ifFalse: [^OrderedCollection with: (self isClassSideSelected 
		ifTrue: [self currentCardSelection] 
		ifFalse: [self currentCardSelection getMetaclass])].

	^OrderedCollection with: (self isClassSideSelected 
		ifTrue: [classesPresenter view parentView currentCard selection] 
		ifFalse: [classesPresenter view parentView currentCard selection getMetaclass])
	 
!

getAllText
	^categoryBrowser getAllText!

hasSelectedCategory
	^categoryBrowser hasSelectedCategory!

hasSelectedClass

	self currentCard ifNil: [^false].

	^self currentCard hasSelection!

hasSelectedImplementation
	^categoryBrowser hasSelectedImplementation!

inspectClass

	hierarchyPresenter selection inspect!

inspectCustomizedNewInstance
	| newInstance |
	self hasSelectedClass 
		ifFalse: [^MessageBox notify: 'You have to select a class' caption: self applicationName].
	newInstance := self selectedClass newInstance.
	newInstance runBehaviorInitialize.
	^newInstance inspectUMLWithCustomizedView!

inspectNewInstance
	| instance |
	self hasSelectedClass 
		ifFalse: [^MessageBox notify: 'You have to select a class' caption: self applicationName].
	instance := self selectedClass instanceClass newInstance.
	instance runBehaviorInitialize.
	instance inspectUMLInstance!

isClassSideSelected

	^radioButtonsPresenter value = #classSide!

menuBar
	| menu |

	menu := MenuBar new.
	^menu!

methods

	^categoryBrowser methods!

model: anUMLModel

	super model: anUMLModel.

	classesPresenter model: (ListModel on: anUMLModel umlClasses).

	hierarchyPresenter model: anUMLModel classesAsTreeModel.!

onAttributeDoubleClicked: aMouseEvent
	| selectedType |

	attributesPresenter hasSelection ifFalse: [^self ].

	selectedType := self selectedClass isClassAssociation 
		ifTrue: [attributesPresenter selection getType] 
		ifFalse: [attributesPresenter selection type].

	self topShell selectUMLClass: selectedType ifAbsent: []!

onCategoriaAdded

	^self onClassChanged.!

onCategoriaChanged
	^categoryBrowser onCategoriaChanged!

onClassChanged

	classesPresenter view == DeafObject current ifTrue: [^self].
	"Bug que no tuve tiempo de buscar la cuasa. Cuando envia el evento de actualizar clases algunas views con DeafObject"


	self onChangedIn: classesPresenter
!

onDragOverClass: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDropUMLImplementationOverClass: aDragDropSession
	| method class newMethod |

	class := self isClassSideSelected ifTrue: [aDragDropSession suggestedTarget] ifFalse: [aDragDropSession suggestedTarget getMetaclass].
	method := aDragDropSession suggestedSource.
	newMethod := (UMLParsedImplementation newNamed: method name) parsedCode: (SmalltalkParser parseMethod: method printMessage).
	class addImplementation: newMethod.
	self topShell selectClass: class instanceClass.
	self topShell selectImplementation: newMethod.
	self topShell mainComposite trigger: #newMethod:toClass:in: withArguments: (Array with: newMethod with: class with: self topShell mainComposite).!

onRadioButtonChanged
	| currentCard |

	currentCard := (parentPresenter view viewNamed: 'card') currentCard.
	currentCard hasSelection ifFalse: [^self].
	self setSelectionAttributesAndRelationsFor: (
		self isClassSideSelected 
		ifTrue: [currentCard selection] 
		ifFalse: [currentCard selection getMetaclass]
	).

	self onChangedIn:  currentCard
!

onRelationsDoubleClicked: aKeyEvent

	relationsPresenter hasSelection ifFalse: [^self].

	relationsPresenter selection showForEdit
!

onTraitChanged

	traitsPresenter hasSelection ifFalse: [^self onCategoriaChanged].

	self setMethodsWith: traitsPresenter selection methodsAsSortedCollection!

onTreeClassChanged

	self onChangedIn: hierarchyPresenter!

onUMLModelClassChanged
	| currentCard |

	currentCard := (self currentCard == DeafObject current) ifFalse: [self currentCard] ifTrue: [(parentPresenter view viewNamed: 'card') currentCard].

	(currentCard name = 'hierarchy') ifTrue: [^self onTreeClassChanged].

	^self onClassChanged!

refreshClasses

	^self model: self model!

refreshInstancesVariables

	attributesPresenter model: (ListModel on: self selectedClass instancesVariablesAsSortedCollection).!

refreshRelations

	self setSelectionAttributesAndRelationsFor: self selectedClass!

removeAttribute
	| attribute |
	attributesPresenter hasSelection ifFalse: [^self].
	(MessageBox 
		confirm: 'Do you want to remove the selected attribute ,' , attributesPresenter selection name , '>'
		caption: self applicationName) ifFalse: [^self].
	attribute := attributesPresenter selection.
	self selectedClass removeAttribute: attribute.
	self refreshInstancesVariables.
	self topShell mainComposite trigger: #removeAttribute:fromClass:in:
		withArguments: (Array 
				with: attribute
				with: self selectedClass
				with: self topShell mainComposite)!

removeCategory
	^categoryBrowser removeCategory!

removeClass
	| removedClass |
	self selectedClass ifNil: [^self].
	(MessageBox confirm: 'Are you sure to remove the selected class ?' caption: self applicationName) 
		ifFalse: [^self].
	removedClass := self selectedClass instanceClass.
	model removeClass: removedClass.
	removedClass uninstallClass.
	self topShell model: self topShell model.
	self topShell selectUMLModel: model ifAbsent: [].
	self topShell mainComposite trigger: #class:removedFromModel:in:
		withArguments: (Array 
				with: removedClass
				with: self topShell selectedModel
				with: self topShell mainComposite)!

removeTrait

	self selectedClass removeTrait: traitsPresenter selection.
	traitsPresenter model: (ListModel on: self selectedClass traits).
!

removeUMLRelation
	"We are going to remove a relation from the selected class. "

	(MessageBox 
		confirm: 'Do you want to remove the selected relation (the link between both classes will be removed) ?'
		caption: self applicationName) ifFalse: [^self].
	relationsPresenter selection sourceClass removeRelation: relationsPresenter selection.
	relationsPresenter selection targetClass removeRelation: relationsPresenter selection.
	self topShell mainComposite trigger: #relation:removedFromClass:in:
		withArguments: (Array 
				with: relationsPresenter selection
				with: relationsPresenter selection sourceClass
				with: self topShell mainComposite)!

resetAttributesAndRelations

	attributesPresenter model: ListModel new.
	relationsPresenter model: ListModel new.!

resetSanityCheck

	categoryBrowser resetSanityCheck!

selectClass: anUMLClass

	anUMLClass ifNil: [^self].

	^self currentCard selection: anUMLClass!

selectClass: anUMLClass ifAbsent: aNiladicValuable 

	anUMLClass ifNil: [^self].

	^self currentCard selection: anUMLClass ifAbsent: aNiladicValuable!

selectedCategory
	^categoryBrowser selectedCategory!

selectedClass
	| selectedClass |

	selectedClass := self basicSelectedClass.
	selectedClass ifNil: [^nil].

	^self isClassSideSelected ifTrue: [selectedClass] ifFalse: [selectedClass getMetaclass]!

selectedClassDescription

	^self selectedClass!

selectedClassIsMetaclass
	^self isClassSideSelected not!

selectedElement

	^self selectedClass!

selectedImplementation

	^categoryBrowser selectedImplementation!

selectImplementation: anUMLParsedImplementation 

	^categoryBrowser selectImplementation: anUMLParsedImplementation !

selectSanityCard

	categoryBrowser selectSanityCard!

selectUMLClass: anUMLClass ifAbsent: aNiladicValuable 
	| currentCard |

	currentCard := (self currentCard == DeafObject current) ifFalse: [self currentCard] ifTrue: [(parentPresenter view viewNamed: 'card') currentCard].
	^currentCard selection: anUMLClass ifAbsent: [^aNiladicValuable value]!

setMethodsFor: anUMLClassDescription

	self setSelectionAttributesAndRelationsFor: anUMLClassDescription.

	categoryBrowser model: anUMLClassDescription getAllCategories copyWithoutDuplicates.

	categoryBrowser selectCategory: UMLAllButTraitCategory current.!

setMethodsWith: anOrderedCollection

	categoryBrowser setMethodsWith: anOrderedCollection!

setSanityCheckWith: aTreeModel

	categoryBrowser setSanityCheckWith: aTreeModel!

setSelectionAttributesAndRelationsFor: anUMLClassDescription

	attributesPresenter model: (ListModel on: (anUMLClassDescription allAttributes asSortedCollection: [:a :b | a attributeName <= b attributeName ])).

	relationsPresenter model: (ListModel on: anUMLClassDescription allRelations).

	traitsPresenter model: (ListModel on: anUMLClassDescription traits).!

switchEnabled

	attributesPresenter hasSelection ifFalse: [^self].

	attributesPresenter selection isEnabled: attributesPresenter selection isEnabled not!

switchLargeString
	attributesPresenter hasSelection ifFalse: [^self].
	attributesPresenter selection getType className = 'String' 
		ifFalse: 
			[^MessageBox notify: 'Only String''s attributes can be set as <large string>'
				caption: self applicationName].
	attributesPresenter selection isLargeString: attributesPresenter selection isLargeString not!

switchSourceNavigability

	relationsPresenter hasSelection ifFalse: [^self].

	relationsPresenter selection sourceMultiplicity isNavigable: relationsPresenter selection sourceMultiplicity isNavigable not.!

switchTargetNavigability

	relationsPresenter hasSelection ifFalse: [^self].

	relationsPresenter selection targetMultiplicity isNavigable: relationsPresenter selection targetMultiplicity isNavigable not.!

virtualMachine

	^model virtualMachine! !
!UMLClassBrowserComposite categoriesFor: #addCategory!public! !
!UMLClassBrowserComposite categoriesFor: #addMessageToImplementation!compiling!public! !
!UMLClassBrowserComposite categoriesFor: #addNewClass!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #addSimpleAttribute!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #addTrait!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #addTraitToSelectedClass!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #addUMLRelation!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #autogenerateInitializeMethod!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #basicSelectedClass!public! !
!UMLClassBrowserComposite categoriesFor: #browseAttributeClass!public! !
!UMLClassBrowserComposite categoriesFor: #browseClassReferences!public! !
!UMLClassBrowserComposite categoriesFor: #browserImplementationDefenitions!public! !
!UMLClassBrowserComposite categoriesFor: #browserImplementationOfCategory!public! !
!UMLClassBrowserComposite categoriesFor: #browserImplementationReferences!public! !
!UMLClassBrowserComposite categoriesFor: #canNotSendAddRemoveToInstanceVariable!compiling!public! !
!UMLClassBrowserComposite categoriesFor: #card!public! !
!UMLClassBrowserComposite categoriesFor: #checkSelectedMethod!public! !
!UMLClassBrowserComposite categoriesFor: #classes!public! !
!UMLClassBrowserComposite categoriesFor: #createComponents!public! !
!UMLClassBrowserComposite categoriesFor: #createSchematicWiring!class changed!drag & drop!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #currentCard!public! !
!UMLClassBrowserComposite categoriesFor: #currentCardSelection!public! !
!UMLClassBrowserComposite categoriesFor: #designCustomizedView!public! !
!UMLClassBrowserComposite categoriesFor: #emptyAll!public! !
!UMLClassBrowserComposite categoriesFor: #fileInMethodsOfCategory!public! !
!UMLClassBrowserComposite categoriesFor: #fileOutMethodsOfCategory!public! !
!UMLClassBrowserComposite categoriesFor: #generateAttributesFromRelations!public! !
!UMLClassBrowserComposite categoriesFor: #getAllClasses!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #getAllText!public! !
!UMLClassBrowserComposite categoriesFor: #hasSelectedCategory!public! !
!UMLClassBrowserComposite categoriesFor: #hasSelectedClass!public! !
!UMLClassBrowserComposite categoriesFor: #hasSelectedImplementation!public! !
!UMLClassBrowserComposite categoriesFor: #inspectClass!public! !
!UMLClassBrowserComposite categoriesFor: #inspectCustomizedNewInstance!public! !
!UMLClassBrowserComposite categoriesFor: #inspectNewInstance!public! !
!UMLClassBrowserComposite categoriesFor: #isClassSideSelected!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #menuBar!public! !
!UMLClassBrowserComposite categoriesFor: #methods!public! !
!UMLClassBrowserComposite categoriesFor: #model:!public! !
!UMLClassBrowserComposite categoriesFor: #onAttributeDoubleClicked:!public! !
!UMLClassBrowserComposite categoriesFor: #onCategoriaAdded!public! !
!UMLClassBrowserComposite categoriesFor: #onCategoriaChanged!public! !
!UMLClassBrowserComposite categoriesFor: #onClassChanged!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #onDragOverClass:!class changed!drag & drop!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #onDropUMLImplementationOverClass:!class changed!drag & drop!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #onRadioButtonChanged!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #onRelationsDoubleClicked:!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #onTraitChanged!class changed!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #onTreeClassChanged!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #onUMLModelClassChanged!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #refreshClasses!public! !
!UMLClassBrowserComposite categoriesFor: #refreshInstancesVariables!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #refreshRelations!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #removeAttribute!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #removeCategory!public! !
!UMLClassBrowserComposite categoriesFor: #removeClass!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #removeTrait!adding!public! !
!UMLClassBrowserComposite categoriesFor: #removeUMLRelation!adding!public!uml env events! !
!UMLClassBrowserComposite categoriesFor: #resetAttributesAndRelations!public! !
!UMLClassBrowserComposite categoriesFor: #resetSanityCheck!compiling!public! !
!UMLClassBrowserComposite categoriesFor: #selectClass:!public! !
!UMLClassBrowserComposite categoriesFor: #selectClass:ifAbsent:!public! !
!UMLClassBrowserComposite categoriesFor: #selectedCategory!public! !
!UMLClassBrowserComposite categoriesFor: #selectedClass!public! !
!UMLClassBrowserComposite categoriesFor: #selectedClassDescription!public! !
!UMLClassBrowserComposite categoriesFor: #selectedClassIsMetaclass!public! !
!UMLClassBrowserComposite categoriesFor: #selectedElement!public! !
!UMLClassBrowserComposite categoriesFor: #selectedImplementation!public! !
!UMLClassBrowserComposite categoriesFor: #selectImplementation:!public! !
!UMLClassBrowserComposite categoriesFor: #selectSanityCard!compiling!public! !
!UMLClassBrowserComposite categoriesFor: #selectUMLClass:ifAbsent:!public! !
!UMLClassBrowserComposite categoriesFor: #setMethodsFor:!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #setMethodsWith:!public! !
!UMLClassBrowserComposite categoriesFor: #setSanityCheckWith:!compiling!public! !
!UMLClassBrowserComposite categoriesFor: #setSelectionAttributesAndRelationsFor:!class changed!public! !
!UMLClassBrowserComposite categoriesFor: #switchEnabled!public! !
!UMLClassBrowserComposite categoriesFor: #switchLargeString!public! !
!UMLClassBrowserComposite categoriesFor: #switchSourceNavigability!public! !
!UMLClassBrowserComposite categoriesFor: #switchTargetNavigability!public! !
!UMLClassBrowserComposite categoriesFor: #virtualMachine!public! !

!UMLClassBrowserComposite class methodsFor!

defaultModel

	^UMLModel new 
		virtualMachine: UMLVirtualMachine default;
		yourself.!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.CardContainer)  98 16 0 560 98 2 8 1409286144 131073 704 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 704 655878 ##(Smalltalk.CardLayout)  202 208 98 4 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Attributes/Relations' 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  7 1 928 8 'doIt' 8 '(CardLabel text: ''Attributes/Relations'' iconBlock: [Icon fromId: ''TypeConverter.ico''])' 8 #[29 30 35 113 31 32 180 106 195 105] 928 960 8 ##(Smalltalk.Icon)  8 'TypeConverter.ico' 8 #fromId: 8 #text:iconBlock: 992 11 1 0 0 410 432 98 15 0 704 98 2 8 1140850688 131073 1152 0 0 0 5 0 0 0 1152 498 234 240 656 32 234 256 98 4 410 8 ##(Smalltalk.ReferenceView)  98 14 0 1152 98 2 8 1140850688 131073 1280 0 786 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #browseAttributeClass 8 'Browse Attribute Class' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1280 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_UMLAttributes_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1746 919 821 1280 1682 8 #contextMenu: 98 1 1408 1280 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 203 1 0 0 154 1 0 0] 656 1746 193 193 0 27 8 'attributesPresenter' 410 1296 98 14 0 1152 98 2 8 1140850688 131073 1920 0 786 1376 0 5 1394 0 16 98 7 1442 1 1474 8 #addUMLRelation 8 'Add UML Relation' 1 1 0 0 0 1442 1 1474 8 #removeUMLRelation 8 'Remove UML Relation' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1442 1 1474 8 #switchSourceNavigability 8 'Switch Source Navigability' 1 1 0 0 0 1442 1 1474 8 #switchTargetNavigability 8 'Switch Target Navigability' 1 1 0 0 0 2162 4097 1442 1 1474 8 #generateAttributesFromRelations 8 'Generate Attributes from Relations' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1920 1554 1584 8 #resource_UMLRelations_view 0 1618 202 208 98 2 1682 1712 98 2 1746 937 1 1746 919 821 1920 1682 1808 98 1 2000 1920 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 212 1 0 0 0 0 0 0 159 3 0 0 154 1 0 0] 656 1888 0 27 8 'relationsPresenter' 0 1618 202 208 98 1 1682 1712 98 2 1746 9 49 1746 1855 821 1152 1842 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 163 3 0 0 178 1 0 0] 98 3 1280 410 8 ##(Smalltalk.Splitter)  98 12 0 1152 98 2 8 1140850688 1 2800 0 786 8 4278190080 0 517 0 0 0 2800 1618 202 208 98 1 1682 1712 98 2 1746 919 1 1746 19 821 2800 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 203 1 0 0 0 0 0 0 212 1 0 0 154 1 0 0] 98 0 1888 0 27 1920 1888 0 27 898 930 8 'Traits' 978 0 0 1010 6 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Traits'' iconBlock: [UMLTrait icon]' 8 #[29 30 34 112 31 161 106 194 105] 928 3104 8 ##(Smalltalk.UMLTrait)  8 #icon 1136 3120 11 1 0 0 410 8 ##(Smalltalk.ListView)  98 30 0 704 98 2 8 1409355853 1025 3248 590662 2 ##(Smalltalk.ListModel)  202 208 656 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  786 8 4278190080 0 5 1394 0 16 98 2 1442 1 1474 8 #addTrait 8 'Add Trait' 1 1 0 0 0 1442 1 1474 8 #removeTrait 8 'Remove Trait' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 3248 0 8 4294902761 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'TRAIT Name' 501 8 #left 3634 8 #name 98 0 978 0 0 1010 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3856 3888 7 513 0 0 0 3248 0 1 0 0 8 #report 656 0 131169 0 0 1618 202 208 98 3 1682 1712 98 2 1746 9 49 1746 1855 821 3248 1682 1808 98 1 3440 3248 1682 8 #text: 98 1 8 'TRAIT Name' 3248 1842 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 163 3 0 0 178 1 0 0] 98 0 1888 0 27 898 930 8 'Source' 978 0 0 1010 6 1 928 8 'doIt' 8 '(CardLabel text: ''Source'' iconBlock: [UMLParsedImplementation icon])' 8 #[29 30 34 112 31 161 106 194 105] 928 4320 8 ##(Smalltalk.UMLParsedImplementation)  3232 1136 4336 11 1 0 0 410 1296 98 14 0 704 98 2 8 1140850688 131073 4432 0 786 8 4278190080 0 5 0 0 0 4432 1554 8 ##(Smalltalk.UMLImplementationComposite)  8 #resource_Default_view 0 1618 202 208 98 1 1682 1712 98 2 1746 9 49 1746 1855 821 4432 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 163 3 0 0 178 1 0 0] 656 1888 0 27 898 930 8 'Diagram' 978 0 0 1010 6 1 3152 8 'doIt' 8 'CardLabel text: ''Diagram'' iconBlock: [UMLModel icon]' 8 #[29 30 34 112 31 161 106 194 105] 928 4752 8 ##(Smalltalk.UMLModel)  3232 1136 4768 11 1 0 0 410 432 98 15 0 704 98 2 8 1140850688 131073 4864 0 0 0 5 0 0 0 4864 498 234 240 656 32 234 256 98 2 410 8 ##(Smalltalk.GdiplusImageView)  98 28 0 4864 98 2 8 1140850944 1 4992 721990 2 ##(Smalltalk.ValueHolder)  0 32 1310726 ##(Smalltalk.EqualitySearchPolicy)  0 0 0 5 0 0 0 4992 0 0 852486 ##(Smalltalk.NullConverter)  0 0 0 0 8 #normal 1 590342 ##(Smalltalk.Rectangle)  1746 1 1 1746 1 1 0 0 8 #none 0 0 0 0 0 1618 202 208 98 1 1682 1712 98 2 1746 1 1 1746 1855 821 4992 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 159 3 0 0 154 1 0 0] 98 0 1888 0 29 8 'diagram' 0 1618 202 208 98 1 1682 1712 98 2 1746 9 49 1746 1855 821 4864 1842 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 163 3 0 0 178 1 0 0] 98 1 4992 1888 0 27 4432 234 256 98 4 3248 8 'traitsPresenter' 4432 8 'implementationComposite' 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 704 98 2 8 1140916736 1 5664 3330 202 208 98 4 4304 944 3088 4736 0 3392 0 0 1 0 0 0 5664 0 8 4294903041 978 0 0 918822 ##(Smalltalk.CompiledMethod)  2 3 8 ##(Smalltalk.ListControlView)  8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 3664 5808 7 257 0 978 0 0 5826 2 3 3696 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 5904 7 257 0 3728 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 1618 202 208 98 3 1682 1712 98 2 1746 1 1 1746 1871 877 5664 1682 8 #basicSelectionsByIndex: 98 1 98 1 3 5664 1682 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 5664 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 182 1 0 0] 98 0 1888 0 27 1618 202 208 98 1 1682 1712 98 2 1746 1 1 1746 1871 877 704 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 182 1 0 0] 98 5 4432 1152 3248 4864 5664 1888 0 27 8 'card' 0 1618 202 208 98 1 1682 1712 98 2 1746 1 455 1746 1871 877 560 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 227 0 0 0 167 3 0 0 153 2 0 0] 98 1 704 1888 0 27 5 16 234 256 656 0 1618 202 208 98 1 1682 1712 98 2 1746 3199 21 1746 1871 1331 416 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 168 9 0 0 163 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 6784 0 0 0 5 0 0 0 6784 498 234 240 656 32 234 256 98 2 410 720 98 16 0 6784 98 2 8 1140850688 131073 6912 0 786 8 4278190080 0 5 0 0 0 6912 834 202 208 98 2 898 930 8 'UML Classes' 978 0 0 1010 6 1 80 8 'doIt' 8 '(CardLabel text: ''UML Classes'' iconBlock: [UMLClass icon])' 8 #[29 30 34 112 31 161 106 194 105] 928 7088 8 ##(Smalltalk.UMLClass)  3232 1136 7104 11 1 0 0 410 8 ##(Smalltalk.TreeView)  98 27 0 6912 98 2 8 1140916775 1025 7200 590918 3 ##(Smalltalk.TreeModel)  0 3392 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 656 786 8 4278190080 0 21 1394 0 16 98 12 1442 1 1474 8 #browseClassReferences 8 'Browse Class References' 1 1 0 0 0 2162 4097 1442 1 1474 8 #addTraitToSelectedClass 8 'Add Trait to Selected Class' 1 1 0 0 0 2162 4097 1442 1 1474 8 #autogenerateInitializeMethod 8 'Generate #initialize Method' 1 1 0 0 0 2162 4097 1442 1 1474 8 #inspectCustomizedNewInstance 8 'Inspect New Instance in Customized View' 1 1 0 0 0 2162 4097 1442 1 1474 8 #inspectNewInstance 8 'Inspect New Instance' 1 1 0 0 0 2162 4097 1442 1 1474 8 #addNewClass 8 'Add New Class' 1 1 0 0 0 1442 1 1474 8 #removeClass 8 'Remove Class' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 7200 0 8 4294903473 3634 3856 98 0 3696 3728 0 0 0 0 0 234 240 656 17 5984 1 0 1618 202 208 98 2 1682 1712 98 2 1746 9 49 1746 595 381 7200 1682 1808 98 1 7392 7200 1842 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 45 1 0 0 214 0 0 0] 98 0 1888 0 27 898 930 8 'Classes list' 978 0 0 1010 6 1 80 8 'doIt' 8 '(CardLabel text: ''Classes list'' iconBlock: [ListViewColumn icon])' 8 #[29 30 34 112 31 161 106 194 105] 928 8256 3776 3232 1136 8272 11 1 0 0 410 3264 98 30 0 6912 98 2 8 1140920397 1025 8352 3330 202 208 656 0 3392 786 8 4278190080 0 21 1394 0 16 98 12 1442 1 1474 7456 8 'Browse Class References' 1 1 0 0 0 2162 4097 1442 1 1474 7536 8 'Add Trait to Selected Class' 1 1 0 0 0 2162 4097 1442 1 1474 7616 8 'Generate #initialize Method' 1 1 0 0 0 2162 4097 1442 1 1474 7696 8 'Inspect New Instance in Customized View' 1 1 0 0 0 2162 4097 1442 1 1474 7776 8 'Inspect New Instance' 1 1 0 0 0 2162 4097 1442 1 1474 7856 8 'Add New Class' 1 1 0 0 0 1442 1 1474 7920 8 'Remove Class' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 8352 0 8 4294902761 3634 3664 98 0 3696 3728 0 0 0 0 0 0 202 208 98 1 3778 8 'Class Name' 401 3824 3634 3856 98 0 978 0 0 1010 2 1 3920 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3856 9088 7 513 0 0 0 8352 0 1 0 0 4016 656 0 131169 0 0 1618 202 208 98 3 1682 1712 98 2 1746 9 49 1746 595 381 8352 1682 1808 98 1 8480 8352 1682 4192 98 1 8 'Class Name' 8352 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 45 1 0 0 214 0 0 0] 98 0 1888 0 27 8352 234 256 98 4 8352 8 'classes' 7200 8 'hierarchy' 0 410 5680 98 28 0 6912 98 2 8 1140916736 1 9472 3330 202 208 98 2 8240 7072 0 3392 0 0 1 0 0 0 9472 0 8 4294903041 978 0 0 5826 2 3 5856 5872 575230339 8 #[30 105 226 0 106] 3664 9600 7 257 0 978 0 0 5826 2 3 3696 5936 579598755 8 #[30 105 226 0 106] 5968 9648 7 257 0 3728 0 0 0 0 0 5984 0 0 0 0 0 1618 202 208 98 3 1682 1712 98 2 1746 1 1 1746 611 437 9472 1682 6128 98 1 98 1 3 9472 1682 6192 98 2 -1 1 9472 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 49 1 0 0 218 0 0 0] 98 0 1888 0 27 1618 202 208 98 1 1682 1712 98 2 1746 1 1 1746 611 437 6912 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 49 1 0 0 218 0 0 0] 98 3 8352 7200 9472 1888 0 27 8 'card' 0 1618 202 208 98 1 1682 1712 98 2 1746 1 1 1746 1871 437 6784 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 218 0 0 0] 98 5 6912 410 2816 98 12 0 6784 98 2 8 1140850688 1 10272 0 786 8 4278190080 0 517 0 0 0 10272 1618 202 208 98 1 1682 1712 98 2 1746 611 1 1746 19 437 10272 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 49 1 0 0 0 0 0 0 58 1 0 0 218 0 0 0] 98 0 1888 0 27 410 432 98 15 0 6784 98 2 8 1140850688 131073 10528 0 0 0 5 0 0 0 10528 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 432 98 15 0 10528 98 2 8 1409286144 131073 10624 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 10624 498 234 240 656 32 234 256 98 4 410 8 ##(Smalltalk.RadioButton)  98 16 0 10624 98 2 8 1141058825 1 10784 5074 0 32 1376774 ##(Smalltalk.PluggableSearchPolicy)  3634 8 #= 98 0 3634 8 #hash 98 0 16 786 8 4278190080 0 5 0 0 0 10784 0 8 4294903143 5138 0 0 0 1618 202 208 98 2 1682 1712 98 2 1746 21 1 1746 295 61 10784 1682 4192 98 1 8 'Class' 10784 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 157 0 0 0 30 0 0 0] 98 0 1888 0 27 8 'classSide' 410 10800 98 16 0 10624 98 2 8 1140924425 1 11296 5074 0 0 10882 3634 10928 98 0 3634 10976 98 0 32 786 11024 0 5 0 0 0 11296 0 8 4294903143 5138 0 0 0 1618 202 208 98 2 1682 1712 98 2 1746 315 1 1746 297 61 11296 1682 4192 98 1 8 'Metaclass' 11296 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 157 0 0 0 0 0 0 0 49 1 0 0 30 0 0 0] 98 0 1888 0 27 8 'metaclassSide' 5186 1746 21 1 1746 1 1 1618 202 208 98 1 1682 1712 98 2 1746 1 377 1746 611 61 10624 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 188 0 0 0 49 1 0 0 218 0 0 0] 98 2 10784 11296 1888 0 27 0 0 410 3264 98 30 0 10528 98 2 8 1140920397 1025 11936 3330 202 208 656 0 3392 786 8 4278190080 0 13 1394 0 16 98 4 1442 1 1474 8 #browserImplementationDefenitions 8 'Browse Definitions' 1 1 0 0 0 1442 1 1474 8 #browserImplementationReferences 8 'Browse References' 1 1 0 0 0 2162 4097 1442 1 1474 8 #removeImplementation 8 'Remove Implementation' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 11936 0 8 4294902761 3634 3664 98 0 3696 3728 0 0 0 0 0 0 202 208 98 1 3778 8 'Method Name' 601 3824 3634 3856 98 0 978 0 0 1010 2 1 3920 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3856 12464 7 513 0 0 0 11936 0 1 0 0 4016 656 0 131169 0 0 1618 202 208 98 3 1682 1712 98 2 1746 1 1 1746 611 377 11936 1682 1808 98 1 12064 11936 1682 4192 98 1 8 'Method Name' 11936 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 49 1 0 0 188 0 0 0] 98 0 1888 0 27 234 256 98 4 10624 8 'radioButtonsPresenter' 11936 8 'implementations' 0 1618 202 208 98 1 1682 1712 98 2 1746 629 1 1746 611 437 10528 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 58 1 0 0 0 0 0 0 107 2 0 0 218 0 0 0] 98 2 11936 10624 1888 0 27 410 2816 98 12 0 6784 98 2 8 1140850688 1 13008 0 786 10352 0 517 0 0 0 13008 1618 202 208 98 1 1682 1712 98 2 1746 1239 1 1746 19 437 13008 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 107 2 0 0 0 0 0 0 116 2 0 0 218 0 0 0] 98 0 1888 0 27 410 432 98 15 0 6784 98 2 8 1140850688 131073 13248 0 0 0 5 0 0 0 13248 498 234 240 656 16 234 256 98 4 410 1296 98 14 0 13248 98 2 8 1140850688 131073 13376 0 786 8 4278190080 0 21 0 0 0 13376 1554 1584 8 #resource_UMLCategory_virtual_list 0 1618 202 208 98 1 1682 1712 98 2 1746 1 1 1746 615 209 13376 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 51 1 0 0 104 0 0 0] 656 1888 0 27 8 'virtualCategoriesPresenter' 410 1296 98 14 0 13248 98 2 8 1140850688 131073 13664 0 786 4512 0 21 0 0 0 13664 1554 1584 8 #resource_UMLCategory_list 0 1618 202 208 98 1 1682 1712 98 2 1746 1 227 1746 615 211 13664 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 113 0 0 0 51 1 0 0 218 0 0 0] 656 1888 0 27 8 'categoriesPresenter' 0 1618 202 208 98 1 1682 1712 98 2 1746 1257 1 1746 615 437 13248 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 116 2 0 0 0 0 0 0 167 3 0 0 218 0 0 0] 98 3 13376 410 2816 98 12 0 13248 98 2 8 1140850688 1 14096 0 786 8 4278190080 0 517 0 0 0 14096 1618 202 208 98 1 1682 1712 98 2 1746 1 209 1746 615 19 14096 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 104 0 0 0 51 1 0 0 113 0 0 0] 98 0 1888 0 27 13664 1888 0 27 1888 0 27 410 2816 98 12 0 416 98 2 8 1140850688 1 14352 0 786 8 4278190080 0 517 0 0 0 14352 1618 202 208 98 1 1682 1712 98 2 1746 1 437 1746 1871 19 14352 1842 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 218 0 0 0 167 3 0 0 227 0 0 0] 98 0 1888 0 27 560 1888 0 27 )! !
!UMLClassBrowserComposite class categoriesFor: #defaultModel!public! !
!UMLClassBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

