"Filed out from Dolphin Smalltalk 7"!

SSWSQLTable subclass: #SSWDBTable
	instanceVariableNames: 'instanceClass fullName idField dataFields controlFields collectionSpecs idCacheSize abbreviations reStore'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBTable guid: (GUID fromString: '{266e4dcc-398e-11d5-b1df-444553540000}')!
SSWDBTable comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBTable categoriesForClass!Unclassified! !
!SSWDBTable methodsFor!

abbreviate: aSymbol to: abbrevSymbol

	"Define abbrevSymbol as an abbreviated name for the inst var named aSymbol"

	self abbreviations at: aSymbol put: abbrevSymbol!

abbreviations

	"abbreviations stores a Dictionary mapping instance variables (Symbols)
	to abbreviated names (Symbols) to use to define their database name.

	This is required where names exceed the DB size limit"

	^abbreviations!

abbreviations: aDictionary

	"abbreviations stores a Dictionary mapping instance variables (Symbols)
	to abbreviated names (Symbols) to use to define their database name.

	This is required where names exceed the DB size limit"

	abbreviations := aDictionary!

aboutToBeUnstored: anObject

	"30/9/2001

	anObject (which originated in the receiver table) is about to be removed from the DB.
	Notify the receiver's components so they can take any necessary action"

	self componentsDo: [ :field | field aboutToBeUnstored: anObject]!

addDataField: anSSWDBField

	"Private - 20/8/2000"
	
	anSSWDBField table: self.
	^self dataFields add: anSSWDBField!

allFields

	"19/8/2000
	
	Return an SSWSQLFieldCollection of all the receiver's fields"
	
	^self dataAndControlFields
		add: self idField;
		yourself!

allFieldsDo: aBlock

	"19/4/2001

	Faster than allFields do:"
	
	aBlock value: self idField.
	self dataFields do: aBlock.
	self controlFields do: aBlock
!

collectionAccessing: aSymbol

	"14/8/2000
	
	Determine and return the collectionSpec of the receiver which accesses the inst var named aSymbol
	of the receiver's instanceClass"
	
	^self collectionSpecs detect: [ :spec | spec accessor accesses: aSymbol] ifNone: [nil]!

collectionSpecs

	"14/8/2000
	
	collectionSpecs stores a Collection of SSWDBCollectionSpecs which define the persistent
	collections held by instances of the receiver's instanceClass"
	
	^collectionSpecs!

collectionSpecs: anOrderedCollection

	"14/8/2000
	
	collectionSpecs stores a Collection of SSWDBCollectionSpecs which define the persistent
	collections held by instances of the receiver's instanceClass"
	
	collectionSpecs := anOrderedCollection!

componentsDo: aBlock

	"24/9/2001

	Evaluate aBlock with each component (field or collection spec) of the receiver"
	
	self dataFields do: aBlock.
	self collectionSpecs do: aBlock!

containedTableNameRoot

	"Private - 12/5/2001
	
	Return the String to use as the root of all containedTables owned by the receiver"
	
	"Use a double-underscore to avoid name clashes with any class tables.
	ASSERT: class names NEVER contain an underscore"
	^self fullName, '__'!

containedTables

	"19/4/2001

	At present, only collection specs can contain other tables"

	| containedTables |

	containedTables := OrderedCollection new.

	self collectionSpecs do: [ :spec | containedTables addAll: spec containedTables].

	^containedTables!

controlFields

	"19/4/2001
	
	controlFields stores a Collection of SSWDBFields that do not hold data,
	but provide assistance to the ReStore persistency mechanism.

	Exact content and behaviour is dependent on the receiver's clients,
	but e.g. could refer to 'isActive', 'shouldIgnore' flags"	

	^controlFields!

controlFields: aCollection

	"19/4/2001
	
	controlFields stores a Collection of SSWDBFields that do not hold data,
	but provide assistance to the ReStore persistency mechanism.

	Exact content and behaviour is dependent on the receiver's clients,
	but e.g. could refer to 'isActive', 'shouldIgnore' flags"

	controlFields := aCollection!

createDefinition

	"Create a table based on the receiver in the database accessed by the receiver's reStore.
	ASSERT: the receiver does not exist as a table in the database"
	
	self reStore
		executeSQL: self sqlDefinition;
		createTableRecordFor: self
	!

createIDField

	"14/8/2000

	Define the receiver table's unique ID field - it is not named at this point"
	
	| field |
	
	field := SSWDBStaticField new.
	
	field
		table: self;
		accessor: SSWDBIDAccessor new;
		targetClass: Integer.
	
	self idField: field!

createInstanceFromRow: aDBRow

	"Private - 14/8/2000"

	| object id |
	
	object := self instanceClass basicNew.
	id := aDBRow atField: self idField ifAbsent: [nil].

	self dataFields do:
		[ :field |
		field applyValueFromRow: aDBRow to: object].
	
	self collectionSpecs do:
		[ :collection |
		collection applyTo: object withID: id in: self reStore].
	
	^object!

createNonProxiedInstanceFromRow: aDBRow
	
	"Private - 19/4/2001

	For internal/special non-proxied persistent objects"

	| instance |
	
	instance := self createInstanceFromRow: aDBRow.

	self idField applyValueFromRow: aDBRow to: instance.

	self controlFields do:
		[ :field |
		field applyValueFromRow: aDBRow to: instance].

	^instance!

dataAndControlFields

	"19/4/2001"
	
	^(SSWSQLFieldCollection new: 8)
		addAll: self dataFields;
		addAll: self controlFields;
		yourself
!

dataFields

	"6/8/2000
	
	dataFields stores an SSWSQLFieldCollection of SSWDBFields that define the data held by this table. 
	This specifically excludes the unique ID field and any control fields, which are held separately"
	
	^dataFields!

dataFields: anSSWSQLFieldCollection

	"6/8/2000
	
	dataFields stores an SSWSQLFieldCollection of SSWDBFields that define the data held by this table. 
	This specifically excludes the unique ID field and any control fields, which are held separately"
	
	dataFields := anSSWSQLFieldCollection!

dbNameFor: aSymbol

	"Return the name (String) to use within the database for the inst var named aSymbol"

	^self sqlDialect transformInstVarName: (self symbolicNameFor: aSymbol)!

defaultName

	"The default (table)name is the name of the receiver's instanceClass,
	transformed according to the sqlDialect"
	
	^self sqlDialect transformClassName: self instanceClass name
!

define: aSymbol abbreviation: abbrevSymbol as: anObject

	"Definition method for abbreviations. 
	As such, only suitable for definitions of instance variables"

	^self 
		abbreviate: aSymbol to: abbrevSymbol;
		define: aSymbol as: anObject!

define: aSymbol as: anObject

	"6/8/2000
	
	General user method for table specification.	 
	anObject could be a Class or ClassWithInfo (defining a field) or a CollectionSpec (defining a Collection).
	Example usage of each type:
		define: #name as: String;	
		define: #children as: (Collection of: Person owner: #parent)
	Return the table component added to the receiver"

	"Double-despatch; the object knows how to define itself"
	^anObject defineAs: aSymbol in: self!

define: aSymbol asCollectionSpec: aCollectionSpec

	"Private - 14/8/2000"
	
	^self collectionSpecs add:
		(aCollectionSpec
			accessor: (SSWInstVarAccessor toAccess: aSymbol in: self instanceClass);
			table: self;
			yourself)!

define: aSymbol asFieldNamed: aString holding: aClass

	"Private - 6/8/2000
	
	Return the field created"

	aString size > self sqlDialect maxColumnNameLength ifTrue: 
		[self error: ('Column %1 for %2 is larger than max length of %3!!i!!. Define a suitable abbreviation'
					formatWith: aString with: aSymbol with: self sqlDialect maxColumnNameLength)].
	
	^self addDataField:
		(SSWDBStaticField new
			name: aString;
			targetClass: aClass;
			accessor: ((self sqlDialect instVarAccessorFor: aClass) access: aSymbol in: self instanceClass);
			yourself)!

define: aSymbol asInstVarHolding: aClass

	"Private - 6/8/2000
	Modified 12/9/2001		Use dialect name transformation (issue#0007)
	
	Return the field created"
	
	^self define: aSymbol asFieldNamed: (self dbNameFor: aSymbol) holding: aClass!

defineAsID: aSymbol

	"Created 6/8/2000	
	Modified 12/9/2001		Use dialect name transformation (issue#0007)
	
	Define the receiver's idField to access inst var aSymbol.
	Use of this method enables persistent objects to store their unique ID within themselves.
	This can be useful in some cases, although the unique ID is really internal information.
	Return the idField"
	
	^self defineAsID: aSymbol fieldName: (self dbNameFor: aSymbol)!

defineAsID: aSymbol fieldName: aString

	"6/8/2000
	
	Define the receiver's idField to be named aString and to access inst var aSymbol.
	Use of this method enables persistent objects to store their unique ID within themselves.
	This can be useful in some cases, although the unique ID is really internal information.
	Return the idField"

	| field |

	field := self defineIDFieldName: aString.

	field accessor instanceAccessor: (SSWInstVarAccessor toAccess: aSymbol in: self instanceClass).

	^field!

defineAsIDField: aString

	"14/8/2000

	Deprecated; use defineIDFieldName: instead"
	
	#deprecated.
	^self defineIDFieldName: aString
!

defineDefaultIDField

	"19/8/2001

	Define the default-named ID field.
	Return the field defined"
	
	self createIDField.

	^self idField 
		name: (self sqlDialect transformInstVarName: self idField accessor nameInDB);
		yourself!

defineIDFieldName: aString

	"19/8/2001

	Define the receiver table's unique ID field to be named aString.
	Clients do not need to call this method if they are happy with the default name (based on #id_).
	Return the field created"

	self createIDField.

	^self idField 
		name: aString;
		yourself
!

definesName: aString

	^self name = aString or: [self containedTables anySatisfy: [ :each | each definesName: aString]]!

dependentDataFieldsSelect: aBlock

	"24/9/2001

	Evaluate aBlock with each dependent component which is a data field, collecting those which answer true.
	Faster than dependentDataFields select:"
	
	^self dataFields select: [ :field | field isDependent and: [aBlock value: field]]!

fieldAccessing: aSymbol

	"14/8/2000
	
	Determine and return the field of the receiver which accesses the inst var named aSymbol
	of the receiver's instanceClass"
	
	"Optimised implementation - faster than allFields detect: "
	self allFieldsDo: [ :field | (field accessor accesses: aSymbol) ifTrue: [^field]].

	^nil!

forCreation

	"Return an appropriate SSWDBxxxTable with which to 
	CREATE the receiver table in the database.
	
	Default - return the receiver"
	
	^self!

fullName

	"fullName stores the 'full' name of the receiver. 
	This is usually the same as the name, except where it exceeds the DB size limit,
	in which case name holds a suitably-abbreviated name, whilst fullName maintains the original"

	fullName isNil ifTrue: [fullName := self name].

	^fullName!

fullName: aString

	"fullName stores the 'full' name of the receiver. 
	This is usually the same as the name, except where it exceeds the DB size limit,
	in which case name holds a suitably-abbreviated name, whilst fullName maintains the original"

	fullName := aString!

hasCollectionAccessing: aSymbol

	"19/4/2001
	
	Return a Boolean indicating whether the receiver has a collectionSpec
	accessing the instance variable name aSymbol"

	^(self collectionAccessing: aSymbol) ~= nil !

hasFieldAccessing: aSymbol

	"19/4/2001
	
	Return a Boolean indicating whether the receiver has a Field
	accessing the instance variable name aSymbol"

	^(self fieldAccessing: aSymbol) notNil !

hasStaticConditions

	"11/4/2001
	
	Return a Boolean indicating if the receiver table has any SSWSQLConditions 
	which are always applied when SELECTing from the receiver table.
	Unlike conditions that may be derived from controlFields, these conditions
	do not vary from object to object - they are static for all reads from this table.
	
	Default - false. Subclasses returning true should implement staticConditions accordingly"
	
	^false!

idCacheSize

	"12/5/2001

	idCacheSize stores the number of unique IDs that should be cached by ReStore.
	Caching IDs reduces querying when creating storing instances of the instanceClass,
	but does lead to ID wastage if not all cached IDs have been used on logout.

	Default is 10. Use a higher cache size for tables creating many instances"

	^idCacheSize!

idCacheSize: anInteger

	"12/5/2001

	idCacheSize stores the number of unique IDs that should be cached by ReStore.
	Caching IDs reduces querying when creating storing instances of the instanceClass,
	but does lead to ID wastage if not all cached IDs have been used on logout.

	Default is 10. Use a higher cache size for tables creating many instances"

	idCacheSize := anInteger!

idField

	"6/8/2000
	
	idField stores the SSWDBField which holds the unique ID of records in this table.	
	Lazy-defaulted if not set explicity"
	
	idField == nil ifTrue: [self defineDefaultIDField].
	
	^idField!

idField: anSSWDBField

	"6/8/2000
	
	idField stores the SSWDBField which holds the unique ID of records in this table"
	
	idField := anSSWDBField!

initializeIn: anSSWReStore

	"Created 19/4/2001
	Modified 12/9/2001		Store dialect; apply dialect name transformation (issue#0007)
	Modified: 14/11/2002		Now stores anSSWReStore directly"

	self reStore: anSSWReStore.

	self controlFields: (anSSWReStore objectProxyClassFor: self instanceClass) controlFields.
	self controlFields do: 
		[ :field | 
		field table: self.
		field name: (self sqlDialect transformInstVarName: field accessor nameInDB)]!

instanceClass

	"6/8/2000
	
	instanceClass stores the Class which is equivalent to this table"
	
	^instanceClass!

instanceClass: aClass

	"6/8/2000
	
	instanceClass stores the Class which is equivalent to this table"
	
	"CHECK HERE: never allow aClass whose name includes an _
	as this can cause problems for the contained table mechanism"
	(aClass name includes: $_) ifTrue: [self error: 'Cannot use a Class name containing an underscore ( _ )'].

	instanceClass := aClass!

instanceClassFromRow: aDBRow

	"Private - for the receiver this is always its static instance class"

	^self instanceClass!

isDefined

	"18/4/2001
	
	Return a Boolean indicating if the receiver table is 'defined'
	i.e. if it has some meaningful fields/collections"
	
	^self dataFields size > 0 or: [self collectionSpecs size > 0]!

isRootTable

	^true!

isValidForPersistence

	"19/8/2000"

	^true
!

name

	"5/8/2000
	
	Overriden to lazy initialize to default name"
	
	name == nil ifTrue: [name := fullName := self defaultName].
	
	^name!

nonPersistentCopyOf: anObject

	"Return a non-persistent copy of the given object (which is of the receiver's instanceClass).
	Note that persistent collections are also copied"

	| copyObject |

	copyObject := anObject shallowCopy.

	self collectionSpecs do: 
		[ :spec |
		spec value: (spec value: anObject) copy in: copyObject].

	^copyObject!

parameterisedRecoveryQuery

	"Return a parameterised SQLSelectQuery which can fetch a single row of this table by its ID"

	^SSWSQLSelectQuery new
		table: self withAllFields;
		conditions: (SSWSQLCondition field: self idField equalTo: SSWSQLQueryParameter);
		yourself!

recoverInstanceFromRow: aDBRow into: anSSWDBObjectProxy
	
	"19/4/2001"
	
	anSSWDBObjectProxy 
		_proxiedObject: (self createInstanceFromRow: aDBRow);
		_aquireCollectionProxiesUsing: self collectionSpecs.

	self idField applyValueFromRow: aDBRow to: anSSWDBObjectProxy.

	self controlFields do:
		[ :field |
		field applyValueFromRow: aDBRow to: anSSWDBObjectProxy]!

registerClass

	"10/4/2001

	Return the class under which objects created from this table 
	should be registered in an SSWReStore's proxy cache.
	Normally this is their own class. Subclassed may change this"

	^self instanceClass!

removeDefinition

	"Remove the receiver's definition from the database accessed by the receiver's reStore.
	Return a collection of the dropped tables"

	| creationTable containedTables |

	creationTable := self forCreation.
	creationTable isNil ifTrue: [^#()].

	(self reStore dbIncludesTableNamed: creationTable name) ifTrue: 
		[self reStore executeSQL: ('DROP TABLE ', creationTable name)].

	containedTables := creationTable containedTables.
	containedTables do: [ :containedTable | containedTable removeDefinition].

	^(OrderedCollection with: creationTable)
		addAll: containedTables;
		yourself!

removeRedundantContainedTables

	"Remove from the database accessed by the receiver's reStore 
	any contained tables that are no longer contained in the receiver"

	| root containedTableNames |

	root := self containedTableNameRoot.
	containedTableNames := self reStore dbTableNames select: [ :each | each beginsWith: root].

	"Don't delete any used containedTables"
	self containedTables do: [ :table | containedTableNames remove: table name ifAbsent: []].

	containedTableNames do:
		[ :tableName |
		self reStore executeSQL: ('DROP TABLE ', tableName)]!

reStore

	"the SSWReStore to which this table belongs"

	^reStore!

reStore: anSSWReStore

	"the SSWReStore to which this table belongs"

	reStore := anSSWReStore!

rootClass

	"Return the class which is the root of the receiver's persistent hierarchy.
	Standard definition - the receiver's instanceClass"

	^self instanceClass!

rootTable

	"Return the table which is the root of the receiver's persistent hierarchy.
	Standard definition - the receiver"

	^self!

sqlDefinition

	"9/3/01"
	
	| stream |
	
	stream := WriteStream on: (String new: 64).
	
	self writeSQLDefinitionOn: stream.
	
	^stream contents!

sqlDialect

	^self reStore sqlDialect
!

staticConditions

	"11/4/2001
	
	Return an SSWSQLConditionCollection which is always applied
	when SELECTing from the receiver table.
	Unlike conditions that may be derived from controlFields, these conditions
	do not vary from object to object - they are static for all reads from this table.
	
	Subclasses should override if they implement hasStaticConditions to return true"
	
	^self subclassResponsibility!

storeNonPersistentComponentsOf: aProxyObject

	"1/10/2000
	
	Ensure that each non-persistency-valid component of the proxiedObject of aProxyObject 
	accessed by the receiver's components exists in the aProxyObject's ReStore 
	- store those that do not exist."
	
	| proxiedObject |
	
	proxiedObject := aProxyObject _proxiedObject.

	self dataFields do:
		[ :field | (field accessor valueIn: proxiedObject) _ensurePersistentIn: self reStore].
		
	self collectionSpecs do:
		[ :collectionSpec || collection |
		collection := collectionSpec accessor valueIn: aProxyObject.
		collection isNil ifTrue: [collection := collectionSpec newCollection].
		collection isDBProxy ifFalse: 
			[| proxy |
			proxy := aProxyObject _collectionProxyFor: collectionSpec.
			proxy _proxiedObject == collection ifFalse: 
				[proxy _setProxiedObject: collection; _referenced]]]!

symbolicNameFor: aSymbol

	"Return the correct symbolic name to use for the inst var named aSymbol.
	This is usually aSymbol itself, unless an abbreviation is specified"

	^self abbreviations at: aSymbol ifAbsent: [aSymbol]!

synchronizeDefinition

	"Update the receiver's definition in the database accessed by its reStore"
	
	| creationTable |

	creationTable := self forCreation.
	creationTable isNil ifTrue: [^self].

	(self reStore dbIncludesTableNamed: creationTable name)
	ifTrue: 
		[creationTable 
			synchronizeFields;
			removeRedundantContainedTables]
	ifFalse: 
		[creationTable createDefinition].

	creationTable containedTables do: [ :containedTable | containedTable synchronizeDefinition]!

synchronizeFields

	"Update the definition of the receiver's fields in the database accessed by reStore.
	ASSERT: the receiver exists as a table in the database"
	
	| allFields allColumns addedFields droppedColumns stream |

	allFields := self allFields.
	allColumns := self reStore columnsInTable: self.
	addedFields := allFields reject: [ :field | allColumns anySatisfy: [ :column | column name = field name]].
	droppedColumns := allColumns reject: [ :column | allFields anySatisfy: [ :field | field name = column name]].

	addedFields isEmpty ifFalse: [self reStore sqlDialect addFields: addedFields to: self in: self reStore].

	"Not all DBs can directly DROP COLUMN. Use the dialect's maintenance action for this"
	droppedColumns	do: 
		[ :column | 
		self reStore sqlDialect 
			dropColumnNamed: column name 
			fromTable: self
			in: self reStore]!

withAllFields

	"Return a table equivalent to the receiver but containing all possible fields.	
	For non-inherited tables, this is just the receiver"
	
	^self!

writeSQLDefinitionOn: aStream
	
	self isDefined ifFalse: [self error: 'Cannot create a table with no fields'].
	
	aStream
		nextPutAll: 'CREATE TABLE ';
		nextPutAll: self name;
		nextPutAll: ' ('.
	
	self idField writeSQLDefinitionOn: aStream.
	aStream nextPutAll: ' PRIMARY KEY'.
		
	self dataAndControlFields do:
		[ :field |
		aStream nextPutAll: ', '.
		field writeSQLDefinitionOn: aStream].
		
	aStream nextPut: $)! !
!SSWDBTable categoriesFor: #abbreviate:to:!defining!private! !
!SSWDBTable categoriesFor: #abbreviations!accessing!public! !
!SSWDBTable categoriesFor: #abbreviations:!accessing!public! !
!SSWDBTable categoriesFor: #aboutToBeUnstored:!evaluating!public! !
!SSWDBTable categoriesFor: #addDataField:!defining!private! !
!SSWDBTable categoriesFor: #allFields!evaluating!public! !
!SSWDBTable categoriesFor: #allFieldsDo:!evaluating!public! !
!SSWDBTable categoriesFor: #collectionAccessing:!evaluating!public! !
!SSWDBTable categoriesFor: #collectionSpecs!accessing!public! !
!SSWDBTable categoriesFor: #collectionSpecs:!accessing!public! !
!SSWDBTable categoriesFor: #componentsDo:!evaluating!public! !
!SSWDBTable categoriesFor: #containedTableNameRoot!evaluating!private! !
!SSWDBTable categoriesFor: #containedTables!evaluating!public! !
!SSWDBTable categoriesFor: #controlFields!accessing!public! !
!SSWDBTable categoriesFor: #controlFields:!accessing!public! !
!SSWDBTable categoriesFor: #createDefinition!db maintenance!public! !
!SSWDBTable categoriesFor: #createIDField!initializing!private! !
!SSWDBTable categoriesFor: #createInstanceFromRow:!instance creation!public! !
!SSWDBTable categoriesFor: #createNonProxiedInstanceFromRow:!instance creation!private! !
!SSWDBTable categoriesFor: #dataAndControlFields!evaluating!public! !
!SSWDBTable categoriesFor: #dataFields!accessing!public! !
!SSWDBTable categoriesFor: #dataFields:!accessing!public! !
!SSWDBTable categoriesFor: #dbNameFor:!evaluating!private! !
!SSWDBTable categoriesFor: #defaultName!evaluating!public! !
!SSWDBTable categoriesFor: #define:abbreviation:as:!defining!public! !
!SSWDBTable categoriesFor: #define:as:!defining!public! !
!SSWDBTable categoriesFor: #define:asCollectionSpec:!defining!private! !
!SSWDBTable categoriesFor: #define:asFieldNamed:holding:!defining!private! !
!SSWDBTable categoriesFor: #define:asInstVarHolding:!defining!private! !
!SSWDBTable categoriesFor: #defineAsID:!defining!public! !
!SSWDBTable categoriesFor: #defineAsID:fieldName:!defining!public! !
!SSWDBTable categoriesFor: #defineAsIDField:!private! !
!SSWDBTable categoriesFor: #defineDefaultIDField!defining!private! !
!SSWDBTable categoriesFor: #defineIDFieldName:!defining!public! !
!SSWDBTable categoriesFor: #definesName:!public!testing! !
!SSWDBTable categoriesFor: #dependentDataFieldsSelect:!evaluating!public! !
!SSWDBTable categoriesFor: #fieldAccessing:!evaluating!public! !
!SSWDBTable categoriesFor: #forCreation!evaluating!public! !
!SSWDBTable categoriesFor: #fullName!accessing!public! !
!SSWDBTable categoriesFor: #fullName:!accessing!public! !
!SSWDBTable categoriesFor: #hasCollectionAccessing:!public!testing! !
!SSWDBTable categoriesFor: #hasFieldAccessing:!public!testing! !
!SSWDBTable categoriesFor: #hasStaticConditions!public!testing! !
!SSWDBTable categoriesFor: #idCacheSize!accessing!public! !
!SSWDBTable categoriesFor: #idCacheSize:!accessing!public! !
!SSWDBTable categoriesFor: #idField!accessing!public! !
!SSWDBTable categoriesFor: #idField:!accessing!public! !
!SSWDBTable categoriesFor: #initializeIn:!initializing!public! !
!SSWDBTable categoriesFor: #instanceClass!accessing!public! !
!SSWDBTable categoriesFor: #instanceClass:!accessing!public! !
!SSWDBTable categoriesFor: #instanceClassFromRow:!instance creation!private! !
!SSWDBTable categoriesFor: #isDefined!public!testing! !
!SSWDBTable categoriesFor: #isRootTable!public!testing! !
!SSWDBTable categoriesFor: #isValidForPersistence!public!testing! !
!SSWDBTable categoriesFor: #name!accessing!public! !
!SSWDBTable categoriesFor: #nonPersistentCopyOf:!instance creation!public! !
!SSWDBTable categoriesFor: #parameterisedRecoveryQuery!evaluating!public! !
!SSWDBTable categoriesFor: #recoverInstanceFromRow:into:!instance creation!public! !
!SSWDBTable categoriesFor: #registerClass!evaluating!public! !
!SSWDBTable categoriesFor: #removeDefinition!db maintenance!public! !
!SSWDBTable categoriesFor: #removeRedundantContainedTables!db maintenance!public! !
!SSWDBTable categoriesFor: #reStore!accessing!public! !
!SSWDBTable categoriesFor: #reStore:!accessing!public! !
!SSWDBTable categoriesFor: #rootClass!evaluating!public! !
!SSWDBTable categoriesFor: #rootTable!evaluating!public! !
!SSWDBTable categoriesFor: #sqlDefinition!output!public! !
!SSWDBTable categoriesFor: #sqlDialect!evaluating!public! !
!SSWDBTable categoriesFor: #staticConditions!evaluating!public! !
!SSWDBTable categoriesFor: #storeNonPersistentComponentsOf:!public!validating! !
!SSWDBTable categoriesFor: #symbolicNameFor:!evaluating!private! !
!SSWDBTable categoriesFor: #synchronizeDefinition!db maintenance!public! !
!SSWDBTable categoriesFor: #synchronizeFields!db maintenance!public! !
!SSWDBTable categoriesFor: #withAllFields!evaluating!public! !
!SSWDBTable categoriesFor: #writeSQLDefinitionOn:!output!public! !

!SSWDBTable class methodsFor!

forClass: aClass

	"6/8/2000"
	
	^self new
		instanceClass: aClass;
		yourself!

forClass: aClass in: anSSWReStore

	"6/8/2000"
	
	^(self forClass: aClass)
		initializeIn: anSSWReStore;
		yourself!

new

	"6/8/2000"
	
	^super new
		dataFields: SSWSQLFieldCollection new;
		controlFields: SSWSQLFieldCollection new;
		collectionSpecs: OrderedCollection new;
		abbreviations: Dictionary new;
		idCacheSize: 10;
		yourself! !
!SSWDBTable class categoriesFor: #forClass:!instance creation!public! !
!SSWDBTable class categoriesFor: #forClass:in:!instance creation!public! !
!SSWDBTable class categoriesFor: #new!instance creation!public! !

