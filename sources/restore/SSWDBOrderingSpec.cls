"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBOrderingSpec
	instanceVariableNames: 'criteria isAscending'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBOrderingSpec guid: (GUID fromString: '{5c3635a1-3bdf-11d5-b1df-444553540000}')!
SSWDBOrderingSpec comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBOrderingSpec categoriesForClass!Unclassified! !
!SSWDBOrderingSpec methodsFor!

compare: objectA with: objectB

	"16/4/2001

	Use the receiver to compare the two objects.
	Return true or false, or nil if the two are equal.
	ASSERT: the receiver's criteria is a perform'able message name for both objects"

	| a b |

	a := objectA perform: self criteria.
	b := objectB perform: self criteria.

	^a = b
	ifTrue: 
		[nil]
	ifFalse:
		[self isAscending
			ifTrue: [a <= b]
			ifFalse: [a > b]]!

criteria

	"18/9/2000
	
	criteria stores an Object used for ordering
	(the class of Object is dependent on the client of the receiver).
	The direction of ordering is given by isAscending"
	
	^criteria!

criteria: anOrderedCollection

	"18/9/2000
	
	criteria stores an Object used for ordering
	(the class of Object is dependent on the client of the receiver).
	The direction of ordering is given by isAscending"
	
	criteria := anOrderedCollection!

isAscending

	"18/9/2000
	
	isAscending stores a Boolean indicating if ordering by the receiver's criteria
	should be ascending (true) or descending (false)"
	
	^isAscending!

isAscending: aBoolean

	"18/9/2000
	
	isAscending stores a Boolean indicating if ordering by the receiver's criteria
	should be ascending (true) or descending (false)"
	
	isAscending := aBoolean! !
!SSWDBOrderingSpec categoriesFor: #compare:with:!comparing!public! !
!SSWDBOrderingSpec categoriesFor: #criteria!accessing!public! !
!SSWDBOrderingSpec categoriesFor: #criteria:!accessing!public! !
!SSWDBOrderingSpec categoriesFor: #isAscending!accessing!public! !
!SSWDBOrderingSpec categoriesFor: #isAscending:!accessing!public! !

!SSWDBOrderingSpec class methodsFor!

ascending: anObject

	"18/9/2001"

	^self new
		criteria: anObject;
		isAscending: true;
		yourself!

descending: anObject

	"18/9/2001"

	^self new
		criteria: anObject;
		isAscending: false;
		yourself! !
!SSWDBOrderingSpec class categoriesFor: #ascending:!instance creation!public! !
!SSWDBOrderingSpec class categoriesFor: #descending:!instance creation!public! !

