"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPExpiresField
	instanceVariableNames: 'timestamp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPExpiresField guid: (GUID fromString: '{b7bb9948-84c9-4896-a986-a56848ff60c7}')!
HTTPExpiresField comment: ''!
!HTTPExpiresField categoriesForClass!Unclassified! !
!HTTPExpiresField methodsFor!

timestamp
	^timestamp!

timestamp: aTimestamp
	timestamp := aTimestamp.!

valuesAsStringOn: aStream 
	self timestamp asRFC1123StringOn: aStream.
	^self! !
!HTTPExpiresField categoriesFor: #timestamp!accessing!public! !
!HTTPExpiresField categoriesFor: #timestamp:!accessing!public! !
!HTTPExpiresField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPExpiresField class methodsFor!

fieldName
	^'Expires'! !
!HTTPExpiresField class categoriesFor: #fieldName!accessing!public! !

