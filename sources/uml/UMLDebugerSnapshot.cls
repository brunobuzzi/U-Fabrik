"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLDebugerSnapshot
	instanceVariableNames: 'mainSnapshot parentSnapshot nextNode iterationNodes currentIterationNode executionProgress'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDebugerSnapshot guid: (GUID fromString: '{113280c0-e905-4597-aaad-f575af147a5f}')!
UMLDebugerSnapshot comment: ''!
!UMLDebugerSnapshot categoriesForClass!Unclassified! !
!UMLDebugerSnapshot methodsFor!

addTemporary: anUMLObject named: aString

	^mainSnapshot addTemporary: anUMLObject named: aString!

allNodes

	^self subclassResponsibility!

allSnapshots

	parentSnapshot isNil ifTrue: [^OrderedCollection new].

	^parentSnapshot allSnapshots, (OrderedCollection with: parentSnapshot)!

annotateResultAsLast: anUMLObject

	^self currentExecutionProgress lastAnnotatedResult: anUMLObject!

createBlockDebugIterationForMessage: aStProgramNode

	self subclassResponsibility!

currentExecutionProgress

	^(iterationNodes at: currentIterationNode ifAbsent: [^executionProgress]) executionProgress!

currentIterationBlock

	^iterationNodes at: currentIterationNode ifAbsent: [nil]!

currentIterationNode
	^currentIterationNode!

currentIterationNode: anObject

	currentIterationNode := anObject!

currentMainNode
	^executionProgress currentMainNode!

currentMainNode: aStProgramNode
	^executionProgress currentMainNode: aStProgramNode !

executeNode: aStProgramNode

	self subclassResponsibility!

executionProgress
	^executionProgress!

executionProgress: anObject
	executionProgress := anObject!

executionProgressOfCurrentIterationBlock

	^self currentIterationBlock executionProgress!

firstNode

	^self mainSequence nodes first!

firstNodeCode

	^self firstNode formattedCode!

getArgumentsFrom: aStProgramNode

	^mainSnapshot getArgumentsFrom: aStProgramNode
!

getNextNode
	"The receiver answer the next node (aStProgramNode) to execute "

	self isExecutingIterationNode ifTrue: [^nextNode := self getNextNodeFromIterationNodes].

	self isAtEnd ifFalse: [^nextNode := self getNextNodeIn: executionProgress currentMainNode].!

getNextNodeFromAssignment: aStAssignmentNode
	"The receiver get the NEXT message to send from <aStMessageNode>"

	aStAssignmentNode value isMessage ifTrue: [^self getNextNodeFromMessage: aStAssignmentNode value].

	^aStAssignmentNode!

getNextNodeFromIterationNodes
	"The current debug snapshot has entered to a special iteration message (as #do: #select: ...) and we first perform the message of all <iterationNodes> to then continue the normal execution.
	Each time a special iteration message is finished the key and all nodes are removed from <iterationNodes>"
	| iterationBlock blockArguments |

	iterationBlock := iterationNodes at: currentIterationNode.
	iterationBlock isIfTrueIfFalseDebug 
	ifFalse: [blockArguments := iterationBlock smalltalkBlock arguments last smalltalkObject. "here we set the current object of the collection as a Temporary in the snapshot execution"
		iterationBlock isAtEnd ifFalse: [mainSnapshot addTemporary: iterationBlock getCurrentObject named: blockArguments]].

	nextNode := iterationBlock isAtEnd 
		ifTrue: [iterationBlock finalizeIteration.
			 self getNextNode] 
		ifFalse: [iterationBlock getNextNode].

	^nextNode
!

getNextNodeFromMessage: aStMessageNode
	"The receiver get the NEXT message to send from <aStMessageNode>"

	aStMessageNode receiver isMessage ifFalse: [^aStMessageNode].

	(executionProgress hasExecutedInnerNode: aStMessageNode receiver) ifTrue: [^aStMessageNode].

	^self getNextNodeFromMessage: aStMessageNode receiver!

getNextNodeFromReturn: aStReturnNode 

	aStReturnNode value isMessage ifTrue: [^self getNextNodeFromMessage: aStReturnNode value].

	aStReturnNode value isAssignment ifTrue: [^self getNextNodeFromAssignment: aStReturnNode value].

	^aStReturnNode!

getNextNodeIn: aStProgramNode
	"The receiver answer the next node (aStProgramNode) to execute "

	^self getNextNodeIn: aStProgramNode using: executionProgress!

getNextNodeIn: aStProgramNode using: anUMLDebugExecutionProgress
	"The receiver answer the next node (aStProgramNode) to execute "

	anUMLDebugExecutionProgress isAboutStartProcessAmainNode "executedInnerNodes isEmpty"
	ifTrue: [aStProgramNode isMessage ifTrue: [^nextNode := self getNextNodeFromMessage: aStProgramNode].
		aStProgramNode isAssignment ifTrue: [^nextNode := self getNextNodeFromAssignment: aStProgramNode].
		aStProgramNode isReturn ifTrue: [^nextNode := self getNextNodeFromReturn: aStProgramNode] ].

	(anUMLDebugExecutionProgress hasExecutedNode: aStProgramNode) "this node is already executed (this happend in iteration messages -#do:)"
	ifTrue: [ | currentNodeToExecute | 
		currentNodeToExecute := anUMLDebugExecutionProgress isAtEnd 
		ifFalse: [anUMLDebugExecutionProgress nodesToExecute first] 
		ifTrue: [self restartExecutionForNextObject. anUMLDebugExecutionProgress nodesToExecute first].
		anUMLDebugExecutionProgress executedInnerNodes: OrderedCollection new.
		anUMLDebugExecutionProgress currentMainNode: currentNodeToExecute.
		^anUMLDebugExecutionProgress currentMainNode].
"if we reach here --> we are processing an <inner node>"
	(anUMLDebugExecutionProgress hasExecutedInnerNode: nextNode)"(executedInnerNodes includes: nextNode) "
	ifFalse: [^nextNode 
			ifNil: [aStProgramNode] 
			ifNotNil: [:value | (anUMLDebugExecutionProgress hasExecutedNode: value) "(executedNodes includes: value)" 
						ifTrue: [aStProgramNode] 
						ifFalse: [value] ] ].

	^nextNode := nextNode parent
!

getObjectNamed: aString 
	^mainSnapshot getObjectNamed: aString !

getReceiverObjectFrom: aStProgramNode

	^mainSnapshot getReceiverObjectFrom: aStProgramNode !

hasFirstSentenceDNU
	"This method answer whether or not the DNU is was produce by the first sentence in collection of nodes.
	If that happen then the debug process has to be restarted. This method must be called only when debuger is about to open.
	Check: BUG: DEVENV_122 for further info."

	^mainSnapshot nodes first == nextNode !

initialize

	super initialize.

	iterationNodes := LookupTable new.!

isAtEnd
	^executionProgress isAtEnd and: [iterationNodes allSatisfy: [:each | each isAtEnd] ]!

isExecutingIterationNode

	^iterationNodes anySatisfy: [:each | each isAtEnd not]!

isScriptSnapshot

	^false!

isSpecialNodeMessage: aStMessageNode
	"The receiver answwe whether or not <aStMessageNode> is a special message to debug"

	^#(#do: #collect: #select: #reject: #detect: #detect:ifNone: #allSatisfy: #anySatisfy: #value: #valueWithArguments: #value #ifTrue: #ifTrue:ifFalse: #ifFalse: #ifFalse:ifTrue:)
		includes: aStMessageNode selector!

iterationNodes
	^iterationNodes!

iterationNodes: anObject
	iterationNodes := anObject!

lastAnnotatedResult
	^self currentExecutionProgress lastAnnotatedResult!

mainSnapshot
	^mainSnapshot!

mainSnapshot: anObject
	mainSnapshot := anObject!

nextNode
	"Private - The receiver answer the next node (aStProgramNode) to execute "
	^nextNode!

nextNode: anObject
	^nextNode := anObject!

nilObject

	^mainSnapshot nilObject!

nodes

	^self subclassResponsibility!

nodesToExecute

	^executionProgress nodesToExecute!

parentSnapshot
	^parentSnapshot!

parentSnapshot: anObject
	parentSnapshot := anObject!

printSnapshotName
	self subclassResponsibility!

receiverObject
	^mainSnapshot receiverObject!

removeCurrentIterationNode

	iterationNodes removeKey: currentIterationNode.!

restartExecution

	iterationNodes := LookupTable new.
	executionProgress restartExecutionFor: self.
	nextNode := nil.!

restartExecutionForNextObject

	self currentIterationBlock restartExecution!

sequenceTemporaries
	^mainSnapshot sequenceTemporaries!

setCurrentExecutionProgress

	executionProgress := UMLDebugExecutionProgress on: self.!

setExecutedNodesWith: anOrderedCollection

	^executionProgress executedNodes: anOrderedCollection!

stepInto: aStProgramNode

	(self isSpecialNodeMessage: aStProgramNode) ifTrue: [^self stepIntoSpecialMessage: aStProgramNode].
	aStProgramNode isAssignment ifTrue: [^self stepIntoAssignment: aStProgramNode].

	aStProgramNode receiver isMessage ifTrue: [^self stepIntoNestedMessageNode: aStProgramNode].

	^self stepIntoMessageNode: aStProgramNode!

stepIntoAssignment: aStAssignmentNode 

	aStAssignmentNode value isMessage!

stepIntoMessageNode: aStMessageNode
	| receiver |

	receiver := mainSnapshot getReceiverObjectFrom: aStMessageNode. "we get the message receiver from the <mainSnapshot>"
"we get the implementation to execute"

	^self stepIntoMessageNode: aStMessageNode receiver: receiver!

stepIntoMessageNode: aStMessageNode receiver: anUMLObject
	| debuggerSnapshot newExecutionSnapshot implementation arguments implementationClass |

	implementationClass := (aStMessageNode receiverName = 'super') 
						ifFalse: [anUMLObject getMetaclass] 
						ifTrue: [anUMLObject getMetaclass umlSuperclass].

	implementation := mainSnapshot virtualMachine fetchMethodNamed: aStMessageNode selector 
				for: implementationClass
				ifNone: [^UMLImplementationNotFoundError selector: aStMessageNode selector class: implementationClass].
	implementation nodes isEmpty ifTrue: [^nil].
	arguments := mainSnapshot getArgumentsFrom: aStMessageNode. "we get the message arguments"

	newExecutionSnapshot := UMLImplementationExecutionSnapshot "we create the regular UMLExecutionSnapshot"
							activateSnaphotWith: implementation 
							receiver: anUMLObject 
							arguments: arguments 
							virtualMachine: self defaultVirtualMachine.
	newExecutionSnapshot parentSnapshot: mainSnapshot.
"we create a new Debugger Execution Snapshot"
	debuggerSnapshot := UMLImplementationDebugerSnapshot snapshot: newExecutionSnapshot.
	debuggerSnapshot parentSnapshot: self.

	^debuggerSnapshot

!

stepIntoNestedMessageNode: aStProgramNode

	^self stepIntoMessageNode: aStProgramNode receiver: self lastAnnotatedResult "lastResult"!

stepIntoSpecialMessage: aStMessageNode 

	(#(#do: #select: #collect: #reject: #allSatisfy: #any:satisfy:) includes: aStMessageNode selector) ifTrue: [^self stepIntoSpecialMethodDo: aStMessageNode].

	(#(#ifTrue: #ifTrue:ifFalse: #ifFalse: #ifFalse:ifTrue:) includes: aStMessageNode selector) ifTrue: [^self stepIntoSpecialMethodifTrueIfFalse: aStMessageNode].

	^nil!

stepIntoSpecialMethodDo: aStMessageNode 
	| blockDebugIteration |

	blockDebugIteration := executionProgress createBlockDebugIterationForMessage: aStMessageNode.

	blockDebugIteration isAtEnd ifTrue: [^self getNextNode].

	iterationNodes at: aStMessageNode put: blockDebugIteration.

	blockDebugIteration parentIterator: self currentIterationBlock.
	blockDebugIteration parentIterationNode: currentIterationNode.

	self currentIterationNode: aStMessageNode.

	^self getNextNode!

stepIntoSpecialMethodifTrueIfFalse: aStMessageNode 
	| blockIfTrueIfFalseDebug |

	blockIfTrueIfFalseDebug := self currentExecutionProgress createBlockDebugIterationForIfTrueIfFalseMessage: aStMessageNode.

	iterationNodes at: aStMessageNode put: blockIfTrueIfFalseDebug.

	blockIfTrueIfFalseDebug parentIterator: self currentIterationBlock.

	currentIterationNode ifNotNil: [:value | blockIfTrueIfFalseDebug parentIterationNode: currentIterationNode.].

	self currentIterationNode: aStMessageNode.

	^self getNextNode!

stepOver: aStProgramNode
	"The receiver step over <aStProgramNode> so the node is executed inmidiatly"
	| result |

	(aStProgramNode isMessage and: [aStProgramNode selector = #halt]) "in the step over operation we do not care about #halt"
	ifFalse: [result := self executeNode: aStProgramNode].

	(self isExecutingIterationNode
	ifFalse: [executionProgress] 
	ifTrue: [self executionProgressOfCurrentIterationBlock]) registerStepOver: aStProgramNode withResult: result.

	(self isExecutingIterationNode and: [self currentIterationBlock currentIterationIsOver]) ifTrue: [self restartExecutionForNextObject].

	^result!

synchronizeExecutionWithChildNode: aStProgramNode

	executionProgress removeNodeFromStackToExectute: aStProgramNode. "nodesToExecute remove: aStProgramNode"
	executionProgress markNodeAsExecuted: aStProgramNode. "executedNodes add: aStProgramNode"
	self getNextNode.!

temporaries
	^mainSnapshot temporaries! !
!UMLDebugerSnapshot categoriesFor: #addTemporary:named:!public! !
!UMLDebugerSnapshot categoriesFor: #allNodes!public! !
!UMLDebugerSnapshot categoriesFor: #allSnapshots!public! !
!UMLDebugerSnapshot categoriesFor: #annotateResultAsLast:!public! !
!UMLDebugerSnapshot categoriesFor: #createBlockDebugIterationForMessage:!public! !
!UMLDebugerSnapshot categoriesFor: #currentExecutionProgress!public! !
!UMLDebugerSnapshot categoriesFor: #currentIterationBlock!public! !
!UMLDebugerSnapshot categoriesFor: #currentIterationNode!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #currentIterationNode:!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #currentMainNode!public! !
!UMLDebugerSnapshot categoriesFor: #currentMainNode:!public! !
!UMLDebugerSnapshot categoriesFor: #executeNode:!debug process!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #executionProgress!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #executionProgress:!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #executionProgressOfCurrentIterationBlock!public! !
!UMLDebugerSnapshot categoriesFor: #firstNode!public! !
!UMLDebugerSnapshot categoriesFor: #firstNodeCode!public! !
!UMLDebugerSnapshot categoriesFor: #getArgumentsFrom:!public! !
!UMLDebugerSnapshot categoriesFor: #getNextNode!debug process!next node!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #getNextNodeFromAssignment:!next node!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #getNextNodeFromIterationNodes!next node!public! !
!UMLDebugerSnapshot categoriesFor: #getNextNodeFromMessage:!next node!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #getNextNodeFromReturn:!next node!public! !
!UMLDebugerSnapshot categoriesFor: #getNextNodeIn:!debug process!next node!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #getNextNodeIn:using:!debug process!next node!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #getObjectNamed:!public! !
!UMLDebugerSnapshot categoriesFor: #getReceiverObjectFrom:!public! !
!UMLDebugerSnapshot categoriesFor: #hasFirstSentenceDNU!public! !
!UMLDebugerSnapshot categoriesFor: #initialize!public! !
!UMLDebugerSnapshot categoriesFor: #isAtEnd!public! !
!UMLDebugerSnapshot categoriesFor: #isExecutingIterationNode!debug process!next node!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #isScriptSnapshot!public! !
!UMLDebugerSnapshot categoriesFor: #isSpecialNodeMessage:!public! !
!UMLDebugerSnapshot categoriesFor: #iterationNodes!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #iterationNodes:!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #lastAnnotatedResult!public! !
!UMLDebugerSnapshot categoriesFor: #mainSnapshot!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #mainSnapshot:!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #nextNode!debug process!private!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #nextNode:!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #nilObject!public! !
!UMLDebugerSnapshot categoriesFor: #nodes!public! !
!UMLDebugerSnapshot categoriesFor: #nodesToExecute!public! !
!UMLDebugerSnapshot categoriesFor: #parentSnapshot!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #parentSnapshot:!accessing!private! !
!UMLDebugerSnapshot categoriesFor: #printSnapshotName!public! !
!UMLDebugerSnapshot categoriesFor: #receiverObject!public! !
!UMLDebugerSnapshot categoriesFor: #removeCurrentIterationNode!public! !
!UMLDebugerSnapshot categoriesFor: #restartExecution!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #restartExecutionForNextObject!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #sequenceTemporaries!public! !
!UMLDebugerSnapshot categoriesFor: #setCurrentExecutionProgress!public! !
!UMLDebugerSnapshot categoriesFor: #setExecutedNodesWith:!public! !
!UMLDebugerSnapshot categoriesFor: #stepInto:!debug process!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #stepIntoAssignment:!debug process!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #stepIntoMessageNode:!debug process!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #stepIntoMessageNode:receiver:!debug process!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #stepIntoNestedMessageNode:!public! !
!UMLDebugerSnapshot categoriesFor: #stepIntoSpecialMessage:!public! !
!UMLDebugerSnapshot categoriesFor: #stepIntoSpecialMethodDo:!public! !
!UMLDebugerSnapshot categoriesFor: #stepIntoSpecialMethodifTrueIfFalse:!public! !
!UMLDebugerSnapshot categoriesFor: #stepOver:!debug process!public!snapshot debug! !
!UMLDebugerSnapshot categoriesFor: #synchronizeExecutionWithChildNode:!next node!public! !
!UMLDebugerSnapshot categoriesFor: #temporaries!public! !

!UMLDebugerSnapshot class methodsFor!

icon

	^Icon fromId: 'Debugger.ico'! !
!UMLDebugerSnapshot class categoriesFor: #icon!public! !

