"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLExecutionSnapshot
	instanceVariableNames: 'virtualMachine temporaries sequence sequenceTemporaries parentSnapshot nodesNotExecuted isDebugging isCurtailed hasDNU lastResult hasOnErrorDo currentUser executedNodes cascadeTemporaries executedImplementations hasInfiniteLoop exception parentStack'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLExecutionSnapshot guid: (GUID fromString: '{b808d12a-ea52-4268-8545-c0dc21c54aa3}')!
UMLExecutionSnapshot comment: ''!
!UMLExecutionSnapshot categoriesForClass!Unclassified! !
!UMLExecutionSnapshot methodsFor!

addBlock: anUMLBlockClosureNode

"	anUMLBlockClosureNode setExecutionSnapshot: self.
	^blocks add: anUMLBlockClosureNode"!

addCascadeTemporary: anUMLObject node: aStNode

	^cascadeTemporaries at: aStNode put: anUMLObject!

addObject: anUMLObject named: name

	^self assignObject: anUMLObject toTemporary: name!

addTemporary: anUMLObject named: aName

	^temporaries at: aName put: anUMLObject!

allSnapshots

	parentSnapshot isNil ifTrue: [^OrderedCollection new].

	^parentSnapshot allSnapshots, (OrderedCollection with: parentSnapshot)!

asDebuggerSnapshot

	self subclassResponsibility!

asDebuggerSnapshotForInfiniteLoop
	| debuggerSnapshot |

	debuggerSnapshot := self asDebuggerSnapshot.

	debuggerSnapshot mainNodes do: [:each | debuggerSnapshot executionProgress removeNodeFromStackToExectute: each.].

	executedNodes do: [:each | debuggerSnapshot executionProgress markNodeAsExecuted: each].

	debuggerSnapshot executionProgress currentMainNode: executedNodes last.

	debuggerSnapshot nextNode: executedNodes last.

	^debuggerSnapshot!

assignObject: anUMLObject toTemporary: aName 
	^sequenceTemporaries at: aName put: anUMLObject!

canStepIn

	^sequence isVirtualMachineImplementation not!

cascadeTemporaries
	^cascadeTemporaries!

cascadeTemporaries: anObject
	cascadeTemporaries := anObject!

catchException

	hasOnErrorDo := true.

	parentStack onErrorDoSnapshot: self!

className

	^sequence className!

clearExecutedImplementations

	executedImplementations := OrderedCollection new.
	hasInfiniteLoop := false!

copySequenceTemporariesTo: anUMLExecutionSnapshot
	"The receiver copy its temporaries variables to snapshot <anUMLExecutionSnapshot>"

	sequenceTemporaries keysAndValuesDo: [:eachKey :eachValue | anUMLExecutionSnapshot assignObject: eachValue toTemporary: eachKey ]!

copyTemporariesTo: anUMLExecutionSnapshot
	"The receiver copy its temporaries variables to snapshot <anUMLExecutionSnapshot>"

	temporaries keysAndValuesDo: [:eachKey :eachValue | anUMLExecutionSnapshot addTemporary: eachValue named: eachKey]!

createBlockFrom: aStBlockNode
	"The receiver create an uml instance of <Block> class"

	^self createUMLBlockFrom: (self createSmalltalkBlockFrom: aStBlockNode)
!

createBlockFrom: aStBlockNode isReEntrantBlock: aBoolean
	"The receiver create an uml instance of <Block> class"

	^self createUMLBlockFrom: (self createSmalltalkBlockFrom: aStBlockNode isReEntrantBlock: aBoolean)
!

createBlockFromAssignment: aStAssignmentNode
	"The receiver create <anUMLBlock> from assignment <aStAssignmentNode>."
	| isReEntrantBlock umlBlock |

	isReEntrantBlock := self detectReEntrantBlockIn: aStAssignmentNode.
	(virtualMachine reEntrantBlocksIsEnabled not and: [isReEntrantBlock])
	ifTrue: [^self exceptionForReEntrantBlock: aStAssignmentNode variable name].

	umlBlock := self createBlockFrom: aStAssignmentNode value isReEntrantBlock: isReEntrantBlock.

	"the name of the variable used to do re entrant is stored in the Smalltalk object <anUMLBlockClosureNode>.
	the <reEntrantVarName> is going to be used to define the block in new execution context (used only with re entrant Blocks)"
	isReEntrantBlock ifTrue: [umlBlock smalltalkObject reEntrantVarName: aStAssignmentNode variable name].

	^umlBlock!

createSmalltalkBlockFrom: aStBlockNode
	"The receiver create an instance of <UMLBlockClosureNode> to be attached to the UML Block"

	^self createSmalltalkBlockFrom: aStBlockNode isReEntrantBlock: false!

createSmalltalkBlockFrom: aStBlockNode isReEntrantBlock: aBoolean
	"The receiver create an instance of <UMLBlockClosureNode> to be attached to the UML Block"
	| block |

	block := UMLBlockClosureNode new 
				sequenceNode: aStBlockNode; 
				isReEntrant: aBoolean;
				arguments: aStBlockNode argumentNames asArray;
				yourself.

	"here we attach the parent snapshot of the block"
	block updateExecutionContext: self.

	^block!

createUMLBlockFrom: anUMLBlockClosureNode
	"The receiver create an instances of UML class <Block> from <anUMLBlockClosureNode>"
	| umlBlock |

	umlBlock := (virtualMachine virtualMachineClassNamed: 'Block') vmPerform: #newInstance parentSnapshot: self. "we create the Block"
	umlBlock smalltalkObject: anUMLBlockClosureNode.
	anUMLBlockClosureNode umlInstance: umlBlock.
	^umlBlock!

currentUser
	^currentUser!

currentUser: anObject
	currentUser := anObject!

detectReEntrantBlockIn: aStAssignmentNode
	"The receiver detected if the Block is a re-entrant Block (issue #142)"

	^aStAssignmentNode value temporaryVariables anySatisfy: [:each | each = aStAssignmentNode variable name]!

exception
	^exception!

exception: exceptionObject

	exception := exceptionObject.

	parentStack exceptionSnapshot: exceptionObject.!

exceptionForReEntrantBlock: variableName
	"The receiver answer <anException> because re-entrant Blocks are disable at Virtual Machine level.
	To enable it: Object switchReEntrantBlockSupport"
	| stObject reEntrantException |

	stObject := (Error new messageText: 'Re-entrant Blocks are not enabled at VM level [var name: ', variableName, ']. ', String lineDelimiter ,'Enable re-entrant Blocks with message [Object switchReEntrantBlockSupport]'); yourself.

	reEntrantException := (virtualMachine errorClass newInstance) smalltalkObject: stObject.

	self isCurtailed: true.
	self exception: reEntrantException.

	^reEntrantException!

executedImplementations
	^executedImplementations!

executedImplementations: anObject
	executedImplementations := anObject!

executedNodes
	^executedNodes!

executedNodes: anObject
	executedNodes := anObject!

finalizeSnapshot
	"The receiver finalize itself from its execution stack"

	parentStack registerExecutedStackItem: self "move from current collection to executed collection"!

generateDebugSnapshot
	| debugSnap |

	debugSnap := UMLImplementationDebugerSnapshot snapshot: self.
	debugSnap currentMainNode: self lastExecutedNode.

	parentSnapshot ifNil: [^debugSnap].
	
	debugSnap parentSnapshot: parentSnapshot generateDebugSnapshot.

	^debugSnap!

getArgumentsFrom: aStMessageNode
	"The receiver get the UML objects for the names contained in <aStMessageNode>"
	| args |

	args := OrderedCollection new.
	aStMessageNode arguments do: [:each | 
		args add: (
			each isBlock 
			ifFalse: [each isMessage 
				ifFalse: [self getObjectFromProgramNode: each] 
				ifTrue: [self processMessageNode: each context: self nilObject parameters: #()]] 
			ifTrue: [self createBlockFrom: each]) ].
	^args asArray!

getBasicObjectNamed: aName
	"<Name> can be anInteger, aFloat, anString, ..."

	((aName = 'true') or: [aName = true]) ifTrue: [^virtualMachine trueObject].
	((aName = 'false') or: [aName = false]) ifTrue: [^virtualMachine falseObject].
	((aName = 'nil') or: [aName = nil]) ifTrue: [^virtualMachine nilObject].
	(aName isString) ifTrue: [^aName asUMLObject: virtualMachine].
	(aName isKindOf: Number) ifTrue: [^virtualMachine getNumber: aName ifAbsent: [virtualMachine addNumber: aName]].
	^virtualMachine nilObject!

getObjectFromProgramNode: aStProgramNode

	^aStProgramNode getUMLObjectFrom: self !

getObjectNamed: aSymbol

	^temporaries at: aSymbol ifAbsent: [self defaultVirtualMachine getAnyClassNamed: aSymbol ifAbsent: [self getBasicObjectNamed: aSymbol]]!

getReceiverObjectFrom: aStMessageNode
	"The receiver get the UML object of the messsage receiver contained in <anUMLMessageSendNode>.
	If the name is -self- or -super- answer the original object which the implementation of <anUMLMessageSendNode>"

	^((aStMessageNode receiverName = 'super') or:[aStMessageNode receiverName = 'self']) 
	ifFalse: [self getObjectFromProgramNode: aStMessageNode] 
	ifTrue: [self receiverObject].!

getTemporaryNamed: aString

	^sequenceTemporaries at: aString ifAbsent: [virtualMachine nilObject]!

hasDNU
	^hasDNU!

hasDNU: aBoolean

	hasDNU := aBoolean.

	aBoolean ifTrue: [parentStack dnuSnapshot: self]!

hasException

	^exception notNil!

hasExecuted: anUMLMessageNode

	^(nodesNotExecuted includes: anUMLMessageNode) not!

hasInfiniteLoop
	^hasInfiniteLoop!

hasInfiniteLoop: aBoolean

	hasInfiniteLoop := aBoolean.

	aBoolean ifTrue: [parentStack infiniteLoopSnapshot: self].!

hasOnErrorDo
	^hasOnErrorDo!

hasOnErrorDo: anObject
	hasOnErrorDo := anObject!

hasParentSnapshot

	^parentSnapshot notNil!

hasReceiver

	^false!

hasSequence

	^sequence notNil !

includesObjectNamed: aString 

	^(self getBasicObjectNamed: aString) ~~ virtualMachine nilObject!

initialize
	super initialize.
	temporaries := LookupTable new.
	nodesNotExecuted := OrderedCollection new.
	sequenceTemporaries := LookupTable new.
	isDebugging := false.
	isCurtailed := false.
	hasDNU := false.
	hasOnErrorDo := false.
	executedNodes := OrderedCollection new.
	cascadeTemporaries := LookupTable new.
	executedImplementations := Set new.
	hasInfiniteLoop := false!

isAttachedToStack

	^parentStack notNil!

isCurtailed
	^isCurtailed!

isCurtailed: anObject
	isCurtailed := anObject!

isDebugging
	^isDebugging!

isDebugging: anObject

	anObject ifTrue: [nodesNotExecuted := OrderedCollection withAll: sequence nodes].
	isDebugging := anObject!

isMainSnapshot
	^parentSnapshot isNil!

isScript

	^false!

isTrait
	^sequence notNil and: [sequence isTrait]
!

lastExecutedNode

	executedNodes isEmpty ifTrue: [^nil].

	^executedNodes last!

lastResult
	^lastResult!

lastResult: anObject
	^lastResult := anObject!

mainNodes

	^self sequence nodes!

markAsExecuted: anUMLMessageNode

	^nodesNotExecuted remove: anUMLMessageNode ifAbsent: []!

markFirstNotExecutedAsExecuted

	nodesNotExecuted isEmpty ifTrue: [^self].

	nodesNotExecuted removeFirst!

nilObject

	^virtualMachine nilObject!

nodes

	^sequence nodes!

nodesNotExecuted
	^nodesNotExecuted!

nodesNotExecuted: anObject
	nodesNotExecuted := anObject!

parentSnapshot
	^parentSnapshot!

parentSnapshot: anUMLExecutionSnapshot

	parentSnapshot := anUMLExecutionSnapshot.

	parentStack := anUMLExecutionSnapshot 
		ifNil: [UMLExecutionStack newStartWith: self]
		ifNotNil: [anUMLExecutionSnapshot parentStack].

	self registerInStack.!

parentStack
	^parentStack!

parentStack: anObject
	parentStack := anObject!

parsedCode
	^sequence parsedCode!

printMessage

	sequence ifNil: [^''].

	^sequence printMessage!

printParsedCode

	^sequence ifNotNil: [:value | value printParsedCode] ifNil: ['']!

processAssignment: anUMLAssigmentNode messageReceiver: anUMLInstance arguments: anArray

	^self subclassResponsibility!

processBlockAssignment: anUMLAssigmentNode messageReceiver: anUMLInstance arguments: anArray

	^self subclassResponsibility!

processCascadeAssignmentNode: aStAssignmentNode context: anUMLObject parameteres: anArray
	"Process aMessage node inside a cascade node. It is necesary for cascade message that the receiver is not a named object.
	If the receiver is a message node then it has to be stored and send the message of the cascade each by each"
	| receiverObject arguments result |

	receiverObject := (cascadeTemporaries includesKey: aStAssignmentNode value) 
		ifFalse: [ | tempObject |
			tempObject := self processMessageNode: aStAssignmentNode value receiver context: anUMLObject parameters: anArray.
			self addCascadeTemporary: tempObject node: aStAssignmentNode value.
			tempObject]
		ifTrue: [cascadeTemporaries at: aStAssignmentNode value].

	aStAssignmentNode value messages do: [:eachMsgNode |
		arguments := eachMsgNode argumentsName collect: [:each | each asUMLObject: virtualMachine].
		result := receiverObject vmPerform: eachMsgNode selector withArguments: arguments parentSnapshot: self.].

	^result!

processCascadeMessageNode: aStMessageNode context: anUMLObject parameteres: anArray
	"Process aMessage node inside a cascade node. It is necesary for cascade message that the receiver is not a named object.
	If the receiver is a message node then it has to be stored and send the message of the cascade each by each"
	| receiverObject arguments |

	receiverObject := (cascadeTemporaries includesKey: aStMessageNode parent) 
		ifFalse: [ | tempObject |
			tempObject := self processMessageNode: aStMessageNode receiver context: anUMLObject parameters: anArray.
			self addCascadeTemporary: tempObject node: aStMessageNode parent.
			tempObject]
		ifTrue: [cascadeTemporaries at: aStMessageNode parent].

	arguments := aStMessageNode argumentsName collect: [:each | each asUMLObject: virtualMachine].

	^receiverObject vmPerform: aStMessageNode selector withArguments: arguments parentSnapshot: self.!

processCascadeNode: aStCascadeNode context: anUMLObject parameteres: anArray
	"Process aMessage node inside a cascade node. It is necesary for cascade message that the receiver is not a named object.
	If the receiver is a message node then it has to be stored and send the message of the cascade each by each"
	| receiverObject arguments result |

	receiverObject := (cascadeTemporaries includesKey: aStCascadeNode) 
		ifFalse: [ | tempObject |
			tempObject := self processMessageNode: aStCascadeNode receiver context: anUMLObject parameters: anArray.
			self addCascadeTemporary: tempObject node: aStCascadeNode.
			tempObject]
		ifTrue: [cascadeTemporaries at: aStCascadeNode].

	aStCascadeNode messages do: [:eachMsg | 
		arguments := eachMsg argumentsName collect: [:each | each asUMLObject: virtualMachine].
		result := receiverObject vmPerform: eachMsg selector withArguments: arguments parentSnapshot: self.
		].

	^result!

processLiteralNode: aStLiteralValueNode context: anUMLInstance parameters: anArray

	^aStLiteralValueNode token value asUMLObject: virtualMachine!

processMessageNode: aStMessageNode context: anUMLObject parameters: anArray 
	"The receiver process <aStMessageNode> for <anUMLObject> with arguments <anArray>.
	1. Get the object name from <aStMessageNode>
	2. Map arguments name's with receiver context's objects 
	3. Send the message <aStMessageNode> to object obtained in 1. with arguments obtained in 2."
	| symbolMessage receiver arguments result |

	symbolMessage := aStMessageNode selector.

	receiver := self getObjectFromProgramNode: aStMessageNode.
	arguments := (aStMessageNode arguments collect: [:each | 
		each isBlock 
		ifTrue: [self createBlockFrom: each] "if the argument is a block (aStBlockNode) we must create it in this context"
		ifFalse: [each isMessage 
			ifTrue: [self processMessageNode: each context: anUMLObject parameters: anArray] "ïs a message node"
			ifFalse: [(self includesObjectNamed: each name) 
				ifFalse: [each getUMLObjectFrom: self] "the object is a basic object: aString, aNumber, aBoolean, etc" 
				ifTrue: [self getObjectFromProgramNode: each]]]]) asArray. "we get the object related to that name"

	result := aStMessageNode receiver isMessage 
		ifTrue: [self processMessageNode: aStMessageNode receiver context: anUMLObject parameters: #()]
		ifFalse: [receiver].

	executedNodes add: aStMessageNode.

	"^virtualMachine send: symbolMessage to: result withAll: arguments parentSnapshot: self isSuperSend: (aStMessageNode receiverName = 'super') isTrait: self isTrait"

	^virtualMachine send: symbolMessage to: result withAll: arguments parentSnapshot: self isSuperSend: aStMessageNode receiver isSuperVariable isTrait: self isTrait!

processMessageNode: aStMessageNode messageReceiver: anUMLObject arguments: anArray	
	"The receiver is processed in <anUMLExecutionSnapshot> for <anUMLObject> with arguments <anArray>"
	| result umlArguments |

	"the node is inside a Cascade Node, and the receiver of the cascade is NOT a named object (myVar), is it a message (like OrderedCollection new)"
	"if it is a Cascade where the cascade reciver is a named object then is processed normaly -see structure of StCascadeNode-"
	(aStMessageNode parent isCascade and: [aStMessageNode parent receiver isMessage]) 
	ifTrue: [^self processCascadeMessageNode: aStMessageNode context: anUMLObject parameteres: anArray].

	(aStMessageNode receiver class == StMessageNode) ifFalse: [^(self processMessageNode: aStMessageNode context: anUMLObject parameters: anArray) asUMLObject: virtualMachine]. "a simple message"

"in this case the receiver is not immediate, is like: <anObject foo .... isEmpty lastMessageNode>"

	result := aStMessageNode receiver processInsideSnapshot: self context: anUMLObject parameters: anArray. "process the first receiver of the message receiver"
	hasDNU ifTrue: [^result].
	umlArguments := self getArgumentsFrom: aStMessageNode. "get the arguments for the last receiver"

	^result vmPerform: aStMessageNode selector withArguments: umlArguments parentSnapshot: self "send the last message"!

processPrimitiveCall: primitiveNumber receiver: anUMLObject withArguments: anArray
	"The receiver call to a primitive number <primitiveNumber> in U-Fabrik environment with receiver <anUMLObject> and primitive arguments <anArray>.
	The result is converted to U-Fabrik obejcts"

	^(virtualMachine processPrimitiveCall: primitiveNumber receiver: anUMLObject  withArguments: anArray snapshot: self) asUMLObject: virtualMachine!

processResultFor: receiverObject in: aStMessageNode withArguments: arguments
	| result |

	result := receiverObject vmPerform: aStMessageNode selector 
				withArguments: arguments
				parentSnapshot: self.
	
	executedNodes add: aStMessageNode.

	^result
!

processReturnNode: aStReturnNode messageReceiver: anUMLObject arguments: anArray 
	"The receiver process a <aStReturnNode> for <anUMLObject> with arguments <anArray>"
	| curtailedMessageResult |

	curtailedMessageResult := aStReturnNode value processInsideSnapshot: self context: anUMLObject parameters: anArray.
	isCurtailed := true.
	^curtailedMessageResult!

processSelfVarible: anUMLImplementationExecutionSnapshot receiver: anUMLVirtualMachineInstance 
	^anUMLVirtualMachineInstance!

processSimpleAssingment: anUMLAssigmentNode messageReceiver: anUMLInstance arguments: arguments 

	^self subclassResponsibility!

receiverObject

	^self subclassResponsibility!

registerImplemenation: anUMLImplementation
	"The receiver register the execution of the implementation <anUMLImplementation>.
	Used to detect infinite loops"

	^executedImplementations add: anUMLImplementation!

registerInStack

	parentStack ifNil: [UMLStackNotFoundError signal: 'No Stack found for this Execution Snapshot'].

	parentStack registerCurrentStackItem: self!

removeTemporaryNamed: aName

	^temporaries removeKey: aName ifAbsent: []!

send: aSymbol to: anUMLInstance withAll: anArray parentSnapshot: anUMLExecutionSnapshot

	^virtualMachine send: aSymbol to: anUMLInstance withAll: anArray parentSnapshot: anUMLExecutionSnapshot!

sequence
	^sequence!

sequence: anUMLSequenceNode 

	sequence := anUMLSequenceNode.

	anUMLSequenceNode temporaryVariables do: [:each | sequenceTemporaries at: each put: virtualMachine nilObject].!

sequenceSuperClass
	"The receiver answer the superclass of its <UMLImplementation>"

	^sequence methodClass umlSuperclass!

sequenceTemporaries
	^sequenceTemporaries!

sequenceTemporaries: anObject 
	sequenceTemporaries := anObject!

stbSaveOn: anSTBOutFiler
	"Output the receiver to anSTBOutFiler. The cached analyzers consume a lot of space, so 
	we don't want to include them in the binary file."

	anSTBOutFiler override: virtualMachine with: nil.
	super stbSaveOn: anSTBOutFiler.!

temporaries
	^temporaries!

temporaries: anObject
	temporaries := anObject!

topParent

	parentSnapshot ifNil: [^self].

	^parentSnapshot!

virtualMachine
	^virtualMachine!

virtualMachine: anObject

	virtualMachine := anObject! !
!UMLExecutionSnapshot categoriesFor: #addBlock:!public! !
!UMLExecutionSnapshot categoriesFor: #addCascadeTemporary:node:!public! !
!UMLExecutionSnapshot categoriesFor: #addObject:named:!public! !
!UMLExecutionSnapshot categoriesFor: #addTemporary:named:!public! !
!UMLExecutionSnapshot categoriesFor: #allSnapshots!public! !
!UMLExecutionSnapshot categoriesFor: #asDebuggerSnapshot!debug process!public! !
!UMLExecutionSnapshot categoriesFor: #asDebuggerSnapshotForInfiniteLoop!debug process!public! !
!UMLExecutionSnapshot categoriesFor: #assignObject:toTemporary:!public! !
!UMLExecutionSnapshot categoriesFor: #canStepIn!public! !
!UMLExecutionSnapshot categoriesFor: #cascadeTemporaries!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #cascadeTemporaries:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #catchException!public!vm stack! !
!UMLExecutionSnapshot categoriesFor: #className!public! !
!UMLExecutionSnapshot categoriesFor: #clearExecutedImplementations!public! !
!UMLExecutionSnapshot categoriesFor: #copySequenceTemporariesTo:!public! !
!UMLExecutionSnapshot categoriesFor: #copyTemporariesTo:!public! !
!UMLExecutionSnapshot categoriesFor: #createBlockFrom:!public!uml blocks! !
!UMLExecutionSnapshot categoriesFor: #createBlockFrom:isReEntrantBlock:!public!uml blocks! !
!UMLExecutionSnapshot categoriesFor: #createBlockFromAssignment:!public!uml blocks! !
!UMLExecutionSnapshot categoriesFor: #createSmalltalkBlockFrom:!public!uml blocks! !
!UMLExecutionSnapshot categoriesFor: #createSmalltalkBlockFrom:isReEntrantBlock:!public!uml blocks! !
!UMLExecutionSnapshot categoriesFor: #createUMLBlockFrom:!public!uml blocks! !
!UMLExecutionSnapshot categoriesFor: #currentUser!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #currentUser:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #detectReEntrantBlockIn:!public!uml blocks! !
!UMLExecutionSnapshot categoriesFor: #exception!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #exception:!accessing!public!vm stack! !
!UMLExecutionSnapshot categoriesFor: #exceptionForReEntrantBlock:!public!uml blocks! !
!UMLExecutionSnapshot categoriesFor: #executedImplementations!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #executedImplementations:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #executedNodes!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #executedNodes:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #finalizeSnapshot!public!vm stack! !
!UMLExecutionSnapshot categoriesFor: #generateDebugSnapshot!public! !
!UMLExecutionSnapshot categoriesFor: #getArgumentsFrom:!private!processesing! !
!UMLExecutionSnapshot categoriesFor: #getBasicObjectNamed:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #getObjectFromProgramNode:!public! !
!UMLExecutionSnapshot categoriesFor: #getObjectNamed:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #getReceiverObjectFrom:!private!processesing! !
!UMLExecutionSnapshot categoriesFor: #getTemporaryNamed:!public! !
!UMLExecutionSnapshot categoriesFor: #hasDNU!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #hasDNU:!accessing!public!vm stack! !
!UMLExecutionSnapshot categoriesFor: #hasException!exceptions!public! !
!UMLExecutionSnapshot categoriesFor: #hasExecuted:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #hasInfiniteLoop!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #hasInfiniteLoop:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #hasOnErrorDo!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #hasOnErrorDo:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #hasParentSnapshot!public! !
!UMLExecutionSnapshot categoriesFor: #hasReceiver!public! !
!UMLExecutionSnapshot categoriesFor: #hasSequence!public! !
!UMLExecutionSnapshot categoriesFor: #includesObjectNamed:!public! !
!UMLExecutionSnapshot categoriesFor: #initialize!public! !
!UMLExecutionSnapshot categoriesFor: #isAttachedToStack!public! !
!UMLExecutionSnapshot categoriesFor: #isCurtailed!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #isCurtailed:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #isDebugging!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #isDebugging:!accessing!private!processesing! !
!UMLExecutionSnapshot categoriesFor: #isMainSnapshot!public! !
!UMLExecutionSnapshot categoriesFor: #isScript!public! !
!UMLExecutionSnapshot categoriesFor: #isTrait!public! !
!UMLExecutionSnapshot categoriesFor: #lastExecutedNode!public! !
!UMLExecutionSnapshot categoriesFor: #lastResult!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #lastResult:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #mainNodes!public! !
!UMLExecutionSnapshot categoriesFor: #markAsExecuted:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #markFirstNotExecutedAsExecuted!public! !
!UMLExecutionSnapshot categoriesFor: #nilObject!public!vm objects! !
!UMLExecutionSnapshot categoriesFor: #nodes!public! !
!UMLExecutionSnapshot categoriesFor: #nodesNotExecuted!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #nodesNotExecuted:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #parentSnapshot!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #parentSnapshot:!accessing!public!vm stack! !
!UMLExecutionSnapshot categoriesFor: #parentStack!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #parentStack:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #parsedCode!public! !
!UMLExecutionSnapshot categoriesFor: #printMessage!public! !
!UMLExecutionSnapshot categoriesFor: #printParsedCode!public! !
!UMLExecutionSnapshot categoriesFor: #processAssignment:messageReceiver:arguments:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #processBlockAssignment:messageReceiver:arguments:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #processCascadeAssignmentNode:context:parameteres:!public! !
!UMLExecutionSnapshot categoriesFor: #processCascadeMessageNode:context:parameteres:!public! !
!UMLExecutionSnapshot categoriesFor: #processCascadeNode:context:parameteres:!public! !
!UMLExecutionSnapshot categoriesFor: #processLiteralNode:context:parameters:!public! !
!UMLExecutionSnapshot categoriesFor: #processMessageNode:context:parameters:!public! !
!UMLExecutionSnapshot categoriesFor: #processMessageNode:messageReceiver:arguments:!public! !
!UMLExecutionSnapshot categoriesFor: #processPrimitiveCall:receiver:withArguments:!public! !
!UMLExecutionSnapshot categoriesFor: #processResultFor:in:withArguments:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #processReturnNode:messageReceiver:arguments:!public! !
!UMLExecutionSnapshot categoriesFor: #processSelfVarible:receiver:!public! !
!UMLExecutionSnapshot categoriesFor: #processSimpleAssingment:messageReceiver:arguments:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #receiverObject!private!processesing! !
!UMLExecutionSnapshot categoriesFor: #registerImplemenation:!public! !
!UMLExecutionSnapshot categoriesFor: #registerInStack!public!vm stack! !
!UMLExecutionSnapshot categoriesFor: #removeTemporaryNamed:!public! !
!UMLExecutionSnapshot categoriesFor: #send:to:withAll:parentSnapshot:!public! !
!UMLExecutionSnapshot categoriesFor: #sequence!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #sequence:!accessing!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #sequenceSuperClass!public! !
!UMLExecutionSnapshot categoriesFor: #sequenceTemporaries!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #sequenceTemporaries:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #stbSaveOn:!binary filing!public! !
!UMLExecutionSnapshot categoriesFor: #temporaries!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #temporaries:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #topParent!public! !
!UMLExecutionSnapshot categoriesFor: #virtualMachine!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #virtualMachine:!accessing!private! !

!UMLExecutionSnapshot class methodsFor!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'Snapshot.png'.
	"
	^Icon fromId: 'Snapshot.ico'! !
!UMLExecutionSnapshot class categoriesFor: #icon!constants!public! !

