"Filed out from Dolphin Smalltalk 7"!

SSWSQLTableComponent subclass: #SSWDBTableComponent
	instanceVariableNames: 'accessor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBTableComponent guid: (GUID fromString: '{266e4dd0-398e-11d5-b1df-444553540000}')!
SSWDBTableComponent comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBTableComponent categoriesForClass!Unclassified! !
!SSWDBTableComponent methodsFor!

aboutToBeUnstored: anObject

	"30/9/2001

	anObject (which originated in the receiver's table) is about to be removed from the DB.
	Carry out any necessary actions"

	"Default - no action"
	^self!

accessor

	"6/8/2000
	
	accessor stores an 'Accessor' object which is used to get and set the value
	represented by this component in its eventual Smalltalk object.
	The accessor does this via #valueIn: and value:in: - typically it is an SSWInstVarAccessor"
	
	^accessor!

accessor: anAccessor

	"6/8/2000
	
	accessor stores an 'Accessor' object which is used to get and set the value
	represented by this component in its eventual Smalltalk object.
	The accessor does this via #valueIn: and value:in: - typically it is an SSWInstVarAccessor"
	
	accessor := anAccessor!

printOn: aStream

	"6/8/2000"

	super printOn: aStream.

	aStream
		nextPutAll: ' - ';
		nextPutAll: self table name!

reStore

	^self table reStore!

sqlDialect

	^self table sqlDialect! !
!SSWDBTableComponent categoriesFor: #aboutToBeUnstored:!actions!public! !
!SSWDBTableComponent categoriesFor: #accessor!accessing!public! !
!SSWDBTableComponent categoriesFor: #accessor:!accessing!public! !
!SSWDBTableComponent categoriesFor: #printOn:!printing!public! !
!SSWDBTableComponent categoriesFor: #reStore!accessing!public! !
!SSWDBTableComponent categoriesFor: #sqlDialect!accessing!public! !

