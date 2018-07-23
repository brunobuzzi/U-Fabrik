"Filed out from Dolphin Smalltalk 7"!

SSWDBStaticCollectionSpec subclass: #SSWDBKeyedStaticCollectionSpec
	instanceVariableNames: 'indexField'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBKeyedStaticCollectionSpec guid: (GUID fromString: '{4648dc63-a6b1-11d5-b1e0-444553540000}')!
SSWDBKeyedStaticCollectionSpec comment: ''!
!SSWDBKeyedStaticCollectionSpec categoriesForClass!Unclassified! !
!SSWDBKeyedStaticCollectionSpec methodsFor!

entryClass

	"18/9/2000
	
	Return the class of collection entry appropriate for the receiver"
	
	^SSWDBKeyedCollectionEntry!

indexField

	"20/8/2000
	
	indexField stores the SSWDBField in the receiver's collectionTable
	that holds the index of the elements"
	
	indexField == nil ifTrue: [indexField := self collectionTable fieldAccessing: #index].
	
	^indexField!

indexField: anSSWDBField

	"20/8/2000
	
	indexField stores the SSWDBField in the receiver's collectionTable
	that holds the index of the elements"
	
	indexField := anSSWDBField!

updateEntry: anSSWDBCollectionEntry withIndex: anInteger in: anSSWReStore 

	"22/9/2000"
		
	anSSWReStore executeQuery: 
		(SSWSQLUpdateObjectQuery 
			forObject: anSSWDBCollectionEntry
			withUpdates: 
				(SSWSQLFieldAssignmentCollection with:
					(SSWSQLFieldAssignment 
						field: self indexField
						value: anInteger)))! !
!SSWDBKeyedStaticCollectionSpec categoriesFor: #entryClass!constants!public! !
!SSWDBKeyedStaticCollectionSpec categoriesFor: #indexField!accessing!public! !
!SSWDBKeyedStaticCollectionSpec categoriesFor: #indexField:!accessing!public! !
!SSWDBKeyedStaticCollectionSpec categoriesFor: #updateEntry:withIndex:in:!actions - api!public! !

