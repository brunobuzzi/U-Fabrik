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

	hasOnErrorDo := true!

className

	^sequence className!

clearExecutedImplementations

	executedImplementations := OrderedCollection new.
	hasInfiniteLoop := false!

createBlockFrom: aStBlockNode

	^self createUMLBlockFrom: (self createSmalltalkBlockFrom: aStBlockNode)
!

createSmalltalkBlockFrom: aStBlockNode
	| block |

	block := UMLBlockClosureNode new sequenceNode: aStBlockNode; yourself.
	block arguments: aStBlockNode argumentNames asArray.
	block snapshot: self. "here we attach the father snapshot of the block"
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

exception
	^exception!

exception: anObject
	exception := anObject!

executedImplementations
	^executedImplementations!

executedImplementations: anObject
	executedImplementations := anObject!

executedNodes
	^executedNodes!

executedNodes: anObject
	executedNodes := anObject!

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

	(aName = 'true') ifTrue: [^virtualMachine trueObject].
	(aName = 'false') ifTrue: [^virtualMachine falseObject].
	(aName = 'nil') ifTrue: [^virtualMachine nilObject].
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

hasDNU: anObject
	hasDNU := anObject!

hasException

	^exception notNil!

hasExecuted: anUMLMessageNode

	^(nodesNotExecuted includes: anUMLMessageNode) not!

hasInfiniteLoop
	^hasInfiniteLoop!

hasInfiniteLoop: anObject
	hasInfiniteLoop := anObject!

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

	anUMLExecutionSnapshot 
	ifNil: [parentStack := UMLExecutionStack newStartWith: self]
	ifNotNil: [parentStack := anUMLExecutionSnapshot parentStack].

	parentStack registerStackItem: self.!

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
	umlArguments := self getArgumentsFrom: aStMessageNode. "get the arguments for the last receiver"

	^result vmPerform: aStMessageNode selector withArguments: umlArguments parentSnapshot: self "send the last message"!

processPrimitiveCall: primitiveNumber receiver: anUMLObject withArguments: anArray

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

removeTemporaryNamed: aName

	^temporaries removeKey: aName!

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
!UMLExecutionSnapshot categoriesFor: #catchException!public! !
!UMLExecutionSnapshot categoriesFor: #className!public! !
!UMLExecutionSnapshot categoriesFor: #clearExecutedImplementations!public! !
!UMLExecutionSnapshot categoriesFor: #createBlockFrom:!public! !
!UMLExecutionSnapshot categoriesFor: #createSmalltalkBlockFrom:!public! !
!UMLExecutionSnapshot categoriesFor: #createUMLBlockFrom:!public! !
!UMLExecutionSnapshot categoriesFor: #currentUser!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #currentUser:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #exception!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #exception:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #executedImplementations!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #executedImplementations:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #executedNodes!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #executedNodes:!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #generateDebugSnapshot!public! !
!UMLExecutionSnapshot categoriesFor: #getArgumentsFrom:!private!processesing! !
!UMLExecutionSnapshot categoriesFor: #getBasicObjectNamed:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #getObjectFromProgramNode:!public! !
!UMLExecutionSnapshot categoriesFor: #getObjectNamed:!processesing!public! !
!UMLExecutionSnapshot categoriesFor: #getReceiverObjectFrom:!private!processesing! !
!UMLExecutionSnapshot categoriesFor: #getTemporaryNamed:!public! !
!UMLExecutionSnapshot categoriesFor: #hasDNU!accessing!private! !
!UMLExecutionSnapshot categoriesFor: #hasDNU:!accessing!private! !
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
	^InternalIcon fromBytes: #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 32 0 0 0 32 8 6 0 0 0 115 122 122 244 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 8 85 73 68 65 84 88 71 221 87 105 79 85 89 22 125 126 238 196 164 147 250 5 93 223 42 253 161 211 169 164 107 136 85 210 128 180 200 80 140 79 230 169 64 161 160 0 209 98 148 18 100 22 80 10 84 6 5 130 2 2 162 8 50 8 34 138 202 60 9 143 25 101 16 16 4 4 5 84 76 116 245 89 231 213 165 68 170 167 47 126 232 155 220 220 119 239 219 231 236 181 215 94 123 159 115 118 188 123 247 14 59 118 236 80 61 127 254 92 197 231 199 186 118 238 220 169 90 95 95 87 169 8 128 215 203 151 47 241 234 213 171 143 118 211 231 139 23 47 176 9 96 121 121 25 43 43 43 31 237 38 128 213 213 213 255 67 0 164 117 109 109 77 166 116 125 125 77 210 44 244 181 229 38 211 255 53 3 202 132 66 48 82 31 175 95 191 22 79 78 190 46 41 228 255 156 144 78 248 237 217 179 103 120 60 61 141 209 209 49 76 78 78 97 73 188 47 47 175 136 239 203 242 63 218 17 32 47 62 183 104 128 147 41 142 54 54 54 164 195 133 133 5 140 79 76 96 112 112 8 157 157 93 104 105 105 69 87 87 55 250 251 251 49 62 62 142 39 79 158 200 137 151 150 150 208 215 215 135 210 210 82 156 72 76 134 191 255 33 68 30 143 66 217 181 10 52 53 183 96 96 112 24 211 211 51 24 30 25 133 166 127 16 47 86 215 176 40 198 108 2 88 21 31 22 22 22 49 60 60 130 246 142 14 225 168 5 221 221 221 168 174 169 65 65 97 17 206 157 203 65 92 92 130 152 52 26 103 206 156 69 126 126 62 26 26 26 48 48 48 32 65 78 78 78 226 252 249 243 8 9 9 65 64 64 0 2 3 3 17 28 28 140 99 199 142 33 61 61 29 87 174 92 65 93 93 29 78 159 78 131 255 161 195 56 151 147 143 182 142 30 168 36 23 226 26 30 30 69 69 121 37 206 158 205 192 241 168 24 4 135 132 226 196 137 68 100 103 103 163 182 182 86 252 63 44 29 145 66 86 12 217 81 88 34 107 79 159 62 197 131 7 15 80 93 93 141 130 130 2 92 186 116 9 23 47 94 68 74 74 10 34 34 34 224 227 227 3 123 123 123 216 216 236 199 158 61 250 112 118 61 128 188 252 171 90 6 56 193 229 203 151 69 84 5 232 234 236 20 84 77 203 232 147 146 146 36 242 78 241 141 148 19 196 181 107 215 16 19 19 131 123 247 238 225 209 163 71 146 118 218 222 186 117 11 89 89 89 114 76 106 106 170 136 244 52 124 125 125 161 163 163 131 93 187 118 65 79 79 15 70 70 70 242 54 220 107 0 7 23 15 68 198 167 65 69 81 41 168 39 38 198 21 66 164 179 240 240 112 233 144 0 104 83 89 89 41 232 63 3 7 7 7 233 40 47 47 79 58 58 117 234 20 146 147 147 229 111 50 86 94 94 142 59 119 238 32 35 35 67 70 206 116 28 61 122 84 206 199 20 185 184 56 193 218 198 9 135 67 227 161 162 146 19 18 18 100 110 218 218 218 164 51 230 117 110 110 110 19 204 141 27 55 112 242 228 73 20 21 21 225 234 213 171 168 168 168 144 204 144 53 138 174 176 176 16 101 101 101 18 52 3 82 46 206 113 243 230 77 105 207 113 180 169 17 154 138 138 138 132 185 149 61 124 131 98 193 53 64 2 32 98 230 145 66 169 170 170 146 207 14 33 70 86 70 113 113 177 204 35 1 208 25 223 57 25 217 225 77 250 153 14 166 146 224 175 95 191 46 117 192 241 212 9 83 74 27 218 146 201 232 168 227 48 183 182 135 159 2 32 62 62 94 34 165 184 104 76 80 28 76 42 31 63 126 140 230 230 102 81 5 231 100 36 156 64 137 152 142 238 222 189 139 197 197 69 105 199 180 120 121 121 193 218 218 26 134 134 134 82 116 153 153 153 178 92 89 37 183 111 223 6 217 140 141 141 134 133 181 195 118 0 83 83 83 208 104 52 50 234 161 161 33 201 4 7 18 12 35 166 224 8 144 79 2 38 107 19 162 71 176 161 52 54 54 194 209 209 81 58 253 193 203 19 126 63 250 192 213 197 25 102 102 102 8 13 13 197 195 135 15 49 50 50 34 197 27 31 23 11 11 245 7 0 136 140 147 245 246 246 202 198 66 32 20 29 169 165 54 72 63 7 207 206 206 202 60 179 228 122 122 122 64 208 28 27 20 20 4 15 119 119 184 56 57 98 191 218 10 22 22 230 2 140 29 236 108 109 97 107 107 35 43 131 246 131 131 131 72 74 76 128 149 218 113 43 3 140 150 40 89 82 74 77 147 242 209 209 81 217 148 74 74 74 100 42 8 128 17 83 112 4 201 102 20 22 22 134 221 187 119 227 171 47 191 128 133 157 43 118 133 22 226 47 177 45 248 179 77 48 254 161 255 119 248 250 120 195 212 212 84 178 72 192 169 169 41 176 220 239 4 255 247 53 192 104 233 172 171 171 75 182 87 2 33 0 58 34 0 138 138 10 102 4 74 138 24 17 245 224 237 237 13 181 149 37 140 77 76 161 235 18 129 63 248 119 67 245 211 58 254 104 147 9 83 67 125 184 137 178 51 55 55 151 21 67 150 217 73 45 109 92 17 16 34 170 128 147 81 132 138 51 230 123 102 102 70 2 161 8 233 176 169 169 73 182 94 178 68 64 44 93 54 38 166 134 189 192 211 211 19 150 22 102 162 201 24 195 196 249 39 252 201 50 27 159 152 94 193 167 186 254 48 208 211 17 169 249 30 206 206 206 146 69 178 156 158 145 5 181 157 59 2 195 18 126 3 192 18 161 51 78 74 154 8 132 223 72 243 253 251 247 183 1 224 119 150 22 43 129 77 70 87 87 87 182 88 125 209 241 254 250 197 62 124 246 185 49 118 235 26 193 92 136 144 226 100 163 162 253 184 208 212 249 236 92 216 58 30 68 200 177 196 223 0 176 81 112 82 210 205 178 33 16 230 140 162 100 169 177 246 89 70 20 37 53 64 42 217 43 88 150 185 185 185 146 5 181 90 45 114 109 2 227 125 6 48 51 217 11 99 163 189 242 91 116 116 180 100 143 61 98 126 126 14 57 185 121 80 219 123 32 36 34 105 43 0 50 208 218 218 138 177 177 49 9 132 160 152 103 150 24 171 160 190 190 94 234 132 13 103 126 126 94 218 146 37 218 81 229 172 125 246 126 3 3 3 41 74 58 79 76 76 148 255 183 183 183 203 146 94 91 91 21 182 103 160 179 199 12 97 145 201 218 86 28 23 23 39 154 67 172 204 53 115 172 40 159 3 169 5 214 187 34 66 246 7 50 160 52 31 130 160 184 216 112 216 235 253 252 252 100 51 242 19 11 209 47 191 164 200 149 180 191 95 131 103 75 139 98 204 2 250 53 189 240 63 34 82 182 207 14 241 201 233 90 0 105 105 105 114 17 161 176 136 84 105 165 84 56 181 64 0 20 27 29 145 17 142 225 205 157 16 151 104 166 131 192 57 94 163 233 147 154 169 168 40 23 218 248 25 198 223 169 225 232 246 35 188 3 34 112 36 52 14 135 130 34 17 28 158 128 252 146 74 220 107 238 128 234 205 155 55 146 238 156 156 28 41 18 230 156 19 240 55 41 103 237 51 207 76 1 187 31 217 97 35 218 216 120 45 247 125 236 245 188 152 150 26 97 23 37 118 65 78 206 238 48 52 81 227 91 125 115 124 179 199 26 70 150 110 112 62 40 54 40 225 39 144 156 150 141 170 27 13 98 171 182 34 24 17 59 34 14 230 36 225 63 71 34 58 38 94 210 69 45 80 48 236 118 4 160 44 58 124 167 62 152 42 70 79 240 3 3 253 162 66 46 194 79 236 114 244 12 173 240 183 111 77 240 149 142 25 116 141 236 225 233 31 142 180 204 11 200 47 46 71 181 112 218 218 222 5 205 192 8 38 167 166 241 246 237 91 237 185 64 89 58 175 87 213 193 253 128 15 220 220 220 37 27 109 109 173 146 141 150 95 1 176 79 176 57 245 245 245 202 234 56 46 34 181 115 112 133 190 161 133 112 104 130 175 117 45 96 110 239 5 239 195 145 136 77 76 71 86 110 17 170 106 111 163 79 51 136 209 177 9 177 88 77 99 78 8 151 251 64 46 122 155 187 98 5 0 81 93 40 40 197 65 239 35 216 111 239 134 239 221 15 200 205 7 211 192 38 68 129 121 120 120 192 200 216 4 186 6 38 248 82 231 59 225 212 18 123 205 156 225 224 113 24 225 81 167 80 80 82 129 186 250 70 180 119 246 96 96 104 84 70 186 32 86 74 174 45 155 7 159 231 218 195 207 182 109 57 141 102 103 231 132 136 134 80 223 208 136 226 203 101 200 189 80 40 162 57 13 191 192 8 28 244 13 129 151 111 144 80 112 56 162 226 133 179 34 177 15 184 211 140 86 177 177 124 208 55 132 177 135 227 98 19 35 34 20 27 219 45 14 255 197 105 107 27 128 149 149 229 205 67 4 247 242 18 204 192 48 170 107 27 80 84 90 129 210 178 106 212 8 74 155 90 58 228 247 233 153 89 33 164 165 205 51 1 243 169 189 223 59 132 252 155 163 222 54 0 84 49 85 253 254 45 15 31 162 230 181 19 107 75 143 61 224 247 108 63 28 251 159 222 127 135 1 109 110 62 60 70 209 249 234 175 183 18 229 135 54 202 251 255 114 184 85 78 70 255 4 60 254 164 179 144 113 158 241 0 0 0 0 73 69 78 68 174 66 96 130]! !
!UMLExecutionSnapshot class categoriesFor: #icon!constants!public! !

