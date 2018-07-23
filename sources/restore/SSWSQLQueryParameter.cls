"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWSQLQueryParameter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLQueryParameter guid: (GUID fromString: '{59892182-3a33-11d5-b1df-444553540000}')!
SSWSQLQueryParameter comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLQueryParameter categoriesForClass!Unclassified! !
!SSWSQLQueryParameter class methodsFor!

new

	"26/4/2001

	The receiver should not have instances created"

	^self error: 'Do not create instances of this class'!

writeSQLOn: aStream

	"26/4/2001

	The receiver exists purely to write the parameter placeholder character '?' "

	aStream nextPut: $?
! !
!SSWSQLQueryParameter class categoriesFor: #new!instance creation!public! !
!SSWSQLQueryParameter class categoriesFor: #writeSQLOn:!instance creation!public! !

