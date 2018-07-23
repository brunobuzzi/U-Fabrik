"Filed out from Dolphin Smalltalk 7"!

SSWDBKeyedStaticCollectionSpec subclass: #SSWDBOrderedStaticCollectionSpec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBOrderedStaticCollectionSpec guid: (GUID fromString: '{266e4dd4-398e-11d5-b1df-444553540000}')!
SSWDBOrderedStaticCollectionSpec comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBOrderedStaticCollectionSpec categoriesForClass!Unclassified! !
!SSWDBOrderedStaticCollectionSpec methodsFor!

queryClass

	"18/9/2000
	
	Return the class of select query appropriate for the receiver"
	
	^SSWSQLOrderedSelectQuery!

selectQueryIn: anSSWReStore

	"19/8/2000

	Always SELECT in ascending order"
	
	^(super selectQueryIn: anSSWReStore)
		orderAscendingBy: (self collectionTable fieldAccessing: #index);
		yourself!

updateEntry: anSSWDBCollectionEntry withTarget: aProxy in: anSSWReStore 

	"22/9/2000"

	anSSWReStore executeQuery: 
		(SSWSQLUpdateObjectQuery 
			forObject: anSSWDBCollectionEntry
			withUpdates: 
				(SSWSQLFieldAssignmentCollection with:
					(SSWSQLFieldAssignment 
						field: self targetField
						value: aProxy odbcObject)))! !
!SSWDBOrderedStaticCollectionSpec categoriesFor: #queryClass!constants!public! !
!SSWDBOrderedStaticCollectionSpec categoriesFor: #selectQueryIn:!evaluating!public! !
!SSWDBOrderedStaticCollectionSpec categoriesFor: #updateEntry:withTarget:in:!actions - api!public! !

