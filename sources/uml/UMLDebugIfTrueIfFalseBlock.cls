"Filed out from Dolphin Smalltalk 7"!

UMLDebugSpecialIteration subclass: #UMLDebugIfTrueIfFalseBlock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDebugIfTrueIfFalseBlock guid: (GUID fromString: '{63886348-c952-4f19-93bc-5f6a334e6984}')!
UMLDebugIfTrueIfFalseBlock comment: ''!
!UMLDebugIfTrueIfFalseBlock categoriesForClass!Unclassified! !
!UMLDebugIfTrueIfFalseBlock methodsFor!

isAtEnd

	^executionProgress isAtEnd!

isIfTrueIfFalseDebug

	^true!

restartExecution

	debugSnapshot removeCurrentIterationNode. "iterationNodes removeKey: currentIterationNode."

	self finalizeAndConnectToParentIterator. "if we have nested iterations then we restore the previous <currentIterationNode> "

	parentIterator 
	ifNotNil: [:value | value executionProgress registerStepOver: iteratorNode withResult: value executionProgress lastAnnotatedResult "lastResult".
			parentIterator executionProgress currentMainNode "if <currentMainNode> is nil then we are at the end of the <parent iterator> "
			ifNil: [parentIterator executionProgress currentMainNode: parentIterator nodes first].] 
	ifNil: [debugSnapshot executionProgress registerStepOver: iteratorNode withResult: executionProgress lastAnnotatedResult "lastResult".].

	debugSnapshot getNextNode.! !
!UMLDebugIfTrueIfFalseBlock categoriesFor: #isAtEnd!public! !
!UMLDebugIfTrueIfFalseBlock categoriesFor: #isIfTrueIfFalseDebug!public! !
!UMLDebugIfTrueIfFalseBlock categoriesFor: #restartExecution!public! !

!UMLDebugIfTrueIfFalseBlock class methodsFor!

iteratorNode: aStProgramNode block: anUMLBlockClosureNode debugSnapshot: anUMLDebugerSnapshot

	^super new initialize
		iteratorNode: aStProgramNode;
		block: anUMLBlockClosureNode;
		debugSnapshot: anUMLDebugerSnapshot;
		createExecutionProgress;
		yourself.! !
!UMLDebugIfTrueIfFalseBlock class categoriesFor: #iteratorNode:block:debugSnapshot:!public! !

