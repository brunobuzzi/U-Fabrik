"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLStateMachine
	instanceVariableNames: 'name states transitions umlProcessClass umlStateClass umlTransitionClass processVarName stateNameVar currentStateMessage nextStateMessage transitionNameVar'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLStateMachine guid: (GUID fromString: '{5b5beded-a434-454b-99cc-57b318f974f9}')!
UMLStateMachine comment: ''!
!UMLStateMachine categoriesForClass!Unclassified! !
!UMLStateMachine methodsFor!

addAllStates: anOrderedCollection

	anOrderedCollection do: [:each | self addState: each ]!

addAllTransitions: anOrderedCollection

	anOrderedCollection do: [:each | self addTransition: each ]!

addState: anUMLState

	^states add: anUMLState!

addTransition: anUMLStateTransition

	^transitions add: anUMLStateTransition!

addUMLQueryMethodFor: anUMLState
	| parsedMethod newImplementation source |

	source := self getUMLStateSourceFor: anUMLState.
	parsedMethod := self umlCompiler parseMethod: source.
	newImplementation := (UMLParsedImplementation newNamed: parsedMethod selector) parsedCode: parsedMethod.
	umlStateClass getMetaclass addImplementation: newImplementation.
	^newImplementation

	
	!

asSmalltalkObject: threeClassArray
	"first class - UMLStateMachine, second - UMLStateTransition, third - UMLState"
	| smalltalkStateMachine smalltalkStates smalltalkTransitions umlTransitions |

	smalltalkStateMachine := threeClassArray first new. "State Machine - Smalltalk Object"
	smalltalkStateMachine perform: (processVarName, ':') asSymbol with: name. "Smaltalk State Machine name"
	umlTransitions := Dictionary new.
	smalltalkStates := states collect: [:eachUMLState | | stState |
		stState := threeClassArray third new. "State - Smalltalk Object"
		stState perform: (stateNameVar , ':') asSymbol with: eachUMLState name. "set the name of the state"
		stState].
	states do: [:eachState | eachState transitions do: [:each | umlTransitions at: each name put: each] ]. "get the UML transitions from the diagram"
	smalltalkTransitions := umlTransitions collect: [:each | | stTransition |
		stTransition := threeClassArray second new.
		stTransition perform: (stateNameVar, ':') asSymbol with: each name.
		stTransition perform: (currentStateMessage, ':') asSymbol with: (smalltalkStates detect: [:eachState | (eachState perform: stateNameVar) = (each startState name)] ifNone: [nil]).
		stTransition perform: (nextStateMessage, ':') asSymbol with: (smalltalkStates detect: [:eachState | (eachState perform: stateNameVar) = (each endState name)] ifNone:[nil]).
		stTransition].
	smalltalkTransitions do: [:each | smalltalkStateMachine mutualAdd: each].

	^smalltalkStateMachine!

createAllUMLStateAndTransitionInstances
	"The receiver create an UML represent of it self including: State Machine, Transitions and States "
	| transitionNames processInstance umlStates umlModel |

	umlStates := OrderedCollection new.
	processInstance := self createInstanceOf: umlProcessClass nameMessage: processVarName.
	transitionNames := Dictionary new.
	umlStates := states collect: [:each | each createInstanceOf: umlStateClass nameMessage: stateNameVar.]. "all States stored as UML Instances"
	states do: [:each |
		each transitions do: [:eachT | | transition initialState endState|
						(transitionNames includesKey: eachT name) "we avoid duplicated transitions"
						ifFalse: [transition := eachT createInstanceOf: umlTransitionClass nameMessage: transitionNameVar.
								processInstance vmPerform: #mutualAdd:  withArguments: (Array with: transition).
								transitionNames at: eachT name put: transition].
						transition := transitionNames at: eachT name.
						initialState := umlStates detect: [:eachS | (eachS vmPerform: stateNameVar) smalltalkObject = eachT startState name] ifNone: [nil asUMLObject: self defaultVirtualMachine].
						endState := umlStates detect: [:eachS | (eachS vmPerform: stateNameVar) smalltalkObject = eachT endState name] ifNone: [nil asUMLObject: self defaultVirtualMachine].
						transition vmPerform: (currentStateMessage, ':') asSymbol withArguments: (Array with: initialState).
						transition vmPerform: (nextStateMessage, ':') asSymbol withArguments: (Array with: endState).
						].].

	umlModel := self defaultVirtualMachine getUMLModelOf: umlProcessClass ifNone: [UMLClassNotFoundError signal: 'No Model has a class named <', umlProcessClass name, '>'].
	"umlModel generateStateMachineMethods."!

createInstanceOf: anUMLClass nameMessage: aSymbol
	| instance umlModel |

	umlModel := self defaultVirtualMachine getUMLModelOf: anUMLClass ifNone: [UMLClassNotFoundError signal: 'No Model has a class named <', anUMLClass name, '>'].
	umlModel stateMachineSpecification: (UMLStateMachineSpecification newFor: anUMLClass).
	umlModel stateMachineSpecification 
		transitionClass: umlTransitionClass;
		stateClass: umlStateClass;
		currentStateMessage: currentStateMessage;
		nextStateMessage: nextStateMessage;
		machineVarName: processVarName;
		transitionVarName: transitionNameVar;
		stateVarName: stateNameVar.
	instance := anUMLClass newInstance.
	instance storeAsGlobalObject.
	instance vmPerform: #initialize.
	instance vmPerform: (aSymbol,':') asSymbol withArguments: (Array with: (name asUMLObject: self defaultVirtualMachine)).
	^instance!

currentStateMessage
	^currentStateMessage!

currentStateMessage: anObject
	currentStateMessage := anObject asSymbol!

getUMLStateSourceFor: anUMLState

	^anUMLState name asUMLInstVarName, String lineDelimiter, String tab, 
		'^', umlStateClass name, ' getFirstGlobalObjectSatisfying: [:each | each ', stateNameVar, ' = ''',  anUMLState name, '''] ifNone: []'.

	
	!

getUMLTransitionSourceFor: anUMLState

	^anUMLState name asUMLInstVarName, String lineDelimiter, String tab, 
		'^', umlStateClass name, ' getFirstGlobalObjectSatisfying: [:each | each ', stateNameVar, ' = ''',  anUMLState name, '''] ifNone: []'.

	
	!

initialize

	super initialize.

	states := OrderedCollection new.
	transitions := OrderedCollection new.!

name
	^name!

name: anObject
	name := anObject!

nextStateMessage
	^nextStateMessage!

nextStateMessage: anObject
	nextStateMessage := anObject asSymbol!

processVarName
	^processVarName!

processVarName: anObject
	processVarName := anObject asSymbol!

removeTransition: anUMLState

	^states remove: anUMLState!

stateNameVar
	^stateNameVar!

stateNameVar: anObject
	stateNameVar := anObject asSymbol!

states
	^states!

states: anObject
	states := anObject!

transitionNameVar
	^transitionNameVar!

transitionNameVar: anObject
	transitionNameVar := anObject asSymbol!

transitions
	^transitions!

transitions: anObject
	transitions := anObject!

umlProcessClass
	^umlProcessClass!

umlProcessClass: anObject
	umlProcessClass := anObject!

umlStateClass
	^umlStateClass!

umlStateClass: anObject
	umlStateClass := anObject!

umlTransitionClass
	^umlTransitionClass!

umlTransitionClass: anObject
	umlTransitionClass := anObject! !
!UMLStateMachine categoriesFor: #addAllStates:!public! !
!UMLStateMachine categoriesFor: #addAllTransitions:!public! !
!UMLStateMachine categoriesFor: #addState:!public! !
!UMLStateMachine categoriesFor: #addTransition:!public! !
!UMLStateMachine categoriesFor: #addUMLQueryMethodFor:!public! !
!UMLStateMachine categoriesFor: #asSmalltalkObject:!public! !
!UMLStateMachine categoriesFor: #createAllUMLStateAndTransitionInstances!public! !
!UMLStateMachine categoriesFor: #createInstanceOf:nameMessage:!public! !
!UMLStateMachine categoriesFor: #currentStateMessage!accessing!private! !
!UMLStateMachine categoriesFor: #currentStateMessage:!accessing!private! !
!UMLStateMachine categoriesFor: #getUMLStateSourceFor:!public! !
!UMLStateMachine categoriesFor: #getUMLTransitionSourceFor:!public! !
!UMLStateMachine categoriesFor: #initialize!public! !
!UMLStateMachine categoriesFor: #name!accessing!private! !
!UMLStateMachine categoriesFor: #name:!accessing!private! !
!UMLStateMachine categoriesFor: #nextStateMessage!accessing!private! !
!UMLStateMachine categoriesFor: #nextStateMessage:!accessing!private! !
!UMLStateMachine categoriesFor: #processVarName!accessing!private! !
!UMLStateMachine categoriesFor: #processVarName:!accessing!private! !
!UMLStateMachine categoriesFor: #removeTransition:!public! !
!UMLStateMachine categoriesFor: #stateNameVar!accessing!private! !
!UMLStateMachine categoriesFor: #stateNameVar:!accessing!private! !
!UMLStateMachine categoriesFor: #states!accessing!private! !
!UMLStateMachine categoriesFor: #states:!accessing!private! !
!UMLStateMachine categoriesFor: #transitionNameVar!accessing!private! !
!UMLStateMachine categoriesFor: #transitionNameVar:!accessing!private! !
!UMLStateMachine categoriesFor: #transitions!accessing!private! !
!UMLStateMachine categoriesFor: #transitions:!accessing!private! !
!UMLStateMachine categoriesFor: #umlProcessClass!accessing!private! !
!UMLStateMachine categoriesFor: #umlProcessClass:!accessing!private! !
!UMLStateMachine categoriesFor: #umlStateClass!accessing!private! !
!UMLStateMachine categoriesFor: #umlStateClass:!accessing!private! !
!UMLStateMachine categoriesFor: #umlTransitionClass!accessing!private! !
!UMLStateMachine categoriesFor: #umlTransitionClass:!accessing!private! !

