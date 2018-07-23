"Filed out from Dolphin Smalltalk 7"!

SSWDBObjectProxy subclass: #SSWDBCachingObjectProxy
	instanceVariableNames: 'copyObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCachingObjectProxy guid: (GUID fromString: '{5a3e3ddc-3990-11d5-b1df-444553540000}')!
SSWDBCachingObjectProxy comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBCachingObjectProxy categoriesForClass!Unclassified! !
!SSWDBCachingObjectProxy methodsFor!

_checkHasChanged

	"20/8/2000
	
	Use the copy object to determine these"
	
	^self _isDeleted or:
		[self _isNew or: 
			[self _dbTable dataFields anySatisfy:
				[ :field || accessor current |
				accessor := field accessor.
				current := accessor valueIn: proxiedObject.
				current _hasChangedFrom: (accessor valueIn: copyObject)]]]!

_commitChanges

	"20/10/2000
	
	Return a Boolean indicating whether the commit succeeds"

	^self _isPersistent
	ifTrue:
		[self _isDeleted
			ifTrue: [reStore removeProxy: self. true]
			ifFalse: [self _commitUpdates]]
	ifFalse:
		[reStore insertProxy: self.
		true]!

_commitUpdates

	"20/10/2000
	
	Return a Boolean indicating whether the commit succeeds"

	| updates |

	updates := self _fieldUpdates.
	
	^updates isEmpty 
		ifTrue: [true]
		ifFalse: [reStore applyUpdates: updates toObject: self]!

_copyObject

	"20/8/2000
	
	The receiver automatically detects changes to its proxiedObject by maintaining a shallow copy
	of the proxiedObject. This is held in copyObject"
	
	^copyObject!

_copyObject: anObject

	"20/8/2000
	
	The receiver automatically detects changes to its proxiedObject by maintaining a shallow copy
	of the proxiedObject. This is held in copyObject"
	
	copyObject := anObject!

_fieldUpdates

	"20/8/2000
	
	Use the copy object to determine these"
	
	^self _dbTable dataFields inject: SSWSQLFieldAssignmentCollection new into: 
		[ :updates :field || accessor current |
		accessor := field accessor.
		current := accessor valueIn: proxiedObject.
		(current _hasChangedFrom: (accessor valueIn: copyObject)) ifTrue: 
			[updates add: (SSWSQLFieldAssignment field: field value: current)].
		updates]!

_forgetProxiedObject

	"19/4/2000
	
	Override to reset the copyObject"
	
	copyObject := nil.
	^super _forgetProxiedObject!

_isDeleted

	"21/1/2001
	
	Return a Boolean indicating whether the receiver has been marked as deleted..
	Deleted proxies have a copyObject, but no proxiedObject"
	
	^copyObject ~~ nil and: [proxiedObject == nil]!

_isPersistent

	"21/1/2001
	
	Return a Boolean indicating whether the receiver is persistent.
	Persistent proxies always have a copyObject, if they are recovered.
	Unrecovered proxies are persistent by definition"
	
	^copyObject ~~ nil or: [self _isRecovered not]!

_matchStateOf: aProxy

	"16/4/2001

	Match the internal proxy (non data) state of aProxy"

	^self!

_postCommitChanges

	"24/4/2001
	
	The receiver's changes have successfully been committed.
	Complete follow-on work"

	^self _isPersistent
	ifTrue:
		[self _isDeleted
			ifTrue: [copyObject := proxiedObject := SSWDBDeletedObject newForClass: class id: id]
			ifFalse: [self _postCommitUpdates]]
	ifFalse:
		[copyObject := proxiedObject shallowCopy.
		self _intern	"Re-register"]!

_postCommitUpdates

	"24/4/2001"

	| updates |

	updates := self _fieldUpdates.
	
	updates isEmpty ifFalse: [updates applyTo: copyObject]!

_prepareToCommit

	"11/9/2001

	Intercept to check for overwriten dependent objects - unstore these (issue#0006)"

	(self _isPersistent and: [self _isDeleted not]) ifTrue:
		[| replacedDependentFields |
		replacedDependentFields := self _dbTable dependentDataFieldsSelect:
			[ :field | (field accessor valueIn: proxiedObject) ~~ (field accessor valueIn: copyObject)].
		replacedDependentFields isEmpty ifFalse:
			[| heldObjects |
			"Only delete replaced dependent objects if they are not held elsewhere in proxiedObject"
			heldObjects := self _dbTable dataFields collect: [ :field | field accessor valueIn: proxiedObject].
			replacedDependentFields do: 
				[ :field | 
				(heldObjects includes: (field accessor valueIn: copyObject)) ifFalse:
					[(field accessor valueIn: copyObject) unstore]]]].

	^super _prepareToCommit!

_proxiedObject: anObject

	"20/8/2000
	
	Overriden to set the copyObject"
	
	super _proxiedObject: anObject.
	copyObject := anObject shallowCopy!

_recoverProxiedObject

	"20/8/2000
	
	Override to check for deleted status"
	
	self _isDeleted ifTrue: [nil error: 'Attempt to reference deleted persistent object'].
	
	super _recoverProxiedObject!

_refreshAndRollforward

	"16/4/2001

	Apply the changes made to the receiver to the current representation in the DB.
	Return a Boolean indicating if the receiver should be re-commited"

	| currentProxy |

	currentProxy := self _currentVersion.

	^(self _refreshAndRollforwardFrom: currentProxy)
		ifTrue: [self _matchStateOf: currentProxy. true]
		ifFalse: [false]!

_refreshAndRollforwardFrom: currentProxyObject

	"16/4/2001

	Update the receiver such that it is based on the state of currentProxyObject
	with its own changes (compared to copyObject) applied on top.
	Return a Boolean indicating if the receiver should be re-commited"

	| currentObject |

	currentObject := currentProxyObject _proxiedObject.

	^self _isDeleted
	ifTrue:
		[currentObject isDBDeleted 
			ifTrue: [false]
			ifFalse: [true]]
	ifFalse:
		[currentObject isDBDeleted
		ifTrue:
			["Re-insert the receiver by marking it as new"
			copyObject := nil.
			currentProxyObject _matchStateOf: self]
		ifFalse:
			[| myUpdates |
			myUpdates := self _fieldUpdates.
			currentProxyObject _copyObject: copyObject.
			currentProxyObject _fieldUpdates applyTo: proxiedObject.
			myUpdates applyTo: proxiedObject].
		true]!

_resolveUpdateConflicts

	"16/5/2001

	Changes to the receiver have failed to commit in anSSWReStore due to another client's changes.
	Attempt to resolve the conflicts.

	For implementation details, see _resolveUpdateConflictsWith:"	

	| currentProxy |

	currentProxy := self _currentVersion.

	^(self _resolveUpdateConflictsWith: currentProxy)
		ifTrue: [self _matchStateOf: currentProxy. true]
		ifFalse: [false]!

_resolveUpdateConflictsWith: currentProxyObject

	"16/5/2001

	Changes to the receiver have failed to commit in anSSWReStore due to another client's changes.
	Analyse all changes made (between the receiver's copyObject, proxiedObject and currentProxyObject)
	and attempt to bring the receiver up to date with the state of currentProxyObject,
	whilst maintaining the receiver's changes from its copyObject.

	Return true if the receiver was able to resolve the conflict, false otherwise"

	| newVersion |

	newVersion := currentProxyObject _proxiedObject.
	newVersion isDBDeleted ifTrue: [^false].

	self _dbTable dataFields do:
		[ :field || accessor oldValue myValue newValue |
		accessor := field accessor.
		oldValue := accessor valueIn: copyObject.
		myValue := accessor valueIn: proxiedObject.
		newValue := accessor valueIn: newVersion.

		myValue = oldValue
		ifTrue: 
			["Receiver has not changed this attribute (no clash). 
			Check for change in newVersion, updating proxied and copyObject if necessary"
			oldValue = newValue ifFalse: 
				[accessor 
					value: newValue in: proxiedObject;
					value: newValue in: copyObject]]
		ifFalse:
			["Receiver has changed this attribute.
			If newVersion has also changed it, then there is a clash.
			Ask the proxiedObject to resolve this"
			newValue = oldValue ifFalse:
				[(proxiedObject 
					safeHandleUpdateClash: accessor name 
					from: copyObject
					to: newVersion) ifFalse: [^false]]]].

	^true!

_rollbackChanges

	"20/10/2000"

	self _isPersistent
	ifTrue:
		[self _isDeleted
			ifTrue: [self _rollbackUnstore]
			ifFalse: [self _rollbackUpdates]]
	ifFalse:
		[self _rollbackStore]!

_rollbackStore

	"20/10/2000

	The receiver was a newly-persisted object - deregister from the reStore"

	reStore deregisterProxy: self!

_rollbackUnstore

	"20/10/2000"

	self 
		_proxiedObject: copyObject;
		_copyObject: copyObject shallowCopy;
		_swapReferences!

_rollbackUpdates

	"20/10/2000

	Forget any updates by instantiating from the copyObject.
	Also transfer over any events registered against the current proxiedObject"

	| me him |

	me := proxiedObject.
	him := self.

	self _swapReferences.

	me _checkHasChanged ifTrue: 
		[me _proxiedObject: me _copyObject shallowCopy. 
		me _proxiedObject setEvents: him getEvents]!

_unstore

	"25/5/2001

	Intercept this message in order to point references to the proxiedObject
	to the copyObject - this enables identity to be preserved in the event of a rollback"

	| object |

	self _isPersistent ifTrue: [object := proxiedObject].	
	super _unstore.

	object isNil ifFalse:
		["Temporarily reset the proxiedObject to swap refs"
		proxiedObject := object.
		copyObject := proxiedObject become: copyObject.
		proxiedObject := nil]!

inspect

	"14/5/2001

	Prevent inspecting of a deleted object"

	^self _isDeleted
		ifTrue: [nil inspect]
		ifFalse: [super inspect]! !
!SSWDBCachingObjectProxy categoriesFor: #_checkHasChanged!public!testing! !
!SSWDBCachingObjectProxy categoriesFor: #_commitChanges!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #_commitUpdates!actions:internal!public! !
!SSWDBCachingObjectProxy categoriesFor: #_copyObject!accessing!public! !
!SSWDBCachingObjectProxy categoriesFor: #_copyObject:!accessing!public! !
!SSWDBCachingObjectProxy categoriesFor: #_fieldUpdates!evaluating!public! !
!SSWDBCachingObjectProxy categoriesFor: #_forgetProxiedObject!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #_isDeleted!public!testing! !
!SSWDBCachingObjectProxy categoriesFor: #_isPersistent!public!testing! !
!SSWDBCachingObjectProxy categoriesFor: #_matchStateOf:!actions:internal!public! !
!SSWDBCachingObjectProxy categoriesFor: #_postCommitChanges!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #_postCommitUpdates!actions:internal!public! !
!SSWDBCachingObjectProxy categoriesFor: #_prepareToCommit!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #_proxiedObject:!accessing!public! !
!SSWDBCachingObjectProxy categoriesFor: #_recoverProxiedObject!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #_refreshAndRollforward!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #_refreshAndRollforwardFrom:!actions:internal!public! !
!SSWDBCachingObjectProxy categoriesFor: #_resolveUpdateConflicts!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #_resolveUpdateConflictsWith:!actions:internal!public! !
!SSWDBCachingObjectProxy categoriesFor: #_rollbackChanges!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #_rollbackStore!actions:internal!public! !
!SSWDBCachingObjectProxy categoriesFor: #_rollbackUnstore!actions:internal!public! !
!SSWDBCachingObjectProxy categoriesFor: #_rollbackUpdates!actions:internal!public! !
!SSWDBCachingObjectProxy categoriesFor: #_unstore!actions!public! !
!SSWDBCachingObjectProxy categoriesFor: #inspect!forwarding!public! !

