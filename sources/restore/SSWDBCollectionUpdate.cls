"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionChange subclass: #SSWDBCollectionUpdate
	instanceVariableNames: 'newTarget'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCollectionUpdate guid: (GUID fromString: '{62572521-5cd7-11d5-b1df-0010a70883e2}')!
SSWDBCollectionUpdate comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBCollectionUpdate categoriesForClass!Unclassified! !
!SSWDBCollectionUpdate methodsFor!

applyTo: aCollection

	"21/4/2001"
	
	self affectedEntry target: self newTarget!

canRemoveValue

	"28/9/2001"

	^true!

commitFor: aCollectionProxy

	"22/9/2000"
	
	self affectedEntry isPersistent ifTrue: 
		[aCollectionProxy _collectionSpec 
			updateEntry: self affectedEntry 
			withTarget: self newTarget
			in: aCollectionProxy _reStore]!

newTarget

	"22/5/2001

	newTarget stores the object which is now in the position of the collection
	associated with the receiver's entry"

	^newTarget!

newTarget: anObject

	"22/5/2001

	newTarget stores the object which is now in the position of the collection
	associated with the receiver's entry"

	newTarget := anObject! !
!SSWDBCollectionUpdate categoriesFor: #applyTo:!actions - api!public! !
!SSWDBCollectionUpdate categoriesFor: #canRemoveValue!public!testing! !
!SSWDBCollectionUpdate categoriesFor: #commitFor:!actions - api!public! !
!SSWDBCollectionUpdate categoriesFor: #newTarget!accessing!public! !
!SSWDBCollectionUpdate categoriesFor: #newTarget:!accessing!public! !

!SSWDBCollectionUpdate class methodsFor!

entry: aCollectionEntry newTarget: anObject

	"20/5/2001"

	^(self newWithEntry: aCollectionEntry)
		newTarget: anObject;
		yourself! !
!SSWDBCollectionUpdate class categoriesFor: #entry:newTarget:!instance creation!public! !

