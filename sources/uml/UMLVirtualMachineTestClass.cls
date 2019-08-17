"Filed out from Dolphin Smalltalk 7"!

UMLTestCase subclass: #UMLVirtualMachineTestClass
	instanceVariableNames: 'virtualMachine'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineTestClass guid: (GUID fromString: '{996ef4dc-7964-493e-999e-af4709452b5e}')!
UMLVirtualMachineTestClass comment: ''!
!UMLVirtualMachineTestClass categoriesForClass!Unclassified! !
!UMLVirtualMachineTestClass methodsFor!

createUMLClassNamed: aString withAttributes: aDictionary
	"The receiver create a new <UMLMetaclass> with attributes <aDictionary> where the key is the attribute name and the value its type"
	| metaclass instanceClass |

	metaclass := UMLMetaclass newNamed: aString.
	instanceClass := metaclass instanceClass.
	aDictionary keysAndValuesDo: [:attrName :attrType | | umlAttribute |
		umlAttribute := UMLClassAttribute new umlClass: instanceClass. 
		umlAttribute name: attrName asString;
			originalType: attrType;
			setTypeAsUMLType.
		instanceClass addAttribute: umlAttribute.
	].
	metaclass umlSuperclass: (self defaultVirualMachine virtualMachineMetaclassNamed: 'Object').
	instanceClass umlSuperclass: (self defaultVirualMachine virtualMachineClassNamed: 'Object').

	^instanceClass!

setUp

	super setUp.

	virtualMachine := UMLVirtualMachine default.
!

umlCompiler

	^UMLCompiler! !
!UMLVirtualMachineTestClass categoriesFor: #createUMLClassNamed:withAttributes:!public! !
!UMLVirtualMachineTestClass categoriesFor: #setUp!public! !
!UMLVirtualMachineTestClass categoriesFor: #umlCompiler!public! !

