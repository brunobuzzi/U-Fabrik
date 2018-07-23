"Filed out from Dolphin Smalltalk 7"!

Object subclass: #History
	instanceVariableNames: 'dates values changedDates authors comments historyCollection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
History guid: (GUID fromString: '{ccf41412-c2fb-4740-b17c-faf92c8c79e9}')!
History comment: ''!
!History categoriesForClass!Unclassified! !
!History methodsFor!

activeFromArray: anArray

	"return a active flag from entries in history array"

	^anArray at: 5!

addValue: aValue dated: aDate author: aString comment: aCommentString
	"adds data, which is newer than any existing one"
	self dates add: aDate asDays.
	self values add: aValue.
	self changedDates add: Date today asDays.
	self authors add: aString.
	self comments add: aString.!

arrayWithDate: aDate time: aTime value: aValue active: aBoolean

	"return a array with argument vaules for entry to history collection"

	| array |
	array := Array new: 5.
	array 
		at: 1 put: aDate year;
		at: 2 put: aDate day;
		at: 3 put: (aTime notNil ifTrue: [aTime asSeconds] ifFalse: [0]);
		at: 4 put: aValue;
		at: 5 put: aBoolean.
	^array!

authors
	" a collection of authors, which made changes, (as a String or reference to a WebUser)"
	^authors!

changedDates
	" a collection of dates, when value was changed in asDays format"
	^changedDates!

changeValue: aValue author: aString comment: aCommentString onIndex: anIndexNumber
	"change data in a specificied index"
	self values at: anIndexNumber put: aValue.
	self changedDates at: anIndexNumber put: Date today asDays.
	self authors at: anIndexNumber put: aString.
	self comments at: anIndexNumber put: aString.!

comments
	" a collection of comments about changes"
	^comments!

dateFromArray: anArray

	"return a date from entries in history array"

	^Date
		newDay: (anArray at: 2)
		year: (anArray at: 1)!

dates
	" a collection of dates of changes in asDays format"
	^dates!

hasDuplicateDates

	"maintenance - check if more than one entry with the same date exist"

	| unique |
	unique := Set new.
	self dates do: [: date | (unique includes: date)
		ifTrue: [^true]
		ifFalse: [unique add: date] ].
	^false!

historyCollection
	"this is an ordered collection of array with year, day in year, time, value, active flag. 
	Collection is ordered from oldest to newest version of value. Active flag is used to 
	'delete' some version from history, but you can still have a trace, who/when some 
	change occured.

	3.11.98 NOT USED anymore. Here just for migration!!"


	historyCollection isNil ifTrue: [self initHistoryCollection].
	^historyCollection!

historyOfChanges

	"return a history of all changes of value. It is returned as ordered collection of collections, each with:
	valid from date
	valid to date (for last change: nil)
	new value
	date of change
	author of change
	comment of change	

Returned collection has the oldest change (by valied from date) as first, the newest as last. "!

indexForDate: aDate

	"return index of entry in dates collection, which fits most to the specified date. If no direct 
	entry on a specified date exist, then entry for previous date is used. If aDate is older than
	any date in collection, nil is returned!!"


	| first last days mdays index |

	first := 1. last := self dates size.
	last = 0 ifTrue: [^nil].
	days := aDate asDays.
	days >= self dates last ifTrue: [^last].
	days < self dates first ifTrue: [^nil].
	[last >= first] whileTrue: 	
		[ "(first = last and: [days = (self dates at: first)]) ifTrue: [^first].  " " not needed!! "
		index := (first + last) // 2.
		mdays := self dates at: index.
		days = mdays ifTrue: [^index].
		days < mdays
			ifTrue: [last := index - 1.]
			ifFalse: [first := index + 1.]].
"2.11.98 Sivec prej :
		^1 max: index - 1.
"
	index := (first + last) // 2.
	^1 max: index.




"
| h |
h := History new.
h dates
	add: (Date today) asDays;
	add: (Date today + 1) asDays;
	add: (Date today + 3) asDays;
	add: (Date today + 4) asDays.
Transcript cr;show: (h indexForDate: Date today - 1) printString.
Transcript cr;show: (h indexForDate: Date today + 1) printString.
Transcript cr;show: (h indexForDate: Date today + 2) printString.
Transcript cr;show: (h indexForDate: Date today + 3) printString.
h inspect.
"





"
	self historyCollection keysAndValuesDo: [:index :array |
		(self activeFromArray: array) 
			ifTrue:
				[(self dateFromArray: array) < (aDate + 1)
					ifTrue: [prevIndex := index]
					ifFalse: [^prevIndex]	] ].
	^prevIndex
"!

initAuthors
	authors := OrderedCollection new.!

initChangedDates
	changedDates := OrderedCollection new.!

initComments
	comments := OrderedCollection new.!

initDates
	"adds default entry: 1.1.1901"
	dates := OrderedCollection new.!

initHistoryCollection
	historyCollection := OrderedCollection new.!

initialize
	"2.11.1998 all inits do not add default values anymore"

	self initDates.
	self initValues.
	self initChangedDates.
	self initAuthors.
	self initComments.!

initValues
	values := OrderedCollection new.!

insertValue: aValue dated: aDate author: aString comment: aCommentString beforeIndex: anIndex
	"adds data in position before specified index"
	self dates add: aDate asDays beforeIndex: anIndex.
	self values add: aValue beforeIndex: anIndex.
	self changedDates add: Date today asDays beforeIndex: anIndex.
	self authors add: aString beforeIndex: anIndex.
	self comments add: aString beforeIndex: anIndex.!

migrateHistoryCollection

	"migrate from historyCollection to bunch of collections. Remove duplicates"

	| date |
	date := nil.
	self initialize.
	self historyCollection reverseDo: [:array |
		date = (self dateFromArray: array)
			ifFalse: 
				[self 
					value: (self valueFromArray: array)
					dated: (self dateFromArray: array)
					author: ('')
					comment: ('').
				date := self dateFromArray: array] ].


"
Janko := History selectFromOdb select: [:h | h historyCollection size > 10].
(Janko at: 3) migrateHistoryCollection
Janko do: [:each | each migrateHistoryCollection].
Janko  select: [:h | h dates size > 3].
"!

newestDate

	"return a date of newest version of value"

	self dates isEmpty
		ifTrue: [^nil]
		ifFalse: 	[^Date fromDays: self dates last]

"History new newestDate"!

newestValue

	"return a newest version of value in historyCollection."

	self values isEmpty
		ifTrue: [^nil]
		ifFalse: 	[^self values last]
	

"History new newestValue"!

oldestDate

	"return a date of oldest version of value"

	self dates isEmpty
		ifTrue: [^nil]
		ifFalse: 	[^self dates first]
	

"History new oldestDate"!

oldestValue

	"return a oldest version of value"

	self values isEmpty
		ifTrue: [^nil]
		ifFalse: 	[^self values last]
	

"History new oldestValue"!

printString

	^('aHistory: ', self value printString)!

removeAllNils
	"REPARING BAD HISTORIES - remove all nil entries. Initialize if no more entries"

	2 to: self values size do: [:index |
		(self values at: index) isNil ifTrue: 
			[self removeIndex: index. ^self removeAllNils] ]!

removeDuplicateDates

	"maintenance - remove all duplicate entries with same dates. Live last one"

	| date index |
	self hasDuplicateDates ifTrue: 
		[date := 0. index := nil.
		1 to: self dates size do: 
			[:inx | 
				(self dates at: inx) = date ifTrue: [index := inx].
				date := self dates at: inx].
		index notNil 
			ifTrue: 
				[self removeIndex: index-1.
				self removeDuplicateDates].
		 ].!

removeIndex: aNumber
	"remove all entries on specified index"
	self dates removeIndex: aNumber.
	self values removeIndex: aNumber.
	self changedDates removeIndex: aNumber.
	self authors removeIndex: aNumber.
	self comments removeIndex: aNumber.!

removeLastNil
	"REPARING BAD HISTORIES - remove last entry if value nil. Initialize if no more entries"
	self values isEmpty 
		ifTrue: 
			[self initialize. self values removeLast; addLast: true.
			Transcript cr; show: 'init, true']
		ifFalse: [self values last isNil ifTrue: 
			[self removeIndex: (self dates size).
			self removeLastNil] ]!

timeFromArray: anArray

	"return a time from entries in history array"

	^Time fromSeconds: (anArray at: 3)!

value
	"get the curently valid value"

	^self valueDated: Date today

"History new value"!

value: aValue author: aString comment: aCommentString 
	"change a value of time series, which will be valid immediately - today. You should state author and a short comment about changes. see other methods for detailed explanation"

	self value: aValue
		dated: Date today
		author: aString
		comment: aCommentString!

value: aValue dated: aDate author: aString comment: aCommentString 
	""

	| index |

	index := self indexForDate: aDate. 
	index isNil   "older than any existing or first" 
		ifTrue: 
			[self 
				insertValue: aValue 
				dated: aDate
				author: aString 
				comment: aCommentString
				beforeIndex: 1.
			^self].

"Sprememba 18.11.1998 Sivec, prej 'index >= self dates  size'."
	index > self dates  size  "newer than any existing"
		ifTrue: 
			[self addValue: aValue dated: aDate author: aString comment: aCommentString. ^self].


	(index ~= 0 and: [(self dates at: index) = aDate asDays]) "already exists"
		ifTrue: 
			[self 
				changeValue: aValue 
				author: aString 
				comment: aCommentString 
				onIndex: index.
			^self].

		self    "insert new somewhere in the middle"
			insertValue: aValue 
			dated: aDate
			author: aString 
			comment: aCommentString
			beforeIndex: index+1.



"History new value: 1234 dated: Date today author: 'Janko' comment: 'test'"!

valueDated: aDate 
	"get the value from history, which was valid on specified date. Returns nil if aDate is older from 
	oldest entry in history"

	
	| index |
	index := self indexForDate: aDate.
	index = 0 ifTrue: [^nil].
	index = nil ifTrue: [^nil].
	^self values at: index.!

valueFromArray: anArray

	"return a value from entries in history array"

	^anArray at: 4!

values
	" a collection of values, each valid from date in dates at the same index"
	^values! !
!History categoriesFor: #activeFromArray:!private - history arrays!public! !
!History categoriesFor: #addValue:dated:author:comment:!private - adding-removing!public! !
!History categoriesFor: #arrayWithDate:time:value:active:!private - history arrays!public! !
!History categoriesFor: #authors!private - accessing!public! !
!History categoriesFor: #changedDates!private - accessing!public! !
!History categoriesFor: #changeValue:author:comment:onIndex:!private - adding-removing!public! !
!History categoriesFor: #comments!private - accessing!public! !
!History categoriesFor: #dateFromArray:!private - history arrays!public! !
!History categoriesFor: #dates!private - accessing!public! !
!History categoriesFor: #hasDuplicateDates!private - adding-removing!public! !
!History categoriesFor: #historyCollection!private - accessing!public! !
!History categoriesFor: #historyOfChanges!accessing!public! !
!History categoriesFor: #indexForDate:!private - accessing!public! !
!History categoriesFor: #initAuthors!initialize - release!public! !
!History categoriesFor: #initChangedDates!initialize - release!public! !
!History categoriesFor: #initComments!initialize - release!public! !
!History categoriesFor: #initDates!initialize - release!public! !
!History categoriesFor: #initHistoryCollection!private - accessing!public! !
!History categoriesFor: #initialize!initialize - release!public! !
!History categoriesFor: #initValues!initialize - release!public! !
!History categoriesFor: #insertValue:dated:author:comment:beforeIndex:!private - adding-removing!public! !
!History categoriesFor: #migrateHistoryCollection!private - history arrays!public! !
!History categoriesFor: #newestDate!private - accessing!public! !
!History categoriesFor: #newestValue!private - accessing!public! !
!History categoriesFor: #oldestDate!private - accessing!public! !
!History categoriesFor: #oldestValue!private - accessing!public! !
!History categoriesFor: #printString!printing!public! !
!History categoriesFor: #removeAllNils!private - adding-removing!public! !
!History categoriesFor: #removeDuplicateDates!private - adding-removing!public! !
!History categoriesFor: #removeIndex:!private - adding-removing!public! !
!History categoriesFor: #removeLastNil!private - adding-removing!public! !
!History categoriesFor: #timeFromArray:!private - history arrays!public! !
!History categoriesFor: #value!accessing!public! !
!History categoriesFor: #value:author:comment:!accessing!public! !
!History categoriesFor: #value:dated:author:comment:!accessing!public! !
!History categoriesFor: #valueDated:!accessing!public! !
!History categoriesFor: #valueFromArray:!private - history arrays!public! !
!History categoriesFor: #values!private - accessing!public! !

!History class methodsFor!

instancesAreForwarders
	"Gemstone"

	^false!

new
	^super new initialize!

tests
	"some test of histories. Use it directly from code with doIt/printIt/inspectIt "

	| history |
	history := History new.
	history value: 0 dated: (Date today ) author: '' comment: ''.
	history value: -2000 dated: (Date today - (365*100) -2) author: '' comment: ''.
	history value: -3 dated: (Date today -3) author: '' comment: ''.
	history value: -1 dated: (Date today -1) author: '' comment: ''.
	history value: 2 dated: (Date today +2) author: '' comment: ''.
	history value: 1 dated: (Date today +1) author: '' comment: ''.! !
!History class categoriesFor: #instancesAreForwarders!odb specific!public! !
!History class categoriesFor: #new!instance creation!public! !
!History class categoriesFor: #tests!examples!public! !

