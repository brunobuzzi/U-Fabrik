"Filed out from Dolphin Smalltalk 7"!

SSWDBQueryField subclass: #SSWDBQueryTableField
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBQueryTableField guid: (GUID fromString: '{266e4dca-398e-11d5-b1df-444553540000}')!
SSWDBQueryTableField comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBQueryTableField categoriesForClass!Unclassified! !
!SSWDBQueryTableField methodsFor!

table

	"14/3/01
	
	The receiver is created to stand in place of a regular SSWDBField when that field 
	is involved in a query where the same table is referenced more than once, via more than one field.

	Each reocurrence of the table is replaced (aliased) by an SSWDBQueryTable,
	and a reference to a field belonging to that table is replaced by an instance of the receiver's class.
	
	table stores the SSWDBQueryTable to which the receiver field belongs"
	
	^table!

table: anSSWDBQueryTable

	"14/3/01
	
	The receiver is created to stand in place of a regular SSWDBField when that field 
	is involved in a query where the same table is referenced more than once, via more than one field.

	Each reocurrence of the table is replaced (aliased) by an SSWDBQueryTable,
	and a reference to a field belonging to that table is replaced by an instance of the receiver's class.
	
	table stores the SSWDBQueryTable to which the receiver field belongs"
	
	table := anSSWDBQueryTable!

writeAliasedSQLOn: aStream

	"5/8/2000

	For situations where duplicate field names are anticipated
	- write the SQL of the receiver on aStream, but use aliased names to force uniqueness"
	
	aStream nextPutAliasedField: self!

writeSQLOn: aStream

	"5/8/2000
	
	Use <table name>.<field name> notation to avoid ambiguity"
	
	self table writeSQLNameOn: aStream.
	
	aStream 
		nextPut: $.;
		nextPutAll: self name! !
!SSWDBQueryTableField categoriesFor: #table!accessing!public! !
!SSWDBQueryTableField categoriesFor: #table:!accessing!public! !
!SSWDBQueryTableField categoriesFor: #writeAliasedSQLOn:!output!public! !
!SSWDBQueryTableField categoriesFor: #writeSQLOn:!output!public! !

!SSWDBQueryTableField class methodsFor!

forField: anSSWDBField in: anSSWDBQueryTable

	"14/3/01"
	
	^self new
		field: anSSWDBField;
		table: anSSWDBQueryTable;
		yourself! !
!SSWDBQueryTableField class categoriesFor: #forField:in:!instance creation!public! !

