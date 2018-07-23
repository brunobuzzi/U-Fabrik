"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebGridColumn
	instanceVariableNames: 'parent id name width align aspect linkAspect linkView viewBlock addBlock sorted filter filterWidth summaryType summary'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebGridColumn guid: (GUID fromString: '{02f5f23d-f92c-4e71-842d-db6dc7c4e413}')!
WebGridColumn comment: ''!
!WebGridColumn categoriesForClass!Unclassified! !
!WebGridColumn methodsFor!

addBlock
	^addBlock!

addBlock: aBlock
	"result must be kind of WebElement which will be added to table cell"
	"block needs a row object as an argument"
	addBlock := aBlock!

addToSummary: anObject
	self summaryType = #count ifTrue: [^self summary: self summary + 1].
	self summaryType = #sum ifTrue:
		[^self summary: self summary + (anObject perform: self aspect)]!

aidaDeepCopyNotIn: aDict
	^nil!

align
	^align!

align: aSymbol
	align := aSymbol!

aspect
	^aspect!

aspect: aSymbol
	"a method to be called for this column on objects of current row in a collection"
	aspect := aSymbol!

autoConvert: anObject
	(anObject class == Date and: [self parent hasShortDates]) ifTrue: [^anObject shorterPrintSloString].
	(anObject = 0 and: [self parent hasNoZeros]) ifTrue: [^''].
	^WebFormElement autoConvertToString: anObject!

defaultViewBlock
	^[:object | 
		self aspect isNil ifTrue: [''] ifFalse: [self autoConvert: (object perform: self aspect) ] ]!

filter
	^filter!

filter: aString
	"show only rows with value starting with aString"
	filter := aString.
	self parent page: 1 "always to the first page after filter change!!"!

filterWidth
	"filter input field width"
	^filterWidth!

filterWidth: aNumber
	"filter input field width"
	filterWidth := aNumber!

hasAddBlock
	^self addBlock notNil!

hasLink
	^self linkAspect notNil | self linkView notNil!

id
	^id!

id: aSymbolOrNumber
	"by default it is a position (1st, 2nd etc.)"
	id := aSymbolOrNumber!

initialize!

isCheckboxed
	self parent checkboxes isNil ifTrue: [^false].
	^self parent checkboxes = self id!

isNumbered
	self parent numbering isNil ifTrue: [^false].
	^self parent numbering = self id!

isSortedAscending
	^(self parent sortColumn = self id) and: [self parent sortOrder = #ascending]!

isSortedDescending
	^(self parent sortColumn = self id) and: [self parent sortOrder = #descending]!

linkAspect
	^linkAspect!

linkAspect: aSymbol
	"if set, a link to aspect of  row object will be made"
	linkAspect := aSymbol.!

linkView
	^linkView!

linkView: aSymbol
	"if set, a link to aspect of  row object (spesified with linkAspect:) with that view will be shown"
	linkView := aSymbol.!

name
	^name!

name: aString
	"header name for that column"
	name := aString!

needsSummary
	"summary row is needed"
	^self summaryType notNil!

needsSummaryCount
	^self summaryType notNil and: [self summaryType = #count]!

needsSummarySum
	^self summaryType notNil and: [self summaryType = #sum]!

parent
	^parent!

parent: anObject
	parent := anObject!

printString
	^'aWebGridColumn id: ', self id printString!

representBinaryOn: writer
	^0!

resetSummary
	(self summary notNil and: [self summary isKindOf: Number]) 
		ifTrue: [self summary: 0].!

setFilter
	"this column will have a filter input field in a row below header"
	self filter: ''!

sort
	self parent sortColumn == self id
		ifTrue: [self toggleSortOrder]
		ifFalse: [self sortAscending]!

sortAscending
	self parent sortAscendingOn: self id!

sortDescending
	self parent sortDescendingOn: self id!

sorted
	^sorted!

sorted: aSymbol
	"nil #ascending #descending"
	sorted := aSymbol!

summary
	"here summary of all rows is acumulated, depending on summaryType"
	^summary!

summary: aNumber
	"see comment in method #summary"
	summary := aNumber!

summaryType
	"summary row is added with appropriate value, which can be:
	- #sum : sum of all cels in that column
	- #count : number of all rows, without heading and summary
	- 'some text' to be shown in this summary cell"
	^summaryType!

summaryType: aSymbolOrString
	"see comment in method #summary"
	summaryType := aSymbolOrString.
	(aSymbolOrString = #count) | (aSymbolOrString = #sum)
		ifTrue: [self summary: 0]
		ifFalse: [self summary: aSymbolOrString].!

summaryValue
	"for adding to a table"
	self summary isNil ifTrue: [^''].
	(self summary isKindOf: Number) ifTrue: [^self summary printDotString].
	^self summary "as text"!

toggleSortOrder
	self parent sortColumn == self id
		ifTrue: [self parent sortOrder == #descending
			ifTrue: [self sortAscending]
			ifFalse: [self sortDescending]]
		ifFalse: [self sortAscending]!

viewBlock
	viewBlock isNil ifTrue: [self viewBlock: self defaultViewBlock].
	^viewBlock!

viewBlock: aBlock
	"how to show this column from collection. There is a default"
	"block needs a row object as an argument"
	viewBlock := aBlock!

width
	^width!

width: aNumber
	width := aNumber! !
!WebGridColumn categoriesFor: #addBlock!private-accessing!public! !
!WebGridColumn categoriesFor: #addBlock:!public!settings! !
!WebGridColumn categoriesFor: #addToSummary:!private! !
!WebGridColumn categoriesFor: #aidaDeepCopyNotIn:!private! !
!WebGridColumn categoriesFor: #align!private-accessing!public! !
!WebGridColumn categoriesFor: #align:!public!settings! !
!WebGridColumn categoriesFor: #aspect!private-accessing!public! !
!WebGridColumn categoriesFor: #aspect:!public!settings! !
!WebGridColumn categoriesFor: #autoConvert:!private! !
!WebGridColumn categoriesFor: #defaultViewBlock!private! !
!WebGridColumn categoriesFor: #filter!private-accessing!public! !
!WebGridColumn categoriesFor: #filter:!private-accessing!public! !
!WebGridColumn categoriesFor: #filterWidth!public!settings! !
!WebGridColumn categoriesFor: #filterWidth:!public!settings! !
!WebGridColumn categoriesFor: #hasAddBlock!public!testing! !
!WebGridColumn categoriesFor: #hasLink!public!testing! !
!WebGridColumn categoriesFor: #id!private-accessing!public! !
!WebGridColumn categoriesFor: #id:!public!settings! !
!WebGridColumn categoriesFor: #initialize!initialize-release!public! !
!WebGridColumn categoriesFor: #isCheckboxed!public!testing! !
!WebGridColumn categoriesFor: #isNumbered!public!testing! !
!WebGridColumn categoriesFor: #isSortedAscending!public!testing! !
!WebGridColumn categoriesFor: #isSortedDescending!public!testing! !
!WebGridColumn categoriesFor: #linkAspect!private-accessing!public! !
!WebGridColumn categoriesFor: #linkAspect:!public!settings! !
!WebGridColumn categoriesFor: #linkView!private-accessing!public! !
!WebGridColumn categoriesFor: #linkView:!public!settings! !
!WebGridColumn categoriesFor: #name!private-accessing!public! !
!WebGridColumn categoriesFor: #name:!public!settings! !
!WebGridColumn categoriesFor: #needsSummary!public!testing! !
!WebGridColumn categoriesFor: #needsSummaryCount!public!testing! !
!WebGridColumn categoriesFor: #needsSummarySum!public!testing! !
!WebGridColumn categoriesFor: #parent!private-accessing!public! !
!WebGridColumn categoriesFor: #parent:!private! !
!WebGridColumn categoriesFor: #printString!private! !
!WebGridColumn categoriesFor: #representBinaryOn:!private! !
!WebGridColumn categoriesFor: #resetSummary!private! !
!WebGridColumn categoriesFor: #setFilter!public!settings! !
!WebGridColumn categoriesFor: #sort!public!settings! !
!WebGridColumn categoriesFor: #sortAscending!public!settings! !
!WebGridColumn categoriesFor: #sortDescending!public!settings! !
!WebGridColumn categoriesFor: #sorted!private-accessing!public! !
!WebGridColumn categoriesFor: #sorted:!private-accessing!public! !
!WebGridColumn categoriesFor: #summary!private-accessing!public! !
!WebGridColumn categoriesFor: #summary:!private-accessing!public! !
!WebGridColumn categoriesFor: #summaryType!public!settings! !
!WebGridColumn categoriesFor: #summaryType:!public!settings! !
!WebGridColumn categoriesFor: #summaryValue!private-accessing!public! !
!WebGridColumn categoriesFor: #toggleSortOrder!public!settings! !
!WebGridColumn categoriesFor: #viewBlock!private-accessing!public! !
!WebGridColumn categoriesFor: #viewBlock:!public!settings! !
!WebGridColumn categoriesFor: #width!private-accessing!public! !
!WebGridColumn categoriesFor: #width:!public!settings! !

!WebGridColumn class methodsFor!

newOn: aWebGrid
	^super new initialize parent: aWebGrid! !
!WebGridColumn class categoriesFor: #newOn:!instance creation!public! !

