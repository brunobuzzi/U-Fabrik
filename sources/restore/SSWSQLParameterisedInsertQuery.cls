"Filed out from Dolphin Smalltalk 7"!

SSWSQLInsertQuery subclass: #SSWSQLParameterisedInsertQuery
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLParameterisedInsertQuery guid: (GUID fromString: '{253913e1-3ff6-11d5-b1df-0010a70883e2}')!
SSWSQLParameterisedInsertQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLParameterisedInsertQuery categoriesForClass!Unclassified! !
!SSWSQLParameterisedInsertQuery methodsFor!

objectValues

	"26/4/2001
	
	Return the actual values to be inserted, as specified by the object"		

	^super values!

parameterisedFields

	"26/4/2001

	In the receiver, all fields are parameterised"

	^self fields!

values

	"26/4/2001
	
	Return the values to be inserted by the receiver, as an SSWSQLFieldCollection.
	For a parameterised query, these are all parameters"		

	^self fields collect: [ :field | SSWSQLQueryParameter]! !
!SSWSQLParameterisedInsertQuery categoriesFor: #objectValues!output!public! !
!SSWSQLParameterisedInsertQuery categoriesFor: #parameterisedFields!output!public! !
!SSWSQLParameterisedInsertQuery categoriesFor: #values!output!public! !

