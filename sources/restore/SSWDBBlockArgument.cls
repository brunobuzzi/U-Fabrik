"Filed out from Dolphin Smalltalk 7"!

SSWDBBlockEvaluator subclass: #SSWDBBlockArgument
	instanceVariableNames: 'finalFields'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBBlockArgument guid: (GUID fromString: '{5a3e3dcd-3990-11d5-b1df-444553540000}')!
SSWDBBlockArgument comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBBlockArgument categoriesForClass!Unclassified! !
!SSWDBBlockArgument methodsFor!

finalField

	"20/3/2001
	
	Return the first field in the finalFields queue; error if none.
	NB - this also REMOVES the first finalField, destructively changing the queue.
	Use peekFinalField or hasFinalField (non destructive) to test"

	^self hasFinalField
		ifTrue: [self finalFields removeFirst]
		ifFalse: [self parseError: 'No finalField set' with: #finalField]!

finalField: aField

	"20/3/2001
	
	Add aField to the end of the finalFields queue"

	self finalFields addLast: aField!

finalFields

	"20/3/01
	
	finalFields stores an OrderedCollection of SSWDBQueryFields as a queue of 'final fields' encountered during parsing;
	There will be at most two final fields, e.g.
		[ :cd | cd title = 'Come on Pilgrim']		- 1 final field, TITLE
		[ :cd | cd title = cd artistName]			- 2 final fields, TITLE and ARTIST_NAME
		
	The Queue nature is caused by the order or parsing, e.g. 
	Parse: 'cd title'				#(TITLE)
	Parse: 'cd artistName'	#(TITLE ARTIST_NAME)
	When evaluating the '=' comparator, TITLE is compared (first) with ARTIST_NAME, i.e First In, First Out"
		
	^finalFields!

finalFields: anOrderedCollection

	"20/3/01
	
	finalFields stores an OrderedCollection of SSWDBQueryFields as a queue of 'final fields' encountered during parsing;
	There will be at most two final fields, e.g.
		[ :cd | cd title = 'Come on Pilgrim']		- 1 final field, TITLE
		[ :cd | cd title = cd artistName]			- 2 final fields, TITLE and ARTIST_NAME
		
	The Queue nature is caused by the order or parsing, e.g. 
	Parse: 'cd title'				#(TITLE)
	Parse: 'cd artistName'	#(TITLE ARTIST_NAME)
	When evaluating the '=' comparator, TITLE is compared (first) with ARTIST_NAME, i.e First In, First Out"
		
	finalFields := anOrderedCollection!

hasFinalField

	"20/3/2001"

	^self finalFields isEmpty not!

lastFinalField

	"20/3/2001
	
	Remove and return the LAST field in the finalFields queue (if any).
	Access to the last field is required for function application
	c.f. finalField"

	^self hasFinalField
		ifTrue: [self finalFields removeLast]
		ifFalse: [nil]!

peekFinalField

	"20/3/2001
	
	Return the first field in the finalFields queue (if any) WITHOUT modifying the queue.
	c.f. finalField"

	^self hasFinalField
		ifTrue: [self finalFields first]
		ifFalse: [nil]! !
!SSWDBBlockArgument categoriesFor: #finalField!accessing!public! !
!SSWDBBlockArgument categoriesFor: #finalField:!accessing!public! !
!SSWDBBlockArgument categoriesFor: #finalFields!accessing!public! !
!SSWDBBlockArgument categoriesFor: #finalFields:!accessing!public! !
!SSWDBBlockArgument categoriesFor: #hasFinalField!public!testing! !
!SSWDBBlockArgument categoriesFor: #lastFinalField!evaluating!public! !
!SSWDBBlockArgument categoriesFor: #peekFinalField!evaluating!public! !

!SSWDBBlockArgument class methodsFor!

new

	"20/3/2001"
	
	^super new
		finalFields: (OrderedCollection new: 2);
		yourself! !
!SSWDBBlockArgument class categoriesFor: #new!instance creation!public! !

