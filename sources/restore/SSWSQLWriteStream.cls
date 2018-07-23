"Filed out from Dolphin Smalltalk 7"!

WriteStream subclass: #SSWSQLWriteStream
	instanceVariableNames: 'dialect fieldAliases tableAliases'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLWriteStream guid: (GUID fromString: '{3d2e72e1-a7ae-11d5-b1e0-444553540000}')!
SSWSQLWriteStream comment: ''!
!SSWSQLWriteStream categoriesForClass!Unclassified! !
!SSWSQLWriteStream methodsFor!

dialect

	"16/8/01 JPA

	dialect stores the SSWSQLDialect of the database for which the receiver stream is writing SQL"

	^dialect!

dialect: anSSWSQLDialect

	"16/8/01 JPA

	dialect stores the SSWSQLDialect of the database for which the receiver stream is writing SQL"

	dialect := anSSWSQLDialect!

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

nextFieldAlias

	^self dialect transformName: ('field_', (self fieldAliases size + 1) printString) asSymbol

!

nextPutAliasedField: anSSWSQLField

	"25/4/2002

	Append to the receiver an aliased representation of anSSWSQLField"

	anSSWSQLField writeSQLOn: self.
	self
		nextPutAll: ' AS ';
		nextPutAll: (self fieldAliases at: anSSWSQLField ifAbsentPut: [self nextFieldAlias])!

nextPutAliasedTable: anSSWSQLTable

	"29/4/2002

	Append to the receiver an aliased representation of anSSWSQLTable"

	self nextPutAll: (self tableAliases at: anSSWSQLTable ifAbsentPut: [self nextTableAlias])!

nextPutFalse

	"16/8/2001

	Append to the receiver the dialect's representation of false"

	self dialect falseObject writeSQLOn: self!

nextPutTrue

	"16/8/2001

	Append to the receiver the dialect's representation of true"

	self dialect trueObject writeSQLOn: self!

nextTableAlias

	^self dialect transformName: ('table', (self tableAliases size + 1) printString) asSymbol!

tableAliases

	"29/4/2002 

	tableAliases stores an IdentityDictionary mapping SSWSQLTables to an aliased name
	assigned to that field by the receiver"

	^tableAliases!

tableAliases: anIdentityDictionary

	"29/4/2002 

	tableAliases stores an IdentityDictionary mapping SSWSQLTables to an aliased name
	assigned to that field by the receiver"

	tableAliases := anIdentityDictionary! !
!SSWSQLWriteStream categoriesFor: #dialect!accessing!public! !
!SSWSQLWriteStream categoriesFor: #dialect:!accessing!public! !
!SSWSQLWriteStream categoriesFor: #fieldAliases!accessing!public! !
!SSWSQLWriteStream categoriesFor: #fieldAliases:!accessing!public! !
!SSWSQLWriteStream categoriesFor: #nextFieldAlias!accessing!public! !
!SSWSQLWriteStream categoriesFor: #nextPutAliasedField:!printing!public! !
!SSWSQLWriteStream categoriesFor: #nextPutAliasedTable:!printing!public! !
!SSWSQLWriteStream categoriesFor: #nextPutFalse!printing!public! !
!SSWSQLWriteStream categoriesFor: #nextPutTrue!printing!public! !
!SSWSQLWriteStream categoriesFor: #nextTableAlias!accessing!public! !
!SSWSQLWriteStream categoriesFor: #tableAliases!accessing!public! !
!SSWSQLWriteStream categoriesFor: #tableAliases:!accessing!public! !

!SSWSQLWriteStream class methodsFor!

newIn: anSSWSQLDialect

	"16/8/2001"

	^(self on: (String new: 32))
		dialect: anSSWSQLDialect;
		fieldAliases: IdentityDictionary new;
		tableAliases: IdentityDictionary new;
		yourself! !
!SSWSQLWriteStream class categoriesFor: #newIn:!instance creation!public! !

