"Filed out from Dolphin Smalltalk 7"!

DBColAttr subclass: #SSWODBCColAttr
	instanceVariableNames: 'field'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWODBCColAttr guid: (GUID fromString: '{40397b21-5946-11d6-87e7-0010a70883e2}')!
SSWODBCColAttr comment: ''!
!SSWODBCColAttr categoriesForClass!Unclassified! !
!SSWODBCColAttr methodsFor!

field

	"25/4/2002 

	field stores the SSWSQLField from a SELECT query 
	that gave rise to this column in the resut set"

	^field!

field: anSSWSQLField

	"25/4/2002 

	field stores the SSWSQLField from a SELECT query 
	that gave rise to this column in the resut set"

	field := anSSWSQLField! !
!SSWODBCColAttr categoriesFor: #field!public! !
!SSWODBCColAttr categoriesFor: #field:!public! !

