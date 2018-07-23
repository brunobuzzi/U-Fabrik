"Filed out from Dolphin Smalltalk 7"!

SSWDBPrivateAccessor subclass: #SSWDBIDAccessor
	instanceVariableNames: 'instanceAccessor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBIDAccessor guid: (GUID fromString: '{266e4dc4-398e-11d5-b1df-444553540000}')!
SSWDBIDAccessor comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBIDAccessor categoriesForClass!Unclassified! !
!SSWDBIDAccessor methodsFor!

accesses: aSymbol

	"12/5/2001
	
	Additionally check the instanceAccessor"
	
	^(super accesses: aSymbol) or: 
		[self instanceAccessor ~~ nil and: [self instanceAccessor accesses: aSymbol]]!

instanceAccessor

	"12/5/2001

	instanceAccessor optionally stores an SSWInstVarAccessor that is used to assign 
	the ID value to actual persistent object instances (in addition to their proxy).

	By default this is nil - persistent objects do not normally store their ID
	If changed to a SSWInstVarAccessor, the ID value is assigned to an instance variable"

	^instanceAccessor!

instanceAccessor: anSSWAccessor

	"12/5/2001

	instanceAccessor optionally stores an SSWInstVarAccessor that is used to assign 
	the ID value to actual persistent object instances (in addition to their proxy).

	By default this is nil - persistent objects do not normally store their ID
	If changed to a SSWInstVarAccessor, the ID value is assigned to an instance variable"

	instanceAccessor := anSSWAccessor!

nameInDB

	"19/8/2001"

	^#id_!

specialSymbol

	"29/4/2001

	Accesses _id (unique ID) - this is a method defined by the object proxy"

	^#_id!

value: valueObject in: targetObject

	"6/8/2000
	
	The receiver accesses the unique ID of objects.
	However it never explicity sets the ID of a proxy (a proxy is created with this).
	Instead, it's instanceAccessor may set the ID within the persistent object itself"
	
	self instanceAccessor ~~ nil ifTrue: 
		[self instanceAccessor value: valueObject in: targetObject _proxiedObject]!

valueIn: anObject

	"6/8/2000
	
	The receiver accesses the unique ID of objects.
	anObject should be DBproxy-wrapped"
	
	^anObject _id! !
!SSWDBIDAccessor categoriesFor: #accesses:!public!testing! !
!SSWDBIDAccessor categoriesFor: #instanceAccessor!accessing!public! !
!SSWDBIDAccessor categoriesFor: #instanceAccessor:!accessing!public! !
!SSWDBIDAccessor categoriesFor: #nameInDB!constants!public! !
!SSWDBIDAccessor categoriesFor: #specialSymbol!constants!public! !
!SSWDBIDAccessor categoriesFor: #value:in:!public!updating! !
!SSWDBIDAccessor categoriesFor: #valueIn:!evaluating!public! !

