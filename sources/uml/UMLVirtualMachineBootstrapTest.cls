"Filed out from Dolphin Smalltalk 7"!

UMLVirtualMachineTestClass subclass: #UMLVirtualMachineBootstrapTest
	instanceVariableNames: 'vmBootstrap'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineBootstrapTest guid: (GUID fromString: '{9a788329-ff11-4239-a2b5-fefa8eabb2e0}')!
UMLVirtualMachineBootstrapTest comment: ''!
!UMLVirtualMachineBootstrapTest categoriesForClass!Unclassified! !
!UMLVirtualMachineBootstrapTest methodsFor!

setUp

	vmBootstrap := UMLVirtualMachineBootstrap new.

	vmBootstrap createVirtualMachineFromVersion1_2.

	virtualMachine := vmBootstrap virtualMachine.!

testClassesInVirtualMachinePackages
	| collections externalFiles views values vmCore webServer |

	collections := virtualMachine getPackageNamed: 'Collections' ifNone: [self assert: false].
	externalFiles := virtualMachine getPackageNamed: 'External Files' ifNone: [self assert: false].
	views := virtualMachine getPackageNamed: 'Views' ifNone: [self assert: false].
	values := virtualMachine getPackageNamed: 'Values' ifNone: [self assert: false].
	vmCore := virtualMachine getPackageNamed: 'VM Core' ifNone: [self assert: false].
	webServer := virtualMachine getPackageNamed: 'Web Server' ifNone: [self assert: false].

	self assert: (#('Array' 'Collection' 'Dictionary' 'Interval' 'OrderedCollection') allSatisfy: [:clsName | collections hasClassNamed: clsName]).
	self assert: (#('ExternalFile' 'MSExcel' 'MSOffice' 'MSPowerPoint' 'MSText' 'MSWord') allSatisfy: [:clsName | externalFiles hasClassNamed: clsName]).
	self assert: (#('View') allSatisfy: [:clsName | views hasClassNamed: clsName]).
	self assert: (#('Blob' 'Date' 'Number' 'String' 'Time' 'TimeStamp') allSatisfy: [:clsName | values hasClassNamed: clsName]).
	self assert: (#('Block' 'Boolean' 'Error' 'Exception' 'False' 'MessageBox' 'Object' 'ParsedMethod' 'TreeModel' 'True' 'UndefinedObject' 'VMClass' 'VMClassBehavior' 'VMInstance' 'VMMetaclass' 'Warning') allSatisfy: [:clsName | vmCore hasClassNamed: clsName]).
	self assert: (#('EditableObject' 'WebApplication' 'WebElement') allSatisfy: [:clsName | webServer hasClassNamed: clsName]).

	self assert: true!

testCollectionsTrait
	| trait |

	trait := virtualMachine getTraitNamed: 'UML Relations Methods' ifNone: [self assert: false].

	self assert: (#(#all:satisfy: #in:select: #countNumberOf: #basicRemove: #basicAdd: #in:detect: #mutualAdd: #remove: #any:satisfy: #in:collect: #add: #includes: #mutualRemove: #in:do: #in:reject:)
			allSatisfy: [:mtdName |  trait includesMessage: mtdName]).!

testFalse

	self assert: (virtualMachine falseObject className = 'False').

	self assert: (virtualMachine falseObject smalltalkObject = false).
	!

testFileManipulationTrait
	| trait |

	trait := virtualMachine getTraitNamed: 'File Manipulation' ifNone: [self assert: false].

	self assert: (#(#showApplication #openFileIn: #fileName #free #createFileIn: #save #open) allSatisfy: [:mtdName |  trait includesMessage: mtdName]).!

testNil

	self assert: (virtualMachine nilObject className = 'UndefinedObject').

	self assert: (virtualMachine nilObject smalltalkObject = nil).
	!

testSystemDictionaryClasses
	| sysDictClassesNames |

	sysDictClassesNames := #('VMMetaclass' 'WebApplication' 'Blob' 'VMClass' 'OrderedCollection' 'Error' 'ParsedMethod' 'Dictionary' 'Object' 'Warning' 'View' 'Block' 'UndefinedObject' 'Interval' 'MSWord' 'String' 'Boolean' 'Exception' 'Time' 'MSExcel' 'EditableObject' 'MSOffice' 'MessageBox' 'VMInstance' 'TimeStamp' 'True' 'VMClassBehavior' 'Array' 'MSText' 'Number' 'MSPowerPoint' 'Collection' 'ExternalFile' 'TreeModel' 'False' 'Date' 'WebElement').

	self assert: (sysDictClassesNames allSatisfy: [:clsName | virtualMachine includesClassNamed: clsName]).

	self assert: (sysDictClassesNames allSatisfy: [:clsName | | vmClass | 
				vmClass := (virtualMachine virtualMachineClassNamed: clsName ifNone: [self assert: false]).
				vmClass class == UMLVirtualMachineClass]).

	self assert: (sysDictClassesNames allSatisfy: [:clsName | | vmClass | 
				vmClass := (virtualMachine virtualMachineClassNamed: clsName ifNone: [self assert: false]).
				vmClass metaclass class == UMLVirtualMachineMetaclass]).
!

testTraits

	self assert: (virtualMachine includesTraitNamed: 'File Manipulation').

	self assert: (virtualMachine includesTraitNamed: 'UML Relations Methods').
!

testTrue

	self assert: (virtualMachine trueObject className = 'True').

	self assert: (virtualMachine trueObject smalltalkObject = true).
	!

testTypeMapping

	self assert: ((UMLClassAttribute mapUMLOriginalType: 'boolean') className = 'Boolean').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'char') className = 'String').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'date') className = 'Date').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'decimal') className = 'Number').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'false') className = 'Boolean').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'true') className = 'Boolean').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'float') className = 'Number').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'int') className = 'Number').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'integer') className = 'Number').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'num') className = 'Number').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'String') className = 'String').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'time') className = 'Time').
	self assert: ((UMLClassAttribute mapUMLOriginalType: 'timestamp') className = 'TimeStamp').!

testVirtualMachinePackagesNames

	self assert: (#('Collections' 'External Files' 'Views' 'Values' 'VM Core' 'Web Server') allSatisfy: [:pkName | virtualMachine packages anySatisfy: [:each | each name = pkName]]).
	
! !
!UMLVirtualMachineBootstrapTest categoriesFor: #setUp!public! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testClassesInVirtualMachinePackages!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testCollectionsTrait!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testFalse!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testFileManipulationTrait!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testNil!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testSystemDictionaryClasses!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testTraits!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testTrue!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testTypeMapping!public!tests! !
!UMLVirtualMachineBootstrapTest categoriesFor: #testVirtualMachinePackagesNames!public!tests! !

