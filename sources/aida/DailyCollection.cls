"Filed out from Dolphin Smalltalk 7"!

Object subclass: #DailyCollection
	instanceVariableNames: 'days'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DailyCollection guid: (GUID fromString: '{60e0fa07-5ac0-4a2f-94e8-c1abe1a7ee90}')!
DailyCollection comment: ''!
!DailyCollection categoriesForClass!Unclassified! !
!DailyCollection methodsFor!

add: newObject

	self add: newObject onDate: newObject date!

add: newObject onDate: aDate
	(self includes: newObject onDate: aDate) ifTrue: [^nil].
	self existCheckDate: aDate.
	(self days at: aDate asDays) add: newObject.
	^newObject!

addAll: aCollection 

	aCollection do: [:each | self add: each].
	^aCollection!

addAll: aCollection onDate: aDate

	self existCheckDate: aDate.
	^aCollection do: [:each | 	self add: each onDate: aDate].!

addFirst: newObject inYear: aYear
	"put in first place at 1st jan of this year"
	| date |
	date := Date newDay: 1 monthNumber: 1 year: aYear.
	(self includes: newObject onDate: date) ifTrue: [^nil].
	self existCheckDate: date.
	(self days at: date asDays) addFirst: newObject.
	^newObject!

addLast: newObject inYear: aYear
	"put in first place at 1st jan of this year"
	| date |
	date := Date newDay: 31 monthNumber: 12 year: aYear.
	(self includes: newObject onDate: date) ifTrue: [^nil].
	self existCheckDate: date.
	(self days at: date asDays) addLast: newObject.
	^newObject!

all
	| dayCol |
	dayCol := SortedCollection
		withAll: self days keys
		sortBlock: [:a :b | a > b].
	^dayCol inject: OrderedCollection new into: [:col :each | col addAll: (self days at: each); yourself ].!

allDated: aDate

	^(self days at: aDate asDays ifAbsent: [^#()] ) copy!

allDates
	"all dates on which something exist"
	^self allDays collect: [:each | Date fromDays: each]!

allDays
	"all day numbers on which something exist"
	^self days keys!

allDaysForKindOf: aClass
	"all day numbers on which something of that class exist"
	^self days keys select: [:day | 
		(self days at: day) contains: [:each | each isKindOf: aClass] ].!

allFromDate: aStartDate to: anEndDate
	| startDay endDay daysInRange |
	startDay := aStartDate asDays. endDay := anEndDate asDays.
	daysInRange := self allDays select: [:each | each >= startDay and: [each <= endDay] ].
	daysInRange := daysInRange asSortedCollection. 
	^daysInRange inject: OrderedCollection new into: [:col :each | col addAll: (self days at: each). col]

"DailyCollection allInstances last allFromDate: (Date readSloFrom: '1.1.2004' readStream) 
  	to: (Date readSloFrom: '31.12.2006' readStream)"!

allLastMonth
	^self allMonthly: Date today - Date today day!

allLastWeek
	^self allWeekly: Date today - 7!

allLastYear
	^self allYear: Date today year - 1!

allMonthly: aDate
	^self 
		allFromDate: aDate firstDayOfMonth
		to: aDate firstDayInMonth + aDate daysInMonth - 1!

allSinceDate: aDate
	^self allFromDate: aDate to: Date today!

allThisMonth
	^self allMonthly: Date today!

allThisWeek
	^self allWeekly: Date today!

allThisYear
	^self allYear: Date today year!

allToday
	^self allDated: Date today!

allWeekly: aDate
	^self 
		allFromDate: aDate - aDate weekdayIndex + 1
		to: aDate - aDate weekdayIndex + 1 + 7!

allYear: aNumber
	^self 
		allFromDate: (Date newDay: 1 monthNumber: 1 year: aNumber)
		to: (Date newDay: 31 monthNumber: 12 year: aNumber)!

allYears
	"all years on which something exist"
	^SortedCollection 
		withAll: (self allDates inject: Set new into: [:set :each | set add: each year. set])
		sortBlock: [:a :b | a < b]

"DailyCollection allInstances last allYears"!

allYearsForKindOf: aClass
	"all years on which something of that class exist"
	| allDays currentYear years skipToDay |
	allDays := self days keys asSortedCollection. allDays isEmpty ifTrue: [^#()].
	currentYear := (Date fromDays: allDays first) year.
	years := Set new. skipToDay := 0.
	allDays do: [:day |
		day >= skipToDay ifTrue:
			[((self days at: day) contains: [:entry | entry isKindOf: aClass]) ifTrue:
				[years add: currentYear. currentYear := currentYear + 1.
				skipToDay := (Date newDay: 1 monthNumber: 1 year: currentYear) asDays] ] ].
	^years asSortedCollection

"DailyCollection allInstances last allYearsForKindOf: AIDA.Invoice "!

allYesterday
	^self allDated: Date today - 1!

contains: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer true if aBlock ever evaluates to true, otherwise answer false."

	self detect: aBlock ifNone: [^false].
	^true!

days
	days isNil ifTrue: [self initDays].
	^days!

existCheckDate: aDate

	(self days includesKey: aDate asDays) ifFalse:
		[self days at: aDate asDays put: OrderedCollection new].!

firstDayInYear: aYear
	"on 1 januar of that year"
	^self allDated: (Date newDay: 1 monthNumber: 1 year: aYear).!

firstInYear: aYear
	"on 1st january of that year"
	| col |
	col := self firstDayInYear: aYear.
	col isEmpty ifTrue: [^nil].
	^col first!

includes: anObject
	"Answer whether anObject is one of the receiver's elements."

	self days values do: [:each | (each includes: anObject) ifTrue: [^true]].
	^false!

includes: anObject onDate: aDate
	| values |
	values := self days at: aDate asDays ifAbsent: [^false].
	^values includes: anObject!

initDays
	days := Dictionary new.!

isEmpty
	"Answer whether the receiver contains any elements."

	^self size = 0!

last: aNumber
	"find last number of values, starting from today and back in past. Most recent first!!"
	| collection dayColl |
	collection := OrderedCollection new.
	dayColl := SortedCollection withAll: self days keys sortBlock: [:a :b | a > b].
	dayColl do: [:day || coll |
		coll := (self days at: day) copy reverse.
		collection addAll: (coll copyFrom: 1 to: ((aNumber - collection size) min: coll size) ).
		collection size = aNumber ifTrue: [^collection] ].
	^collection

"LogisticSystem default owner events size last: 1000"!

lastDayInYear: aYear
	"on 31 december of that year"
	^self allDated: (Date newDay: 31 monthNumber: 12 year: aYear).!

move: anObject fromDate: aDate toDate: aNewDate
	| collection |
	collection := self days at: aDate asDays.
	collection remove: anObject.
	self add: anObject onDate: aNewDate!

remove: oldObject 
	^self remove: oldObject ifAbsent: [self notFoundError]!

remove: oldObject ifAbsent: anExceptionBlock
	| collection |
	collection := self days at: oldObject date asDays ifAbsent: [^anExceptionBlock value].
	collection remove: oldObject ifAbsent: [^anExceptionBlock value].!

removeAll: aCollection 
	"Remove each element of aCollection from the receiver.  If successful for each,
	answer aCollection."
	aCollection do: [:each | self remove: each].
	^aCollection!

size
	days isNil ifTrue: [^0].
	^self days values inject: 0 into: [:sum :each | sum + each size].! !
!DailyCollection categoriesFor: #add:!adding - removing!public! !
!DailyCollection categoriesFor: #add:onDate:!adding - removing!public! !
!DailyCollection categoriesFor: #addAll:!adding - removing!public! !
!DailyCollection categoriesFor: #addAll:onDate:!adding - removing!public! !
!DailyCollection categoriesFor: #addFirst:inYear:!adding - removing!public! !
!DailyCollection categoriesFor: #addLast:inYear:!adding - removing!public! !
!DailyCollection categoriesFor: #all!private-accessing!public! !
!DailyCollection categoriesFor: #allDated:!accessing!public! !
!DailyCollection categoriesFor: #allDates!accessing!public! !
!DailyCollection categoriesFor: #allDays!private-accessing!public! !
!DailyCollection categoriesFor: #allDaysForKindOf:!private-accessing!public! !
!DailyCollection categoriesFor: #allFromDate:to:!accessing!public! !
!DailyCollection categoriesFor: #allLastMonth!accessing!public! !
!DailyCollection categoriesFor: #allLastWeek!accessing!public! !
!DailyCollection categoriesFor: #allLastYear!accessing!public! !
!DailyCollection categoriesFor: #allMonthly:!accessing!public! !
!DailyCollection categoriesFor: #allSinceDate:!accessing!public! !
!DailyCollection categoriesFor: #allThisMonth!accessing!public! !
!DailyCollection categoriesFor: #allThisWeek!accessing!public! !
!DailyCollection categoriesFor: #allThisYear!accessing!public! !
!DailyCollection categoriesFor: #allToday!accessing!public! !
!DailyCollection categoriesFor: #allWeekly:!accessing!public! !
!DailyCollection categoriesFor: #allYear:!accessing!public! !
!DailyCollection categoriesFor: #allYears!accessing!public! !
!DailyCollection categoriesFor: #allYearsForKindOf:!private-accessing!public! !
!DailyCollection categoriesFor: #allYesterday!accessing!public! !
!DailyCollection categoriesFor: #contains:!public!testing! !
!DailyCollection categoriesFor: #days!private! !
!DailyCollection categoriesFor: #existCheckDate:!private! !
!DailyCollection categoriesFor: #firstDayInYear:!accessing!public! !
!DailyCollection categoriesFor: #firstInYear:!accessing!public! !
!DailyCollection categoriesFor: #includes:!public!testing! !
!DailyCollection categoriesFor: #includes:onDate:!public!testing! !
!DailyCollection categoriesFor: #initDays!private! !
!DailyCollection categoriesFor: #isEmpty!public!testing! !
!DailyCollection categoriesFor: #last:!accessing!public! !
!DailyCollection categoriesFor: #lastDayInYear:!accessing!public! !
!DailyCollection categoriesFor: #move:fromDate:toDate:!adding - removing!public! !
!DailyCollection categoriesFor: #remove:!adding - removing!public! !
!DailyCollection categoriesFor: #remove:ifAbsent:!adding - removing!public! !
!DailyCollection categoriesFor: #removeAll:!adding - removing!public! !
!DailyCollection categoriesFor: #size!accessing!public! !

