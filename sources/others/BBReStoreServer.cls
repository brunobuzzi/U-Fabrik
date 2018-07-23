"Filed out from Dolphin Smalltalk 7"!

BBPersistentServer subclass: #BBReStoreServer
	instanceVariableNames: 'dsn usuarioActual usrId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBReStoreServer guid: (GUID fromString: '{3c49a55d-6b46-4941-8f0b-e906a6bc15eb}')!
BBReStoreServer comment: ''!
!BBReStoreServer categoriesForClass!Unclassified! !
!BBReStoreServer methodsFor!

addAllClasses: collectionOfClasses

	^collectionOfClasses do: [:each | self addClass: each]!

addBooleanColumn: columnName to: tableName

	^self alterTable: tableName addColumn: columnName type: 'YESNO'!

addClass: aClass

	^repository addClass: aClass!

alterTable: tableName addColumn: columnName type: dataType
	" Alter aTable named <tableName> adding column <columnName> with data type <dataType> "

	^self executeSQL: ('ALTER TABLE ', tableName, ' ADD ', columnName, ' ', dataType)!

alterTable: tableName alterColumn: columnName type: dataType
	" Alter aTable named <tableName> changing the column definition of <columnName> to  <dataType> "

	^self executeSQL: ('ALTER TABLE ', tableName, ' ALTER COLUMN ', columnName, ' ', dataType)!

alterTable: tableName removeColumn: columnName
	" Alter aTable named <tableName> removing column <columnName> "

	^self executeSQL: ('ALTER TABLE ', tableName, ' DROP COLUMN ', columnName)!

clearTableCache

	^repository clearTableCache!

closeRepository
	" Close the associated repository of the receiver "

	self closeAllSessions.
	usuarioActual := nil.
	^repository disconnect!

connectToDatabase

	repository pwd: self defaultPassword.
	^repository connect!

createDatabase

	^repository synchronizeAllClasses!

createIndex: indexName on: tableName fields: anOrderedCollection
	| sqlString |

	sqlString := self sqlSentenceCreateIndex: indexName table: tableName isUnique: false.
	sqlString := sqlString , (self sqlIndexCollectionFor: anOrderedCollection).
	^self executeSQL: sqlString
	!

createTable: tableName column: columnName columnType: type

	^self executeSQL: ('CREATE TABLE ', tableName , ' (', columnName, ' ', type, ')')!

createUniqueIndex: indexName on: tableName fields: anOrderedCollection
	| sqlString |

	sqlString := self sqlSentenceCreateIndex: indexName table: tableName isUnique: true.
	sqlString := sqlString , (self sqlIndexCollectionFor: anOrderedCollection).
	^self executeSQL: sqlString
	!

defalutRepositoryClass
	^SSWReStore!

defaultPassword

	^'postgres'!

defaultUser

	^'postgres'!

destroyClass: aClass

	^repository destroyClass: aClass!

destroyClasses
	^repository destroyAllClasses!

destroyDatabase

	repository destroyAllTables.
	self closeRepository.!

disconnect

	^repository disconnect!

dropIndex: indexName on: tableName

	^self executeSQL: ('DROP INDEX ', indexName, ' ON ', tableName,' ;')!

dsn
	^dsn!

dsn: aString

	repository dsn: aString.
	dsn := aString!

executeQuery: anSSWSQLQuery

	^repository executeQuery: anSSWSQLQuery!

executeSQL: aString

	^repository connection exec: aString!

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

	^repository instancesOf: aClass!

instancesOf: aClass satisfying: qualifierBlock

	^repository instancesOf: aClass satisfying: qualifierBlock!

isConnected

	^repository isConnected!

resetClasses

	repository 	resetClasses!

sessionFor: anObject
	" Answer an instances of SSWReStore that load <anObject> "
	| reStore |

	sessions do: [:each | 
		reStore := each reStore actualProxyForObject: anObject ifNone: [nil].
		reStore notNil ifTrue: [^each].].
	^nil!

setValuesIn: tableName of: columnName with: aValue

	^self executeSQL: ('UPDATE ', tableName, ' SET ', columnName, ' = ', aValue,' ;')!

setValuesIn: tableName of: columnName with: aValue where: condition

	^self executeSQL: ('UPDATE ', tableName, ' SET ', columnName, ' = ', aValue,' WHERE ', condition, ';')!

sqlIndexCollectionFor: anOrderedCollection
	| string |

	string := ''.
	anOrderedCollection do: [:each | string := string, each, ','].
	string := string allButLast, ');'.
	^string
!

sqlSentenceCreateIndex: indexName table: tableName isUnique: aBoolean
	| sql |

	sql := aBoolean ifTrue: ['CREATE UNIQUE INDEX '] ifFalse: ['CREATE INDEX '].
	^sql, indexName, ' ON ', tableName, ' ('!

synchronizeAllClasses

	^repository synchronizeAllClasses!

synchronizeClass: aClass

	^repository synchronizeClass: aClass!

usrId
	^usrId!

usrId: anObject
	usrId := anObject!

usuarioActual
	^usuarioActual!

usuarioActual: anObject
	usuarioActual := anObject! !
!BBReStoreServer categoriesFor: #addAllClasses:!public!restore interfase! !
!BBReStoreServer categoriesFor: #addBooleanColumn:to:!public!sql! !
!BBReStoreServer categoriesFor: #addClass:!public!restore interfase! !
!BBReStoreServer categoriesFor: #alterTable:addColumn:type:!public!sql! !
!BBReStoreServer categoriesFor: #alterTable:alterColumn:type:!public!sql! !
!BBReStoreServer categoriesFor: #alterTable:removeColumn:!public!sql! !
!BBReStoreServer categoriesFor: #clearTableCache!public! !
!BBReStoreServer categoriesFor: #closeRepository!public! !
!BBReStoreServer categoriesFor: #connectToDatabase!public!restore interfase! !
!BBReStoreServer categoriesFor: #createDatabase!public!restore interfase! !
!BBReStoreServer categoriesFor: #createIndex:on:fields:!public!sql! !
!BBReStoreServer categoriesFor: #createTable:column:columnType:!public!sql! !
!BBReStoreServer categoriesFor: #createUniqueIndex:on:fields:!public!sql! !
!BBReStoreServer categoriesFor: #defalutRepositoryClass!public! !
!BBReStoreServer categoriesFor: #defaultPassword!public!restore interfase! !
!BBReStoreServer categoriesFor: #defaultUser!public!restore interfase! !
!BBReStoreServer categoriesFor: #destroyClass:!public!restore interfase! !
!BBReStoreServer categoriesFor: #destroyClasses!public!restore interfase! !
!BBReStoreServer categoriesFor: #destroyDatabase!public!restore interfase! !
!BBReStoreServer categoriesFor: #disconnect!public! !
!BBReStoreServer categoriesFor: #dropIndex:on:!public!sql! !
!BBReStoreServer categoriesFor: #dsn!accessing!private! !
!BBReStoreServer categoriesFor: #dsn:!public!restore interfase! !
!BBReStoreServer categoriesFor: #executeQuery:!public!restore interfase! !
!BBReStoreServer categoriesFor: #executeSQL:!public!restore interfase!sql! !
!BBReStoreServer categoriesFor: #insertInto:fields:values:!public!sql! !
!BBReStoreServer categoriesFor: #instancesOf:!public! !
!BBReStoreServer categoriesFor: #instancesOf:satisfying:!public! !
!BBReStoreServer categoriesFor: #isConnected!public!restore interfase! !
!BBReStoreServer categoriesFor: #resetClasses!public! !
!BBReStoreServer categoriesFor: #sessionFor:!public! !
!BBReStoreServer categoriesFor: #setValuesIn:of:with:!public!sql! !
!BBReStoreServer categoriesFor: #setValuesIn:of:with:where:!public!sql! !
!BBReStoreServer categoriesFor: #sqlIndexCollectionFor:!public!sql! !
!BBReStoreServer categoriesFor: #sqlSentenceCreateIndex:table:isUnique:!public!sql! !
!BBReStoreServer categoriesFor: #synchronizeAllClasses!public!restore interfase! !
!BBReStoreServer categoriesFor: #synchronizeClass:!public! !
!BBReStoreServer categoriesFor: #usrId!accessing!private! !
!BBReStoreServer categoriesFor: #usrId:!accessing!private! !
!BBReStoreServer categoriesFor: #usuarioActual!accessing!private! !
!BBReStoreServer categoriesFor: #usuarioActual:!accessing!private! !

!BBReStoreServer class methodsFor!

defaultSessionClass

	^BBReStoreSession! !
!BBReStoreServer class categoriesFor: #defaultSessionClass!public! !

