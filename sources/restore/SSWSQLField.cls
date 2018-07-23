"Filed out from Dolphin Smalltalk 7"!

SSWSQLTableComponent subclass: #SSWSQLField
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLField guid: (GUID fromString: '{767240f8-a555-11d5-b1e0-444553540000}')!
SSWSQLField comment: ''!
!SSWSQLField categoriesForClass!Unclassified! !
!SSWSQLField methodsFor!

= anSSWDBField

	"27/4/2002"

	^self == anSSWDBField 
		or: [self table = anSSWDBField table and: [self name = anSSWDBField name]]!

fieldNamed: aString

	"27/4/02

	Polymorphic with field collections"

	^self name = aString 
		ifTrue: [self]
		ifFalse: [nil]!

forUpdate

	"17/9/2001	(issue#0009)

	Return a field equivalent to the receiver, but for use in an Update query.
	At present, ReStore only supports updates against one table (i.e. no joins).
	Hence the <table name>. prefix is unnecessary in update queries
	 - in fact it is specifically disallowed in some DBs"

	"An unquoted version of the name sufficies"
	^self name asUnquotedString!

hash

	"27/4/2002"

	^self table hash bitXor: self name hash!

name

	"5/8/2000
	
	name stores the name of this field"
	
	^name!

name: aString

	"5/8/2000
	
	name stores the name of this field"
	
	name := aString!

requiresAliasing

	"Return whether this field always requires aliasing"
	^false!

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
!SSWSQLField categoriesFor: #=!comparing!public! !
!SSWSQLField categoriesFor: #fieldNamed:!accessing!public! !
!SSWSQLField categoriesFor: #forUpdate!accessing!public! !
!SSWSQLField categoriesFor: #hash!comparing!public! !
!SSWSQLField categoriesFor: #name!accessing!public! !
!SSWSQLField categoriesFor: #name:!accessing!public! !
!SSWSQLField categoriesFor: #requiresAliasing!public!testing! !
!SSWSQLField categoriesFor: #writeAliasedSQLOn:!output!public! !
!SSWSQLField categoriesFor: #writeSQLOn:!output!public! !

!SSWSQLField class methodsFor!

allFieldsInTable: anSSWSQLTable

	"28/9/2000
	
	Create and return a 'field' to represent the SQL concept of all fields (*) for the given table"
	
	^self new
		table: anSSWSQLTable;
		name: '*';
		yourself! !
!SSWSQLField class categoriesFor: #allFieldsInTable:!instance creation!public! !

