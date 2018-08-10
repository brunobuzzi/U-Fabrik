"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLVirtualMachineTest
	instanceVariableNames: 'executionSnapshot uninstall umlModel'
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
	| reader |

	super setUp.

	executionSnapshot :=  UMLScriptExecutionSnapshot virtualMachine: virtualMachine.

	uninstall := false.
	(virtualMachine includesUMLModelNamed: 'bank.xmi')
	ifFalse: [reader := XmiVisualParadigm fromFile: (SessionManager current imageBase, 'xmi-examples\bank.xmi').
		umlModel := reader generateUMLModelNamed: 'bank.xmi'.
		virtualMachine installUMLModel: umlModel.
		uninstall := true]
	ifTrue: [umlModel := virtualMachine getUMLModelNamed: 'bank.xmi'].!

tearDown

	super tearDown.

	uninstall ifTrue: [virtualMachine uninstallUMLModel: umlModel].
!

testIssue51
	| source implementation umlObject result |

	source := 'testIssue51 
	| a |
	a := 24.'.
	implementation := self externaFileClass addSourceImplementation: source.
	umlObject := self externaFileClass  newInstance.
	result := virtualMachine apply: implementation to: umlObject with: #().
	self assert: (result umlClass == self externaFileClass). "answer the receiver instead of the last result --> OK"
	self externaFileClass removeImplementationNamed: implementation methodName.

	source := 'testIssue51 
	| a |
	^a := 24.'.
	implementation := self externaFileClass addSourceImplementation: source.
	umlObject := self externaFileClass  newInstance.
	result := virtualMachine apply: implementation to: umlObject with: #().
	self assert: (result umlClass name = 'Number'). "answer the receiver instead of the last result --> OK"
	self externaFileClass removeImplementationNamed: implementation methodName.!

testIssue53
	| parsedCode result |

	executionSnapshot := UMLScriptExecutionSnapshot virtualMachine: virtualMachine.
	parsedCode := self umlCompiler parseExpression: 'Card new account: 9'. "type mismatch to get an error"
	executionSnapshot activateSnaphotWith: parsedCode.
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: executionSnapshot.

	self assert: (result last umlClass name = 'Error').!

testIssue54
	| isActive parsedCode |

	isActive := virtualMachine transLog logIsActive.
	virtualMachine transLog logIsActive: true.

	executionSnapshot := UMLScriptExecutionSnapshot virtualMachine: virtualMachine.
	parsedCode := self umlCompiler parseExpression: 'Card new expirationDate: Date new'. 
	executionSnapshot activateSnaphotWith: parsedCode.
	virtualMachine executeSequenceNodeReturningAll: parsedCode in: executionSnapshot.
	self assert: (virtualMachine transLog logs detect: [:each | (each methodName = #expirationDate:) and: [each snapshot == executionSnapshot]] ifNone: [self assert: false]) notNil.

	executionSnapshot := UMLScriptExecutionSnapshot virtualMachine: virtualMachine.
	parsedCode := self umlCompiler parseExpression: 'Card new expirationDate'. 
	executionSnapshot activateSnaphotWith: parsedCode.
	virtualMachine executeSequenceNodeReturningAll: parsedCode in: executionSnapshot.
	self assert: (virtualMachine transLog logs detect: [:each | (each methodName = #expirationDate) and: [each snapshot == executionSnapshot]] ifNone: [self assert: false]) notNil.

	virtualMachine transLog logIsActive: isActive.
!

testIssue56
	| parsedCode |

	executionSnapshot := UMLScriptExecutionSnapshot virtualMachine: virtualMachine.
	parsedCode := self umlCompiler parseExpression: '[Card new foo] on: Error do: [:ex | ]'. 
	executionSnapshot activateSnaphotWith: parsedCode.
	virtualMachine executeSequenceNodeReturningAll: parsedCode in: executionSnapshot.

	self assert: executionSnapshot exception notNil.
	self assert: executionSnapshot hasDNU.
!

testIssue66
	| personClass transactionRuleClass method |

	personClass := umlModel getClassNamed: 'Person' ifNone: [self assert: false].

	transactionRuleClass := umlModel getClassNamed: 'TransactionRule' ifNone: [self assert: false].

	personClass autoGenerateInitializeMethodIn: virtualMachine.
	transactionRuleClass autoGenerateInitializeMethodIn: virtualMachine.

	method := transactionRuleClass implementationNamed: #initialize.
	self assert: (method parsedCode allNodes anySatisfy: [:each | each isAssignment and:[each value isMessage and: [each value receiver name = 'Person']]]).

	method := personClass implementationNamed: #initialize.
	self deny: (method parsedCode allNodes anySatisfy: [:each | each isAssignment and:[each value isMessage and: [each value receiver name = 'TransactionRule']]]).

	!

testIssue69
	| source implementation umlObject snapshot |

	source := 'testIssue69
	| a b |
	a := 1.
	self testIssue69.
	b := 2.'.

	implementation := self externaFileClass addSourceImplementation: source.
	umlObject := self externaFileClass newInstance.
	snapshot := UMLImplementationExecutionSnapshot activateSnapshotWith: implementation receiver: umlObject arguments: #() virtualMachine: virtualMachine . 
	virtualMachine apply: implementation to: umlObject with: #()  snapshot: snapshot.

	UMLDebuggerShell allInstances do: [:each | each view destroy].

	self assert: snapshot hasInfiniteLoop.
	self assert: ((snapshot getTemporaryNamed: 'a') smalltalkObject = 1).
	self assert: ((snapshot getTemporaryNamed: 'b') smalltalkObject = nil).

	self externaFileClass removeImplementationNamed: implementation methodName.! !
!UMLVirtualMachineTest categoriesFor: #externaFileClass!public! !
!UMLVirtualMachineTest categoriesFor: #msOfficeClass!public! !
!UMLVirtualMachineTest categoriesFor: #msWordClass!public! !
!UMLVirtualMachineTest categoriesFor: #setUp!public! !
!UMLVirtualMachineTest categoriesFor: #tearDown!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue51!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue53!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue54!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue56!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue66!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue69!public! !

