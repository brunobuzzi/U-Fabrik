"Filed out from Dolphin Smalltalk 7"!

UMLMetaclass subclass: #UMLVirtualMachineMetaclass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineMetaclass guid: (GUID fromString: '{767f306f-64cb-40d3-9062-f3adaa6a75a9}')!
UMLVirtualMachineMetaclass comment: ''!
!UMLVirtualMachineMetaclass categoriesForClass!Unclassified! !
!UMLVirtualMachineMetaclass methodsFor!

belongToVirtualMachine

	^true!

instanceClassSpecification

	^UMLVirtualMachineClass! !
!UMLVirtualMachineMetaclass categoriesFor: #belongToVirtualMachine!public! !
!UMLVirtualMachineMetaclass categoriesFor: #instanceClassSpecification!public! !

!UMLVirtualMachineMetaclass class methodsFor!

newNamed: aString 
	^super new initialize
		newNamed: aString;
		yourself.! !
!UMLVirtualMachineMetaclass class categoriesFor: #newNamed:!public! !

