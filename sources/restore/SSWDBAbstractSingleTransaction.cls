"Filed out from Dolphin Smalltalk 7"!

SSWDBTransaction subclass: #SSWDBAbstractSingleTransaction
	instanceVariableNames: 'allReferencedObjects currentReferencedObjects changedObjects'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBAbstractSingleTransaction guid: (GUID fromString: '{5a3e3dd4-3990-11d5-b1df-444553540000}')!
SSWDBAbstractSingleTransaction comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBAbstractSingleTransaction categoriesForClass!Unclassified! !
!SSWDBAbstractSingleTransaction methodsFor!

allReferencedObjects

	"20/10/2000
	
	allReferencedObjects stores a collection of all objects referenced during this transaction. 
	It is created/added to following each phase	(see comment to currentReferencedObjects)"
	
	^allReferencedObjects!

allReferencedObjects: anIdentitySet

	"20/10/2000
	
	allReferencedObjects stores a collection of all objects referenced during this transaction. 
	It is created/added to following each phase	(see comment to currentReferencedObjects)"
	
	allReferencedObjects := anIdentitySet!

autoRecoverCommitIn: anSSWReStore

	"3/10/2001	(Issue#0023)

	Attempt to fix up the receiver following an error during the commit stage"

	"Any objects referenced during the errored commit will erroneously be in currentReferencedObjects.
	Swap back and forget"
	self currentReferencedObjects do: [ :obj | obj _swapReferences].

	"The receiver's changedObjects should now be the currentReferencedObjects"
	self currentReferencedObjects: (self changedObjects collect: [ :obj | obj _swapReferences]).
	self allReferencedObjects: self newEmptyObjectsSet!

autoRecoverPreCommitIn: anSSWReStore

	"3/10/2001	(Issue#0023)

	Attempt to fix up the receiver following an error during the pre-commit stage"

	"Move allReferencedObjects back to currentReferencedObjects"
	self currentReferencedObjects addAll: self allReferencedObjects.
	self allReferencedObjects: self newEmptyObjectsSet!

begin

	"20/10/2000
	
	Initialize the receiver transaction"
	
	self beginObjectCollection!

beginObjectCollection

	"20/10/2000
	
	Initialize the receiver transaction to begin accumulating referenced objects"
	
	self 
		currentReferencedObjects: self newEmptyObjectsSet;
		allReferencedObjects: self newEmptyObjectsSet!

beginWithin: anotherTransaction

	"20/10/2000
	
	For single (non-nested) transactions, anotherTransaction should always be nil.
	Defer to begin, or error if anotherTransaction is not nil"
	
	anotherTransaction = nil
		ifTrue: [self begin]
		ifFalse: [self error: 'Nesting of transaction not supported']!

changedObjects

	"20/10/2000
	
	changedObjects stores the collection of objects changed within this transaction.
	It is constructed from referencedObjects during pre-commit"
	
	^changedObjects!

changedObjects: anIdentitySet

	"20/10/2000
	
	changedObjects stores the collection of objects changed within this transaction.
	It is constructed from referencedObjects during pre-commit"
	
	changedObjects := anIdentitySet!

currentReferencedObjects

	"20/10/2000
	
	currentReferencedObjects stores a collection of all objects that are referenced 
	during the current 'phase' of the receiver. Phases are
	 - initial use (following begin)
	 - each pre-commital loop (see prepareToCommit)"
	
	^currentReferencedObjects!

currentReferencedObjects: anIdentitySet

	"20/10/2000
	
	currentReferencedObjects stores a collection of all objects that are referenced 
	during the current 'phase' of the receiver. Phases are
	 - initial use (following begin)
	 - each pre-commital loop (see prepareToCommit)"
	
	currentReferencedObjects := anIdentitySet!

endObjectCollection

	"20/10/2000

	End the accumulation of referenced objects"

	self allReferencedObjects: nil.
	self currentReferencedObjects: self newEmptyObjectsSet!

includesProxy: anSSWDBProxy

	"22/5/2001"

	^(self currentReferencedObjects includes: anSSWDBProxy)
		or: [self allReferencedObjects includes: anSSWDBProxy]!

newEmptyObjectsSet

	"22/5/2001

	Return an empty Set of a default size that can be used for holding proxies"

	^self newEmptyObjectsSet: 20!

newEmptyObjectsSet: anInteger

	"22/5/2001

	Return an empty Set that can be used for holding proxies"

	^SSWDBProxyIdentitySet new: anInteger!

nextCollectionPhase

	"20/10/2000"

	self allReferencedObjects isEmpty
		ifTrue: [self allReferencedObjects: self currentReferencedObjects]
		ifFalse: [self allReferencedObjects addAll: self currentReferencedObjects].

	self currentReferencedObjects: self newEmptyObjectsSet
!

ownerTransaction

	"20/10/2000
	
	For a single (non-nested transaction) the ownerTransaction is always nil"
	
	^nil!

prepareToCommit

	"20/10/2000"
	
	| changed noneChanged currentObjects |

	changed := self newEmptyObjectsSet: (self currentReferencedObjects size // 2).
	noneChanged := false.

	"Pre-write validate the changed objects. This may cause other objects to be added to the transaction,
	so repeat until no more changed objects are found"
	[noneChanged] whileFalse:
		[noneChanged := true.
		currentObjects := self currentReferencedObjects.
		self nextCollectionPhase.
		currentObjects do: 
			[ :proxy | 
			(changed includes: proxy) ifFalse:
				[proxy _hasChanged 
				ifTrue: 
					[noneChanged := false.
					changed add: proxy.
					proxy _prepareToCommit]
				ifFalse:
					[self currentReferencedObjects add: proxy]]]].

	self currentReferencedObjects do: [ :proxy | proxy _swapReferences].
	self changedObjects: (changed collect: [ :proxy | proxy _swapReferences]). 

	self endObjectCollection!

proxy: aProxydObject forwarded: aMessage

	"20/10/2000

	Add aProxydObject to the collection of potentially-changed objects
	(the receiver performs no checking on the message sent)"

	self currentReferencedObjects add: aProxydObject!

proxyForObject: anObject ifNone: aBlock

	"20/8/2000"

	^self currentReferencedObjects detect: [ :each | each _proxiedObject == anObject] ifNone:
		[self allReferencedObjects detect: [ :each | each _proxiedObject == anObject] ifNone: aBlock]!

removeProxy: aProxydObject

	"20/10/2000

	Remove aProxydObject from the collections of potentially-changed objects"

	self currentReferencedObjects remove: aProxydObject ifAbsent: [].
	self allReferencedObjects remove: aProxydObject ifAbsent: []!

resetChangedObjects

	"20/10/2000"

	self changedObjects: nil! !
!SSWDBAbstractSingleTransaction categoriesFor: #allReferencedObjects!accessing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #allReferencedObjects:!accessing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #autoRecoverCommitIn:!actions!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #autoRecoverPreCommitIn:!actions!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #begin!actions!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #beginObjectCollection!initializing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #beginWithin:!actions!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #changedObjects!accessing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #changedObjects:!accessing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #currentReferencedObjects!accessing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #currentReferencedObjects:!accessing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #endObjectCollection!initializing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #includesProxy:!public!testing! !
!SSWDBAbstractSingleTransaction categoriesFor: #newEmptyObjectsSet!evaluating!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #newEmptyObjectsSet:!evaluating!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #nextCollectionPhase!initializing!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #ownerTransaction!evaluating!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #prepareToCommit!actions!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #proxy:forwarded:!proxy tracking!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #proxyForObject:ifNone:!proxy tracking!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #removeProxy:!proxy tracking!public! !
!SSWDBAbstractSingleTransaction categoriesFor: #resetChangedObjects!initializing!public! !

