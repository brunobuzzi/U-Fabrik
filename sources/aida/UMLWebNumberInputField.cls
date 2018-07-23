"Filed out from Dolphin Smalltalk 7"!

UMLWebInputField subclass: #UMLWebNumberInputField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebNumberInputField guid: (GUID fromString: '{09253e24-bfbe-40ee-bcc3-c66aa0ce4575}')!
UMLWebNumberInputField comment: ''!
!UMLWebNumberInputField categoriesForClass!Unclassified! !
!UMLWebNumberInputField methodsFor!

value: aValue
	"set the value of this form element"
"	self adaptor isNil ifTrue: [^nil]. "

	self adaptor value:  (aValue asUMLObject: self defaultVirtualMachine).! !
!UMLWebNumberInputField categoriesFor: #value:!accessing!public! !

