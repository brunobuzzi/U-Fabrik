"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBQueryField
	instanceVariableNames: 'field'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBQueryField guid: (GUID fromString: '{266e4dc8-398e-11d5-b1df-444553540000}')!
SSWDBQueryField comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBQueryField categoriesForClass!Unclassified! !
!SSWDBQueryField methodsFor!

accessor

	^self field accessor!

convertValue: aValue

	"23/3/2001
	
	Forward to the real field"
	
	^self field convertValue: aValue!

field

	"14/3/01
	
	The receiver is created to stand in place of a regular SSWDBField 
	See subclasses for when/why this may happen.
	
	field stores the original SSWDBField which the receiver replaces"
	
	^field!

field: anSSWDBField

	"14/3/01
	
	The receiver is created to stand in place of a regular SSWDBField 
	See subclasses for when/why this may happen.
	
	field stores the original SSWDBField which the receiver replaces"

	field := anSSWDBField!

fieldNamed: aString

	"Defer to the real field"
	^self field fieldNamed: aString!

forUpdate

	"17/9/2001

	Forward to the contained field"

	^self field forUpdate!

name

	"23/3/2001
	
	Forward to the real field"
	
	^self field name!

requiresAliasing

	"Defer to the field"
	^self field requiresAliasing!

targetClass

	"9/4/2001
	
	Forward to the real field"
	
	^self field targetClass!

withFunction: aString

	"21/3/2001
	
	Return an SSWDBFunctionField base on the receiver with the given function String"
	
	^self withFunction: aString arguments: #()!

withFunction: aString arguments: aCollection

	"21/3/2001
	
	Return an SSWDBFunctionField base on the receiver with the given function String and arguments"
	
	^SSWDBFunctionField new
		field: self;
		function: aString;
		arguments: aCollection;
		yourself! !
!SSWDBQueryField categoriesFor: #accessor!evaluating!public! !
!SSWDBQueryField categoriesFor: #convertValue:!evaluating!public! !
!SSWDBQueryField categoriesFor: #field!accessing!public! !
!SSWDBQueryField categoriesFor: #field:!accessing!public! !
!SSWDBQueryField categoriesFor: #fieldNamed:!evaluating!public! !
!SSWDBQueryField categoriesFor: #forUpdate!accessing!public! !
!SSWDBQueryField categoriesFor: #name!evaluating!public! !
!SSWDBQueryField categoriesFor: #requiresAliasing!public!testing! !
!SSWDBQueryField categoriesFor: #targetClass!evaluating!public! !
!SSWDBQueryField categoriesFor: #withFunction:!evaluating!public! !
!SSWDBQueryField categoriesFor: #withFunction:arguments:!evaluating!public! !

