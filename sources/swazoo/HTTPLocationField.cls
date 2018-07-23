"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPLocationField
	instanceVariableNames: 'uri'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPLocationField guid: (GUID fromString: '{a5ab4986-1547-4730-bb77-727629b78864}')!
HTTPLocationField comment: ''!
!HTTPLocationField categoriesForClass!Unclassified! !
!HTTPLocationField methodsFor!

uri
	^uri!

uri: aSwazooURI 
	uri := aSwazooURI.
	^self!

uriString: aString 
	uri := SwazooURI fromString: aString.
	^self!

valuesAsStringOn: aStream 
	self uri printOn: aStream.
	^self! !
!HTTPLocationField categoriesFor: #uri!accessing!public! !
!HTTPLocationField categoriesFor: #uri:!accessing!public! !
!HTTPLocationField categoriesFor: #uriString:!accessing!public! !
!HTTPLocationField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPLocationField class methodsFor!

fieldName
	^'Location'! !
!HTTPLocationField class categoriesFor: #fieldName!accessing!public! !

