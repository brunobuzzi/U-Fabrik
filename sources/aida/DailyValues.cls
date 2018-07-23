"Filed out from Dolphin Smalltalk 7"!

Object subclass: #DailyValues
	instanceVariableNames: 'days'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DailyValues guid: (GUID fromString: '{3e04bfa9-b522-4404-aeff-c5dea209650e}')!
DailyValues comment: ''!
!DailyValues categoriesForClass!Unclassified! !
!DailyValues methodsFor!

allDates
	"all dates on which something exist"
	^self days keys collect: [:each | Date fromDays: each]!

allFromDate: aStartDate to: anEndDate

	| collection |
	collection := OrderedCollection new: 100.
	aStartDate to: anEndDate do: [:date |
		collection add: (self at: date) ].
	^collection!

allLastMonth
	^self allMonthly: Date today - Date today day!

allLastWeek
	^self allWeekly: Date today - 7!

allMonthly: aDate
	^self 
		allFromDate: aDate firstDayOfMonth
		to: aDate firstDayInMonth + aDate daysInMonth - 1!

allThisMonth
	^self allMonthly: Date today!

allThisWeek
	^self allWeekly: Date today!

allWeekly: aDate
	^self 
		allFromDate: aDate - aDate weekdayIndex + 1
		to: aDate - aDate weekdayIndex + 1 + 7!

at: aDate
	^self at: aDate ifAbsent: [self defaultValue]!

at: aDate add: aValue 
	self existCheckDate: aDate.
	^self days at: aDate asDays put: (self at: aDate) + aValue!

at: aDate ifAbsent: aBlock
	^self days at: aDate asDays ifAbsent: [aBlock value]!

at: aDate put: aValue
	self existCheckDate: aDate.
	^self days at: aDate asDays put: aValue!

at: aDate subtract: aValue
	self existCheckDate: aDate.
	^self days at: aDate asDays put: (self at: aDate) - aValue!

atOrLastFrom: aDate
	"return value on that date or last date when some value exist"
	^self at: aDate ifAbsent: [self lastFrom: aDate]!

days
	days isNil ifTrue: [self initDays].
	^days!

defaultValue
	^0!

existCheckDate: aDate

	(self days includesKey: aDate asDays) ifFalse:
		[self days at: aDate asDays put: self defaultValue].!

initDays
	days := IdentityDictionary new.!

isEmpty
	"Answer whether the receiver contains any elements."

	^self size = 0!

last
	"return value on last (most future) date entered"
	| coll |
	coll := self days keys asSortedCollection.  "not very optimized way for big colections!! "
	coll isNil ifTrue: [^nil].
	^self at: (Date fromDays: coll last)!

last: aNumber
	"find last number of values, starting from today and back in past. Most recent first!!"
	| collection |
	collection := OrderedCollection new.
	1 to: aNumber do: [:inx | collection add: (self at: Date today - inx + 1)].
	^collection!

lastDateFrom: aDate
	"search back in time for some date on which a value exist and return that date"
	| start |
	start := aDate asDays.
	self days keys asSortedCollection reverse do:  "not very optimized way for big colections!! "
		[:day | day <= start ifTrue: [^Date fromDays: day] ].
	^nil!

lastFrom: aDate
	"search back in time for some date on which a value exist and return it"
	| start |
	start := aDate asDays.
	self days keys asSortedCollection reverse do:  "not very optimized way for big colections!! "
		[:day | day <= start ifTrue: [^self days at: day] ].
	^nil!

resetAt: aDate
	"put default value at this date"
	^self at: aDate put: self defaultValue!

size
	^self days values size!

sumFromDate: aStartDate to: anEndDate

	^(self allFromDate: aStartDate to: anEndDate)
		inject: 0
		into: [:sum :each | sum + each]!

sumLast: aNumber
	"sum values of aNumber of days, starting from today and back"

	^(self last: aNumber)
		inject: 0
		into: [:sum :each | sum + each]!

sumMonthly: aDate

	^(self allMonthly: aDate)
		inject: 0
		into: [:sum :each | sum + each]!

sumWeekly: aDate

	^(self allWeekly: aDate)
		inject: 0
		into: [:sum :each | sum + each]! !
!DailyValues categoriesFor: #allDates!accessing!public! !
!DailyValues categoriesFor: #allFromDate:to:!accessing!public! !
!DailyValues categoriesFor: #allLastMonth!accessing!public! !
!DailyValues categoriesFor: #allLastWeek!accessing!public! !
!DailyValues categoriesFor: #allMonthly:!accessing!public! !
!DailyValues categoriesFor: #allThisMonth!accessing!public! !
!DailyValues categoriesFor: #allThisWeek!accessing!public! !
!DailyValues categoriesFor: #allWeekly:!accessing!public! !
!DailyValues categoriesFor: #at:!adding - removing!public! !
!DailyValues categoriesFor: #at:add:!adding - removing!public! !
!DailyValues categoriesFor: #at:ifAbsent:!adding - removing!public! !
!DailyValues categoriesFor: #at:put:!adding - removing!public! !
!DailyValues categoriesFor: #at:subtract:!adding - removing!public! !
!DailyValues categoriesFor: #atOrLastFrom:!adding - removing!public! !
!DailyValues categoriesFor: #days!private! !
!DailyValues categoriesFor: #defaultValue!private! !
!DailyValues categoriesFor: #existCheckDate:!private! !
!DailyValues categoriesFor: #initDays!private! !
!DailyValues categoriesFor: #isEmpty!public!testing! !
!DailyValues categoriesFor: #last!accessing!public! !
!DailyValues categoriesFor: #last:!accessing!public! !
!DailyValues categoriesFor: #lastDateFrom:!private! !
!DailyValues categoriesFor: #lastFrom:!private! !
!DailyValues categoriesFor: #resetAt:!adding - removing!public! !
!DailyValues categoriesFor: #size!accessing!public! !
!DailyValues categoriesFor: #sumFromDate:to:!accessing!public! !
!DailyValues categoriesFor: #sumLast:!accessing!public! !
!DailyValues categoriesFor: #sumMonthly:!accessing!public! !
!DailyValues categoriesFor: #sumWeekly:!accessing!public! !

