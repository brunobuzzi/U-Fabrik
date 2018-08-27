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

testIssue105
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[:int | int + 8 ] value'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Error').

	parsedCode := self umlCompiler parseExpression: '[8] value: 3'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Error').

	parsedCode := self umlCompiler parseExpression: '[:int | int + 8 ] value: 3 value: 5'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Error').
!

testIssue51
	| source implementation umlObject result |

	source := 'testIssue51 
	| a |
	a := 24.'.
	implementation := self externaFileClass addSourceImplementation: source.
	umlObject := self externaFileClass  newInstance.
	result := virtualMachine apply: implementation to: umlObject with: #() parentSnapshot: nil.
	self assert: (result umlClass == self externaFileClass). "answer the receiver instead of the last result --> OK"
	self externaFileClass removeImplementationNamed: implementation methodName.

	source := 'testIssue51 
	| a |
	^a := 24.'.
	implementation := self externaFileClass addSourceImplementation: source.
	umlObject := self externaFileClass  newInstance.
	result := virtualMachine apply: implementation to: umlObject with: #() parentSnapshot: nil.
	self assert: (result umlClass name = 'Number'). "answer the receiver instead of the last result --> OK"
	self externaFileClass removeImplementationNamed: implementation methodName.!

testIssue53
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: 'Card new account: 9'. "type mismatch to get an error"

	result := virtualMachine executeSequenceNode: parsedCode in: nil.

	self assert: (result umlClass name = 'Error').!

testIssue54
	| isActive parsedCode |

	isActive := virtualMachine transLog logIsActive.
	virtualMachine transLog cleanAll; logIsActive: true.

	parsedCode := self umlCompiler parseExpression: 'Card new expirationDate: Date new'. 
	virtualMachine executeSequenceNode: parsedCode in: nil.

	self assert: (virtualMachine transLog logs detect: [:each | (each methodName = #expirationDate:)] ifNone: [self assert: false]) notNil.

	parsedCode := self umlCompiler parseExpression: 'Card new expirationDate'. 
	virtualMachine executeSequenceNode: parsedCode in: nil.

	self assert: (virtualMachine transLog logs detect: [:each | (each methodName = #expirationDate)] ifNone: [self assert: false]) notNil.

	virtualMachine transLog logIsActive: isActive.
!

testIssue56
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[Card foo] on: Error do: [:ex |]'. 

	result := virtualMachine executeSequenceNode: parsedCode in: nil.

	self assert: (virtualMachine nilObject == result last).

!

testIssue56_b
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[Card foo] on: Error do: [:ex | 97]'. 

	result := virtualMachine executeSequenceNode: parsedCode in: nil.

	self assert: (result smalltalkObject = 97).

!

testIssue56_c
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[Array new. String new. Card foo. Array new] on: Error do: [:ex | 97]'. 

	result := virtualMachine executeSequenceNode: parsedCode in: nil.

	self assert: (result smalltalkObject = 97).

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

testIssue69and97
	| source implementation umlObject snapshot |

	source := 'testIssue69
	| a b |
	a := 1.
	self testIssue69.
	b := 2.'.

	implementation := self externaFileClass addSourceImplementation: source.
	umlObject := self externaFileClass newInstance.
	snapshot := UMLImplementationExecutionSnapshot activateSnapshotWith: implementation receiver: umlObject arguments: #() virtualMachine: virtualMachine.
	snapshot parentSnapshot: nil.
	virtualMachine apply: implementation to: umlObject with: #() snapshot: snapshot.

	UMLDebuggerShell allInstances do: [:each | each view destroy].

	self assert: snapshot hasInfiniteLoop.
	self assert: ((snapshot getTemporaryNamed: 'a') smalltalkObject = 1).
	self assert: ((snapshot getTemporaryNamed: 'b') smalltalkObject = nil).

	self externaFileClass removeImplementationNamed: implementation methodName.!

testIssue69and97_b
	| source implementation umlObject snapshot result |

	source := 'testIssue69
	self testIssue69.'.

	implementation := self externaFileClass addSourceImplementation: source.
	umlObject := self externaFileClass newInstance.
	snapshot := UMLImplementationExecutionSnapshot activateSnapshotWith: implementation receiver: umlObject arguments: #() virtualMachine: virtualMachine.
	snapshot parentSnapshot: nil.
	result := virtualMachine apply: implementation to: umlObject with: #() snapshot: snapshot.

	UMLDebuggerShell allInstances do: [:each | each view destroy].

	self assert: (result smalltalkObject class == UMLInfiniteLoopError).
	self assert: snapshot hasInfiniteLoop.

	self externaFileClass removeImplementationNamed: implementation methodName.!

testIssue72
	| reader mappings |

	(virtualMachine includesUMLModelNamed: 'bank.xmi')
	ifTrue: [umlModel := virtualMachine getUMLModelNamed: 'bank.xmi'.
		virtualMachine uninstallUMLModel: umlModel].

	mappings := virtualMachine typeMapping.
	virtualMachine typeMapping: LookupTable new. "force the installation without any mapping --> all basic attributes will fail to map"

	reader := XmiVisualParadigm fromFile: (SessionManager current imageBase, 'xmi-examples\bank.xmi').
	umlModel := reader generateUMLModelNamed: 'bank.xmi'.
	[virtualMachine installUMLModel: umlModel] on: Error do: [:ex | self assert: false].

	virtualMachine typeMapping:  mappings.
	uninstall := true.

	self assert: true.
!

testIssue92
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[] value'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (virtualMachine nilObject == result last).

	parsedCode := self umlCompiler parseExpression: '[:arg | ] value: 4'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (virtualMachine nilObject == result last).

	parsedCode := self umlCompiler parseExpression: '[:arg1 :arg2 | ] value: 4 value: 5'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (virtualMachine nilObject == result last).

	parsedCode := self umlCompiler parseExpression: '[:arg1 :arg2 :arg3 | ] valueWithArguments: #(4 5 6)'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (virtualMachine nilObject == result last).
! !
!UMLVirtualMachineTest categoriesFor: #externaFileClass!public! !
!UMLVirtualMachineTest categoriesFor: #msOfficeClass!public! !
!UMLVirtualMachineTest categoriesFor: #msWordClass!public! !
!UMLVirtualMachineTest categoriesFor: #setUp!public! !
!UMLVirtualMachineTest categoriesFor: #tearDown!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue105!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue51!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue53!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue54!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue56!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue56_b!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue56_c!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue66!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue69and97!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue69and97_b!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue72!public! !
!UMLVirtualMachineTest categoriesFor: #testIssue92!public! !

