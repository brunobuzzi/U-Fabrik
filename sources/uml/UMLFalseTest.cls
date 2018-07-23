"Filed out from Dolphin Smalltalk 7"!

UMLBooleanTest subclass: #UMLFalseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLFalseTest guid: (GUID fromString: '{ffde43c6-1132-4944-a9d8-1daeeeed4e75}')!
UMLFalseTest comment: ''!
!UMLFalseTest categoriesForClass!Unclassified! !
!UMLFalseTest methodsFor!

setUp

	super setUp.

	boolean := virtualMachine falseObject.!

testNot
	| result |

	result := virtualMachine send: #not to: boolean withAll: Array new.
	self assert: (virtualMachine trueObject == result)! !
!UMLFalseTest categoriesFor: #setUp!public! !
!UMLFalseTest categoriesFor: #testNot!public! !

