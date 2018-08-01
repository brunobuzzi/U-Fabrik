"Filed out from Dolphin Smalltalk 7"!

UMLClass subclass: #UMLVirtualMachineClass
	instanceVariableNames: 'smalltalkClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineClass guid: (GUID fromString: '{cbb2910f-dbfb-47d1-8c64-ac13d6523d9e}')!
UMLVirtualMachineClass comment: 'This class is an UMLClass which is embebed inside the Virtual Machine. 

This class is already created when anUMLModel is loaded, because the Virtual Machine gives a small number of primitives with it''s own classes.

Instances Variables:

smalltalkClass		- indicates the Smalltalk counterpart class of the receiver.'!
!UMLVirtualMachineClass categoriesForClass!Unclassified! !
!UMLVirtualMachineClass methodsFor!

belongToVirtualMachine

	^true!

defaultInstanceClass
	^UMLVirtualMachineInstance!

fileOutAsXmlTo: aStream

	super fileOutAsXmlTo: aStream.

	aStream nextPutAll: '<StClass>', smalltalkClass name, '</StClass>'.!

newInstance

	^(self defaultInstanceClass umlClass: self) 
		"runBehavior: 'initialize';"
		yourself.!

newInstanceWith: smalltalkObject

	^(self defaultInstanceClass umlClass: self with: smalltalkObject) 
		yourself.!

newSmalltalkObject
	^smalltalkClass newForUML!

smalltalkClass
	^smalltalkClass!

smalltalkClass: anObject
	smalltalkClass := anObject!

smalltalkObject

	^smalltalkClass!

type
	^self! !
!UMLVirtualMachineClass categoriesFor: #belongToVirtualMachine!public! !
!UMLVirtualMachineClass categoriesFor: #defaultInstanceClass!public! !
!UMLVirtualMachineClass categoriesFor: #fileOutAsXmlTo:!binary filing!public! !
!UMLVirtualMachineClass categoriesFor: #newInstance!public! !
!UMLVirtualMachineClass categoriesFor: #newInstanceWith:!public! !
!UMLVirtualMachineClass categoriesFor: #newSmalltalkObject!public! !
!UMLVirtualMachineClass categoriesFor: #smalltalkClass!accessing!private! !
!UMLVirtualMachineClass categoriesFor: #smalltalkClass:!accessing!private! !
!UMLVirtualMachineClass categoriesFor: #smalltalkObject!public! !
!UMLVirtualMachineClass categoriesFor: #type!public! !

!UMLVirtualMachineClass class methodsFor!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'vmclass3.png'.
	"
	^Icon fromFile: 'icons/vmclass01.ico'! !
!UMLVirtualMachineClass class categoriesFor: #icon!constants!public! !

