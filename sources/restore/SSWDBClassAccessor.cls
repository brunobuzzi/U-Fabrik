"Filed out from Dolphin Smalltalk 7"!

SSWDBPrivateAccessor subclass: #SSWDBClassAccessor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBClassAccessor guid: (GUID fromString: '{266e4dc3-398e-11d5-b1df-444553540000}')!
SSWDBClassAccessor comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBClassAccessor categoriesForClass!Unclassified! !
!SSWDBClassAccessor methodsFor!

nameInDB

	"19/8/2001"

	^#instClass_!

specialSymbol

	"29/4/2001"

	^#class!

value: valueObject in: targetObject

	"6/8/2000
	
	The receiver 'accesses' the class of objects - cannot be changed"
	
	^self!

valueIn: anObject

	"10/4/2001
	
	The receiver 'accesses' the class of objects.
	anObject should be DBproxy-wrapped"
	
	^anObject class! !
!SSWDBClassAccessor categoriesFor: #nameInDB!constants!public! !
!SSWDBClassAccessor categoriesFor: #specialSymbol!constants!public! !
!SSWDBClassAccessor categoriesFor: #value:in:!public!updating! !
!SSWDBClassAccessor categoriesFor: #valueIn:!evaluating!public! !

