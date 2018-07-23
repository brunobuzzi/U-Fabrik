"Filed out from Dolphin Smalltalk 7"!

SSWDBTable subclass: #SSWDBInheritedTable
	instanceVariableNames: 'classField'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBInheritedTable guid: (GUID fromString: '{266e4dcd-398e-11d5-b1df-444553540000}')!
SSWDBInheritedTable comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBInheritedTable categoriesForClass!Unclassified! !
!SSWDBInheritedTable methodsFor!

classField

	"10/4/2001
	
	classField stores the SSWDBField which defines which class of object a row represents.
	Note this is also a member of the receiver's controlFields (see setDefaultClassField)
	but is additionally held in this instance variable for efficient access"
	
	^classField!

classField: anSSWDBField

	"10/4/2001
	
	classField stores the SSWDBField which defines which class of object a row represents.
	Note this is also a member of the receiver's controlFields (see setDefaultClassField)
	but is additionally held in this instance variable for efficient access"
	
	classField := anSSWDBField!

initializeIn: anSSWReStore

	"19/4/2001

	Overriden to setup the classField"

	super initializeIn: anSSWReStore.
	self setDefaultClassField!

instanceClassFromRow: aDBRow

	"Private - Determine the class to use from the row"
	
	^self classField convertValue: (aDBRow atField: self classField)!

setDefaultClassField

	"Created 10/4/2001
	Modified 12/9/2001		Use dialect name transformation (issue#0007)"
	
	| field |
	
	field := SSWDBStaticField new.
	
	field
		table: self;
		accessor: SSWDBClassAccessor new;
		name: (self sqlDialect transformInstVarName: field accessor nameInDB);
		targetClass: Metaclass.
	
	self classField: field.
	self controlFields add: field!

withAllFields

	"Return a table equivalent to the receiver but containing all possible fields.	
	For an inherited table, need to include fields from table-sharing subclasses"

	| withAllFields |

	withAllFields := self copy.
	withAllFields dataFields: self dataFields copy.

	self instanceClass subclassesInheritingPersistency do:
		[ :cls || table |
		table := self reStore tableForClass: cls.
		table dataFields do: 
			[ :field | 
			(withAllFields hasFieldAccessing: field accessor name) ifFalse: 
				[withAllFields dataFields add: field]]].
	
	^withAllFields! !
!SSWDBInheritedTable categoriesFor: #classField!accessing!public! !
!SSWDBInheritedTable categoriesFor: #classField:!accessing!public! !
!SSWDBInheritedTable categoriesFor: #initializeIn:!initializing!public! !
!SSWDBInheritedTable categoriesFor: #instanceClassFromRow:!instance creation!private! !
!SSWDBInheritedTable categoriesFor: #setDefaultClassField!defining!public! !
!SSWDBInheritedTable categoriesFor: #withAllFields!evaluating!public! !

