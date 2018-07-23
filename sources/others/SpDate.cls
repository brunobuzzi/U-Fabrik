"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpDate
	instanceVariableNames: 'underlyingDate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpDate guid: (GUID fromString: '{d7238fe6-09ff-45df-a706-9b96e35d0818}')!
SpDate comment: ''!
!SpDate categoriesForClass!Unclassified! !
!SpDate methodsFor!

< anotherSpDate 
	"^a Boolean
	Answer true if anotherSpDate is less (i.e. earlier) than me."
	^self underlyingDate < anotherSpDate underlyingDate!

<= anotherOSkDate 
	"^a Boolean
	Answer true if anotherOSkDate is greater (i.e. later) than me."

	^self underlyingDate <= anotherOSkDate underlyingDate!

= anotherOSkDate 
	"^a Boolean
	Answer true if anotherOSkDate is equivalent to me."
	^self underlyingDate = anotherOSkDate underlyingDate!

> anotherOSkDate 
	"^a Boolean
	Answer true if anotherOSkDate is greater (i.e. later) than me."
	^self underlyingDate > anotherOSkDate underlyingDate!

>= anotherOSkDate 
	"^a Boolean
	Answer true if anotherOSkDate is greater (i.e. later) than me."

	^self underlyingDate >= anotherOSkDate underlyingDate!

addDays: anInteger 
	"^a SpDate
	I don't change the date I represent.  Rather, I create a new date which represents
	my date offset by anInteger days."
	^SpDate fromDays: self asDays + anInteger!

addYears: anInteger 
	"^an OSkDate
I don't change the date I represent.  Rather, I create a new date which represents my date offset by anInteger years."

	^SpDate onDate: (Date 
				newDay: self underlyingDate dayOfMonth
				monthNumber: self underlyingDate monthIndex
				year: self underlyingDate year + anInteger)!

asDays
	"^an Integer
	I return the integer number of days between January 1, 1901 and
	the date I represent. "

	^self underlyingDate asDays!

asISO8610String 
	|targetStream|
	targetStream := WriteStream on: String new.
	self asISO8610StringOn: targetStream.
	^targetStream contents!

asISO8610StringOn: aStream 	
	aStream
		nextPutAll: self underlyingDate year printString;
		nextPut: $-.
	self underlyingDate monthIndex < 10 ifTrue: [aStream nextPut: $0].
	aStream
		nextPutAll: self underlyingDate monthIndex printString;
		nextPut: $-.
	self underlyingDate dayOfMonth < 10 ifTrue: [aStream nextPut: $0].
	aStream nextPutAll: self underlyingDate dayOfMonth printString.
	^self!

day
	^self underlyingDate day!

daysInMonth
	^Date daysInMonthIndex: self monthIndex forYear: self year!

hash
	"^an Object"
	^self underlyingDate hash!

max: anSpDate 
	^self > anSpDate ifTrue: [self] ifFalse: [anSpDate]!

min: anSpDate 
	^self < anSpDate ifTrue: [self] ifFalse: [anSpDate]!

monthIndex
	^self underlyingDate monthIndex!

onDate: aDate 
	underlyingDate := aDate.
	^self!

printOn: aStream
	self underlyingDate printOn: aStream!

subtractDays: anInteger 
	"^a SpDate
	I don't change the date I represent.  Rather, I create a new date which represents
	my date offset by anInteger days."
	^SpDate fromDays: self asDays - anInteger!

underlyingDate
	^underlyingDate!

weekdayIndex
	"Sunday=1, ... , Saturday=7"
	"Note that in Dolphin Smalltalk this actually is:
	Monday =1 , ... , Sunday=7. Who knows the correct answer?."

	^self underlyingDate weekdayIndex
!

year
	^self underlyingDate year! !
!SpDate categoriesFor: #<!comparing!public! !
!SpDate categoriesFor: #<=!comparing!public! !
!SpDate categoriesFor: #=!comparing!public! !
!SpDate categoriesFor: #>!comparing!public! !
!SpDate categoriesFor: #>=!comparing!public! !
!SpDate categoriesFor: #addDays:!public!services! !
!SpDate categoriesFor: #addYears:!public!services! !
!SpDate categoriesFor: #asDays!converting!public! !
!SpDate categoriesFor: #asISO8610String!printing!public! !
!SpDate categoriesFor: #asISO8610StringOn:!printing!public! !
!SpDate categoriesFor: #day!accessing!public! !
!SpDate categoriesFor: #daysInMonth!accessing!public! !
!SpDate categoriesFor: #hash!comparing!public! !
!SpDate categoriesFor: #max:!comparing!public! !
!SpDate categoriesFor: #min:!comparing!public! !
!SpDate categoriesFor: #monthIndex!accessing!public! !
!SpDate categoriesFor: #onDate:!initialize-release!public! !
!SpDate categoriesFor: #printOn:!printing!public! !
!SpDate categoriesFor: #subtractDays:!public!services! !
!SpDate categoriesFor: #underlyingDate!private! !
!SpDate categoriesFor: #weekdayIndex!accessing!public! !
!SpDate categoriesFor: #year!accessing!public! !

!SpDate class methodsFor!

fromDays: anInteger
	^self new onDate: (Date fromDays: anInteger)!

fromISO8610Stream: aStream 	
	| date |
	date := SpExceptionContext
		for: [self parseDateFromISO8601Stream: aStream]
		on: SpError
		do: [:ex | nil].
	^date isNil ifTrue: [nil] ifFalse: [self onDate: date]!

fromISO8610String: aString
	^aString size == 10
		ifFalse: [nil]
		ifTrue: [self fromISO8610Stream: aString readStream]!

integerOfLength: aLength FromString: aString
	"^an Integer or nil
	I parse an integer from aString, if I have problems I return nil.  I make sure
	the string form of the integer is exactly aLength characters long."
	"SpDate integerOfLength: 4 FromString: '2004'"
	^(aString size == aLength and: 
		[(aString asOrderedCollection select: [:aDigit | aDigit isDigit not]) isEmpty])
			ifFalse: [nil]
			ifTrue: [aString asNumber]!

newDay: day monthNumber: month year: year 
	^self new onDate: (Date newDay: day monthNumber: month year: year) !

onDate: aDate
	^self new onDate: aDate!

parseDateFromISO8601Stream: sourceStream	
	"^a Date or nil
	I parse an ISO 8601 date from sourceStream.  If there are any parsing
	problems, I return nil."
	| yyyy mm dd |
	yyyy := self integerOfLength: 4 FromString: (sourceStream upTo: $-).
	mm := self integerOfLength: 2 FromString: (sourceStream upTo: $-).
	dd := self integerOfLength: 2 FromString: (sourceStream next: 2).
	(yyyy isNil or: [mm isNil or: [dd isNil]]) ifTrue: [^nil].
	^SpExceptionContext 
		for: [Date newDay: dd monthNumber: mm year: yyyy]
		on: SpError
		do: [:ex | nil]!

today
	^self onDate: Date today! !
!SpDate class categoriesFor: #fromDays:!instance creation!public! !
!SpDate class categoriesFor: #fromISO8610Stream:!instance creation!public! !
!SpDate class categoriesFor: #fromISO8610String:!instance creation!public! !
!SpDate class categoriesFor: #integerOfLength:FromString:!private! !
!SpDate class categoriesFor: #newDay:monthNumber:year:!instance creation!public! !
!SpDate class categoriesFor: #onDate:!instance creation!public! !
!SpDate class categoriesFor: #parseDateFromISO8601Stream:!private! !
!SpDate class categoriesFor: #today!instance creation!public! !

