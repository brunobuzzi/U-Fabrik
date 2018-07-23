"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLGUIEnvironmentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLGUIEnvironmentTest guid: (GUID fromString: '{33aeda8b-8cfb-416e-8585-5345409dc6e4}')!
UMLGUIEnvironmentTest comment: ''!
!UMLGUIEnvironmentTest categoriesForClass!Unclassified! !
!UMLGUIEnvironmentTest methodsFor!

collectionString

	^'
oc := OrderedCollection.newInstance
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
oc.add: exp3'!

testProcessSnalshotInDebugger
	| result code |

	code := self collectionString, String lineDelimiter,
'block := [:each | 
| val |
val := each.autogenerado
val.isBiggerThan: 15]
oc.anySatisfy: block'.
	result := self compiler  evaluateExpression: code.

	self assert: ((result className = 'False') and: [result smalltalkObject = false]).! !
!UMLGUIEnvironmentTest categoriesFor: #collectionString!expressions-collections!public! !
!UMLGUIEnvironmentTest categoriesFor: #testProcessSnalshotInDebugger!expressions-collections!public! !

