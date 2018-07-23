"Filed out from Dolphin Smalltalk 7"!

Object subclass: #RDBTable
	instanceVariableNames: 'environment username password codepage table columns records'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RDBTable guid: (GUID fromString: '{36ea16ee-ee28-453c-81a3-e15bf2a51ce6}')!
RDBTable comment: ''!
!RDBTable categoriesForClass!Unclassified! !
!RDBTable methodsFor!

codepage
	"return a codepage of a external RDB source"
	codepage isNil ifTrue: [self codepage: self defaultCodepage].
	^codepage!

codepage: aSymbol
	" #cp1250 #cp852 #'7bit' #iso2 #czs    (slovenian codepages) "
	codepage := aSymbol.!

columns
	columns isNil ifTrue: [self initColumns].
	^columns!

columns: anObject
	columns := anObject!

convertRecords
	"convert db records to appropriate smalltalk format"
	| colType |
	1 to: columns size do: [:inx |
		colType := (self columns at: inx) at: 2.
		self records do: [:record |
			record 
				at: inx
				put: (self readFieldFrom: (record at: inx) odbcType: colType) ]
		].!

defaultCodepage
	"default codepage is #7bit "

	^#'7bit'!

environment
	environment isNil ifTrue: [self environment: ''].
	^environment!

environment: aString
	environment := aString!

getTableColumnsFrom: anODBCSession
	| answerStream |
	self initColumns.
	anODBCSession 
		getSQLColumns: nil
		tableOwner: nil
		tableName: self table 
		columnName: nil.
	answerStream := anODBCSession answer.
	self columns: (answerStream upToEnd
		collect: [:each | Array with: (each at: 4) with: (each at: 6)]).!

indexOfColumn: aString

	1 to: self columns size do: [:inx | 
		(self columns at: inx) first asLowercase = aString asLowercase ifTrue: [^inx] ].
	^0!

initColumns
	columns := OrderedCollection new.!

joinWithTable: aTableName myKey: aMyKey itsKey: anItsKey
	"return an outer join of both tables, columns combined"
	| secondTable myKeyInx myKeyPos newRecords itsKeyPos mergedRecord |
	secondTable := 	RDBTable newFromTable: aTableName
		environment: self environment
		username: self username
		password: self password
		codepage: self codepage.
	myKeyPos := self indexOfColumn: aMyKey.
	myKeyInx := Dictionary new.
	newRecords := OrderedCollection new.
	self records do: [:record |
		myKeyInx at: (record at: myKeyPos) put: record ].
	itsKeyPos := secondTable indexOfColumn: anItsKey.
	secondTable records do: [:record |
		(myKeyInx includesKey: (record at: itsKeyPos)) ifTrue:
			[mergedRecord := (myKeyInx at: (record at: itsKeyPos)).
			mergedRecord := mergedRecord, record.
			newRecords add: mergedRecord].
		].
	self records: newRecords.
	self columns: self columns, secondTable columns.!

password
	password isNil ifTrue: [self password: ''].
	^password!

password: aString
	password := aString!

recordNr: aNumber column: aString 
	^(self records at: aNumber) at: (self indexOfColumn: aString)!

records
	"when aRDBTable is created from existing table, all records (rows in a table) are 
	converted and stored in this ordered collection. Fields in each record are stored in 
	another ordered collection as objects of appropriate class (texts as Strings, 
	numbers as Integers or Floats, dates as Dates)"

	records isNil ifTrue: [self records:OrderedCollection new].
	^records!

records: aCollection
	records := aCollection.!

table
	table isNil ifTrue: [self table: ''].
	^table!

table: aString
	table := aString!

typeOfColumn: aString

	1 to: self columns size do: [:inx | 
		(self columns at: inx) first asLowercase = aString asLowercase 
			ifTrue: [^(self columns at: inx) at: 2] ].
	^nil!

username
	username isNil ifTrue: [self username: ''].
	^username!

username: aString
	username := aString! !
!RDBTable categoriesFor: #codepage!accessing!public! !
!RDBTable categoriesFor: #codepage:!accessing!public! !
!RDBTable categoriesFor: #columns!accessing!public! !
!RDBTable categoriesFor: #columns:!private! !
!RDBTable categoriesFor: #convertRecords!private! !
!RDBTable categoriesFor: #defaultCodepage!accessing!public! !
!RDBTable categoriesFor: #environment!accessing!public! !
!RDBTable categoriesFor: #environment:!accessing!public! !
!RDBTable categoriesFor: #getTableColumnsFrom:!public!table reading! !
!RDBTable categoriesFor: #indexOfColumn:!private! !
!RDBTable categoriesFor: #initColumns!initialize - release!public! !
!RDBTable categoriesFor: #joinWithTable:myKey:itsKey:!public!table join! !
!RDBTable categoriesFor: #password!accessing!public! !
!RDBTable categoriesFor: #password:!accessing!public! !
!RDBTable categoriesFor: #recordNr:column:!public!table accessing! !
!RDBTable categoriesFor: #records!accessing!public! !
!RDBTable categoriesFor: #records:!private! !
!RDBTable categoriesFor: #table!accessing!public! !
!RDBTable categoriesFor: #table:!accessing!public! !
!RDBTable categoriesFor: #typeOfColumn:!private! !
!RDBTable categoriesFor: #username!accessing!public! !
!RDBTable categoriesFor: #username:!accessing!public! !

!RDBTable class methodsFor!

fromDemoTable
	"RDBTable fromDemoTable"
	^self newFromTable: 'ks801art'
		environment: 'skladisca'
		username:''
		password: ''
		codepage: #'7bit'.!

joinTwoTables
	"RDBTable joinTwoTables"
	| first merged |
	first := self newFromTable: 'ks801art'
		environment: 'skladisca'
		username:''
		password: ''
		codepage: #'7bit'.
	merged := first joinWithTable: 'ks810kar' myKey: 'SIFRA801' itsKey: 'SIFRA801'.
	^merged.!

newFromTable: aTableString environment: anEnvString username: anUserString password: aPswString

	^super new
		table: aTableString;
		environment: anEnvString;
		username: anUserString;
		password: aPswString;
		readRecords.!

newFromTable: aTableString environment: anEnvString username: anUserString password: aPswString codepage: aSymbol

	^super new
		table: aTableString;
		environment: anEnvString;
		username: anUserString;
		password: aPswString;
		codepage: aSymbol;
		readRecords.! !
!RDBTable class categoriesFor: #fromDemoTable!examples!public! !
!RDBTable class categoriesFor: #joinTwoTables!examples!public! !
!RDBTable class categoriesFor: #newFromTable:environment:username:password:!instance creation!public! !
!RDBTable class categoriesFor: #newFromTable:environment:username:password:codepage:!instance creation!public! !

