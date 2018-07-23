"Filed out from Dolphin Smalltalk 7"!

WebInputField subclass: #WebInputFieldForTimeStamp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebInputFieldForTimeStamp guid: (GUID fromString: '{1c31f97f-9b48-4ae8-b29a-4b16716d4d9e}')!
WebInputFieldForTimeStamp comment: ''!
!WebInputFieldForTimeStamp categoriesForClass!Unclassified! !
!WebInputFieldForTimeStamp methodsFor!

prepareAttributesToPrintOn: aSession

	self value notNil ifTrue:
		[self attributesAt: #value put: 
			(WebFormElement autoConvertAndEncodeValue: self value smalltalkObject time)]!

value: aValue
	"set the value of this form element"
"	self adaptor isNil ifTrue: [^nil]. "
	| time currentTimeStamp |

	time := Time fromString: aValue.

	currentTimeStamp := self adapt value.
	currentTimeStamp smalltalkObject time: time.
	
	self adaptor value:  currentTimeStamp.! !
!WebInputFieldForTimeStamp categoriesFor: #prepareAttributesToPrintOn:!public! !
!WebInputFieldForTimeStamp categoriesFor: #value:!public! !

