"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWODBCPseudoParameterizedStatement
	instanceVariableNames: 'connection parameterisedSQL values statement fields query'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWODBCPseudoParameterizedStatement guid: (GUID fromString: '{a66b4141-aba8-11d5-b1e0-444553540000}')!
SSWODBCPseudoParameterizedStatement comment: ''!
!SSWODBCPseudoParameterizedStatement categoriesForClass!Unclassified! !
!SSWODBCPseudoParameterizedStatement methodsFor!

close

	"18/9/2001

	Forward to the receiver's statement"

	self statement close!

connection

	"17/9/2001

	connection stores the DBConnection in which the receiver statement operates"

	^connection!

connection: aDBConnectionWithDialect

	"17/9/2001

	connection stores the DBConnection in which the receiver statement operates"

	connection := aDBConnectionWithDialect!

exec

	"18/9/2001

	Execute the receiver's sqlString using its statement"

	self statement 
		query: self query;
		exec: self sqlString!

fields

	"18/9/2001

	fields stores an Array of SSWODBCFields representing the fields correspond with
	the parameters of the receiver's parameterisedSQL"

	^fields!

fields: anArray

	"18/9/2001

	fields stores an Array of SSWODBCFields representing the fields correspond with
	the parameters of the receiver's parameterisedSQL"

	fields := anArray!

free

	"18/9/2001

	Forward to the receiver's statement"

	self statement free!

paramCols: aCollection

	"18/9/2001

	Set the fields based on the collection of columns"

	self fields: (aCollection collect: [:col | SSWODBCField newForCol: col statement: self]) asArray!

parameterisedSQL

	"17/9/2001

	parameterisedSQL stores the String of paramterised SQL that the receiver executes,
	e.g. 'select * from table where id = ?'	"

	^parameterisedSQL!

parameterisedSQL: aString

	"17/9/2001

	parameterisedSQL stores the String of paramterised SQL that the receiver executes,
	e.g. 'select * from table where id = ?'	"

	parameterisedSQL := aString!

query

	"25/4/2002 

	query stores the SSWSQLQuery which the statement has executed"

	^query!

query: anSSWSQLQuery

	"25/4/2002 

	query stores the SSWSQLQuery which the statement has executed"

	query := anSSWSQLQuery!

results

	"18/9/2001

	Forward to the receiver's statement"

	^self statement results!

sqlDialect

	"18/9/2001 

	Derive from the parent connection"

	^self connection sqlDialect!

sqlString

	"17/9/2001

	Return the receiver's SQL String - this is the parameterisedSQL filled with the values"

	| readStream writeStream index |

	readStream := ReadStream on: self parameterisedSQL.
	writeStream := SSWSQLWriteStream on: (String new: self parameterisedSQL size).
	writeStream dialect: self sqlDialect.
	index := 1.

	[readStream atEnd] whileFalse:
		[writeStream nextPutAll: (readStream upTo: $?).
		(index <= self values size) ifTrue: 
			[| field |
			field := self fields at: index.
			"Run each value via its corresponding field to handle any necessary mods"
			field value: (self values at: index).
			field value writeSQLOn: writeStream.
			index := index + 1]].

	^writeStream contents!

statement

	"17/9/2001

	statement stores a real DBStatement which the receiver uses to execute queries"

	"Lazy initialized"
	statement == nil ifTrue: [statement := self connection newStatement].

	^statement!

statement: aDBStatement

	"17/9/2001

	statement stores a real DBStatement which the receiver uses to execute queries"

	statement := aDBStatement!

values

	"17/9/2001

	values stores the Collection of objects used to fill out the receiver's parameterisedSQL.
	These should be the same size and order as the parameters ('?') in the parameterisedSQL"

	^values!

values: aCollection

	"17/9/2001

	values stores the Collection of objects used to fill out the receiver's parameterisedSQL.
	These should be the same size and order as the parameters ('?') in the parameterisedSQL"

	values := aCollection! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #close!actions!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #connection!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #connection:!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #exec!actions!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #fields!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #fields:!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #free!actions!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #paramCols:!actions!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #parameterisedSQL!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #parameterisedSQL:!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #query!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #query:!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #results!actions!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #sqlDialect!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #sqlString!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #statement!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #statement:!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #values!accessing!public! !
!SSWODBCPseudoParameterizedStatement categoriesFor: #values:!accessing!public! !

