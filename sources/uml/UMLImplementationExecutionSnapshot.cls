"Filed out from Dolphin Smalltalk 7"!

UMLExecutionSnapshot subclass: #UMLImplementationExecutionSnapshot
	instanceVariableNames: 'sequenceReceiver receiverInstanceVariables sequenceArguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLImplementationExecutionSnapshot guid: (GUID fromString: '{157f2f69-b497-4d60-84c1-1af41145bf67}')!
UMLImplementationExecutionSnapshot comment: ''!
!UMLImplementationExecutionSnapshot categoriesForClass!Unclassified! !
!UMLImplementationExecutionSnapshot methodsFor!

activateSnapshotWith: anUMLImplementation receiver: anUMLObject arguments: arguments virtualMachine: anUMLVirtualMachine

	sequenceTemporaries := LookupTable new.
	virtualMachine := anUMLVirtualMachine.
	sequence := anUMLImplementation.

	self sequenceReceiver: anUMLObject.

	anUMLImplementation isVirtualMachineImplementation 
	ifFalse: [anUMLImplementation arguments keysAndValuesDo: [:eachKey :eachValue | 
		sequenceArguments at: eachValue name put: (arguments at: eachKey)]]
	ifTrue: [sequenceArguments := arguments].

	anUMLImplementation temporaries do: [:each | sequenceTemporaries at: each put: nil].!

addObject: anUMLObject named: name

	((receiverInstanceVariables includesKey: name) or: [receiverInstanceVariables includesKey: name asSymbol]) 
	ifTrue: [^self assignObject: anUMLObject toInstanceVariable: name].

	^self assignObject: anUMLObject toTemporary: name.!

asDebuggerSnapshot

	^UMLImplementationDebugerSnapshot snapshot: self!

assignObject: anUMLObject toInstanceVariable: aSymbol

	^sequenceReceiver atVariableName: aSymbol put: anUMLObject snapshot: self!

getArgumentOrTemporaryNamed: aName

	^temporaries at: aName ifAbsent: [
			sequenceArguments at: aName ifAbsent: [
				sequenceTemporaries at: aName ifAbsent: [
					 virtualMachine nilObject
				] 
			]
	]!

getObjectNamed: aName
	"Answer anObject for the name <aString>.1- receiver's variables 2- implementation arguments 3- implementation temporaries 4- globals"

	aName ifNil: [^virtualMachine nilObject].
	aName isUMLInstance ifTrue: [^aName].

	((aName = 'self') or:[aName = 'super']) ifTrue: [^self receiverObject].
	aName first isUppercase ifTrue: [(virtualMachine getAnyClassNamed: aName) ifNotNil: [:systemClass | ^systemClass] ].
	^temporaries at: aName ifAbsent: [
		receiverInstanceVariables at: aName asSymbol ifAbsent: [
			sequenceArguments at: aName ifAbsent: [
				sequenceTemporaries at: aName ifAbsent: [
					self defaultVirtualMachine getAnyClassNamed: aName ifAbsent: [self getBasicObjectNamed: aName]] ] ] ]!

hasReceiver

	^true!

initialize

	super initialize.

	sequenceArguments := LookupTable new.!

printName

	^sequence className, '.', sequence name!

printOn: aStream

	"super printOn: aStream."

	aStream
		nextPutAll: 'anExecutionSnapshot';
		nextPut: $<;
		nextPutAll: self printName;
		nextPut: $>.!

printReceiverClass

	^sequenceReceiver className!

printSequenceClassName

	^sequence className!

processAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray
	"The receiver process the assigment <anUMLAssigmentNode> with arguments <anArray> in the context of <anUMLInstance>.
	<anUMLInstance> is the receiver of the message send of <anUMLAssigmentNode>, <sequenceReceiver> is the receiver of the assigment"

	aStAssignmentNode hasUMLBlock ifTrue: [^self processBlockAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray].
	"we evaluate the message send of the assigment to obtain the result"
	lastResult := aStAssignmentNode hasSelector "to check if the message is a simple assignment (var := 25, var := 'hello world' - etc)"
			ifTrue: [ "| arguments |
				arguments := aStAssignmentNode value arguments."
				self processMessageNode: aStAssignmentNode value context: anUMLInstance parameters: #().
				"self processMessageSend: aStAssignmentNode value messageReceiver: anUMLInstance arguments: arguments."] "we process the message send of the assigment"
			ifFalse: [aStAssignmentNode value isCascade
				ifFalse: [self processSimpleAssingment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray"we process the simple message send" ] 
				ifTrue: [self processCascadeAssignmentNode: aStAssignmentNode context: anUMLInstance parameteres: anArray]]. 

	hasInfiniteLoop ifTrue: [^sequenceReceiver]. "the right side of the assignment provoked an infinite loop --> return to avoid further execution see issue #97"

	(sequenceReceiver hasVariableNamed: aStAssignmentNode variableName)  
	ifTrue: [^sequenceReceiver atVariableName: aStAssignmentNode variableName put: lastResult snapshot: self] "we store the result of the message send in <sequenceReceiver>"
	ifFalse: [self assignObject: lastResult toTemporary: aStAssignmentNode variableName.]. "we store the result in the temporaries of the receiver "

	^lastResult!

processBlockAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray 
	"The receiver process the assigment <anUMLAssigmentNode> (the assignment is aBlock) with arguments <anArray> in the context of <anUMLInstance>. 
	If <anUMLInstance> has a varible named <variableName> then store the result on <anUMLInstance>, if NOT store the result in the temporary stack of the receiver"
	| umlBlock |

	umlBlock := self createBlockFromAssignment: aStAssignmentNode. "we create the instance of UML class <Block>"
	(sequenceReceiver hasVariableNamed: aStAssignmentNode variableName)  
	ifTrue: [sequenceReceiver atVariableName: aStAssignmentNode variableName put: umlBlock snapshot: self] "we store the Block in the instance variable of <anUMLInstance>" 
	ifFalse: [self assignObject: umlBlock toTemporary: aStAssignmentNode variableName.]. "we store the Block in the temporaries of the receiver "
	sequenceArguments keysAndValuesDo: [:eachKey :eachValue | temporaries at: eachKey put: eachValue]. "we store message arguments in the receiver "
	^lastResult := umlBlock!

processSimpleAssingment: aStAssignmentNode messageReceiver: anUMLInstance arguments: arguments 

	^lastResult := aStAssignmentNode value isVariable "is a simple assignment (without message) of a variable ?"
				ifTrue: [(anUMLInstance hasVariableNamed: aStAssignmentNode value name asSymbol) "the variable is an instVar of <anUMLInstance>"
					ifTrue: [anUMLInstance atVariableName: aStAssignmentNode value name asSymbol] "we get the valur of the instVar of <anUMLInstance> "
					ifFalse: [self getObjectFromProgramNode: aStAssignmentNode].] "if is a temporary variable we get it"
				ifFalse: [aStAssignmentNode value asUMLObject: virtualMachine] "if is a simple object we convert it"
!

receiverInstanceVariables
	^receiverInstanceVariables!

receiverInstanceVariables: anObject
	receiverInstanceVariables := anObject!

receiverObject

	^sequenceReceiver!

selector

	^self parsedCode selector!

sequenceArguments
	^sequenceArguments!

sequenceArguments: anObject
	sequenceArguments := anObject!

sequenceReceiver
	^sequenceReceiver!

sequenceReceiver: anUMLObject

	sequenceReceiver := anUMLObject.
	receiverInstanceVariables := anUMLObject instancesVariables.! !
!UMLImplementationExecutionSnapshot categoriesFor: #activateSnapshotWith:receiver:arguments:virtualMachine:!public!smalltalk parser! !
!UMLImplementationExecutionSnapshot categoriesFor: #addObject:named:!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #asDebuggerSnapshot!debug process!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #assignObject:toInstanceVariable:!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #getArgumentOrTemporaryNamed:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #getObjectNamed:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #hasReceiver!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #initialize!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #printName!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #printOn:!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #printReceiverClass!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #printSequenceClassName!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #processAssignment:messageReceiver:arguments:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #processBlockAssignment:messageReceiver:arguments:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #processSimpleAssingment:messageReceiver:arguments:!processesing!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #receiverInstanceVariables!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #receiverInstanceVariables:!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #receiverObject!private!processesing! !
!UMLImplementationExecutionSnapshot categoriesFor: #selector!public! !
!UMLImplementationExecutionSnapshot categoriesFor: #sequenceArguments!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #sequenceArguments:!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #sequenceReceiver!accessing!private! !
!UMLImplementationExecutionSnapshot categoriesFor: #sequenceReceiver:!accessing!public! !

!UMLImplementationExecutionSnapshot class methodsFor!

activateSnapshotWith: anUMLImplementation receiver: anUMLObject arguments: arguments virtualMachine: anUMLVirtualMachine

	^super new initialize activateSnapshotWith: anUMLImplementation receiver: anUMLObject arguments: arguments virtualMachine: anUMLVirtualMachine! !
!UMLImplementationExecutionSnapshot class categoriesFor: #activateSnapshotWith:receiver:arguments:virtualMachine:!public! !

