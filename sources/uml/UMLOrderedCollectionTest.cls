"Filed out from Dolphin Smalltalk 7"!

UMLCollectionTest subclass: #UMLOrderedCollectionTest
	instanceVariableNames: 'collection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLOrderedCollectionTest guid: (GUID fromString: '{54f4860a-14b9-4ad3-987a-10b5884edf66}')!
UMLOrderedCollectionTest comment: ''!
!UMLOrderedCollectionTest categoriesForClass!Unclassified! !
!UMLOrderedCollectionTest methodsFor!

setUp

	super setUp.

	collection := (virtualMachine virtualMachineClassNamed: 'OrderedCollection') newInstanceWith: OrderedCollection new.

!

testAdd
	| result |

	result := virtualMachine send: #add: to: collection withAll: (Array with: virtualMachine trueObject).

	self assert: result isUMLObject.

	self assert: (collection smalltalkObject includes: virtualMachine trueObject)!

testAddAll
	| parsedCode result code |

	code := ' OrderedCollection new addAll: #(1 2); yourself'.

	parsedCode := self umlCompiler parseExpression: code. 
	result := virtualMachine executeSequenceNode: parsedCode in: nil.

	self assert: ((result smalltalkObject at: 1) smalltalkObject = 1).
	self assert: ((result smalltalkObject at: 2) smalltalkObject = 2).
!

testIncludes
	| result |

	collection smalltalkObject add: virtualMachine nilObject.
	result := virtualMachine send: #includes: to: collection withAll: (Array with: virtualMachine nilObject).
	self assert: result isUMLObject.
	self assert: (result smalltalkObject).

	collection smalltalkObject remove: virtualMachine nilObject.
	result := virtualMachine send: #includes: to: collection withAll: (Array with: virtualMachine nilObject).
	self assert: result isUMLObject.
	self assert: (result smalltalkObject not).

!

testIsEmpty
	| result |

	collection smalltalkObject add: virtualMachine.
	result := virtualMachine send: #isEmpty to: collection withAll: (Array new).
	self assert: result isUMLObject.
	self assert: (result smalltalkObject not).

	collection smalltalkObject remove: virtualMachine.
	result := virtualMachine send: #isEmpty to: collection withAll: (Array new).
	self assert: result isUMLObject.
	self assert: (result smalltalkObject).
!

testRemove
	| result |

	collection smalltalkObject add: virtualMachine falseObject.

	result := virtualMachine send: #remove: to: collection withAll: (Array with: virtualMachine falseObject).

	self assert: result isUMLObject.

	self assert: (collection smalltalkObject includes: virtualMachine falseObject) not!

testSize
	| result |

	collection smalltalkObject add: virtualMachine trueObject.
	result := virtualMachine send: #size to: collection withAll: (Array new).
	self assert: result isUMLObject.
	self assert: (result smalltalkObject = 1).

	collection smalltalkObject add: virtualMachine falseObject.
	result := virtualMachine send: #size to: collection withAll: (Array new).
	self assert: result isUMLObject.
	self assert: (result smalltalkObject = 2).
! !
!UMLOrderedCollectionTest categoriesFor: #setUp!public! !
!UMLOrderedCollectionTest categoriesFor: #testAdd!public! !
!UMLOrderedCollectionTest categoriesFor: #testAddAll!public! !
!UMLOrderedCollectionTest categoriesFor: #testIncludes!public! !
!UMLOrderedCollectionTest categoriesFor: #testIsEmpty!public! !
!UMLOrderedCollectionTest categoriesFor: #testRemove!public! !
!UMLOrderedCollectionTest categoriesFor: #testSize!public! !

