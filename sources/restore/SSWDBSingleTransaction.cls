"Filed out from Dolphin Smalltalk 7"!

SSWDBAbstractSingleTransaction subclass: #SSWDBSingleTransaction
	instanceVariableNames: 'proxyCommitFailures'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBSingleTransaction guid: (GUID fromString: '{5a3e3dd6-3990-11d5-b1df-444553540000}')!
SSWDBSingleTransaction comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBSingleTransaction categoriesForClass!Unclassified! !
!SSWDBSingleTransaction methodsFor!

commitFailures

	"23/4/2001
	
	Return the actual objects (not proxies) which failed to commit"
	
	^self proxyCommitFailures collect: [ :proxy | proxy _proxiedObject]!

commitTo: aDBConnection

	"Commit the receiver's objects without any checking (done in prepareToCommit).
	Use aDBConnection for database-level transaction (Txn) control.
	Set commitFailures accordingly"
	
	| toCommit conflicts resolved failures |

	toCommit := self changedObjects. 

	"Iteratively commit, resolving update conflicts and retrying if all are resolved"
	[aDBConnection beginRWTxn.
	conflicts := toCommit reject: [ :proxyObj | proxyObj _commitChanges].
	resolved := OrderedCollection new.
	failures := OrderedCollection new.

	conflicts isEmpty ifFalse:
		[aDBConnection rollbackTxn.
		conflicts do: 
			[ :proxyObj | 
			([proxyObj _resolveUpdateConflicts] on: Error do: [ :exc | exc return: false])
				ifTrue: [resolved add: proxyObj]
				ifFalse: [failures add: proxyObj _proxiedObject]]].	"Use the proxiedObject so we get 
												the proxy after _swapReferences"
	failures isEmpty and: [resolved isEmpty not]] whileTrue.

	"currentReferencedObjects usually empty, but could contain objects ref'd during conflict resolution"
	self currentReferencedObjects do: [ :obj | obj _swapReferences].
	self beginObjectCollection.

	self proxyCommitFailures: failures.
	self hasFailedCommit 
	ifTrue: 
		[aDBConnection rollbackTxn.
		self currentReferencedObjects: (self changedObjects collect: [ :obj | obj _swapReferences])]
	ifFalse: 
		[aDBConnection commitTxn.
		self changedObjects do: [ :proxyObj | proxyObj _postCommitChanges]].

	self resetChangedObjects!

ensureHasFailedCommit

	"24/4/2001"
	
	self hasFailedCommit ifFalse: [self error: 'Transaction has not failed a commit'].!

hasChanges

	"12/3/01"
	
	^self currentReferencedObjects anySatisfy: [ :obj | obj _checkHasChanged]!

hasFailedCommit

	"12/3/01"
	
	^self proxyCommitFailures notNil and: [self proxyCommitFailures isEmpty not]!

proxyCommitFailures

	"23/4/2001
	
	proxyCommitFailures stores an OrderdCollection of those proxy objects which error
	when an attempt is made to commit them"
	
	^proxyCommitFailures!

proxyCommitFailures: anOrderedCollection

	"23/4/2001
	
	proxyCommitFailures stores an OrderdCollection of those proxy objects which error
	when an attempt is made to commit them"
	
	proxyCommitFailures := anOrderedCollection!

refreshAndRollforward

	"20/10/2000"
	
	self ensureHasFailedCommit.
	
	self proxyCommitFailures do: 
		[ :proxyObj |
		(proxyObj _refreshAndRollforward) ifFalse: [self currentReferencedObjects remove: proxyObj]]!

rollback

	"20/10/2000"
	
	| rolledBack |

	rolledBack := OrderedCollection new: (self currentReferencedObjects size * 2).

	self currentReferencedObjects isNil ifFalse:
		[[self currentReferencedObjects isEmpty] whileFalse:
			[| toRollback |
			toRollback := self currentReferencedObjects copy.
			self currentReferencedObjects: (self newEmptyObjectsSet: (toRollback size // 2)). 
			toRollback do: [ :proxy | proxy _rollbackChanges].
			rolledBack addAll: toRollback]].

	self proxyCommitFailures: nil.
	self endObjectCollection.

	^rolledBack!

rollbackAndRefresh

	"20/10/2000"
	
	self ensureHasFailedCommit.
	
	self proxyCommitFailures do: 
		[ :proxyObj | 
		self currentReferencedObjects remove: proxyObj.
		proxyObj _swapReferences _forgetProxiedObject].

	self rollback! !
!SSWDBSingleTransaction categoriesFor: #commitFailures!accessing!public! !
!SSWDBSingleTransaction categoriesFor: #commitTo:!actions!public! !
!SSWDBSingleTransaction categoriesFor: #ensureHasFailedCommit!actions!public! !
!SSWDBSingleTransaction categoriesFor: #hasChanges!public!testing! !
!SSWDBSingleTransaction categoriesFor: #hasFailedCommit!public!testing! !
!SSWDBSingleTransaction categoriesFor: #proxyCommitFailures!accessing!public! !
!SSWDBSingleTransaction categoriesFor: #proxyCommitFailures:!accessing!public! !
!SSWDBSingleTransaction categoriesFor: #refreshAndRollforward!actions!public! !
!SSWDBSingleTransaction categoriesFor: #rollback!actions!public! !
!SSWDBSingleTransaction categoriesFor: #rollbackAndRefresh!actions!public! !

!SSWDBSingleTransaction class methodsFor!

alwaysAutomaticallyBegin

	"21/1/2001"
	
	^true! !
!SSWDBSingleTransaction class categoriesFor: #alwaysAutomaticallyBegin!public!testing! !

