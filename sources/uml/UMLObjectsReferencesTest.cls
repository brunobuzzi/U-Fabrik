"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLObjectsReferencesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLObjectsReferencesTest guid: (GUID fromString: '{40453168-109d-4b29-bbf6-e17010c902b5}')!
UMLObjectsReferencesTest comment: ''!
!UMLObjectsReferencesTest categoriesForClass!Unclassified! !
!UMLObjectsReferencesTest methodsFor!

testBasicClassesVirtualmachine

	self assert: (virtualMachine systemDictionary allSatisfy: [:each | each virtualMachine == virtualMachine])!

testBasicObjectsVirtualmachine

	self assert: (virtualMachine primitiveObjects allSatisfy: [:each | each virtualMachine == virtualMachine])!

testSuiteBasicVirtualMachine
	| result suite |

	suite := (TestSuite new)
		addTest: (UMLTrueTest selector: #testNot);
		addTest: (UMLFalseTest selector: #testNot);
		addTest: (UMLDateClassTest selector: #testAddDays);
		addTest: (UMLDateClassTest selector: #testEqualTo);
		addTest: (UMLDateClassTest selector: #testGreaterThan);
		addTest: (UMLDateClassTest selector: #testLowerThan);
		addTest: (UMLDateClassTest selector: #testSubtractDays);
		addTest: (UMLNumberTest selector: #testAbs);
		addTest: (UMLNumberTest selector: #testDivide);
		addTest: (UMLNumberTest selector: #testEqualTo);
		addTest: (UMLNumberTest selector: #testEqualTo2);
		addTest: (UMLNumberTest selector: #testGreaterThan);
		addTest: (UMLNumberTest selector: #testLowerThan);
		addTest: (UMLNumberTest selector: #testMinus);
		addTest: (UMLNumberTest selector: #testMultiplication);
		addTest: (UMLNumberTest selector: #testPlus);
		addTest: (UMLOrderedCollectionTest selector: #testAdd);
		addTest: (UMLOrderedCollectionTest selector: #testIncludes);
		addTest: (UMLOrderedCollectionTest selector: #testIsEmpty);
		addTest: (UMLOrderedCollectionTest selector: #testRemove);
		addTest: (UMLOrderedCollectionTest selector: #testSize);
		addTest: (UMLTimeTest selector: #testAddTime);
		addTest: (UMLTimeTest selector: #testAsSeconds);
		addTest: (UMLTimeTest selector: #testEqualTo);
		addTest: (UMLTimeTest selector: #testHours);
		addTest: (UMLTimeTest selector: #testMillisenconds);
		addTest: (UMLTimeTest selector: #testMinutes);
		addTest: (UMLTimeTest selector: #testSubtractTime);
	yourself.
	result := suite run.
	self assert: result hasFailures not!

testUMLModelClassesVirtualmachine
	| allClasses |

	allClasses := OrderedCollection new.
	virtualMachine umlModels do: [:each | allClasses addAll: each umlClasses].

	self assert: (allClasses allSatisfy: [:each | (each virtualMachine == virtualMachine) and: [each getMetaclass virtualMachine == virtualMachine] ]).

	!

testUMLModelVirtualmachine

	self assert: (virtualMachine umlModels allSatisfy: [:each | each virtualMachine == virtualMachine])! !
!UMLObjectsReferencesTest categoriesFor: #testBasicClassesVirtualmachine!public! !
!UMLObjectsReferencesTest categoriesFor: #testBasicObjectsVirtualmachine!public! !
!UMLObjectsReferencesTest categoriesFor: #testSuiteBasicVirtualMachine!public! !
!UMLObjectsReferencesTest categoriesFor: #testUMLModelClassesVirtualmachine!public! !
!UMLObjectsReferencesTest categoriesFor: #testUMLModelVirtualmachine!public! !

