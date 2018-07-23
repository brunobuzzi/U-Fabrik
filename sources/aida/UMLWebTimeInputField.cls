"Filed out from Dolphin Smalltalk 7"!

UMLWebInputField subclass: #UMLWebTimeInputField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebTimeInputField guid: (GUID fromString: '{c5c3e390-2c66-4047-8e97-9dd194940022}')!
UMLWebTimeInputField comment: ''!
!UMLWebTimeInputField categoriesForClass!Unclassified! !
!UMLWebTimeInputField methodsFor!

value: aValue
	"set the value of this form element"
"	self adaptor isNil ifTrue: [^nil]. "

	self adaptor value:  ((Time fromString: aValue) asUMLObject: self defaultVirtualMachine).! !
!UMLWebTimeInputField categoriesFor: #value:!accessing!public! !

