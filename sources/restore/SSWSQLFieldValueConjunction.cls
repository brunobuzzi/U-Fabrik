"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWSQLFieldValueConjunction
	instanceVariableNames: 'field value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLFieldValueConjunction guid: (GUID fromString: '{6266c928-3983-11d5-b1df-444553540000}')!
SSWSQLFieldValueConjunction comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLFieldValueConjunction categoriesForClass!Unclassified! !
!SSWSQLFieldValueConjunction methodsFor!

= anSSWSQLFieldValueConjunction

	^self field = anSSWSQLFieldValueConjunction field and: [self value = anSSWSQLFieldValueConjunction value]!

field

	"5/8/2000
	
	field stores the single field which is the subject of the receiver SQL clause"
	
	^field!

field: anSSWSQLField

	"5/8/2000
	
	field stores the single field which is the subject of the receiver SQL clause"
	
	field := anSSWSQLField!

hash

	^self table hash bitXor: self field hash
!

value

	"5/8/2000
	
	value stores an object which is associated with the field in the receiver clause"
	
	^value!

value: anObject

	"5/8/2000
	
	value stores an object which is associated with the field in the receiver clause"
	
	value := anObject!

writeConjunctionSQLOn: aStream

	"Private - 5/8/2000
	
	Append to aStream whatever String/Character joins
	the receiver's field to the receiver's value"
	
	self subclassResponsibility!

writeFieldSQLOn: aStream

	"Private - 17/9/2001"
	
	self field writeSQLOn: aStream!

writeSQLOn: aStream

	"Created 5/8/2000
	Modified: 17/9/2001	Refactored to allow overriding (issue#0009)"
	
	self writeFieldSQLOn: aStream.
	aStream space.
	self writeConjunctionSQLOn: aStream.
	aStream space.
	self writeValueSQLOn: aStream!

writeValueSQLOn: aStream

	"Private - 17/9/2001"
	
	self value writeSQLOn: aStream! !
!SSWSQLFieldValueConjunction categoriesFor: #=!comparing!public! !
!SSWSQLFieldValueConjunction categoriesFor: #field!accessing!public! !
!SSWSQLFieldValueConjunction categoriesFor: #field:!accessing!public! !
!SSWSQLFieldValueConjunction categoriesFor: #hash!comparing!public! !
!SSWSQLFieldValueConjunction categoriesFor: #value!accessing!public! !
!SSWSQLFieldValueConjunction categoriesFor: #value:!accessing!public! !
!SSWSQLFieldValueConjunction categoriesFor: #writeConjunctionSQLOn:!output!private! !
!SSWSQLFieldValueConjunction categoriesFor: #writeFieldSQLOn:!output!private! !
!SSWSQLFieldValueConjunction categoriesFor: #writeSQLOn:!output!public! !
!SSWSQLFieldValueConjunction categoriesFor: #writeValueSQLOn:!output!private! !

!SSWSQLFieldValueConjunction class methodsFor!

field: anSSWDBField value: aValue

	"21/1/2001"
	
	^self new
		field: anSSWDBField;
		value: aValue;
		yourself! !
!SSWSQLFieldValueConjunction class categoriesFor: #field:value:!instance creation!public! !

