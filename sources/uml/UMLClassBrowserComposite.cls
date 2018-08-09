"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLClassBrowserComposite
	instanceVariableNames: 'classesPresenter hierarchyPresenter categoryBrowser attributesPresenter relationsPresenter traitsPresenter radioButtonsPresenter diagramPresenter classCommentsPresenter'
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
	| implementation selectedClass |

	implementation := UMLParsedImplementation newWithCode: self getAllText.	"we create the implementation for the parsed code"

	selectedClass := self topShell isClassSideSelected 
				ifTrue: [self selectedClass]
				ifFalse: [self selectedClass getMetaclass].
	selectedClass 
		ifNil: 
			[^MessageBox notify: 'You have to select a class to create a method' caption: self applicationName].
	(self checkCompilationErrorsFor: implementation parsedCode inClass: selectedClass) 
		ifFalse: 
			[(MessageBox confirm: 'Do you want to proceed any way ?' caption: self applicationName) 
				ifFalse: [^self]].

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
	self checkCompilationErrorsFor: implementation parsedCode inClass: selectedClass!

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
	classCommentsPresenter := self add: RichTextComposite new name: 'classComments'.
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

onChangedIn: aSelectablePresenter
	| classDescription diagram |

	aSelectablePresenter hasSelection ifFalse: [self resetAttributesAndRelations. ^categoryBrowser model: OrderedCollection new].

	classDescription := self isClassSideSelected ifTrue: [aSelectablePresenter selection] ifFalse: [aSelectablePresenter selection getMetaclass].

	self setMethodsFor: classDescription.

	classCommentsPresenter model: (classDescription aspectValue: #comments). 

	self resetSanityCheck.

	(Canvas forView: diagramPresenter view) erase.
	diagram := (UMLPaint on: classDescription) generate; yourself.
	diagramPresenter model: diagram bitmap!

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
	newMethod := UMLParsedImplementation newWithCode: method printMessage.
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
!UMLClassBrowserComposite categoriesFor: #onChangedIn:!class changed!public! !
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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 34 2 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 544 nil nil nil 5 nil nil nil 544 482 170 176 8 #() false 170 192 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 544 34 2 8 1409286144 131073 688 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 688 655878 ##(Smalltalk.CardLayout) 138 144 34 5 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Attributes/Relations' 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 7 1 896 8 'doIt' 8 '(CardLabel text: ''Attributes/Relations'' iconBlock: [Icon fromId: ''TypeConverter.ico''])' 8 #[29 30 35 113 31 32 180 106 195 105] 896 928 ##(Smalltalk.Icon) 8 'TypeConverter.ico' #fromId: #text:iconBlock: 960 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 688 34 2 8 1140850688 131073 1072 nil nil nil 5 nil nil nil 1072 482 170 176 640 false 170 192 34 4 410 ##(Smalltalk.ReferenceView) 34 14 nil 1072 34 2 8 1140850688 131073 1200 nil 754 8 4278190080 nil 5 265030 4 ##(Smalltalk.Menu) nil true 34 7 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) #addUMLRelation 8 'Add UML Relation' 1 1 nil nil nil 1346 1 1378 #removeUMLRelation 8 'Remove UML Relation' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 1346 1 1378 #switchSourceNavigability 8 'Switch Source Navigability' 1 1 nil nil nil 1346 1 1378 #switchTargetNavigability 8 'Switch Target Navigability' 1 1 nil nil nil 1474 4097 1346 1 1378 #generateAttributesFromRelations 8 'Generate Attributes from Relations' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 1200 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.ListPresenter) #resource_UMLRelations_view nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 933 1 1826 923 821 1200 1778 #contextMenu: 34 1 1312 1200 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 210 1 0 0 0 0 0 0 159 3 0 0 154 1 0 0] 640 1826 193 193 nil 27 8 'relationsPresenter' 410 ##(Smalltalk.ReferenceView) 34 14 nil 1072 34 2 8 1140850688 131073 1984 nil 754 1280 nil 5 1298 nil true 34 1 1346 1 1378 #browseAttributeClass 8 'Browse Attribute Class' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 1984 1682 ##(Smalltalk.ListPresenter) #resource_UMLAttributes_view nil 1714 138 144 34 2 1778 #createAt:extent: 34 2 1826 1 1 1826 923 821 1984 1778 #contextMenu: 34 1 2064 1984 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 205 1 0 0 154 1 0 0] 640 1952 nil 27 8 'attributesPresenter' nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 9 53 1826 1855 821 1072 1906 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 180 1 0 0] 34 3 1984 410 ##(Smalltalk.Splitter) 34 12 nil 1072 34 2 8 1140850688 1 2528 nil 754 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 2528 nil 1 #left nil nil nil 1826 1 1 1826 9 9 nil 2656 nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 923 1 1826 11 821 2528 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 205 1 0 0 0 0 0 0 210 1 0 0 154 1 0 0] 8 #() 1952 nil 27 1200 1952 nil 27 866 898 8 'Traits' 946 0 nil 978 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Traits'' iconBlock: [UMLTrait icon]' 8 #[29 30 34 112 31 161 106 194 105] 896 2880 ##(Smalltalk.UMLTrait) #icon #text:iconBlock: 2896 11 1 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 688 34 2 8 1409355853 1025 2976 590662 2 ##(Smalltalk.ListModel) 138 144 640 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 754 8 4278190080 nil 5 1298 nil true 34 2 1346 1 1378 #addTrait 8 'Add Trait' 1 1 nil nil nil 1346 1 1378 #removeTrait 8 'Remove Trait' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 2976 nil 8 1917445487 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil nil 138 144 34 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'TRAIT Name' 501 #left 3314 #name 8 #() 946 0 nil 978 2 1 106 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 3504 7 513 nil nil nil 2976 nil 1 nil nil #report 640 nil 131169 nil 8 #(nil) 1714 138 144 34 3 1778 #createAt:extent: 34 2 1826 9 53 1826 1855 821 2976 1778 #contextMenu: 34 1 3152 2976 1778 #text: 34 1 8 'TRAIT Name' 2976 1906 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 180 1 0 0] 8 #() 1952 nil 27 866 898 8 'Source' 946 0 nil 978 6 1 896 8 'doIt' 8 '(CardLabel text: ''Source'' iconBlock: [UMLParsedImplementation icon])' 8 #[29 30 34 112 31 161 106 194 105] 896 3920 ##(Smalltalk.UMLParsedImplementation) #icon #text:iconBlock: 3936 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 688 34 2 8 1140850688 131073 4016 nil 754 8 4278190080 nil 5 nil nil nil 4016 1682 ##(Smalltalk.UMLImplementationComposite) #resource_Default_view nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 9 53 1826 1855 821 4016 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 180 1 0 0] 640 1952 nil 27 866 898 8 'Diagram' 946 0 nil 978 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Diagram'' iconBlock: [UMLModel icon]' 8 #[29 30 34 112 31 161 106 194 105] 896 4304 ##(Smalltalk.UMLModel) #icon #text:iconBlock: 4320 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 688 34 2 8 1140850688 131073 4400 nil nil nil 5 nil nil nil 4400 482 170 176 640 false 170 192 34 2 410 ##(Smalltalk.GdiplusImageView) 34 28 nil 4400 34 2 8 1140850944 1 4528 721990 2 ##(Smalltalk.ValueHolder) nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil nil nil 5 nil nil nil 4528 nil nil 852486 ##(Smalltalk.NullConverter) nil nil nil nil #normal 1 590342 ##(Smalltalk.Rectangle) 1826 1 1 1826 1 1 nil nil #none nil nil nil nil nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 1 1826 1855 821 4528 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 159 3 0 0 154 1 0 0] 8 #() 1952 nil 29 8 'diagram' nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 9 53 1826 1855 821 4400 1906 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 180 1 0 0] 34 1 4528 1952 nil 27 866 898 8 'Class Comments' 946 0 nil 978 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Class Comments'' iconBlock: [String icon]' 8 #[45 30 34 112 47 161 106 194 105] 983558 ##(Smalltalk.VariableBinding) #CardLabel 896 5120 5218 #String ##(Smalltalk.String) #icon #text:iconBlock: 5136 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 688 34 2 8 1140850688 131073 5264 nil nil nil 5 nil nil nil 5264 482 170 176 640 false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 5264 34 2 8 1140850688 131073 5392 nil 754 8 4278190080 nil 5 nil nil nil 5392 1682 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 1 1826 1855 821 5392 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 159 3 0 0 154 1 0 0] 640 1952 nil 27 8 'classComments' nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 9 53 1826 1855 821 5264 1906 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 180 1 0 0] 34 1 5392 1952 nil 27 4016 170 192 34 4 4016 8 'implementationComposite' 2976 8 'traitsPresenter' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 688 34 2 8 1140916736 1 5888 3042 138 144 34 5 3904 912 2864 4288 5104 nil 3104 nil nil 1 nil nil nil 5888 nil 8 1917116126 946 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 6016 7 257 nil 946 0 nil 6034 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 6080 7 257 nil 3376 nil nil nil nil nil #smallIcons nil nil nil nil nil 1714 138 144 34 3 1778 #createAt:extent: 34 2 1826 1 1 1826 1871 881 5888 1778 #basicSelectionsByIndex: 34 1 8 #(1) 5888 1778 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 5888 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 184 1 0 0] 8 #() 1952 nil 27 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 1 1826 1871 881 688 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 184 1 0 0] 34 6 4016 1072 2976 4400 5264 5888 1952 nil 27 8 'card' nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 451 1826 1871 881 544 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 225 0 0 0 167 3 0 0 153 2 0 0] 34 1 688 1952 nil 27 5 true 170 192 640 nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 2719 21 1826 1871 1331 416 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 246 8 0 0 163 2 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 6880 nil nil nil 5 nil nil nil 6880 482 170 176 640 false 170 192 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 6880 34 2 8 1140850688 131073 7008 nil 754 8 4278190080 nil 5 nil nil nil 7008 802 138 144 34 2 866 898 8 'UML Classes' 946 0 nil 978 6 1 16 8 'doIt' 8 '(CardLabel text: ''UML Classes'' iconBlock: [UMLClass icon])' 8 #[29 30 34 112 31 161 106 194 105] 896 7184 ##(Smalltalk.UMLClass) #icon #text:iconBlock: 7200 11 1 nil nil 410 ##(Smalltalk.TreeView) 34 27 nil 7008 34 2 8 1140916775 1025 7280 590918 3 ##(Smalltalk.TreeModel) nil 3104 525062 ##(Smalltalk.TreeNode) nil nil nil 170 192 640 754 8 4278190080 nil 21 1298 nil true 34 12 1346 1 1378 #browseClassReferences 8 'Browse Class References' 1 1 nil nil nil 1474 4097 1346 1 1378 #addTraitToSelectedClass 8 'Add Trait to Selected Class' 1 1 nil nil nil 1474 4097 1346 1 1378 #autogenerateInitializeMethod 8 'Generate #initialize Method' 1 1 nil nil nil 1474 4097 1346 1 1378 #inspectCustomizedNewInstance 8 'Inspect New Instance in Customized View' 1 1 nil nil nil 1474 4097 1346 1 1378 #inspectNewInstance 8 'Inspect New Instance' 1 1 nil nil nil 1474 4097 1346 1 1378 #addNewClass 8 'Add New Class' 1 1 nil nil nil 1346 1 1378 #removeClass 8 'Remove Class' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 7280 nil 8 1917192846 3314 #name 8 #() ##(Smalltalk.IconicListAbstract) 3376 nil nil nil nil nil 170 176 640 17 #smallIcons 1 170 ##(Smalltalk.PluggableLookupTable) 640 1714 138 144 34 2 1778 #createAt:extent: 34 2 1826 9 53 1826 601 381 7280 1778 #contextMenu: 34 1 7456 7280 1906 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 48 1 0 0 216 0 0 0] 8 #() 1952 nil 27 866 898 8 'Classes list' 946 0 nil 978 6 1 16 8 'doIt' 8 '(CardLabel text: ''Classes list'' iconBlock: [ListViewColumn icon])' 8 #[29 30 34 112 31 161 106 194 105] 896 8224 3424 #icon #text:iconBlock: 8240 11 1 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 7008 34 2 8 1140920397 1025 8320 3042 138 144 640 nil 3104 754 8 4278190080 nil 21 1298 nil true 34 12 1346 1 1378 #browseClassReferences 8 'Browse Class References' 1 1 nil nil nil 1474 4097 1346 1 1378 #addTraitToSelectedClass 8 'Add Trait to Selected Class' 1 1 nil nil nil 1474 4097 1346 1 1378 #autogenerateInitializeMethod 8 'Generate #initialize Method' 1 1 nil nil nil 1474 4097 1346 1 1378 #inspectCustomizedNewInstance 8 'Inspect New Instance in Customized View' 1 1 nil nil nil 1474 4097 1346 1 1378 #inspectNewInstance 8 'Inspect New Instance' 1 1 nil nil nil 1474 4097 1346 1 1378 #addNewClass 8 'Add New Class' 1 1 nil nil nil 1346 1 1378 #removeClass 8 'Remove Class' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 8320 nil 8 1917445487 3314 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 3376 nil nil nil nil nil nil 138 144 34 1 3426 8 'Class Name' 401 #left 3314 #name 8 #() 946 0 nil 978 2 1 3536 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 9056 7 513 nil nil nil 8320 nil 1 nil nil #report 640 nil 131169 nil 8 #(nil) 1714 138 144 34 3 1778 #createAt:extent: 34 2 1826 9 53 1826 601 381 8320 1778 #contextMenu: 34 1 8448 8320 1778 #text: 34 1 8 'Class Name' 8320 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 48 1 0 0 216 0 0 0] 8 #() 1952 nil 27 8320 170 192 34 4 7280 8 'hierarchy' 8320 8 'classes' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 7008 34 2 8 1140916736 1 9456 3042 138 144 34 2 8208 7168 nil 3104 nil nil 1 nil nil nil 9456 nil 8 1917116126 946 0 nil 6034 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 9584 7 257 nil 946 0 nil 6034 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 9632 7 257 nil 3376 nil nil nil nil nil #smallIcons nil nil nil nil nil 1714 138 144 34 3 1778 #createAt:extent: 34 2 1826 1 1 1826 617 441 9456 1778 #basicSelectionsByIndex: 34 1 8 #(1) 9456 1778 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 9456 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 52 1 0 0 220 0 0 0] 8 #() 1952 nil 27 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 1 1826 617 441 7008 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 52 1 0 0 220 0 0 0] 34 3 8320 7280 9456 1952 nil 27 8 'card' nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 1 1826 1871 441 6880 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 220 0 0 0] 34 5 7008 410 ##(Smalltalk.Splitter) 34 12 nil 6880 34 2 8 1140850688 1 10256 nil 754 8 4278190080 nil 517 nil nil nil 2626 10256 nil 1 #left nil nil nil 1826 1 1 2672 nil 10368 nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 617 1 1826 11 441 10256 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 52 1 0 0 0 0 0 0 57 1 0 0 220 0 0 0] 8 #() 1952 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 6880 34 2 8 1140850688 131073 10544 nil nil nil 5 nil nil nil 10544 788230 ##(Smalltalk.BorderLayout) 1 1 nil 410 ##(Smalltalk.ContainerView) 34 15 nil 10544 34 2 8 1409286144 131073 10640 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 10640 482 170 176 640 false 170 192 34 4 410 ##(Smalltalk.RadioButton) 34 16 nil 10640 34 2 8 1141058825 1 10800 4594 nil false 1376774 ##(Smalltalk.PluggableSearchPolicy) 3314 #= 8 #() 3314 #hash 8 #() true 754 8 4278190080 nil 5 nil nil nil 10800 nil 8 1917288844 4658 nil nil nil 1714 138 144 34 2 1778 #createAt:extent: 34 2 1826 21 1 1826 299 61 10800 1778 #text: 34 1 8 'Class' 10800 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 159 0 0 0 30 0 0 0] 8 #() 1952 nil 27 8 'classSide' 410 ##(Smalltalk.RadioButton) 34 16 nil 10640 34 2 8 1140924425 1 11264 4594 nil nil 10882 3314 #= 8 #() 3314 #hash 8 #() false 754 10992 nil 5 nil nil nil 11264 nil 8 1917288844 4658 nil nil nil 1714 138 144 34 2 1778 #createAt:extent: 34 2 1826 319 1 1826 299 61 11264 1778 #text: 34 1 8 'Metaclass' 11264 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 0 0 0 0 0 0 0 52 1 0 0 30 0 0 0] 8 #() 1952 nil 27 8 'metaclassSide' 4690 1826 21 1 1826 1 1 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 381 1826 617 61 10640 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 190 0 0 0 52 1 0 0 220 0 0 0] 34 2 10800 11264 1952 nil 27 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 10544 34 2 8 1140920397 1025 11904 3042 138 144 640 nil 3104 754 8 4278190080 nil 13 1298 nil true 34 4 1346 1 1378 #browserImplementationDefenitions 8 'Browse Definitions' 1 1 nil nil nil 1346 1 1378 #browserImplementationReferences 8 'Browse References' 1 1 nil nil nil 1474 4097 1346 1 1378 #removeImplementation 8 'Remove Implementation' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 11904 nil 8 1917445487 3314 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 3376 nil nil nil nil nil nil 138 144 34 1 3426 8 'Method Name' 601 #left 3314 #name 8 #() 946 0 nil 978 2 1 3536 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 12384 7 513 nil nil nil 11904 nil 1 nil nil #report 640 nil 131169 nil 8 #(nil) 1714 138 144 34 3 1778 #createAt:extent: 34 2 1826 1 1 1826 617 381 11904 1778 #contextMenu: 34 1 12032 11904 1778 #text: 34 1 8 'Method Name' 11904 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 52 1 0 0 190 0 0 0] 8 #() 1952 nil 27 170 192 34 4 10640 8 'radioButtonsPresenter' 11904 8 'implementations' nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 627 1 1826 617 441 10544 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 57 1 0 0 0 0 0 0 109 2 0 0 220 0 0 0] 34 2 11904 10640 1952 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 6880 34 2 8 1140850688 1 12944 nil 754 10336 nil 517 nil nil nil 2626 12944 nil 1 #left nil nil nil 1826 1 1 2672 nil 13040 nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1243 1 1826 11 441 12944 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 109 2 0 0 0 0 0 0 114 2 0 0 220 0 0 0] 8 #() 1952 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 6880 34 2 8 1140850688 131073 13216 nil nil nil 5 nil nil nil 13216 482 170 176 640 true 170 192 34 4 410 ##(Smalltalk.ReferenceView) 34 14 nil 13216 34 2 8 1140850688 131073 13344 nil 754 8 4278190080 nil 21 nil nil nil 13344 1682 ##(Smalltalk.ListPresenter) #resource_UMLCategory_virtual_list nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 1 1826 619 215 13344 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 53 1 0 0 107 0 0 0] 640 1952 nil 27 8 'virtualCategoriesPresenter' 410 ##(Smalltalk.ReferenceView) 34 14 nil 13216 34 2 8 1140850688 131073 13616 nil 754 4096 nil 21 nil nil nil 13616 1682 ##(Smalltalk.ListPresenter) #resource_UMLCategory_list nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 225 1826 619 217 13616 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 112 0 0 0 53 1 0 0 220 0 0 0] 640 1952 nil 27 8 'categoriesPresenter' nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1253 1 1826 619 441 13216 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 114 2 0 0 0 0 0 0 167 3 0 0 220 0 0 0] 34 3 13344 410 ##(Smalltalk.Splitter) 34 12 nil 13216 34 2 8 1140850688 1 14032 nil 754 8 4278190080 nil 517 nil nil nil 2626 14032 nil 1 #left nil nil nil 1826 1 1 2672 nil 14144 nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 215 1826 619 11 14032 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 107 0 0 0 53 1 0 0 112 0 0 0] 8 #() 1952 nil 27 13616 1952 nil 27 1952 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 14320 nil 754 8 4278190080 nil 517 nil nil nil 2626 14320 nil 1 #left nil nil nil 1826 1 1 2672 nil 14432 nil 1714 138 144 34 1 1778 #createAt:extent: 34 2 1826 1 441 1826 1871 11 14320 1906 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 220 0 0 0 167 3 0 0 225 0 0 0] 8 #() 1952 nil 27 544 1952 nil 27 )! !
!UMLClassBrowserComposite class categoriesFor: #defaultModel!public! !
!UMLClassBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

