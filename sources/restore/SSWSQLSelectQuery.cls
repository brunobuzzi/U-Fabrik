"Filed out from Dolphin Smalltalk 7"!

SSWSQLConditionalQuery subclass: #SSWSQLSelectQuery
	instanceVariableNames: 'fields fieldAliases'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLSelectQuery guid: (GUID fromString: '{6266c934-3983-11d5-b1df-444553540000}')!
SSWSQLSelectQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLSelectQuery categoriesForClass!Unclassified! !
!SSWSQLSelectQuery methodsFor!

actualFields

	"28/9/2000
	
	If the receiver represents the selection of all fields from multiple tables, 
	then special fields must be used"

	^(self fields isAll and: [self tables size > 1])
		ifTrue: [self tables inject: (SSWSQLFieldCollection new: 16) into: [ :allFields :table | allFields addAll: table allFields; yourself]]
		ifFalse: [self fields]!

field: anSSWDBField

	"21/1/2001
	
	Set a single field as the result field for the receiver"

	^self fields: (SSWSQLFieldCollection with: anSSWDBField)!

fieldAliases

	"26/4/2002 

	fieldAliases stores an IdentityDictionary mapping SSWSQLFields to an aliased name
	assigned to that field by the receiver"

	^fieldAliases!

fieldAliases: anIdentityDictionary

	"26/4/2002 

	fieldAliases stores an IdentityDictionary mapping SSWSQLFields to an aliased name
	assigned to that field by the receiver"

	fieldAliases := anIdentityDictionary!

fieldNamed: aString

	"25/4/2002

	Return the field with the given name (which must be an alias if the receiver has fieldAliases)"

	^self fieldAliases isNil
	ifTrue: 
		[self actualFields fieldNamed: aString]
	ifFalse: 
		[self fieldAliases keysAndValuesDo: [ :field :alias | alias = aString ifTrue: [^field]].
		nil]!

fields

	"5/8/2000
	
	fields stores the collection of SSWSQLFields read by the receiver.
	This is stored as an SSWSQLFieldCollection"
	
	^fields!

fields: anSSWSQLFieldCollection

	"5/8/2000
	
	fields stores the collection of SSWSQLFields read by the receiver.
	This is stored as an SSWSQLFieldCollection"
	
	fields := anSSWSQLFieldCollection!

isReadQuery

	"19/8/2000"
	
	^true!

preExecIn: anSSWReStore

	"Patched for issue 120-014

	The receiver is about to be executed in anSSWReStore.
	Carry out pre-exec validation"

	"If querying for generalised all fields in one table, replace with the true 'all fields in table' object"
	(self tables size = 1 and: [self fields isAll]) ifTrue:
		[self fields: (SSWSQLTableAllFields forTable: self table)].

	"Ensure that the tables used are the correct 'full' versions for querying"
	self tables: (self tables collect: [ :each | each withAllFields]).
	self fields isAllInTable ifTrue: 
		[self fields table: (self tables detect: [ :each | each = self fields table])]!

writeSQLOn: aStream

	"5/8/2000"

	aStream nextPutAll: 'SELECT '.

	(self tables size > 1 or: [self fields requiresAliasing])
	ifTrue: 
		[self actualFields writeAliasedSQLOn: aStream.
		aStream fieldAliases isEmpty ifFalse: [self fieldAliases: aStream fieldAliases]]
	ifFalse: 
		[self actualFields writeSQLOn: aStream.
		self fieldAliases: nil].
	
	aStream nextPutAll: ' FROM '.
	self tables writeSQLOn: aStream.

	self writeWhereClauseOn: aStream! !
!SSWSQLSelectQuery categoriesFor: #actualFields!accessing - derived!public! !
!SSWSQLSelectQuery categoriesFor: #field:!accessing - derived!public! !
!SSWSQLSelectQuery categoriesFor: #fieldAliases!accessing!public! !
!SSWSQLSelectQuery categoriesFor: #fieldAliases:!accessing!public! !
!SSWSQLSelectQuery categoriesFor: #fieldNamed:!accessing - derived!public! !
!SSWSQLSelectQuery categoriesFor: #fields!accessing!public! !
!SSWSQLSelectQuery categoriesFor: #fields:!accessing!public! !
!SSWSQLSelectQuery categoriesFor: #isReadQuery!public!testing! !
!SSWSQLSelectQuery categoriesFor: #preExecIn:!accessing!public! !
!SSWSQLSelectQuery categoriesFor: #writeSQLOn:!output!public! !

!SSWSQLSelectQuery class methodsFor!

new

	"14/8/2000"
	
	^super new
		fields: SSWSQLFieldCollection new;
		yourself! !
!SSWSQLSelectQuery class categoriesFor: #new!instance creation!public! !

