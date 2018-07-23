"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPServerField
	instanceVariableNames: 'productTokens'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPServerField guid: (GUID fromString: '{67fde19a-b650-4702-a8e2-0abd9bdfd493}')!
HTTPServerField comment: ''!
!HTTPServerField categoriesForClass!Unclassified! !
!HTTPServerField methodsFor!

productTokens
	^productTokens!

productTokens: aString 
	productTokens := aString.
	^self!

valuesAsStringOn: aStream 
	aStream nextPutAll: self productTokens.
	^self! !
!HTTPServerField categoriesFor: #productTokens!accessing!public! !
!HTTPServerField categoriesFor: #productTokens:!accessing!public! !
!HTTPServerField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPServerField class methodsFor!

fieldName
	^'Server'! !
!HTTPServerField class categoriesFor: #fieldName!accessing!public! !

