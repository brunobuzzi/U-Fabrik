"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebCounter
	instanceVariableNames: 'started day year dailyCounts hourlyCounts todayHourlyCounts total yearlyHistory'
	classVariableNames: 'Janko'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebCounter guid: (GUID fromString: '{5924e5bb-f360-4d23-9363-c3672a90252e}')!
WebCounter comment: ''!
!WebCounter categoriesForClass!Unclassified! !
!WebCounter methodsFor!

addArray: aFirstArray to: aSecondArray

	1 to: aFirstArray size do: [:index |
		aSecondArray
			at: index
			put: (aFirstArray at: index) + (aSecondArray at: index)]!

addCounter: aWebCounter
	"add counts from specified counter"
	aWebCounter year = self year ifTrue: 
		[self addArray: aWebCounter dailyCounts to: self dailyCounts].
	self addArray: aWebCounter hourlyCounts to: self hourlyCounts.
	self total: self total + aWebCounter total.
	aWebCounter yearlyHistory keysAndValuesDo: [:yr :array |
		self addArray: array to: (self yearlyHistory at: yr ifAbsentPut: [Array new: 366 withAll: 0]) ].

"WebCounter new addCounter: WebCounter new"!

allCountsInYear: aYearNumber

	aYearNumber = self year 
		ifTrue: [^self dailyCounts copy]
		ifFalse: 
			[^(self yearlyHistory 
				at: aYearNumber 
				ifAbsent: [^Array new: 366 withAll: 0]) copy]!

allCountsThatYear
	
	"return array of counts for each day in current year"

	^self allCountsInYear: Date today year!

allHourlyCounts

	^self hourlyCounts copy!

allTodayHourlyCounts

	^self todayHourlyCounts copy!

checkIfNewYear

	(Date today year = (self year + 1)) ifTrue:
		[self yearlyHistory
			at: self year
			put: self dailyCounts.
		self initDailyCounts.
		self year: Date today year].!

countRequest: aWebRequest

	"register a request by incrementing daily, hourly and total counter."

	self incCounterOnTimestamp: aWebRequest timestamp!

countsFrom: aStartDate to: anEndDate

	| collection |
	collection := OrderedCollection new.
	aStartDate asDays to: anEndDate asDays do: [:days | 
		collection add: (self countsOnDate: (SpDate fromDays: days))].
	^collection!

countsMonthlyFromDate: aDate
	| date collection |
	date := Date newDay: 1
		monthNumber: aDate monthIndex
		year: aDate year.
	collection := OrderedCollection new.
	[date < Date today] whileTrue:
		[collection add: (self countsOnMonth: date monthIndex year: date year).
		date := Date newDay: 1
			monthNumber: (date + 31) monthIndex
			year: (date + 31) year].
	^collection

"AIDASite default totalCounter countsMonthlyFromDate: Date today - 6"!

countsMonthlyOnYear: aYear

	^(1 to: 12) collect: [:month | self countsOnMonth: month year: aYear]

"WebServer default totalCounter countsMonthlyOnYear: 1999"!

countsOnDate: aDate

	| counts |
	counts := self allCountsInYear: aDate year.
	^counts at: aDate day!

countsOnHour: aNumber

	^self hourlyCounts at: aNumber!

countsOnMonth: aMonth year: aYear

	| counts date |
	date := Date newDay: 1 monthNumber: aMonth year: aYear.
	counts := self allCountsInYear: date year.
	^(date day to: date day + date daysInMonth - 1)
		inject: 0 into: [:sum :dy | sum + (counts at: dy)]

"WebServer default totalCounter countsOnMonth: 10 year: 1999"!

countsTodayOnHour: aNumber

	^self todayHourlyCounts at: aNumber!

currentWeekCounts
	| firstDay collection |
	firstDay := SpDate today subtractDays: SpDate today weekdayIndex + 1.
	collection := OrderedCollection new.
	firstDay asDays to: firstDay asDays + 6 do: [:days |
		collection add: (self countsOnDate: (SpDate fromDays: days))].
	^collection!

dailyCounts
	"array of counters for each day in current year. When new year arrives, counters are 
	copied in a yearlyHistory"

	dailyCounts isNil ifTrue: [self initDailyCounts].
	^dailyCounts!

day
	day isNil ifTrue: [self day: Date today dayOfYear].
	^day!

day: aNumber
	day := aNumber!

hourlyCounts
	"array of counters for each hour in a day."

	hourlyCounts isNil ifTrue: [self initHourlyCounts].
	^hourlyCounts!

incCounterOnTimestamp: aTimestamp

	"increment daily, hourly and total counter with date and time defined"

	
	self incDailyCounterOnDate: aTimestamp asDate.
	self incHourlyCounterOnTimestamp: aTimestamp.
	self incTotal.!

incDailyCounterOnDate: aDate
	aDate year = self year 
		ifTrue: 
			[self dailyCounts at: aDate day put: (self  dailyCounts at: aDate day) + 1]
		ifFalse:
			[self checkIfNewYear.
			self incHistoryCounterOnDate: aDate].!

incHistoryCounterOnDate: aDate
	| array |
	aDate year < self year ifTrue: [^self error: 'future years not allowed'].
	array := (self yearlyHistory at: aDate year ifAbsentPut: [Array new: 366 withAll: 0] ).
	array at: aDate day put: (array at: aDate day)+1!

incHourlyCounterOnTime: aTime
	| hours |
	hours := aTime hours.
	self hourlyCounts at: hours+1 	put: (self  hourlyCounts at: hours+1) + 1.!

incHourlyCounterOnTimestamp: aTimestamp
	| hours |
	hours := aTimestamp asTime hours.
	self hourlyCounts at: hours+1 put: (self  hourlyCounts at: hours+1) + 1.
	self incTodayHourlyCounterOnTimestamp: aTimestamp!

incTodayHourlyCounterOnTimestamp: aTimestamp

	| hours dayOfYear |
	dayOfYear := aTimestamp asDate day.
	self day ~= dayOfYear 	ifTrue: 
		[self initTodayHourlyCounts.
		self day: dayOfYear].
	hours := aTimestamp asTime hours.
	self todayHourlyCounts 
		at: hours+1
		put: (self  todayHourlyCounts at: hours+1) + 1.!

incTotal

	self total: self total + 1.!

initDailyCounts
	dailyCounts := Array new: 366 withAll: 0.
	self year: Date today year.!

initHourlyCounts
	hourlyCounts := Array new: 24 withAll: 0.!

initTodayHourlyCounts

	todayHourlyCounts := Array new: 24 withAll: 0.
	self day: Date today day.!

initTotal

	self total: 0.!

initYearlyHistory
	yearlyHistory := Dictionary new.!

isFirstOnDate: aDate sinceDays: nrOfDays
	"a first/new count since specified nr of days, when there were no counts"
	| since current |
	current := aDate day.
	since := (day - nrOfDays) max: 1. "well what about first 7 days in new year?"
	(self dailyCounts at: current) = 0 ifTrue: [^false].
	since to: current-1 do: [:d | (self dailyCounts at: d) > 0 ifTrue: [^false] ].
	^true!

printString

	^'aWebCounter total: ', self total printDotString!

reset

	"set all counters to zero and set started timestamp to now. YOU WILL LOOSE ALL HISTORY
	OF COUNTS !! "

	self initDailyCounts.
	self initHourlyCounts.
	self initTotal.
	self initStarted.!

started
	"return a timestamp, from when web visits are counted"
	started isNil ifTrue: [self initStarted].
	^SpTimestamp fromSeconds: started!

today
	
	"return number of requests today"

	^self countsOnDate: Date today!

todayHourlyCounts
	"array of counters for each hour today."

	todayHourlyCounts isNil ifTrue: [self initTodayHourlyCounts].
	^todayHourlyCounts!

todayHourlyCounts: anObject
	todayHourlyCounts := anObject!

total
	"total number of visits, registered by this counter"

	total isNil ifTrue: [self initTotal].
	^total.!

total: aNumber
	total := aNumber.!

weekly
	"total count in current week"
	^self currentWeekCounts inject: 0 into: [:sum :each | sum + each]!

year
	year isNil ifTrue: [self year: Date today year].
	^year!

year: aNumber
	year := aNumber.!

yearlyHistory
	yearlyHistory isNil ifTrue: [self initYearlyHistory].
	^yearlyHistory!

yesterday
	"return number of requests yesterday"
	^self countsOnDate: (SpDate today subtractDays: 1)! !
!WebCounter categoriesFor: #addArray:to:!private! !
!WebCounter categoriesFor: #addCounter:!adding!public! !
!WebCounter categoriesFor: #allCountsInYear:!accessing!public! !
!WebCounter categoriesFor: #allCountsThatYear!accessing!public! !
!WebCounter categoriesFor: #allHourlyCounts!accessing!public! !
!WebCounter categoriesFor: #allTodayHourlyCounts!accessing!public! !
!WebCounter categoriesFor: #checkIfNewYear!private! !
!WebCounter categoriesFor: #countRequest:!counting!public! !
!WebCounter categoriesFor: #countsFrom:to:!accessing!public! !
!WebCounter categoriesFor: #countsMonthlyFromDate:!accessing!public! !
!WebCounter categoriesFor: #countsMonthlyOnYear:!accessing!public! !
!WebCounter categoriesFor: #countsOnDate:!accessing!public! !
!WebCounter categoriesFor: #countsOnHour:!accessing!public! !
!WebCounter categoriesFor: #countsOnMonth:year:!accessing!public! !
!WebCounter categoriesFor: #countsTodayOnHour:!accessing!public! !
!WebCounter categoriesFor: #currentWeekCounts!accessing!public! !
!WebCounter categoriesFor: #dailyCounts!private! !
!WebCounter categoriesFor: #day!private! !
!WebCounter categoriesFor: #day:!private! !
!WebCounter categoriesFor: #hourlyCounts!private! !
!WebCounter categoriesFor: #incCounterOnTimestamp:!counting!public! !
!WebCounter categoriesFor: #incDailyCounterOnDate:!private! !
!WebCounter categoriesFor: #incHistoryCounterOnDate:!private! !
!WebCounter categoriesFor: #incHourlyCounterOnTime:!private! !
!WebCounter categoriesFor: #incHourlyCounterOnTimestamp:!private! !
!WebCounter categoriesFor: #incTodayHourlyCounterOnTimestamp:!private! !
!WebCounter categoriesFor: #incTotal!private! !
!WebCounter categoriesFor: #initDailyCounts!initialize-release!public! !
!WebCounter categoriesFor: #initHourlyCounts!initialize-release!public! !
!WebCounter categoriesFor: #initTodayHourlyCounts!initialize-release!public! !
!WebCounter categoriesFor: #initTotal!initialize-release!public! !
!WebCounter categoriesFor: #initYearlyHistory!initialize-release!public! !
!WebCounter categoriesFor: #isFirstOnDate:sinceDays:!public!testing! !
!WebCounter categoriesFor: #printString!printing!public! !
!WebCounter categoriesFor: #reset!initialize-release!public! !
!WebCounter categoriesFor: #started!accessing!public! !
!WebCounter categoriesFor: #today!accessing!public! !
!WebCounter categoriesFor: #todayHourlyCounts!private! !
!WebCounter categoriesFor: #todayHourlyCounts:!accessing!public! !
!WebCounter categoriesFor: #total!accessing!public! !
!WebCounter categoriesFor: #total:!private! !
!WebCounter categoriesFor: #weekly!accessing!public! !
!WebCounter categoriesFor: #year!private! !
!WebCounter categoriesFor: #year:!private! !
!WebCounter categoriesFor: #yearlyHistory!private! !
!WebCounter categoriesFor: #yesterday!accessing!public! !

!WebCounter class methodsFor!

instVarMap
	"Gemstone odb"

	^super instVarMap,
		#( 	(todayHourlyCounts nil)	)!

new
	^super new reset!

replicationSpec
	"Gemstone"
	^super replicationSpec, 
	 	#( 	(started max 2)
			(day replicate)
			(year replicate)
			(dailyCounts max 2)
			(hourlyCounts max 2)
			(total replicate)
			(yearlyHistory stub)	)!

setupOdbStorage
	"Versant"

	self 
		store: #(started dailyCounts hourlyCounts total )
		as: #(Integer IntegerArray IntegerArray Integer).!

sumCounters: aCounterCollection

	"return a new counter with sum of all specified counters"
	| sumCounter |
	sumCounter := WebCounter new.
	aCounterCollection do: [:counter |
		sumCounter addCounter: counter].
	^sumCounter! !
!WebCounter class categoriesFor: #instVarMap!odb specific!public! !
!WebCounter class categoriesFor: #new!instance creation!public! !
!WebCounter class categoriesFor: #replicationSpec!odb specific!public! !
!WebCounter class categoriesFor: #setupOdbStorage!odb specific!public! !
!WebCounter class categoriesFor: #sumCounters:!public!summing! !

