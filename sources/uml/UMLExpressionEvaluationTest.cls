"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLExpressionEvaluationTest
	instanceVariableNames: 'compiler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLExpressionEvaluationTest guid: (GUID fromString: '{c70a7a7f-0387-4d79-8e32-ecbf1df2c3a8}')!
UMLExpressionEvaluationTest comment: ''!
!UMLExpressionEvaluationTest categoriesForClass!Unclassified! !
!UMLExpressionEvaluationTest methodsFor!

testAnd
	| result |

	result := compiler evaluateExpression: '
bool1 := true
block := [false]
bool1.and: block'.
	self assert: (result smalltalkObject = false).

	result := compiler evaluateExpression: '
bool1 := true
block := [true]
bool1.and: block'.
	self assert: (result smalltalkObject = true).

	result := compiler evaluateExpression: '
bool1 := 10.isBiggerThan: 25
block := [10.isEqualTo: 10]
bool1.and: block'.
	self assert: (result smalltalkObject = false).

	result := compiler evaluateExpression: '
bool1 := 10.isBiggerThan: 4.3
block := [10.isEqualTo: 10]
bool1.and: block'.
	self assert: (result smalltalkObject = true)!

testBinaryMessageSend
	| result |

"adding two numbers"
	result := compiler evaluateExpression: '10.sum: 25'.

	self assert: (result className = 'Number').
	self assert: (result smalltalkObject = 35).

"concatening two string"
"	result := compiler evaluateExpression: '''hello''.,: ''world''' inContext: variables.
	self assert: (result className = 'String').
	self assert: (result smalltalkObject = 'hello word').
"!

testBlockAssign
	| blockString1 blockString2 result |

	blockString1 := 'block := [e.log]'.
	result := compiler evaluateExpressionReturningAll: blockString1.
	
	self assert: (result last className = 'Block'). "the result must be a UML Block class"
	self assert: (result last smalltalkObject class == UMLBlockClosureNode). "the Smalltalk object must be UMLBlockClosureNode"
	self assert: (result first includesObjectNamed: 'block'). "the compiler must assign the Block instance <block> to context dictionary <variables>"

	blockString2 := 'block2 := [str.reverse]'.
	result := compiler evaluateExpressionReturningAll: blockString2.
	self assert: (result last className = 'Block'). "the result must be a UML Block class"
	self assert: (result last smalltalkObject class == UMLBlockClosureNode). "the Smalltalk object must be UMLBlockClosureNode"
	self assert: (result first includesObjectNamed:  'block2'). "the compiler must assign the Block instance <block2> to context dictionary <variables>"!

testBlockValue
	| result |

	result := compiler evaluateExpression: 'block := [100.log]
block.value' . "we evaluate the temporary <block>, the result should be 2.0 (100 log = 2.0)"

	self assert: (result className = 'Number'). "2.0 must be a instance of Number class"
	self assert: (result smalltalkObject = 2.0). "the result must be 2.0"
	
	result := compiler evaluateExpression: 'block := [50.negated]
block.value'. "we evaluate the temporary <block>, the result should be -50"

	self assert: (result className = 'Number'). "-50 must be a instance of Number class"
	self assert: (result smalltalkObject = -50). "the result must be -50"
	!

testBlockValueWithArguments
	| blockString result |

	blockString := 'block := [:e | 
e.log]
block.value: 100'. 
	result := compiler evaluateExpression: blockString. "we evaluate <block> with argument 100"
	self assert: (result className = 'Number'). "the result must be an instance of class Number"
	self assert: (result smalltalkObject = 2.0). "the result must be 2.0"

	blockString := 'block := [:e | 
e.log]
block.value: 10'. 
	result := compiler evaluateExpression: blockString. "we evaluate <block> with argument 10"
	self assert: (result className = 'Number'). "the result must be an instance of class Number"
	self assert: (result smalltalkObject = 1.0). "the result must be 1.0"
							      
	blockString := 'block := [:e | 
e.reverse]
block.value: ''hello'''.
	result := compiler evaluateExpression: blockString. "we evaluate <block> with argument 'hello'"
	self assert: (result className = 'String'). "the result must be an instance of class String"
	self assert: (result smalltalkObject = 'olleh')."the result must be the word -hello- reversed -olleh-"
	!

testBooleanAssign
	| result |

	result := compiler evaluateExpressionReturningAll: 'bool1 := true'.
	self assert: (result last smalltalkObject = true).
	self assert: (result first includesObjectNamed: 'bool1').

	result := compiler evaluateExpressionReturningAll: 'bool2 := false'.
	self assert: (result last smalltalkObject = false).
	self assert: (result first includesObjectNamed: 'bool2').!

testBugDictionary
	| result code |

	code := 
'dict := Dictionary.newInstance
dict.at: ''CIV'' put: AsuntoCivil 
dict.at: ''PEN'' put: AsuntoPenal 
dict.at: ''PEN'''.
	result := compiler evaluateExpression: code.
	self assert: (result className = 'AsuntoPenal').

	code := 
'dict := Dictionary.newInstance
dict.at: ''CIV'' put: AsuntoCivil 
dict.at: ''PEN'' put: AsuntoPenal 
dict.at: ''CIV'''.

	result := compiler evaluateExpression: code.
	self assert: (result className = 'AsuntoCivil')!

testIfFalse
	| result |

	result := compiler evaluateExpression: 'block := [100.log]
false.ifFalse: block'. 

	self assert: (result className = 'Number'). "the result must be an instance of class Number"
	self assert: (result smalltalkObject = 2.0). "the result must be 2.0"

	result := compiler evaluateExpression: 'block := [100.log]
true.ifFalse: block'. 
	self assert: (result className = 'UndefinedObject'). "the result must be #nil object because the block is NOT evaluated"
	self assert: (result smalltalkObject = nil). "the smalltalk object must be nil"!

testIfFalseIfTrue
	| result |

	result := compiler evaluateExpression: '
trueBlock := [100.log]
falseBlock := [10.log]
false.ifFalse: falseBlock ifTrue: trueBlock'.
	self assert: (result className = 'Number').
	self assert: (result smalltalkObject = 1.0).


	result := compiler evaluateExpression: '
trueBlock := [100.log]
falseBlock := [10.log]
true.ifFalse: falseBlock ifTrue: trueBlock'.
	self assert: (result className = 'Number').
	self assert: (result smalltalkObject = 2.0).!

testIfTrue
	| result |

	result := compiler evaluateExpression: 'block := [100.log]
true.ifTrue: block'. 

	self assert: (result className = 'Number'). "the result must be an instance of class Number"
	self assert: (result smalltalkObject = 2.0). "the result must be 2.0"

	result := compiler evaluateExpression: 'block := [100.log]
false.ifTrue: block'. 
	self assert: (result className = 'UndefinedObject'). "the result must be #nil object because the block is NOT evaluated"
	self assert: (result smalltalkObject = nil). "the smalltalk object must be nil"!

testIfTrueIfFalse
	| result |

	result := compiler evaluateExpression: '
trueBlock := [100.log]
falseBlock := [10.log]
false.ifTrue: trueBlock ifFalse: falseBlock'.
	self assert: (result className = 'Number').
	self assert: (result smalltalkObject = 1.0).


	result := compiler evaluateExpression: '
trueBlock := [100.log]
falseBlock := [10.log]
true.ifTrue: trueBlock ifFalse: falseBlock'.
	self assert: (result className = 'Number').
	self assert: (result smalltalkObject = 2.0).!

testInitialize
	| result caratulaObject script |

script := '
exp := Expediente.newInstance
exp.initialize
exp'.

	result := compiler evaluateExpression: script.
	self assert: (result className = 'Expediente').
	caratulaObject := result vmPerform: #caratula.
	self deny: (caratulaObject isUndefined).
	self assert: (caratulaObject className = 'Caratula').
!

testKeywordMessageSend
	| result |

"adding two numbers"
	result := compiler evaluateExpressionReturningAll: 'oc := OrderedCollection.newInstance
oc.add: 25'.

	self assert: (result second first className = 'OrderedCollection').
	self assert: (result second second className = 'Number').
	self assert: (result second second smalltalkObject = 25)!

testNumberAssign
	| result |

	result := compiler evaluateExpressionReturningAll: 'number := 125
number2 := 0.125'.

	self assert: (result second first smalltalkObject = 125).
	self assert: (result first includesObjectNamed: 'number').


	self assert: (result second second smalltalkObject = 0.125).
	self assert: (result first includesObjectNamed: 'number2').!

testNumberOperations!

testOr
	| result |

	result := compiler evaluateExpression: '
bool1 := true
block := [false]
bool1.or: block'.
	self assert: (result smalltalkObject = true).

	result := compiler evaluateExpression: '
bool1 := true
block := [true]
bool1.or: block'.
	self assert: (result smalltalkObject = true).

	result := compiler evaluateExpression: '
bool1 := 10.isBiggerThan: 25
block := [10.isEqualTo: 125]
bool1.or: block'.
	self assert: (result smalltalkObject = false).

	result := compiler evaluateExpression: '
bool1 := 10.isBiggerThan: 4.3
block := [10.isEqualTo: 10]
bool1.and: block'.
	self assert: (result smalltalkObject = true)!

testOrderedCollectionAllSatisfy
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 2
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isBiggerThan: 15]
oc.anySatisfy: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'False') and: [result smalltalkObject = false]).!

testOrderedCollectionAllSatisfy2
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 10
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 22
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isBiggerThan: 6]
oc.anySatisfy: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'True') and: [result smalltalkObject = true]).!

testOrderedCollectionAnySatisfy
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 2
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isBiggerThan: 15]
oc.anySatisfy: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'False') and: [result smalltalkObject = false]).!

testOrderedCollectionAnySatisfy2
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 2
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isBiggerThan: 5]
oc.anySatisfy: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'True') and: [result smalltalkObject = true ]).!

testOrderedCollectionCollect
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: ''1''
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: ''2''
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: ''3''
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each |
each.autogenerado]
result := oc.collect: block
result'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'OrderedCollection') and: [result smalltalkObject size = 3]).
	self assert: ((result vmPerform: #at: withArguments: #(1)) smalltalkObject = '1').
	self assert: ((result vmPerform: #at: withArguments: #(2)) smalltalkObject = '2').
	self assert: ((result vmPerform: #at: withArguments: #(3)) smalltalkObject = '3').
	self assert: ((result smalltalkObject collect: [:each | each smalltalkObject]) asArray = #('1' '2' '3'))!

testOrderedCollectionCollect2
	| result code |

	code := 
'oc := OrderedCollection.newInstance
oc.add: 10
oc.add: 100
oc.add: 1000
block := [:each |
each.log]
result := oc.collect: block
result'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'OrderedCollection') and: [result smalltalkObject size = 3]).
	self assert: ((result vmPerform: #at: withArguments: #(1)) smalltalkObject = 1).
	self assert: ((result vmPerform: #at: withArguments: #(2)) smalltalkObject = 2).
	self assert: ((result vmPerform: #at: withArguments: #(3)) smalltalkObject = 3).!

testOrderedCollectionDo
	| result code |
	code := 'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 2
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 3
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val sum |
val := each.autogenerado
sum := val.sum: 9
each.autogenerado: sum]
oc.do: block
oc'.
	result := compiler evaluateExpression: code.
	self assert: (result className = 'OrderedCollection' and: [result smalltalkObject size = 3]).
	self assert: (result smalltalkObject first atVariableName: #autogenerado) smalltalkObject = 10.
	self assert: (result smalltalkObject second atVariableName: #autogenerado) smalltalkObject = 11.
	self assert: (result smalltalkObject third atVariableName: #autogenerado) smalltalkObject = 12.
!

testOrderedCollectionReject
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 2
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isSmallerThan: 5]
oc.reject: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'OrderedCollection') and: [result smalltalkObject size = 1]).
	self assert: ((result smalltalkObject first atVariableName: #autogenerado) smalltalkObject = 8).!

testOrderedCollectionReject2
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 7
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 9
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 18
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isSmallerThan: 5]
oc.reject: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'OrderedCollection') and: [result smalltalkObject size = 3]).
	self assert: ((result smalltalkObject first atVariableName: #autogenerado) smalltalkObject = 7).
	self assert: ((result smalltalkObject second atVariableName: #autogenerado) smalltalkObject = 9).
	self assert: ((result smalltalkObject third atVariableName: #autogenerado) smalltalkObject = 18).

!

testOrderedCollectionSelect
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 2
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isSmallerThan: 5]
oc.select: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'OrderedCollection') and: [result smalltalkObject size = 2]).
	self assert: ((result smalltalkObject first atVariableName: #autogenerado) smalltalkObject = 1).
	self assert: ((result smalltalkObject second atVariableName: #autogenerado) smalltalkObject = 2).!

testOrderedCollectionSelect2
	| result code |

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 6
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isBiggerThan: 5]
oc.select: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'OrderedCollection') and: [result smalltalkObject size = 2]).
	self assert: ((result smalltalkObject first atVariableName: #autogenerado) smalltalkObject = 6).
	self assert: ((result smalltalkObject second atVariableName: #autogenerado) smalltalkObject = 8).!

testOrderedCollectionSelect3
	| result code |

	code := 
'oc := OrderedCollection.newInstance
num := 5
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 6
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isBiggerThan: num]
oc.select: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'OrderedCollection') and: [result smalltalkObject size = 2]).
	self assert: ((result smalltalkObject first atVariableName: #autogenerado) smalltalkObject = 6).
	self assert: ((result smalltalkObject second atVariableName: #autogenerado) smalltalkObject = 8).!

testOrderedCollectionSelect4
	| result code |

	code := 
'oc := OrderedCollection.newInstance
num := 7
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 6
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3
block := [:each | 
| val |
val := each.autogenerado
val.isBiggerThan: num]
oc.select: block'.
	result := compiler  evaluateExpression: code.

	self assert: ((result className = 'OrderedCollection') and: [result smalltalkObject size = 1]).
	self assert: ((result smalltalkObject first atVariableName: #autogenerado) smalltalkObject = 8).!

testSimpleAssigns
	| result code collection |

	code := 
'oc := OrderedCollection.newInstance
var4 := true
var3 := ''hello world''
var1 := 125
var2 := 253.36
var5 := false
var6 := nil
var7 := Number
block := [:each | 
| val |
val := each.autogenerado
val.isSmallerThan: 5]'.
	result := compiler  evaluateExpressionReturningAll: code.
	collection := result second.
	self assert: ((collection at: 1) className = 'OrderedCollection').
	self assert: ((collection at: 2) == virtualMachine trueObject).
	self assert: ((collection at: 3) className = 'String').
	self assert: ((collection at: 4) className = 'Number').
	self assert: ((collection at: 5) className = 'Number').
	self assert: ((collection at: 6) == virtualMachine falseObject).
	self assert: ((collection at: 7) == virtualMachine nilObject).
	self assert: ((collection at: 8) class == UMLVirtualMachineClass).
	self assert: ((collection at: 9) className = 'Block').!

testSimpleBlockAssigns
	| result code collection |

	code := 
'block := [:each | 
| val oc var1|
oc := OrderedCollection.newInstance
var4 := true
var3 := ''hello world''
var1 := 125
var2 := 253.36
var5 := false
var6 := nil
var7 := Number
val := each.autogenerado
val.isSmallerThan: 5]'.
	result := compiler  evaluateExpressionReturningAll: code.
	collection := result second.
	self assert: ((collection at: 1) className = 'Block').!

testSimpleMessageSend
	| variables result |

	variables := Dictionary new.
"adding two numbers"
	result := compiler evaluateExpression: '10.log'.

	self assert: (result className = 'Number').
	self assert: (result smalltalkObject = 1.0).!

testSimpleSend
	| result code snapshot collection|

	code := 
'oc := OrderedCollection.newInstance
exp1 := Expediente.newInstance
exp1.initialize
exp1.autogenerado: 1
exp2 := Expediente.newInstance
exp2.initialize
exp2.autogenerado: 2
exp3 := Expediente.newInstance
exp3.initialize
exp3.autogenerado: 8
oc.add: exp1
oc.add: exp2
oc.add: exp3'.
	result := compiler  evaluateExpressionReturningAll: code.
	snapshot := result first.
	collection := result second first.
	self assert: ((collection className = 'OrderedCollection') and: [collection smalltalkObject size = 3]).
	self assert: ((collection smalltalkObject first  atVariableName: #autogenerado) smalltalkObject = 1).
	self assert: ((result last atVariableName: #autogenerado) smalltalkObject = 8).!

testStringAssign
	| variables result |

	variables := Dictionary new.

	result := compiler evaluateExpressionReturningAll: 'string := ''hello world'''.
	self assert: (result last smalltalkObject = 'hello world').
	self assert: (result first includesObjectNamed: 'hello world').

	result := compiler evaluateExpressionReturningAll: 'string2 := ''UML'''.
	self assert: (result last smalltalkObject = 'UML').
	self assert: (result first includesObjectNamed: 'UML').!

testStringOperations! !
!UMLExpressionEvaluationTest categoriesFor: #testAnd!expressions-booleans!public! !
!UMLExpressionEvaluationTest categoriesFor: #testBinaryMessageSend!expressions-message send!public! !
!UMLExpressionEvaluationTest categoriesFor: #testBlockAssign!expressions-blocks!public! !
!UMLExpressionEvaluationTest categoriesFor: #testBlockValue!expressions-blocks!public! !
!UMLExpressionEvaluationTest categoriesFor: #testBlockValueWithArguments!expressions-blocks!public! !
!UMLExpressionEvaluationTest categoriesFor: #testBooleanAssign!expressions-strings!public! !
!UMLExpressionEvaluationTest categoriesFor: #testBugDictionary!public! !
!UMLExpressionEvaluationTest categoriesFor: #testIfFalse!expressions-booleans!public! !
!UMLExpressionEvaluationTest categoriesFor: #testIfFalseIfTrue!expressions-booleans!public! !
!UMLExpressionEvaluationTest categoriesFor: #testIfTrue!expressions-booleans!public! !
!UMLExpressionEvaluationTest categoriesFor: #testIfTrueIfFalse!expressions-booleans!public! !
!UMLExpressionEvaluationTest categoriesFor: #testInitialize!public! !
!UMLExpressionEvaluationTest categoriesFor: #testKeywordMessageSend!expressions-message send!public! !
!UMLExpressionEvaluationTest categoriesFor: #testNumberAssign!expressions-numbers!public! !
!UMLExpressionEvaluationTest categoriesFor: #testNumberOperations!expressions-numbers!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOr!expressions-booleans!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionAllSatisfy!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionAllSatisfy2!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionAnySatisfy!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionAnySatisfy2!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionCollect!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionCollect2!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionDo!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionReject!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionReject2!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionSelect!expressions-collections!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionSelect2!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionSelect3!public! !
!UMLExpressionEvaluationTest categoriesFor: #testOrderedCollectionSelect4!public! !
!UMLExpressionEvaluationTest categoriesFor: #testSimpleAssigns!public! !
!UMLExpressionEvaluationTest categoriesFor: #testSimpleBlockAssigns!public! !
!UMLExpressionEvaluationTest categoriesFor: #testSimpleMessageSend!expressions-message send!public! !
!UMLExpressionEvaluationTest categoriesFor: #testSimpleSend!public! !
!UMLExpressionEvaluationTest categoriesFor: #testStringAssign!expressions-strings!public! !
!UMLExpressionEvaluationTest categoriesFor: #testStringOperations!expressions-strings!public! !

