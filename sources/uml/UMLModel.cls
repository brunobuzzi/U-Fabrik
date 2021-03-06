﻿"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLModel
	instanceVariableNames: 'name umlClasses virtualMachine setupObjects systemRoot customizedGUI loginManager stateMachineSpecification'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModel guid: (GUID fromString: '{15345e27-1c8f-437d-85b3-f9fe2e069907}')!
UMLModel comment: 'This class represent an entire UML model with it''s classes.

Instances Variables

name 		- aString with the name of the model
umlClasses 	- anOrderedCollection with instances fo UMLClass
virtualMachine	- each UML model it''s connected to a VirtualMachine which give''s a minimal set of classes and behavior.
loginManager	- is anUMLInstance that manage the access to the application, this UMLInstance is a instance of a class of the UMLModel (the receiver). Is responsibility of the UML Model to implement the login process.'!
!UMLModel categoriesForClass!Unclassified! !
!UMLModel methodsFor!

addAllClasses: anOrderedCollection

	^anOrderedCollection do: [:each | self addClass: each]!

addClass: anUMLClass

	^umlClasses add: anUMLClass!

allAssociations
	| relations |

	relations := OrderedCollection new.
	umlClasses do: [:each | relations addAll: each relations].
	^relations copyWithoutDuplicates!

allAttributes
	| allAttributes |

	allAttributes := OrderedCollection new.
	umlClasses do: [:each | allAttributes addAll: each attributes].

	^allAttributes asSortedCollection: [:a :b | a name <= b name]!

allAttributesDo: aBlock

	^self allAttributes do: aBlock!

allAttributesOf: aString 

	^self allAttributes select: [:each | aString asUppercase match: each className asUppercase]
!

allDefinitionsOf: aSymbol
	"The receiver (VM) answer a collection of UMLParsedImplementation with the name of <aSymbol>"

	^(umlClasses select: [:each | each canUnderstand: aSymbol] thenCollect:  [:each | each implementationNamed: aSymbol]),
		((umlClasses collect: [:each | each getMetaclass]) select: [:each | each canUnderstand: aSymbol] thenCollect:  [:each | each implementationNamed: aSymbol]).!

allImplementations
	| allImplementations allMetaImplementations |

	allImplementations := OrderedCollection new.
	allMetaImplementations := OrderedCollection new.

	umlClasses do: [:each | 
		allImplementations addAll: each implementations.
		allMetaImplementations addAll: each metaclass implementations.].

	^(allImplementations, allMetaImplementations) asSortedCollection: [:a :b | a name <= b name]!

allImplementationsAsSortedCollection
	| implementations |

	implementations := OrderedCollection new.
	umlClasses do: [:each | implementations addAll: each allImplementationsAsSortedCollection].
	^implementations!

allUMLAssociations
	| allRelations |

	allRelations := OrderedCollection new.
	umlClasses do: [:each | allRelations addAll: each relations].
	^allRelations copyWithoutDuplicates!

allUndefinedAttributes
	"Answer a collection with all attributes with an undefined type"

	^self allAttributes select: [:each | each getType umlClass ==  self defaultVirtualMachine nilObject umlClass]!

allUndefinedRelations

	^self allUMLAssociations select: [:each | each isUndefined]!

basicViewDesignForClass: anUMLClass

	^customizedGUI at: anUMLClass name ifAbsent:[]!

classesAsDictionary
	| all |

	all := Dictionary new.
	umlClasses do: [:each | all at: each name put: each].
	^all!

classesAsSortedCollection

	^umlClasses asSortedCollection: [:a :b | a name <= b name]!

classesAsTreeModel
	"objectClass := virtualMachine objectClass.
	treeModel := TreeModel withRoots: (OrderedCollection with: objectClass) .
	((umlClasses select: [:each | each umlSuperclass isNil]) asSortedCollection: [:a :b | a name <= b name])
		do: [:each | treeModel addTree: each asTreeModel asChildOf: objectClass].
	^treeModel."

	^virtualMachine objectClass asTreeModel!

classesDo: aBlock

	^umlClasses do: aBlock!

classesNames

	^umlClasses collect: [:each | each name]!

classesNamesAsSortedCollection

	^self classesNames asSortedCollection!

classesWithoutSuperclass

	^umlClasses select: [:each | each umlSuperclass isNil]!

createGlobalKey: aString

	^systemRoot at: aString put: OrderedCollection new!

createSetupKey: aString

	^setupObjects at: aString put: OrderedCollection new!

currentStateMessage

	^stateMachineSpecification currentStateMessage!

customizedGUI
	^customizedGUI!

customizedGUI: anObject
	customizedGUI := anObject!

destroyGlobalKey: aString 

	^systemRoot removeKey: aString ifAbsent: []!

destroySetupKey: aString 

	^setupObjects removeKey: aString ifAbsent: []!

duplicatedAttributes
	| attributesDictionary |

	attributesDictionary := Dictionary new.
	self allAttributes do: [:each | 
		(attributesDictionary includesKey: each name) 
		ifFalse: [attributesDictionary at: each name put: OrderedCollection new].
		(attributesDictionary at: each name) add: each.].
	attributesDictionary := attributesDictionary select: [:each | each size > 1].
	^attributesDictionary!

duplicatedAttributesAsOrderedCollection
	| attributesCollection |

	attributesCollection := OrderedCollection new.
	self duplicatedAttributes do: [:each | attributesCollection add: each last].
	^attributesCollection!

fileInXml: pathFile
	| fileStream |

	fileStream := FileStream read: pathFile text: true.

	self fileInXmlToFrom: fileStream.
!

fileInXmlToFrom: aStream
	| xmlDocument |

	xmlDocument := IXMLDOMDocument new.
	xmlDocument loadText: aStream contents.
	aStream close.

	(xmlDocument selectNodes: 'Implementations/UMLClass') do: [:classImplementationsNode |  | className |
		className := (classImplementationsNode selectSingleNode: 'Name') innerXML.
		(self getClassNamed: className ifNone: [nil])
		ifNotNil: [:umlClass | 
			(classImplementationsNode selectNodes: 'Implementations/Implementation') do: [:implementationNode | | source categories comments implementation showHideMethod |
				source := ((implementationNode selectSingleNode: 'Source') innerXML allButFirst: 9) allButLast: 3. "to remove <!![CDATA[ and ]]>"
				comments :=  (((implementationNode selectSingleNode: 'Comments') innerXML allButFirst: 9) allButLast: 3). "to remove <!![CDATA[ and ]]>"
				categories := (implementationNode selectNodes: 'Categories/CategoryName') collect: [:catNameNode | catNameNode innerXML].
				implementation := umlClass addSourceImplementation: source withCategories: categories withComments: comments.
				showHideMethod := (implementationNode selectSingleNode: 'HideShowMessage') innerXML asSymbol.
				showHideMethod notEmpty ifTrue: [implementation hideShowMessage: showHideMethod].
			]
		]
	].!

fileOutAsXml: pathFile
	| fileStream |

	fileStream := FileStream write: pathFile text: true.

	self fileOutAsXmlTo: fileStream.

	fileStream flush; close.!

fileOutAsXmlTo: aStream

	aStream nextPutAll: '<Implementations><UMLModelNamed>', name, '</UMLModelNamed>'.

	umlClasses do: [:each | 
		aStream nextPutAll: '<UMLClass>'.
		aStream nextPutAll: '<Name>', each name, '</Name>'.
		each fileOutImplementationsWithCategoriesAsXmlTo: aStream.
		aStream nextPutAll: '</UMLClass>'.].

	aStream nextPutAll: '</Implementations>'!

generateAttributesForRelations

	umlClasses do: [:each | each generateAttributesForRelations]!

generateGemStoneScriptForClasses: gemstonePackageName
	"Generate <aString> script to execute inside GemStone/S (3.4.1) to create all uml classes of the receiver"
	| topClasses script |

	script := WriteStream on: String new.
	script nextPutAll: '"Script to execute inside GemStone/S (3.4.1 or superior) to create all uml classes of model [', name, '] "'.
	script cr.
	script nextPutAll: '"Remember to create a Package with name [', gemstonePackageName, '] "'.
	script cr.	
	topClasses := umlClasses select: [:each | each umlSuperclass == (virtualMachine virtualMachineClassNamed: 'Object')].

	topClasses do: [:topClass | topClass asTreeModel asOrderedCollection 
		do: [:eachClass | eachClass printGemstoneDefinitionOn: script forGsPackageNamed: gemstonePackageName. 
					script cr ] ].

	^script contents!

generateInitializeMethodToAllClasses

	umlClasses do: [:each | 
		each setAttributesType."added 02-04-2009"
		each generateAttributesForRelations].

	"all attributes has its types not the #initialize method is generated"
	umlClasses do: [:each | each autoGenerateInitializeMethodIn: virtualMachine]!

generateKeysAtGlobalCache

	self getClassesWithoutGlobalObjects do: [:each | self createGlobalKey: each name]!

generateMethod_currentState
	"The receiver generate the method #currentState for UML class defined at <stateMachineSpecification>"

	self getClassesWithMachineStates do: [:eachClass | | stateAttribute methodCode implementation |
		stateAttribute := (self getInstanceVariablesOfTypeNamed: self stateMachineStateClass name) detect: [:each | each umlClass == eachClass] ifNone: [^self].
			methodCode := 'currentState
	"Answer the receiver is the final transition" 

	^', stateAttribute getName.

		eachClass addSourceImplementation: methodCode withCategory: 'state machine'.
	].

!

generateMethod_getAllStates
	"The receiver generate the method #getAllState for UML class defined at <stateMachineSpecification>"
	| methodCode |

	methodCode := 'getAllStates
	"The receiver answer a collection of all states of the State Machine"
	| states |

	states := OrderedCollection new.
	self in: ', self stateMachineTransitionClass name, ' do: [:each | states add: each ', self currentStateMessage ,'.
		states add: each ', self nextStateMessage,'].
	^states copyWithoutDuplicates'.

	self stateMachineClass addSourceImplementation: methodCode withCategory: 'state machine'.!

generateMethod_getFinalTransitions
	"The receiver generate the method #getStartTransition for UML class defined at <stateMachineSpecification>"
	| methodCode |

	methodCode := 'getFinalTransitions
	"The receiver answer a collection of final transitions of the State Machine"

	^self in: ', self stateMachineTransitionClass name, ' select: [:each | each isFinal]'.

	self stateMachineClass addSourceImplementation: methodCode withCategory: 'state machine'.!

generateMethod_getInitialState
	"The receiver generate the method #getInitialState for UML class defined at <stateMachineSpecification>"
	| methodCode |

	methodCode := 'getInitialState
	"The receiver answer the initial state of the State Machine"

	^self getStartTransition ', self nextStateMessage.

	self stateMachineClass addSourceImplementation: methodCode withCategory: 'state machine'.!

generateMethod_getStartTransition
	"The receiver generate the method #getStartTransition for UML class defined at <stateMachineSpecification>"
	| methodCode |

	methodCode := 'getStartTransition
	"The receiver answer the start transition of the State Machine"

	^self in: ', self stateMachineTransitionClass name, ' detect: [:each | each isInitial]'.

	self stateMachineClass addSourceImplementation: methodCode withCategory: 'state machine'.!

generateMethod_goToNextState
	"The receiver generate the method #goToNextState for UML class defined at <stateMachineSpecification>"

	self getClassesWithMachineStates do: [:eachClass | | methodCode implementation |
		methodCode := 'goToNextState
	"The receiver go to the next state based on its own rules"'.

		eachClass addSourceImplementation: methodCode withCategory: 'state machine'.
	].

!

generateMethod_isFinal
	"The receiver generate the method #isFinal for UML class defined at <stateMachineSpecification>"
	| stateAttributes startState endState methodCode |

	stateAttributes := ((self getInstanceVariablesOfTypeNamed: self stateMachineStateClass name) select: [:each | each umlClass == self stateMachineTransitionClass]) asArray.
	(stateAttributes size = 2) ifFalse: [^self].

	startState := stateAttributes at: 1.
	endState := stateAttributes at: 2.
	methodCode := 'isFinal
	"Answer the receiver is the final transition"

	^', startState getName, ' isFinal or: [', endState getName, ' isFinal]'.

	self stateMachineTransitionClass addSourceImplementation: methodCode withCategory: 'state machine'.

!

generateMethod_isInitial
	"The receiver generate the method #isInitial for UML class defined at <stateMachineSpecification>"
	| stateAttributes startState endState methodCode |

	stateAttributes := ((self getInstanceVariablesOfTypeNamed: self stateMachineStateClass name) select: [:each | each umlClass == self stateMachineTransitionClass]) asArray.
	(stateAttributes size = 2) ifFalse: [^self].

	startState := stateAttributes at: 1.
	endState := stateAttributes at: 2.
	methodCode := 'isInitial
	"Answer the receiver is the initial transition"

	^', startState getName, ' isInitial or: [', endState getName, ' isInitial]'.

	self stateMachineTransitionClass addSourceImplementation: methodCode withCategory: 'state machine'.
	

!

generateMethod_possibleNextTransitions
	"The receiver generate the method #possibleNextTransitions for UML class defined at <stateMachineSpecification>"

	self getClassesWithMachineStates do: [:eachClass | | machineStateAttribute methodCode |
		machineStateAttribute := (self getInstanceVariablesOfTypeNamed: self stateMachineClass name) detect: [:each | each umlClass == eachClass] ifNone: [^self].
			methodCode := 'possibleNextTransitions
	"The receiver answer the next possible transitions based on the current state" 

	^', machineStateAttribute getName, ' possibleNextTransitionsFrom: self currentState.'.

		eachClass addSourceImplementation: methodCode withCategory: 'state machine'.

	].

!

generateMethod_possibleNextTransitionsFrom
	"The receiver generate the method #possibleNextTransitionsFrom: for UML class defined at <stateMachineSpecification>"
	| methodCode |

	methodCode := 'possibleNextTransitionsFrom: aState
	"The receiver answer a collection of possibles next transitions from <aState>"

	^self in: ', self stateMachineTransitionClass name, ' detect: [:each | each start == aState]'.

	self stateMachineClass addSourceImplementation: methodCode withCategory: 'state machine'.!

generateMethod_setStateMachineNamed
	"The receiver generate the method #setStateMachineNamed: for UML class defined at <stateMachineSpecification>"

	self getClassesWithMachineStates do: [:eachClass | | methodCode stateMachineAttribute |
		stateMachineAttribute := (self getInstanceVariablesOfTypeNamed: self stateMachineClass name) detect: [:each | each umlClass == eachClass] ifNone: [^nil].
		methodCode := 'setStateMachineNamed: aString
	"The receiver start to aStateMachine named <aString> by setting the current state with the initial state" 

	', stateMachineAttribute getName, ' := (', self stateMachineClass name , ' getGlobalObjectSatisfying: [:each | each ', self machineVarName, ' = aString]) last.'.

		eachClass addSourceImplementation: methodCode withCategory: 'state machine'.
	].!

generateMethod_startStateMachineNamed
	"The receiver generate the method #startStateMachineNamed: for UML class defined at <stateMachineSpecification>"

	self getClassesWithMachineStates do: [:eachClass | | methodCode stateAttribute |
		stateAttribute := (self getInstanceVariablesOfTypeNamed: self stateMachineStateClass name) detect: [:each | each umlClass == eachClass] ifNone: [^nil].
		methodCode := 'startStateMachineNamed: aString
	"The receiver start to aStateMachine named <aString> by setting the current state with the initial state" 
	| stateMachine |

	stateMachine := (', self stateMachineClass name , ' getGlobalObjectSatisfying: [:each | each ', self machineVarName, ' = aString]) last.
	', stateAttribute getName, ' := stateMachine getInitialState.'.

		eachClass addSourceImplementation: methodCode withCategory: 'state machine'.
	].!

generateStateMachineMethods
	"The receiver create all convenience methods for the State Machine Specification <stateMachineSpecification>"

	self stateMachineClass addCategory: (UMLImplementationCategory newNamed: 'state machine').
	self stateMachineTransitionClass addCategory: (UMLImplementationCategory newNamed: 'state machine').

	"state machine owner class"
	self generateMethod_currentState.
	self generateMethod_setStateMachineNamed.
	self generateMethod_startStateMachineNamed.
	self generateMethod_possibleNextTransitions.
	self generateMethod_goToNextState.

	"state machine class"
	self generateMethod_isInitial.
	self generateMethod_isFinal.
	self generateMethod_getAllStates.
	self generateMethod_getStartTransition.
	self generateMethod_getFinalTransitions.
	self generateMethod_getInitialState.
	self generateMethod_possibleNextTransitionsFrom.!

getAllCategories
	| all |

	all := Set new. 
	umlClasses do: [:each | all addAll: each getAllCategories].

	^all asOrderedCollection!

getAllGlobalObjectsOf: anUMLClass
	| objectsCollection |

	objectsCollection := OrderedCollection withAll: (self getGlobalObjectsOf: anUMLClass).

	anUMLClass hasSubclasses
	ifTrue: [anUMLClass allSubclasses do: [:eachSubClass | objectsCollection addAll: (eachSubClass umlModel getGlobalObjectsOf: eachSubClass)].].

	^objectsCollection!

getAllImplementations

	^umlClasses inject: OrderedCollection new into: 
		[:all :each | 
			all addAll: each implementations. 
			all addAll: each getMetaclass implementations. all]!

getAllImplementationsNamed: aString

	^(umlClasses collect: [:each | each implementationNamed: aString]) select:[:each | each notNil and: [each className ~= 'UndefinedObject'] ]!

getAllMetaclassCategories
	| all |

	all := Set new. 
	umlClasses do: [:each | all addAll: each getMetaclass getAllCategories].

	^all asOrderedCollection!

getAllSetupObjectsOf: anUMLClass
	| objectsCollection |

	objectsCollection := OrderedCollection withAll: (self getSetupObjectsOf: anUMLClass).

	anUMLClass hasSubclasses
	ifTrue: [anUMLClass allSubclasses do: [:eachSubClass | objectsCollection addAll: (eachSubClass umlModel getSetupObjectsOf: eachSubClass)].].

	^objectsCollection!

getAnyStoreObjectOf: anUMLClass
	| possibleTopClass |

	possibleTopClass := anUMLClass topClass.
	^((self getAllGlobalObjectsOf: possibleTopClass), (self getAllSetupObjectsOf: possibleTopClass)) copyWithoutDuplicates!

getAnyStoreObjectOfClassNamed: aString

	^self getAnyStoreObjectOf: (virtualMachine getAnyClassNamed: aString)!

getClassesWithGlobalObjects
	"Get classes that has instances in the Global Cache <systemRoot>"

	^umlClasses select: [:each | (self getGlobalObjectsOf: each) notEmpty]!

getClassesWithInstVarNamed: aString 

	^umlClasses select: [:each | each hasVariableNamed: aString]!

getClassesWithInstVarWithOriginalType: aString 

	^umlClasses select: [:each | each hasInstVarWithOriginalType: aString]!

getClassesWithMachineStates
	"Answer a collection of <UMLClass>es which implement a Machine State"
	| classesWithStateMachines |

	classesWithStateMachines := OrderedCollection new.

	(self getInstanceVariablesOfTypeNamed: self stateMachineClass name) do: [:eachAttribute | 
		((eachAttribute relatedClassTo: self stateMachineClass) == self stateMachineTransitionClass) ifFalse: [classesWithStateMachines add: eachAttribute]].

	^classesWithStateMachines collect: [:eachAttr | eachAttr umlClass]!

getClassesWithoutGlobalObjects
	"Get classes that has NO instances in the Global Cache <systemRoot>"

	^umlClasses select: [:each | (self getGlobalObjectsOf: each) isEmpty]!

getClassesWithWildCardInstVarNamed: aString 

	^umlClasses select: [:each | each hasWildCardVariableNamed: aString]!

getClassNamed: aString 

	^self getClassNamed: aString ifNone: []!

getClassNamed: aString ifNone: aBlock

	^umlClasses detect: [:each | each name = aString ] ifNone: aBlock!

getClassNamedLike: aString 
	"The receiver answer a collection with classes with it's name match with <aString>"

	^umlClasses select: [:each | aString match: each name]!

getGlobalObjectsOf: anUMLClass

	^systemRoot at: anUMLClass name ifAbsent: [OrderedCollection new]!

getInstancesWithoutGlobalObjects
	"Get instances that has NO Global Cache <systemRoot>"
	| instances |

	instances := OrderedCollection new.
	self getClassesWithGlobalObjects do: [:eachUMLClass |
		(self getGlobalObjectsOf: eachUMLClass) do: [:eachObject | instances addAll: eachObject getInstancesVariablesNotInGlobalCache].].
	^instances!

getInstanceVariablesOfTypeNamed: aString
	"The receiver answer a collection of uml classes with any relation with uml class named <aString>"
	| relatedClasses |

	relatedClasses := Set new.

	umlClasses do: [:eachClass | relatedClasses addAll: (eachClass selectAttributesOfTypeNamed: aString)].

	^relatedClasses
!

getSetupObjectsOf: anUMLClass

	^setupObjects at: anUMLClass name ifAbsent: [OrderedCollection new]!

getSetupObjectsOfClassNamed: aString

	^setupObjects at: aString ifAbsent: [OrderedCollection new]!

getUserCategories

	^self getAllCategories select: [:each | each isUserCategory]!

hasDefinitionNamed: aSymbol
	"The receiver (VM) answer a collection of UMLParsedImplementation with the name of <aSymbol>"

	^umlClasses anySatisfy: [:each | each canUnderstand: aSymbol]!

hasMetaDefinitionNamed: aSymbol
	"The receiver (VM) answer a collection of UMLParsedImplementation with the name of <aSymbol>"

	^(umlClasses collect: [:each | each getMetaclass]) anySatisfy: [:each | each canUnderstand: aSymbol]!

identityIncludes: anUMLClass

	^umlClasses identityIncludes: anUMLClass!

includesClassNamed: aString

	^umlClasses anySatisfy: [:each | each name = aString]!

initialize

	super initialize.

	name := ''.
	umlClasses := OrderedCollection new.
	virtualMachine := UMLVirtualMachine new.
	setupObjects := LookupTable new.
	systemRoot := LookupTable new.
	customizedGUI := LookupTable new.!

initializeAssociations

	^self allAssociations do: [:each | each setClassesWith: umlClasses]!

loginManager
	^loginManager!

loginManager: anObject
	loginManager := anObject!

machineVarName

	^stateMachineSpecification machineVarName!

name
	^name!

name: anObject
	name := anObject!

nextStateMessage

	^stateMachineSpecification nextStateMessage!

printLoginManagerClass

	^loginManager ifNil: ['Not Defined'] ifNotNil: [:value | value name]!

relateMultiplicity1aNWith: sourceClass and: targetClass keys: accesorKeys
	"We vinculate <sourceClass> and <targetClass> in a 1-N relation using <accesorKey>.
	We link the UMLInstace of <sourceClass> to <targetClass> and viceversa"
	| sourceObjects targetObjects |

	sourceObjects := self getSetupObjectsOf: sourceClass.
	targetObjects := self getSetupObjectsOf: targetClass.

	sourceObjects do: [:eachSourceObject | | targetInstance |
		targetInstance := targetObjects detect: [:eachTargetObject | (eachTargetObject vmPerform: accesorKeys second asSymbol) smalltalkObject = (eachSourceObject vmPerform: accesorKeys first asSymbol) smalltalkObject].
		eachSourceObject vmPerform: (accesorKeys first, ':') asSymbol withArguments: (Array with: targetInstance).].
!

removeClass: anUMLClass

	^umlClasses remove: anUMLClass!

removeGlobalObject: anUMLInstance 
	| globalObjectCollection |

	(systemRoot includesKey: anUMLInstance className) ifFalse: [^anUMLInstance].
	globalObjectCollection := systemRoot at: anUMLInstance className.
	globalObjectCollection remove: anUMLInstance ifAbsent: [].
	^anUMLInstance!

removeSetupObject: anUMLInstance 
	| setupObjectCollection |

	(setupObjects includesKey: anUMLInstance className) ifFalse: [^anUMLInstance].
	setupObjectCollection := setupObjects at: anUMLInstance className.
	setupObjectCollection remove: anUMLInstance ifAbsent: [].
	^anUMLInstance!

resetObjectViewConnectionWith: anUMLClass 
	| treeDesign collectionWithInstanacesAttached |

	treeDesign := self basicViewDesignForClass: anUMLClass.
	treeDesign ifNil: [^self].
	collectionWithInstanacesAttached := (treeDesign asOrderedCollection remove: treeDesign roots first; yourself) select: [:each | each hasInstance].
	collectionWithInstanacesAttached do: [:each | each instance: nil]. "we clean the link generated by the UMLDynamicViewComposer between the UMLAspectComponentDescriptor and the UMLInsance"
	"otherwise the descriptor persist linked with a concrete instance - which is wrong"!

searchClassesWithAttributeType: anUMLClass 
	"The receiver answer a collection of classes that at least one attribute with it's type identical to <anUMLClass>"

	^umlClasses select: [:eachClass | 
		eachClass instancesVariables anySatisfy: [:eachInstVar | 
			eachInstVar type == anUMLClass] ]!

searchClassesWithRelationType: anUMLClass 
	"The receiver answer a collection of classes that at least one relations with it's type identical to <anUMLClass>"

	^umlClasses select: [:eachClass | 
		eachClass relations anySatisfy: [:eachRelation | 
			(eachRelation relatedClassTo: anUMLClass) == eachClass] ]!

selectClassesWithAttributeTypeNamed: aString 

	^umlClasses select: [:each | each anyAttributeHasTypeNamed: aString]!

setAllRelationsMultiplicity

	^umlClasses do: [:each | each setAllRelationsMultiplicity]!

setSubclasses

	(umlClasses select: [:each | each hasParentClass]) do: [:each | each setSubclassesIn: self]!

setSuperclasses

	self classesDo:[:eachClass | 
		eachClass umlSuperclass 
			ifNil: [eachClass umlSuperclass: virtualMachine objectClass.]].!

setupObjects
	^setupObjects!

setupObjects: anObject
	setupObjects := anObject!

setVirtualMachineToAll

	self setVirtualMachineToAllWith: UMLVirtualMachine default
!

setVirtualMachineToAllToNil

	self setVirtualMachineToAllWith: nil
!

setVirtualMachineToAllWith: nilOrVirtualMachine

	virtualMachine := nilOrVirtualMachine.
"Classes and Metaclasses"
	umlClasses do: [:each | 
		each virtualMachine: nilOrVirtualMachine.
		each getMetaclass virtualMachine: nilOrVirtualMachine.].
"Instances"
	setupObjects do: [:eachCollection | 
		eachCollection do: [:each | each virtualMachine: nilOrVirtualMachine]]!

stateMachineClass

	^stateMachineSpecification stateMachineClass!

stateMachineSpecification
	^stateMachineSpecification!

stateMachineSpecification: anObject
	stateMachineSpecification := anObject!

stateMachineStateClass

	^stateMachineSpecification stateClass!

stateMachineTransitionClass

	^stateMachineSpecification transitionClass!

stateVarName

	^stateMachineSpecification stateVarName!

stbSaveOn: anSTBOutFiler
	"Output the receiver to anSTBOutFiler. The cached analyzers consume a lot of space, so 
	we don't want to include them in the binary file."

	anSTBOutFiler override: virtualMachine with: nil.
	super stbSaveOn: anSTBOutFiler.!

storeGlobalObject: anUMLInstance 
	| globalObjectCollection |

	(systemRoot includesKey: anUMLInstance className) ifFalse: [systemRoot at: anUMLInstance className put: OrderedCollection new].
	globalObjectCollection := systemRoot at: anUMLInstance className.
	(globalObjectCollection identityIncludes: anUMLInstance) ifTrue: [^anUMLInstance].
	globalObjectCollection add: anUMLInstance.
	^anUMLInstance!

storeSetupObject: anUMLInstance 
	| setupObjectCollection |

	(setupObjects includesKey: anUMLInstance className) ifFalse: [setupObjects at: anUMLInstance className put: OrderedCollection new].
	setupObjectCollection := setupObjects at: anUMLInstance className.
	(setupObjectCollection identityIncludes: anUMLInstance) ifTrue: [^anUMLInstance].
	setupObjectCollection add: anUMLInstance.
	^anUMLInstance!

storeViewOf: anUMLClass withDesign: aTreeModel 

	self resetObjectViewConnectionWith: anUMLClass.

	^customizedGUI at: anUMLClass name put: aTreeModel!

systemRoot
	^systemRoot!

systemRoot: anObject
	systemRoot := anObject!

transitionVarName

	^stateMachineSpecification transitionVarName!

trimClassNamesWithSpaces

	(umlClasses select: [:each | each name includes: Character space]) do: [:each | each name: (each name copyWithout: Character space)]!

umlClasses
	^umlClasses!

umlClasses: anObject
	umlClasses := anObject!

umlClassesAsSortedCollection

	^umlClasses asSortedCollection: [:a :b | a name <= b name]!

uninstall

	loginManager := nil.
	systemRoot := LookupTable new.
	setupObjects := LookupTable new.
	setupObjects := LookupTable new.
	virtualMachine := nil.
	umlClasses := Set new.

	systemRoot do: [:eachCollection | 
			eachCollection do: [:each | each umlClass: nil;
								instancesVariables: Set new.]].

	setupObjects do: [:eachCollection | 
			eachCollection do: [:each | each umlClass: nil;
								instancesVariables: Set new.]].

	customizedGUI := nil.!

viewDesignFor: anUMLInstance

	^self viewDesignForClass: anUMLInstance umlClass!

viewDesignForClass: anUMLClass

	^customizedGUI at: anUMLClass name ifAbsent:[self automaticallyCreateCustomizedViewFor: anUMLClass]!

virtualMachine
	^virtualMachine!

virtualMachine: anUMLVirtualMachine

	virtualMachine := anUMLVirtualMachine.
! !
!UMLModel categoriesFor: #addAllClasses:!public! !
!UMLModel categoriesFor: #addClass:!public! !
!UMLModel categoriesFor: #allAssociations!public! !
!UMLModel categoriesFor: #allAttributes!public! !
!UMLModel categoriesFor: #allAttributesDo:!public! !
!UMLModel categoriesFor: #allAttributesOf:!public! !
!UMLModel categoriesFor: #allDefinitionsOf:!public!uml msg tracking! !
!UMLModel categoriesFor: #allImplementations!public! !
!UMLModel categoriesFor: #allImplementationsAsSortedCollection!public! !
!UMLModel categoriesFor: #allUMLAssociations!public! !
!UMLModel categoriesFor: #allUndefinedAttributes!public! !
!UMLModel categoriesFor: #allUndefinedRelations!public! !
!UMLModel categoriesFor: #basicViewDesignForClass:!gui!public! !
!UMLModel categoriesFor: #classesAsDictionary!public! !
!UMLModel categoriesFor: #classesAsSortedCollection!public! !
!UMLModel categoriesFor: #classesAsTreeModel!public! !
!UMLModel categoriesFor: #classesDo:!public! !
!UMLModel categoriesFor: #classesNames!public! !
!UMLModel categoriesFor: #classesNamesAsSortedCollection!public! !
!UMLModel categoriesFor: #classesWithoutSuperclass!public! !
!UMLModel categoriesFor: #createGlobalKey:!public! !
!UMLModel categoriesFor: #createSetupKey:!public! !
!UMLModel categoriesFor: #currentStateMessage!public!state machine spec! !
!UMLModel categoriesFor: #customizedGUI!accessing!private! !
!UMLModel categoriesFor: #customizedGUI:!accessing!private! !
!UMLModel categoriesFor: #destroyGlobalKey:!public! !
!UMLModel categoriesFor: #destroySetupKey:!public! !
!UMLModel categoriesFor: #duplicatedAttributes!public! !
!UMLModel categoriesFor: #duplicatedAttributesAsOrderedCollection!public! !
!UMLModel categoriesFor: #fileInXml:!binary filing!public! !
!UMLModel categoriesFor: #fileInXmlToFrom:!binary filing!public! !
!UMLModel categoriesFor: #fileOutAsXml:!binary filing!public! !
!UMLModel categoriesFor: #fileOutAsXmlTo:!binary filing!public! !
!UMLModel categoriesFor: #generateAttributesForRelations!public!xmi-relations! !
!UMLModel categoriesFor: #generateGemStoneScriptForClasses:!public! !
!UMLModel categoriesFor: #generateInitializeMethodToAllClasses!initializing!public!xmi-classes!xmi-relations! !
!UMLModel categoriesFor: #generateKeysAtGlobalCache!public! !
!UMLModel categoriesFor: #generateMethod_currentState!public!state machine! !
!UMLModel categoriesFor: #generateMethod_getAllStates!public!state machine! !
!UMLModel categoriesFor: #generateMethod_getFinalTransitions!public!state machine! !
!UMLModel categoriesFor: #generateMethod_getInitialState!public!state machine! !
!UMLModel categoriesFor: #generateMethod_getStartTransition!public!state machine! !
!UMLModel categoriesFor: #generateMethod_goToNextState!public!state machine! !
!UMLModel categoriesFor: #generateMethod_isFinal!public!state machine! !
!UMLModel categoriesFor: #generateMethod_isInitial!public!state machine! !
!UMLModel categoriesFor: #generateMethod_possibleNextTransitions!public!state machine! !
!UMLModel categoriesFor: #generateMethod_possibleNextTransitionsFrom!public!state machine! !
!UMLModel categoriesFor: #generateMethod_setStateMachineNamed!public!state machine! !
!UMLModel categoriesFor: #generateMethod_startStateMachineNamed!public!state machine! !
!UMLModel categoriesFor: #generateStateMachineMethods!public!state machine! !
!UMLModel categoriesFor: #getAllCategories!public! !
!UMLModel categoriesFor: #getAllGlobalObjectsOf:!public! !
!UMLModel categoriesFor: #getAllImplementations!public! !
!UMLModel categoriesFor: #getAllImplementationsNamed:!public! !
!UMLModel categoriesFor: #getAllMetaclassCategories!public! !
!UMLModel categoriesFor: #getAllSetupObjectsOf:!public! !
!UMLModel categoriesFor: #getAnyStoreObjectOf:!public!setup objects! !
!UMLModel categoriesFor: #getAnyStoreObjectOfClassNamed:!public!setup objects! !
!UMLModel categoriesFor: #getClassesWithGlobalObjects!public! !
!UMLModel categoriesFor: #getClassesWithInstVarNamed:!public!searching! !
!UMLModel categoriesFor: #getClassesWithInstVarWithOriginalType:!public!searching! !
!UMLModel categoriesFor: #getClassesWithMachineStates!public!state machine! !
!UMLModel categoriesFor: #getClassesWithoutGlobalObjects!public! !
!UMLModel categoriesFor: #getClassesWithWildCardInstVarNamed:!public!searching! !
!UMLModel categoriesFor: #getClassNamed:!public! !
!UMLModel categoriesFor: #getClassNamed:ifNone:!public! !
!UMLModel categoriesFor: #getClassNamedLike:!public! !
!UMLModel categoriesFor: #getGlobalObjectsOf:!public!setup objects! !
!UMLModel categoriesFor: #getInstancesWithoutGlobalObjects!public! !
!UMLModel categoriesFor: #getInstanceVariablesOfTypeNamed:!public!searching! !
!UMLModel categoriesFor: #getSetupObjectsOf:!public!setup objects! !
!UMLModel categoriesFor: #getSetupObjectsOfClassNamed:!public!setup objects! !
!UMLModel categoriesFor: #getUserCategories!public! !
!UMLModel categoriesFor: #hasDefinitionNamed:!public!uml msg tracking! !
!UMLModel categoriesFor: #hasMetaDefinitionNamed:!public!uml msg tracking! !
!UMLModel categoriesFor: #identityIncludes:!public! !
!UMLModel categoriesFor: #includesClassNamed:!public! !
!UMLModel categoriesFor: #initialize!public! !
!UMLModel categoriesFor: #initializeAssociations!public! !
!UMLModel categoriesFor: #loginManager!accessing!private! !
!UMLModel categoriesFor: #loginManager:!accessing!private! !
!UMLModel categoriesFor: #machineVarName!public!state machine spec! !
!UMLModel categoriesFor: #name!accessing!private! !
!UMLModel categoriesFor: #name:!accessing!private! !
!UMLModel categoriesFor: #nextStateMessage!public!state machine spec! !
!UMLModel categoriesFor: #printLoginManagerClass!public! !
!UMLModel categoriesFor: #relateMultiplicity1aNWith:and:keys:!public!uml import! !
!UMLModel categoriesFor: #removeClass:!public! !
!UMLModel categoriesFor: #removeGlobalObject:!public! !
!UMLModel categoriesFor: #removeSetupObject:!public!setup objects! !
!UMLModel categoriesFor: #resetObjectViewConnectionWith:!gui!public! !
!UMLModel categoriesFor: #searchClassesWithAttributeType:!public! !
!UMLModel categoriesFor: #searchClassesWithRelationType:!public! !
!UMLModel categoriesFor: #selectClassesWithAttributeTypeNamed:!public! !
!UMLModel categoriesFor: #setAllRelationsMultiplicity!public!xmi-relations! !
!UMLModel categoriesFor: #setSubclasses!public!xmi-classes! !
!UMLModel categoriesFor: #setSuperclasses!initializing!public!xmi-classes! !
!UMLModel categoriesFor: #setupObjects!accessing!private! !
!UMLModel categoriesFor: #setupObjects:!accessing!private! !
!UMLModel categoriesFor: #setVirtualMachineToAll!initializing!public! !
!UMLModel categoriesFor: #setVirtualMachineToAllToNil!initializing!public! !
!UMLModel categoriesFor: #setVirtualMachineToAllWith:!initializing!public! !
!UMLModel categoriesFor: #stateMachineClass!public!state machine spec! !
!UMLModel categoriesFor: #stateMachineSpecification!accessing!private! !
!UMLModel categoriesFor: #stateMachineSpecification:!accessing!private! !
!UMLModel categoriesFor: #stateMachineStateClass!public!state machine spec! !
!UMLModel categoriesFor: #stateMachineTransitionClass!public!state machine spec! !
!UMLModel categoriesFor: #stateVarName!public!state machine spec! !
!UMLModel categoriesFor: #stbSaveOn:!binary filing!public! !
!UMLModel categoriesFor: #storeGlobalObject:!public! !
!UMLModel categoriesFor: #storeSetupObject:!public!setup objects! !
!UMLModel categoriesFor: #storeViewOf:withDesign:!gui!public! !
!UMLModel categoriesFor: #systemRoot!accessing!private! !
!UMLModel categoriesFor: #systemRoot:!accessing!private! !
!UMLModel categoriesFor: #transitionVarName!public!state machine spec! !
!UMLModel categoriesFor: #trimClassNamesWithSpaces!initializing!public! !
!UMLModel categoriesFor: #umlClasses!accessing!private! !
!UMLModel categoriesFor: #umlClasses:!accessing!private! !
!UMLModel categoriesFor: #umlClassesAsSortedCollection!public! !
!UMLModel categoriesFor: #uninstall!public! !
!UMLModel categoriesFor: #viewDesignFor:!gui!public! !
!UMLModel categoriesFor: #viewDesignForClass:!gui!public! !
!UMLModel categoriesFor: #virtualMachine!accessing!private! !
!UMLModel categoriesFor: #virtualMachine:!accessing!private! !

!UMLModel class methodsFor!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'uml.png'.
	"
	^Icon fromFile: 'icons/umlmodel.ico'! !
!UMLModel class categoriesFor: #icon!constants!public! !

