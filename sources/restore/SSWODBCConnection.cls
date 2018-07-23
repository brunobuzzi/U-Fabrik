"Filed out from Dolphin Smalltalk 7"!

DBConnection subclass: #SSWODBCConnection
	instanceVariableNames: 'sqlDialect parameterizedReadStatements parameterizedWriteStatements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWODBCConnection guid: (GUID fromString: '{a1aded01-a947-11d5-b1e0-444553540000}')!
SSWODBCConnection comment: ''!
!SSWODBCConnection categoriesForClass!Unclassified! !
!SSWODBCConnection methodsFor!

columnsForFields: aCollectionOfDBFields

	"26/4/2001		(moved from SSWReStore)"

	| columns |

	aCollectionOfDBFields isEmpty ifTrue: [^#()].

	"ASSERT: all fields belong to same table"
	columns := self columns: aCollectionOfDBFields first table name.

	^aCollectionOfDBFields collect: [ :field | columns detect: [ :col | col name = field name]]!

dbCheckException: anIntegerRetCode

	"19/8/2001

	Overriden to revector to new dbCheckException:from: method, which may mask certain 'errors' "
	
	^self dbCheckException: anIntegerRetCode from: self!

dbCheckException: anIntegerRetCode from: anODBCObject

	"19/8/2001

	Check anIntegerRetCode as returned to anODBCObject.
	Report an error/notification if appropriate"
	
	^anIntegerRetCode = SQL_SUCCESS ifFalse: 
		["Signal an error or warning - decide which"
		anIntegerRetCode = SQL_SUCCESS_WITH_INFO
		ifTrue: 
			[self sqlDialect shouldMaskSuccessWithInfo ifFalse:
				[DBWarning signalWith: (anODBCObject exceptionDetails: anIntegerRetCode)]]
		ifFalse: 
			[DBError signalWith: (anODBCObject exceptionDetails: anIntegerRetCode)]]!

defaultCursorType

	"25/4/2002

	Overriden to defer to the dialect"

	^self sqlDialect cursorType!

execQuery: anSQLQuery

	"25/4/2002"

	^(self exec: (anSQLQuery sqlStringIn: self sqlDialect))
		query: anSQLQuery;
		yourself!

getLongInfoString: infoCode

	"12/5/2001

	Ignore the SQLMaxMessageLength constant 
	 - SQLKeywords seems to violate this for some ODBC drivers/databases.
	Answer a String containing the value of the receiver's info attribute described by infoCode."

	| value len |
	value := String new: 2048	"not SQLMaxMessageLength".
	len := ODBCLibrary default getInfo: infoCode for: self into: value.
	^value copyFrom: 1 to: len!

hasTxn

	"12/5/2001"

	^transaction notNil!

isConnected

	"12/5/2001"

	^handle ~= nil!

newParameterizedStatement: aSymbol

	"25/4/2002

	Overriden to use an SSWODBCParameterizedStatement"

	^SSWODBCParameterizedStatement parent: self cursorType: aSymbol!

newStatement

	"18/9/2001
	Modified: 25/4/2002	Now only implemented/used by ReStore 

	Defer to newStatement"

	^self newStatement: self defaultCursorType
!

newStatement: aSymbol

	"25/4/2002

	Overriden to use an the appropriate statement class"

	^self odbcStatementClass parent: self cursorType: aSymbol!

odbcStatementClass

	"1/5/2002"

	^self sqlDialect isDebug
		ifTrue: [SSWODBCDebugStatement]
		ifFalse: [SSWODBCStatement]!

parameterizedReadStatements

	"16/8/2001 

	parameterizedReadStatements stores a WeakResourceSet of ParameterizedStatements 
	allocated for read (select) queries. This facilitates tracking of the number of allocated statements
	 - some DBs slowdown with large numbers of allocated statements; by tracking these
	the receiver can switch to pseudo param. statements when a dialect-specific limit is reached"

	^parameterizedReadStatements!

parameterizedReadStatements: aWeakIdentitySet

	"16/8/2001 

	parameterizedReadStatements stores a WeakResourceSet of ParameterizedStatements 
	allocated for read (select) queries. This facilitates tracking of the number of allocated statements
	 - some DBs slowdown with large numbers of allocated statements; by tracking these
	the receiver can switch to pseudo param. statements when a dialect-specific limit is reached"

	parameterizedReadStatements := aWeakIdentitySet!

parameterizedWriteStatements

	"16/8/2001 

	parameterizedWriteStatements stores a WeakResourceSet of ParameterizedStatements 
	allocated for write (insert/update) queries. This facilitates tracking of the number of allocated statements
	 - some DBs slowdown with large numbers of allocated statements; by tracking these
	the receiver can switch to pseudo param. statements when a dialect-specific limit is reached"

	^parameterizedWriteStatements!

parameterizedWriteStatements: aWeakIdentitySet

	"16/8/2001 

	parameterizedWriteStatements stores a WeakResourceSet of ParameterizedStatements 
	allocated for write (insert/update) queries. This facilitates tracking of the number of allocated statements
	 - some DBs slowdown with large numbers of allocated statements; by tracking these
	the receiver can switch to pseudo param. statements when a dialect-specific limit is reached"

	parameterizedWriteStatements := aWeakIdentitySet!

prepareQuery: anSQLQuery

	"18/9/2001

	Prepare and return a parameterized statement for the execution of anSQLQuery.
	Track the allocated statement, or use pseudo statement if limits have been exceeded"

	| paramCols allocated limit sql |

	anSQLQuery isReadQuery
	ifTrue: 
		[allocated := self parameterizedReadStatements.
		limit := self sqlDialect maxParameterizedReadStatements]
	ifFalse: 
		[allocated := self parameterizedWriteStatements.
		limit := self sqlDialect maxParameterizedWriteStatements].

	paramCols := self columnsForFields: anSQLQuery parameterisedFields.
	sql := anSQLQuery sqlStringIn: self sqlDialect.

	^(allocated size >= limit)
	ifTrue:
		[SSWODBCPseudoParameterizedStatement new
			connection: self;
			query: anSQLQuery;
			parameterisedSQL: sql;
			paramCols: paramCols;
			yourself]
	ifFalse:
		[allocated add: 
			((self prepare: sql)
				query: anSQLQuery;
				paramCols: paramCols;
				yourself)]!

rollbackTxn

	"Overriden to begin a transaction if one is not active
	(for db refresh purposes it can be useful to arbitarily execut an ODBC rollback)"

	self hasTxn ifFalse: [self beginTxn].
	super rollbackTxn!

sqlDialect

	"16/8/2001 

	sqlDialect stores the SSWSQLDialect of the database to which the receiver connects"

	^sqlDialect!

sqlDialect: anSSWSQLDialect

	"16/8/2001 

	sqlDialect stores the SSWSQLDialect of the database to which the receiver connects"

	sqlDialect := anSSWSQLDialect!

willAutoCommit: aBoolean

	"25/4/2002 		(was autoCommit:, now deprecated)

	Overriden to check status prior to changing (dependent on dialect setting)"

	(self sqlDialect shouldCheckAutoCommit and: [self willAutoCommit = aBoolean]) ifFalse: 
		[super willAutoCommit: aBoolean]! !
!SSWODBCConnection categoriesFor: #columnsForFields:!operations!private! !
!SSWODBCConnection categoriesFor: #dbCheckException:!exceptions!private! !
!SSWODBCConnection categoriesFor: #dbCheckException:from:!exceptions!private! !
!SSWODBCConnection categoriesFor: #defaultCursorType!operations!public! !
!SSWODBCConnection categoriesFor: #execQuery:!executing!public! !
!SSWODBCConnection categoriesFor: #getLongInfoString:!accessing!private! !
!SSWODBCConnection categoriesFor: #hasTxn!public!transactions! !
!SSWODBCConnection categoriesFor: #isConnected!helpers!public! !
!SSWODBCConnection categoriesFor: #newParameterizedStatement:!operations!private! !
!SSWODBCConnection categoriesFor: #newStatement!operations!private! !
!SSWODBCConnection categoriesFor: #newStatement:!operations!private! !
!SSWODBCConnection categoriesFor: #odbcStatementClass!accessing!private! !
!SSWODBCConnection categoriesFor: #parameterizedReadStatements!accessing!public! !
!SSWODBCConnection categoriesFor: #parameterizedReadStatements:!accessing!public! !
!SSWODBCConnection categoriesFor: #parameterizedWriteStatements!accessing!public! !
!SSWODBCConnection categoriesFor: #parameterizedWriteStatements:!accessing!public! !
!SSWODBCConnection categoriesFor: #prepareQuery:!executing!public! !
!SSWODBCConnection categoriesFor: #rollbackTxn!public!transactions! !
!SSWODBCConnection categoriesFor: #sqlDialect!accessing!public! !
!SSWODBCConnection categoriesFor: #sqlDialect:!accessing!public! !
!SSWODBCConnection categoriesFor: #willAutoCommit:!accessing!public! !

!SSWODBCConnection class methodsFor!

new

	"18/9/2001"

	^super new
		parameterizedReadStatements: WeakIdentitySet new;
		parameterizedWriteStatements: WeakIdentitySet new;
		yourself! !
!SSWODBCConnection class categoriesFor: #new!public! !

