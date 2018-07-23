"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWSQLDialect
	instanceVariableNames: 'datatypes functions maxChar maxVarchar defaultStringSize maintenanceActions staticReservedWords connectionReservedWords shouldAutoInitialize trueObject falseObject nameTransformer supportsMultipleAddColumns shouldCheckAutoCommit shouldMaskSuccessWithInfo shouldFreeStatementsOnClose maxParameterizedReadStatements maxParameterizedWriteStatements shouldMapEmptyStringsToNil cursorType debugStream maxTableNameLength maxColumnNameLength'
	classVariableNames: ''
	poolDictionaries: 'ODBCConstants'
	classInstanceVariableNames: ''!
SSWSQLDialect guid: (GUID fromString: '{5a3e3dcb-3990-11d5-b1df-444553540000}')!
SSWSQLDialect comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLDialect categoriesForClass!Unclassified! !
!SSWSQLDialect methodsFor!

addFields: aCollection to: aTable in: anSSWReStore

	"16/9/2001

	Add the given collection of Fields to their table in anSSWReStore's database"

	| stream |

	self supportsMultipleAddColumns
	ifTrue:
		[stream := WriteStream on: (String new: 32).
		stream 
			nextPutAll: 'ALTER TABLE ';
			nextPutAll: aTable name.
		aCollection 
			do: 
				[ :field | 
				stream nextPutAll: ' ADD '.
				field writeSQLDefinitionOn: stream]
			separatedBy: [stream nextPut: $,].
		anSSWReStore executeSQL: stream contents]
	ifFalse:
		[aCollection do:
			[ :field |
			stream := WriteStream on: (String new: 32).
			stream 
				nextPutAll: 'ALTER TABLE ';
				nextPutAll: aTable name;
				nextPutAll: ' ADD '.
			field writeSQLDefinitionOn: stream.
			anSSWReStore executeSQL: stream contents]]!

autoInitializeIn: anSSWReStore

	"Patched for issue 120-004

	Automatically configure the receiver for the active DB type, if known"
	
	| dbmsName dbmsVer |

	self initializeStandard.

	"Set info which can be determined from the database (can be overriden by modifyForXXX methods)"
	self
		maxTableNameLength: anSSWReStore connection maxTableNameLength;
		maxColumnNameLength: anSSWReStore connection maxColumnNameLength.

	dbmsName := anSSWReStore connection dbmsName asUppercase.
	dbmsVer := anSSWReStore connection dbmsVersion.

	dbmsName = 'ACCESS' ifTrue: 
		[self modifyForAccess. 
		(anSSWReStore connection dbmsVersion beginsWith: '03.50') ifTrue: 
			[self datatypes at: #decimal put: 'CURRENCY']].

	dbmsName = 'MYSQL' ifTrue: [self modifyForMySQL].
	dbmsName = 'POSTGRESQL' ifTrue: [self modifyForPostgreSQL].
	dbmsName = 'MICROSOFT SQL SERVER' ifTrue: [self modifyForSQLServer].

	(dbmsName beginsWith: 'ORACLE') ifTrue: 
		[(dbmsName beginsWith: 'ORACLE LITE')
		ifTrue:
			[self modifyForOracleLite]
		ifFalse:
			[(dbmsVer upTo: $.) asNumber = 7 ifTrue: [self modifyForOracle7].
			(dbmsVer upTo: $.) asNumber = 8 ifTrue: [self modifyForOracle8]]]!

boolean

	"9/4/2001"
	
	^self datatypes at: #boolean!

char

	"9/3/2001"
	
	^self datatypes at: #char!

connectionReservedWords

	"9/3/2001
	
	Reserved words are Strings which cannot be used for field or table names in this SQL Dialect. 
	connectionReservedWords are set by ReStore on logging in, from the ODBC SQLKeywords function.

	Clients should use isReservedWord: to check if a word is reserved;
	this additionally checks staticReservedWords"

	^connectionReservedWords!

connectionReservedWords: aCollection

	"9/3/2001
	
	Reserved words are Strings which cannot be used for field or table names in this SQL Dialect. 
	connectionReservedWords are set by ReStore on logging in, from the ODBC SQLKeywords function.

	Clients should use isReservedWord: to check if a word is reserved;
	this additionally checks staticReservedWords"

	connectionReservedWords := aCollection!

cursorType

	"cursorType stores the Symbol-ic name of the ODBC cursor type that will be used
	when creating statements. See DBAbstractStatement>>cursorType for further details"
	
	^cursorType!

cursorType: aSymbol

	"cursorType stores the Symbol-ic name of the ODBC cursor type that will be used
	when creating statements. See DBAbstractStatement>>cursorType for further details"
	
	cursorType := aSymbol!

datatypes

	"9/3/2001
	
	datatypes stores a Dictionary mapping names (Symbols) of datatypes 
	to the definition String to be used when creating a field of that datatype.
	
	By default, these are initialized to ANSI standards, 
	plus MS JET 4.0 standards for non-ANSI types (e.g. LONGTEXT)"
	
	^datatypes!

datatypes: aDictionary

	"9/3/2001
	
	datatypes stores a Dictionary mapping names (Symbols) of datatypes 
	to the definition String to be used when creating a field of that datatype.
	
	By default, these are initialized to ANSI standards, 
	plus MS JET 4.0 standards for non-ANSI types (e.g. LONGTEXT)"
	
	datatypes := aDictionary!

date

	"9/3/2001"
	
	^self datatypes at: #date!

debugStream

	"1/5/2002

	debugStream stores a Stream to which debugging info (typically executed SQL) is written"

	^debugStream !

debugStream: aStream

	"1/5/2002

	debugStream stores a Stream to which debugging info (typically executed SQL) is written"

	debugStream := aStream!

debugTo: aStream

	"1/5/2002

	Initialize the receiver to log debugging info to aStream"

	self debugStream: aStream.
	self reinitializeForDebugMode!

decimal

	"9/3/2001"
	
	^self datatypes at: #decimal!

defaultStringSize

	"9/3/2001
	
	defaultStringSize stores the size assumed for Strings in persistent classes, if no explicit size is given.
	Whilst not strictly an SQLDialect attribute, it is included here for its effects on table design:
	 - if defaultStringSize > maxVarchar, an unsized string will use the longText type
	 - if defaultStringSize <= maxVarchar, an unsized string will use the varchar type, with defaultStringSize.
	This configurability is important for some DBs which have a comparatively large maxVarchar size, 
	but limitations on the use of their longtext type (e.g. Oracle7 only allows one LONG column per table)"
	
	^defaultStringSize!

defaultStringSize: anInteger

	"9/3/2001
	
	defaultStringSize stores the size assumed for Strings in persistent classes, if no explicit size is given.
	Whilst not strictly an SQLDialect attribute, it is included here for its effects on table design:
	 - if defaultStringSize > maxVarchar, an unsized string will use the longText type
	 - if defaultStringSize <= maxVarchar, an unsized string will use the varchar type, with defaultStringSize.
	This configurability is important for some DBs which have a comparatively large maxVarchar size, 
	but limitations on the use of their longtext type (e.g. Oracle7 only allows one LONG column per table)"
	
	defaultStringSize := anInteger!

doubleFloat

	"9/3/2001"
	
	^self datatypes at: #doubleFloat!

dropColumnNamed: colString fromTable: anSSWDBTable in: anSSWReStore

	"Created 12/5/2001
	Modified: 19/8/2001		Use sqlStringIn: (issue#0008)"

	| otherFields |

	otherFields := anSSWDBTable allFields reject: [ :field | field name = colString].

	self 
		evaluateMaintenanceAction: #dropColumnNamed:fromTableNamed:leaving:
		withArguments: (Array with: colString with: anSSWDBTable name with: (otherFields sqlStringIn: self))
		using: anSSWReStore connection!

evaluateMaintenanceAction: aSymbol withArguments: argArray using: aDBConnection

	"12/5/2001

	Evaluate the SQL script at aSymbol in the receiver's maintenanceActions dictionary
	with the given (String) arguments"

	| sqlScript |

	sqlScript := self maintenanceActions at: aSymbol.

	sqlScript do:
		[ :sqlString |
		aDBConnection exec: (sqlString formatWithArguments: argArray)]!

evaluatePostLoginScriptIn: anSSWReStore

	"12/5/2001

	The login script is a special, optional maintenance action"

	anSSWReStore executeSQLAsTxn: (self maintenanceActions at: #postLoginScript ifAbsent: [^self])!

falseObject

	"16/8/2001 

	falseObject stores the object whose SQL string represents the false Boolean in this dialect"

	^falseObject!

falseObject: anObject

	"16/8/2001 

	falseObject stores the object whose SQL string represents the false Boolean in this dialect"

	falseObject := anObject!

functions

	"9/3/2001
	
	functions stores a Dictionary mapping Smalltalk method names to 
	the equivalent SQL function in this dialect.
	
	By default, these are initialized to SQL-99 standards"
	
	^functions!

functions: aDictionary

	"9/3/2001
	
	functions stores a Dictionary mapping Smalltalk method names to 
	the equivalent SQL function in this dialect.
	
	By default, these are initialized to SQL-99 standards"
	
	functions := aDictionary!

initializeStandard

	"Created 9/3/2001
	Modified 16/8/2001	Added name transformation and true/falseObject (issues#0007/8)
	Modified: 25/4/2002	Added initialization of cursorType
	
	Initialize the receiver for 'standard' use
	 - this is defined as ANSI SQL plus MS JET 4.0 extensions"
	
	self
		cursorType: #forwardOnly;
		supportsMultipleAddColumns: false;
		shouldCheckAutoCommit: false;
		shouldMaskSuccessWithInfo: false;
		shouldFreeStatementsOnClose: false;
		shouldMapEmptyStringsToNil: false;
		maxParameterizedReadStatements: SmallInteger maximum;
		maxParameterizedWriteStatements: SmallInteger maximum;
		staticReservedWords: self class odbcReservedWords asOrderedCollection;

		nameTransformer: (Message selector: #sswInUnderscoreFormat);
		trueObject: true asParameter;
		falseObject: false asParameter;
		defaultStringSize: 2048;
		maxChar: 255;
		maxVarchar: 255;
		datatypes:
			(Dictionary new
				at: #char put: 'CHAR(%1)';
				at: #varchar put: 'VARCHAR(%1)';
				at: #longText put: 'LONGTEXT';
				at: #timestamp put: 'TIMESTAMP';
				at: #integer put: 'INTEGER';
				at: #largeInteger put: 'INTEGER';
				at: #singleFloat put: 'FLOAT';
				at: #doubleFloat put: 'DOUBLE';
				at: #boolean put: 'BOOLEAN';
				at: #decimal put: 'DECIMAL(%1,%2)';
				yourself);
		functions:
			(Dictionary new
				at: #between:and: put: '%1 BETWEEN %2 AND %3';				

				at: #abs put: 'ABS(%1)';
				at: #rounded put: 'ROUND(%1)';

				at: #size put: 'LEN(%1)';
				at: #, put: '(%1 || %2)';
				at: #indexOfSubCollection: put: 'INSTR(%1,%2)';
				at: #midString:from: put: 'SUBSTRING(%1 FROM %3 FOR %2)';
				at: #trimBlanks put: 'TRIM(%1)';
				at: #asUppercase put: 'UPPER(%1)';
				at: #asLowercase put: 'LOWER(%1)';
				yourself);

		maintenanceActions:
			(Dictionary new
				at: #renameTableNamed:to: 
					put: #('ALTER TABLE %1 RENAME TO %2');
				at: #dropColumnNamed:fromTableNamed:leaving: 
					put: #('ALTER TABLE %2 DROP COLUMN %1');
				yourself)!

integer

	"9/3/2001"
	
	^self datatypes at: #integer!

isDebug

	"1/5/2002"

	^self debugStream notNil!

isReservedWord: aString

	"30/4/2001"

	^(self staticReservedWords includes: aString asUppercase) or: 
		[self connectionReservedWords includes: aString asUppercase]!

loggedInto: anSSWReStore

	"12/5/2001"
	
	self shouldAutoInitialize ifTrue: [self autoInitializeIn: anSSWReStore].
	self reinitializeForDebugMode.

	self
		evaluatePostLoginScriptIn: anSSWReStore;
		connectionReservedWords: ((anSSWReStore connection getLongInfoString: SQL_KEYWORDS) subStrings: $,)!

longText

	"9/3/2001"

	^self supportsLongText
		ifTrue: [self datatypes at: #longText]
		ifFalse: [self varchar formatWith: self maxVarchar printString]!

maintenanceActions

	"12/5/2001

	maintenanceActions stores a Dictionary mapping messages from the receiver's 'maintenance' category
	to a collection of equivalently-parameterised SQL strings that accompany that action.

	This is used for DB maintenance operations (table creation/modification) 
	where databases are known to differ in how to accomplish them"

	^maintenanceActions!

maintenanceActions: aDictionary

	"12/5/2001

	maintenanceActions stores a Dictionary mapping messages from the receiver's 'maintenance' category
	to a collection of equivalently-parameterised SQL strings that accompany that action

	This is used for DB maintenance operations (table creation/modification) 
	where databases are known to differ in how to accomplish them"

	maintenanceActions := aDictionary!

maxChar

	"9/3/2001
	
	maxChar stores the maximum size of a CHAR datatype field"
	
	^maxChar!

maxChar: anInteger

	"9/3/2001
	
	maxChar stores the maximum size of a CHAR datatype field"
	
	maxChar := anInteger!

maxColumnNameLength

	"Initialized from the DB on login"

	^maxColumnNameLength!

maxColumnNameLength: anInteger

	"Initialized from the DB on login"

	maxColumnNameLength := anInteger!

maxParameterizedReadStatements

	"18/9/2001

	maxParameterizedReadQueries stores an Integer specifying the maximum 
	number of parameterized (prepared) statements that should be allocated. 
	Attempts to allocate further statements beyond this limit will instead utilise 
	pseudo-parameterized statements, which use standard one-off statements.

	Set maxParameterizedReadStatements in conjunction with maxParameterizedWriteStatements
	and shouldFreeStatementsOnClose where resource limits are experienced with this SQL dialect.
	Can also be set to zero where parameterized statements are not supported for reading,
	or are less efficient than standard statements"

	^maxParameterizedReadStatements!

maxParameterizedReadStatements: anInteger

	"18/9/2001

	maxParameterizedReadQueries stores an Integer specifying the maximum 
	number of parameterized (prepared) statements that should be allocated. 
	Attempts to allocate further statements beyond this limit will instead utilise 
	pseudo-parameterized statements, which use standard one-off statements.

	Set maxParameterizedReadStatements in conjunction with maxParameterizedWriteStatements
	and shouldFreeStatementsOnClose where resource limits are experienced with this SQL dialect.
	Can also be set to zero where parameterized statements are not supported for reading,
	or are less efficient than standard statements"

	maxParameterizedReadStatements := anInteger!

maxParameterizedWriteStatements

	"18/9/2001

	maxParameterizedWriteStatements stores an Integer specifying the maximum number 
	of parameterized (prepared) statements that should be allocated for write queries. 
	Attempts to allocate further statements beyond this limit will instead utilise 
	pseudo-parameterized statements, which use standard one-off statements.

	Set maxParameterizedWriteStatements in conjunction with maxParameterizedReadStatements
	and shouldFreeStatementsOnClose where resource limits are experienced with this SQL dialect.
	Can also be set to zero where parameterized statements are not supported for writing,
	or are less efficient than standard statements"

	^maxParameterizedWriteStatements!

maxParameterizedWriteStatements: anInteger

	"18/9/2001

	maxParameterizedWriteStatements stores an Integer specifying the maximum number 
	of parameterized (prepared) statements that should be allocated for write queries. 
	Attempts to allocate further statements beyond this limit will instead utilise 
	pseudo-parameterized statements, which use standard one-off statements.

	Set maxParameterizedWriteStatements in conjunction with maxParameterizedReadStatements
	and shouldFreeStatementsOnClose where resource limits are experienced with this SQL dialect.
	Can also be set to zero where parameterized statements are not supported for writing,
	or are less efficient than standard statements"

	maxParameterizedWriteStatements := anInteger!

maxTableNameLength

	"Initialized from the DB on login"

	^maxTableNameLength!

maxTableNameLength: anInteger

	"Initialized from the DB on login"

	maxTableNameLength := anInteger!

maxVarchar

	"9/3/2001
	
	maxVarchar stores the maximum size of a VARCHAR datatype field"
	
	^maxVarchar!

maxVarchar: anInteger

	"9/3/2001
	
	maxVarchar stores the maximum size of a VARCHAR datatype field"
	
	maxVarchar := anInteger!

modifyForAccess

	"9/3/2001
	
	Modify the receiver's initialization for MS Access"

	"Access 2000 (v9.0.2720, driver 4.00.4403.02) seems to slowdown around 190 allocated statements.
	Arrange for statements to be free'd on close, and cap the use of parameterized statements"
	self
		shouldFreeStatementsOnClose: true;
		shouldMapEmptyStringsToNil: false;
		maxParameterizedReadStatements: 100;
		maxParameterizedWriteStatements: 50.

	self datatypes
		at: #boolean put: 'YESNO'.

	self functions
		at: #, put: '(%1 + %2)';
		at: #midString:from: put: 'MID(%1,%3,%2)';
		at: #asciiValue put: 'ASC(%1)';
		at: #leftString: put: 'LEFT(%1,%2)';
		at: #rightString: put: 'RIGHT(%1,%2)';
		
		at: #addDays: put: 'DATEADD(''d'',%2,%1)';
		at: #addMonths: put: 'DATEADD(''m'',%2,%1)';
		at: #addYears: put: 'DATEADD(''yyyy'',%2,%1)';
		at: #dayOfMonth put: 'DATEPART(''d'',%1)';
		at: #monthIndex put: 'DATEPART(''m'',%1)';
		at: #year put: 'DATEPART(''yyyy'',%1)'.

	self maintenanceActions
		at: #renameTableNamed:to: put: #('SELECT * INTO %2 FROM %1' 'DROP TABLE %1');
		yourself!

modifyForMySQL

	"3/4/2001
	
	Modify the receiver's initialization for MySQL.
	NB If using MySQL you MUST use a transactional table type (e.g. Inno)"

	self 
		supportsMultipleAddColumns: true;
		shouldMaskSuccessWithInfo: true.

	self datatypes
		at: #date put: 'DATE';
		at: #time put: 'TIME';
		at: #timestamp put: 'DATETIME';
		at: #boolean put: 'TINYINT'.
	
	self functions
		at: #, put: 'CONCAT(%1,%2)';
		at: #size put: 'CHAR_LENGTH(%1)';
		at: #leftString: put: 'LEFT(%1,%2)';
		at: #rightString: put: 'RIGHT(%1,%2)';
		at: #asciiValue put: 'ASCII(%1)';
		at: #indexOfSubCollection: put: 'LOCATE(%2,%1)';
		at: #indexOfSubCollection:startingAt: put: 'LOCATE(%2,%1,%3)';
		at: #replaceAllOccurencesOf:with: put: 'REPLACE(%1,%2,%3)';
		at: #reverse put: 'REVERSE(%1)';
		at: #replaceFrom:length:with: put: 'INSERT(%1,%2,%3,%4)';

		at: #sign put: 'SIGN(%1)';
		at: #floor put: 'FLOOR(%1)';
		at: #ceiling put: 'CEILING(%1)';

		at: #addDays: put: 'DATE_ADD(%1, INTERVAL %2 DAY)';
		at: #addMonths: put: 'DATE_ADD(%1, INTERVAL %2 MONTH)';
		at: #addYears: put: 'DATE_ADD(%1, INTERVAL %2 YEAR)';
		at: #subtractDays: put: 'DATE_SUB(%1, INTERVAL %2 DAY)';
		
		at: #weekday put: 'DAYNAME(%1)';
		at: #dayOfMonth put: 'DAYOFMONTH(%1)';
		at: #day put: 'DAYOFYEAR(%1)';
		at: #monthIndex put: 'MONTH(%1)';
		at: #monthName put: 'MONTHNAME(%1)';
		at: #year put: 'YEAR(%1)'.

	"MySQL (3.23.38) does not seem to respond to DBConnection>>autoCommit:
	Use post-login script to accomplish this through SQL"
	self maintenanceActions
		at: #postLoginScript put: #('SET AUTOCOMMIT = 0');
		yourself.

	self staticReservedWords addAll: #('LINES')!

modifyForOracle

	"Private - Created: 17/9/2001 JPA
	
	Modify the receiver's initialization for Oracle.
	NB Generic method; actual initialization should go via a version-specific method"

	self datatypes
		at: #longText put: 'LONG';
		at: #varchar put: 'VARCHAR2(%1)';
		at: #timestamp put: 'DATE';
		at: #doubleFloat put: 'DOUBLE PRECISION';
		at: #boolean put: 'NUMBER(1)'.
	
	self functions
		at: #asciiValue put: 'ASCII(%1)';
		at: #size put: 'LENGTH(%1)';
		at: #midString:from: put: 'SUBSTR(%1,%3,%2)';
		at: #sign put: 'SIGN(%1)'!

modifyForOracle7

	"Created: 17/9/2001 JPA
	
	Modify the receiver's initialization for Oracle 7.x (untested; based on docs).
	REQ: Feedback to restore@solutionsoft.co.uk"

	self
		defaultStringSize: 2000;
		maxChar: 2000;
		maxVarchar: 2000;
		modifyForOracle.

	self maintenanceActions
		at: #renameTableNamed:to:  put: #('RENAME %1 TO %2');
		at: #dropColumnNamed:fromTableNamed:leaving: put: 
			#(	'CREATE TABLE tmp AS SELECT %3 FROM %2'
				'DROP TABLE %2'
				'RENAME tmp TO %2');
		yourself!

modifyForOracle8

	"Created: 17/9/2001 JPA
	
	Modify the receiver's initialization for Oracle 8.x (untested; based on docs).
	REQ: Feedback to restore@solutionsoft.co.uk"

	self
		defaultStringSize: 4000;
		maxChar: 4000;
		maxVarchar: 4000;
		modifyForOracle!

modifyForOracleLite

	"Created: 17/9/2001 JPA
	
	Modify the receiver's initialization for Oracle Lite.
	Tested with Oracle 8i Lite v4.0.1.0.0; Oracle Lite 40 ODBC Driver v3.00.00.00.
	REQ: Further feedback to restore@solutionsoft.co.uk"

	self modifyForOracle8.

	"Parameterized INSERT statements seem to fail after 1 use"
	self maxParameterizedWriteStatements: 0.

	"Oracle LONG type seems to have problems via ODBC"
	self datatypes removeKey: #longText.

	self maintenanceActions
		at: #renameTableNamed:to:  put:
			#(	'CREATE TABLE %2 AS SELECT * FROM %1'
				'DROP TABLE %1')!

modifyForPostgreSQL

	"30/6/2001

	Modify the receiver's initialization for SQL Server
	*UNTESTED* - feeback to restore@solutionsoft.co.uk <mailto:restore@solutionsoft.co.uk>"

	self 
		shouldCheckAutoCommit: true;
		shouldMaskSuccessWithInfo: true;
		nameTransformer: [ :name | name sswInUnderscoreFormat asLowercase].

	self datatypes
		at: #longText put: 'TEXT';
		at: #date put: 'DATE';
		at: #time put: 'TIME';
		at: #doubleFloat put: 'DOUBLE PRECISION';
		at: #boolean put: 'BOOLEAN'.

	self functions
		at: #size put: 'CHAR_LENGTH(%1)';
		at: #asciiValue put: 'ASCII(%1)';
		at: #indexOfSubCollection: put: 'POSITION(%2,%1)';

		at: #floor put: 'FLOOR(%1)';
		at: #ceiling put: 'CEIL(%1)';

		at: #dayOfMonth put: 'DATEPART(''day'',%1)';
		at: #monthIndex put: 'DATEPART(''month'',%1)';
		at: #year put: 'DATEPART(''yyyy'',%1)'.

	self maintenanceActions
		at: #dropColumnNamed:fromTableNamed:leaving: put: 
			#(	'CREATE TABLE tmp_ AS SELECT %3 FROM %2'
				'DROP TABLE %2'
				'ALTER TABLE tmp_ RENAME TO %2');
		yourself!

modifyForSQLServer

	"Patched for issues 120-003, 120-006
	
	Modify the receiver's initialization for SQL Server.
	Feedback to restore@solutionsoft.co.uk"

	self
		defaultStringSize: 2048;
		maxChar: 2047;
		maxVarchar: 2047;
		cursorType: #keysetDriven;
		shouldMaskSuccessWithInfo: true. 

	self datatypes
		at: #integer put: 'INT';
		at: #boolean put: 'BIT';
		at: #doubleFloat put: 'DOUBLE PRECISION';
		at: #timestamp put: 'DATETIME';
		at: #longText put: 'TEXT'.
	
	self functions
		at: #, put: '(%1 + %2)';
		at: #leftString: put: 'LEFT(%1,%2)';
		at: #rightString: put: 'RIGHT(%1,%2)';
		at: #asciiValue put: 'ASCII(%1)';
		at: #indexOfSubCollection: put: 'CHARINDEX(%2,%1)';
		at: #midString:from: put: 'SUBSTRING(%1,%3,%2)';

		at: #sign put: 'SIGN(%1)';
		at: #floor put: 'FLOOR(%1)';
		at: #ceiling put: 'CEILING(%1)';

		at: #addDays: put: 'DATEADD(''d'',%2,%1)';
		at: #addMonths: put: 'DATEADD(''m'',%2,%1)';
		at: #addYears: put: 'DATEADD(''yyyy'',%2,%1)';
		at: #dayOfMonth put: 'DATEPART(''d'',%1)';
		at: #monthIndex put: 'DATEPART(''m'',%1)';
		at: #year put: 'DATEPART(''yyyy'',%1)'.

	self maintenanceActions at: #renameTableNamed:to: put: #('EXEC sp_rename ''%1'', ''%2''')
!

nameTransformer

	"16/8/01
	
	nameTransformer stores a monadic valuable (Message or Block) which is applied 
	to class and instance variable names to transform them to their equivalent database names"
	
	^nameTransformer!

nameTransformer: aMonadicValuable

	"16/8/01
	
	nameTransformer stores a monadic valuable (Message or Block) which is applied 
	to class and instance variable names to transform them to their equivalent database names"
	
	nameTransformer := aMonadicValuable!

reinitializeForDebugMode

	"Initially set as non-debug"
	self
		maxParameterizedReadStatements: self maxParameterizedReadStatements abs;
		maxParameterizedWriteStatements: self maxParameterizedWriteStatements abs.

	"If actually in debug mode, turn off the use of paramterized statements
	so all SQL is directly executed (and hence logged to the debugStream)"
	self isDebug ifTrue:
		[self
			maxParameterizedReadStatements: self maxParameterizedReadStatements negated;
			maxParameterizedWriteStatements: self maxParameterizedWriteStatements negated]
!

renameTableNamed: oldName to: newName in: anSSWReStore

	"12/5/2001"

	self 
		evaluateMaintenanceAction: #renameTableNamed:to: 
		withArguments: (Array with: oldName with: newName)
		using: anSSWReStore connection!

shouldAutoInitialize

	"12/5/2001

	shouldAutoInitialize stores a Boolean indicating whether the receiver should
	automatically initialize itself on login, dependent on which DBMS is connected.
	Default is true"

	^shouldAutoInitialize!

shouldAutoInitialize: aBoolean

	"12/5/2001

	shouldAutoInitialize stores a Boolean indicating whether the receiver should
	automatically initialize itself on login, dependent on which DBMS is connected.
	Default is true"

	shouldAutoInitialize := aBoolean!

shouldCheckAutoCommit

	"18/9/2001

	shouldAutoCommit stores a Boolean indicating whether in this dialect
	the DBConnection should check the status of autoCommit prior to attempting a change.
	false by default - unneccesary for most DBs"

	^shouldCheckAutoCommit!

shouldCheckAutoCommit: aBoolean

	"18/9/2001

	shouldAutoCommit stores a Boolean indicating whether in this dialect
	the DBConnection should check the status of autoCommit prior to attempting a change.
	false by default - unneccesary for most DBs"

	shouldCheckAutoCommit := aBoolean!

shouldFreeStatementsOnClose

	"22/9/2001

	shouldFreeStatementsOnClose stores a Boolean indicating whether ODBCStatements
	(NB not prepared statements) should free themselves when sent the message #close.
	This can be useful where the driver for this dialect can only allocate a certain number of statements
	 - this limit may be hit during a tight loop (before the statements are auto-free'd during finalization)"

	^shouldFreeStatementsOnClose!

shouldFreeStatementsOnClose: aBoolean

	"22/9/2001

	shouldFreeStatementsOnClose stores a Boolean indicating whether ODBCStatements
	(NB not prepared statements) should free themselves when sent the message #close.
	This can be useful where the driver for this dialect can only allocate a certain number of statements
	 - this limit may be hit during a tight loop (before the statements are auto-free'd during finalization)"

	shouldFreeStatementsOnClose := aBoolean!

shouldMapEmptyStringsToNil

	"30/9/2001	(Issue#0024)

	shouldMapEmptyStringsToNil holds a Boolean indicating whether empty Strings 
	should be mapped to nil before storage in the database.
	This can be useful for databases which default String fields to 'Do not allow zero size'
	 - usually this attribute cannot be set via ODBC/SQL"

	^shouldMapEmptyStringsToNil!

shouldMapEmptyStringsToNil: aBoolean

	"30/9/2001	(Issue#0024)

	shouldMapEmptyStringsToNil holds a Boolean indicating whether empty Strings 
	should be mapped to nil before storage in the database.
	This can be useful for databases which default String fields to 'Do not allow zero size'
	 - usually this attribute cannot be set via ODBC/SQL"

	shouldMapEmptyStringsToNil := aBoolean!

shouldMaskSuccessWithInfo

	"19/9/2001

	Some databases/drivers send many SQLSuccessWithInfo results.
	shouldMaskSuccessWithInfo determines whether these go unreported (true)
	or are reported via a DBWarning exception (false, standard behaviour)"

	^shouldMaskSuccessWithInfo!

shouldMaskSuccessWithInfo: aBoolean

	"19/9/2001

	Some databases/drivers send many SQLSuccessWithInfo results.
	shouldMaskSuccessWithInfo determines whether these go unreported (true)
	or are reported via a DBWarning exception (false, standard behaviour)"

	shouldMaskSuccessWithInfo := aBoolean!

singleFloat

	"9/3/2001"
	
	^self datatypes at: #singleFloat!

sqlFunctionFor: aMessageSelector

	"24/3/2001"
	
	^self functions at: aMessageSelector ifAbsent: [nil]!

staticReservedWords

	"9/3/2001
	
	Reserved words are Strings which cannot be used for field or table names in this SQL Dialect. 
	staticReservedWords are set explicity in the initialize/modify methods, primarily from the class
	method odbcReservedWords, however custom initialize methods can add to this if required.

	Clients should use isReservedWord: to check if a word is reserved;
	this additionally checks connectionReservedWords"

	^staticReservedWords!

staticReservedWords: aCollection

	"9/3/2001

	Reserved words are Strings which cannot be used for field or table names in this SQL Dialect. 
	staticReservedWords are set explicity in the initialize/modify methods, primarily from the class
	method odbcReservedWords, however custom initialize methods can add to this if required.

	Clients should use isReservedWord: to check if a word is reserved;
	this additionally checks connectionReservedWords"

	staticReservedWords := aCollection!

supportsDateType

	"9/3/2001"
	
	^self datatypes includesKey: #date!

supportsLongText

	"9/3/2001"
	
	^self datatypes includesKey: #longText!

supportsMultipleAddColumns

	"16/9/2001

	supportsMultipleAddColumns stores a Boolean indicating whether the receiver dialect
	supports multiple 'ADD [COLUMN]' clauses per ALTER TABLE statement (true),
	or whether each column to be added must be done in a separate ALTER TABLE (false)"

	^supportsMultipleAddColumns!

supportsMultipleAddColumns: aBoolean

	"16/9/2001

	supportsMultipleAddColumns stores a Boolean indicating whether the receiver dialect
	supports multiple 'ADD [COLUMN]' clauses per ALTER TABLE statement (true),
	or whether each column to be added must be done in a separate ALTER TABLE (false)"

	supportsMultipleAddColumns := aBoolean!

supportsTimeType

	"9/3/2001"
	
	^self datatypes includesKey: #time!

time

	"9/3/2001"
	
	^self datatypes at: #time!

timestamp

	"9/3/2001"
	
	^self datatypes at: #timestamp!

transformClassName: aSymbol

	"Created: 16/8/01

	Using the nameTransformer, transform the given class name into a table-style String"

	^self transformName: aSymbol into: #Table!

transformInstVarName: aSymbol

	"Created: 16/8/01

	Using the nameTransformer, transform the given instvar name into a field-style String"

	^self transformName: aSymbol into: #Field!

transformName: aSymbol

	"Created: 16/8/01

	Using the nameTransformer, transform the given Symbol into a DB-style String.
	'Basic' transformation with no checking (e.g. reserved word clashes)"

	^self nameTransformer value: aSymbol!

transformName: aSymbol into: typeSymbol

	"Created: 16/8/01

	Using the nameTransformer, transform the given Symbol into a DB-style String.
	typeSymbol describes the type of name and is used in reserved-word conflict resolution.
	Also check for reserved word clashes, and handle appropriately"

	| transformedName |

	transformedName := self transformName: aSymbol.

	^(self isReservedWord: transformedName) 
		ifTrue: [transformedName, '_', (self transformName: typeSymbol)]
		ifFalse: [transformedName]
!

trueObject

	"16/8/2001 

	trueObject stores the object whose SQL string represents the true Boolean in this dialect"

	^trueObject!

trueObject: anObject

	"16/8/2001 

	trueObject stores the object whose SQL string represents the true Boolean in this dialect"

	trueObject := anObject!

unsizedVarchar

	"9/3/2001"

	^self maxVarchar >= self defaultStringSize 
	ifTrue:
		[self varchar formatWith: self defaultStringSize printString]
	ifFalse:
		[self supportsLongText
			ifTrue: [self longText]
			ifFalse: [self varchar formatWith: self maxVarchar printString]]!

varchar

	"9/3/2001"
	
	^self datatypes at: #varchar! !
!SSWSQLDialect categoriesFor: #addFields:to:in:!maintenance!public! !
!SSWSQLDialect categoriesFor: #autoInitializeIn:!initializing!public! !
!SSWSQLDialect categoriesFor: #boolean!datatypes!public! !
!SSWSQLDialect categoriesFor: #char!datatypes!public! !
!SSWSQLDialect categoriesFor: #connectionReservedWords!accessing!public! !
!SSWSQLDialect categoriesFor: #connectionReservedWords:!accessing!public! !
!SSWSQLDialect categoriesFor: #cursorType!accessing!public! !
!SSWSQLDialect categoriesFor: #cursorType:!accessing!public! !
!SSWSQLDialect categoriesFor: #datatypes!accessing!public! !
!SSWSQLDialect categoriesFor: #datatypes:!accessing!public! !
!SSWSQLDialect categoriesFor: #date!datatypes!public! !
!SSWSQLDialect categoriesFor: #debugStream!accessing!public! !
!SSWSQLDialect categoriesFor: #debugStream:!accessing!public! !
!SSWSQLDialect categoriesFor: #debugTo:!initializing!public! !
!SSWSQLDialect categoriesFor: #decimal!datatypes!public! !
!SSWSQLDialect categoriesFor: #defaultStringSize!accessing!public! !
!SSWSQLDialect categoriesFor: #defaultStringSize:!accessing!public! !
!SSWSQLDialect categoriesFor: #doubleFloat!datatypes!public! !
!SSWSQLDialect categoriesFor: #dropColumnNamed:fromTable:in:!maintenance!public! !
!SSWSQLDialect categoriesFor: #evaluateMaintenanceAction:withArguments:using:!maintenance!public! !
!SSWSQLDialect categoriesFor: #evaluatePostLoginScriptIn:!maintenance!public! !
!SSWSQLDialect categoriesFor: #falseObject!accessing!public! !
!SSWSQLDialect categoriesFor: #falseObject:!accessing!public! !
!SSWSQLDialect categoriesFor: #functions!accessing!public! !
!SSWSQLDialect categoriesFor: #functions:!accessing!public! !
!SSWSQLDialect categoriesFor: #initializeStandard!initializing!public! !
!SSWSQLDialect categoriesFor: #integer!datatypes!public! !
!SSWSQLDialect categoriesFor: #isDebug!public!testing! !
!SSWSQLDialect categoriesFor: #isReservedWord:!public!testing! !
!SSWSQLDialect categoriesFor: #loggedInto:!initializing!public! !
!SSWSQLDialect categoriesFor: #longText!datatypes!public! !
!SSWSQLDialect categoriesFor: #maintenanceActions!accessing!public! !
!SSWSQLDialect categoriesFor: #maintenanceActions:!accessing!public! !
!SSWSQLDialect categoriesFor: #maxChar!accessing!public! !
!SSWSQLDialect categoriesFor: #maxChar:!accessing!public! !
!SSWSQLDialect categoriesFor: #maxColumnNameLength!accessing!public! !
!SSWSQLDialect categoriesFor: #maxColumnNameLength:!accessing!public! !
!SSWSQLDialect categoriesFor: #maxParameterizedReadStatements!accessing!public! !
!SSWSQLDialect categoriesFor: #maxParameterizedReadStatements:!accessing!public! !
!SSWSQLDialect categoriesFor: #maxParameterizedWriteStatements!accessing!public! !
!SSWSQLDialect categoriesFor: #maxParameterizedWriteStatements:!accessing!public! !
!SSWSQLDialect categoriesFor: #maxTableNameLength!accessing!public! !
!SSWSQLDialect categoriesFor: #maxTableNameLength:!accessing!public! !
!SSWSQLDialect categoriesFor: #maxVarchar!accessing!public! !
!SSWSQLDialect categoriesFor: #maxVarchar:!accessing!public! !
!SSWSQLDialect categoriesFor: #modifyForAccess!initializing!public! !
!SSWSQLDialect categoriesFor: #modifyForMySQL!initializing!public! !
!SSWSQLDialect categoriesFor: #modifyForOracle!initializing!private! !
!SSWSQLDialect categoriesFor: #modifyForOracle7!initializing!public! !
!SSWSQLDialect categoriesFor: #modifyForOracle8!initializing!public! !
!SSWSQLDialect categoriesFor: #modifyForOracleLite!initializing!public! !
!SSWSQLDialect categoriesFor: #modifyForPostgreSQL!initializing!public! !
!SSWSQLDialect categoriesFor: #modifyForSQLServer!initializing!public! !
!SSWSQLDialect categoriesFor: #nameTransformer!accessing!public! !
!SSWSQLDialect categoriesFor: #nameTransformer:!accessing!public! !
!SSWSQLDialect categoriesFor: #reinitializeForDebugMode!initializing!public! !
!SSWSQLDialect categoriesFor: #renameTableNamed:to:in:!maintenance!public! !
!SSWSQLDialect categoriesFor: #shouldAutoInitialize!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldAutoInitialize:!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldCheckAutoCommit!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldCheckAutoCommit:!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldFreeStatementsOnClose!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldFreeStatementsOnClose:!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldMapEmptyStringsToNil!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldMapEmptyStringsToNil:!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldMaskSuccessWithInfo!accessing!public! !
!SSWSQLDialect categoriesFor: #shouldMaskSuccessWithInfo:!accessing!public! !
!SSWSQLDialect categoriesFor: #singleFloat!datatypes!public! !
!SSWSQLDialect categoriesFor: #sqlFunctionFor:!evaluating!public! !
!SSWSQLDialect categoriesFor: #staticReservedWords!accessing!public! !
!SSWSQLDialect categoriesFor: #staticReservedWords:!accessing!public! !
!SSWSQLDialect categoriesFor: #supportsDateType!public!testing! !
!SSWSQLDialect categoriesFor: #supportsLongText!public!testing! !
!SSWSQLDialect categoriesFor: #supportsMultipleAddColumns!accessing!public! !
!SSWSQLDialect categoriesFor: #supportsMultipleAddColumns:!accessing!public! !
!SSWSQLDialect categoriesFor: #supportsTimeType!public!testing! !
!SSWSQLDialect categoriesFor: #time!datatypes!public! !
!SSWSQLDialect categoriesFor: #timestamp!datatypes!public! !
!SSWSQLDialect categoriesFor: #transformClassName:!evaluating!public! !
!SSWSQLDialect categoriesFor: #transformInstVarName:!evaluating!public! !
!SSWSQLDialect categoriesFor: #transformName:!evaluating!public! !
!SSWSQLDialect categoriesFor: #transformName:into:!evaluating!public! !
!SSWSQLDialect categoriesFor: #trueObject!accessing!public! !
!SSWSQLDialect categoriesFor: #trueObject:!accessing!public! !
!SSWSQLDialect categoriesFor: #unsizedVarchar!datatypes!public! !
!SSWSQLDialect categoriesFor: #varchar!datatypes!public! !

!SSWSQLDialect class methodsFor!

newStandard

	"9/3/2001"
	
	^self new
		connectionReservedWords: #();
		shouldAutoInitialize: true;
		initializeStandard;
		yourself!

odbcReservedWords

	"Return the set of default ODBC reserved words, as defined by Microsoft ODBC Programmer's Reference"

	^##('ABSOLUTE IS ACTION ISOLATION ADA JOIN ADD KEY ALL LANGUAGE ALLOCATE LAST ALTER LEADING AND LEFT ANY LEVEL ARE LIKE AS LOCAL ASC LOWER ASSERTION MATCH AT MAX AUTHORIZATION MIN AVG MINUTE BEGIN MODULE BETWEEN MONTH BIT NAMES BIT_LENGTH NATIONAL BOTH NATURAL BY NCHAR CASCADE NEXT CASCADED NO CASE NONE CAST NOT CATALOG NULL CHAR NULLIF CHAR_LENGTH NUMERIC CHARACTER OCTET_LENGTH CHARACTER_LENGTH OF CHECK ON CLOSE ONLY COALESCE OPEN COLLATE OPTION COLLATION OR COLUMN ORDER COMMIT OUTER CONNECT OUTPUT CONNECTION OVERLAPS CONSTRAINT PAD CONSTRAINTS PARTIAL CONTINUE PASCAL CONVERT POSITION CORRESPONDING PRECISION COUNT PREPARE CREATE PRESERVE CROSS PRIMARY CURRENT PRIOR CURRENT_DATE PRIVILEGES CURRENT_TIME PROCEDURE CURRENT_TIMESTAMP PUBLIC CURRENT_USER READ CURSOR REAL DATE REFERENCES DAY RELATIVE DEALLOCATE RESTRICT DEC REVOKE DECIMAL RIGHT DECLARE ROLLBACK DEFAULT ROWS DEFERRABLE SCHEMA DEFERRED SCROLL DELETE SECOND DESC SECTION DESCRIBE SELECT DESCRIPTOR SESSION DIAGNOSTICS SESSION_USER DISCONNECT SET DISTINCT SIZE DOMAIN SMALLINT DOUBLE SOME DROP SPACE ELSE SQL END SQLCA END-EXEC SQLCODE ESCAPE SQLERROR EXCEPT SQLSTATE EXCEPTION SQLWARNING EXEC SUBSTRING EXECUTE SUM EXISTS SYSTEM_USER EXTERNAL TABLE EXTRACT TEMPORARY FALSE THEN FETCH TIME FIRST TIMESTAMP FLOAT TIMEZONE_HOUR FOR TIMEZONE_MINUTE FOREIGN TO FORTRAN TRAILING FOUND TRANSACTION FROM TRANSLATE FULL TRANSLATION GET TRIM GLOBAL TRUE GO UNION GOTO UNIQUE GRANT UNKNOWN GROUP UPDATE HAVING UPPER HOUR USAGE IDENTITY USER IMMEDIATE USING IN VALUE INCLUDE VALUES INDEX VARCHAR INDICATOR VARYING INITIALLY VIEW INNER WHEN INPUT WHENEVER INSENSITIVE WHERE INSERT WITH INT WORK INTEGER WRITE INTERSECT YEAR INTERVAL ZONE INTO' subStrings)! !
!SSWSQLDialect class categoriesFor: #newStandard!instance creation!public! !
!SSWSQLDialect class categoriesFor: #odbcReservedWords!constants!public! !

