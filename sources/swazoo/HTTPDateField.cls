"Filed out from Dolphin Smalltalk 7"!

SpecificHeaderField subclass: #HTTPDateField
	instanceVariableNames: 'date'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPDateField guid: (GUID fromString: '{2406914a-0b02-4500-a155-3a9281378f04}')!
HTTPDateField comment: ''!
!HTTPDateField categoriesForClass!Unclassified! !
!HTTPDateField methodsFor!

date
	^date!

date: aDate 
	"^self
Note that this is an HTTP Date, and so is really a timestamp :-/ "

	date := aDate.
	^self!

valuesAsStringOn: aStream 
	self date asRFC1123StringOn: aStream.
	^self! !
!HTTPDateField categoriesFor: #date!accessing!public! !
!HTTPDateField categoriesFor: #date:!accessing!public! !
!HTTPDateField categoriesFor: #valuesAsStringOn:!printing!public! !

!HTTPDateField class methodsFor!

fieldName
	^'Date'! !
!HTTPDateField class categoriesFor: #fieldName!accessing!public! !

