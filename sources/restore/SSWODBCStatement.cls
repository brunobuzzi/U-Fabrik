"Filed out from Dolphin Smalltalk 7"!

DBStatement subclass: #SSWODBCStatement
	instanceVariableNames: 'query'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWODBCStatement guid: (GUID fromString: '{f2f2c7e1-ac61-11d5-b1e0-444553540000}')!
SSWODBCStatement comment: ''!
!SSWODBCStatement categoriesForClass!Unclassified! !
!SSWODBCStatement methodsFor!

close

	"22/9/2001

	Overriden to translate to 'free' if necessary"

	^self parent sqlDialect shouldFreeStatementsOnClose
		ifTrue: [self free]
		ifFalse: [super close]!

dbCheckException: anIntegerRetCode

	"19/8/2001

	Overriden to revector to parent connection, which may mask certain 'errors' "
	
	^self parent dbCheckException: anIntegerRetCode from: self!

describeCols: columnNumbers 

	"Intercept to set the fields used in the query"

	"Use superclass implementation for string-based querying"
	query isNil ifTrue: [^super describeCols: columnNumbers].

	^SSWDBLookupArray 
		lookup:
			((super describeCols: columnNumbers) collect: 
				[ :colAttr |
				SSWODBCColAttr new
					columnNumber: colAttr columnNumber;
					name: colAttr name;
					type: colAttr type;
					length: colAttr length;
					precision: colAttr precision;
					scale: colAttr scale;
					field: (self query fieldNamed: colAttr name);
					yourself]) 
		with: 
			[ :each | each field]!

execQuery: anSSWSQLQuery

	"25/4/2002"

	self query: anSSWSQLQuery.
	^self exec: (anSSWSQLQuery sqlStringIn: self parent sqlDialect)!

query

	"25/4/2002 

	query stores the SSWSQLQuery which the statement has executed"

	^query!

query: anSSWSQLQuery

	"25/4/2002 

	query stores the SSWSQLQuery which the statement has executed"

	query := anSSWSQLQuery! !
!SSWODBCStatement categoriesFor: #close!operations!private! !
!SSWODBCStatement categoriesFor: #dbCheckException:!exceptions!private! !
!SSWODBCStatement categoriesFor: #describeCols:!accessing!public! !
!SSWODBCStatement categoriesFor: #execQuery:!accessing!public! !
!SSWODBCStatement categoriesFor: #query!accessing!public! !
!SSWODBCStatement categoriesFor: #query:!accessing!public! !

