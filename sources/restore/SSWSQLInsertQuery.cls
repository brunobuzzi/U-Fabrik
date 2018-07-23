"Filed out from Dolphin Smalltalk 7"!

SSWSQLObjectQuery subclass: #SSWSQLInsertQuery
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLInsertQuery guid: (GUID fromString: '{6266c92f-3983-11d5-b1df-444553540000}')!
SSWSQLInsertQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLInsertQuery categoriesForClass!Unclassified! !
!SSWSQLInsertQuery methodsFor!

fields

	"17/8/2000
	
	Return the fields involved in this insert, as an SSWSQLFieldCollection"
	
	^self table allFields!

values

	"17/8/2000
	
	Return the values to be inserted by the receiver, as an SSWSQLFieldCollection"	

	^self fields collect: [ :field | field accessor valueIn: self object]!

writeSQLOn: aStream

	"17/8/2000"
	
	aStream nextPutAll: 'INSERT INTO '.
	self table writeSQLOn: aStream.
	
	aStream space; nextPut: $(.
	self fields do: [ :field | aStream nextPutAll: field name; nextPutAll: ', '].
	aStream position: (aStream position - 2).

	aStream nextPutAll: ') VALUES ('.
	self values writeSQLOn: aStream.
	aStream nextPut: $)
! !
!SSWSQLInsertQuery categoriesFor: #fields!output!public! !
!SSWSQLInsertQuery categoriesFor: #values!output!public! !
!SSWSQLInsertQuery categoriesFor: #writeSQLOn:!output!public! !

