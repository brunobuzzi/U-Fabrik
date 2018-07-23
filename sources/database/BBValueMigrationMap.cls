"Filed out from Dolphin Smalltalk 7"!

BBMigrationMap subclass: #BBValueMigrationMap
	instanceVariableNames: 'isMismatched'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBValueMigrationMap guid: (GUID fromString: '{e5bcb140-625d-42d5-b795-80d205cc6d4b}')!
BBValueMigrationMap comment: ''!
!BBValueMigrationMap categoriesForClass!Unclassified! !
!BBValueMigrationMap methodsFor!

checkTypes

	isMismatched := (self targetAttributeType = self sourceAttributeType) not!

color

	^isMismatched ifTrue: [Color darkRed] ifFalse: [Color black]!

initialize

	super initialize.

	isMismatched := false!

isMismatched
	^isMismatched!

isMismatched: anObject
	isMismatched := anObject!

sourceAttributeName
	^source name!

sourceAttributeType
	^source printType!

sourceDatabase
	^self sourceTable databaseModel!

sourceDatabaseName
	^self sourceDatabase name!

sourceTable
	^source table!

sourceTableName
	^self sourceTable name!

targetAttributeName
	^target name!

targetAttributeType
	^target printType!

targetDatabase
	^self targetTable databaseModel!

targetDatabaseName
	^self targetDatabase name!

targetTable
	^target table!

targetTableName
	^self targetTable name! !
!BBValueMigrationMap categoriesFor: #checkTypes!public! !
!BBValueMigrationMap categoriesFor: #color!public! !
!BBValueMigrationMap categoriesFor: #initialize!public! !
!BBValueMigrationMap categoriesFor: #isMismatched!accessing!private! !
!BBValueMigrationMap categoriesFor: #isMismatched:!accessing!private! !
!BBValueMigrationMap categoriesFor: #sourceAttributeName!public! !
!BBValueMigrationMap categoriesFor: #sourceAttributeType!public! !
!BBValueMigrationMap categoriesFor: #sourceDatabase!public! !
!BBValueMigrationMap categoriesFor: #sourceDatabaseName!public! !
!BBValueMigrationMap categoriesFor: #sourceTable!public! !
!BBValueMigrationMap categoriesFor: #sourceTableName!public! !
!BBValueMigrationMap categoriesFor: #targetAttributeName!public! !
!BBValueMigrationMap categoriesFor: #targetAttributeType!public! !
!BBValueMigrationMap categoriesFor: #targetDatabase!public! !
!BBValueMigrationMap categoriesFor: #targetDatabaseName!public! !
!BBValueMigrationMap categoriesFor: #targetTable!public! !
!BBValueMigrationMap categoriesFor: #targetTableName!public! !

!BBValueMigrationMap class methodsFor!

source: source target: target

	^super new initialize
		source: source;
		target: target;
		checkTypes;
		yourself.! !
!BBValueMigrationMap class categoriesFor: #source:target:!public! !

