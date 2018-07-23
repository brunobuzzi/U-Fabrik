"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLDebugExecutionProgress
	instanceVariableNames: 'debugerSnapshot nodesToExecute executedNodes resultsStack currentMainNode currentInnerNode executedInnerNodes currentIterationNode lastAnnotatedResult'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDebugExecutionProgress guid: (GUID fromString: '{48025818-efc9-4242-b046-ff0f2ac651dd}')!
UMLDebugExecutionProgress comment: ''!
!UMLDebugExecutionProgress categoriesForClass!Unclassified! !
!UMLDebugExecutionProgress methodsFor!

createBlockDebugIterationForIfTrueIfFalseMessage: aStProgramNode
	| lastResult blockToExecute blockArguments |

	"lastResult := currentIterationNode 
		ifNil: [debugerSnapshot lastResult smalltalkObject] 
		ifNotNil: [:value | debugerSnapshot lastIterationResult smalltalkObject.]."

	blockArguments := debugerSnapshot getArgumentsFrom: debugerSnapshot nextNode.

	(aStProgramNode selector = #ifTrue:) ifTrue: [blockToExecute := lastAnnotatedResult smalltalkObject "lastResult" ifTrue: [blockArguments first] ifFalse: [nil]].
	(aStProgramNode selector = #ifFalse:) ifTrue: [blockToExecute := lastAnnotatedResult smalltalkObject "lastResult" ifTrue: [nil] ifFalse: [blockArguments first]].
	(aStProgramNode selector = #ifTrue:ifFalse:) ifTrue: [blockToExecute := lastAnnotatedResult smalltalkObject "lastResult" ifTrue: [blockArguments first] ifFalse: [blockArguments second]].
	(aStProgramNode selector = #ifFalse:ifTrue:) ifTrue: [blockToExecute := lastAnnotatedResult smalltalkObject "lastResult" ifTrue: [blockArguments second] ifFalse: [blockArguments first]].

	^UMLDebugIfTrueIfFalseBlock
		iteratorNode: aStProgramNode
		block:  blockToExecute
		debugSnapshot: debugerSnapshot!

createBlockDebugIterationForImplementationIterationMessage: aStProgramNode
	| collection |

	collection := aStProgramNode receiver isVariable 
		ifFalse: [debugerSnapshot lastAnnotatedResult] 
		ifTrue: [debugerSnapshot getObjectNamed: aStProgramNode receiver name].

	^UMLDebugIterationBlock
		iteratorNode: aStProgramNode
		collection: collection
		block: (debugerSnapshot getArgumentsFrom: debugerSnapshot nextNode) last
		debugSnapshot: debugerSnapshot!

createBlockDebugIterationForMessage: aStProgramNode

	^debugerSnapshot createBlockDebugIterationForMessage: aStProgramNode!

createBlockDebugIterationForWorkspeceIterationMessage: aStProgramNode
	"The receiver creates an iteration block for <aStProgramNode>. "
	| receiverCollection |

	receiverCollection := debugerSnapshot isExecutingIterationNode 
		ifTrue: [debugerSnapshot lastAnnotatedResult "lastResult"] 
		ifFalse: [(resultsStack includesKey: aStProgramNode) 
				ifTrue: [(resultsStack at: aStProgramNode) last] 
				ifFalse: [debugerSnapshot getObjectNamed: aStProgramNode receiverName].].

	^UMLDebugIterationBlock
		iteratorNode: aStProgramNode
		collection: receiverCollection
		block: (debugerSnapshot getArgumentsFrom: debugerSnapshot nextNode) last
		debugSnapshot: debugerSnapshot!

currentInnerNode
	^currentInnerNode!

currentInnerNode: anObject
	currentInnerNode := anObject!

currentIterationNode
	^currentIterationNode!

currentIterationNode: anObject

	currentIterationNode := anObject!

currentMainNode
	^currentMainNode!

currentMainNode: anObject
	currentMainNode := anObject!

debugerSnapshot
	^debugerSnapshot!

debugerSnapshot: anObject
	debugerSnapshot := anObject!

executedInnerNodes
	^executedInnerNodes!

executedInnerNodes: anObject
	executedInnerNodes := anObject!

executedNodes
	^executedNodes!

executedNodes: anObject
	executedNodes := anObject!

getRemainingNodes

	^debugerSnapshot allNodes copyWithoutAll: executedNodes!

hasExecutedInnerNode: aStProgramNode

	^executedInnerNodes includes: aStProgramNode!

hasExecutedNode: aStProgramNode

	^executedNodes includes: aStProgramNode!

initialize

	super initialize.

	executedNodes := OrderedCollection new.
	executedInnerNodes := OrderedCollection new.
	resultsStack := LookupTable new.!

intervalFor: aStProgramNode
	"The debugger select <aStProgramNode> text in the source presenter. 
	But if is an Implementation Snapshot the <nodes> with the real position are in the implementation NOT in the <nodesToExecute> of the Debugger Snapshot"
	| implementationNode |

	debugerSnapshot isScriptSnapshot ifTrue: [^aStProgramNode sourceInterval].

	implementationNode := debugerSnapshot getRemainingNodes detect: [:each | each equalTo: aStProgramNode exceptForVariables: #()].

	^implementationNode sourceInterval!

isAboutStartProcessAmainNode
	"Answer whether the receiver is about to start process the <main node>.
	This mean that the <executedInnerNodes> is empty because we are going to start the process of a new <main node>"

	^executedInnerNodes isEmpty!

isAtEnd
	^nodesToExecute isEmpty!

lastAnnotatedResult
	^lastAnnotatedResult!

lastAnnotatedResult: anObject

	^lastAnnotatedResult := anObject!

markNodeAsExecuted: aStProgramNode

	^executedNodes add: aStProgramNode!

nodesToExecute
	^nodesToExecute!

nodesToExecute: anObject
	nodesToExecute := anObject!

onSnapshot: anUMLDebugerSnapshot

	debugerSnapshot := anUMLDebugerSnapshot.
	nodesToExecute := OrderedCollection withAll: anUMLDebugerSnapshot nodes.
	currentMainNode := nodesToExecute first.!

onSnapshotForIterationBlock: anUMLDebugIterationBlock

	debugerSnapshot := anUMLDebugIterationBlock debugSnapshot.
	nodesToExecute := OrderedCollection withAll: anUMLDebugIterationBlock smalltalkBlock nodes.
	currentMainNode := nodesToExecute first.!

registerStepOver: aStProgramNode withResult: anUMLObject

	(anUMLObject == self defaultVirtualMachine nilObject)
	ifFalse: [(resultsStack includesKey: currentMainNode) 
		ifTrue: [(resultsStack at: currentMainNode) add: anUMLObject] 
		ifFalse: [resultsStack at: currentMainNode put: (OrderedCollection with: anUMLObject)]. "the execution stack is a LookupTable with each <main node> as its key and a collection of result of <inner nodes>"].

	(nodesToExecute includes: aStProgramNode)
	ifTrue: [executedNodes add: aStProgramNode. "we add the node to execute node list"
		nodesToExecute remove: aStProgramNode.
		executedInnerNodes := OrderedCollection new.
		currentMainNode := nodesToExecute notEmpty ifTrue: [nodesToExecute first] ifFalse: [nil]]
	ifFalse: [executedInnerNodes add: aStProgramNode].
!

removeNodeFromStackToExectute: aStProgramNode

	^nodesToExecute remove: aStProgramNode!

restartExecutionFor: anUMLDebugIterationBlock

	executedNodes := OrderedCollection new.
	executedInnerNodes := OrderedCollection new.
	nodesToExecute := OrderedCollection withAll: anUMLDebugIterationBlock nodes.
	resultsStack := LookupTable new.
	currentMainNode := nodesToExecute first.
	currentInnerNode := nil.!

resultsStack
	^resultsStack!

resultsStack: anObject
	resultsStack := anObject! !
!UMLDebugExecutionProgress categoriesFor: #createBlockDebugIterationForIfTrueIfFalseMessage:!public! !
!UMLDebugExecutionProgress categoriesFor: #createBlockDebugIterationForImplementationIterationMessage:!public! !
!UMLDebugExecutionProgress categoriesFor: #createBlockDebugIterationForMessage:!public! !
!UMLDebugExecutionProgress categoriesFor: #createBlockDebugIterationForWorkspeceIterationMessage:!public! !
!UMLDebugExecutionProgress categoriesFor: #currentInnerNode!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #currentInnerNode:!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #currentIterationNode!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #currentIterationNode:!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #currentMainNode!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #currentMainNode:!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #debugerSnapshot!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #debugerSnapshot:!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #executedInnerNodes!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #executedInnerNodes:!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #executedNodes!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #executedNodes:!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #getRemainingNodes!public! !
!UMLDebugExecutionProgress categoriesFor: #hasExecutedInnerNode:!public! !
!UMLDebugExecutionProgress categoriesFor: #hasExecutedNode:!public! !
!UMLDebugExecutionProgress categoriesFor: #initialize!public! !
!UMLDebugExecutionProgress categoriesFor: #intervalFor:!public! !
!UMLDebugExecutionProgress categoriesFor: #isAboutStartProcessAmainNode!public! !
!UMLDebugExecutionProgress categoriesFor: #isAtEnd!public! !
!UMLDebugExecutionProgress categoriesFor: #lastAnnotatedResult!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #lastAnnotatedResult:!accessing!public! !
!UMLDebugExecutionProgress categoriesFor: #markNodeAsExecuted:!public! !
!UMLDebugExecutionProgress categoriesFor: #nodesToExecute!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #nodesToExecute:!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #onSnapshot:!public! !
!UMLDebugExecutionProgress categoriesFor: #onSnapshotForIterationBlock:!public! !
!UMLDebugExecutionProgress categoriesFor: #registerStepOver:withResult:!public! !
!UMLDebugExecutionProgress categoriesFor: #removeNodeFromStackToExectute:!public! !
!UMLDebugExecutionProgress categoriesFor: #restartExecutionFor:!public! !
!UMLDebugExecutionProgress categoriesFor: #resultsStack!accessing!private! !
!UMLDebugExecutionProgress categoriesFor: #resultsStack:!accessing!private! !

!UMLDebugExecutionProgress class methodsFor!

icon

	^Icon fromId: 'Process.ico'!

on: anUMLDebugerSnapshot

	^super new initialize
		onSnapshot: anUMLDebugerSnapshot;
		yourself.!

onIterationBlock: anUMLDebugIterationBlock

	^super new initialize
		onSnapshotForIterationBlock: anUMLDebugIterationBlock;
		yourself.! !
!UMLDebugExecutionProgress class categoriesFor: #icon!public! !
!UMLDebugExecutionProgress class categoriesFor: #on:!public! !
!UMLDebugExecutionProgress class categoriesFor: #onIterationBlock:!public! !

