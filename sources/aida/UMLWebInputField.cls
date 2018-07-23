"Filed out from Dolphin Smalltalk 7"!

WebInputField subclass: #UMLWebInputField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebInputField guid: (GUID fromString: '{82fd7fb8-5f60-4d66-9007-2c7572947ce3}')!
UMLWebInputField comment: ''!
!UMLWebInputField categoriesForClass!Unclassified! !
!UMLWebInputField methodsFor!

value
	"if not preset, ask model adapter for value"

	^super value smalltalkObject!

value: aValue
	"set the value of this form element"
"	self adaptor isNil ifTrue: [^nil]. "

	self adaptor value:  (aValue asUMLObject: self defaultVirtualMachine).! !
!UMLWebInputField categoriesFor: #value!accessing!public! !
!UMLWebInputField categoriesFor: #value:!accessing!public! !

