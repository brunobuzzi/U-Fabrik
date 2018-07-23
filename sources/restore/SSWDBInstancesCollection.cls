"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBInstancesCollection
	instanceVariableNames: 'reStore instancesClass parser sortBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBInstancesCollection guid: (GUID fromString: '{5a3e3dd0-3990-11d5-b1df-444553540000}')!
SSWDBInstancesCollection comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBInstancesCollection categoriesForClass!Unclassified! !
!SSWDBInstancesCollection methodsFor!

addAll: anSSWDBInstancesCollection

	"29/3/2001

	'Add' the given instances collection to the receiver so that its elements
	are added to the receiver's following a query"

	"Can only add same/inherited classes"
	(self instancesClass = anSSWDBInstancesCollection instancesClass or:
		[self instancesClass = 
			(self reStore tableForClass: anSSWDBInstancesCollection instancesClass) rootClass])
				ifFalse: [self error: 'Cannot add unrelated instances collections'].

	self parser orWith: anSSWDBInstancesCollection parser.

	"Behave like a collection and return the added object"
	^anSSWDBInstancesCollection!

allSatisfy: aBlock

	"27/3/2001
	
	Use two queries"
	
	^self size = (self satisfying: aBlock) size!

anySatisfy: aBlock

	"27/3/2001
	
	Use one query"
	
	^(self satisfying: aBlock) isEmpty not!

asOrderedCollection

	^self collectInto: (OrderedCollection new: 16) distinct: false!

asSet

	"23/3/2001"
	
	^self collectAsSet: [ :object | object]!

asSortedCollection

	"If a sort is already defined, use that, else use the standard sort block"

	^self isSorted
		ifTrue: [self collectInto: (SortedCollection sortBlock: self sortBlock) distinct: false]
		ifFalse: [self asSortedCollection: SortedCollection]!

asSortedCollection: aTwoArgBlock

	^self copy
		sortBlock: aTwoArgBlock;
		asSortedCollection!

collect: collectBlock

	"23/3/2001"
	
	^self collect: collectBlock into: (OrderedCollection new: 16) distinct: false!

collect: collectBlock into: aCollection distinct: aBoolean

	"Patched for issue 120-014

	Private - Add the objects resulting from collectBlock to aCollection.
	If aBoolean is true, restrict the results to distinct entries.
	Return aCollection"
	
	| query |
	
	query := self parser collectQueryFrom: collectBlock.

	"If a field-based collect block e.g. [ :cd | cd title] then there will be only one query field.
	If a 'target object' collect block e.g. [ :cd | cd] then the query field will be 'all fields in table'		"
	query fields isAllInTable
	ifTrue:
		[self reStore fetchObjectsOfClass: self parser argumentClass withQuery: query into: aCollection]
	ifFalse:
		[| field |	
		aBoolean ifTrue: [query fields at: 1 put: (query fields first withFunction: 'DISTINCT(%1)')].
		field := query fields first.
	
		self reStore rowsFromQuery: query do: 
			[ :row || dbValue |
			dbValue := row atIndex: 1.
			aCollection add: (field convertValue: dbValue)]].
		
	^aCollection!

collectAsSet: collectBlock

	"23/3/2001
	
	Evaluate each elemen with collectBlock, returning the result as a Set.
	This is more efficient than e.g.
		(self collect: [ :cd | cd artistName]) asSet 
	...where a high level of duplication is expected"
	
	^self collect: collectBlock into: (Set new: 16) distinct: true!

collectInto: aCollection distinct: aBoolean

	"Private - Add the objects resulting from the receiver to aCollection.
	If aBoolean is true, restrict the results to distinct entries.
	Return aCollection"
	
	^self collect: [ :object | object] into: aCollection distinct: aBoolean!

copy

	"27/3/2001"
	
	^self shallowCopy
		parser: self parser copy;
		yourself
		!

createParser

	"23/3/2001"
	
	self parser: (SSWDBBlockParser newForReStore: self reStore argumentClass: self instancesClass)
!

detect: detectBlock

	"23/3/2001"

	^self detect: detectBlock ifNone: [self errorNotFound: detectBlock]!

detect: detectBlock ifNone: noneBlock

	"23/3/2001"

	| query results |
	
	query := self parser selectQueryFrom: detectBlock.

	^self reStore fetchObjectOfClass: self instancesClass withQuery: query ifNone: noneBlock!

do: aBlock

	"29/3/2001
	
	Use the streamed #do: to avoid creating a (potentially large) temporary collection"
	
	| stream |

	stream := self readStream.

	[stream do: aBlock] ensure: [stream close]!

first

	"9/4/2001"
	
	^self detect: [ :each | each _id ~= nil]!

instancesClass

	"23/3/2001
	
	instancesClass stores the Class of persistent object which form the receiver's 'elements'	"
	
	^instancesClass!

instancesClass: aClass

	"23/3/2001
	
	instancesClass stores the Class of persistent object which form the receiver's 'elements'	"
	
	instancesClass := aClass!

isEmpty

	"23/3/2001"
	
	^self size = 0!

isSorted

	^self sortBlock notNil!

modify: aBlock

	"29/3/2001
	
	Iterate over the elements in the database, modifying each according to aBlock.
	e.g. say the receiver represents all CDs with no artist assigned, then:

		self modify: [ :cd | cd artist: 'Unknown']
		
	...would update all instances in the database.	This can be compared to do:, except that:	
	 - modify: does not bring all instances into memory (uses a single query)
	 - aBlock must be a reasonably simple inst var update
	 - the number of modified rows is returned as the result"
	
	| query rows |
	
	query := self parser modifyQueryFrom: aBlock.
	
	self reStore evaluateAsNestableTxn: [rows := self reStore executeQuery: query. true].
	
	^rows!

parser

	"23/3/2001
	
	parser stores an SSWDBBlockParser which parses enumerating blocks
	to generate corresponding SSWSQLQueries"
	
	^parser!

parser: anSSWDBBlockParser

	"23/3/2001
	
	parser stores an SSWDBBlockParser which parses enumerating blocks
	to generate corresponding SSWSQLQueries"
	
	parser := anSSWDBBlockParser!

qualifyWith: aBlock

	"27/3/2001
	
	Modify the receiver's parser so that it always qualifies any query it creates
	with the conditions extracted from aBlock"
	
	self parser qualifyWith: aBlock
!

readStream

	"28/3/2001
	
	Create and return an appropraite ReadStream-like object on the receiver"
	
	^SSWDBReadStream on: self!

reject: rejectBlock

	"23/3/2001"
	
	| query results |
	
	query := self parser rejectQueryFrom: rejectBlock.
	
	results := OrderedCollection new.
		
	self reStore fetchObjectsOfClass: self instancesClass withQuery: query into: results.
	
	^results!

reStore

	"23/3/2001
	
	reStore stores the SSWReStore in which the receiver's 'elements' reside"
	
	^reStore!

reStore: anSSWReStore

	"23/3/2001
	
	reStore stores the SSWReStore in which the receiver's 'elements' reside"
	
	reStore := anSSWReStore!

resultSet

	"28/3/2001
	
	Return a DBResultSet (open query results) onto the collection of rows
	represented by the receiver"
	
	| query |
	
	query := self parser collectQueryFrom: [ :elem | elem].
	
	"Always use #keysetDriven to give a flexible, efficient result set"
	^self reStore executeQuery: query cursorType: #keysetDriven!

satisfying: aOneArgBlock

	"27/3/2001
	
	Return a copy of the receiver, but with its members qualified by aOneArgBlock,
	in addition to the receiver's existing qualifiers (if any).
	
	This is similar to a select:, but returns another SSWDBInstancesCollection,
	rather than a real collection of real instances.	Useful as an enumerating 'step' e.g.
		(anInstancesCollection select: [ :cd | cd label name = '4AD']) collect: [ :cd | cd title]
		(anInstancesCollection satisfying: [ :cd | cd label name = '4AD']) collect: [ :cd | cd title]
	Both would get the title of all CDs released by 4AD, but the second would do this
	without having to fault in all CD instances from the database"
	
	^self copy
		qualifyWith: aOneArgBlock;
		yourself!

select: selectBlock

	"23/3/2001"
	
	| query results |
	
	query := self parser selectQueryFrom: selectBlock.
	
	results := OrderedCollection new.
			
	self reStore fetchObjectsOfClass: self instancesClass withQuery: query into: results.
	
	^results!

select: selectBlock thenCollect: collectBlock

	"23/3/2001
	
	Thie method is compatible with Collection>>select:thenCollect:
	but uses satisfying: to avoid faulting in all instances of the receiver's instanceClass"
	
	^(self satisfying: selectBlock) collect: collectBlock!

size

	"23/3/2001
	
	Evaluate the 'size' (number of persistent instances) of the receiver via a COUNT query"
	
	| query field size |
	
	query := self parser collectQueryFrom: [ :object | object _id].
	query fields at: 1 put: (query fields first withFunction: 'COUNT(%1)').
	query beArithmeticQuery.
			
	self reStore rowsFromQuery: query do: [ :row | size := row atIndex: 1].
	
	^size!

sortBlock

	"Order the receiver's elements by aTwoArgBlock - a 'simple' sort block:
	 - only >, >=, <, <= comparisons (= is redundant and ignored for SQL translation)
	 - only & and | conjunctions
	 - comparisons on same field only

	e.g. 	[ :p1 :p2 | 
		(p1 surname < p2 surname) |  ((p1 surname = p2 surname) & (p1 forename < p2 forename))]"

	^sortBlock!

sortBlock: aTwoArgBlock

	"Order the receiver's elements by aTwoArgBlock - a 'simple' sort block:
	 - only >, >=, <, <= comparisons (= is redundant and ignored for SQL translation)
	 - only & and | conjunctions
	 - comparisons on same field only

	e.g. 	[ :p1 :p2 | 
		(p1 surname < p2 surname) |  ((p1 surname = p2 surname) & (p1 forename < p2 forename))]"

	sortBlock := aTwoArgBlock.

	aTwoArgBlock isNil
		ifTrue: [self parser beUnsorted]
		ifFalse: [self parser sortBlock: aTwoArgBlock]!

table

	"28/3/2001
	
	Return the table associated with the receiver's instancesClass"
	
	"The Parser knows this"
	^self parser argumentTable!

unstore

	"Unstore all elements of the receiver from the database"

	^self unstore: [ :each | each]!

unstore: aBlock

	"Unstore elements of the receiver satisfying aBlock from the database
	Return the number of rows deleted"

	| rows |

	self reStore evaluateAsNestableTxn: 
		[rows := self reStore executeQuery: (self parser deleteQueryFrom: aBlock).
		true].

	^rows!

withoutInheritance

	"18/4/2001
	
	If the receiver's instancesClass has persistent subclasses, then by default
	instances of those subclasses are included in the receiver 'collection'.
	
	Prevent this behaviour by restricting to only elements of the instancesClass"
	
	^self satisfying: [ :each | each class = self instancesClass]! !
!SSWDBInstancesCollection categoriesFor: #addAll:!actions!public! !
!SSWDBInstancesCollection categoriesFor: #allSatisfy:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #anySatisfy:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #asOrderedCollection!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #asSet!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #asSortedCollection!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #asSortedCollection:!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #collect:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #collect:into:distinct:!enumerating!private! !
!SSWDBInstancesCollection categoriesFor: #collectAsSet:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #collectInto:distinct:!enumerating!private! !
!SSWDBInstancesCollection categoriesFor: #copy!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #createParser!initializing!public! !
!SSWDBInstancesCollection categoriesFor: #detect:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #detect:ifNone:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #do:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #first!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #instancesClass!accessing!public! !
!SSWDBInstancesCollection categoriesFor: #instancesClass:!accessing!public! !
!SSWDBInstancesCollection categoriesFor: #isEmpty!public!testing! !
!SSWDBInstancesCollection categoriesFor: #isSorted!public!testing! !
!SSWDBInstancesCollection categoriesFor: #modify:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #parser!accessing!public! !
!SSWDBInstancesCollection categoriesFor: #parser:!accessing!public! !
!SSWDBInstancesCollection categoriesFor: #qualifyWith:!initializing!public! !
!SSWDBInstancesCollection categoriesFor: #readStream!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #reject:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #reStore!accessing!public! !
!SSWDBInstancesCollection categoriesFor: #reStore:!accessing!public! !
!SSWDBInstancesCollection categoriesFor: #resultSet!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #satisfying:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #select:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #select:thenCollect:!enumerating!public! !
!SSWDBInstancesCollection categoriesFor: #size!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #sortBlock!accessing!public! !
!SSWDBInstancesCollection categoriesFor: #sortBlock:!accessing!public! !
!SSWDBInstancesCollection categoriesFor: #table!evaluating!public! !
!SSWDBInstancesCollection categoriesFor: #unstore!actions!public! !
!SSWDBInstancesCollection categoriesFor: #unstore:!actions!public! !
!SSWDBInstancesCollection categoriesFor: #withoutInheritance!evaluating!public! !

!SSWDBInstancesCollection class methodsFor!

forClass: aClass in: anSSWReStore

	"23/3/2001"
	
	^self new
		instancesClass: aClass;
		reStore: anSSWReStore;
		createParser;
		yourself! !
!SSWDBInstancesCollection class categoriesFor: #forClass:in:!instance creation!public! !

