"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPLastModifiedField
	instanceVariableNames: 'timestamp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPLastModifiedField guid: (GUID fromString: '{5afa5476-5bab-4981-95df-193be6f9a503}')!
HTTPLastModifiedField comment: ''!
!HTTPLastModifiedField categoriesForClass!Unclassified! !
!HTTPLastModifiedField methodsFor!

timestamp
	^timestamp!

timestamp: aTimestamp
	timestamp := aTimestamp.!

valuesAsStringOn: aStream 
	self timestamp asRFC1123StringOn: aStream.
	^self! !
!HTTPLastModifiedField categoriesFor: #timestamp!accessing!public! !
!HTTPLastModifiedField categoriesFor: #timestamp:!accessing!public! !
!HTTPLastModifiedField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPLastModifiedField class methodsFor!

fieldName
	^'Last-Modified'! !
!HTTPLastModifiedField class categoriesFor: #fieldName!accessing!public! !

