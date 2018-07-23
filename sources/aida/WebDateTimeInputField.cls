"Filed out from Dolphin Smalltalk 7"!

WebInputField subclass: #WebDateTimeInputField
	instanceVariableNames: 'dateInputField timeInputField'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebDateTimeInputField guid: (GUID fromString: '{4cf6048a-6e8e-4772-be70-9030d781b20c}')!
WebDateTimeInputField comment: ''!
!WebDateTimeInputField categoriesForClass!Unclassified! !
!WebDateTimeInputField methodsFor!

aspect: aSymbol for: anObject

	super aspect: aSymbol for: anObject.

	dateInputField := self add: (WebDateInputFieldForTimeStamp aspect: aSymbol for: anObject).

	timeInputField := self  add: (WebInputFieldForTimeStamp aspect: aSymbol for: anObject).

	elements := OrderedCollection with: dateInputField with: timeInputField.
!

dateInputField
	^dateInputField!

printHTMLPageOn: aStream for: aRequest on: aSession

	"super printHTMLPageOn: aStream for: aRequest on: aSession."

	dateInputField printHTMLPageOn: aStream for: aRequest on: aSession.

	aStream nextPutAll: '<br></br> '.

	timeInputField printHTMLPageOn: aStream for: aRequest on: aSession.
!

setDefaultBackground: colorString

	dateInputField attributesAt: #style put: ('background: ', colorString).
	timeInputField attributesAt: #style put: ('background: ', colorString).!

setStyle: styleString

	dateInputField attributesAt: #style put: styleString.
	timeInputField attributesAt: #style put: styleString.!

timeInputField
	^timeInputField! !
!WebDateTimeInputField categoriesFor: #aspect:for:!public! !
!WebDateTimeInputField categoriesFor: #dateInputField!accessing!private! !
!WebDateTimeInputField categoriesFor: #printHTMLPageOn:for:on:!printing!public! !
!WebDateTimeInputField categoriesFor: #setDefaultBackground:!public! !
!WebDateTimeInputField categoriesFor: #setStyle:!public! !
!WebDateTimeInputField categoriesFor: #timeInputField!accessing!private! !

