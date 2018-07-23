"Filed out from Dolphin Smalltalk 7"!

BBMigrationObject subclass: #BBDBModelMigrationMap
	instanceVariableNames: 'name mappings'
	classVariableNames: 'Migrations'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDBModelMigrationMap guid: (GUID fromString: '{f97bf47c-9ff7-40b5-b066-1671014a2197}')!
BBDBModelMigrationMap comment: ''!
!BBDBModelMigrationMap categoriesForClass!Unclassified! !
!BBDBModelMigrationMap methodsFor!

addMapping: aBBMigrationMap

	^mappings add: aBBMigrationMap!

addToMigrations

	self class migrations add: self!

allDatabases

	^BBDataBaseModel migracionesAsSortedCollection!

initialize

	super initialize.

	name := ''.
	mappings := OrderedCollection new.!

mappings
	^mappings!

mappings: anObject
	mappings := anObject!

name
	^name!

name: anObject
	name := anObject!

removeFromMigrations

	self class migrations remove: self!

removeMapping: aBBMigrationMap

	^mappings remove: aBBMigrationMap! !
!BBDBModelMigrationMap categoriesFor: #addMapping:!public! !
!BBDBModelMigrationMap categoriesFor: #addToMigrations!public! !
!BBDBModelMigrationMap categoriesFor: #allDatabases!public! !
!BBDBModelMigrationMap categoriesFor: #initialize!public! !
!BBDBModelMigrationMap categoriesFor: #mappings!accessing!private! !
!BBDBModelMigrationMap categoriesFor: #mappings:!accessing!private! !
!BBDBModelMigrationMap categoriesFor: #name!accessing!private! !
!BBDBModelMigrationMap categoriesFor: #name:!accessing!private! !
!BBDBModelMigrationMap categoriesFor: #removeFromMigrations!public! !
!BBDBModelMigrationMap categoriesFor: #removeMapping:!public! !

!BBDBModelMigrationMap class methodsFor!

migrations

	Migrations ifNil: [Migrations := OrderedCollection new].

	^Migrations! !
!BBDBModelMigrationMap class categoriesFor: #migrations!public! !

