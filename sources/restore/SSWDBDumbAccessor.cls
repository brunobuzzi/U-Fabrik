"Filed out from Dolphin Smalltalk 7"!

SSWDBPrivateAccessor subclass: #SSWDBDumbAccessor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBDumbAccessor guid: (GUID fromString: '{640e6ea1-4c5b-11d5-b1df-0010a70883e2}')!
SSWDBDumbAccessor comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBDumbAccessor categoriesForClass!Unclassified! !
!SSWDBDumbAccessor methodsFor!

specialSymbol

	"12/5/2001"

	^#_nothing_!

value: valueObject in: targetObject

	"12/5/2001
	
	The receiver accesses nothing - do nothing"
	
	^self!

valueIn: anObject

	"12/5/2001
	
	The receiver accesses nothing - return nil"
	
	^nil! !
!SSWDBDumbAccessor categoriesFor: #specialSymbol!constants!public! !
!SSWDBDumbAccessor categoriesFor: #value:in:!public!updating! !
!SSWDBDumbAccessor categoriesFor: #valueIn:!evaluating!public! !

