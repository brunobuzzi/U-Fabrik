"Filed out from Dolphin Smalltalk 7"!

WebDateInputField subclass: #UMLWebDateInputField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebDateInputField guid: (GUID fromString: '{a10a2e2c-e284-4455-9fcd-a6d06f57aee2}')!
UMLWebDateInputField comment: ''!
!UMLWebDateInputField categoriesForClass!Unclassified! !
!UMLWebDateInputField methodsFor!

value
	"if not preset, ask model adapter for value"
	^super value smalltalkObject!

value: aValue
	"set the value of this form element"
"	self adaptor isNil ifTrue: [^nil]. "
	| date |

	self adaptor value:  aValue! !
!UMLWebDateInputField categoriesFor: #value!accessing!public! !
!UMLWebDateInputField categoriesFor: #value:!public! !

