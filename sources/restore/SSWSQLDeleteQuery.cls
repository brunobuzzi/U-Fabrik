"Filed out from Dolphin Smalltalk 7"!

SSWSQLConditionalQuery subclass: #SSWSQLDeleteQuery
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLDeleteQuery guid: (GUID fromString: '{6266c933-3983-11d5-b1df-444553540000}')!
SSWSQLDeleteQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLDeleteQuery categoriesForClass!Unclassified! !
!SSWSQLDeleteQuery methodsFor!

isWriteQuery

	"19/8/2000"
	
	^true!

writeSQLOn: aStream

	"5/8/2000"
	
	aStream nextPutAll: 'DELETE FROM '.
	self table writeSQLOn: aStream.

	self writeWhereClauseOn: aStream! !
!SSWSQLDeleteQuery categoriesFor: #isWriteQuery!public!testing! !
!SSWSQLDeleteQuery categoriesFor: #writeSQLOn:!output!public! !

