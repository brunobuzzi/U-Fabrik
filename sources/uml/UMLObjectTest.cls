"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLObjectTest guid: (GUID fromString: '{7cbc6b92-e65d-402d-b38d-8af73d90d3e1}')!
UMLObjectTest comment: ''!
!UMLObjectTest categoriesForClass!Unclassified! !
!UMLObjectTest methodsFor!

testIsNil

	self assert: ((virtualMachine objectClass newInstance vmPerform: #isNil) smalltalkObject == false)!

testNotNil

	self assert: ((virtualMachine objectClass newInstance vmPerform: #notNil) smalltalkObject == true)!

testObjectIdentity
	| object object2 |

	object := virtualMachine objectClass newInstance.
	self assert: ((object vmPerform: #== withArguments: (Array with: object)) smalltalkObject == true).

	object := virtualMachine objectClass newInstance.
	object2 := virtualMachine objectClass newInstance.
	self assert: ((object vmPerform: #== withArguments: (Array with: object2)) smalltalkObject == false).
	self assert: ((object vmPerform: #~~ withArguments: (Array with: object2)) smalltalkObject == true).
! !
!UMLObjectTest categoriesFor: #testIsNil!public! !
!UMLObjectTest categoriesFor: #testNotNil!public! !
!UMLObjectTest categoriesFor: #testObjectIdentity!public! !

