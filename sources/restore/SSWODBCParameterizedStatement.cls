"Filed out from Dolphin Smalltalk 7"!

DBParameterizedStatement subclass: #SSWODBCParameterizedStatement
	instanceVariableNames: 'query'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWODBCParameterizedStatement guid: (GUID fromString: '{fe2079c2-ac50-11d5-b1e0-444553540000}')!
SSWODBCParameterizedStatement comment: ''!
!SSWODBCParameterizedStatement categoriesForClass!Unclassified! !
!SSWODBCParameterizedStatement methodsFor!

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

parameters

	"18/9/2001

	Overriden to use SSWDBODBCFields; see superclass implementation for comment"

	parameters == nil ifTrue: 
		[parameters := (paramCols collect: [:col | SSWODBCField newForCol: col statement: self]) asArray.
		self setParams].

	^parameters!

query

	"25/4/2002 

	query stores the SSWSQLQuery which the statement is prepared to execute"

	^query!

query: anSSWSQLQuery

	"25/4/2002 

	query stores the SSWSQLQuery which the statement is prepared to execute"

	query := anSSWSQLQuery!

setParams

	"Created for issue 120-002

	Reimplemented to force use of SQL_PARAM_INPUT parameter type
	(default/input-output type causing errors with SQLServer)"

	"Private - Bind parameter columns for a prepared SQL statement so that when we 
	subsequently fill the buffer fields the statement is ready to exec. Normally only done 
	just before first exec (from #parameters)."

	1 to: paramCols size
		do: 
			[:each | 
			| buf col field |
			col := paramCols at: each.
			field := parameters at: each.
			buf := field fieldBuf.
			self dbCheckException: (ODBCLibrary default 
						sqlBindParameter: self allocatedHandle
						parameterNumber: each
						inputOutputType: SQL_PARAM_INPUT
						valueType: SQL_C_DEFAULT
						parameterType: col type
						columnSize: col precision
						decimalDigits: col scale
						parameterValuePtr: buf
						bufferLength: buf byteSize
						strLenOrIndPtr: field lengthBuf)]
!

sqlDialect

	"18/9/2001 

	Derive from the parent connection"

	^self parent sqlDialect! !
!SSWODBCParameterizedStatement categoriesFor: #dbCheckException:!exceptions!private! !
!SSWODBCParameterizedStatement categoriesFor: #describeCols:!accessing!public! !
!SSWODBCParameterizedStatement categoriesFor: #parameters!accessing!private! !
!SSWODBCParameterizedStatement categoriesFor: #query!accessing!public! !
!SSWODBCParameterizedStatement categoriesFor: #query:!accessing!public! !
!SSWODBCParameterizedStatement categoriesFor: #setParams!accessing!public! !
!SSWODBCParameterizedStatement categoriesFor: #sqlDialect!accessing!public! !

