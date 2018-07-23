"Filed out from Dolphin Smalltalk 7"!

SSWDBTableComponent subclass: #SSWDBField
	instanceVariableNames: 'name isDependent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBField guid: (GUID fromString: '{266e4dd6-398e-11d5-b1df-444553540000}')!
SSWDBField comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBField categoriesForClass!Unclassified! !
!SSWDBField methodsFor!

= anSSWDBField

	"27/4/2002"

	^self == anSSWDBField 
		or: [anSSWDBField notNil and: [self table = anSSWDBField table and: [self name = anSSWDBField name]]]!

aboutToBeUnstored: anObject

	"30/9/2001

	Delete the component of anObject referenced by the receiver, if dependent"

	self isDependent ifTrue: [(self accessor valueIn: anObject) unstore]
!

beDependent

	"24/9/2001"

	self isDependent: true!

fieldNamed: aString

	"27/4/02

	Polymorphic with field collections"

	^self name = aString 
		ifTrue: [self]
		ifFalse: [nil]!

forUpdate

	"17/9/2001	(issue#0009)

	Return a field equivalent to the receiver, but for use in an Update query.
	At present, ReStore only supports updates against one table (i.e. no joins).
	Hence the <table name>. prefix is unnecessary in update queries
	 - in fact it is specifically disallowed in some DBs"

	"An unquoted version of the name sufficies"
	^self name asUnquotedString!

hash

	"27/4/2002"

	^self table hash bitXor: self name hash!

isDependent

	"24/9/2001
	
	isDependent stores a Boolean indicating whether the receiver is marked as 'dependent'
	 - whether the target object of the receiver depends on its source row for its existence"
	
	^isDependent
!

isDependent: aBoolean

	"24/9/2001
	
	isDependent stores a Boolean indicating whether the receiver is marked as 'dependent'
	 - whether the target object of the receiver depends on its source row for its existence"
	
	isDependent := aBoolean
!

name

	"5/8/2000
	
	name stores the name of this field"
	
	^name!

name: aString

	"5/8/2000
	
	name stores the name of this field"
	
	name := aString!

printOn: aStream

	"6/8/2000"

	super printOn: aStream.

	aStream
		nextPutAll: '>>';
		nextPutAll: self name!

requiresAliasing

	"Return whether this field always requires aliasing"
	^false!

writeAliasedSQLOn: aStream

	"5/8/2000

	For situations where duplicate field names are anticipated
	- write the SQL of the receiver on aStream, but use aliased names to force uniqueness"
	
	aStream nextPutAliasedField: self!

writeSQLDefinitionOn: aStream

	"9/3/01"
	
	aStream
		nextPutAll: self name!

writeSQLOn: aStream

	"5/8/2000
	
	Use <table name>.<field name> notation to avoid ambiguity"

	self table writeSQLNameOn: aStream.

	aStream 
		nextPut: $.;
		nextPutAll: self name! !
!SSWDBField categoriesFor: #=!comparing!public! !
!SSWDBField categoriesFor: #aboutToBeUnstored:!actions!public! !
!SSWDBField categoriesFor: #beDependent!defining!public! !
!SSWDBField categoriesFor: #fieldNamed:!accessing!public! !
!SSWDBField categoriesFor: #forUpdate!accessing!public! !
!SSWDBField categoriesFor: #hash!comparing!public! !
!SSWDBField categoriesFor: #isDependent!accessing!public! !
!SSWDBField categoriesFor: #isDependent:!accessing!public! !
!SSWDBField categoriesFor: #name!accessing!public! !
!SSWDBField categoriesFor: #name:!accessing!public! !
!SSWDBField categoriesFor: #printOn:!printing!public! !
!SSWDBField categoriesFor: #requiresAliasing!public!testing! !
!SSWDBField categoriesFor: #writeAliasedSQLOn:!output!public! !
!SSWDBField categoriesFor: #writeSQLDefinitionOn:!output!public! !
!SSWDBField categoriesFor: #writeSQLOn:!output!public! !

!SSWDBField class methodsFor!

new

	"24/9/2001"

	^super new
		isDependent: false;
		yourself! !
!SSWDBField class categoriesFor: #new!instance creation!public! !

