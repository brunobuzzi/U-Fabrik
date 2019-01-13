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

testComplexBlock
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: 'g := [:y :z |
|f|
f := [:x | y * x].
f].
(g value:3 value:2) value:4. "12"'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 12).

	parsedCode := self umlCompiler parseExpression: 'g := [:y :z |
|f|
f := [:x | y * x].
f].
(g value:2 value:3) value:4. "8"'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 8).!

testIncorrentNumberOfArguments
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[:int | int + 8 ] value'. "incorrect number of arguments"
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Error').

	parsedCode := self umlCompiler parseExpression: '[8] value: 3'. "incorrect number of arguments"
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Error').

	parsedCode := self umlCompiler parseExpression: '[:int | int + 8 ] value: 3 value: 5'. "incorrect number of arguments"
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Error').
!

testOnValueDo
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[4 foo] on: Error do: [:ex | | a | a := 4]'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 4).!

testOuterContextVariable
	| parsedCode result code |

	code := '
| a |
a := 4.
[:int | a * int] value: 5'. 
	parsedCode := self umlCompiler parseExpression: code.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 20).

	code := '
| a |
a := 4.
[:int | | b |
b := a * int.
b negated] value: 5
'. 
	parsedCode := self umlCompiler parseExpression: code.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = -20).!

testReEntrantBlock
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '| factorial |
factorial := [:n | (n = 1) ifTrue: [1] ifFalse: [(factorial value: n - 1) * n]].
factorial value: 5.'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 120).
!

testReEntrantDetection
	| stringBlock parsedCode result |

	"if re-entrant blocks are enabled --> there is no need to test the re-entrant block detection"
	virtualMachine reEntrantBlocksIsEnabled ifTrue: [^self assert: true].

	stringBlock := '| factorial |
factorial := [:n | (n = 1) ifTrue: [1] ifFalse: [(factorial value: n -1) * n]].
factorial value: 5.'.
	parsedCode := self umlCompiler parseExpression: stringBlock. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result answerResult smalltalkObject  class == Error).!

testValue
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[4 + 8 ] value'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 12).

	parsedCode := self umlCompiler parseExpression: '[''a'', ''b''] value'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 'ab').

	parsedCode := self umlCompiler parseExpression: '[''ab'' reverse] value'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 'ba').!

testValueWithArguments
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '[:int | int + 8 ] value: 2'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 10).

	parsedCode := self umlCompiler parseExpression: '[:int :int2 | int + int2 ] value: 2 value: 9'. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 11).

	parsedCode := self umlCompiler parseExpression: '[:str | str reverse ] value: ''abc'''. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result smalltalkObject = 'cba').! !
!UMLBlockTest categoriesFor: #testComplexBlock!public! !
!UMLBlockTest categoriesFor: #testIncorrentNumberOfArguments!public! !
!UMLBlockTest categoriesFor: #testOnValueDo!public! !
!UMLBlockTest categoriesFor: #testOuterContextVariable!public! !
!UMLBlockTest categoriesFor: #testReEntrantBlock!public! !
!UMLBlockTest categoriesFor: #testReEntrantDetection!public! !
!UMLBlockTest categoriesFor: #testValue!public! !
!UMLBlockTest categoriesFor: #testValueWithArguments!public! !

