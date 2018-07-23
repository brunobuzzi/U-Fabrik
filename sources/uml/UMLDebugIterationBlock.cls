"Filed out from Dolphin Smalltalk 7"!

UMLDebugSpecialIteration subclass: #UMLDebugIterationBlock
	instanceVariableNames: 'collection collectionIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDebugIterationBlock guid: (GUID fromString: '{8b3e6a5e-d796-42d8-ae95-45d6d2d61c00}')!
UMLDebugIterationBlock comment: ''!
!UMLDebugIterationBlock categoriesForClass!Unclassified! !
!UMLDebugIterationBlock methodsFor!

collection
	^collection!

collection: anObject
	collection := anObject!

collectionIndex
	^collectionIndex!

collectionIndex: anObject
	collectionIndex := anObject!

forceFinalization

	[self isAtEnd] whileFalse: [ | remainingNodes |
		remainingNodes := OrderedCollection withAll: executionProgress nodesToExecute.
		remainingNodes do: [:each | debugSnapshot stepOver: each.]. "we step over remaining nodes"
		].!

getCurrentObject

	^self smalltalkCollection at: collectionIndex!

getNextNode

	^self getNextNodeIn: executionProgress currentMainNode!

initialize

	super initialize.

	collectionIndex := 1.!

isAtEnd
	"Answer whether the reciver (the iteration) has finished its execution.
	If the <smalltalkCollection> is empty then is at end (we do not step into empty collections).
	If <collectionIndex> is zero (0) then the iteration has not been started."

	^self smalltalkCollection isEmpty  or: [collectionIndex > self smalltalkCollection size]!

isIteratorDebug

	^true!

printOn: aStream

	super printOn: aStream.

	aStream	
		nextPutAll: ('{', block smalltalkObject sequenceNode formattedCode, '}')!

restartExecution

	collectionIndex := collectionIndex + 1.

	executionProgress restartExecutionFor: self.

	self isAtEnd 
	ifTrue: [self finalizeIteration]
	ifFalse: [debugSnapshot addTemporary: self getCurrentObject named: self smalltalkBlock arguments last.].!

smalltalkCollection

	^collection smalltalkObject! !
!UMLDebugIterationBlock categoriesFor: #collection!accessing!private! !
!UMLDebugIterationBlock categoriesFor: #collection:!accessing!private! !
!UMLDebugIterationBlock categoriesFor: #collectionIndex!accessing!private! !
!UMLDebugIterationBlock categoriesFor: #collectionIndex:!accessing!private! !
!UMLDebugIterationBlock categoriesFor: #forceFinalization!public! !
!UMLDebugIterationBlock categoriesFor: #getCurrentObject!public! !
!UMLDebugIterationBlock categoriesFor: #getNextNode!public! !
!UMLDebugIterationBlock categoriesFor: #initialize!public! !
!UMLDebugIterationBlock categoriesFor: #isAtEnd!public! !
!UMLDebugIterationBlock categoriesFor: #isIteratorDebug!public! !
!UMLDebugIterationBlock categoriesFor: #printOn:!public! !
!UMLDebugIterationBlock categoriesFor: #restartExecution!public! !
!UMLDebugIterationBlock categoriesFor: #smalltalkCollection!public! !

!UMLDebugIterationBlock class methodsFor!

iteratorNode: aStProgramNode collection: anUMLCollection block: anUMLBlockClosureNode debugSnapshot: anUMLDebugerSnapshot

	^super new initialize
		collection: anUMLCollection;
		iteratorNode: aStProgramNode;
		block: anUMLBlockClosureNode;
		debugSnapshot: anUMLDebugerSnapshot;
		createExecutionProgress;
		yourself.! !
!UMLDebugIterationBlock class categoriesFor: #iteratorNode:collection:block:debugSnapshot:!public! !

