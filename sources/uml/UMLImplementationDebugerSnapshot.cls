"Filed out from Dolphin Smalltalk 7"!

UMLDebugerSnapshot subclass: #UMLImplementationDebugerSnapshot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLImplementationDebugerSnapshot guid: (GUID fromString: '{bd01c1e8-c989-4dc4-a3ca-ca80c52c4102}')!
UMLImplementationDebugerSnapshot comment: ''!
!UMLImplementationDebugerSnapshot categoriesForClass!Unclassified! !
!UMLImplementationDebugerSnapshot methodsFor!

allNodes

	^self implementation allNodes!

createBlockDebugIterationForMessage: aStProgramNode

	^executionProgress createBlockDebugIterationForImplementationIterationMessage: aStProgramNode!

executeNode: aStProgramNode
	| result |

	result := aStProgramNode processInsideSnapshot: mainSnapshot "here we process <aStProgramNode> inside the main snapshot of the receiver"
				context: mainSnapshot sequenceReceiver 
				parameters: mainSnapshot sequenceArguments asArray.

	^self annotateResultAsLast: result!

getRemainingNodes

	^executionProgress getRemainingNodes!

implementation
	^mainSnapshot sequence!

isPrimitiveImplementation
	^self implementation parsedCode tag notNil!

nodes

	^mainSnapshot nodes!

printSnapshotName

	^self implementation className, '.', self implementation name!

sequenceArguments
	^mainSnapshot sequenceArguments !

sequenceReceiver
	^mainSnapshot sequenceReceiver!

sequenceSource

	^self implementation printMessage! !
!UMLImplementationDebugerSnapshot categoriesFor: #allNodes!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #createBlockDebugIterationForMessage:!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #executeNode:!debug process!public!snapshot debug! !
!UMLImplementationDebugerSnapshot categoriesFor: #getRemainingNodes!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #implementation!accessing!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #isPrimitiveImplementation!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #nodes!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #printSnapshotName!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #sequenceArguments!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #sequenceReceiver!public! !
!UMLImplementationDebugerSnapshot categoriesFor: #sequenceSource!public! !

!UMLImplementationDebugerSnapshot class methodsFor!

snapshot: anUMLExecutionSnapshot

	^super new initialize
		mainSnapshot: anUMLExecutionSnapshot;
		"nodesToExecute: (OrderedCollection withAll: anUMLExecutionSnapshot nodes);
		currentMainNode: anUMLExecutionSnapshot nodes first;"
		setCurrentExecutionProgress;
		yourself.! !
!UMLImplementationDebugerSnapshot class categoriesFor: #snapshot:!public! !

