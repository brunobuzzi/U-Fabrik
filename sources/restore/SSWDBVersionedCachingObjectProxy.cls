"Filed out from Dolphin Smalltalk 7"!

SSWDBCachingObjectProxy subclass: #SSWDBVersionedCachingObjectProxy
	instanceVariableNames: 'version'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBVersionedCachingObjectProxy guid: (GUID fromString: '{36898ee1-3d8f-11d5-b1df-444553540000}')!
SSWDBVersionedCachingObjectProxy comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBVersionedCachingObjectProxy categoriesForClass!Unclassified! !
!SSWDBVersionedCachingObjectProxy methodsFor!

_commitUpdates

	"20/10/2000
	
	Reimplemented to include version increment"

	| updates |

	updates := self _fieldUpdates.
	
	^updates isEmpty 
	ifTrue: 
		[true]
	ifFalse: 
		[updates add: self _incrementVersionUpdate.
		(reStore applyUpdates: updates toObject: self)]!

_incrementVersion

	"20/4/2001"

	version == nil
		ifTrue: [version := 1]
		ifFalse: [version := version + 1]!

_incrementVersionUpdate

	"20/4/2001
	
	Create and return an update that will increment the version number
	of the row corresponding to the receiver's proxiedObject"
	
	^version == nil
		ifTrue: [SSWSQLFieldAssignment field: (self _dbTable fieldAccessing: #_version) value: 1]
		ifFalse: [SSWSQLFieldAssignment field: (self _dbTable fieldAccessing: #_version) value: (version + 1)]!

_matchStateOf: aProxy

	"16/4/2001

	Match the internal proxy (non data) state of aProxy"

	version := aProxy _version!

_postCommitUpdates

	"24/4/2001

	Reimplemented to increment version"

	| updates |

	updates := self _fieldUpdates.
	
	updates isEmpty ifFalse: 
		[updates applyTo: copyObject. 
		self _incrementVersion]!

_version

	"19/4/2001
	
	version stores an Integer representing the version or revision number
	of the object proxy'd by the receiver.
	
	This number is incremented each time the object is changed in the DB"
	
	^version!

_version: anInteger

	"19/4/2001
	
	version stores an Integer representing the version or revision number
	of the object proxy'd by the receiver.
	
	This number is incremented each time the object is changed in the DB"
	
	version := anInteger! !
!SSWDBVersionedCachingObjectProxy categoriesFor: #_commitUpdates!actions:internal!public! !
!SSWDBVersionedCachingObjectProxy categoriesFor: #_incrementVersion!actions:internal!public! !
!SSWDBVersionedCachingObjectProxy categoriesFor: #_incrementVersionUpdate!accessing:derived!public! !
!SSWDBVersionedCachingObjectProxy categoriesFor: #_matchStateOf:!actions:internal!public! !
!SSWDBVersionedCachingObjectProxy categoriesFor: #_postCommitUpdates!actions:internal!public! !
!SSWDBVersionedCachingObjectProxy categoriesFor: #_version!accessing!public! !
!SSWDBVersionedCachingObjectProxy categoriesFor: #_version:!accessing!public! !

!SSWDBVersionedCachingObjectProxy class methodsFor!

_forNewObject: anObject withID: anInteger inReStore: aReStore

	"19/4/2001

	Overriden to set initial version number"
	
	^(super _forNewObject: anObject withID: anInteger inReStore: aReStore)
		_version: 1;
		yourself!

controlFields

	"29/4/2001

	Overriden to set version controlField"

	^super controlFields
		add: self versionControlField;
		yourself!

new

	"19/4/2001

	Overriden to set initial version number"
	
	^super new
		_version: 1;
		yourself!

versionControlField

	"29/4/2001"

	^SSWDBStaticField new
		accessor: SSWDBVersionAccessor new;
		targetClass: Integer;
		yourself
	! !
!SSWDBVersionedCachingObjectProxy class categoriesFor: #_forNewObject:withID:inReStore:!instance creation!public! !
!SSWDBVersionedCachingObjectProxy class categoriesFor: #controlFields!constants!public! !
!SSWDBVersionedCachingObjectProxy class categoriesFor: #new!instance creation!public! !
!SSWDBVersionedCachingObjectProxy class categoriesFor: #versionControlField!constants!public! !

