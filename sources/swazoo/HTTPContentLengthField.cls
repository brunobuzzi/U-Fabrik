"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPContentLengthField
	instanceVariableNames: 'contentLength'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPContentLengthField guid: (GUID fromString: '{9ade932c-1382-48b4-831c-e95154a31351}')!
HTTPContentLengthField comment: ''!
!HTTPContentLengthField categoriesForClass!Unclassified! !
!HTTPContentLengthField methodsFor!

contentLength
	^contentLength!

contentLength: anInteger
	contentLength := anInteger!

parseValueFrom: aString
	contentLength := aString asNumber.
	^self!

valuesAsStringOn: aStream 
	self contentLength printOn: aStream.
	^self! !
!HTTPContentLengthField categoriesFor: #contentLength!accessing!public! !
!HTTPContentLengthField categoriesFor: #contentLength:!accessing!public! !
!HTTPContentLengthField categoriesFor: #parseValueFrom:!private! !
!HTTPContentLengthField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPContentLengthField class methodsFor!

fieldName
	^'Content-Length'! !
!HTTPContentLengthField class categoriesFor: #fieldName!accessing!public! !

