"Filed out from Dolphin Smalltalk 7"!

ReadStream subclass: #SSWDBReadStream
	instanceVariableNames: 'instancesCollection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBReadStream guid: (GUID fromString: '{5a3e3dd7-3990-11d5-b1df-444553540000}')!
SSWDBReadStream comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBReadStream categoriesForClass!Unclassified! !
!SSWDBReadStream methodsFor!

atEnd

	"28/3/2001
	
	Overriden to test via readLimit"
	
	^self position = readLimit!

atStart

	^self position <= 1!

close

	"28/3/2001
	
	Close the DBResultSet (and hence the DBStatement).
	Not essential as finalization will do this, but it is good practice"
	
	collection close!

collection: anSSWDBInstancesCollection

	"28/3/2001
	
	Overriden to actually set the receiver's collection to a DBResultSet"
	
	self instancesCollection: anSSWDBInstancesCollection.
	
	super collection: anSSWDBInstancesCollection resultSet!

collectionFirst

	"Private - Check for error - usually 'record deleted' - requery"

	^[collection first] on: DBError do: 
		[ :exc | 
		self reinitialize.

		"Directly access the collection to prevent potential recursive error trapping"
		exc return: collection first]!

collectionLast

	"Private - Check for error - usually 'record deleted' - requery"

	^[collection last] on: DBError do: 
		[ :exc | 
		self reinitialize.

		"Directly access the collection to prevent potential recursive error trapping"
		exc return: collection last]!

collectionNext

	"Private - Check for error - usually 'record deleted' "

	^[collection next] on: DBError do: 
		[ :exc |
		"If a 'deleted' error, skip until we find a valid next. Otherwise try resync"
		exc isRecordDeletedError
			ifTrue: [readLimit := readLimit - 1]
			ifFalse: [self resync].
		exc return: self collectionNext]!

collectionPrevious

	"Private - Check for error - usually 'record deleted' - requery"

	^[collection previous] on: DBError do: 
		[ :exc | 
		"Skip until we find a valid previous"
		exc isRecordDeletedError
		ifTrue: 
			[position := position - 1.
			readLimit := readLimit - 1]
		ifFalse: 
			[self resync].
		exc return: self collectionPrevious]!

errorStartOfStream

	self error: 'start of stream reached'!

first

	"Pass on to the receiver's collection (DBResultSet) which handles first"
	
	| row |
	
	row := self collectionFirst.
	
	"DBResultSet returns nil for first if empty"
	^row isNil
	ifTrue: 
		[self errorStartOfStream]
	ifFalse: 
		[position := 1.
		self instancesCollection reStore objectFromRow: row table: self instancesCollection table]!

initialize

	"Private - 28/3/2001
	
	Overriden to set readLimit from collection (DBResultSet) or instancesCollection,
	as most efficient"

	position := 0.

	"If the collection knows its numRows, use this else we have to query"	
	collection numRows = -1
		ifTrue: [readLimit := instancesCollection size]
		ifFalse: [readLimit := collection numRows]
!

instancesCollection

	"28/3/2001
	
	instancesCollection stores the SSWDBInstancesCollection which the receiver
	is a stream 'onto' (in fact, a DBResultSet is the receiver's collection"
	
	^instancesCollection!

instancesCollection: anSSWDBInstancesCollection

	"28/3/2001
	
	instancesCollection stores the SSWDBInstancesCollection which the receiver
	is a stream 'onto' (in fact, a DBResultSet is the receiver's collection"
	
	instancesCollection := anSSWDBInstancesCollection!

last

	"Pass on to the receiver's collection (DBResultSet) which handles last"
	
	| row |
	
	row := self collectionLast.
	
	"DBResultSet returns nil for next if atEnd"
	^row isNil
	ifTrue: 
		[self errorEndOfStream]
	ifFalse: 
		[position := readLimit.
		self instancesCollection reStore objectFromRow: row table: self instancesCollection table]!

next

	"28/3/2001
	
	Pass on to the receiver's collection (DBResultSet) which handles next"
	
	| row |
	
	position = 0 ifTrue: [^self first].

	row := self collectionNext.
	
	"DBResultSet returns nil for next if atEnd"
	^row isNil
	ifTrue: 
		[self errorEndOfStream]
	ifFalse: 
		[position := position + 1.
		self instancesCollection reStore objectFromRow: row table: self instancesCollection table]!

position: anInteger

	"27/3/2001
	
	Overriden to update the collection (DBResultSet)"
	
	super position: anInteger.
	collection at: anInteger!

previous

	"Pass on to the receiver's collection (DBResultSet) which handles previous"
	
	| row |
		
	row := self collectionPrevious.

	"DBResultSet returns nil if at start"
	^row isNil
	ifTrue: 
		[self errorStartOfStream]
	ifFalse:
		[position := position - 1.
		self instancesCollection reStore objectFromRow: row table: self instancesCollection table]!

reinitialize

	"Reinitialize the receiver by requerying"
	collection close.
	collection := self instancesCollection resultSet.
	self initialize!

resync

	"Reinitialize the receiver by requerying"
	collection close.
	collection := self instancesCollection resultSet.
	self position: position
	!

setToEnd

	"28/3/2001
	
	Overriden to set position via accessor"
	
	self position: readLimit!

syncTo: aPersistentObject

	| table idField id next |

	table := instancesCollection reStore tableForClass: aPersistentObject class.
	idField := table idField.
	id := aPersistentObject _id.

	"Reinitialize the receiver by requerying"
	collection close.
	collection := self instancesCollection resultSet.
	position := 0.

	[next := collection next.
	position := position + 1.
	next isNil or: [(next atField: idField) = id]] whileFalse.

	^next notNil! !
!SSWDBReadStream categoriesFor: #atEnd!actions!public! !
!SSWDBReadStream categoriesFor: #atStart!actions!public! !
!SSWDBReadStream categoriesFor: #close!actions!public! !
!SSWDBReadStream categoriesFor: #collection:!accessing!public! !
!SSWDBReadStream categoriesFor: #collectionFirst!evaluating!private! !
!SSWDBReadStream categoriesFor: #collectionLast!evaluating!private! !
!SSWDBReadStream categoriesFor: #collectionNext!evaluating!private! !
!SSWDBReadStream categoriesFor: #collectionPrevious!evaluating!private! !
!SSWDBReadStream categoriesFor: #errorStartOfStream!actions!private! !
!SSWDBReadStream categoriesFor: #first!evaluating!public! !
!SSWDBReadStream categoriesFor: #initialize!initializing!private! !
!SSWDBReadStream categoriesFor: #instancesCollection!accessing!public! !
!SSWDBReadStream categoriesFor: #instancesCollection:!accessing!public! !
!SSWDBReadStream categoriesFor: #last!evaluating!public! !
!SSWDBReadStream categoriesFor: #next!evaluating!public! !
!SSWDBReadStream categoriesFor: #position:!evaluating!public! !
!SSWDBReadStream categoriesFor: #previous!evaluating!public! !
!SSWDBReadStream categoriesFor: #reinitialize!initializing!public! !
!SSWDBReadStream categoriesFor: #resync!initializing!public! !
!SSWDBReadStream categoriesFor: #setToEnd!actions!public! !
!SSWDBReadStream categoriesFor: #syncTo:!initializing!public! !

