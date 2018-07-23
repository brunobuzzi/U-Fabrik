"Filed out from Dolphin Smalltalk 7"!

SSWSQLTableComponent subclass: #SSWSQLTableAllFields
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLTableAllFields guid: (GUID fromString: '{643ab7c2-5af7-11d6-87e7-0010a70883e2}')!
SSWSQLTableAllFields comment: ''!
!SSWSQLTableAllFields categoriesForClass!Unclassified! !
!SSWSQLTableAllFields methodsFor!

fieldNamed: aString

	"25/4/2002

	Return the individual field with the given name"

	self table allFieldsDo: [ :field | field name = aString ifTrue: [^field]].

	^nil!

isAll

	"21/1/2001
	
	Since the receiver is (conceptually) multiple fields, make it polymorphic with a field collection.
	Further - since the receiver is not the true 'all fields' concept (i.e all fields in a query), return false"

	^false!

isAllInTable

	"23/3/2001"
	
	^true!

isEmpty

	"27/5/2002

	Assume a table will always have at least one field"
	
	^false!

requiresAliasing

	"The 'all fields' concept does not require aliasing"
	^false!

writeAliasedSQLOn: aStream

	"21/1/2001

	The receiver should only be used where no ambiguity is expected.
	Hence - defer to writeSQLOn:"
	
	self writeSQLOn: aStream!

writeSQLOn: aStream

	"5/8/2000
	
	Use <table name>.<field name> notation to avoid ambiguity"
	
	self table writeSQLOn: aStream.
	aStream nextPut: $..
	
	"Use an empty (i.e. 'all') field collection to handle the SQL representation of 'all'"
	SSWSQLFieldCollection new writeSQLOn: aStream! !
!SSWSQLTableAllFields categoriesFor: #fieldNamed:!public! !
!SSWSQLTableAllFields categoriesFor: #isAll!public!testing! !
!SSWSQLTableAllFields categoriesFor: #isAllInTable!public!testing! !
!SSWSQLTableAllFields categoriesFor: #isEmpty!public!testing! !
!SSWSQLTableAllFields categoriesFor: #requiresAliasing!public!testing! !
!SSWSQLTableAllFields categoriesFor: #writeAliasedSQLOn:!output!public! !
!SSWSQLTableAllFields categoriesFor: #writeSQLOn:!output!public! !

