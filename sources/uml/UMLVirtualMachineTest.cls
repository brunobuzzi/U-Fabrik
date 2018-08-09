"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLVirtualMachineTest
	instanceVariableNames: 'executionSnapshot'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineTest guid: (GUID fromString: '{1fa1c365-b915-4667-a563-f2f8e4ddab60}')!
UMLVirtualMachineTest comment: ''!
!UMLVirtualMachineTest categoriesForClass!Unclassified! !
!UMLVirtualMachineTest methodsFor!

externaFileClass

	^virtualMachine virtualMachineClassNamed: 'ExternalFile'!

msOfficeClass

	^virtualMachine virtualMachineClassNamed: 'MSOffice'!

msWordClass

	^virtualMachine virtualMachineClassNamed: 'MSWord'!

setUp
	| newImplementation |

	super setUp.

	executionSnapshot :=  UMLScriptExecutionSnapshot virtualMachine: virtualMachine.

	newImplementation := UMLParsedImplementation newWithCode: 'test'.
	self externaFileClass addImplementation: newImplementation.

	newImplementation := UMLParsedImplementation newWithCode: 'test
		super test initialize.'.
	self msOfficeClass addImplementation: newImplementation.

	newImplementation := UMLParsedImplementation newWithCode: 'test
		super test initialize.'.
	self msWordClass addImplementation: newImplementation.!

tearDown

	super tearDown.

	self externaFileClass removeImplementationNamed: #test.

	self msOfficeClass removeImplementationNamed: #test.

	self msWordClass removeImplementationNamed: #test.
!

testSuperSend
	| parsedCode |

	parsedCode := self umlCompiler parseExpression: 'MSWord new test'.
	executionSnapshot activateSnaphotWith: parsedCode.

	virtualMachine executeSequenceNodeReturningAll: parsedCode in: executionSnapshot! !
!UMLVirtualMachineTest categoriesFor: #externaFileClass!public! !
!UMLVirtualMachineTest categoriesFor: #msOfficeClass!public! !
!UMLVirtualMachineTest categoriesFor: #msWordClass!public! !
!UMLVirtualMachineTest categoriesFor: #setUp!public! !
!UMLVirtualMachineTest categoriesFor: #tearDown!public! !
!UMLVirtualMachineTest categoriesFor: #testSuperSend!public! !

