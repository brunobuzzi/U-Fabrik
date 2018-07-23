"Filed out from Dolphin Smalltalk 7"!

SSWSQLFieldValueConjunction subclass: #SSWSQLCondition
	instanceVariableNames: 'operator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLCondition guid: (GUID fromString: '{6266c929-3983-11d5-b1df-444553540000}')!
SSWSQLCondition comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLCondition categoriesForClass!Unclassified! !
!SSWSQLCondition methodsFor!

& aCondition

	"21/1/2001"

	^self sqlAnd: aCondition!

| aCondition

	"21/1/2001"

	^self sqlOr: aCondition!

= anSSWSQLCondition

	^super = anSSWSQLCondition and: [self operator = anSSWSQLCondition operator]!

anySatisfy: aBlock

	"21/3/2001
	
	Make the receiver polymorphic with an SQLConditionCollection"
	
	^aBlock value: self!

asFieldAssignment

	"17/9/2001"

	^SSWSQLFieldAssignment field: self field value: self value!

asOrderingSpec

	"Return the receiver as an OrderingSpec
	 - for this the value is ignored, as it is assumed to be equivalent to the field"

	^self operator orderingSpecFor: self field!

collect: aBlock

	"21/3/2001
	
	Make the receiver polymorphic with an SQLConditionCollection"
	
	^Array with: (aBlock value: self)!

do: aBlock

	"21/3/2001
	
	Make the receiver polymorphic with an SQLConditionCollection"
	
	^aBlock value: self!

flattened

	"Make the receiver polymorphic with an SQLConditionCollection"
	
	^Array with: self!

isAND

	"23/3/2001"
	
	^self sqlConcatenator = self class concatenatorForAND!

isEmpty

	"21/3/2001
	
	Make the receiver polymorphic with an SQLConditionCollection"
	
	^false!

isOR

	"23/3/2001"
	
	^self sqlConcatenator = self class concatenatorForOR!

not

	"23/3/2001
	
	Invert the operator"

	self operator invert.
	^self!

operator

	"5/8/2000
	
	operator stores the comparison operation for this condition"
	
	^operator!

operator: anSSWSQLOperator

	"5/8/2000
	
	operator stores the comparison operation for this condition"
	
	operator := anSSWSQLOperator!

qAnd: aQueryBlockSection

	"21/1/2001
	
	For block-querying (would be standard and: but this is inlined)"

	^self sqlAnd: aQueryBlockSection value!

qOr: aQueryBlockSection

	"21/1/2001
	
	For block-querying (would be standard or: but this is inlined)"

	^self sqlOr: aQueryBlockSection value!

sqlAnd: aConditionOrCollection

	"5/8/2000
	
	Return an SQLConditionCollection consisting of the receiver ANDed with the given
	SQLCondition or SQLConditionCollection (the two are polymorphic)"

	^aConditionOrCollection isEmpty
	ifTrue:
		[self]
	ifFalse:
		[SSWSQLConditionCollection forAND
			add: self;
			add: aConditionOrCollection;
			yourself]!

sqlOr: aConditionOrCollection

	"5/8/2000
	
	Return an SQLConditionCollection consisting of the receiver ORed with the given
	SQLCondition or SQLConditionCollection (the two are polymorphic)"

	^SSWSQLConditionCollection forOR
		add: self;
		add: aConditionOrCollection;
		yourself!

writeConjunctionSQLOn: aStream

	"Private - 5/8/2000"
	
	self operator writeSQLOn: aStream forTarget: self value!

writeSQLOn: aStream

	"16/4/2001

	Handle the special case where there is no operator or value (implicit true)"
	
	^(self operator = nil and: [self value = nil])
		ifTrue: [self writeFieldSQLOn: aStream]
		ifFalse: [super writeSQLOn: aStream]! !
!SSWSQLCondition categoriesFor: #&!evaluating!public! !
!SSWSQLCondition categoriesFor: #|!evaluating!public! !
!SSWSQLCondition categoriesFor: #=!public!testing! !
!SSWSQLCondition categoriesFor: #anySatisfy:!collection behavior!public! !
!SSWSQLCondition categoriesFor: #asFieldAssignment!evaluating!public! !
!SSWSQLCondition categoriesFor: #asOrderingSpec!evaluating!public! !
!SSWSQLCondition categoriesFor: #collect:!collection behavior!public! !
!SSWSQLCondition categoriesFor: #do:!collection behavior!public! !
!SSWSQLCondition categoriesFor: #flattened!collection behavior!public! !
!SSWSQLCondition categoriesFor: #isAND!public!testing! !
!SSWSQLCondition categoriesFor: #isEmpty!collection behavior!public! !
!SSWSQLCondition categoriesFor: #isOR!public!testing! !
!SSWSQLCondition categoriesFor: #not!evaluating!public! !
!SSWSQLCondition categoriesFor: #operator!accessing!public! !
!SSWSQLCondition categoriesFor: #operator:!accessing!public! !
!SSWSQLCondition categoriesFor: #qAnd:!evaluating!public! !
!SSWSQLCondition categoriesFor: #qOr:!evaluating!public! !
!SSWSQLCondition categoriesFor: #sqlAnd:!evaluating!public! !
!SSWSQLCondition categoriesFor: #sqlOr:!evaluating!public! !
!SSWSQLCondition categoriesFor: #writeConjunctionSQLOn:!output!private! !
!SSWSQLCondition categoriesFor: #writeSQLOn:!output!public! !

!SSWSQLCondition class methodsFor!

equals

	"6/8/2000"
	
	^self new
		!

field: anSSWDBField equalTo: aValue

	"6/8/2000"
	
	^self field: anSSWDBField is: SSWSQLOperator equals to: aValue!

field: anSSWDBField is: anSSWSQLOperator to: aValue

	"6/8/2000"
	
	^self new
		field: anSSWDBField;
		operator: anSSWSQLOperator;
		value: aValue;
		yourself!

field: anSSWDBField value: aValue

	"21/1/2001"
	
	^self field: anSSWDBField is: SSWSQLOperator setValue to: aValue!

fieldOnly: anSSWDBField

	"6/8/2000"
	
	^self field: anSSWDBField is: nil to: nil! !
!SSWSQLCondition class categoriesFor: #equals!instance creation!public! !
!SSWSQLCondition class categoriesFor: #field:equalTo:!instance creation!public! !
!SSWSQLCondition class categoriesFor: #field:is:to:!instance creation!public! !
!SSWSQLCondition class categoriesFor: #field:value:!instance creation!public! !
!SSWSQLCondition class categoriesFor: #fieldOnly:!instance creation!public! !

