"Filed out from Dolphin Smalltalk 7"!

SSWDBField subclass: #SSWDBStaticField
	instanceVariableNames: 'targetClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBStaticField guid: (GUID fromString: '{266e4dd7-398e-11d5-b1df-444553540000}')!
SSWDBStaticField comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBStaticField categoriesForClass!Unclassified! !
!SSWDBStaticField methodsFor!

applyDBValue: aValue to: anObject

	"6/8/2000"
		
	self accessor value: (self convertValue: aValue) in: anObject!

applyValueFromRow: aDBRow to: anObject

	"6/8/2000"
	
	| dbValue |
	
	dbValue := aDBRow atField: self ifAbsent: [nil].
	
	self accessor value: (self convertValue: dbValue) in: anObject!

convertValue: aValue

	"23/3/2001
	
	Convert the given DB value object to the receiver's targetClass.
	Return the converted object"
	
	^(aValue isKindOf: self targetClass)
		ifTrue: [aValue]
		ifFalse: [self targetClass instanceFromDBValue: aValue in: self reStore]!

targetClass

	"6/8/2000
	
	targetClass stores the Class of object stored in this field.
	This can be a base class with an SQL equivalent (String, Number, Date...), or a persistent class"
	
	^targetClass!

targetClass: aClass

	"6/8/2000
	
	targetClass stores the Class of object stored in this field.
	This can be a base class with an SQL equivalent (String, Number, Date...), or a persistent class"
	
	targetClass := aClass!

writeSQLDefinitionOn: aStream

	"9/3/01"
	
	super writeSQLDefinitionOn: aStream.
	aStream space.
	self targetClass writeSQLTypeOn: aStream using: self sqlDialect! !
!SSWDBStaticField categoriesFor: #applyDBValue:to:!actions!public! !
!SSWDBStaticField categoriesFor: #applyValueFromRow:to:!actions!public! !
!SSWDBStaticField categoriesFor: #convertValue:!actions!public! !
!SSWDBStaticField categoriesFor: #targetClass!accessing!public! !
!SSWDBStaticField categoriesFor: #targetClass:!accessing!public! !
!SSWDBStaticField categoriesFor: #writeSQLDefinitionOn:!output!public! !

