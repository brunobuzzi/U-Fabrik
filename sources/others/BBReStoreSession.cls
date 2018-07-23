"Filed out from Dolphin Smalltalk 7"!

BBPersistentSession subclass: #BBReStoreSession
	instanceVariableNames: 'reStore sqlDialect'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBReStoreSession guid: (GUID fromString: '{b0871d4f-db78-4303-bbb3-58e2e1f15933}')!
BBReStoreSession comment: ''!
!BBReStoreSession categoriesForClass!Unclassified! !
!BBReStoreSession methodsFor!

abort

	^reStore isConnected ifTrue: [reStore rollbackTransaction]!

abortAndNewTransaction

	^reStore isConnected 
	ifTrue: [reStore rollbackTransaction.
		reStore beginTransaction.].!

add: anObject ifPresent: aBlock
	" Add <anObject> to receiver's Server "

	(self includes: anObject) ifTrue: [^aBlock value].
	^anObject storeIn: reStore!

beginTransaction

	^reStore beginTransaction!

checkpoint

	self commit.
	self beginTransaction.!

closeSession

	self disconnect.

	super closeSession.!

commit

	^reStore commitTransaction!

connect

	reStore uid: self server defaultUser.
	reStore pwd: self server defaultPassword.
	^reStore connect!

dbConnection

	^reStore connection!

dbIdOf: anObject

	^anObject _id!

deleteFrom: aString whereCondition: anArray 
	| condition |

	anArray isEmpty ifTrue: [^self executeSQL: 'DELETE FROM ', aString].
	condition := anArray first first, ' = ', anArray first second.
	anArray allButFirst isEmpty ifTrue: [self executeSQL: 'DELETE FROM ', aString, ' WHERE ', condition].
	anArray allButFirst do: [:each | condition := condition , ' AND ', each first, ' = ', each second.].
	^self executeSQL: 'DELETE FROM ', aString, ' WHERE ', condition!

disconnect

	^reStore disconnect!

executeQuery: anSSWSQLQuery

	^reStore executeQuery: anSSWSQLQuery!

executeSQL: aString

	^reStore connection exec: aString!

fieldNameFor: aSymbolInstVarName

	^sqlDialect transformInstVarName: aSymbolInstVarName!

handleSQLError: err

	^err!

includes: anObject
	" Answer whether or not receiver's repository includes <anObject> "

	^anObject existsInDatabase!

insertInto: tableName fields: fields values: values
	| sql sqlFields sqlValues |

	sql := 'INSERT INTO ', tableName, ' ('.
	sqlFields := ''.
	fields do:[:e | sqlFields := sqlFields, e, ','].
	sqlValues := ''.
	values do:[:e | sqlValues := sqlValues, e, ','].
	sql := sql, sqlFields allButLast, ') VALUES (', sqlValues allButLast, ');'.

	^self executeSQL: sql!

instancesOf: aClass

	^(reStore instancesOf: aClass) asOrderedCollection!

instancesOf: aClass betweenDate: aDate and: aDate2 selector: aSymbol 

	^self instancesOf: aClass satisfying: [:each  | ((each perform: aSymbol) >= aDate) & ((each perform: aSymbol) <= aDate2)]!

instancesOf: aClass fromDate: aDate selector: aSymbol 

	^(reStore instancesOf: aClass satisfying: [:each | (each perform: aSymbol) >= aDate]) asOrderedCollection!

instancesOf: aClass matchingStringKey: aString selector: aSymbol 

	^(reStore instancesOf: aClass satisfying: [:each | aString match: (each perform: aSymbol)]) asOrderedCollection!

instancesOf: aClass satisfying: aBlock

	^(reStore instancesOf: aClass satisfying: aBlock) asOrderedCollection!

instancesOf: aClass toDate: aDate selector: aSymbol 

	^(reStore instancesOf: aClass satisfying: [:each | (each perform: aSymbol) <= aDate]) asOrderedCollection!

isConnected

	^reStore isConnected!

logout

	self commit.

	super logout.!

objectIdMatch: anUsuario 
	^true!

openRepository

	reStore := SSWReStore new.
	sqlDialect := SSWSQLDialect newStandard.
	reStore useTransactionsWithVersioning.
	reStore dsn: server dsn.
	self connect.
	reStore beginTransaction.!

optimizatedAdd: objectToAdd to: receiverObject in: instVarName
	" Adds <objectToAdd> to <receiverObject> in the instance variable <instVarName> "
	| sqlNextId sqlIndex nextId result index tableName |

	tableName := self relationTableNameFor: receiverObject class instVar: instVarName.
	sqlNextId := 'SELECT * FROM NEXT_ID WHERE TABLE_NAME = ''', tableName, ''''.
	result := (self executeSQL: sqlNextId) results.
	nextId := result isEmpty ifTrue: ['0'] ifFalse: [(result first at: 'NEXT_ID') + 5].
	sqlIndex := 'SELECT ID FROM ', tableName, ' WHERE SOURCE_ID = ', receiverObject dbId printString.
	index := (self executeSQL: sqlIndex) results size + 1.
	[self insertInto: tableName fields: #('ID' 'SOURCE_ID' 'TARGET_ID' 'INDEX_') values: (Array with: (nextId + 5) printString with: receiverObject dbId printString with: objectToAdd dbId printString with: index printString).
	self setValuesIn: 'NEXT_ID' of: 'NEXT_ID' with: (nextId + 5) printString where: 'TABLE_NAME = ''', tableName, ''''.] 
		on: Error do: [:err | self handleSQLError: err. ^self abort].

	^objectToAdd!

optimizatedIncludes: anObject in: receiverObject in: instVarName
	" Answer whether or not <receiverObject> includes <anObject> in it's instance variable named <instVarName> "
	| sqlString tableName receiverObjectIds |

	tableName := self relationTableNameFor: receiverObject class instVar: instVarName.
	sqlString := 'SELECT * FROM ' , tableName , ' WHERE SOURCE_ID = ' , 	receiverObject dbId printString.
	receiverObjectIds := (self executeSQL: sqlString) results collect: [:e | e at: 'TARGET_ID'].
	^receiverObjectIds includes: anObject dbId
!

optimizatedRemove: objectToRemove to: receiverObject in: instVarName
	" Removes <objectToRemove> from <receiverObject> in the instance variable <instVarName> "
	| tableName |

	tableName := self relationTableNameFor: receiverObject class instVar: instVarName.

	[self deleteFrom: tableName whereCondition: (Array with: (Array with: 'SOURCE_ID' with: receiverObject dbId printString) with: (Array with: 'TARGET_ID' with: objectToRemove dbId printString))]
		on: Error do: [:err | self handleSQLError: err. ^self halt].

	^objectToRemove!

relationTableNameFor: aClass instVar: symbolInstVar

	^(self tableNameFor: aClass), '__', (self fieldNameFor: symbolInstVar)!

remove: anObject ifAbsent: aBlock

	"anObject removeRelations."
	^anObject unstore!

restart

	reStore isConnected ifTrue: [reStore rollbackTransaction].
	reStore refreshAllObjects.
	reStore beginTransaction.!

reStore
	^reStore!

reStore: anObject
	reStore := anObject!

rollbackAndRefreshTransaction

	reStore rollbackAndRefreshTransaction.
	reStore beginTransaction.!

setValuesIn: tableName of: columnName with: aValue

	^self executeSQL: ('UPDATE ', tableName, ' SET ', columnName, ' = ', aValue,' ;')!

setValuesIn: tableName of: columnName with: aValue where: condition

	^self executeSQL: ('UPDATE ', tableName, ' SET ', columnName, ' = ', aValue,' WHERE ', condition)!

sqlDialect
	^sqlDialect!

sqlDialect: anObject
	sqlDialect := anObject!

tableForClass: aClass

	^reStore tableForClass: aClass!

tableForObject: anObject

	^self tableForClass: anObject class!

tableNameFor: aClass

	^sqlDialect transformClassName: aClass name! !
!BBReStoreSession categoriesFor: #abort!public! !
!BBReStoreSession categoriesFor: #abortAndNewTransaction!public! !
!BBReStoreSession categoriesFor: #add:ifPresent:!public! !
!BBReStoreSession categoriesFor: #beginTransaction!public! !
!BBReStoreSession categoriesFor: #checkpoint!public! !
!BBReStoreSession categoriesFor: #closeSession!public! !
!BBReStoreSession categoriesFor: #commit!public! !
!BBReStoreSession categoriesFor: #connect!public! !
!BBReStoreSession categoriesFor: #dbConnection!public! !
!BBReStoreSession categoriesFor: #dbIdOf:!public! !
!BBReStoreSession categoriesFor: #deleteFrom:whereCondition:!public! !
!BBReStoreSession categoriesFor: #disconnect!public! !
!BBReStoreSession categoriesFor: #executeQuery:!public!restore interfase! !
!BBReStoreSession categoriesFor: #executeSQL:!public!restore interfase! !
!BBReStoreSession categoriesFor: #fieldNameFor:!optimizations!public! !
!BBReStoreSession categoriesFor: #handleSQLError:!optimizations!public! !
!BBReStoreSession categoriesFor: #includes:!public! !
!BBReStoreSession categoriesFor: #insertInto:fields:values:!public!sql! !
!BBReStoreSession categoriesFor: #instancesOf:!public!searching-related! !
!BBReStoreSession categoriesFor: #instancesOf:betweenDate:and:selector:!public!searching-by date! !
!BBReStoreSession categoriesFor: #instancesOf:fromDate:selector:!public!searching-by date! !
!BBReStoreSession categoriesFor: #instancesOf:matchingStringKey:selector:!public!searching-by text! !
!BBReStoreSession categoriesFor: #instancesOf:satisfying:!public!searching-related! !
!BBReStoreSession categoriesFor: #instancesOf:toDate:selector:!public!searching-by date! !
!BBReStoreSession categoriesFor: #isConnected!public! !
!BBReStoreSession categoriesFor: #logout!public! !
!BBReStoreSession categoriesFor: #objectIdMatch:!public! !
!BBReStoreSession categoriesFor: #openRepository!optimizations!public! !
!BBReStoreSession categoriesFor: #optimizatedAdd:to:in:!optimizations!public! !
!BBReStoreSession categoriesFor: #optimizatedIncludes:in:in:!optimizations!public! !
!BBReStoreSession categoriesFor: #optimizatedRemove:to:in:!optimizations!public! !
!BBReStoreSession categoriesFor: #relationTableNameFor:instVar:!optimizations!public! !
!BBReStoreSession categoriesFor: #remove:ifAbsent:!public! !
!BBReStoreSession categoriesFor: #restart!public! !
!BBReStoreSession categoriesFor: #reStore!accessing!private! !
!BBReStoreSession categoriesFor: #reStore:!accessing!private! !
!BBReStoreSession categoriesFor: #rollbackAndRefreshTransaction!public! !
!BBReStoreSession categoriesFor: #setValuesIn:of:with:!public! !
!BBReStoreSession categoriesFor: #setValuesIn:of:with:where:!public! !
!BBReStoreSession categoriesFor: #sqlDialect!accessing!private! !
!BBReStoreSession categoriesFor: #sqlDialect:!accessing!private! !
!BBReStoreSession categoriesFor: #tableForClass:!public! !
!BBReStoreSession categoriesFor: #tableForObject:!public! !
!BBReStoreSession categoriesFor: #tableNameFor:!optimizations!public! !

!BBReStoreSession class methodsFor!

newOn: aBBSessionManager

	^(super newOn: aBBSessionManager) openRepository; yourself.! !
!BBReStoreSession class categoriesFor: #newOn:!public! !

