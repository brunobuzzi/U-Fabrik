"Filed out from Dolphin Smalltalk 7"!

SSWDBProxy subclass: #SSWDBObjectProxy
	instanceVariableNames: 'class id collectionProxies'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBObjectProxy guid: (GUID fromString: '{5a3e3ddb-3990-11d5-b1df-444553540000}')!
SSWDBObjectProxy comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBObjectProxy categoriesForClass!Unclassified! !
!SSWDBObjectProxy methodsFor!

_aquireCollectionProxiesUsing: collectionSpecs

	"Cache the proxiedObject's collection proxies, and set the backwards owner reference.
	The CollectionSpecs identifying the collections (equivalent to self _dbTable collectionSpecs) 
	are passed in as an optimisation"

	"If refreshing an existing object, we may already have the collections"
	collectionProxies isNil 
	ifTrue:
		[collectionProxies := IdentityDictionary new: collectionSpecs size.

		collectionSpecs do:
			[ :spec |
			(collectionProxies at: spec put: (spec accessor valueIn: proxiedObject))
				_owner: self]]
	ifFalse:
		[collectionSpecs do:
			[ :spec |
			spec accessor value: (collectionProxies at: spec) in: proxiedObject]]!

_class

	"6/8/2000
	
	class stores the Class of the object for which the receiver is a proxy"
	
	^class!

_class: aClass

	"6/8/2000
	
	class stores the Class of the object for which the receiver is a proxy"
	
	class := aClass!

_collectionProxies

	"22/5/2001

	collectionProxies stores an IdentityDictionary mapping each of 
	the receiver's table's collectionSpecs to the proxied collection in that spec.
	These are maintained by the receiver so actual collections in the proxiedObject
	can be related to their originating proxy"

	^collectionProxies!

_collectionProxies: anIdentityDictionary

	"22/5/2001

	collectionProxies stores an IdentityDictionary mapping each of 
	the receiver's table's collectionSpecs to the proxied collection in that spec.
	These are maintained by the receiver so actual collections in the proxiedObject
	can be related to their originating proxy"

	collectionProxies := anIdentityDictionary!

_collectionProxyFor: aCollectionSpec

	"22/5/2001

	Look up the collection proxy specified by the given spec.
	If none, create and cache it"

	^collectionProxies at: aCollectionSpec ifAbsentPut:
		[aCollectionSpec newProxydCollectionFor: self]!

_collectionProxySwapped: aCollectionProxy

	"22/5/2001

	The given collection proxy has swapped its references.
	Update the cache"

	^collectionProxies at: aCollectionProxy _collectionSpec put: aCollectionProxy!

_currentVersion

	"23/4/2001
	
	Re-read the receiver's proxiedObject from the database,
	returning it as a new proxied object.
	NB Intended for privileged clients only; other clients should use currentVersion (no _ prefix)"
	
	| newProxy |
	
	newProxy := self _proxyClass new.
	newProxy _id: id; _class: class; _reStore: reStore.	

	reStore recoverObjectOfClass: class withID: id into: newProxy.
	
	^newProxy!

_dbTable

	"19/8/2000"
	
	^reStore tableForClass: class!

_id

	"6/8/2000
	
	id stores the unique ID (Integer) of the object for which the receiver is a proxy"
	
	^id!

_id: anInteger

	"6/8/2000
	
	dbID stores the unique ID (Integer) of the object for which the receiver is a proxy"
	
	id := anInteger!

_instVarAt: anInteger

	"21/1/2001
	
	Sent from internal code to access the proxiedObject directly.
	ASSERT: the receiver is a recovered proxy"
	
	^proxiedObject instVarAt: anInteger!

_instVarAt: anInteger put: anObject

	"21/1/2001
	
	Sent from internal code to access the proxiedObject directly.
	ASSERT: the receiver is a recovered proxy"
	
	^proxiedObject instVarAt: anInteger put: anObject!

_intern

	"6/8/2000
	
	Register the receiver in its reStore"
	
	reStore registerProxy: self!

_isDeleted

	"21/1/2001
	
	Return a Boolean indicating whether the receiver is marked as deleted"
	
	^self subclassResponsibility!

_isNew

	"21/1/2001
	
	Return a Boolean indicating whether the receiver does not yet exist in the database"
	
	^self _isPersistent not!

_isPersistent

	"21/1/2001
	
	Return a Boolean indicating whether the receiver is persistent
	(has been written to the database yet)"
	
	^self subclassResponsibility!

_postSwapReferences

	"22/5/2001

	Inform the collectionProxies"

	collectionProxies do: [ :proxy | proxy _owner: self]!

_prepareToCommit

	"26/4/2001"
	
	self _isDeleted ifFalse: 
		[reStore preWriteValidate: self]!

_proxiedObjectMissing

	"22/5/2001

	The receiver's proxiedObject (as specified by class/id) is missing.
	Initialize the receiver to represent this"

	self 
		_proxiedObject: (SSWDBDeletedObject newForClass: class id: id);
		_collectionProxies: IdentityDictionary new!

_recoverProxiedObject

	"6/8/2000
	
	Recover the receiver's proxiedObject from the database"
	
	reStore recoverObjectOfClass: class withID: id into: self!

_unstore

	"Created 21/1/2001
	Modified 19/8/2001	Also notify the table (to delete dependent objects, issue#0006)

	Unstore the receiver's proxyObject - set the receiver's state so that 
	the receiver is recognised as unstored and hence will be deleted at the next commit"

	"Notify interested parties"
	self _dbTable aboutToBeUnstored: proxiedObject.
	proxiedObject onAboutToUnstore.

	self _isPersistent ifFalse: [reStore deregisterProxy: self; removeFromTransaction: self].

	"Delete dependent components
	self _dbTable dependentComponentsDo: [ :each | (each accessor valueIn: proxiedObject) unstore]."

	"Separate loops to cope with potential reference swap"
	collectionProxies do: [ :each | each __ensureActive].
	collectionProxies do: [ :each | each _unstore].

	proxiedObject := nil!

basicClass

	"6/8/2000
	
	No need to bother the proxiedObject"
	
	^class!

class

	"Created 6/8/2000
	Modified 5/9/2001		Must fetch inherited objects to determine the class (issue#0015)
	
	No need to bother the proxiedObject, except for inherited objects"

	^(self _dbTable class == SSWDBTable) 
	ifTrue: 
		[class]
	ifFalse: 
		[proxiedObject == nil ifTrue: [self _recoverProxiedObject].
		proxiedObject class]!

currentVersion

	"23/4/2001
	
	Re-read the receiver's proxiedObject from the database,
	returning it as a new unproxied object.
	c.f. _currentVersion which returns a proxied object"
	
	^self _currentVersion _proxiedObject!

debugPrintString

	"21/1/2001
	
	Override to test for deleted status"
	
	^self _isDeleted 
		ifTrue: ['<Deleted persistent object>']
		ifFalse: [super debugPrintString]!

isInteger

	"18/8/2001
	
	No need to bother the proxiedObject"
	
	^false
!

isKindOf: aClass

	"6/8/2000
	Modified 27/3/2002		Must fetch inherited objects to determine isKindOf: (issue#0028)
	
	No need to bother the proxiedObject"

	^(self _dbTable class == SSWDBTable)
	ifTrue: 
		[(class == aClass) or: [class inheritsFrom: aClass]]
	ifFalse: 
		[proxiedObject == nil ifTrue: [self _recoverProxiedObject].
		proxiedObject isKindOf: aClass]!

isValidForPersistence

	"20/8/2000"
	
	^true!

odbcObject

	"5/8/2000"
	
	^id!

printOn: aStream

	"26/4/2001

	Do not error on printString to a deleted object"

	^self _isDeleted
		ifTrue: [aStream nextPutAll: self debugPrintString]
		ifFalse: [super printOn: aStream]!

printString

	"26/4/2001

	Do not error on printString to a deleted object"

	^self _isDeleted
		ifTrue: [self debugPrintString]
		ifFalse: [super printString]!

sqlStringIn: anSSWSQLDialect

	"19/8/2001		Based on earlier sqlString; dialect param added (issue#0008)"
	
	| stream |
	
	stream := SSWSQLWriteStream newIn: anSSWSQLDialect.
	
	self writeSQLOn: stream.
	
	^stream contents
!

unstore

	"21/1/2001

	Unstore the receiver's proxiedObject, returning the proxiedObject.
	This message (as opposed to the private _unstore) is only sent when the receiver
	has not yet been referenced in the current transaction. Hence reference it here"
	
	| me him |

	proxiedObject == nil ifTrue: [self _recoverProxiedObject].
	proxiedObject isDBDeleted ifTrue: [^self].

	"Set me and him to be correct after the swap (done during _referenced)"
	me := proxiedObject.
	him := self.

	self _referenced.

	me _unstore.

	^him!

unstored

	"Return the receiver in an UnstoreWrapper"

	^SSWDBUnstoreWrapper on: self!

writeSQLOn: aStream

	"17/8/2000
	
	The SQL for a persistent object is its id"
	
	id writeSQLOn: aStream! !
!SSWDBObjectProxy categoriesFor: #_aquireCollectionProxiesUsing:!actions!public! !
!SSWDBObjectProxy categoriesFor: #_class!accessing!public! !
!SSWDBObjectProxy categoriesFor: #_class:!accessing!public! !
!SSWDBObjectProxy categoriesFor: #_collectionProxies!accessing!public! !
!SSWDBObjectProxy categoriesFor: #_collectionProxies:!accessing!public! !
!SSWDBObjectProxy categoriesFor: #_collectionProxyFor:!accessing:derived!public! !
!SSWDBObjectProxy categoriesFor: #_collectionProxySwapped:!actions!public! !
!SSWDBObjectProxy categoriesFor: #_currentVersion!accessing:derived!public! !
!SSWDBObjectProxy categoriesFor: #_dbTable!accessing:derived!public! !
!SSWDBObjectProxy categoriesFor: #_id!accessing!public! !
!SSWDBObjectProxy categoriesFor: #_id:!accessing!public! !
!SSWDBObjectProxy categoriesFor: #_instVarAt:!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #_instVarAt:put:!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #_intern!actions!public! !
!SSWDBObjectProxy categoriesFor: #_isDeleted!public!testing! !
!SSWDBObjectProxy categoriesFor: #_isNew!public!testing! !
!SSWDBObjectProxy categoriesFor: #_isPersistent!public!testing! !
!SSWDBObjectProxy categoriesFor: #_postSwapReferences!actions!public! !
!SSWDBObjectProxy categoriesFor: #_prepareToCommit!actions!public! !
!SSWDBObjectProxy categoriesFor: #_proxiedObjectMissing!actions!public! !
!SSWDBObjectProxy categoriesFor: #_recoverProxiedObject!actions!public! !
!SSWDBObjectProxy categoriesFor: #_unstore!actions!public! !
!SSWDBObjectProxy categoriesFor: #basicClass!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #class!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #currentVersion!accessing:derived!public! !
!SSWDBObjectProxy categoriesFor: #debugPrintString!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #isInteger!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #isKindOf:!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #isValidForPersistence!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #odbcObject!accessing:derived!public! !
!SSWDBObjectProxy categoriesFor: #printOn:!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #printString!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #sqlStringIn:!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #unstore!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #unstored!forwarding!public! !
!SSWDBObjectProxy categoriesFor: #writeSQLOn:!actions!public! !

!SSWDBObjectProxy class methodsFor!

_forNewObject: anObject withID: anInteger inReStore: aReStore

	"6/8/2000"
	
	^(self _forObjectOfClass: anObject class withID: anInteger  inReStore: aReStore)
		_newProxiedObject: anObject;
		_collectionProxies: IdentityDictionary new;
		yourself!

_forObjectOfClass: aClass withID: anInteger  inReStore: aReStore

	"6/8/2000"
	
	^self new
		_reStore: aReStore;
		_class: aClass;
		_id: anInteger;
		yourself!

controlFields

	"29/4/2001

	Return any fields required by instances of the receiver 
	to control their operation.

	None by default, subclasses should override as necessary"

	^SSWSQLFieldCollection new! !
!SSWDBObjectProxy class categoriesFor: #_forNewObject:withID:inReStore:!instance creation!public! !
!SSWDBObjectProxy class categoriesFor: #_forObjectOfClass:withID:inReStore:!instance creation!public! !
!SSWDBObjectProxy class categoriesFor: #controlFields!constants!public! !

