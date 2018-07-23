"Filed out from Dolphin Smalltalk 7"!

SSWSQLCollection variableSubclass: #SSWSQLFieldCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLFieldCollection guid: (GUID fromString: '{6266c924-3983-11d5-b1df-444553540000}')!
SSWSQLFieldCollection comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLFieldCollection categoriesForClass!Unclassified! !
!SSWSQLFieldCollection methodsFor!

fieldNamed: aString

	"25/4/2002

	Return the individual field with the given name"

	self do: 
		[ :field || match |
		match := field fieldNamed: aString.
		match notNil ifTrue: [^match]].

	^nil!

isAll

	"5/8/2000
	
	Since an empty field collection makes no sense, we use this to mean 'all fields' "
	
	^self isEmpty!

isAllInTable

	"23/3/2001
	
	Return whether the receiver represents all fields in a specific table,
	as opposed to all fields in a query, which is the definition of isAll.

	Technically this cannot be decided from the field collection alone 
	however we have a specific class to represent this concept.
	Hence - return false"
	
	^false!

requiresAliasing

	"Query individual fields"
	^self anySatisfy: [ :each | each requiresAliasing]!

sqlConcatenator

	"5/8/2000
	
	A comma is used to separate a list of tables in SQL"
	
	^', '!

writeAliasedSQLOn: aStream

	"5/8/2000
	
	For situations where duplicate field names are anticipated
	- write the SQL of the receiver on aStream, but use aliased names to force uniqueness"

	self first writeAliasedSQLOn: aStream.
	
	2 to: self size do:
		[ :index || sqlEntity |
		sqlEntity := self at: index.
		aStream nextPutAll: self sqlConcatenator.
		sqlEntity writeAliasedSQLOn: aStream]!

writeSQLOn: aStream

	"5/8/2000"
	
	^self isAll
		ifTrue: [aStream nextPut: $*]
		ifFalse: [super writeSQLOn: aStream]! !
!SSWSQLFieldCollection categoriesFor: #fieldNamed:!public! !
!SSWSQLFieldCollection categoriesFor: #isAll!public!testing! !
!SSWSQLFieldCollection categoriesFor: #isAllInTable!public!testing! !
!SSWSQLFieldCollection categoriesFor: #requiresAliasing!public!testing! !
!SSWSQLFieldCollection categoriesFor: #sqlConcatenator!output!public! !
!SSWSQLFieldCollection categoriesFor: #writeAliasedSQLOn:!output!public! !
!SSWSQLFieldCollection categoriesFor: #writeSQLOn:!output!public! !

