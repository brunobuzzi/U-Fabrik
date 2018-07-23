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

testNot
	| result |

	result := virtualMachine send: #not to: boolean withAll: Array new.
	self assert: (virtualMachine falseObject == result)! !
!UMLTrueTest categoriesFor: #setUp!public! !
!UMLTrueTest categoriesFor: #testNot!public! !

