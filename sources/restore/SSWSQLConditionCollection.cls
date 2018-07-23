"Filed out from Dolphin Smalltalk 7"!

SSWSQLCollection variableSubclass: #SSWSQLConditionCollection
	instanceVariableNames: 'sqlConcatenator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLConditionCollection guid: (GUID fromString: '{6266c922-3983-11d5-b1df-444553540000}')!
SSWSQLConditionCollection comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLConditionCollection categoriesForClass!Unclassified! !
!SSWSQLConditionCollection methodsFor!

& aCondition

	"21/1/2001"

	^self sqlAnd: aCondition!

| aCondition

	"21/1/2001"

	^self sqlOr: aCondition!

add: aConditionOrCollection

	"5/8/2000
	
	If the operand is another collection with the same concatenator, the receiver can merge with it"
	
	((aConditionOrCollection isKindOf: SSWSQLConditionCollection)
		and: [aConditionOrCollection sqlConcatenator = self sqlConcatenator])
			ifTrue: [self addAll: aConditionOrCollection]
			ifFalse: [super add: aConditionOrCollection]!

anySatisfy: aBlock

	"26/4/2001

	Recursive version needed since the receiver will hold conditions or other condition collections"

	self do: [ :each | (each anySatisfy: aBlock) ifTrue: [^true]].

	^false!

asFieldAssignment

	"17/9/2001

	Polymorphic with SQLCondition implementation"

	| assignment |

	assignment := SSWSQLFieldAssignmentCollection new: self size.

	self do:
		[ :condition |
		assignment add: condition asFieldAssignment].

	^assignment
!

copy

	"27/3/01"
	
	^super copy
		sqlConcatenator: self sqlConcatenator;
		yourself!

copyEmpty: anInteger

	"5/8/2000"

	^(super copyEmpty: anInteger)
		sqlConcatenator: self sqlConcatenator;
		yourself
!

flattened

	"Return a flat collection of the receiver's conditions.
	NB privileged clients only - the flattened variant has a changed meaning to the receiver"

	| flattened |

	flattened := OrderedCollection new.
	self do: [ :each | flattened addAll: each flattened].

	^flattened!

isAND

	"23/3/2001"
	
	^self sqlConcatenator = self class concatenatorForAND!

isEmpty

	"23/3/2001

	Account for a collection of empty collections"
	
	^super isEmpty or: [self allSatisfy: [ :each | each isEmpty]]!

isOR

	"23/3/2001"
	
	^self sqlConcatenator = self class concatenatorForOR!

not

	"23/3/2001
	
	Invert the receiver
	 - ANDs become ORs (and v.v.)
	 - individual conditions are inverted"
	
	self isAND 
		ifTrue: [self sqlConcatenator: self class concatenatorForOR]
		ifFalse: [self sqlConcatenator: self class concatenatorForAND].
		
	self do: [ :condition | condition not].
	
	^self!

qAnd: aQueryBlockSection

	"21/1/2001
	
	For block-querying (would be standard and: but this is inlined)"

	^self sqlAnd: aQueryBlockSection value!

qOr: aQueryBlockSection

	"21/1/2001
	
	For block-querying (would be standard and: but this is inlined)"

	^self sqlOr: aQueryBlockSection value!

sqlAnd: aConditionOrCollection

	"5/8/2000
	
	Return an SQLConditionCollection consisting of the receiver ANDed with the given
	SQLCondition or SQLConditionCollection (the two are polymorphic)"

	^SSWSQLConditionCollection forAND
		add: self;
		add: aConditionOrCollection;
		yourself!

sqlConcatenator

	"5/8/2000
	
	sqlConcatenator stores the String which merges these conditions 
	 - usually AND or OR"
	
	^sqlConcatenator!

sqlConcatenator: aString

	"5/8/2000
	
	sqlConcatenator stores the String which merges these conditions 
	 - usually AND or OR"
	
	sqlConcatenator := aString!

sqlOr: aConditionOrCollection

	"5/8/2000
	
	Return an SQLConditionCollection consisting of the receiver ORed with the given
	SQLCondition or SQLConditionCollection (the two are polymorphic)"

	^SSWSQLConditionCollection forOR
		add: self;
		add: aConditionOrCollection;
		yourself!

writeSQLOn: aStream

	"5/8/2000
	
	Wrap in parantheses"
	
	aStream nextPut: $(.
	super writeSQLOn: aStream.
	aStream nextPut: $)! !
!SSWSQLConditionCollection categoriesFor: #&!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #|!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #add:!adding/removing!public! !
!SSWSQLConditionCollection categoriesFor: #anySatisfy:!enumerating!public! !
!SSWSQLConditionCollection categoriesFor: #asFieldAssignment!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #copy!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #copyEmpty:!copying!private! !
!SSWSQLConditionCollection categoriesFor: #flattened!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #isAND!public!testing! !
!SSWSQLConditionCollection categoriesFor: #isEmpty!public!testing! !
!SSWSQLConditionCollection categoriesFor: #isOR!public!testing! !
!SSWSQLConditionCollection categoriesFor: #not!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #qAnd:!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #qOr:!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #sqlAnd:!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #sqlConcatenator!accessing!public! !
!SSWSQLConditionCollection categoriesFor: #sqlConcatenator:!accessing!public! !
!SSWSQLConditionCollection categoriesFor: #sqlOr:!evaluating!public! !
!SSWSQLConditionCollection categoriesFor: #writeSQLOn:!output!public! !

!SSWSQLConditionCollection class methodsFor!

concatenatorForAND

	"5/8/2000"
	
	^' AND '!

concatenatorForOR

	"5/8/2000"
	
	^' OR '!

forAND

	"5/8/2000"
	
	^self new
		sqlConcatenator: self concatenatorForAND;
		yourself!

forOR

	"5/8/2000"
	
	^self new
		sqlConcatenator: self concatenatorForOR;
		yourself! !
!SSWSQLConditionCollection class categoriesFor: #concatenatorForAND!public!utility! !
!SSWSQLConditionCollection class categoriesFor: #concatenatorForOR!public!utility! !
!SSWSQLConditionCollection class categoriesFor: #forAND!instance creation!public! !
!SSWSQLConditionCollection class categoriesFor: #forOR!instance creation!public! !

