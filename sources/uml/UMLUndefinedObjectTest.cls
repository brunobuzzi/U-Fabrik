"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLUndefinedObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLUndefinedObjectTest guid: (GUID fromString: '{f855d185-d505-4b23-9ade-0da0280e6be3}')!
UMLUndefinedObjectTest comment: ''!
!UMLUndefinedObjectTest categoriesForClass!Unclassified! !
!UMLUndefinedObjectTest methodsFor!

testNilObject

	self assert: (virtualMachine nilObject smalltalkObject == nil)! !
!UMLUndefinedObjectTest categoriesFor: #testNilObject!public! !

