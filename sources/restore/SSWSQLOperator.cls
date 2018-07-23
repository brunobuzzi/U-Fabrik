"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWSQLOperator
	instanceVariableNames: 'sqlString messageSelector isInverted'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLOperator guid: (GUID fromString: '{6266c92b-3983-11d5-b1df-444553540000}')!
SSWSQLOperator comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLOperator categoriesForClass!Unclassified! !
!SSWSQLOperator methodsFor!

compare: value1 with: value2

	"5/8/2000"
	
	| result |
	
	result := value1 perform: self messageSelector with: value2.
	
	^self isInverted
		ifTrue: [result not]
		ifFalse: [result]!

invert

	"23/3/2001"
	
	self isInverted
	ifTrue: 
		[self sqlString: (self class sqlStringForMessage: self messageSelector).
		self isInverted: false]
	ifFalse: 
		[self sqlString: (self class inverseSQLStringForMessage: self messageSelector).
		self isInverted: true]
!

isInverted

	"23/3/2001
	
	isInverted stores a Boolean indicating whether the receiver should invert
	its result following a compare:with:.
	NB If the receiver isInverted, then its message selector will be *un*inverted,
	but the sqlString *will* be inverted. e.g.
		isInverted - false; messageSelector: #like:, sqlString: 'LIKE'
		isInverted - true; messageSelector: #like:, sqlString: 'NOT LIKE'	"
		
	^isInverted!

isInverted: aBoolean

	"23/3/2001
	
	isInverted stores a Boolean indicating whether the receiver should invert
	its result following a compare:with:.
	NB If the receiver isInverted, then its message selector will be *un*inverted,
	but the sqlString *will* be inverted. e.g.
		isInverted - false; messageSelector: #like:, sqlString: 'LIKE'
		isInverted - true; messageSelector: #like:, sqlString: 'NOT LIKE'	"
		
	isInverted := aBoolean!

isSetValue

	"21/1/2001
	
	If the receiver is being used to set a value (rather than compare), 
	then #value: is the messageSelector, '=' is the sqlString.
	
	This is needed to as messageSelector #= is mapped to ' IS ' when used with NULL"
	
	^self messageSelector == #value:!

isValidForOrdering

	^#(#< #<= #>= #>) includes: self messageSelector!

messageSelector

	"5/8/2000
	
	messageSelector stores the Smalltalk message name which is equivalent to the receiver's sqlString"
	
	^messageSelector!

messageSelector: aSymbol

	"5/8/2000
	
	messageSelector stores the Smalltalk message name which is equivalent to the receiver's sqlString"
	
	messageSelector := aSymbol!

orderingSpecFor: anObject

	self isValidForOrdering ifFalse: [self error: 'Condition invalid for ordering'].

	^self isInverted
	ifTrue:
		[(self messageSelector first = $>)
			ifTrue: [SSWDBOrderingSpec ascending: anObject]
			ifFalse: [SSWDBOrderingSpec descending: anObject]]
	ifFalse:
		[(self messageSelector first = $<)
			ifTrue: [SSWDBOrderingSpec ascending: anObject]
			ifFalse: [SSWDBOrderingSpec descending: anObject]]!

sqlString

	"5/8/2000
	
	sqlString stores the SQL text for this operator"
	
	^sqlString!

sqlString: aString

	"5/8/2000
	
	sqlString stores the SQL text for this operator"
	
	sqlString := aString!

sqlStringFor: aTargetValue

	"5/8/2000
	
	aTargetValue is necessary as some SQL operators change form 
	depending on the target value (e.g. IS NULL)"
	
	^(aTargetValue = nil and: [self isSetValue not])
	ifTrue:
		[self messageSelector = #= 
		ifTrue: 
			['IS']
		ifFalse:
			[self messageSelector = #~=
				ifTrue: ['IS NOT']
				ifFalse: [self error: 'Invalid operator for nil']]]
	ifFalse:
		[self sqlString]!

writeSQLOn: aStream forTarget: aTargetValue

	"5/8/2000
	
	aTargetValue is necessary as some SQL operators change form 
	depending on the target value (e.g. IS NULL)"
	
	aStream nextPutAll: (self sqlStringFor: aTargetValue)! !
!SSWSQLOperator categoriesFor: #compare:with:!comparing!public! !
!SSWSQLOperator categoriesFor: #invert!modifying!public! !
!SSWSQLOperator categoriesFor: #isInverted!accessing!public! !
!SSWSQLOperator categoriesFor: #isInverted:!accessing!public! !
!SSWSQLOperator categoriesFor: #isSetValue!public!testing! !
!SSWSQLOperator categoriesFor: #isValidForOrdering!public!testing! !
!SSWSQLOperator categoriesFor: #messageSelector!accessing!public! !
!SSWSQLOperator categoriesFor: #messageSelector:!accessing!public! !
!SSWSQLOperator categoriesFor: #orderingSpecFor:!public!testing! !
!SSWSQLOperator categoriesFor: #sqlString!accessing!public! !
!SSWSQLOperator categoriesFor: #sqlString:!accessing!public! !
!SSWSQLOperator categoriesFor: #sqlStringFor:!output!public! !
!SSWSQLOperator categoriesFor: #writeSQLOn:forTarget:!output!public! !

!SSWSQLOperator class methodsFor!

equals

	"5/8/2000"
	
	^self messageSelector: #=!

inverseSQLStringForMessage: aSymbol

	"23/3/2001
	
	Return the SQL text equivalent to the inverse of the given Smalltalk message.
	NB - no fallback (c.f. sqlStringForMessage:); error if no inverse found"
	
	^self messageInverseSQLMap at: aSymbol ifAbsent: [self error: 'No inverse defined for this message']!

messageForSQLString: aString

	"5/8/2000
	
	Return the SQL text equivalent to the given Smalltalk message"
	
	^self messageSQLMap keyAtValue: aString asUppercase ifAbsent: [aString asSymbol]!

messageInverseSQLMap

	"23/2/2001
	
	Maps Smalltalk message selectors to the equivalent SQL text
	for the *inverse* of that operation"
	
	^Dictionary new
		at: #=			put: '<>';
		at: #~=		put: '=';
		at: #<			put: '>=';
		at: #>			put: '<=';
		at: #>=		put: '<';
		at: #<=		put: '>';
		at: #like:		put: 'NOT LIKE';
		at: #includedIn: 	put: 'NOT IN';
		yourself!

messageSelector: aSymbol

	"5/8/2000"
	
	^self new
		messageSelector: aSymbol;
		sqlString: (self sqlStringForMessage: aSymbol);
		yourself!

messageSQLMap

	"5/8/2000
	
	Maps Smalltalk message selectors to equivalent SQL text.
	Absent selectors map to their String equivalent"
	
	^Dictionary new
		at: #~=		put: '<>';
		at: #like:		put: 'LIKE';
		at: #includedIn: 	put: 'IN';
		at: #value: 		put: '=';
		yourself!

new

	"23/3/2001"
	
	^super new
		isInverted: false;
		yourself!

setValue

	"21/1/2001"
	
	^self messageSelector: #value:!

sqlString: aString

	"5/8/2000"
	
	^self new
		messageSelector: (self messageForSQLString: aString);
		sqlString: aString;
		yourself!

sqlStringForMessage: aSymbol

	"5/8/2000
	
	Return the SQL text equivalent to the given Smalltalk message"
	
	^self messageSQLMap at: aSymbol ifAbsent: [aSymbol asString]! !
!SSWSQLOperator class categoriesFor: #equals!instance creation!public! !
!SSWSQLOperator class categoriesFor: #inverseSQLStringForMessage:!public!utility! !
!SSWSQLOperator class categoriesFor: #messageForSQLString:!public!utility! !
!SSWSQLOperator class categoriesFor: #messageInverseSQLMap!constants!public! !
!SSWSQLOperator class categoriesFor: #messageSelector:!instance creation!public! !
!SSWSQLOperator class categoriesFor: #messageSQLMap!constants!public! !
!SSWSQLOperator class categoriesFor: #new!instance creation!public! !
!SSWSQLOperator class categoriesFor: #setValue!instance creation!public! !
!SSWSQLOperator class categoriesFor: #sqlString:!instance creation!public! !
!SSWSQLOperator class categoriesFor: #sqlStringForMessage:!public!utility! !

