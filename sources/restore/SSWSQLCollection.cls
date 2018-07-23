"Filed out from Dolphin Smalltalk 7"!

OrderedCollection variableSubclass: #SSWSQLCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLCollection guid: (GUID fromString: '{6266c921-3983-11d5-b1df-444553540000}')!
SSWSQLCollection comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLCollection categoriesForClass!Unclassified! !
!SSWSQLCollection methodsFor!

asOrderedCollection
	"Answer an OrderedCollection containing the same elements as the receiver.
	The elements of the OrderedCollection will be sorted (at least initially) in the
	sort order of the receiver.
	Implementation Note: Revert to the Collection implementation."

	^(OrderedCollection new: self size)
		addAll: self;
		yourself!

sqlConcatenator

	"5/8/2000
	
	Return the String that concatenates the list of SQL entities held by the receiver
	(this should also contain any required whitespace characters)"
	
	^self subclassResponsibility!

writeSQLOn: aStream

	"5/8/2000"
	
	self isEmpty ifTrue: [^self].

	self first writeSQLOn: aStream.
	
	2 to: self size do:
		[ :index || sqlEntity |
		sqlEntity := self at: index.
		aStream nextPutAll: self sqlConcatenator.
		sqlEntity writeSQLOn: aStream]! !
!SSWSQLCollection categoriesFor: #asOrderedCollection!converting!public! !
!SSWSQLCollection categoriesFor: #sqlConcatenator!output!public! !
!SSWSQLCollection categoriesFor: #writeSQLOn:!output!public! !

