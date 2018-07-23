"Filed out from Dolphin Smalltalk 7"!

WebDateInputField subclass: #WebDateInputFieldForTimeStamp
	instanceVariableNames: 'stringDate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebDateInputFieldForTimeStamp guid: (GUID fromString: '{b54a7440-2bc8-4f6e-a9ba-61d8edf9d832}')!
WebDateInputFieldForTimeStamp comment: ''!
!WebDateInputFieldForTimeStamp categoriesForClass!Unclassified! !
!WebDateInputFieldForTimeStamp methodsFor!

prepareAttributesToPrintOn: aSession

	self value notNil ifTrue:
		[self attributesAt: #value put: 
			(WebFormElement autoConvertAndEncodeValue: self value smalltalkObject date)]!

stringDate
	^stringDate!

stringDate: anObject
	stringDate := anObject!

value: aValue
	"set the value of this form element"
"	self adaptor isNil ifTrue: [^nil]. "
	| date currentTimeStamp |

	date := Date fromString: aValue format: 'dd.mm.YYYY'.
	"time := Time fromString: (parent timeInputField attributesAt: #value)."
	currentTimeStamp := self adaptor value.
	currentTimeStamp smalltalkObject date: date.

	self adaptor value:  currentTimeStamp ! !
!WebDateInputFieldForTimeStamp categoriesFor: #prepareAttributesToPrintOn:!public! !
!WebDateInputFieldForTimeStamp categoriesFor: #stringDate!accessing!private! !
!WebDateInputFieldForTimeStamp categoriesFor: #stringDate:!accessing!private! !
!WebDateInputFieldForTimeStamp categoriesFor: #value:!public! !

