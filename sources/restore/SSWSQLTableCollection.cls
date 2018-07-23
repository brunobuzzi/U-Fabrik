"Filed out from Dolphin Smalltalk 7"!

SSWSQLCollection variableSubclass: #SSWSQLTableCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLTableCollection guid: (GUID fromString: '{6266c925-3983-11d5-b1df-444553540000}')!
SSWSQLTableCollection comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLTableCollection categoriesForClass!Unclassified! !
!SSWSQLTableCollection methodsFor!

allFields

	"28/9/2000
	
	Return an SSWLSQLFieldCollection which represents all fields in each of the receiver's tables"
	
	| allFields |
	
	allFields := SSWSQLFieldCollection new: self size.

	self do: [ :table | allFields add: (SSWSQLField allFieldsInTable: table)].
	
	^allFields!

soleTable

	"17/8/2000
	
	Return the single member of the receiver.
	Error if there is not exactly one member"
	
	^self size = 1
		ifTrue: [self first]
		ifFalse: [self error: 'Should be only one table']!

soleTable: anSSWDBTable

	"17/8/2000
	
	Set the single member of the receiver to anSSWDBTable"
	
	self 
		removeAll: self copy;
		add: anSSWDBTable!

sqlConcatenator

	"5/8/2000
	
	A comma is used to separate a list of tables in SQL"
	
	^', '! !
!SSWSQLTableCollection categoriesFor: #allFields!output!public! !
!SSWSQLTableCollection categoriesFor: #soleTable!accessing!public! !
!SSWSQLTableCollection categoriesFor: #soleTable:!accessing!public! !
!SSWSQLTableCollection categoriesFor: #sqlConcatenator!output!public! !

