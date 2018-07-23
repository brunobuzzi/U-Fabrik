"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWSQLTable
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLTable guid: (GUID fromString: '{767240f7-a555-11d5-b1e0-444553540000}')!
SSWSQLTable comment: ''!
!SSWSQLTable categoriesForClass!Unclassified! !
!SSWSQLTable methodsFor!

= anSSWSQLTable

	"27/4/2002"

	^self == anSSWSQLTable or: [self name = anSSWSQLTable name]!

hash

	"27/4/2002"

	^self name hash!

name

	"5/8/2000
	
	name stores the name of this table"
		
	^name
!

name: aString

	"5/8/2000
	
	name stores the name of this table"
	
	name := aString
!

writeSQLNameOn: aStream

	"5/8/2000"
	
	aStream nextPutAll: self name
!

writeSQLOn: aStream

	"5/8/2000"
	
	self writeSQLNameOn: aStream
! !
!SSWSQLTable categoriesFor: #=!comparing!public! !
!SSWSQLTable categoriesFor: #hash!comparing!public! !
!SSWSQLTable categoriesFor: #name!accessing!public! !
!SSWSQLTable categoriesFor: #name:!accessing!public! !
!SSWSQLTable categoriesFor: #writeSQLNameOn:!output!public! !
!SSWSQLTable categoriesFor: #writeSQLOn:!output!public! !

