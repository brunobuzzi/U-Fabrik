"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLNumberTest
	instanceVariableNames: 'number'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLNumberTest guid: (GUID fromString: '{198980a1-817c-4a47-b6de-248fc66b30bb}')!
UMLNumberTest comment: ''!
!UMLNumberTest categoriesForClass!Unclassified! !
!UMLNumberTest methodsFor!

setUp

	super setUp.

	number := 1 asUMLObject: virtualMachine.!

testAbs
	| result |

	number := -9 asUMLObject: virtualMachine.

	result := virtualMachine send: #abs to: number withAll: Array new.

	self assert: (result smalltalkObject = 9)!

testDivide
	| result |

	number := 15 asUMLObject: virtualMachine.

	result := virtualMachine send: #/ to: number withAll: (Array with: (5 asUMLObject: virtualMachine)).

	self assert: (result smalltalkObject = 3)!

testEqualTo
	| result |

	number := 9 asUMLObject: virtualMachine.

	result := virtualMachine send: #= to: number withAll: (Array with: (9 asUMLObject: virtualMachine)).

	self assert: result smalltalkObject!

testEqualTo2
	| result |

	result := virtualMachine send: #= to: (9 asUMLObject: virtualMachine) withAll: (Array with: (9 asUMLObject: virtualMachine)).

	self assert: result smalltalkObject!

testGreaterThan
	| result |

	result := virtualMachine send: #> to: (9 asUMLObject: virtualMachine) withAll: (Array with: (8 asUMLObject: virtualMachine)).

	self assert: result smalltalkObject.

	result := virtualMachine send: #> to: (9 asUMLObject: virtualMachine) withAll: (Array with: (18 asUMLObject: virtualMachine)).

	self assert: result smalltalkObject not.!

testLowerThan
	| result |

	result := virtualMachine send: #< to: (9 asUMLObject: virtualMachine) withAll: (Array with: (8 asUMLObject: virtualMachine)).

	self assert: result smalltalkObject not.

	result := virtualMachine send: #< to: (9 asUMLObject: virtualMachine) withAll: (Array with: (18 asUMLObject: virtualMachine)).

	self assert: result smalltalkObject.!

testMinus
	| result |

	number := 9 asUMLObject: virtualMachine.

	result := virtualMachine send: #- to: number withAll: (Array with: (8 asUMLObject: virtualMachine)).

	self assert: (result smalltalkObject = 1)!

testMultiplication
	| result |

	number := 9 asUMLObject: virtualMachine.

	result := virtualMachine send: #* to: number withAll: (Array with: (8 asUMLObject: virtualMachine)).

	self assert: (result smalltalkObject = 72)!

testPlus
	| result |

	number := 9 asUMLObject: virtualMachine.

	result := virtualMachine send: #+ to: number withAll: (Array with: (8 asUMLObject: virtualMachine)).

	self assert: (result smalltalkObject = 17)! !
!UMLNumberTest categoriesFor: #setUp!public! !
!UMLNumberTest categoriesFor: #testAbs!public! !
!UMLNumberTest categoriesFor: #testDivide!public! !
!UMLNumberTest categoriesFor: #testEqualTo!public! !
!UMLNumberTest categoriesFor: #testEqualTo2!public! !
!UMLNumberTest categoriesFor: #testGreaterThan!public! !
!UMLNumberTest categoriesFor: #testLowerThan!public! !
!UMLNumberTest categoriesFor: #testMinus!public! !
!UMLNumberTest categoriesFor: #testMultiplication!public! !
!UMLNumberTest categoriesFor: #testPlus!public! !

