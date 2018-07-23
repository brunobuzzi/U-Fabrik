"Filed out from Dolphin Smalltalk 7"!

SSWDBBlockEvaluator subclass: #SSWDBBlockReceiver
	instanceVariableNames: 'currentTable finalField'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBBlockReceiver guid: (GUID fromString: '{5a3e3dce-3990-11d5-b1df-444553540000}')!
SSWDBBlockReceiver comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBBlockReceiver categoriesForClass!Unclassified! !
!SSWDBBlockReceiver methodsFor!

currentTable

	"14/8/2000"
	
	^currentTable!

currentTable: anSSWDBTable

	"14/8/2000"
	
	currentTable := anSSWDBTable!

finalField

	"20/3/2001"

	"If the receiver is parsing a comparison on a joining field (rather than a plain text/number etc.),
	then finalField will not have been set"
		
	^finalField == nil
	ifTrue: 
		[| field |
		"Comparison on a joining field - ignore it as a join; use it as the finalField"
		field := self parser referencedTables lastJoinField.
		self parser referencedTables removeLast.
		finalField := SSWDBQueryTableField forField: field in: field table]
	ifFalse:	
		[finalField]!

finalField: anSSWDBQueryField

	"20/3/2001"

	finalField := anSSWDBQueryField!

hasFinalField

	"20/3/2001"

	^finalField ~= nil!

lastFinalField

	"9/4/2001"
	
	^self finalField!

peekFinalField

	"9/4/2001"
	
	^self finalField! !
!SSWDBBlockReceiver categoriesFor: #currentTable!accessing!public! !
!SSWDBBlockReceiver categoriesFor: #currentTable:!accessing!public! !
!SSWDBBlockReceiver categoriesFor: #finalField!accessing!public! !
!SSWDBBlockReceiver categoriesFor: #finalField:!accessing!public! !
!SSWDBBlockReceiver categoriesFor: #hasFinalField!public!testing! !
!SSWDBBlockReceiver categoriesFor: #lastFinalField!evaluating!public! !
!SSWDBBlockReceiver categoriesFor: #peekFinalField!evaluating!public! !

