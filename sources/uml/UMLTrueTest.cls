"Filed out from Dolphin Smalltalk 7"!

UMLBooleanTest subclass: #UMLTrueTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTrueTest guid: (GUID fromString: '{fe248577-99c3-40b8-8732-f4127bf6c1ae}')!
UMLTrueTest comment: ''!
!UMLTrueTest categoriesForClass!Unclassified! !
!UMLTrueTest methodsFor!

setUp

	super setUp.

	boolean := virtualMachine trueObject.!

testIfFalse
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '(2=3) ifFalse: [| a | a := 2]'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Number').
	self assert: (result smalltalkObject = 2).

	parsedCode := self umlCompiler parseExpression: '(2=3) ifFalse: []'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'UndefinedObject').
	self assert: (result smalltalkObject = nil).!

testIfTrue
	| parsedCode result |

	parsedCode := self umlCompiler parseExpression: '(2=2) ifTrue: [| a | a := 2]'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Number').
	self assert: (result smalltalkObject = 2).

	parsedCode := self umlCompiler parseExpression: '(2=2) ifTrue: []'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'UndefinedObject').
	self assert: (result smalltalkObject = nil).!

testIfTrueIfFalse
	| parsedCode result stack |

	parsedCode := self umlCompiler parseExpression: '(2=2) ifTrue: [| a | a := 2] ifFalse: [| b | b := 3]'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Number').
	self assert: (result smalltalkObject = 2).

	parsedCode := self umlCompiler parseExpression: '(2=3) ifTrue: [| a | a := 2] ifFalse: [| b | b := 3]'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	self assert: (result umlClass name = 'Number').
	self assert: (result smalltalkObject = 3).

	parsedCode := self umlCompiler parseExpression: '(2=2) 
		ifTrue: [| a b c d e | 
			a := 1. b := 2. c := 3. d := 4. e := 5.] 
		ifFalse: []'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	stack := result stack.
	self assert: (stack hasSequenceTemporaryNamed: 'a' withStValue: 1).
	self assert: (stack hasSequenceTemporaryNamed: 'b' withStValue: 2).
	self assert: (stack hasSequenceTemporaryNamed: 'c' withStValue: 3).
	self assert: (stack hasSequenceTemporaryNamed: 'd' withStValue: 4).
	self assert: (stack hasSequenceTemporaryNamed: 'e' withStValue: 5).

	parsedCode := self umlCompiler parseExpression: '(3=2) 
		ifFalse: [| a b c d e | 
			a := 1. b := 2. c := 3. d := 4. e := 5.] 
		ifTrue: []'.
	result := virtualMachine executeSequenceNode: parsedCode in: nil.
	stack := result stack.
	self assert: (stack hasSequenceTemporaryNamed: 'a' withStValue: 1).
	self assert: (stack hasSequenceTemporaryNamed: 'b' withStValue: 2).
	self assert: (stack hasSequenceTemporaryNamed: 'c' withStValue: 3).
	self assert: (stack hasSequenceTemporaryNamed: 'd' withStValue: 4).
	self assert: (stack hasSequenceTemporaryNamed: 'e' withStValue: 5).

!

testNot
	| result |

	result := virtualMachine send: #not to: boolean withAll: Array new.
	self assert: (virtualMachine falseObject == result)!

testTrueObject

	self assert: (virtualMachine trueObject smalltalkObject == true)!

testTrueObjectClass

	self assert: (virtualMachine trueObject className = 'True')! !
!UMLTrueTest categoriesFor: #setUp!public! !
!UMLTrueTest categoriesFor: #testIfFalse!public! !
!UMLTrueTest categoriesFor: #testIfTrue!public! !
!UMLTrueTest categoriesFor: #testIfTrueIfFalse!public! !
!UMLTrueTest categoriesFor: #testNot!public! !
!UMLTrueTest categoriesFor: #testTrueObject!public! !
!UMLTrueTest categoriesFor: #testTrueObjectClass!public! !

