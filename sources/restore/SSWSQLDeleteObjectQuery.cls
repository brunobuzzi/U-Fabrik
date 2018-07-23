"Filed out from Dolphin Smalltalk 7"!

SSWSQLObjectQuery subclass: #SSWSQLDeleteObjectQuery
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLDeleteObjectQuery guid: (GUID fromString: '{6266c92e-3983-11d5-b1df-444553540000}')!
SSWSQLDeleteObjectQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLDeleteObjectQuery categoriesForClass!Unclassified! !
!SSWSQLDeleteObjectQuery methodsFor!

writeSQLOn: aStream

	"5/8/2000"
	
	aStream nextPutAll: 'DELETE FROM '.
	self table writeSQLOn: aStream.
	
	aStream nextPutAll: ' WHERE '.
	self objectIDCondition writeSQLOn: aStream! !
!SSWSQLDeleteObjectQuery categoriesFor: #writeSQLOn:!output!public! !

