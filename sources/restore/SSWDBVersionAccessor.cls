"Filed out from Dolphin Smalltalk 7"!

SSWDBPrivateAccessor subclass: #SSWDBVersionAccessor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBVersionAccessor guid: (GUID fromString: '{266e4dc5-398e-11d5-b1df-444553540000}')!
SSWDBVersionAccessor comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBVersionAccessor categoriesForClass!Unclassified! !
!SSWDBVersionAccessor methodsFor!

nameInDB

	"19/8/2001"

	^#version_!

specialSymbol

	"29/4/2001

	Accesses _version - this is a method defined by the object proxy"

	^#_version!

value: valueObject in: targetObject

	"19/4/2001
	
	The receiver accesses the version number of objects.
	targetObject should be DBproxy-wrapped"
	
	targetObject _version: valueObject!

valueIn: anObject

	"19/4/2001
	
	The receiver accesses the version number of objects.
	anObject should be DBproxy-wrapped"
	
	^anObject _version! !
!SSWDBVersionAccessor categoriesFor: #nameInDB!constants!public! !
!SSWDBVersionAccessor categoriesFor: #specialSymbol!constants!public! !
!SSWDBVersionAccessor categoriesFor: #value:in:!public!updating! !
!SSWDBVersionAccessor categoriesFor: #valueIn:!evaluating!public! !

