"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBTableRecord
	instanceVariableNames: 'tableName fullTableName nextID cachedIDs'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBTableRecord guid: (GUID fromString: '{c9939531-b39a-4ac3-b6d3-55cea290fd54}')!
SSWDBTableRecord comment: ''!
!SSWDBTableRecord categoriesForClass!Unclassified! !
!SSWDBTableRecord methodsFor!

_proxiedObject

	"The receiver is always non-persistent. 
	Answer the receiver for compatability with a persistent proxy"

	^self!

cachedIDs

	"19/8/2000
	
	cachedIDs stores a collection of IDs which are allocated (from the DB) but not used (by rows).
	Caching IDs in this way reduces querying"
	
	cachedIDs == nil ifTrue: [cachedIDs := OrderedCollection new].
	
	^cachedIDs!

cachedIDs: aCollection

	"19/8/2000
	
	cachedIDs stores a collection of IDs which are allocated (from the DB) but not used (by rows).
	Caching IDs in this way reduces querying"
		
	cachedIDs := aCollection!

cacheUpToID: anInteger

	"23/3/2001
	
	anInteger is now the nextID in the database.
	Thus IDs from the receiver's nextID up to (but not including) anInteger can be cached.
	
	Cache these IDs, then update the receiver's nextID"
	
	self cachedIDs: (self nextID to: (anInteger -1)) asOrderedCollection.
	self nextID: anInteger!

fullTableName

	"fullTableName stores the full-length name of the table related to the receiver.
	This will usually be the same as the tableName. However, where the size of 
	the fullTableName is greater than the max length supported by the database,
	then tableName will contain an auto-abbreviated version"
	
	"Backwards-compatability: nil fullTableName means tableName == fullTableName"
	^fullTableName ifNil: [tableName]!

fullTableName: aString

	"fullTableName stores the full-length name of the table related to the receiver.
	This will usually be the same as the tableName. However, where the size of 
	the fullTableName is greater than the max length supported by the database,
	then tableName will contain an auto-abbreviated version"
	
	fullTableName := aString!

nextCachedID

	"19/8/2000
	
	Remove and return the next cachedID, or nil if none"
	
	^self cachedIDs isEmpty
		ifTrue: [nil]
		ifFalse: [self cachedIDs removeFirst]!

nextID

	"19/8/2000
	
	nextID stores the next available ID value for the receiver's table, as stored in the database"
	
	^nextID!

nextID: anInteger

	"19/8/2000
	
	nextID stores the next available ID value for the receiver's table, as stored in the database"
	
	nextID := anInteger!

tableName

	"19/8/2000
	
	tableName stores the name (String) of the SSWDBTable 
	for which the receiver maintains the next available IDs"
	
	^tableName!

tableName: aString

	"19/8/2000
	
	tableName stores the name (String) of the SSWDBTable 
	for which the receiver maintains the next available IDs"
	
	tableName := aString! !
!SSWDBTableRecord categoriesFor: #_proxiedObject!accessing!public! !
!SSWDBTableRecord categoriesFor: #cachedIDs!accessing!public! !
!SSWDBTableRecord categoriesFor: #cachedIDs:!accessing!public! !
!SSWDBTableRecord categoriesFor: #cacheUpToID:!public!updating! !
!SSWDBTableRecord categoriesFor: #fullTableName!accessing!public! !
!SSWDBTableRecord categoriesFor: #fullTableName:!accessing!public! !
!SSWDBTableRecord categoriesFor: #nextCachedID!public!updating! !
!SSWDBTableRecord categoriesFor: #nextID!accessing!public! !
!SSWDBTableRecord categoriesFor: #nextID:!accessing!public! !
!SSWDBTableRecord categoriesFor: #tableName!accessing!public! !
!SSWDBTableRecord categoriesFor: #tableName:!accessing!public! !

!SSWDBTableRecord class methodsFor!

preferredObjectProxyClass 

	"1/5/2001"

	^SSWDBCachingObjectProxy!

tableIn: anSSWReStore

	"19/8/2000"

	| table |
	
	table := SSWDBTable forClass: self in: anSSWReStore.

	table
		name: (anSSWReStore sqlDialect transformClassName: #NextID);	"Name for historical reasons"
		define: #tableName as: (String maxSize: anSSWReStore sqlDialect maxTableNameLength);
		define: #nextID as: Integer.

	anSSWReStore supportsFullTableRecords ifTrue:
		[table define: #fullTableName as: (String maxSize: 255)].

	^table
		! !
!SSWDBTableRecord class categoriesFor: #preferredObjectProxyClass!persistence!public! !
!SSWDBTableRecord class categoriesFor: #tableIn:!persistence!public! !

