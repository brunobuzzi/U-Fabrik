"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLStringTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLStringTest guid: (GUID fromString: '{642aadb5-55b5-4274-b0f4-3a895e3d33f8}')!
UMLStringTest comment: ''!
!UMLStringTest categoriesForClass!Unclassified! !
!UMLStringTest methodsFor!

testAppend
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '''a'' , ''b'''. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 'ab').!

testAsLowercase
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '''A'' asLowercase'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 'a').

	parsedCode := self umlCompiler parseExpression: '''A'' asLowercase'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self deny: (result last smalltalkObject = 'A').!

testAsNumber
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '''10'' asNumber'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 10).!

testAsUppercase
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '''a'' asUppercase'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 'A').

	parsedCode := self umlCompiler parseExpression: '''a'' asUppercase'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self deny: (result last smalltalkObject = 'a').!

testEqual
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '''a'' = ''b'''. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = false).

	parsedCode := self umlCompiler parseExpression: '''a'' = ''a'''. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = true).

	parsedCode := self umlCompiler parseExpression: '''a'' = ''A'''. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = false).!

testGreaterThan
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '''a'' > ''b'''. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = false).!

testSize
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '''A'' size'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 1).

	parsedCode := self umlCompiler parseExpression: '''Ab'' size'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 2).

	parsedCode := self umlCompiler parseExpression: '''AbC'' size'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 3).

	parsedCode := self umlCompiler parseExpression: '''AbCd'' size'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 4).!

testSmallerThan
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '''a'' < ''b'''. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = true).! !
!UMLStringTest categoriesFor: #testAppend!public! !
!UMLStringTest categoriesFor: #testAsLowercase!public! !
!UMLStringTest categoriesFor: #testAsNumber!public! !
!UMLStringTest categoriesFor: #testAsUppercase!public! !
!UMLStringTest categoriesFor: #testEqual!public! !
!UMLStringTest categoriesFor: #testGreaterThan!public! !
!UMLStringTest categoriesFor: #testSize!public! !
!UMLStringTest categoriesFor: #testSmallerThan!public! !

