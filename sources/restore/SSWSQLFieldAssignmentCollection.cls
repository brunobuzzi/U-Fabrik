"Filed out from Dolphin Smalltalk 7"!

SSWSQLCollection variableSubclass: #SSWSQLFieldAssignmentCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLFieldAssignmentCollection guid: (GUID fromString: '{6266c923-3983-11d5-b1df-444553540000}')!
SSWSQLFieldAssignmentCollection comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLFieldAssignmentCollection categoriesForClass!Unclassified! !
!SSWSQLFieldAssignmentCollection methodsFor!

applyTo: anObject

	"24/4/2001"
	
	self do: [ :fieldAssignment | fieldAssignment applyTo: anObject]!

sqlConcatenator

	"5/8/2000
	
	A comma is used to separate a list of field assignments 
	in an SQL UPDATE query"
	
	^', '! !
!SSWSQLFieldAssignmentCollection categoriesFor: #applyTo:!actions!public! !
!SSWSQLFieldAssignmentCollection categoriesFor: #sqlConcatenator!output!public! !

