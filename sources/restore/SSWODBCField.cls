"Filed out from Dolphin Smalltalk 7"!

DBField subclass: #SSWODBCField
	instanceVariableNames: 'statement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWODBCField guid: (GUID fromString: '{4031cf23-9276-11d5-b1e0-0010a70883e2}')!
SSWODBCField comment: ''!
!SSWODBCField categoriesForClass!Unclassified! !
!SSWODBCField methodsFor!

fromByte: aNumberOrBoolean

	"16/8/2001

	Overridden to allow Integer-based Booleans"

	(aNumberOrBoolean isKindOf: Boolean) 
	ifTrue: 
		["self assert: [self sqlDialect trueObject isKindOf: Integer]"
		aNumberOrBoolean 
			ifTrue: [super fromByte: self sqlDialect trueObject]
			ifFalse: [super fromByte: self sqlDialect falseObject]]
	ifFalse:
		[super fromByte: aNumberOrBoolean]
!

fromLong: aNumberOrBoolean

	"16/8/2001

	Overridden to allow Integer-based Booleans"

	(aNumberOrBoolean isKindOf: Boolean) 
	ifTrue: 
		["self assert: [self sqlDialect trueObject isKindOf: Integer]"
		aNumberOrBoolean 
			ifTrue: [super fromLong: self sqlDialect trueObject]
			ifFalse: [super fromLong: self sqlDialect falseObject]]
	ifFalse:
		[super fromLong: aNumberOrBoolean]
!

fromShort: aNumberOrBoolean

	"16/8/2001

	Overridden to allow Integer-based Booleans"

	(aNumberOrBoolean isKindOf: Boolean) 
	ifTrue: 
		["self assert: [self sqlDialect trueObject isKindOf: Integer]"
		aNumberOrBoolean 
			ifTrue: [super fromShort: self sqlDialect trueObject]
			ifFalse: [super fromShort: self sqlDialect falseObject]]
	ifFalse:
		[super fromShort: aNumberOrBoolean]
!

fromString: aStringOrBoolean

	"16/8/2001

	Overridden to allow String-based Booleans & to automatically truncate oversize Strings"

	(aStringOrBoolean isKindOf: Boolean) 
	ifTrue: 
		["self assert: [self sqlDialect trueObject isKindOf: String]"
		aStringOrBoolean 
			ifTrue: [super fromString: self sqlDialect trueObject]
			ifFalse: [super fromString: self sqlDialect falseObject]]
	ifFalse:
		[aStringOrBoolean size >= buffer size
		ifTrue: 
			[Notification signal: 'ReStore: oversized String truncated'. 
			super fromString: (aStringOrBoolean copyFrom: 1 to: buffer size)]
		ifFalse: 
			[super fromString: aStringOrBoolean]]!

fromTimeStamp: aTimeStamp

	"16/8/2001

	Overridden to allow Date and Time to be used"

	| validTimeStamp |

	validTimeStamp := aTimeStamp.

	(aTimeStamp isKindOf: Date) ifTrue: [validTimeStamp := TimeStamp date: aTimeStamp].
	(aTimeStamp isKindOf: Time) ifTrue: [validTimeStamp := TimeStamp time: aTimeStamp].

	^super fromTimeStamp: validTimeStamp!

numberToNumeric: aNumberOrBoolean

	"16/8/2001

	Overridden to allow Numeric-based Booleans"

	(aNumberOrBoolean isKindOf: Boolean) 
	ifTrue: 
		["self assert: [self sqlDialect trueObject isKindOf: Integer]"
		aNumberOrBoolean 
			ifTrue: [super numberToNumeric: self sqlDialect trueObject]
			ifFalse: [super numberToNumeric: self sqlDialect falseObject]]
	ifFalse:
		[super numberToNumeric: aNumberOrBoolean]!

shouldTranslate: anObject class: aClass

	"Private - 16/8/01

	Override the superclass implementation to allow Booleans to masquerade as other classes
	 (some DBs do not offer direct BOOLEAN support)"

	^((anObject isKindOf: Boolean) and: [self sqlDialect trueObject class isKindOf: aClass])
		or: [super shouldTranslate: anObject class: aClass]!

sqlDialect

	"18/9/2001 

	Derive from the statement"

	^self statement sqlDialect!

statement

	"16/8/2001 

	statement stores the SSWODBC...Statement to which this field relates"

	^statement!

statement: anSSWODBCStatement

	"16/8/2001 

	statement stores the SSWODBC...Statement to which this field relates"

	statement := anSSWODBCStatement! !
!SSWODBCField categoriesFor: #fromByte:!converting!private! !
!SSWODBCField categoriesFor: #fromLong:!converting!private! !
!SSWODBCField categoriesFor: #fromShort:!converting!private! !
!SSWODBCField categoriesFor: #fromString:!converting!private! !
!SSWODBCField categoriesFor: #fromTimeStamp:!converting!private! !
!SSWODBCField categoriesFor: #numberToNumeric:!converting!private! !
!SSWODBCField categoriesFor: #shouldTranslate:class:!accessing!private! !
!SSWODBCField categoriesFor: #sqlDialect!accessing!public! !
!SSWODBCField categoriesFor: #statement!accessing!public! !
!SSWODBCField categoriesFor: #statement:!accessing!public! !

!SSWODBCField class methodsFor!

newForCol: aColAttr statement: anSSWODBCStatement

	"18/9/2001"

	^(self newForCol: aColAttr)
		statement: anSSWODBCStatement;
		yourself! !
!SSWODBCField class categoriesFor: #newForCol:statement:!instance creation!public! !

