"Filed out from Dolphin Smalltalk 7"!

SSWSQLSelectQuery subclass: #SSWSQLOrderedSelectQuery
	instanceVariableNames: 'orderingSpecs'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLOrderedSelectQuery guid: (GUID fromString: '{6266c935-3983-11d5-b1df-444553540000}')!
SSWSQLOrderedSelectQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLOrderedSelectQuery categoriesForClass!Unclassified! !
!SSWSQLOrderedSelectQuery methodsFor!

orderAscendingBy: anSSWSQLDatabaseField

	"18/9/2000"
	
	self orderingSpecs add: (SSWDBOrderingSpec ascending: anSSWSQLDatabaseField)!

orderDescendingBy: anSSWSQLDatabaseField

	"18/9/2000"
	
	self orderingSpecs add: (SSWDBOrderingSpec descending: anSSWSQLDatabaseField)!

orderingSpecs

	"18/9/2000
	
	orderingSpecs stores an OrderedCollection of SSWDBOrderingSpecs
	which define the ordering used by this query (criteria is an SSWDBField)"
	
	^orderingSpecs!

orderingSpecs: anOrderedCollection

	"18/9/2000
	
	orderingSpecs stores an OrderedCollection of SSWDBOrderingSpecs
	which define the ordering used by this query (criteria is an SSWDBField)"
	
	orderingSpecs := anOrderedCollection!

writeSQLOn: aStream

	"5/8/2000"
	
	| first |
	
	super writeSQLOn: aStream.
	
	first := true.

	self orderingSpecs do: 
		[ :spec |
		first 
			ifTrue: [aStream nextPutAll: ' ORDER BY '. first := false]
			ifFalse: [aStream nextPutAll: ', '].
		spec criteria writeSQLOn: aStream.
		spec isAscending
			ifTrue: [aStream nextPutAll: ' ASC ']
			ifFalse: [aStream nextPutAll: ' DESC ']]! !
!SSWSQLOrderedSelectQuery categoriesFor: #orderAscendingBy:!defining!public! !
!SSWSQLOrderedSelectQuery categoriesFor: #orderDescendingBy:!defining!public! !
!SSWSQLOrderedSelectQuery categoriesFor: #orderingSpecs!accessing!public! !
!SSWSQLOrderedSelectQuery categoriesFor: #orderingSpecs:!accessing!public! !
!SSWSQLOrderedSelectQuery categoriesFor: #writeSQLOn:!output!public! !

!SSWSQLOrderedSelectQuery class methodsFor!

new

	"18/9/2000"
	
	^super new
		orderingSpecs: OrderedCollection new;
		yourself! !
!SSWSQLOrderedSelectQuery class categoriesFor: #new!instance creation!public! !

