"Filed out from Dolphin Smalltalk 7"!

SSWDBQueryField subclass: #SSWDBFunctionField
	instanceVariableNames: 'function arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBFunctionField guid: (GUID fromString: '{266e4dc9-398e-11d5-b1df-444553540000}')!
SSWDBFunctionField comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBFunctionField categoriesForClass!Unclassified! !
!SSWDBFunctionField methodsFor!

arguments

	"21/3/2001
	
	arguments stores the collection of objects which are the arguments to the receiver's function.
	e.g. in the expression MID(SURNAME, 4, 9) the arguments would be #(4 9)"
	
	^arguments!

arguments: aCollection

	"21/3/2001
	
	arguments stores the collection of objects which are the arguments to the receiver's function.
	e.g. in the expression MID(SURNAME, 4, 9) the arguments would be #(4 9)"
	
	arguments := aCollection!

function

	"21/3/2001
	
	function stores the SQL string of the function applied to the receiver's field,
	with %x placeholders for the arguments (at least one, for the receiver's field)
	e.g. for the expression SIZE(SURNAME), the function would be 'SIZE(%1)'	"
	
	^function!

function: aString

	"21/3/2001
	
	function stores the SQL string of the function applied to the receiver's field,
	with %x placeholders for the arguments (at least one, for the receiver's field)
	e.g. for the expression SIZE(SURNAME), the function would be 'SIZE(%)'	"
	
	function := aString!

requiresAliasing

	"Function fields need aliasing for effective lookup, e.g. COUNT(ID) AS Field1"
	^true!

writeAliasedSQLOn: aStream

	"21/3/2001
	
	The receiver does not support the concept of an 'aliased' name; 
	it either appears in conditions (alias not needed), or if in a result set it will be the sole field"
	
	^aStream nextPutAliasedField: self!

writeSQLOn: aStream

	"21/3/2001"
	
	| funcStream |
	
	funcStream := ReadStream on: self function.
	
	[funcStream atEnd] whileFalse:
		[aStream nextPutAll: (funcStream upTo: $%).
		funcStream atEnd ifFalse:
			[| argIndex |
			argIndex := funcStream next digitValue - 1.
			argIndex = 0
				ifTrue: [self field writeSQLOn: aStream]
				ifFalse: [(self arguments at: argIndex)  writeSQLOn: aStream]]]! !
!SSWDBFunctionField categoriesFor: #arguments!accessing!public! !
!SSWDBFunctionField categoriesFor: #arguments:!accessing!public! !
!SSWDBFunctionField categoriesFor: #function!accessing!public! !
!SSWDBFunctionField categoriesFor: #function:!accessing!public! !
!SSWDBFunctionField categoriesFor: #requiresAliasing!public!testing! !
!SSWDBFunctionField categoriesFor: #writeAliasedSQLOn:!output!public! !
!SSWDBFunctionField categoriesFor: #writeSQLOn:!output!public! !

