"Filed out from Dolphin Smalltalk 7"!

SSWDBStringWithInfo subclass: #SSWDBFixedStringWithInfo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBFixedStringWithInfo guid: (GUID fromString: '{f9276a84-4893-11d5-b1df-0010a70883e2}')!
SSWDBFixedStringWithInfo comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBFixedStringWithInfo categoriesForClass!Unclassified! !
!SSWDBFixedStringWithInfo methodsFor!

writeSQLTypeOn: aStream using: anSQLDialect

	"15/4/2001"

	"If the receiver's size exceeds the maximum allowed, use a longText (if available)"

	(self fieldSize > anSQLDialect maxChar)
		ifTrue: [aStream nextPutAll: anSQLDialect longText]
		ifFalse: [aStream nextPutAll: (anSQLDialect char formatWith: self fieldSize printString)]! !
!SSWDBFixedStringWithInfo categoriesFor: #writeSQLTypeOn:using:!printing!public! !

