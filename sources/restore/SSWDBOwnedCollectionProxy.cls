"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionProxy subclass: #SSWDBOwnedCollectionProxy
	instanceVariableNames: 'copyCollection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBOwnedCollectionProxy guid: (GUID fromString: '{4aacf4a1-6267-11d5-b1df-0010a70883e2}')!
SSWDBOwnedCollectionProxy comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBOwnedCollectionProxy categoriesForClass!Unclassified! !
!SSWDBOwnedCollectionProxy methodsFor!

_checkHasChanged

	"27/4/2001"

	^self _isDeleted or:
		[(proxiedObject size ~= copyCollection size) 
			or: [proxiedObject anySatisfy: [ :each | (copyCollection identityIncludes: each) not]]]!

_copyCollection

	"22/1/2001
	
	The receiver automatically detects changes to its proxiedObject 
	by maintaining a copy of its previous state. This is held in copyCollection"
	
	^copyCollection!

_copyCollection: aCollection

	"22/1/2001
	
	The receiver automatically detects changes to its proxiedObject 
	by maintaining a copy of its previous state. This is held in copyCollection"
	
	copyCollection := aCollection!

_isDeleted

	"25/4/2001"

	^proxiedObject == nil and: [copyCollection ~~ nil]!

_isPersistent

	"18/9/2000"
	
	^copyCollection ~~ nil or: [self _isRecovered not]!

_postCommitChanges

	"23/1/2001"

	copyCollection := proxiedObject copy!

_prepareToCommit

	"23/1/2001

	Prepare to 'commit' the receiver by ensuring that all elements added to the
	proxiedObject point back to the owner, and that removed elements do not"

	| added removed |

	self _isPersistent
	ifTrue:
		[self _isDeleted
		ifTrue:
			[added := #().
			removed := copyCollection]
		ifFalse:
			[added := proxiedObject reject: [ :each | copyCollection identityIncludes: each].
			removed := copyCollection reject: [ :each | proxiedObject identityIncludes: each]]]
	ifFalse:
		[added := proxiedObject.
		removed := #()].

	added := added reject: [ :each | each isNil].
	removed := removed reject: [ :each | each isNil].

	added isEmpty ifFalse:
		[owner __ensureActive.
		added do: 
			[ :each | 
			each _ensureActiveIn: reStore.
			collectionSpec ownerAccessor value: owner _proxiedObject in: each]].

	collectionSpec isValueDependent
	ifTrue:
		[removed do: [ :each | each unstore]]
	ifFalse:
		[removed do: 
			[ :each | 
			collectionSpec ownerAccessor value: nil in: each.
			each isDBProxy ifTrue: [each _referenced]]]!

_proxiedObject: aCollection

	"20/8/2000
	
	Overriden to set the copyCollection"
	
	super _proxiedObject: aCollection.
	copyCollection := aCollection copy!

_rollbackChanges

	"23/1/2001

	Forget any changes by instantiating from the copyCollection.
	Also transfer over any events registered against the current proxiedObject"

	| wasDeleted oldEvents me him |

	"Reinstate the proxiedObject if the receiver was deleted"
	self _isDeleted 
	ifTrue: 
		[proxiedObject := copyCollection.
		copyCollection := proxiedObject copy.
		wasDeleted := true]
	ifFalse:
		[wasDeleted := false].

	oldEvents := proxiedObject getEvents.

	me := proxiedObject.
	him := self.
	self _swapReferences.

	wasDeleted ifFalse:
		[me _proxiedObject: me _copyCollection copy.
		me _proxiedObject setEvents: oldEvents]
!

_unstore

	"25/5/2001

	Point references to the proxiedObject to the copyCollection
	 - this enables identity to be preserved in the event of a rollback"

	self _isPersistent
		ifTrue: [copyCollection := proxiedObject become: copyCollection]
		ifFalse: [reStore removeFromTransaction: self].

	proxiedObject := nil! !
!SSWDBOwnedCollectionProxy categoriesFor: #_checkHasChanged!public!testing! !
!SSWDBOwnedCollectionProxy categoriesFor: #_copyCollection!accessing!public! !
!SSWDBOwnedCollectionProxy categoriesFor: #_copyCollection:!accessing!public! !
!SSWDBOwnedCollectionProxy categoriesFor: #_isDeleted!public!testing! !
!SSWDBOwnedCollectionProxy categoriesFor: #_isPersistent!public!testing! !
!SSWDBOwnedCollectionProxy categoriesFor: #_postCommitChanges!actions!public! !
!SSWDBOwnedCollectionProxy categoriesFor: #_prepareToCommit!actions!public! !
!SSWDBOwnedCollectionProxy categoriesFor: #_proxiedObject:!accessing!public! !
!SSWDBOwnedCollectionProxy categoriesFor: #_rollbackChanges!actions!public! !
!SSWDBOwnedCollectionProxy categoriesFor: #_unstore!actions!public! !

