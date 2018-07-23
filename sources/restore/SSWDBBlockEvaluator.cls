"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBBlockEvaluator
	instanceVariableNames: 'parser currentClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBBlockEvaluator guid: (GUID fromString: '{5a3e3dcc-3990-11d5-b1df-444553540000}')!
SSWDBBlockEvaluator comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBBlockEvaluator categoriesForClass!Unclassified! !
!SSWDBBlockEvaluator methodsFor!

& aValue

	"9/4/2001
	
	Only sent in case of an implicit '= true' expression (or an error)"

	^self implicitEqualsTrue & aValue!

_id

	"18/4/2001
	
	Override to handle as DNU"
	
	^self doesNotUnderstand: (Message selector: #_id arguments: #())!

| aValue

	"9/4/2001
	
	Only sent in case of an implicit '= true' expression (or an error)"

	^self implicitEqualsTrue | aValue!

~= anObject

	"14/8/2000
	
	An SQL comparator - parse it"
	
	^self doesNotUnderstand: (Message selector: #~= arguments: (Array with: anObject))!

< anObject

	"14/8/2000
	
	An SQL comparator - parse it"
	
	^self doesNotUnderstand: (Message selector: #< arguments: (Array with: anObject))!

<= anObject

	"14/8/2000
	
	An SQL comparator - parse it"
	
	^self doesNotUnderstand: (Message selector: #<= arguments: (Array with: anObject))!

= anObject

	"14/8/2000
	
	Either An SQL comparator (parse it) or an indirect send from #includes:"
	
	| frame |
	
	"If this message was sent from #includes:, then need to turn this into an includedIn:"
	frame := self sswFrameExecuting: #includes: in: Collection.
	
	^(frame ~= nil and: [frame arguments identityIncludes: self])
		ifTrue: [frame return: (self includedIn: frame receiver)]
		ifFalse: [self doesNotUnderstand: (Message selector: #= arguments: (Array with: anObject))]!

> anObject

	"14/8/2000
	
	An SQL comparator - parse it"
	
	^self doesNotUnderstand: (Message selector: #> arguments: (Array with: anObject))!

>= anObject

	"14/8/2000
	
	An SQL comparator - parse it"
	
	^self doesNotUnderstand: (Message selector: #>= arguments: (Array with: anObject))!

applyFunction: aString

	"14/8/2000
	
	Apply the given SQL function String to the finalField"
	
	self applyFunction: aString withArguments: #()!

applyFunction: aString withArguments: aCollection

	"14/8/2000
	
	Apply the given SQL function String to the finalField"
	
	self hasFinalField
		ifTrue: [self finalField: (self lastFinalField withFunction: aString arguments: aCollection)]
		ifFalse: [self parseError: 'No Final Field found']!

at: anIndex

	"3/4/01
	
	SQL does not differentiate between 1-char Strings and Characters.
	Therefore turn this into a midString:from: extraction of a single char"
	
	^self midString: 1 from: anIndex!

between: min and: max

	"16/4/2001

	Special case 2-arg comparator. Handle manually"

	| function |

	function := self reStore sqlDialect sqlFunctionFor: #between:and:.
	self applyFunction: function withArguments: (Array with: min with: max).

	^SSWSQLCondition fieldOnly: self finalField!

class

	"18/4/2001
	
	Override to handle as DNU - enables comparions based on class
	for persistent class hierarchies.
	
	NB complicates debugging/inspection - see isKindOf:, printOn:"
	
	^self doesNotUnderstand: (Message selector: #class arguments: #())!

copyFrom: startPos to: endPos

	"14/8/2000
	
	Turn into a midString:from:"
	
	self midString: ((endPos - startPos) + 1) from: startPos!

currentClass

	"21/1/2001
	
	currentClass stores the class of object which is the receiver of the next message in the block being parsed"
	
	^currentClass!

currentClass: aClass

	"21/1/2001
	
	currentClass stores the class of object which is the receiver of the next message in the block being parsed"
	
	currentClass := aClass!

currentTable

	"14/8/2000
	
	Return the table associated with the currentClass. By default, this is deduced from the reStore.
	Subclasses which have more complex requirements may override"

	^self reStore tableForClass: self currentClass!

doesNotUnderstand: aMessage

	"14/8/2000"

	| selector arguments function field |
	
	selector := aMessage selector.
	arguments := aMessage arguments.
	
	"If we have a finalField, attempt to interpret selector as a function message send"
	self hasFinalField ifTrue:
		[function := self reStore sqlDialect sqlFunctionFor: selector.
		function = nil ifFalse: [^self applyFunction: function withArguments: arguments]].

	arguments size > 1 ifTrue: [self parseError: 'Cannot support more than one comparison argument'].
	(arguments isEmpty not and: [selector last = $:]) ifTrue: 
		[field := self currentTable fieldAccessing: (selector copyFrom: 1 to: (selector size - 1)) asSymbol.
		field notNil ifTrue: [^(self perform: (selector copyFrom: 1 to: (selector size - 1)) asSymbol) value: arguments first]].

	^arguments isEmpty
	ifTrue:
		[field := self currentTable fieldAccessing: selector.
		field isNil 
		ifTrue: 
			[self parseError: 'Undefined accessor']
		ifFalse: 
			[(field targetClass isPersistentIn: self reStore)
				ifTrue: [self newBlockReceiverFrom: field]
				ifFalse: [self finalField: (SSWDBQueryTableField forField: field in: self currentTable)]]]
	ifFalse:
		[| argument |
		argument := aMessage arguments first.
		(argument isKindOf: SSWDBBlockEvaluator) ifTrue: [argument := argument finalField].
			SSWSQLCondition 
				field: self finalField 
				is: (SSWSQLOperator messageSelector: selector)
				to: argument]!

finalField

	"14/8/2000
	
	Return the last field that is referenced when parsing a block; usually also the subject of an operator, e.g.
	[ :cd | cd label address postcode = 'WC1 1AA'] - finalField would be POSTCODE.
	
	Subclasses should implement depending on their requirements"

	self subclassResponsibility!

finalField: anSSWDBQueryField

	"14/8/2000
	
	Store the last field that is referenced when parsing a block; usually also the subject of an operator, e.g.
	[ :cd | cd label address postcode = 'WC1 1AA'] - finalField would be POSTCODE.
	
	Subclasses should implement depending on their requirements"

	self subclassResponsibility!

first

	"3/4/01
	
	Turn into at: 1"
	
	^self at: 1!

generalParseError

	"21/3/2001
	
	Raise a general error message"
	
	self error: 'unknown problem'!

hasFinalField

	"21/3/2001
	
	Subclasses should implement according to their support for finalField"
	
	^self subclassResponsibility!

implicitEqualsTrue

	"9/4/2001
	
	If the receiver has parsed an implicait Boolean test (e.g. [ :cd | cd isDeleted]),
	then the eventual result will be the receiver instead of an SQLCondition.
	
	Transform the receiver into the correct Condition by sending the implied '= true'	"

	^(self hasFinalField and: [self peekFinalField targetClass == Boolean])
		ifTrue: [self = true]
		ifFalse: [self generalParseError]!

includedIn: aCollection

	"21/3/2001
	
	Smalltalk message #includedIn: = SQL IN - parse it"
	
	^self doesNotUnderstand: (Message selector: #includedIn: arguments: (Array with: aCollection))!

indexOf: aCharacter

	"4/3/01
	
	SQL does not differentiate between Characters and Strings.
	Turn into indexOfSubCollection: (parsed via DNU)"
	
	^self indexOfSubCollection: (String with: aCharacter)!

isEmpty

	"27/3/2001
	
	Turn into the message sequence 'size = 0';
	or could be sent following an implicit = true"
	
	^(self hasFinalField and: [self peekFinalField targetClass == Boolean])
		ifTrue: [self = true]
		ifFalse: [self size = 0]!

isForModify

	^self propertyAt: #isForModify ifAbsent: [false]!

isForModify: aBoolean

	self propertyAt: #isForModify put: aBoolean!

isKindOf: aClass

	"18/4/2001
	
	Overriden due to 'odd' behaviour of #class in the receiver"
	
	^(Array 
		with: SSWDBBlockEvaluator
		with: SSWDBBlockArgument
		with: SSWDBBlockReceiver) includes: aClass!

isString 

	| frame |
	
	"If this message was sent from #includes:, then need to turn this into an includedIn:"
	frame := self sswFrameExecuting: #includes: in: Collection.
	frame ~= nil ifTrue: [frame return: (self includedIn: frame receiver)].
		
	^self generalParseError!

leftString: lenInteger

	"14/8/2000
	
	Dolphin #leftString:from: message - turn into a midString:from:"
	
	^self midString: lenInteger from: 1!

like: anObject

	"14/8/2000
	
	An SQL comparator - parse it.
	like: is essentially an implementation of the SQL LIKE comparator, 
	therefore assume SQL-compliant wildcards (% and _)"
	
	^self doesNotUnderstand: (Message selector: #like: arguments: (Array with: anObject))!

matches: aString

	"14/8/2000

	Essentially the inverse of match: (ie pattern is the argument, not the receiver)	
	Equivalent to like:, but translate Dolphin-specific wildcards"
	
	^self like: 
		(aString collect: 
			[ :char || fixedChar |
			fixedChar := char.
			char = $* ifTrue: [fixedChar := $%].
			char = $# ifTrue: [fixedChar = $_].
			fixedChar])!

midString: lenInteger from: startPos

	"14/8/2000
	
	Dolphin #midString:from: message - turn into SQL function via DNU"
	
	^self doesNotUnderstand: (Message selector: #midString:from: arguments: (Array with: lenInteger with: startPos))!

newBlockReceiverFrom: aField

	"Patched for issue 120-009
	
	Create and return a new SSWDBBlockReceiver to receive (and parse)
	messages for the class of object which is referenced by aField.
	Also update the parser"

	| table occurrences newReceiver |

	table := self reStore tableForClass: aField targetClass.

	"Check for duplicate appearances (via different links) of the same table. Alias accordingly"
	(self parser referencedTables includesField: aField) ifFalse: 
		[occurrences := self parser referencedTables occurrencesOf: table.
		occurrences > 0 ifTrue: [table := SSWDBQueryTable forRepetition: occurrences of: table]].

	self parser referencedTables add: table joinedWithField: aField.

	newReceiver := SSWDBBlockReceiver new.

	newReceiver
		parser: self parser;
		currentClass: aField targetClass;
		currentTable: table.

	self isForModify ifTrue:
		[newReceiver
			finalField: (SSWDBQueryTableField forField: aField in: self currentTable);
			isForModify: true].

	^newReceiver!

not

	"9/4/2001
	
	Only sent in case of an implicit '= true' expression (or an error)"

	^self implicitEqualsTrue not!

parseError: aString

	"21/3/2001
	
	Raise a suitable error"
	
	^self parseError: aString with: nil!

parseError: aString with: anObject

	"Raise a suitable error"
	
	^SSWDBParseError signal: ('Cannot parse block - ', aString) with: anObject!

parser

	^parser!

parser: anSSWDBBlockParser

	parser := anSSWDBBlockParser!

printOn: aStream

	"18/4/2001
	
	Overriden due to 'odd' behaviour of #class in the receiver"

	^'a SSWDBBlockEvaluator'!

qAnd: aBlock

	"9/4/2001
	
	Only sent in case of an implicit '= true' expression (or an error)"

	^self implicitEqualsTrue qAnd: aBlock!

qOr: aBlock

	"9/4/2001
	
	Only sent in case of an implicit '= true' expression (or an error)"

	^self implicitEqualsTrue qOr: aBlock!

replaceFrom: start length: length with: replacementElements

	"3/4/01
	
	Parse via doesNotUnderstand:"
	
	^self doesNotUnderstand: 
		(Message selector: #replaceFrom:length:with: arguments: (Array with: start with: length with: replacementElements))!

replaceFrom: start to: stop with: replacementElements startingAt: startAt

	"3/4/01
	
	Turn this into replaceFrom:length:with:, which is supported by some DBs"
	
	| length |
	
	length := (stop - start) + 1.
	
	^self replaceFrom: start length: length with: (replacementElements copyFrom: startAt to: ((startAt + length) - 1))!

reStore

	"14/8/2000
	
	reStore stores the SSWReStore for which the receiver parses blocks"
	
	^self parser reStore!

size

	"14/8/2000
	
	Override superclass method to turn into SQL function via DNU"

	| frame |

	"size is the first message sent to the argument during a String match: message"
	frame := self sswFrameExecuting: #match: in: String.

	^(frame ~= nil and: [frame arguments identityIncludes: self])
		ifTrue: [frame return: (self matches: frame receiver)]
		ifFalse: [self doesNotUnderstand: (Message selector: #size arguments: #())]!

sqlAnd: anSQLCondition

	"9/4/2001
	
	Only sent in case of an implicit '= true' expression (or an error)"
	
	^self implicitEqualsTrue sqlAnd: anSQLCondition
	
	!

sqlOr: anSQLCondition

	"9/4/2001
	
	Only sent in case of an implicit '= true' expression (or an error)"
	
	^self implicitEqualsTrue sqlOr: anSQLCondition
	
	!

value: anObject

	"21/1/2001
	
	An SQL updater - parse it"
	
	^self doesNotUnderstand: (Message selector: #value: arguments: (Array with: anObject))!

writeSQLOn: aStream

	"10/4/2001
	
	If the receiver has been sent this message,
	then the receiver did not finish parsing a block due to an implicit ' = true'.
	
	Complete the translation and forward to the resulting condition.
	Note we reinstate the finalField, since if this message has been received
	it will possibly be sent again - need to maintain the receiver's state"
	
	| field condition |
	
	field := self peekFinalField.
	condition := self implicitEqualsTrue.
	self finalField: field.
	
	^condition writeSQLOn: aStream! !
!SSWDBBlockEvaluator categoriesFor: #&!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #_id!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #|!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #~=!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #<!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #<=!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #=!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #>!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #>=!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #applyFunction:!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #applyFunction:withArguments:!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #at:!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #between:and:!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #class!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #copyFrom:to:!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #currentClass!accessing!public! !
!SSWDBBlockEvaluator categoriesFor: #currentClass:!accessing!public! !
!SSWDBBlockEvaluator categoriesFor: #currentTable!evaluating!public! !
!SSWDBBlockEvaluator categoriesFor: #doesNotUnderstand:!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #finalField!accessing!public! !
!SSWDBBlockEvaluator categoriesFor: #finalField:!accessing!public! !
!SSWDBBlockEvaluator categoriesFor: #first!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #generalParseError!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #hasFinalField!public!testing! !
!SSWDBBlockEvaluator categoriesFor: #implicitEqualsTrue!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #includedIn:!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #indexOf:!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #isEmpty!parsing - functions!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #isForModify!accessing!public! !
!SSWDBBlockEvaluator categoriesFor: #isForModify:!accessing!public! !
!SSWDBBlockEvaluator categoriesFor: #isKindOf:!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #isString!public!zzz! !
!SSWDBBlockEvaluator categoriesFor: #leftString:!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #like:!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #matches:!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #midString:from:!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #newBlockReceiverFrom:!evaluating!public! !
!SSWDBBlockEvaluator categoriesFor: #not!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #parseError:!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #parseError:with:!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #parser!accessing!public! !
!SSWDBBlockEvaluator categoriesFor: #parser:!accessing!public! !
!SSWDBBlockEvaluator categoriesFor: #printOn:!parsing - internal!public! !
!SSWDBBlockEvaluator categoriesFor: #qAnd:!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #qOr:!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #replaceFrom:length:with:!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #replaceFrom:to:with:startingAt:!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #reStore!evaluating!public! !
!SSWDBBlockEvaluator categoriesFor: #size!parsing - functions!public! !
!SSWDBBlockEvaluator categoriesFor: #sqlAnd:!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #sqlOr:!parsing - implicit true!public! !
!SSWDBBlockEvaluator categoriesFor: #value:!parsing - comparisons!public! !
!SSWDBBlockEvaluator categoriesFor: #writeSQLOn:!parsing - implicit true!public! !

