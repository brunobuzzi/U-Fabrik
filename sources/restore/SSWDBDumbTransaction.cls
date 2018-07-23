"Filed out from Dolphin Smalltalk 7"!

SSWDBAbstractSingleTransaction subclass: #SSWDBDumbTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBDumbTransaction guid: (GUID fromString: '{03578021-659b-11d5-b1df-0010a70883e2}')!
SSWDBDumbTransaction comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBDumbTransaction categoriesForClass!Unclassified! !
!SSWDBDumbTransaction methodsFor!

canCommit

	"22/4/2001
	
	The purpose of the receiver is to absorb objects traversed when not in a 'real' transaction.
	As such, it cannot commit any changes"
	
	^false!

isDumb

	"22/4/2001
	
	The purpose of the receiver is to absorb objects traversed when not in a 'real' transaction.
	As such, it is a dumb transaction"
	
	^true!

rollback

	"To rollback the receiver, just reinstate the traversed objects.
	Note that since the receiver is 'dumb', we return an empty collection of changed objects"
	
	self currentReferencedObjects do: [ :proxy | proxy _swapReferences].
	self endObjectCollection.
	^#()! !
!SSWDBDumbTransaction categoriesFor: #canCommit!public!testing! !
!SSWDBDumbTransaction categoriesFor: #isDumb!public!testing! !
!SSWDBDumbTransaction categoriesFor: #rollback!actions!public! !

