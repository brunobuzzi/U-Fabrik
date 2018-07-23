"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionChange subclass: #SSWDBCollectionRemoval
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCollectionRemoval guid: (GUID fromString: '{5a3e3dc8-3990-11d5-b1df-444553540000}')!
SSWDBCollectionRemoval comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBCollectionRemoval categoriesForClass!Unclassified! !
!SSWDBCollectionRemoval methodsFor!

applyTo: aCollection

	"21/4/2001"
	
	self affectedEntry removeFrom: aCollection!

canRemoveKey

	"28/9/2001"

	^true!

canRemoveValue

	"28/9/2001"

	^true!

commitFor: aCollectionProxy

	"22/9/2000"
	
	self affectedEntry isPersistent ifTrue: 
		[aCollectionProxy _collectionSpec deleteEntry: self affectedEntry in: aCollectionProxy _reStore]! !
!SSWDBCollectionRemoval categoriesFor: #applyTo:!actions!public! !
!SSWDBCollectionRemoval categoriesFor: #canRemoveKey!public!testing! !
!SSWDBCollectionRemoval categoriesFor: #canRemoveValue!public!testing! !
!SSWDBCollectionRemoval categoriesFor: #commitFor:!actions - api!public! !

