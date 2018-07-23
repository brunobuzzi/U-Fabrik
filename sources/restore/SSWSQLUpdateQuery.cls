"Filed out from Dolphin Smalltalk 7"!

SSWSQLConditionalQuery subclass: #SSWSQLUpdateQuery
	instanceVariableNames: 'fieldUpdates'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLUpdateQuery guid: (GUID fromString: '{6266c936-3983-11d5-b1df-444553540000}')!
SSWSQLUpdateQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLUpdateQuery categoriesForClass!Unclassified! !
!SSWSQLUpdateQuery methodsFor!

fieldUpdates

	"19/8/2000
	
	fieldUpdates stores an SSWSQLFieldCollection of SSWSQLConditions that
	define the updates to be written by the receiver"
	
	^fieldUpdates!

fieldUpdates: anSSWSQLFieldCollection 

	"19/8/2000
	
	fieldUpdates stores an SSWSQLFieldCollection of SSWSQLConditions that
	define the updates to be written by the receiver"
	
	fieldUpdates := anSSWSQLFieldCollection !

writeSQLOn: aStream

	"19/8/2000"
	
	aStream nextPutAll: 'UPDATE '.
	self table writeSQLOn: aStream.
	
	aStream nextPutAll: ' SET '.
	self fieldUpdates writeSQLOn: aStream.
	
	self writeWhereClauseOn: aStream! !
!SSWSQLUpdateQuery categoriesFor: #fieldUpdates!accessing!public! !
!SSWSQLUpdateQuery categoriesFor: #fieldUpdates:!accessing!public! !
!SSWSQLUpdateQuery categoriesFor: #writeSQLOn:!output!public! !

