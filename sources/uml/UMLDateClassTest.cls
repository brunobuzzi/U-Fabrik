"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLDateClassTest
	instanceVariableNames: 'umlDate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDateClassTest guid: (GUID fromString: '{b47f8703-7d42-4689-82e1-967b2fd6c58b}')!
UMLDateClassTest comment: ''!
!UMLDateClassTest categoriesForClass!Unclassified! !
!UMLDateClassTest methodsFor!

setUp

	super setUp.

	umlDate := (virtualMachine virtualMachineClassNamed: 'Date') newInstance.

!

testAddDays
	| secondDate result |

	secondDate := (virtualMachine virtualMachineClassNamed: 'Date') newInstance.

	result := virtualMachine send: #addDays: to: secondDate withAll: (Array with: (10 asUMLObject: virtualMachine)).

	self assert: ((Array with: result with: secondDate) allSatisfy: [:each | each isUMLObject]).

	self assert: ((result smalltalkObject asDays - 10) = umlDate smalltalkObject asDays)!

testEqualTo
	| secondDate result |

	secondDate := (virtualMachine virtualMachineClassNamed: 'Date') newInstance.
	result := virtualMachine send: #= to: umlDate withAll: (Array with: secondDate).

	self assert: ((Array with: result with: secondDate) allSatisfy: [:each | each isUMLObject]).

	self assert: result smalltalkObject!

testGreaterThan
	| secondDate result |

	secondDate := (virtualMachine virtualMachineClassNamed: 'Date') newInstance.
	secondDate smalltalkObject: (Date today addDays: 15).

	result := virtualMachine send: #> to: umlDate withAll: (Array with: secondDate).

	self assert: ((Array with: result with: secondDate) allSatisfy: [:each | each isUMLObject]).

	self assert: result smalltalkObject not!

testLowerThan
	| secondDate result |

	secondDate := (virtualMachine virtualMachineClassNamed: 'Date') newInstance.
	secondDate smalltalkObject: (Date today subtractDays: 15).

	result := virtualMachine send: #< to: umlDate withAll: (Array with: secondDate).

	self assert: ((Array with: result with: secondDate) allSatisfy: [:each | each isUMLObject]).

	self assert: result smalltalkObject not!

testSubtractDays
	| secondDate result |

	secondDate := (virtualMachine virtualMachineClassNamed: 'Date') newInstance.

	result := virtualMachine send: #subtractDays: to: secondDate withAll: (Array with: (10 asUMLObject: virtualMachine)).

	self assert: ((Array with: result with: secondDate) allSatisfy: [:each | each isUMLObject]).

	self assert: ((result smalltalkObject asDays + 10) = umlDate smalltalkObject asDays)! !
!UMLDateClassTest categoriesFor: #setUp!public! !
!UMLDateClassTest categoriesFor: #testAddDays!public! !
!UMLDateClassTest categoriesFor: #testEqualTo!public! !
!UMLDateClassTest categoriesFor: #testGreaterThan!public! !
!UMLDateClassTest categoriesFor: #testLowerThan!public! !
!UMLDateClassTest categoriesFor: #testSubtractDays!public! !

