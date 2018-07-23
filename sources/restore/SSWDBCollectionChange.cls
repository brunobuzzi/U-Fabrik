"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBCollectionChange
	instanceVariableNames: 'affectedEntry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCollectionChange guid: (GUID fromString: '{5a3e3dc6-3990-11d5-b1df-444553540000}')!
SSWDBCollectionChange comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBCollectionChange categoriesForClass!Unclassified! !
!SSWDBCollectionChange methodsFor!

affectedEntry

	"8/10/2000
	
	affectedEntry stores the Collection Entry affected (added/removed/altered) by the
	change represented by the receiver"
	
	^affectedEntry!

affectedEntry: anSSWDBCollectionEntry

	"8/10/2000
	
	affectedEntry stores the Collection Entry affected (added/removed/altered) by the
	change represented by the receiver"
	
	affectedEntry := anSSWDBCollectionEntry!

applyTo: aCollectionOfEntries

	"22/9/2000
	
	Apply the change represented by the receiver to the given collection
	of collectionEntries"
	
	self subclassResponsibility!

canRemoveKey

	"28/9/2001 

	Return a Boolean indicating whether the receiver can potentially remove a key/index from a collection.
	Default - false"

	^false!

canRemoveValue

	"28/9/2001 

	Return a Boolean indicating whether the receiver can potentially remove a value object from a collection.
	Default - false"

	^false!

commitFor: aCollectionProxy

	"22/9/2000
	
	Apply the change represented by the receiver onto the ReStore in which
	the given SSWDBCollectionProxy resides"
	
	self subclassResponsibility!

prepareToCommitFor: anSSWDBCachingCollectionProxy

	"21/4/2001"
	
	^self affectedEntry prepareToCommitFor: anSSWDBCachingCollectionProxy! !
!SSWDBCollectionChange categoriesFor: #affectedEntry!accessing!public! !
!SSWDBCollectionChange categoriesFor: #affectedEntry:!accessing!public! !
!SSWDBCollectionChange categoriesFor: #applyTo:!actions!public! !
!SSWDBCollectionChange categoriesFor: #canRemoveKey!public!testing! !
!SSWDBCollectionChange categoriesFor: #canRemoveValue!public!testing! !
!SSWDBCollectionChange categoriesFor: #commitFor:!actions!public! !
!SSWDBCollectionChange categoriesFor: #prepareToCommitFor:!actions!public! !

!SSWDBCollectionChange class methodsFor!

added: anObject

	"20/5/2001"

	^self newWithEntry:
		(SSWDBCollectionEntry new
			target: anObject;
			yourself)!

newWithEntry: anSSWDBCollectionEntry

	"22/9/2000"
	
	^self new
		affectedEntry: anSSWDBCollectionEntry;
		yourself! !
!SSWDBCollectionChange class categoriesFor: #added:!instance creation!public! !
!SSWDBCollectionChange class categoriesFor: #newWithEntry:!instance creation!public! !

