"Filed out from Dolphin Smalltalk 7"!

SSWSQLFieldValueConjunction subclass: #SSWSQLFieldAssignment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLFieldAssignment guid: (GUID fromString: '{6266c92a-3983-11d5-b1df-444553540000}')!
SSWSQLFieldAssignment comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLFieldAssignment categoriesForClass!Unclassified! !
!SSWSQLFieldAssignment methodsFor!

applyTo: anObject

	"24/4/2001
	
	The receiver relates a field (which relates to an instance var) to a value (Smalltalk object).
	'Apply' the receiver assignment to anObject by assigning its value to its field's inst var
	
	ASSERT: anObject class = self field table instanceClass"
	
	self field accessor value: self value in: anObject!

writeConjunctionSQLOn: aStream

	"Private - 23/4/2001
	
	The conjunction for assignment is simply '=' "
	
	aStream nextPut: $=!

writeFieldSQLOn: aStream

	"Private - 17/9/2001	(issue#0009)

	Ensure that the 'update' variant of the field is used"
	
	self field forUpdate writeSQLOn: aStream
! !
!SSWSQLFieldAssignment categoriesFor: #applyTo:!actions!public! !
!SSWSQLFieldAssignment categoriesFor: #writeConjunctionSQLOn:!output!private! !
!SSWSQLFieldAssignment categoriesFor: #writeFieldSQLOn:!output!private! !

