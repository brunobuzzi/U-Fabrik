"Filed out from Dolphin Smalltalk 7"!

SSWSQLObjectQuery subclass: #SSWSQLUpdateObjectQuery
	instanceVariableNames: 'fieldUpdates'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLUpdateObjectQuery guid: (GUID fromString: '{6266c930-3983-11d5-b1df-444553540000}')!
SSWSQLUpdateObjectQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLUpdateObjectQuery categoriesForClass!Unclassified! !
!SSWSQLUpdateObjectQuery methodsFor!

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
	
	aStream nextPutAll: ' WHERE '.
	(self objectIDCondition sqlAnd: self objectControlConditions) writeSQLOn: aStream! !
!SSWSQLUpdateObjectQuery categoriesFor: #fieldUpdates!accessing!public! !
!SSWSQLUpdateObjectQuery categoriesFor: #fieldUpdates:!accessing!public! !
!SSWSQLUpdateObjectQuery categoriesFor: #writeSQLOn:!output!public! !

!SSWSQLUpdateObjectQuery class methodsFor!

forObject: aProxydObject withUpdates: anSSWSQLCollection

	"19/8/2000"
	
	^(super forObject: aProxydObject)
		fieldUpdates: anSSWSQLCollection;
		yourself! !
!SSWSQLUpdateObjectQuery class categoriesFor: #forObject:withUpdates:!instance creation!public! !

