"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLExecutionStack
	instanceVariableNames: 'virtualMachine creatorSnapshot currentSnapshots executedSnapshots dnuSnapshot infiniteLoopSnapshot onErrorDoSnapshot'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLExecutionStack guid: (GUID fromString: '{7c538b83-8914-4b1e-a6bb-c6474b98636d}')!
UMLExecutionStack comment: ''!
!UMLExecutionStack categoriesForClass!Unclassified! !
!UMLExecutionStack methodsFor!

creatorSnapshot
	^creatorSnapshot!

creatorSnapshot: anObject
	creatorSnapshot := anObject!

currentSnapshots
	^currentSnapshots!

currentSnapshots: anObject
	currentSnapshots := anObject!

dnuSnapshot
	^dnuSnapshot!

dnuSnapshot: anObject
	dnuSnapshot := anObject!

executedSnapshots
	^executedSnapshots!

executedSnapshots: anObject
	executedSnapshots := anObject!

hasDNU
	"The receiver answer whether or not there is -Does Not Understand- event in the execution"

	^dnuSnapshot notNil!

hasInfiniteLoop
	"The receiver answer whether or not there is an infinite loop in the execution"

	^infiniteLoopSnapshot notNil!

infiniteLoopSnapshot
	^infiniteLoopSnapshot!

infiniteLoopSnapshot: anObject
	infiniteLoopSnapshot := anObject!

onErrorDoSnapshot
	^onErrorDoSnapshot!

onErrorDoSnapshot: anObject
	onErrorDoSnapshot := anObject!

virtualMachine
	^virtualMachine!

virtualMachine: anObject
	virtualMachine := anObject! !
!UMLExecutionStack categoriesFor: #creatorSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #creatorSnapshot:!accessing!private! !
!UMLExecutionStack categoriesFor: #currentSnapshots!accessing!private! !
!UMLExecutionStack categoriesFor: #currentSnapshots:!accessing!private! !
!UMLExecutionStack categoriesFor: #dnuSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #dnuSnapshot:!accessing!private! !
!UMLExecutionStack categoriesFor: #executedSnapshots!accessing!private! !
!UMLExecutionStack categoriesFor: #executedSnapshots:!accessing!private! !
!UMLExecutionStack categoriesFor: #hasDNU!public! !
!UMLExecutionStack categoriesFor: #hasInfiniteLoop!public! !
!UMLExecutionStack categoriesFor: #infiniteLoopSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #infiniteLoopSnapshot:!accessing!private! !
!UMLExecutionStack categoriesFor: #onErrorDoSnapshot!accessing!private! !
!UMLExecutionStack categoriesFor: #onErrorDoSnapshot:!accessing!private! !
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

