"Filed out from Dolphin Smalltalk 7"!

UMLExecutionSnapshot subclass: #UMLScriptExecutionSnapshot
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLScriptExecutionSnapshot guid: (GUID fromString: '{a7f276ca-6419-4fb2-b56e-2a0ae789633f}')!
UMLScriptExecutionSnapshot comment: ''!
!UMLScriptExecutionSnapshot categoriesForClass!Unclassified! !
!UMLScriptExecutionSnapshot methodsFor!

activateSnaphotWith: aStMessageNode "anUMLSequenceNode"

	sequence := aStMessageNode.

	aStMessageNode temporaryVariables do: [:each | sequenceTemporaries at: each put: virtualMachine nilObject].

	"self getUndefinedTemporaries do: [:each | sequenceTemporaries at: each put: virtualMachine nilObject]."!

activateSnaphotWith: anUMLSequenceNode virtualMachine: anUMLVirtualMachine

	sequenceTemporaries := LookupTable new.
	virtualMachine := anUMLVirtualMachine.
	sequence := anUMLSequenceNode.

	anUMLSequenceNode temporaryVariables do: [:each | sequenceTemporaries at: each put: virtualMachine nilObject].

	"self getUndefinedTemporaries do: [:each | sequenceTemporaries at: each put: virtualMachine nilObject]."!

asDebuggerSnapshot

	^UMLScriptDebugerSnapshot snapshot: self sequence: sequence!

getObjectNamed: aSymbol
	"Answer anObject for the name <aString>.1- receiver's variables 2- implementation arguments 3- implementation temporaries 4- globals"

	aSymbol ifNil: [^self nilObject].
	aSymbol isUMLInstance ifTrue: [^aSymbol].
	(aSymbol isKindOf: Number) ifTrue: [^aSymbol asUMLObject: virtualMachine].

	^temporaries at: aSymbol ifAbsent: [
		sequenceTemporaries at: aSymbol ifAbsent: [
					self defaultVirtualMachine getAnyClassNamed: aSymbol ifAbsent: [self getBasicObjectNamed: aSymbol]] ]!

getUndefinedTemporaries

	^sequence nodes select: [:each | each isAssignment] thenCollect: [:each | each variableName]!

includesSelfObject

	^temporaries includesKey: 'self'!

initialize

	super initialize.

	name := 'Script'.!

isScript

	^true!

name
	^name!

name: anObject
	name := anObject!

printName

		^name!

printReceiverClass

	^'none'!

printSequenceClassName
	^'script'!

processAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray
	"The receiver process the assigment <anUMLAssigmentNode> with arguments <anArray> in the context of a Script.
	<anUMLInstance> is the receiver of the message send of <anUMLAssigmentNode>, <sequenceReceiver> is the receiver of the assigment"
	| receiverObject |

	aStAssignmentNode hasUMLBlock ifTrue: [^self processBlockAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray].
	receiverObject := self getObjectFromProgramNode: aStAssignmentNode. "we obtain the receiver of the messageSend of <anUMLAssigmentNode>"
	"we evaluate the message send of the assigment to obtain the result"
	lastResult := aStAssignmentNode hasSelector "to check if the message is a simple assignment (var := 25, var := 'hello world' - etc)"
			ifTrue: [ "| arguments |
				arguments := aStAssignmentNode value argumentsName asArray."
				self processMessageNode: aStAssignmentNode value context: anUMLInstance parameters: #().
				"receiverObject vmPerform: aStAssignmentNode value selector withArguments: (arguments collect: [:each | self getObjectNamed: each]) parentSnapshot: self."] 
			"we perform the message send"
			ifFalse: [aStAssignmentNode value isCascade
				ifFalse: [self processSimpleAssingment: aStAssignmentNode messageReceiver: receiverObject arguments: anArray] "we process the simple message send" 	     
				ifTrue: [self processCascadeAssignmentNode: aStAssignmentNode context: receiverObject parameteres: anArray]].
				
	self assignObject: lastResult toTemporary: aStAssignmentNode variableName. "we store the result in the temporaries of the receiver "
	^lastResult!

processBlockAssignment: aStAssignmentNode messageReceiver: anUMLInstance arguments: anArray 
	"The receiver process the assigment <anUMLAssigmentNode> (the assignment is aBlock) with arguments <anArray> in the context of <anUMLInstance>. 
	If <anUMLInstance> has a varible named <variableName> then store the result on <anUMLInstance>, if NOT store the result in the temporary stack of the receiver"
	| umlBlock |

	umlBlock := self createBlockFrom: aStAssignmentNode value. "we create the instance og UML class <Block>"

	self assignObject: umlBlock toTemporary: aStAssignmentNode variableName. "we store the Block in the temporaries of the receiver "

	^lastResult := umlBlock!

processSimpleAssingment: anUMLAssigmentNode messageReceiver: anUMLInstance arguments: arguments 

	^lastResult := sequenceTemporaries at: anUMLAssigmentNode variableName put: anUMLInstance!

receiverObject
	" Answer the receiver UMLObject of the message receiver "

	self includesSelfObject ifFalse: [^virtualMachine nilObject]. "the usual evaluation is this, in case of Inspectors exit with the next sentence"

	^temporaries at: 'self' "used for Inspector where the -self object- is forced into temporaries"!

selector

	^nil!

sequenceArguments
	^LookupTable new! !
!UMLScriptExecutionSnapshot categoriesFor: #activateSnaphotWith:!public!smalltalk parser! !
!UMLScriptExecutionSnapshot categoriesFor: #activateSnaphotWith:virtualMachine:!public!smalltalk parser! !
!UMLScriptExecutionSnapshot categoriesFor: #asDebuggerSnapshot!debug process!public! !
!UMLScriptExecutionSnapshot categoriesFor: #getObjectNamed:!processesing!public! !
!UMLScriptExecutionSnapshot categoriesFor: #getUndefinedTemporaries!public! !
!UMLScriptExecutionSnapshot categoriesFor: #includesSelfObject!public! !
!UMLScriptExecutionSnapshot categoriesFor: #initialize!public! !
!UMLScriptExecutionSnapshot categoriesFor: #isScript!public! !
!UMLScriptExecutionSnapshot categoriesFor: #name!accessing!private! !
!UMLScriptExecutionSnapshot categoriesFor: #name:!accessing!private! !
!UMLScriptExecutionSnapshot categoriesFor: #printName!public! !
!UMLScriptExecutionSnapshot categoriesFor: #printReceiverClass!public! !
!UMLScriptExecutionSnapshot categoriesFor: #printSequenceClassName!public! !
!UMLScriptExecutionSnapshot categoriesFor: #processAssignment:messageReceiver:arguments:!processesing!public! !
!UMLScriptExecutionSnapshot categoriesFor: #processBlockAssignment:messageReceiver:arguments:!processesing!public! !
!UMLScriptExecutionSnapshot categoriesFor: #processSimpleAssingment:messageReceiver:arguments:!processesing!public! !
!UMLScriptExecutionSnapshot categoriesFor: #receiverObject!private!processesing! !
!UMLScriptExecutionSnapshot categoriesFor: #selector!public! !
!UMLScriptExecutionSnapshot categoriesFor: #sequenceArguments!public! !

!UMLScriptExecutionSnapshot class methodsFor!

activateSnaphotWith: anUMLSequenceNode virtualMachine: anUMLVirtualMachine

	^super new initialize activateSnaphotWith: anUMLSequenceNode virtualMachine: anUMLVirtualMachine!

virtualMachine: anUMLVirtualMachine

	^super new initialize virtualMachine: anUMLVirtualMachine! !
!UMLScriptExecutionSnapshot class categoriesFor: #activateSnaphotWith:virtualMachine:!public! !
!UMLScriptExecutionSnapshot class categoriesFor: #virtualMachine:!public! !

