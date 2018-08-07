"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLStateMachineSpecification
	instanceVariableNames: 'stateMachineClass transitionClass stateClass currentStateMessage nextStateMessage machineVarName transitionVarName stateVarName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLStateMachineSpecification guid: (GUID fromString: '{f42a3665-145f-4b71-ae4d-8923042cdedb}')!
UMLStateMachineSpecification comment: ''!
!UMLStateMachineSpecification categoriesForClass!Unclassified! !
!UMLStateMachineSpecification methodsFor!

currentStateMessage
	^currentStateMessage!

currentStateMessage: anObject
	currentStateMessage := anObject!

machineVarName
	^machineVarName!

machineVarName: anObject
	machineVarName := anObject!

nextStateMessage
	^nextStateMessage!

nextStateMessage: anObject
	nextStateMessage := anObject!

stateClass
	^stateClass!

stateClass: anObject
	stateClass := anObject!

stateMachineClass
	^stateMachineClass!

stateMachineClass: anObject
	stateMachineClass := anObject!

stateVarName
	^stateVarName!

stateVarName: anObject
	stateVarName := anObject!

transitionClass
	^transitionClass!

transitionClass: anObject
	transitionClass := anObject!

transitionVarName
	^transitionVarName!

transitionVarName: anObject
	transitionVarName := anObject! !
!UMLStateMachineSpecification categoriesFor: #currentStateMessage!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #currentStateMessage:!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #machineVarName!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #machineVarName:!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #nextStateMessage!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #nextStateMessage:!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #stateClass!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #stateClass:!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #stateMachineClass!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #stateMachineClass:!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #stateVarName!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #stateVarName:!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #transitionClass!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #transitionClass:!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #transitionVarName!accessing!private! !
!UMLStateMachineSpecification categoriesFor: #transitionVarName:!accessing!private! !

!UMLStateMachineSpecification class methodsFor!

newFor: stateMachineClass

	^super new initialize
		stateMachineClass: stateMachineClass;
		yourself! !
!UMLStateMachineSpecification class categoriesFor: #newFor:!public! !

