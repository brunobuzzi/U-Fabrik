"Filed out from Dolphin Smalltalk 7"!

UMLLiveEngineError subclass: #UMLVirtualMachineExecutionError
	instanceVariableNames: 'realException'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineExecutionError guid: (GUID fromString: '{74c8d169-f451-4f1a-9f52-8b22e6015860}')!
UMLVirtualMachineExecutionError comment: ''!
!UMLVirtualMachineExecutionError categoriesForClass!Unclassified! !
!UMLVirtualMachineExecutionError methodsFor!

realException
	^realException!

realException: anObject
	realException := anObject! !
!UMLVirtualMachineExecutionError categoriesFor: #realException!accessing!private! !
!UMLVirtualMachineExecutionError categoriesFor: #realException:!accessing!private! !

!UMLVirtualMachineExecutionError class methodsFor!

newFrom: anException

	^super new
		realException: anException;
		yourself! !
!UMLVirtualMachineExecutionError class categoriesFor: #newFrom:!public! !

