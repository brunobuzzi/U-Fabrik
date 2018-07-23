"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBQueryTable
	instanceVariableNames: 'table repetitionIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBQueryTable guid: (GUID fromString: '{266e4dcb-398e-11d5-b1df-444553540000}')!
SSWDBQueryTable comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBQueryTable categoriesForClass!Unclassified! !
!SSWDBQueryTable methodsFor!

= anSSWDBQueryTable

	"1/5/2002"

	^self name = anSSWDBQueryTable name and: [self repetitionIndex = anSSWDBQueryTable repetitionIndex]!

fieldAccessing: aSymbol

	"14/3/01
	
	Forward to the real table"
	
	^self table fieldAccessing: aSymbol!

hash

	"1/5/2002"

	^self name hash + self repetitionIndex!

hasStaticConditions

	"14/3/01
	
	Forward to the real table"
	
	^self table hasStaticConditions!

idField

	"14/3/01
	
	Generate an ID field with the same details as that of the receiver's table,
	but belonging to the receiver"
	
	^SSWDBQueryTableField forField: self table idField in: self!

name

	"1/5/2002"

	^self table name!

repetitionIndex

	"14/3/01
	
	repetitionIndex specifies which repetition of the receiver's table the receiver replaces.
	e.g. the first repetition (second occurrence) has a repetitionIndex of 1"
	
	^repetitionIndex!

repetitionIndex: anInteger

	"14/3/01
	
	repetitionIndex specifies which repetition of the receiver's table the receiver replaces.
	e.g. the first repetition (second occurrence) has a repetitionIndex of 1"
	
	repetitionIndex := anInteger!

table

	"14/3/01
	
	The receiver is created to stand in place of a regular SSWDBTable when 
	that table is referenced more than once in a query (in different roles).
	The second (third, fourth...) occurrences are replaced by instances of the receiver's class.
	
	table stores the original table which the receiver is standing in place of"
	
	^table!

table: anSSWDBTable

	"14/3/01
	
	The receiver is created to stand in place of a regular SSWDBTable when 
	that table is referenced more than once in a query (in different roles).
	The second (third, fourth...) occurrences are replaced by instances of the receiver's class.
	
	table stores the original table which the receiver is standing in place of"
	
	table := anSSWDBTable!

withAllFields

	self table: self table withAllFields.
	^self
!

writeSQLNameOn: aStream

	"14/3/2001
	
	Append to aStream a name for the receiver based on the repetitionIndex.
	This should be unique within any query the receiver is involved in"
	
"	self table writeSQLNameOn: aStream.
	aStream nextPut: $_.
	self repetitionIndex printOn: aStream" 
aStream nextPutAliasedTable: self!

writeSQLOn: aStream

	"5/8/2000
	
	Alias the actual table name with the receiver's aliasedTableName"
	
	aStream 
		nextPutAll: self table name;
		nextPutAll: ' AS '.
		
	self writeSQLNameOn: aStream! !
!SSWDBQueryTable categoriesFor: #=!comparing!public! !
!SSWDBQueryTable categoriesFor: #fieldAccessing:!evaluating!public! !
!SSWDBQueryTable categoriesFor: #hash!comparing!public! !
!SSWDBQueryTable categoriesFor: #hasStaticConditions!evaluating!public! !
!SSWDBQueryTable categoriesFor: #idField!evaluating!public! !
!SSWDBQueryTable categoriesFor: #name!accessing!public! !
!SSWDBQueryTable categoriesFor: #repetitionIndex!accessing!public! !
!SSWDBQueryTable categoriesFor: #repetitionIndex:!accessing!public! !
!SSWDBQueryTable categoriesFor: #table!accessing!public! !
!SSWDBQueryTable categoriesFor: #table:!accessing!public! !
!SSWDBQueryTable categoriesFor: #withAllFields!accessing!public! !
!SSWDBQueryTable categoriesFor: #writeSQLNameOn:!output!public! !
!SSWDBQueryTable categoriesFor: #writeSQLOn:!output!public! !

!SSWDBQueryTable class methodsFor!

forRepetition: anInteger of: anSSWDBTable

	"14/3/01"
	
	^self new
		table: anSSWDBTable;
		repetitionIndex: anInteger;
		yourself! !
!SSWDBQueryTable class categoriesFor: #forRepetition:of:!instance creation!public! !

