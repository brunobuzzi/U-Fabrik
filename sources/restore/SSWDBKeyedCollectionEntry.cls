"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionEntry subclass: #SSWDBKeyedCollectionEntry
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBKeyedCollectionEntry guid: (GUID fromString: '{5a3e3dca-3990-11d5-b1df-444553540000}')!
SSWDBKeyedCollectionEntry comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBKeyedCollectionEntry categoriesForClass!Unclassified! !
!SSWDBKeyedCollectionEntry methodsFor!

addTargetTo: aCollection

	"22/5/2001"

	aCollection directAdd: self target suggestedIndex: self index!

index

	"15/8/2000
	
	index stores the index (key) of the target object in the collection"
	
	^index!

index: anInteger

	"15/8/2000
	
	index stores the index (key) of the target object in the collection"
	
	index := anInteger!

prepareToCommitFor: anSSWDBCachingCollectionProxy

	"18/8/2001"

	^self index _ensureActiveIn: anSSWDBCachingCollectionProxy _reStore
!

unstoreIndex

	"28/9/2001

	Unstore the index (key)"

	self index unstore! !
!SSWDBKeyedCollectionEntry categoriesFor: #addTargetTo:!actions!public! !
!SSWDBKeyedCollectionEntry categoriesFor: #index!accessing!public! !
!SSWDBKeyedCollectionEntry categoriesFor: #index:!accessing!public! !
!SSWDBKeyedCollectionEntry categoriesFor: #prepareToCommitFor:!actions!public! !
!SSWDBKeyedCollectionEntry categoriesFor: #unstoreIndex!actions!public! !

!SSWDBKeyedCollectionEntry class methodsFor!

dbTableNamed: aString in: anSSWReStore

	"15/9/2000"

	| table |

	table := super dbTableNamed: aString in: anSSWReStore.
	
	(table define: #index as: Integer) name: (anSSWReStore sqlDialect transformName: #index_).
		
	^table! !
!SSWDBKeyedCollectionEntry class categoriesFor: #dbTableNamed:in:!persistence!public! !

