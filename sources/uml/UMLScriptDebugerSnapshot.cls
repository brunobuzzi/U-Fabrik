"Filed out from Dolphin Smalltalk 7"!

UMLDebugerSnapshot subclass: #UMLScriptDebugerSnapshot
	instanceVariableNames: 'sequence'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLScriptDebugerSnapshot guid: (GUID fromString: '{6d0d8807-8429-4e8a-82e1-7eac01607ac8}')!
UMLScriptDebugerSnapshot comment: ''!
!UMLScriptDebugerSnapshot categoriesForClass!Unclassified! !
!UMLScriptDebugerSnapshot methodsFor!

allNodes

	^sequence allNodes!

createBlockDebugIterationForMessage: aStProgramNode

	^executionProgress createBlockDebugIterationForWorkspeceIterationMessage: aStProgramNode!

executeNode: aStProgramNode
	| receiverNode result |

	receiverNode := aStProgramNode isAssignment ifTrue: [aStProgramNode value] ifFalse: [aStProgramNode].

	result := aStProgramNode processInsideSnapshot: mainSnapshot "here we process <aStProgramNode> inside the main snapshot of the receiver"
				context: (mainSnapshot getReceiverObjectFrom: receiverNode)
				parameters: (mainSnapshot getArgumentsFrom: receiverNode).

	^self annotateResultAsLast: result!

isPrimitiveImplementation
	^false!

isScriptSnapshot

	^true!

nodes

	^sequence nodes!

printSnapshotName

	^'UML Script'!

sequence
	^sequence!

sequence: anObject
	sequence := anObject!

sequenceArguments

	^LookupTable new!

sequenceSource

	^sequence printMessage! !
!UMLScriptDebugerSnapshot categoriesFor: #allNodes!public! !
!UMLScriptDebugerSnapshot categoriesFor: #createBlockDebugIterationForMessage:!public! !
!UMLScriptDebugerSnapshot categoriesFor: #executeNode:!debug process!public!snapshot debug! !
!UMLScriptDebugerSnapshot categoriesFor: #isPrimitiveImplementation!public! !
!UMLScriptDebugerSnapshot categoriesFor: #isScriptSnapshot!public! !
!UMLScriptDebugerSnapshot categoriesFor: #nodes!public! !
!UMLScriptDebugerSnapshot categoriesFor: #printSnapshotName!public! !
!UMLScriptDebugerSnapshot categoriesFor: #sequence!accessing!private! !
!UMLScriptDebugerSnapshot categoriesFor: #sequence:!accessing!private! !
!UMLScriptDebugerSnapshot categoriesFor: #sequenceArguments!public! !
!UMLScriptDebugerSnapshot categoriesFor: #sequenceSource!public! !

!UMLScriptDebugerSnapshot class methodsFor!

snapshot: anUMLExecutionSnapshot sequence: aStSequenceNode

	^super new initialize
		mainSnapshot: anUMLExecutionSnapshot;
		sequence: aStSequenceNode;
		"nodesToExecute: (OrderedCollection withAll: aStSequenceNode nodes);
		currentMainNode: aStSequenceNode nodes first;"
		setCurrentExecutionProgress;
		yourself.! !
!UMLScriptDebugerSnapshot class categoriesFor: #snapshot:sequence:!public! !

