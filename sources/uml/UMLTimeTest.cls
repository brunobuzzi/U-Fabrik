"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLTimeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTimeTest guid: (GUID fromString: '{7c206e83-e603-4df7-a374-0d5bf155a33e}')!
UMLTimeTest comment: ''!
!UMLTimeTest categoriesForClass!Unclassified! !
!UMLTimeTest methodsFor!

testAddTime
	| timeNow result |

	timeNow := Time now.
	result := virtualMachine send: #addTime: to: (timeNow asUMLObject: virtualMachine) withAll: (Array with: ((Time fromString: '1:00:00') asUMLObject: virtualMachine)).

	self assert: (result smalltalkObject = (timeNow addTime: (Time fromString: '1:00:00'))).!

testAsSeconds
	| timeNow result |

	timeNow := Time now.
	result := virtualMachine send: #asSeconds to: (timeNow asUMLObject: virtualMachine) withAll: Array new.

	self assert: (result smalltalkObject = timeNow asSeconds)!

testEqualTo
	| timeNow result |

	timeNow := Time now.
	result := virtualMachine send: #= to: (timeNow asUMLObject: virtualMachine) withAll: (Array with: (timeNow asUMLObject: virtualMachine)).

	self assert: result smalltalkObject!

testHours
	| timeNow result |

	timeNow := Time now.
	result := virtualMachine send: #hours to: (timeNow asUMLObject: virtualMachine) withAll: Array new.

	self assert: (result smalltalkObject = timeNow hours)!

testMillisenconds
	| timeNow result |

	timeNow := Time now.
	result := virtualMachine send: #milliseconds to: (timeNow asUMLObject: virtualMachine) withAll: Array new.

	self assert: (result smalltalkObject = timeNow milliseconds)!

testMinutes
	| timeNow result |

	timeNow := Time now.
	result := virtualMachine send: #minutes to: (timeNow asUMLObject: virtualMachine) withAll: Array new.

	self assert: (result smalltalkObject = timeNow minutes)!

testSubtractTime
	| timeNow result |

	timeNow := Time now.
	result := virtualMachine send: #subtractTime: to: (timeNow asUMLObject: virtualMachine) withAll: (Array with: ((Time fromString: '1:00:00') asUMLObject: virtualMachine)).

	self assert: (result smalltalkObject = (timeNow subtractTime: (Time fromString: '1:00:00')))! !
!UMLTimeTest categoriesFor: #testAddTime!public! !
!UMLTimeTest categoriesFor: #testAsSeconds!public! !
!UMLTimeTest categoriesFor: #testEqualTo!public! !
!UMLTimeTest categoriesFor: #testHours!public! !
!UMLTimeTest categoriesFor: #testMillisenconds!public! !
!UMLTimeTest categoriesFor: #testMinutes!public! !
!UMLTimeTest categoriesFor: #testSubtractTime!public! !

