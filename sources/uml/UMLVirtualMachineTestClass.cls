"Filed out from Dolphin Smalltalk 7"!

UMLTestCase subclass: #UMLVirtualMachineTestClass
	instanceVariableNames: 'virtualMachine'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineTestClass guid: (GUID fromString: '{996ef4dc-7964-493e-999e-af4709452b5e}')!
UMLVirtualMachineTestClass comment: ''!
!UMLVirtualMachineTestClass categoriesForClass!Unclassified! !
!UMLVirtualMachineTestClass methodsFor!

setUp

	super setUp.

	virtualMachine := UMLVirtualMachine default.
!

umlCompiler

	^UMLCompiler! !
!UMLVirtualMachineTestClass categoriesFor: #setUp!public! !
!UMLVirtualMachineTestClass categoriesFor: #umlCompiler!public! !

