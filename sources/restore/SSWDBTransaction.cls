"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBTransaction guid: (GUID fromString: '{5a3e3dd3-3990-11d5-b1df-444553540000}')!
SSWDBTransaction comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBTransaction categoriesForClass!Unclassified! !
!SSWDBTransaction methodsFor!

beginWithin: anotherTransaction

	"20/10/2000
	
	Initialize the receiver transaction as a nested transaction within anotherTransaction.
	anotherTransaction may be nil - i.e. receiver is root transaction"
	
	self subclassResponsibility!

canCommit

	"22/4/2001
	
	Return whether the receiver is capable of committing.
	Default - true"
	
	^true!

commitTo: aDBConnection

	"Write the changes associated with the receiver transaction.
	Use aDBConnection for database-level transaction (Txn) control"
	
	self subclassResponsibility!

hasChanges

	"12/3/01
	
	Return whether receiver contains any changed (modified/created/deleted) objects"
	
	^self subclassResponsibility!

hasFailedCommit

	"12/3/01
	
	Return whether the receiver's last commit failed"
	
	^self subclassResponsibility!

includesProxy: anSSWDBProxy

	"22/5/2001

	Return a Boolean indicating whether the given proxy is contained in this transaction"

	^self subclassResponsibility!

isCollectingObjects

	"22/5/2001

	Return a Boolean indicating whether the receiver is currently accumulating referenced objects"

	^self subclassResponsibility!

isDumb

	"22/4/2001
	
	Return whether the receiver is a 'dumb' transaction
	 - one which absorbs traversed objects but cannot commit changes"
	
	^false!

ownerTransaction

	"20/10/2000
	
	Return the transaction that the receiver is nested within, or nil if none (root transaction).
	This becomes the current transaction after the receiver is commit'd/rollback'd"
	
	^self subclassResponsibility!

prepareToCommit

	"24/4/2001"
	
	self subclassResponsibility!

proxy: aProxydObject forwarded: aMessage

	"20/10/2000
	
	aProxydObject has forwarded the given message to its proxiedObject. 
	Act accordingly"
	
	self subclassResponsibility!

rollback

	"Forget the changes associated with the receiver transaction.
	Also refresh all changed objects.
	Return the collection of changed objects"
	
	^self subclassResponsibility! !
!SSWDBTransaction categoriesFor: #beginWithin:!actions!public! !
!SSWDBTransaction categoriesFor: #canCommit!public!testing! !
!SSWDBTransaction categoriesFor: #commitTo:!actions!public! !
!SSWDBTransaction categoriesFor: #hasChanges!public!testing! !
!SSWDBTransaction categoriesFor: #hasFailedCommit!public!testing! !
!SSWDBTransaction categoriesFor: #includesProxy:!public!testing! !
!SSWDBTransaction categoriesFor: #isCollectingObjects!public!testing! !
!SSWDBTransaction categoriesFor: #isDumb!public!testing! !
!SSWDBTransaction categoriesFor: #ownerTransaction!evaluating!public! !
!SSWDBTransaction categoriesFor: #prepareToCommit!actions!public! !
!SSWDBTransaction categoriesFor: #proxy:forwarded:!proxy tracking!public! !
!SSWDBTransaction categoriesFor: #rollback!actions!public! !

!SSWDBTransaction class methodsFor!

alwaysAutomaticallyBegin

	"21/1/2001
	
	Return a Boolean indicating whether instances of the receiver
	should always be automatically begun if not explicity done so.
	
	False by default; subclasses should override as necessary"
	
	^false! !
!SSWDBTransaction class categoriesFor: #alwaysAutomaticallyBegin!public!testing! !

