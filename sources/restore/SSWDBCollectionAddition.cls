"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionChange subclass: #SSWDBCollectionAddition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCollectionAddition guid: (GUID fromString: '{5a3e3dc7-3990-11d5-b1df-444553540000}')!
SSWDBCollectionAddition comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBCollectionAddition categoriesForClass!Unclassified! !
!SSWDBCollectionAddition methodsFor!

applyTo: aCollection

	"21/4/2001"
	
	self affectedEntry addTo: aCollection!

commitFor: aCollectionProxy

	"22/9/2000"
	
"	self affectedEntry target isNil
		ifTrue: [self affectedEntry targetID: nil]
		ifFalse: [self affectedEntry targetID: self affectedEntry target _id]."

	aCollectionProxy _collectionSpec insertEntry: self affectedEntry in: aCollectionProxy _reStore!

prepareToCommitFor: aCollectionProxy

	"21/4/2001"
	
	| table |

	super prepareToCommitFor: aCollectionProxy.

	self affectedEntry target _ensurePersistentIn: aCollectionProxy _reStore.

	table := aCollectionProxy _collectionSpec collectionTable.

	self affectedEntry 
		table: table;
		sourceID: aCollectionProxy _ownerID;
		entryID: (aCollectionProxy _reStore nextIDForTable: table)! !
!SSWDBCollectionAddition categoriesFor: #applyTo:!actions!public! !
!SSWDBCollectionAddition categoriesFor: #commitFor:!actions!public! !
!SSWDBCollectionAddition categoriesFor: #prepareToCommitFor:!actions!public! !

!SSWDBCollectionAddition class methodsFor!

added: anObject at: keyObject

	"20/5/2001"

	^self newWithEntry:
		(SSWDBKeyedCollectionEntry new
			target: anObject;
			index: keyObject;
			yourself)! !
!SSWDBCollectionAddition class categoriesFor: #added:at:!instance creation!public! !

