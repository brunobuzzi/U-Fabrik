"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLExecutionStack
	instanceVariableNames: 'virtualMachine creatorSnapshot currentSnapshots executedSnapshots dnuSnapshot infiniteLoopSnapshot exceptionSnapshot onErrorDoSnapshot'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLExecutionStack guid: (GUID fromString: '{7c538b83-8914-4b1e-a6bb-c6474b98636d}')!
UMLExecutionStack comment: ''!
!UMLExecutionStack categoriesForClass!Unclassified! !
!UMLExecutionStack methodsFor!

creatorSnapshot
	^creatorSnapshot!

creatorSnapshot: anUMLExecutionSnapshot

	creatorSnapshot := anUMLExecutionSnapshot.

	anUMLExecutionSnapshot parentStack: self.!

currentSnapshots
	^currentSnapshots!

currentSnapshots: anObject
	currentSnapshots := anObject!

dnuSnapshot
	^dnuSnapshot!

dnuSnapshot: anUMLExecutionSnapshot

	dnuSnapshot := anUMLExecutionSnapshot!

exceptionSnapshot
	^exceptionSnapshot!

exceptionSnapshot: anUMLExecutionSnapshot

	exceptionSnapshot := anUMLExecutionSnapshot!

executedSnapshots
	^executedSnapshots!

executedSnapshots: anObject
	executedSnapshots := anObject!

hasDNU
	"The receiver answer whether or not there is -Does Not Understand- event in the execution"

	^dnuSnapshot notNil!

hasException

	^exceptionSnapshot notNil!

hasInfiniteLoop
	"The receiver answer whether or not there is an infinite loop in the execution"

	^infiniteLoopSnapshot notNil!

hasOnErrorDo

	^onErrorDoSnapshot notNil!

hasSequenceTemporaryNamed: seqVarName withStValue: stObject
	"The receiver answer whether or not has a sequence temporary variable named <seqVarName> and is equal to <stObject>.
	The comparision is made at Smalltalk level"

	^executedSnapshots anySatisfy: [:snapshot | 
		(snapshot sequenceTemporaries includesKey: seqVarName) and: [(snapshot sequenceTemporaries at: seqVarName) smalltalkObject = stObject]
	].!

infiniteLoopSnapshot
	^infiniteLoopSnapshot!

infiniteLoopSnapshot: anUMLExecutionSnapshot

	infiniteLoopSnapshot := anUMLExecutionSnapshot!

initialize

	super initialize.

	currentSnapshots := OrderedCollection new.
	executedSnapshots := OrderedCollection new.!

onErrorDoSnapshot
	^onErrorDoSnapshot!

onErrorDoSnapshot: anUMLExecutionSnapshot

	onErrorDoSnapshot := anUMLExecutionSnapshot!

registerCurrentStackItem: anUMLExecutionSnapshot
	"The receiver register <anUMLExecutionSnapshot> to the current stack"

	currentSnapshots add: anUMLExecutionSnapshot.

	anUMLExecutionSnapshot parentStack: self.

	^anUMLExecutionSnapshot!

registerExecutedStackItem: anUMLExecutionSnapshot
	"The receiver register <anUMLExecutionSnapshot> to the current stack"

	currentSnapshots remove: anUMLExecutionSnapshot ifAbsent: [UMLSnapshotNotFoundError signal: 'UML Snapshot Execution not found'].

	executedSnapshots add: anUMLExecutionSnapshot.

	^anUMLExecutionSnapshot!

resetCreatorSnapshot

	creatorSnapshot := nil!

virtualMachine
	^virtualMachine!

virtualMachine: anObject
	virtualMachine := anObject! !
!UMLExecutionStack categoriesFor: #creatorSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #creatorSnapshot:!accessing!public!snapshot handler! !
!UMLExecutionStack categoriesFor: #currentSnapshots!accessing!private! !
!UMLExecutionStack categoriesFor: #currentSnapshots:!accessing!private! !
!UMLExecutionStack categoriesFor: #dnuSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #dnuSnapshot:!accessing!public!snapshot handler! !
!UMLExecutionStack categoriesFor: #exceptionSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #exceptionSnapshot:!accessing!public!snapshot handler! !
!UMLExecutionStack categoriesFor: #executedSnapshots!accessing!private! !
!UMLExecutionStack categoriesFor: #executedSnapshots:!accessing!private! !
!UMLExecutionStack categoriesFor: #hasDNU!public!testing! !
!UMLExecutionStack categoriesFor: #hasException!public!testing! !
!UMLExecutionStack categoriesFor: #hasInfiniteLoop!public!testing! !
!UMLExecutionStack categoriesFor: #hasOnErrorDo!public!testing! !
!UMLExecutionStack categoriesFor: #hasSequenceTemporaryNamed:withStValue:!public!snapshot queries! !
!UMLExecutionStack categoriesFor: #infiniteLoopSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #infiniteLoopSnapshot:!accessing!public!snapshot handler! !
!UMLExecutionStack categoriesFor: #initialize!public! !
!UMLExecutionStack categoriesFor: #onErrorDoSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #onErrorDoSnapshot:!accessing!public!snapshot handler! !
!UMLExecutionStack categoriesFor: #registerCurrentStackItem:!public!snapshot handler! !
!UMLExecutionStack categoriesFor: #registerExecutedStackItem:!public!snapshot handler! !
!UMLExecutionStack categoriesFor: #resetCreatorSnapshot!accessing!public!snapshot handler! !
!UMLExecutionStack categoriesFor: #virtualMachine!accessing!private! !
!UMLExecutionStack categoriesFor: #virtualMachine:!accessing!private! !

!UMLExecutionStack class methodsFor!

icon
	"Answers an <Icon> that can be used to represent this class"

	^AXTypeLibraryAnalyzer icon!

newStartWith: anUMLExecutionSnapshot

	^super new initialize
		creatorSnapshot: anUMLExecutionSnapshot;
		yourself! !
!UMLExecutionStack class categoriesFor: #icon!public! !
!UMLExecutionStack class categoriesFor: #newStartWith:!public! !

