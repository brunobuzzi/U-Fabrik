"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLDebugSpecialIteration
	instanceVariableNames: 'debugSnapshot iteratorNode executionProgress block parentIterator parentIterationNode'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDebugSpecialIteration guid: (GUID fromString: '{6fc2ac54-0f02-45d4-a878-0ac8e4333851}')!
UMLDebugSpecialIteration comment: ''!
!UMLDebugSpecialIteration categoriesForClass!Unclassified! !
!UMLDebugSpecialIteration methodsFor!

block
	^block!

block: anObject
	block := anObject!

createExecutionProgress

	executionProgress := UMLDebugExecutionProgress onIterationBlock: self.!

currentIterationIsOver
	^executionProgress isAtEnd!

debugSnapshot
	^debugSnapshot!

debugSnapshot: anObject
	debugSnapshot := anObject!

executionProgress
	^executionProgress!

executionProgress: anObject
	executionProgress := anObject!

finalizeAndConnectToParentIterator

	parentIterationNode ifNil: [^self].

	debugSnapshot currentIterationNode: parentIterationNode.!

finalizeIteration
	"The receiver finalize it's iteration process and set its parent as the current iteration node"

	debugSnapshot removeCurrentIterationNode. "iterationNodes removeKey: currentIterationNode."

	debugSnapshot currentIterationNode: parentIterationNode.

"here we synchronize the execution of the last iteration with the main ExecutionSnapshot because there is NOT a another itetarion"
	parentIterationNode ifNil: [^debugSnapshot synchronizeExecutionWithChildNode: iteratorNode]. 

"here we synchronize the execution of the last iteration with it''s iteration parent because we still are in a nested iteration"
	parentIterator synchronizeExecutionWithChildNode: iteratorNode.!

getNextNode

	^self getNextNodeIn: executionProgress currentMainNode!

getNextNodeIn: aStProgramNode
	"The receiver answer the next node (aStProgramNode) to execute "

	^debugSnapshot getNextNodeIn: aStProgramNode using: executionProgress!

hasParentIteration

	^parentIterationNode notNil!

isAtEnd

	^self subclassResponsibility!

isIfTrueIfFalseDebug

	^false!

isIteratorDebug

	^false!

iteratorNode
	^iteratorNode!

iteratorNode: anObject
	iteratorNode := anObject!

nextNode

	^debugSnapshot nextNode!

nodes

	^self smalltalkBlock nodes!

nodesToExecute
	^executionProgress nodesToExecute!

parentIterationNode
	^parentIterationNode!

parentIterationNode: anObject
	parentIterationNode := anObject!

parentIterator
	^parentIterator!

parentIterator: anObject

	parentIterator := anObject!

restartExecution

	self subclassResponsibility!

smalltalkBlock

	^block smalltalkObject!

synchronizeExecutionWithChildNode: aStProgramNode

	executionProgress removeNodeFromStackToExectute: aStProgramNode. "nodesToExecute remove: aStProgramNode"
	executionProgress markNodeAsExecuted: aStProgramNode. "executedNodes add: aStProgramNode"
	self getNextNode.
! !
!UMLDebugSpecialIteration categoriesFor: #block!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #block:!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #createExecutionProgress!public! !
!UMLDebugSpecialIteration categoriesFor: #currentIterationIsOver!public! !
!UMLDebugSpecialIteration categoriesFor: #debugSnapshot!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #debugSnapshot:!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #executionProgress!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #executionProgress:!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #finalizeAndConnectToParentIterator!public! !
!UMLDebugSpecialIteration categoriesFor: #finalizeIteration!public! !
!UMLDebugSpecialIteration categoriesFor: #getNextNode!public! !
!UMLDebugSpecialIteration categoriesFor: #getNextNodeIn:!public! !
!UMLDebugSpecialIteration categoriesFor: #hasParentIteration!public! !
!UMLDebugSpecialIteration categoriesFor: #isAtEnd!public! !
!UMLDebugSpecialIteration categoriesFor: #isIfTrueIfFalseDebug!public! !
!UMLDebugSpecialIteration categoriesFor: #isIteratorDebug!public! !
!UMLDebugSpecialIteration categoriesFor: #iteratorNode!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #iteratorNode:!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #nextNode!public! !
!UMLDebugSpecialIteration categoriesFor: #nodes!public! !
!UMLDebugSpecialIteration categoriesFor: #nodesToExecute!public! !
!UMLDebugSpecialIteration categoriesFor: #parentIterationNode!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #parentIterationNode:!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #parentIterator!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #parentIterator:!accessing!private! !
!UMLDebugSpecialIteration categoriesFor: #restartExecution!public! !
!UMLDebugSpecialIteration categoriesFor: #smalltalkBlock!public! !
!UMLDebugSpecialIteration categoriesFor: #synchronizeExecutionWithChildNode:!public! !

