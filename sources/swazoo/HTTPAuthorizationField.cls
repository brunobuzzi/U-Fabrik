"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPAuthorizationField
	instanceVariableNames: 'credentials'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPAuthorizationField guid: (GUID fromString: '{92886b02-e962-4c7d-9915-d31cd058e06f}')!
HTTPAuthorizationField comment: ''!
!HTTPAuthorizationField categoriesForClass!Unclassified! !
!HTTPAuthorizationField methodsFor!

credentials
	^credentials!

parseValueFrom: aString 
	credentials := HTTPString trimBlanksFrom: aString.
	^self!

valuesAsStringOn: aStream 
	aStream nextPutAll: self credentials.
	^self! !
!HTTPAuthorizationField categoriesFor: #credentials!accessing!public! !
!HTTPAuthorizationField categoriesFor: #parseValueFrom:!private! !
!HTTPAuthorizationField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPAuthorizationField class methodsFor!

fieldName
	^'Authorization'!

newForFieldName: fieldNameString withValueFrom: fieldValueString 
	"^an HTTPAuthorizationField
I return an instance of one of my concrete subclasses.  To get to this point, the field name *must* be 'AUTHORIZATION'."

	| sourceStream schemeName |
	sourceStream := ReadStream on: fieldValueString.
	schemeName := sourceStream upTo: Character space.
	^schemeName = 'Basic' 
		ifTrue: [HTTPAuthorizationBasicField newWithValueFrom: sourceStream upToEnd]
		ifFalse: [HTTPAuthorizationDigestField newWithValueFrom: sourceStream upToEnd]! !
!HTTPAuthorizationField class categoriesFor: #fieldName!accessing!public! !
!HTTPAuthorizationField class categoriesFor: #newForFieldName:withValueFrom:!private! !

