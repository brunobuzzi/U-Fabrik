"Filed out from Dolphin Smalltalk 7"!

WebTextArea subclass: #UMLWebTextArea
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebTextArea guid: (GUID fromString: '{16004ac1-b3cc-4cd2-b6fc-806fe28da635}')!
UMLWebTextArea comment: ''!
!UMLWebTextArea categoriesForClass!Unclassified! !
!UMLWebTextArea methodsFor!

value
	"if not preset, ask model adapter for value"
	^super value smalltalkObject!

value: aValue
	"set the value of this form element"
"	self adaptor isNil ifTrue: [^nil]. "

	self adaptor value:  (aValue asUMLObject: self defaultVirtualMachine).! !
!UMLWebTextArea categoriesFor: #value!accessing!public! !
!UMLWebTextArea categoriesFor: #value:!accessing!public! !

