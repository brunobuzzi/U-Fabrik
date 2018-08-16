"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLBlockTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLBlockTest guid: (GUID fromString: '{3816cf38-a0b9-45cf-8fb7-16d5b2131de3}')!
UMLBlockTest comment: ''!
!UMLBlockTest categoriesForClass!Unclassified! !
!UMLBlockTest methodsFor!

testIncorrentNumberOfArguments
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[:int | int + 8 ] value'. "type mismatch to get an error"
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last umlClass name = 'Error').

	parsedCode := self umlCompiler parseExpression: '[8] value: 3'. "type mismatch to get an error"
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last umlClass name = 'Error').

	parsedCode := self umlCompiler parseExpression: '[:int | int + 8 ] value: 3 value: 5'. "type mismatch to get an error"
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last umlClass name = 'Error').
!

testOnValueDo
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[4 foo] on: Error do: [:ex | | a | a := 4]'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 4).!

testOuterContextVariable
	| parsedCode result code |

	code := '
| a |
a := 4.
[:int | a * int] value: 5'. 
	parsedCode := self umlCompiler parseExpression: code.
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 20).

	code := '
| a |
a := 4.
[:int | | b |
b := a * int.
b negated] value: 5
'. 
	parsedCode := self umlCompiler parseExpression: code.
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = -20).!

testValue
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[4 + 8 ] value'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 12).

	parsedCode := self umlCompiler parseExpression: '[''a'', ''b''] value'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 'ab').

	parsedCode := self umlCompiler parseExpression: '[''ab'' reverse] value'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 'ba').!

testValueWithArguments
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[:int | int + 8 ] value: 2'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 10).

	parsedCode := self umlCompiler parseExpression: '[:int :int2 | int + int2 ] value: 2 value: 9'. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 11).

	parsedCode := self umlCompiler parseExpression: '[:str | str reverse ] value: ''abc'''. 
	result := virtualMachine executeSequenceNodeReturningAll: parsedCode in: nil.
	self assert: (result last smalltalkObject = 'cba').! !
!UMLBlockTest categoriesFor: #testIncorrentNumberOfArguments!public! !
!UMLBlockTest categoriesFor: #testOnValueDo!public! !
!UMLBlockTest categoriesFor: #testOuterContextVariable!public! !
!UMLBlockTest categoriesFor: #testValue!public! !
!UMLBlockTest categoriesFor: #testValueWithArguments!public! !

