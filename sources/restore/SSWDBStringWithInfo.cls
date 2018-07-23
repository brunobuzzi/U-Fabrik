"Filed out from Dolphin Smalltalk 7"!

SSWDBClassWithInfo subclass: #SSWDBStringWithInfo
	instanceVariableNames: 'fieldSize'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBStringWithInfo guid: (GUID fromString: '{f9276a83-4893-11d5-b1df-0010a70883e2}')!
SSWDBStringWithInfo comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBStringWithInfo categoriesForClass!Unclassified! !
!SSWDBStringWithInfo methodsFor!

fieldSize

	"15/4/2001

	fieldSize stores the size of the field in which 'instances' of this 'class' will live.
	The definition of 'size' (i.e. max size or fixed size) is dependent on the subclass"

	^fieldSize!

fieldSize: anInteger

	"15/4/2001

	fieldSize stores the size of the field in which 'instances' of this 'class' will live.
	The definition of 'size' (i.e. max size or fixed size) is dependent on the subclass"

	fieldSize := anInteger!

infoClass

	"15/4/2001"

	^String! !
!SSWDBStringWithInfo categoriesFor: #fieldSize!accessing!public! !
!SSWDBStringWithInfo categoriesFor: #fieldSize:!accessing!public! !
!SSWDBStringWithInfo categoriesFor: #infoClass!constants!public! !

