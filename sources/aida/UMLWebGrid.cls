"Filed out from Dolphin Smalltalk 7"!

WebGrid subclass: #UMLWebGrid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLWebGrid guid: (GUID fromString: '{76d816cc-3949-4678-a068-c71d56d10883}')!
UMLWebGrid comment: ''!
!UMLWebGrid categoriesForClass!Unclassified! !
!UMLWebGrid methodsFor!

addNewColumn

	self columns add: ((UMLWebGridColumn newOn: self) id: (self columns size + 1))!

buildTable	

	super buildTable.

	self addBreak.
!

buildTableRows
	| inx objects pageLength backColor textColor |
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
		backColor := 'background-color: ', (inx even ifTrue: [self uFabrikWebPreferences listEvenColor] ifFalse: [self uFabrikWebPreferences listOddColor]).
		textColor := '; color: ', (inx even ifTrue: [self uFabrikWebPreferences listEvenTextColor] ifFalse: [self uFabrikWebPreferences listOddTextColor]).
		self row style: backColor, textColor.
		inx ~= objects size ifTrue: [self newRow].
		inx := inx + 1 ]!

printColumn: aColumn index: aNumber object: anObject in: anElement
	| start permissionMethod |

	aColumn align notNil ifTrue: [anElement align: aColumn align].
	aColumn isNumbered  ifTrue: 
		[start := self hasPages ifTrue: [(self page-1) * self rowsOnPage] ifFalse: [0].
		^self printNumber: start+aNumber object: anObject in: anElement].
	aColumn isCheckboxed  ifTrue: [^self printCheckboxIndex: aNumber object: anObject in: anElement].
	aColumn hasLink 
	ifTrue: [permissionMethod := ('canAccess', anObject className, ':') asSymbol.
		(self app observee canUnderstand: permissionMethod) 
			ifFalse: [^self printLinkTo: anObject column: aColumn in: anElement]
			ifTrue: [(self app observee vmPerform: permissionMethod withArguments: (Array with: self app umlApplicationUser)) smalltalkObject
				ifTrue: [^self printLinkTo: anObject column: aColumn in: anElement] 
				ifFalse: [] ]]. 
	aColumn hasAddBlock ifTrue: [^anElement add: (aColumn addBlock value: anObject) printUMLFormat].
	anElement addText: 
		(self startTagFor: anObject), (aColumn viewBlock value: anObject) printUMLFormat , (self endTagFor: anObject)!

sortColumnsIfNessesary
	| column | 

	 self sortColumn isNil ifTrue: [^nil].
	column := self columns at: self sortColumn.
	column aspect isNil ifTrue: [^nil].
	self collection: 
	((self sortOrder = #ascending) 
		ifTrue: [self collection asSortedCollection: [:a :b | 
			(((a canUnderstand: column aspect) or: [a hasVariableNamed: column aspect]) and: [(b canUnderstand: column aspect) or: [b hasVariableNamed: column aspect]])
			ifTrue: [(a vmPerform: column aspect) smalltalkObject <= (b vmPerform: column aspect) smalltalkObject]
			ifFalse:[a printObjectName <= b printObjectName]]] 
		ifFalse: [self collection asSortedCollection: [:a :b | 
			(((a canUnderstand: column aspect) or: [a hasVariableNamed: column aspect]) and: [(b canUnderstand: column aspect) or: [b hasVariableNamed: column aspect]])
			ifTrue: [(a vmPerform: column aspect) smalltalkObject >= (b vmPerform: column aspect) smalltalkObject]
			ifFalse:[a printObjectName <= b printObjectName]]])! !
!UMLWebGrid categoriesFor: #addNewColumn!private! !
!UMLWebGrid categoriesFor: #buildTable!private-printing!public! !
!UMLWebGrid categoriesFor: #buildTableRows!css style!private-printing!public! !
!UMLWebGrid categoriesFor: #printColumn:index:object:in:!private-printing!public! !
!UMLWebGrid categoriesFor: #sortColumnsIfNessesary!aida port error!private-printing!public! !

