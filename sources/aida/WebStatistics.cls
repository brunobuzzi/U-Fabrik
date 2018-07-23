"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebStatistics
	instanceVariableNames: 'site referers refererStopList'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebStatistics guid: (GUID fromString: '{8702f3c3-d453-43b0-a828-f6aeb755afe9}')!
WebStatistics comment: ''!
!WebStatistics categoriesForClass!Unclassified! !
!WebStatistics methodsFor!

addNewReferer: anUrlString

	"add new counter to referers dictionary"

	self referers 
		at: anUrlString
		put: WebCounter new.!

allRefererCounts
	"return a collection of all referers and their total counts, most counted first"
	| collection |
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |  
		collection add: (Array 
			with: referer
			with: counter total)].
	^SortedCollection
		withAll: collection
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

"WebStatistics default allRefererCounts size"!

allRefererCountsToday
	"return a collection of today referers and their total counts, most counted first"
	| collection |
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |  
		collection add: (Array 
			with: referer
			with: counter today)].
	^SortedCollection
		withAll: (collection select: [:each | each value last > 0])
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

"WebStatistics default allReferersAndCounts"!

allRefererCountsWeekly
	"return a collection of current week referers and their total counts, most counted first"
	| collection |
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |  
		collection add: (Array 
			with: referer
			with: counter weekly)].
	^SortedCollection
		withAll: (collection select: [:each | each value last > 0])
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

"WebStatistics default allReferersAndCounts"!

allRefererCountsYesterday
	"return a collection of yesterday referers and their total counts, most counted first"
	| collection |
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |  
		collection add: (Array 
			with: referer
			with: counter yesterday)].
	^SortedCollection
		withAll: (collection select: [:each | each value last > 0])
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

"WebStatistics default allReferersAndCounts"!

allReferersJustOneHit
	"return a collection of all referers with just one hit and older that one week"
	| collection secBefore7days |
	secBefore7days := SpTimestamp now asSeconds - (7 * 3600 * 24).
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |
		(counter total = 1 and: [secBefore7days >= counter started asSeconds ]) ifTrue:
			[collection add: referer] ].
	^collection

"WebStatistics default allReferersJustOneHit size"!

collectStatsFrom: aWebRequest
	| referer |
	referer := AIDASite convert: aWebRequest referer fromCodepage: #UTF8.
	(referer notNil and: [(self isLocalUrl: referer) not]) 
		ifTrue: [self countReferer: referer]!

countReferer: anUrlString
	| url |
	url := self prepareReferer: anUrlString.
	url isEmpty ifTrue: [^self].
	(self refererOnStopList: url) ifTrue: [^self].
	(self referers includesKey: url)
		ifFalse: [self addNewReferer: url].
	(self referers at: url) incCounter!

initReferers
	referers := Dictionary new.

"AIDASite default statistics initReferers"!

initRefererStopList
	refererStopList := Set new.
	refererStopList
		add: '[unknown origin]';
		add: 'bookmarks';
		add: 'http://lw2fd.hotmail.msn.com/cgi-bin/getmsg';
		add: 'http://mobitel.sux.nu/cgi-bin/tabla/showpost.pl'.
"AIDASite default statistics initRefererStopList"!

isLocalUrl: anUrlString
	"true, if this url points to page from this server"
	^self site uriPattern contains: [:siteIdentifier | 
		('http://', siteIdentifier host, '*') match: anUrlString].!

isNewReferer: anUrlString onDate: aDate
	"this referer is new if it occurs for a first time in last 7 days"
	| counter |
	counter := self refererCounterFor: anUrlString.
	^counter isFirstOnDate: aDate sinceDays: 7!

prepareReferer: anUrlString

	"ingnore all parameters in url"

	^(anUrlString copyUpTo: $?)!

refererCounterFor: anUrlString

	^self referers at: anUrlString ifAbsent: [^nil]!

refererOnStopList: anUrlString

	| |
	^self refererStopList includes: anUrlString!

referers
	referers isNil ifTrue: [self initReferers].
	^referers!

refererStopList
	refererStopList isNil ifTrue: [self initRefererStopList].
	^refererStopList!

removeReferer: anUrlString

	self referers removeKey: anUrlString ifAbsent: [^self].!

removeReferersJustOneHit
	"..and older that 7 days"
	self allReferersJustOneHit do: [:each | self referers removeKey: each]
	
"WebStatistics default removeReferersJustOneHit"!

removeReferersOnStopList

	self refererStopList do: [:referer |
		self removeReferer: referer]

"WebStatistics default  removeReferersOnStopList"!

site
	^site!

site: anAIDASite
	site := anAIDASite.! !
!WebStatistics categoriesFor: #addNewReferer:!private-referers!public! !
!WebStatistics categoriesFor: #allRefererCounts!public!referers! !
!WebStatistics categoriesFor: #allRefererCountsToday!public!referers! !
!WebStatistics categoriesFor: #allRefererCountsWeekly!public!referers! !
!WebStatistics categoriesFor: #allRefererCountsYesterday!public!referers! !
!WebStatistics categoriesFor: #allReferersJustOneHit!public!referers! !
!WebStatistics categoriesFor: #collectStatsFrom:!collecting!public! !
!WebStatistics categoriesFor: #countReferer:!private-referers!public! !
!WebStatistics categoriesFor: #initReferers!initialize-release!public! !
!WebStatistics categoriesFor: #initRefererStopList!initialize-release!public! !
!WebStatistics categoriesFor: #isLocalUrl:!private! !
!WebStatistics categoriesFor: #isNewReferer:onDate:!private-referers!public! !
!WebStatistics categoriesFor: #prepareReferer:!private-referers!public! !
!WebStatistics categoriesFor: #refererCounterFor:!private-referers!public! !
!WebStatistics categoriesFor: #refererOnStopList:!private-referers!public! !
!WebStatistics categoriesFor: #referers!public!referers! !
!WebStatistics categoriesFor: #refererStopList!public!referers! !
!WebStatistics categoriesFor: #removeReferer:!private-referers!public! !
!WebStatistics categoriesFor: #removeReferersJustOneHit!public!referers! !
!WebStatistics categoriesFor: #removeReferersOnStopList!private-referers!public! !
!WebStatistics categoriesFor: #site!accessing!public! !
!WebStatistics categoriesFor: #site:!private! !

!WebStatistics class methodsFor!

countersFromIISLogsIn: aDirectoryString

	"return a dictionary (url as key) of counters for urls in all IIS log files in specified directory"
	" WebStatistics countersFromIISLogsIn: 'h:\winnt\system32\logfiles\w3svc8'  "

	| logFiles urlCounters |
	logFiles := aDirectoryString asFilename directoryContents.
	logFiles := SortedCollection
		withAll: logFiles 	sortBlock: [:a :b | a < b].
	urlCounters := Dictionary new.
	logFiles do: [:logFile | 
		" self halt. "
		self countUrlsIn: (aDirectoryString, '\', logFile) to: urlCounters].
	^urlCounters!

countUrlsIn: aFileString to: anUrlDictionary

self parseFile: aFileString into: anUrlDictionary.!

dateFromFilename: aFilename

	^Date 
		newDay: (aFilename tail copyFrom: 7 to: 8) asInteger
		monthNumber:(aFilename tail copyFrom: 5 to: 6) asInteger
		year: ((aFilename tail copyFrom: 3 to: 4) asInteger + 2000)!

default

	^AIDASite default statistics!

newOn: anAIDASite
	^super new site: anAIDASite!

parseDatum: stringDatum 
	"pretvorimo datum iz formata LLLL-MM-DD v date format
	| tmp | 
	 tmp := DelimitedFile new. 
	Transcript show: (tmp parseDatum: '1999-12-11') printString ; cr  
	"

	| datumStream leto mesec dan |
	datumStream := (stringDatum copyReplaceAll: '-' with: ' ') readStream.
	leto := (self  parseWords: datumStream) asNumber.
	mesec := (self  parseWords: datumStream) asNumber.
	dan := (self  parseWords: datumStream) asNumber.
	^Date newDay: dan
		monthNumber: mesec
		year: leto!

parseFile: aFile 
	"
 	Trenutno opusceno, osnova za parseFile: into:
	WebStatistics parseFile: 'h:\winnt\system32\logfiles\w3svc8\ex990506.log' 
	"

	| logFile stream cr besedeVrstice vrstica stevecBesed |
	cr := Character cr.	" self halt. "
	logFile := aFile asFilename.
	stream := logFile readStream.
	[stream atEnd] whileFalse: 
			[besedeVrstice := Array new: 15.
			stevecBesed := 1.
			vrstica := (stream throughAll: (String with: cr)) readStream.
			[vrstica atEnd] whileFalse: 
					[besedeVrstice at: stevecBesed put: vrstica parseWordsIntoArray.
					stevecBesed := stevecBesed + 1].
			vrstica close].
	stream close!

parseFile: aFile into: URLCountDictionary 
	| stream besedeVrstice vrstica stevecBesed datum |
	datum := Date today.
	stream := aFile asFilename readStream.
	[stream atEnd] whileFalse: 
		[besedeVrstice := Array new: 15.
		stevecBesed := 2.
		vrstica := (stream throughAll: (String with: Character cr)) readStream.
		[vrstica atEnd] whileFalse: 
			[besedeVrstice at: stevecBesed put: (self parseWords: vrstica) .
			stevecBesed := stevecBesed + 1].
 		datum:= self analyzeAndStoreLine: besedeVrstice 
			into: URLCountDictionary forDate:datum.
		vrstica close.].
	stream close

	" test lines : 
	Xx := Dictionary new.
	WebStatistics parseFile: 'h:\winnt\system32\logfiles\w3svc8\ex990506.log' into: Xx.
	Transcript show: Xx printString
	"!

parseWords: inputStream 
	"Answer the contents of the receiver, up to the next separator  character."

	| aStream |
	aStream := (String new: 200) writeStream.
	inputStream skipSeparators.
	inputStream class endOfStreamSignal handle: [:ex | ex return]
		do: 
			[
			[| char |
			char := inputStream next.
			char isSeparator ifTrue: [^aStream contents] ifFalse: [aStream nextPut: char]]
					repeat].
	^aStream contents! !
!WebStatistics class categoriesFor: #countersFromIISLogsIn:!log analysis!public! !
!WebStatistics class categoriesFor: #countUrlsIn:to:!log analysis!public! !
!WebStatistics class categoriesFor: #dateFromFilename:!log analysis!public! !
!WebStatistics class categoriesFor: #default!accessing!public! !
!WebStatistics class categoriesFor: #newOn:!instance creation!public! !
!WebStatistics class categoriesFor: #parseDatum:!log analysis!public! !
!WebStatistics class categoriesFor: #parseFile:!log analysis!public! !
!WebStatistics class categoriesFor: #parseFile:into:!log analysis!public! !
!WebStatistics class categoriesFor: #parseWords:!log analysis!public! !

