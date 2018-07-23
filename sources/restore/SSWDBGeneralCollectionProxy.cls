"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionProxy subclass: #SSWDBGeneralCollectionProxy
	instanceVariableNames: 'collectionEntries changes isDeleted'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBGeneralCollectionProxy guid: (GUID fromString: '{20954e42-6188-11d5-b1df-0010a70883e2}')!
SSWDBGeneralCollectionProxy comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBGeneralCollectionProxy categoriesForClass!Unclassified! !
!SSWDBGeneralCollectionProxy methodsFor!

_changes

	"22/9/2000
	
	During commit, changes temporatily stores a Collection of 	SSWDBCollectionChanges 
	representing changes made to the receiver's proxied collection"

	^changes!

_changes: anOrderedCollection

	"22/9/2000
	
	During commit, changes temporatily stores a Collection of 	SSWDBCollectionChanges 
	representing changes made to the receiver's proxied collection"

	changes := anOrderedCollection!

_checkHasChanged

	"22/10/2000"
	
	| changed |

	self _setChanges.
	changed := changes isEmpty not.

	"Clear out the changes"
	self _resetChanges.

	^changed!

_collectionEntries

	"18/9/2000
	
	The receiver automatically detects changes to its proxiedObject collection
	by keeping a copy of the SSWDBCollectionEntry records that define the colleciton in the DB"
	
	^collectionEntries!

_collectionEntries: aCollection

	"18/9/2000
	
	The receiver automatically detects changes to its proxiedObject collection
	by keeping a copy of the SSWDBCollectionEntry records that define the colleciton in the DB"
	
	collectionEntries := aCollection!

_commitChanges

	"20/10/2000"
	
	changes do: [ :change | change commitFor: self].
	^true!

_hasChanged

	"22/10/2000

	Unlike _checkHasChanged, do not clear out the changes
	 - prepareToCommit will use them"
	
	self _setChanges.

	^changes isEmpty not!

_isDeleted

	"25/4/2001

	The receiver stores its deleted status as a Boolean"

	^isDeleted!

_isDeleted: aBoolean

	"25/4/2001

	The receiver stores its deleted status as a Boolean"

	isDeleted := aBoolean!

_isPersistent

	"18/9/2000"
	
	^collectionEntries ~~ nil or: [self _isRecovered not]!

_postCommitChanges

	"20/5/2001"

	self _isPersistent 
		ifTrue: [changes do: [ :change | change applyTo: collectionEntries]]
		ifFalse: [collectionEntries := changes collect: [ :change | change affectedEntry]].
	
	self _resetChanges!

_prepareToCommit

	"26/4/2001"

	"The receiver is guaranteed to be sent _hasChanged prior to this method,
	so no need to reassemble the changes"
	changes do: [ :change | change prepareToCommitFor: self]!

_resetChanges

	"22/9/2000"

	changes := nil!

_rollbackChanges

	"20/10/2000

	Rollback any changes made by reinstantiating from the collectionEntries.
	Also transfer any events associated with the collection"

	| rollbackCollection me him |

	self _checkHasChanged
	ifTrue:
		[rollbackCollection := collectionSpec newCollection.
		collectionEntries do: [ :entry | entry addTargetTo: rollbackCollection].
		rollbackCollection setEvents: proxiedObject getEvents]
	ifFalse:
		[rollbackCollection := self	"Will be proxiedObject after the swap"].

	me := proxiedObject.
	him := self.
	self _swapReferences.

	me _proxiedObject: rollbackCollection!

_setChanges

	"20/5/2001"

	self _isPersistent
	ifTrue: 
		[self _isDeleted
		ifTrue: 
			[changes := collectionEntries collect: [ :entry | SSWDBCollectionRemoval newWithEntry: entry]]
		ifFalse: 
			[changes := proxiedObject _changesFrom: collectionEntries.
			collectionSpec isKeyDependent ifTrue: 
				[changes addAll: (proxiedObject _keyRemovalsIn: changes)].
			collectionSpec isValueDependent ifTrue: 
				[changes addAll: (proxiedObject _valueRemovalsIn: changes)]]]
	ifFalse: 
		[changes := proxiedObject _collectionAdditions]!

_unstore

	"25/4/2001"

	self _isPersistent 
		ifTrue: [isDeleted := true]
		ifFalse: [reStore removeFromTransaction: self]! !
!SSWDBGeneralCollectionProxy categoriesFor: #_changes!accessing!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_changes:!accessing!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_checkHasChanged!public!testing! !
!SSWDBGeneralCollectionProxy categoriesFor: #_collectionEntries!accessing!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_collectionEntries:!accessing!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_commitChanges!actions!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_hasChanged!public!testing! !
!SSWDBGeneralCollectionProxy categoriesFor: #_isDeleted!accessing!public!testing! !
!SSWDBGeneralCollectionProxy categoriesFor: #_isDeleted:!accessing!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_isPersistent!public!testing! !
!SSWDBGeneralCollectionProxy categoriesFor: #_postCommitChanges!actions!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_prepareToCommit!actions!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_resetChanges!actions!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_rollbackChanges!actions!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_setChanges!actions!public! !
!SSWDBGeneralCollectionProxy categoriesFor: #_unstore!actions!public! !

!SSWDBGeneralCollectionProxy class methodsFor!

new

	"25/1/2001"

	^super new
		_isDeleted: false;
		yourself! !
!SSWDBGeneralCollectionProxy class categoriesFor: #new!public! !

