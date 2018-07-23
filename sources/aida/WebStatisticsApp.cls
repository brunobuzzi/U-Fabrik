"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebStatisticsApp
	instanceVariableNames: 'date domainObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebStatisticsApp guid: (GUID fromString: '{1c4f0b0f-a3b2-47e5-b1b4-9b1ef4f8de41}')!
WebStatisticsApp comment: ''!
!WebStatisticsApp categoriesForClass!Unclassified! !
!WebStatisticsApp methodsFor!

adjustViewingDate
	"read url parameters and adjust a viewing date accordingly"
	| adjusted m |
	adjusted := false.
	(self session lastRequest includesQuery: 'day') ifTrue: 
		[self date: (SpDate 
			newDay: (self session lastRequest queryAt: 'day') asInteger
			month: self date monthIndex
			year: self date year). adjusted := true].
	(self session lastRequest includesQuery: 'month') ifTrue: 
		[m := (self session lastRequest queryAt: 'month') asInteger.
		(m between: 1 and: 12) ifTrue: 
			[self date: (SpDate newDay: 1 month: m year: self date year). adjusted := true] ].
	(self session lastRequest includesQuery: 'year') ifTrue: 
		[self date: (SpDate 
			newDay: 1
			month: self date monthIndex
			year: (self session lastRequest queryAt: 'year') asInteger).
			adjusted := true].
	adjusted ifFalse: [date := SpDate today].!

counterForUrlOrFirstPage
	"if url query part contains and url for target domain object to show counter, return that
  	otherwise first page counter only"
	"Also sets instvar domainObject!!"
	| url |
	url := (self session lastRequest includesQuery: 'url')
		ifTrue: [self session lastRequest queryAt: 'url'] ifFalse: [nil].
	self domainObject: (url notNil 
			ifTrue: [self site urlResolver ooRefFromURL: url]
			ifFalse: [self firstPageObject notNil ifTrue: [self firstPageObject] ifFalse: [nil] ]).
	^self domainObject notNil 
		ifTrue: [self site urlResolver counterFor: self domainObject]
		ifFalse: [nil]!

currentWeekStats
	| firstDay collection |
	firstDay := Date today - Date today weekdayIndex + 1.
	collection := OrderedCollection new.
	firstDay to: firstDay + 6 do: [:date |
		collection add: (self site requestsOnDate: date)].
	^collection!

date
	date isNil ifTrue: [date := SpDate today].
	^date!

date: aDate
	date := aDate!

domainObject
	"for which we show statistics"
	^domainObject!

domainObject: anObject
	domainObject := anObject!

firstPageCountOnDate: aDate
	| countedObject |
	countedObject := self firstPageObject.
	countedObject isNil ifTrue: [^0].
	^(self site urlResolver counterFor: countedObject) countsOnDate: aDate.!

firstPageCountTotal
	| countedObject |
	countedObject := self firstPageObject.
	countedObject isNil ifTrue: [^0].
	^(self site urlResolver counterFor: countedObject) total.!

firstPageObject
	^self site urlResolver ooRefFromURL: '/'!

graphElementCounter: aFirstCounter and: aSecondCounter
	| e |
	e := WebElement new. e table width: self pageWidth.
	(self session lastRequest includesQuery: 'yearly') 
		ifTrue: [e cell valign: #top; add: (self yearlyStatsCounter: aFirstCounter and: aSecondCounter)]
		ifFalse: 
			[e cell valign: #top; add: (self monthlyStatsCounter: aFirstCounter and: aSecondCounter).
			e newCell addNbSp.
			e newCell valign: #top; add: (self hourlyStatsCounter: aFirstCounter and: aSecondCounter)].
	^e!

graphElementCounter: aFirstCounter total: aTotalCounter
	| e |
	e := WebElement new.
	e table width: self pageWidth.
	e cell valign: #top; add: (self monthlyStatsCounter: aFirstCounter total: aTotalCounter).
	e newCell addNbSp.
	e newCell valign: #top; add: (self hourlyStatsCounter: aFirstCounter total: aTotalCounter).
	^e!

graphLineCount: firstCount and: secondCount max: maxCount
	| e width maxLength |
	width := 12. maxLength := 148.
	e := WebElement new.
	e addGif: #redPixelGif size: ((maxLength * firstCount // (maxCount max: 1)) max: 2)@width.
	(secondCount notNil and: [secondCount > 0]) ifTrue:
		[e addGif: #bluePixelGif size: ((maxLength * secondCount // maxCount) max: 2)@width].
	^e!

graphLineCount: count max: maxCount

	^self graphLineCount: count and: nil max: maxCount!

hourlyStatsCounter: aFirstCounter and: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter allHourlyCounts.
	secondArray := aTotalCounter notNil
		ifTrue: [aTotalCounter allHourlyCounts]
		ifFalse: [Array new: firstArray size withAll: 0].
	^self hourlyStatsFrom: firstArray and: secondArray!

hourlyStatsCounter: aFirstCounter total: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter allHourlyCounts.
	secondArray := self subtractArray: firstArray
		from: aTotalCounter allHourlyCounts.
	^self hourlyStatsFrom: firstArray and: secondArray!

hourlyStatsFrom: aFirstArray and: aSecondArray
	| e maxCount turn sumArray |
	sumArray := aSecondArray notNil 
		ifTrue: [self sumArray: aFirstArray and: aSecondArray]
		ifFalse: [aFirstArray].
	maxCount := sumArray inject: 0 into: [:max :each | each max: max].
	e := WebElement new.
	e table width: 250; cellSpacing: 0; cellPadding: 0. e newRow color: #thistle.
	e cell width: 50; addTextSmall: 'hour'. e newCell width: 150; addBreak. 
	e newCell width: 50; align: #right; addTextSmall: 'hits'. e newRow.
	turn := true.
	1 to: 24 do: [:hour |
		e newRow.
		(hour-1) \\ 6 = 0 ifTrue: [turn := turn not].
		turn ifTrue: [e row color: #fffbf0].
		e cell addTextSmall: ( (hour-1) printString, ' - ', (hour) printString).
		e newCell add: (self graphLineCount: (aFirstArray at: hour) and: (aSecondArray at: hour) max: maxCount).
		e newCell align: #right; addTextSmall: (sumArray at: hour) printDotString].
	^e!

isFirstPage
	^self domainObject == self firstPageObject!

mainStatsElement
	| e |
	self title: 'Site  access statistics'.
	e := WebElement new.
	e table width: self pageWidth; cellSpacing: 0; cellPadding: 0.
      e cell color: #thistle.
	e cell colspan: 4; addText: self title header: 3. e newRow.
	e cell colspan: 4; addRulerSize: 1.e newRow.
	e cell colspan: 4;
		addBreak; addTextSmall: 'Statistics from: ';
		addTextSmall: ('<b>', session site createdTimestamp printSloString, '</b>'); addTextSmall: ' to: ';
		addTextSmall: ('<b>', SpTimestamp now printSloString, '</b>'); addBreak; addNbSp.
	e newRow. e cell colspan: 4; addRulerSize: 1.
	e newRow color: #thistle.
	e cell addBreak.
	e newCell align: #right; addTextSmall: 'today'.
	e newCell align: #right; addTextSmall: 'yesterday'.
	e newCell align: #right; addTextSmall: 'until now'. e newRow.
	e cell addTextSmall: 'first page'.
	e newCell align: #right; addTextSmall:  (self firstPageCountOnDate: SpDate today) printDotString.
	e newCell align: #right; addTextSmall: (self firstPageCountOnDate: (SpDate today subtractDays: 1)) printDotString.
	e newCell align: #right; addTextSmall: (self firstPageCountTotal) printDotString.
	e newRow color: #fffbf0.
	e cell addTextSmall: 'all pages'. 
	e newCell align: #right; addTextSmall: (self site pagesCounter countsOnDate: SpDate today) printDotString.
	e newCell align: #right; addTextSmall: (self site pagesCounter countsOnDate: (SpDate today subtractDays: 1)) printDotString.
	e newCell align: #right; addTextSmall: (self site pagesCounter total) printDotString. e newRow.
	e cell addTextSmall: 'all pages+images'.
	e newCell align: #right; addTextSmall: (self site totalCounter countsOnDate: SpDate today) printDotString.
	e newCell align: #right; addTextSmall: (self site totalCounter countsOnDate: (SpDate today subtractDays: 1)) printDotString.
	e newCell align: #right; addTextSmall: (self site totalCounter total ) printDotString. e newRow.
	e cell colspan: 4; addRulerSize: 1.
	^e!

monthlyStatsCounter: aFirstCounter and: aSecondCounter
	| firstArray secondArray |

	firstArray := aFirstCounter
		countsFrom: self date firstDayInMonth to: self date lastDayInMonth.
	secondArray := aSecondCounter notNil 
		ifTrue: [aSecondCounter countsFrom: self date firstDayInMonth to: self date lastDayInMonth]
		ifFalse: [Array new: firstArray size withAll: 0].
	^self monthlyStatsDate: self date firstDayInMonth from: firstArray and: secondArray!

monthlyStatsCounter: aFirstCounter total: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter
		countsFrom: self date firstDayInMonth to: self date lastDayInMonth.
	secondArray := self subtractArray: firstArray
		from: (aTotalCounter 
			countsFrom: self date firstDayInMonth to: self date lastDayInMonth).
	^self monthlyStatsDate: self date firstDayInMonth from: firstArray and: secondArray!

monthlyStatsDate: aDate from: aFirstArray and: aSecondArray
	| e maxCount turn sumArray cDate weekday monthText yearLink |
	sumArray := aSecondArray notNil 
		ifTrue: [self sumArray: aFirstArray and: aSecondArray]
		ifFalse: [aFirstArray].
	maxCount := sumArray inject: 0 into: [:max :each | each max: max].
	e := WebElement new.
	e table width: 300; cellSpacing: 0; cellPadding: 0. e newRow color: #thistle.
	monthText := (Date nameOfMonth: aDate monthIndex), ' ', aDate year printString.
	yearLink := (WebLink text: '<font face="helvetica">yearly</font>' linkTo: self observee)
		parameter: 'view' value: self view; parameter: 'yearly' value: 'true'.
	e cell  colspan: 3;
		add: self previousMonthLink; 	addTextSmall: ' ', monthText, ' ';
		add: self nextMonthLink; addNbSp: 3; add: yearLink.
	e newCell width: 50; align: #right; addTextSmall: 'hits'. e newRow.
	turn := false.
	1 to: aFirstArray size do: [:day |
		e newRow.
		cDate := aDate addDays: day - 1.
		weekday := cDate weekdayIndex. weekday = 1 ifTrue: [turn := turn not]. 
		turn ifTrue: [e row color: #fffbf0].
		e cell addTextSmall: ((Date nameOfDay: weekday) copyFrom: 1 to: 3).
		e newCell align: #right; addTextSmall: (day printString, '.', aDate monthIndex printString, ' ' ).
		e newCell add: (self graphLineCount: (aFirstArray at: day) and: (aSecondArray at: day) max: maxCount).
		e newCell align: #right; addTextSmall: (sumArray at: day) printDotString.
		].
	^e!

monthlyStatsFor: aFirstCounter total: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter
		countsFrom: self date firstDayInMonth to: self date lastDayInMonth.
	secondArray := self subtractArray: firstArray
		from: (aTotalCounter 
			countsFrom: self date firstDayInMonth to: self date lastDayInMonth).
	^self monthlyStatsDate: self date firstDayInMonth from: firstArray and: secondArray!

nextMonthLink
	self date currentMonth ifTrue: [^WebText text: '<font face="helvetica">></font>' ].
	^(WebLink text: '<font face="helvetica">></font>' linkTo: self observee)
		parameter: 'view' value: self view;
		parameter: 'month' value: self date firstDayInNextMonth monthIndex printString;
		parameter: 'year' value: self date firstDayInNextMonth year printString.!

pageDescription
	| e url |
	e := WebElement new.
	url := self site urlResolver halfUrlFor: self domainObject.
	e addText: 'For page: '; addLinkTo: url text: url.
	^e!

pageWidth
	^self style pageWidth - 150 "actually from WebStyle"!

previousMonthLink
	^(WebLink text: '<font face="helvetica"><</font>' linkTo: self observee)
		parameter: 'view' value: self view;
		parameter: 'month' value: self date firstDayInPreviousMonth monthIndex printString;
		parameter: 'year' value: self date firstDayInPreviousMonth year printString.!

printCounter
	| e count |
	e := WebElement new.
	count := self firstPageCountTotal.
	e addText: '<font face="arial, helvetica"> <b>'; 	addText: count printDotString; addText: '</b></font>'.
	^e.!

refererLinesOnPage
	^50!

referersElementFor: aCollection date: aDate
	| e referers nr max new |
	e := WebElement new.
	e table width: self pageWidth; cellSpacing: 0; cellPadding: 0.
	referers := aCollection copyFrom: 1 to: (self refererLinesOnPage min: aCollection size).
	max := referers inject: 0 into: [:maxi :each | maxi max: (each at: 2)].
	nr := 1.
	referers do: [:array |
		new := aDate notNil and: [self observee isNewReferer: (array first) onDate: aDate].
		e cell align: #right; addTextSmall: nr printString, '. '.
		e newCell add: 
			(WebLink new 
				text: '<font size=-1>', (new ifTrue: ['<b>'] ifFalse: ['']), (array first), '</b></font>';
				urlReference: (array first)).
		e newCell add: (self graphLineCount: (array at: 2) max: max "length: 80").
		e newCell align: #right; addTextSmall: ' ', (array at: 2) printDotString. 	e newRow.
		nr even ifTrue: [e row color: #fffbf0].
		nr := nr + 1].
	e cell colspan: 4; addRulerSize: 1.
	^e!

statsStartingDate
	^SpDate newDay: 1 month: 1 year: 2005.!

subtractArray: aFirstArray from: aSecondArray
	| result |
	result := OrderedCollection new.
	aFirstArray with: aSecondArray do: [:first :second | result add: second - first].
	^result.

"WebStatisticsApp new subtractArray: #(1 2 3 4) from: #(1 2 3 4)"!

sumArray: aFirstArray and: aSecondArray
	| result |
	result := OrderedCollection new.
	aFirstArray with: aSecondArray do: [:first :second | result add: first + second].
	^result.

"WebStatisticsApp new sumArray: #(1 2 3 4) and: #(1 2 3 4)"!

tabsElement
	^ViewTabs new
		addView: #main description: 
			(self isFirstPage ifTrue: ['First page'] ifFalse: ['Selected page']);
"		addView: #hits description: 'All hits';"
		addView: #referers description: 'Referers';
		yourself!

tabsReferersElement
	^ViewTabs new
		addView: #referers description: 'Today';
		addView: #referersYesterday description: 'Yesterday';
		addView: #referersWeekly description: 'This week';
		addView: #referersAll description: 'All';
		yourself!

viewHits
	| e |
	self title: 'Site  access statistics'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: (self graphElementCounter: self site pagesCounter total: self site totalCounter).
	^self style pageFrameWith: e title: self title .!

viewMain
	| e counter |

	self title: 'Site statistics - page'.
	self adjustViewingDate.
	counter := self counterForUrlOrFirstPage. "from query part of url, otherwise first page"
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	self isFirstPage ifFalse: [e cell add: self pageDescription. e newRow].
	counter notNil ifTrue: 
		[e cell add: (self graphElementCounter: counter and:nil)].
	^self style pageFrameWith: e title: self title .!

viewReferers "Today"
	| e |
	self title: 'Site statistics - referers'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: self tabsReferersElement. e newRow.
	e cell addNbSp: 4; addText: '<small><b>bold</b> = new in last 7 days</small>'. e newRow.
	e cell addTextH1: 'Today referers - visitors comming from: '. e newRow.
	e cell add: (self 
		referersElementFor: self observee allRefererCountsToday 
		date: SpDate today).
	^self style pageFrameWith: e title: self title .!

viewReferersAll
	| e |
	self title: 'Site statistics - referers'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: self tabsReferersElement. e newRow.
	e cell addTextH1: 'Referers - visitors comming mostly from: '. e newRow.
	e cell add: (self referersElementFor: self observee allRefererCounts date: nil).
	^self style pageFrameWith: e title: self title .!

viewReferersWeekly
	| e |
	self title: 'Site statistics - referers'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: self tabsReferersElement. e newRow.
	e cell addTextH1: 'That week referers - visitors comming from: '. e newRow.
	e cell add: (self referersElementFor: self observee allRefererCountsWeekly date: nil).
	^self style pageFrameWith: e title: self title .!

viewReferersYesterday
	| e |
	self title: 'Site statistics - referers'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: self tabsReferersElement. e newRow.
	e cell addTextH1: 'Yesterday referers - visitors comming from: '. e newRow.
	e cell addNbSp: 4; addText: '<small><b>bold</b> = new in last 7 days</small>'. e newRow.
	e cell add: (self 
		referersElementFor: self observee allRefererCountsYesterday 
		date: (SpDate today subtractDays: 1)).
	^self style pageFrameWith: e title: self title .!

viewVisitors
	| e |
	self adjustViewingDate.
	self title: 'Site statistics - returning visitors'.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: (self graphSelectionForView: self view). e newRow.
	e cell add: (self graphElementCounter: self site returningVisitorsCounter 
		and: self site newVisitorsCounter).
	^self style pageFrameWith: e title: self title .!

weeklyStatsElement
	| firstArray secondArray |
	firstArray := self site pagesCounter currentWeekCounts.
	secondArray := self subtractArray: firstArray
		from: self site totalCounter currentWeekCounts.
	^self weeklyStatsFrom: firstArray and: secondArray!

weeklyStatsFrom: aFirstArray and: aSecondArray
	| e maxCount turn sumArray |
	sumArray := aSecondArray notNil 
		ifTrue: [self sumArray: aFirstArray and: aSecondArray]
		ifFalse: [aFirstArray].
	maxCount := sumArray inject: 0 into: [:max :each | each max: max].
	e := WebElement new.
	e table width: 400; cellSpacing: 0; cellPadding: 0. e newRow color: #thistle.
	e cell width: 50; addTextSmall: 'this week'. e newCell width: 300; addBreak.
	e newCell width: 50; align: #right; addTextSmall: 'hits'. e newRow.
	turn := false.
	1 to: 7 do: [:day |
		e newRow.
		turn ifTrue: [e row color: #fffbf0].
		e cell addTextSmall: ((Date nameOfDay: day) copyFrom: 1 to: 3).
		e newCell add: (self graphLineCount: (aFirstArray at: day) and: (aSecondArray at: day) max: maxCount).
		e newCell align: #right; addTextSmall: (sumArray at: day) printDotString.
		turn := turn not].
	^e!

yearlyStatsCounter: aFirstCounter and: aSecondCounter
	| firstArray secondArray |
	firstArray := aFirstCounter countsMonthlyFromDate: self statsStartingDate.
	secondArray := aSecondCounter notNil 
		ifTrue: [aSecondCounter  countsMonthlyFromDate: self statsStartingDate.]
		ifFalse: [Array new: firstArray size withAll: 0].
	^self yearlyStatsStarting: self statsStartingDate from: firstArray and: secondArray!

yearlyStatsCounter: aFirstCounter total: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter countsMonthlyFromDate: self statsStartingDate.
	secondArray := self subtractArray: firstArray
		from: (aTotalCounter  countsMonthlyFromDate: self statsStartingDate).
	^self yearlyStatsStarting: self statsStartingDate from: firstArray and: secondArray!

yearlyStatsFor: aFirstCounter total: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter countsMonthlyFromDate: self statsStartingDate.
	secondArray := self subtractArray: firstArray
		from: (aTotalCounter  countsMonthlyFromDate: self statsStartingDate).
	^self yearlyStatsStarting: self statsStartingDate from: firstArray and: secondArray!

yearlyStatsStarting: aDate from: aFirstArray and: aSecondArray
	| e maxCount turn sumArray cdate |

	sumArray := aSecondArray notNil 
		ifTrue: [self sumArray: aFirstArray and: aSecondArray]
		ifFalse: [aFirstArray].
	maxCount := sumArray inject: 0 into: [:max :each | each max: max].
	e := WebElement new.
	e table width: 300; cellSpacing: 0; cellPadding: 0. e newRow color: #thistle.
	e cell addNbSp. 	e newCell addNbSp. e newCell width: 150; addBreak.
	e newCell width: 50; align: #right; addTextSmall: 'hits'. e newRow.
	turn := false.
	cdate := SpDate newDay: 1 month: aDate monthIndex year: aDate year.
	1 to: aFirstArray size do: [:inx |
		e newRow.
		cdate monthIndex \\ 3 = 1 ifTrue: [turn := turn not].
		turn ifTrue: [e row color: #fffbf0].
		e cell addTextSmall: ((Date nameOfMonth: cdate monthIndex) asString copyFrom: 1 to: 3).
		e newCell addTextSmall: cdate year printString.
		e newCell add: (self graphLineCount: (aFirstArray at: inx) and: (aSecondArray at: inx) max: maxCount).
		e newCell align: #right; addTextSmall: (sumArray at: inx) printDotString.
		cdate := SpDate 	newDay: 1 month: (cdate addDays: 31) monthIndex year: (cdate addDays: 31) year].
	^e! !
!WebStatisticsApp categoriesFor: #adjustViewingDate!accessing!public! !
!WebStatisticsApp categoriesFor: #counterForUrlOrFirstPage!accessing!public! !
!WebStatisticsApp categoriesFor: #currentWeekStats!printing-elements!public! !
!WebStatisticsApp categoriesFor: #date!accessing!public! !
!WebStatisticsApp categoriesFor: #date:!accessing!public! !
!WebStatisticsApp categoriesFor: #domainObject!accessing!public! !
!WebStatisticsApp categoriesFor: #domainObject:!accessing!public! !
!WebStatisticsApp categoriesFor: #firstPageCountOnDate:!printing-elements!public! !
!WebStatisticsApp categoriesFor: #firstPageCountTotal!printing-elements!public! !
!WebStatisticsApp categoriesFor: #firstPageObject!accessing!public! !
!WebStatisticsApp categoriesFor: #graphElementCounter:and:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #graphElementCounter:total:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #graphLineCount:and:max:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #graphLineCount:max:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #hourlyStatsCounter:and:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #hourlyStatsCounter:total:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #hourlyStatsFrom:and:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #isFirstPage!public!testing! !
!WebStatisticsApp categoriesFor: #mainStatsElement!printing-elements!public! !
!WebStatisticsApp categoriesFor: #monthlyStatsCounter:and:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #monthlyStatsCounter:total:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #monthlyStatsDate:from:and:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #monthlyStatsFor:total:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #nextMonthLink!printing-elements!public! !
!WebStatisticsApp categoriesFor: #pageDescription!printing-elements!public! !
!WebStatisticsApp categoriesFor: #pageWidth!accessing!public! !
!WebStatisticsApp categoriesFor: #previousMonthLink!printing-elements!public! !
!WebStatisticsApp categoriesFor: #printCounter!printing-elements!public! !
!WebStatisticsApp categoriesFor: #refererLinesOnPage!accessing!public! !
!WebStatisticsApp categoriesFor: #referersElementFor:date:!printing-elements!public! !
!WebStatisticsApp categoriesFor: #statsStartingDate!accessing!public! !
!WebStatisticsApp categoriesFor: #subtractArray:from:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #sumArray:and:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #tabsElement!printing-elements!public! !
!WebStatisticsApp categoriesFor: #tabsReferersElement!printing-elements!public! !
!WebStatisticsApp categoriesFor: #viewHits!printing!public! !
!WebStatisticsApp categoriesFor: #viewMain!printing!public! !
!WebStatisticsApp categoriesFor: #viewReferers!printing!public! !
!WebStatisticsApp categoriesFor: #viewReferersAll!printing!public! !
!WebStatisticsApp categoriesFor: #viewReferersWeekly!printing!public! !
!WebStatisticsApp categoriesFor: #viewReferersYesterday!printing!public! !
!WebStatisticsApp categoriesFor: #viewVisitors!printing!public! !
!WebStatisticsApp categoriesFor: #weeklyStatsElement!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #weeklyStatsFrom:and:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #yearlyStatsCounter:and:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #yearlyStatsCounter:total:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #yearlyStatsFor:total:!printing-graphs!public! !
!WebStatisticsApp categoriesFor: #yearlyStatsStarting:from:and:!printing-graphs!public! !

