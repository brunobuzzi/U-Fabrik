"Filed out from Dolphin Smalltalk 7"!

SSWDBStringWithInfo subclass: #SSWDBVariableStringWithInfo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBVariableStringWithInfo guid: (GUID fromString: '{f9276a85-4893-11d5-b1df-0010a70883e2}')!
SSWDBVariableStringWithInfo comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBVariableStringWithInfo categoriesForClass!Unclassified! !
!SSWDBVariableStringWithInfo methodsFor!

writeSQLTypeOn: aStream using: anSQLDialect

	"15/4/2001"

	"If the receiver's size exceeds the maximum allowed, use a longText (if available)"

	(self fieldSize > anSQLDialect maxVarchar)
		ifTrue: [aStream nextPutAll: anSQLDialect longText]
		ifFalse: [aStream nextPutAll: (anSQLDialect varchar formatWith: self fieldSize printString)]! !
!SSWDBVariableStringWithInfo categoriesFor: #writeSQLTypeOn:using:!printing!public! !

