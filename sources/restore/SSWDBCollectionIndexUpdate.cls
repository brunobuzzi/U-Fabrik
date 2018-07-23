"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionChange subclass: #SSWDBCollectionIndexUpdate
	instanceVariableNames: 'newIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCollectionIndexUpdate guid: (GUID fromString: '{7253b7a1-61bd-11d5-b1df-0010a70883e2}')!
SSWDBCollectionIndexUpdate comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBCollectionIndexUpdate categoriesForClass!Unclassified! !
!SSWDBCollectionIndexUpdate methodsFor!

applyTo: aCollection

	"21/4/2001"
	
	self affectedEntry index: self newIndex

"	| oldIndex |

	oldIndex := aCollection identityIndexOf: self affectedEntry.
	oldIndex = newIndex ifFalse: 
		[aCollection 
			removeAtIndex: oldIndex;
			add: self affectedEntry afterIndex: (self newIndex - 1)]"!

canRemoveKey

	"28/9/2001"

	^true!

commitFor: aCollectionProxy

	"25/9/2000"
	
	self affectedEntry isPersistent ifTrue: 
		[aCollectionProxy _collectionSpec 
			updateEntry: self affectedEntry 
			withIndex: self newIndex
			in: aCollectionProxy _reStore]!

indexChange

	"25/9/2000"

	^self newIndex - self oldIndex!

newIndex

	"25/9/2000

	newIndex stores the Integer index which the entry represented by the receiver
	should hold on commit"

	^newIndex!

newIndex: anInteger

	"25/9/2000

	newIndex stores the Integer index which the entry represented by the receiver
	should hold on commit"

	newIndex := anInteger!

oldIndex

	"25/9/2000"

	^self affectedEntry index! !
!SSWDBCollectionIndexUpdate categoriesFor: #applyTo:!actions - api!public! !
!SSWDBCollectionIndexUpdate categoriesFor: #canRemoveKey!public!testing! !
!SSWDBCollectionIndexUpdate categoriesFor: #commitFor:!actions - api!public! !
!SSWDBCollectionIndexUpdate categoriesFor: #indexChange!accessing!public! !
!SSWDBCollectionIndexUpdate categoriesFor: #newIndex!accessing!public! !
!SSWDBCollectionIndexUpdate categoriesFor: #newIndex:!accessing!public! !
!SSWDBCollectionIndexUpdate categoriesFor: #oldIndex!accessing!public! !

!SSWDBCollectionIndexUpdate class methodsFor!

entry: aCollectionEntry newIndex: anInteger

	"20/5/2001"

	^(self newWithEntry: aCollectionEntry)
		newIndex: anInteger;
		yourself! !
!SSWDBCollectionIndexUpdate class categoriesFor: #entry:newIndex:!instance creation!public! !

