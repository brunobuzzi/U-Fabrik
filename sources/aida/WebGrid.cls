"Filed out from Dolphin Smalltalk 7"!

WebWidget subclass: #WebGrid
	instanceVariableNames: 'collection filtered columns page settings'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebGrid guid: (GUID fromString: '{7ed28f09-1481-4171-8886-900b57f7d1a6}')!
WebGrid comment: ''!
!WebGrid categoriesForClass!Unclassified! !
!WebGrid methodsFor!

addNewColumn
	self columns add: ((WebGridColumn newOn: self) id: (self columns size + 1))!

aidaDeepCopyNotIn: aDict
	^nil!

ajaxUpdateWith: aParmString
	| parm |
	(aParmString notNil and: ['sort-*' match: aParmString]) ifTrue: 
		[parm := aParmString readStream upTo: $-; upToEnd.
		(self columnWithId: parm asInteger) sort. "or toogle sort order"
		self page: 1]. "always back to first page after sort change"
	(aParmString notNil and: ['page-*' match: aParmString]) ifTrue: 
		[parm := aParmString readStream upTo: $-; upToEnd.
		self page: parm asInteger]. 
	^self!

buildPageSelectionRow
	| fullLength |
	self newRow. self row class: #tablePageSelection.
	self cell colspan: self columns size; align: #center.
	fullLength := self filtered size.
	1 to: (fullLength // self rowsOnPage) + 1 do: [:inx |
		inx = self page 
			ifTrue: [self cell addTextBold: inx printString]
			ifFalse: [self cell add: (self linkForPage: inx)].
		self cell addText: ' | '].!

buildTable
	self initElements; initTable.
	self table class: self cssClass. 
	self width notNil ifTrue: [self table width: self width].
	self buildTableHeader.
	self sortColumnsIfNessesary.
	self hasFilters 
		ifTrue: [self buildTableFilterRow. self filterRows]
		ifFalse: [self filtered removeAll; addAll: self collection]. "filtered is what is shown, not collection!!"
	self buildTableRows.
	self needsSummary ifTrue: [self buildTableSummaryRow].
	self hasPages ifTrue: [self buildPageSelectionRow].
	self context form registerFormElementsIn: self.  "this will add registrations to grid form elements"!

buildTableFilterRow
	| field |
	self newRow.
	self columns do: [:each | 
		each align notNil ifTrue: [self cell align: each align].
		each filter notNil ifTrue: 
			[field := WebDelayedField aspect: #filter for: each size: 10.
			each filterWidth notNil ifTrue: [field size: each filterWidth].
			field adapt. "because we are not part of a form"
			(self wasFilterChangedFor: each on: field) ifTrue: [field focus].
			field afterPostUpdate: self.
			self cell add: field].
		each ~= self columns last ifTrue: [self newCell] ].!

buildTableHeader
	self columns do: [:each | 
		self cell setHeader.
		each align notNil ifTrue: [self cell align: each align].
		each name notNil ifTrue: [self cell add: (self sortLinkColumn: each)].
		each isSortedAscending ifTrue: [self cell addGif: #arrowOrangeUpGif].
		each isSortedDescending ifTrue: [self cell addGif: #arrowOrangeDownGif].
		each ~= self columns last ifTrue: [self newCell] ].!

buildTableRows
	| inx objects pageLength |
	self collection notEmpty ifTrue: [self newRow].
	objects := self filtered.
	self resetSummary. inx := 0. objects do: [:object | inx := inx + 1. "summary in advance!!"
		self columns do: [:column | self summaryForColumn: column index: inx object: object]].
	inx := 1. pageLength := self hasPages ifTrue: [self rowsOnPage] ifFalse: [objects size]. 
	(self page-1) * pageLength > objects size ifTrue: [self page: 1]. 
	objects := objects 
		copyFrom: ((self page-1) * pageLength)+1 to: (self page * pageLength min: objects size).
	objects do: [:object |
		self setRowAttributesFor: self row object: object.
		self columns do: [:column |
			(inx = 1 and: [column width notNil]) ifTrue: [self cell width: column width].
			self printColumn: column index: inx object: object in: self cell.
			column ~= self columns last ifTrue: [self newCell] ].
		inx ~= objects size ifTrue: [self newRow].
		inx := inx + 1 ]!

buildTableSummaryRow
	self newRow. self row class: #summary.
	self columns do: [:each | 
		each align notNil ifTrue: [self cell align: each align].
		each name notNil ifTrue: [self cell addText: each summaryValue].
		each ~= self columns last ifTrue: [self newCell] ].!

canFilterObject: anObject onColumns: aColumnsToFilter
	aColumnsToFilter do: [:column || value |
		column aspect notNil ifTrue: 
			[value := anObject perform: column aspect.
			value := WebFormElement autoConvertToString: value.
			value notNil ifTrue:
				[((column filter, '*') match: value) ifFalse: [^false]]  ] ].
	^true!

checkboxes
	"nil or column"
	^self settingsAt: #checkboxesColumn ifAbsent: [nil]!

checkboxes: aColumnId
	^self settingsAt: #checkboxesColumn put: aColumnId!

checkboxesCollection
	"collection of checked row objects"
	^self settingsAt: #checkboxesCollection ifAbsent: [nil]!

checkboxesCollection: aCollection
	^self settingsAt: #checkboxesCollection put: aCollection!

checkboxesColumn: aColumnId collection: aCollection
	"this column will have checboxes. Checked row objects will be in aCollection.
	preselected rows are done from initial aCollection"
	self checkboxes: aColumnId.
	self checkboxesCollection: aCollection!

collection
	collection isNil ifTrue: [^#()].
	^collection!

collection: aCollection
	collection := aCollection!

column: aColumnId addBlock: aBlock
	"this block will be called with current row object as an argument. 
	It must return kind of WebElement which will be added to the table cell"
	self columns size < aColumnId ifTrue: [self addNewColumn].
	(self columns at: aColumnId) addBlock: aBlock!

column: aColumnId viewBlock: aBlock
	"this block will be called with current row object as an argument. It must return plain string!!"
	self columns size < aColumnId ifTrue: [self addNewColumn]. "?"
	(self columns at: aColumnId) viewBlock: aBlock!

columnAlign: anArrayOfSymbols
	"#left #right #center, nil if default left is used"
	| inx |
	inx := 1.
	anArrayOfSymbols do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) align: each.
		inx := inx + 1]!

columnAspects: anArrayOfSymbols
	"methods to be called for each column on every object in collection"
	| inx |
	inx := 1.
	anArrayOfSymbols do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) aspect: each.
		inx := inx + 1]!

columnFilters: anArrayOfBooleanOrNumbers
	"row with filter input fields, put true or field width on a column to add filter"
	| inx |
	inx := 1.
	anArrayOfBooleanOrNumbers do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		each notNil ifTrue: [(self columns at: inx) setFilter].
		(each notNil and: [each class ~= True "but number"])  
			ifTrue: [(self columns at: inx) filterWidth: each].
		inx := inx + 1]!

columnLinkAspects: anArrayOfSymbols
	"url link to an aspects of an object. Specify views with separate columnLinkViews: method"
	| inx |
	inx := 1.
	anArrayOfSymbols do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) linkAspect:  each.
		inx := inx + 1]!

columnLinkViews: anArrayOfSymbols
	"link to an aspect of object(if set with columnLinks:, otherwise to object itself) with a view 
	will be shown in thi column"
	| inx |
	inx := 1.
	anArrayOfSymbols do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) linkView:  each.
		inx := inx + 1]!

columnNames: anArrayOfStrings
	"set names of columns to be shown in header of table"
	| inx |
	inx := 1.
	anArrayOfStrings do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) name: each.
		inx := inx + 1]!

columns
	columns isNil ifTrue: [self initColumns].
	^columns!

columnWidth: anArrayOfNumbers
	"width of column or nil."
	| inx |
	inx := 1.
	anArrayOfNumbers do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) width: each.
		inx := inx + 1]!

columnWithId: aNumber
	aNumber > self columns size ifTrue: [^nil].
	^self columns at: aNumber!

cssClass
	^self settingsAt: #cssClass ifAbsent: [self defaultCssClass]!

defaultCssClass
	^#webGrid!

defaultWidth
	^1 "100%"!

endTagFor: anObject
	(self rowBoldBlock notNil and: [self rowBoldBlock value: anObject]) ifTrue: [^'</b>'].
	^''!

filtered
	"objects which pass filter criteria. if nil, filters are not set"
	filtered isNil ifTrue: [self initFiltered].
	^filtered!

filtered: aCollection
	filtered := aCollection!

filteredCollection: aCollection
	"for external access to filtered rows only"
	filtered := aCollection!

filterRow: anArrayOfBooleanOrNumbers
	"OBSOLETE!!"
	"row with filter input fields, put true or field width on a column to add filter"
	self columnFilters: anArrayOfBooleanOrNumbers!

filterRows
	| columnsToFilter | 
	columnsToFilter := self columns select: [:each | each filter notNil]. 
	self filtered removeAll; addAll: 
		(columnsToFilter notEmpty
			ifTrue: [(self collection select: [:object | 
				self canFilterObject: object onColumns: columnsToFilter])] 
			ifFalse: [self collection])!

hasFilters
	"any column has a filter"
	^self columns contains: [:each | each filter notNil].!

hasNoZeros
	"don't show zeros"
	^self settingsAt: #noZeros ifAbsent: [false]!

hasPages
	^self rowsOnPage notNil and: [self collection size > self rowsOnPage].!

hasShortDates
	"year in two digits only"
	^self settingsAt: #shortDates ifAbsent: [false]!

initColumns
	columns := OrderedCollection new!

initFiltered
	filtered isNil 
		ifTrue: [filtered := OrderedCollection new]
		ifFalse: [filtered removeAll]!

initialize
	self method: #ajaxUpdateWith: "this method will be called after ajax update"!

initSettings
	settings := Dictionary new.!

insideDivTag
	"to enclose or not in div tag. Only if element have any attribute!!"
	^self div | self attributes notNil.!

lastColumn
	^self columns notEmpty ifTrue: [self columns last] ifFalse: [nil].!

linkForPage: aNumber
	| dummyLink |
	dummyLink := WebLink text: aNumber printString linkTo: (Array with: self app observee with: '-').
	self app inDefaultView ifFalse: [dummyLink view: self app view].
	dummyLink onClickUpdate: self with: 'page-', aNumber printString.
	^dummyLink!

needsSummary
	"summary row needed or not"
	^self columns contains: [:each | each needsSummary].!

noZeros
	"don't show if value is zero"
	^self settingsAt: #noZeros put: true!

numbering
	"false or column"
	^self settingsAt: #numberingColumn ifAbsent: [nil]!

numbering: aColumnId
	"false or column"
	^self settingsAt: #numberingColumn put: aColumnId!

page
	"number of a page currently shown"
	page isNil ifTrue: [self page: 1].
	^page!

page: aNumber
	page := aNumber!

parent: aWebElement
	"self buildTable." "build just before rendering!!"
	^super parent: aWebElement!

prepareToHTMLPrintOn: aSession
	super prepareToHTMLPrintOn: aSession.
	self buildTable!

printCheckboxIndex: aNumber object: anObject in: anElement
	| field |
	field := WebCheckBox newForObject: anObject from: self checkboxesCollection.
"	self app form registerFormElementsIn: field.  "
	anElement add: field.!

printColumn: aColumn index: aNumber object: anObject in: anElement
	| start |

	aColumn align notNil ifTrue: [anElement align: aColumn align].
	aColumn isNumbered  ifTrue: 
		[start := self hasPages ifTrue: [(self page-1) * self rowsOnPage] ifFalse: [0].
		^self printNumber: start+aNumber object: anObject in: anElement].
	aColumn isCheckboxed  ifTrue: [^self printCheckboxIndex: aNumber object: anObject in: anElement].
	aColumn hasLink ifTrue: [^self printLinkTo: anObject column: aColumn in: anElement]. 
	aColumn hasAddBlock ifTrue: [^anElement add: (aColumn addBlock value: anObject)].
	anElement addText: 
		(self startTagFor: anObject), (aColumn viewBlock value: anObject) printUMLFormat, (self endTagFor: anObject)!

printHTMLPageOn: aStream for: aRequest on: aSession
	"self buildTable." "not so late, build imediately after adding to some parent!!"
	self prepareToHTMLPrintOn: aSession. "buildTable"
	aStream nextPutAll: self ident, '<div'. self printAttributesOn: aStream for: aSession. 
	aStream nextPutAll: '>', self eol.
	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: [element printHTMLPageOn: aStream for: aRequest on: aSession] ] ].
	aStream nextPutAll: self ident, '</div>', self eol.!

printLinkTo: anObject column: aColumn in: anElement
	| view object linkText |
	view := aColumn linkView notNil ifTrue: [aColumn linkView] ifFalse: [#main].
	object := aColumn linkAspect notNil 
		ifTrue: [anObject perform: aColumn linkAspect] ifFalse: [anObject].
	linkText := (self startTagFor: anObject), (aColumn viewBlock value: anObject) printUMLFormat, 
		(self endTagFor: anObject).
	object notNil
		ifTrue: [anElement addLinkTo: object text: linkText view: view]
		ifFalse: [anElement addText: linkText]!

printNumber: aNumber object: anObject in: anElement
	anElement addText: 
		(self startTagFor: anObject), aNumber printDotString, '.', (self endTagFor: anObject)!

removeLastColumn
	self columns notEmpty ifTrue: [self columns remove: self lastColumn].!

representBinaryOn: writer
	^0!

resetSummary
	self columns do: [:each | each resetSummary].!

rowBlueBlock
	^self settingsAt: #rowBlueBlock!

rowBlueIfTrue: aBlock
	^self settingsAt: #rowBlueBlock put: aBlock!

rowBoldBlock
	^self settingsAt: #rowBoldBlock!

rowBoldIfTrue: aBlock
	^self settingsAt: #rowBoldBlock put: aBlock!

rowGrayBlock
	^self settingsAt: #rowGrayBlock!

rowGrayIfTrue: aBlock
	^self settingsAt: #rowGrayBlock put: aBlock!

rowGreenBlock
	^self settingsAt: #rowGreenBlock!

rowGreenIfTrue: aBlock
	^self settingsAt: #rowGreenBlock put: aBlock!

rowRedBlock
	^self settingsAt: #rowRedBlock!

rowRedIfTrue: aBlock
	^self settingsAt: #rowRedBlock put: aBlock!

rowsOnPage
	^self settingsAt: #rowsOnPage!

rowsOnPage: anInteger
	^self settingsAt: #rowsOnPage put: anInteger!

rowYellowBlock
	^self settingsAt: #rowYellowBlock!

rowYellowIfTrue: aBlock
	^self settingsAt: #rowYellowBlock put: aBlock!

setNumbering
	"in first column a sequential nr. of this row will be shown"
	self setNumberingOn: 1!

setNumberingOn: aColumnId
	"in this column a sequential nr. of this row will be shown"
	self numbering: aColumnId!

setRowAttributesFor: aWebRow object: anObject
	(self rowRedBlock notNil and: [self rowRedBlock value: anObject]) 
		ifTrue: [^aWebRow class: #red].
	(self rowGreenBlock notNil and: [self rowGreenBlock value: anObject]) 
		ifTrue: [^aWebRow class: #green].
	(self rowBlueBlock notNil and: [self rowBlueBlock value: anObject]) 
		ifTrue: [^aWebRow class: #blue].
	(self rowYellowBlock notNil and: [self rowYellowBlock value: anObject]) 
		ifTrue: [^aWebRow class: #yellow].
	(self rowGrayBlock notNil and: [self rowGrayBlock value: anObject]) 
		ifTrue: [^aWebRow class: #gray].!

settings
	settings isNil ifTrue: [self initSettings].
	^settings!

settingsAt: aSymbol
	^self settingsAt: aSymbol ifAbsent: [nil]!

settingsAt: aSymbol ifAbsent: aBlock
	^self settings at: aSymbol ifAbsent: aBlock!

settingsAt: aSymbol put: aValue
	self settings at: aSymbol put: aValue!

shortDates
	"year in two digits only"
	^self settingsAt: #shortDates put: true!

sortAscendingOn: aColumnId
	"this column will be sorted ascending"
	self sortColumn: aColumnId.
	self sortOrder: #ascending!

sortColumn
	"false or column"
	^self settingsAt: #sortColumn ifAbsent: [nil]!

sortColumn: aColumnId
	"false or column"
	^self settingsAt: #sortColumn put: aColumnId!

sortDescendingOn: aColumnId
	"this column will be sorted ascending"
	self sortColumn: aColumnId.
	self sortOrder: #descending!

sortLinkColumn: aWebGridColumn
	| dummyLink |
	"Cannot sort a column which has an addBlock or is numbered"
	aWebGridColumn hasAddBlock ifTrue: [^WebText text: aWebGridColumn name].
	aWebGridColumn isNumbered ifTrue: [^WebText text: aWebGridColumn name].
	dummyLink := WebLink text: aWebGridColumn name linkTo: (Array with: self app observee with: '-').
	self app inDefaultView ifFalse: [dummyLink view: self app view].
	dummyLink onClickUpdate: self with: 'sort-', aWebGridColumn id printString.
	^dummyLink!

sortOn: aColumnId
	"this column will be sorted ascending"
	self sortAscendingOn: aColumnId!

sortOrder
	^self settingsAt: #sortOrder ifAbsent: [#ascending]!

sortOrder: aSymbol
	"#ascending or #descending"
	^self settingsAt: #sortOrder put: aSymbol!

startTagFor: anObject
	(self rowBoldBlock notNil and: [self rowBoldBlock value: anObject]) ifTrue: [^'<b>'].
	^''!

summaryForColumn: aColumn index: aNumber object: anObject
	aColumn needsSummary ifFalse: [^nil].
	aColumn addToSummary: anObject.!

summaryRow: anArrayOfSymbolsOrStrings
	"if you want a summary row, define for desired column: #sum, #count or 'some text' "
	| inx |
	inx := 1.
	anArrayOfSymbolsOrStrings do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) summaryType:  each.
		inx := inx + 1]!

wasFilterChangedFor: aWebGridColumn on: anInputField
	| request vlue |
	request := self app session lastRequest.
	(request isAjaxRequest and: [request isPost]) ifFalse: [^false].
	request postKeysAndValuesDo: [:key :value |
		(('field', '*') match: key) ifTrue: [vlue := value] ].
	^vlue = aWebGridColumn filter!

width
	^self settingsAt: #width ifAbsent: [self defaultWidth]!

width: anInteger
	self settingsAt: #width put: anInteger! !
!WebGrid categoriesFor: #addNewColumn!private! !
!WebGrid categoriesFor: #aidaDeepCopyNotIn:!private! !
!WebGrid categoriesFor: #ajaxUpdateWith:!private-printing!public! !
!WebGrid categoriesFor: #buildPageSelectionRow!private-printing!public! !
!WebGrid categoriesFor: #buildTable!private-printing!public! !
!WebGrid categoriesFor: #buildTableFilterRow!private-printing!public! !
!WebGrid categoriesFor: #buildTableHeader!private-printing!public! !
!WebGrid categoriesFor: #buildTableRows!private-printing!public! !
!WebGrid categoriesFor: #buildTableSummaryRow!private-printing!public! !
!WebGrid categoriesFor: #canFilterObject:onColumns:!private-printing!public! !
!WebGrid categoriesFor: #checkboxes!private! !
!WebGrid categoriesFor: #checkboxes:!private! !
!WebGrid categoriesFor: #checkboxesCollection!private! !
!WebGrid categoriesFor: #checkboxesCollection:!private! !
!WebGrid categoriesFor: #checkboxesColumn:collection:!public!settings-column! !
!WebGrid categoriesFor: #collection!accessing!public! !
!WebGrid categoriesFor: #collection:!accessing!public! !
!WebGrid categoriesFor: #column:addBlock:!public!settings-column! !
!WebGrid categoriesFor: #column:viewBlock:!public!settings-column! !
!WebGrid categoriesFor: #columnAlign:!public!settings-column! !
!WebGrid categoriesFor: #columnAspects:!public!settings-column! !
!WebGrid categoriesFor: #columnFilters:!public!settings-column! !
!WebGrid categoriesFor: #columnLinkAspects:!public!settings-column! !
!WebGrid categoriesFor: #columnLinkViews:!public!settings-column! !
!WebGrid categoriesFor: #columnNames:!public!settings-column! !
!WebGrid categoriesFor: #columns!private! !
!WebGrid categoriesFor: #columnWidth:!public!settings-column! !
!WebGrid categoriesFor: #columnWithId:!accessing!public! !
!WebGrid categoriesFor: #cssClass!private! !
!WebGrid categoriesFor: #defaultCssClass!accessing!public! !
!WebGrid categoriesFor: #defaultWidth!accessing!public! !
!WebGrid categoriesFor: #endTagFor:!private-printing!public! !
!WebGrid categoriesFor: #filtered!private! !
!WebGrid categoriesFor: #filtered:!private! !
!WebGrid categoriesFor: #filteredCollection:!public!settings-column! !
!WebGrid categoriesFor: #filterRow:!public!settings-row! !
!WebGrid categoriesFor: #filterRows!private-printing!public! !
!WebGrid categoriesFor: #hasFilters!private-testing!public! !
!WebGrid categoriesFor: #hasNoZeros!private-testing!public! !
!WebGrid categoriesFor: #hasPages!private-testing!public! !
!WebGrid categoriesFor: #hasShortDates!private-testing!public! !
!WebGrid categoriesFor: #initColumns!initialize-release!public! !
!WebGrid categoriesFor: #initFiltered!initialize-release!public! !
!WebGrid categoriesFor: #initialize!initialize-release!public! !
!WebGrid categoriesFor: #initSettings!initialize-release!public! !
!WebGrid categoriesFor: #insideDivTag!private-testing!public! !
!WebGrid categoriesFor: #lastColumn!private! !
!WebGrid categoriesFor: #linkForPage:!private-printing!public! !
!WebGrid categoriesFor: #needsSummary!private-testing!public! !
!WebGrid categoriesFor: #noZeros!public!settings-column! !
!WebGrid categoriesFor: #numbering!private! !
!WebGrid categoriesFor: #numbering:!private! !
!WebGrid categoriesFor: #page!private! !
!WebGrid categoriesFor: #page:!private! !
!WebGrid categoriesFor: #parent:!private! !
!WebGrid categoriesFor: #prepareToHTMLPrintOn:!private-printing!public! !
!WebGrid categoriesFor: #printCheckboxIndex:object:in:!private-printing!public! !
!WebGrid categoriesFor: #printColumn:index:object:in:!private-printing!public! !
!WebGrid categoriesFor: #printHTMLPageOn:for:on:!private-printing!public! !
!WebGrid categoriesFor: #printLinkTo:column:in:!private-printing!public! !
!WebGrid categoriesFor: #printNumber:object:in:!private-printing!public! !
!WebGrid categoriesFor: #removeLastColumn!private! !
!WebGrid categoriesFor: #representBinaryOn:!private! !
!WebGrid categoriesFor: #resetSummary!private-printing!public! !
!WebGrid categoriesFor: #rowBlueBlock!private! !
!WebGrid categoriesFor: #rowBlueIfTrue:!public!settings-row! !
!WebGrid categoriesFor: #rowBoldBlock!private! !
!WebGrid categoriesFor: #rowBoldIfTrue:!public!settings-row! !
!WebGrid categoriesFor: #rowGrayBlock!private! !
!WebGrid categoriesFor: #rowGrayIfTrue:!public!settings-row! !
!WebGrid categoriesFor: #rowGreenBlock!private! !
!WebGrid categoriesFor: #rowGreenIfTrue:!public!settings-row! !
!WebGrid categoriesFor: #rowRedBlock!private! !
!WebGrid categoriesFor: #rowRedIfTrue:!public!settings-row! !
!WebGrid categoriesFor: #rowsOnPage!private! !
!WebGrid categoriesFor: #rowsOnPage:!public!settings-row! !
!WebGrid categoriesFor: #rowYellowBlock!private! !
!WebGrid categoriesFor: #rowYellowIfTrue:!public!settings-row! !
!WebGrid categoriesFor: #setNumbering!public!settings-column! !
!WebGrid categoriesFor: #setNumberingOn:!public!settings-column! !
!WebGrid categoriesFor: #setRowAttributesFor:object:!private-printing!public! !
!WebGrid categoriesFor: #settings!private! !
!WebGrid categoriesFor: #settingsAt:!private! !
!WebGrid categoriesFor: #settingsAt:ifAbsent:!private! !
!WebGrid categoriesFor: #settingsAt:put:!private! !
!WebGrid categoriesFor: #shortDates!public!settings-column! !
!WebGrid categoriesFor: #sortAscendingOn:!public!settings-column! !
!WebGrid categoriesFor: #sortColumn!private! !
!WebGrid categoriesFor: #sortColumn:!private! !
!WebGrid categoriesFor: #sortDescendingOn:!public!settings-column! !
!WebGrid categoriesFor: #sortLinkColumn:!private-printing!public! !
!WebGrid categoriesFor: #sortOn:!public!settings-column! !
!WebGrid categoriesFor: #sortOrder!private! !
!WebGrid categoriesFor: #sortOrder:!private! !
!WebGrid categoriesFor: #startTagFor:!private-printing!public! !
!WebGrid categoriesFor: #summaryForColumn:index:object:!private-printing!public! !
!WebGrid categoriesFor: #summaryRow:!public!settings-row! !
!WebGrid categoriesFor: #wasFilterChangedFor:on:!private-testing!public! !
!WebGrid categoriesFor: #width!accessing!public! !
!WebGrid categoriesFor: #width:!accessing!public! !

!WebGrid class methodsFor!

new
	^super new initialize! !
!WebGrid class categoriesFor: #new!instance creation!public! !

