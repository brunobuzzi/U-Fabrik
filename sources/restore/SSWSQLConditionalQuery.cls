"Filed out from Dolphin Smalltalk 7"!

SSWSQLTableQuery subclass: #SSWSQLConditionalQuery
	instanceVariableNames: 'conditions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLConditionalQuery guid: (GUID fromString: '{6266c932-3983-11d5-b1df-444553540000}')!
SSWSQLConditionalQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLConditionalQuery categoriesForClass!Unclassified! !
!SSWSQLConditionalQuery methodsFor!

conditions

	"6/8/2000
	
	conditions stores an SQLConditionCollection which filters this query"
	
	^conditions!

conditions: anSQLConditionCollection

	"6/8/2000
	
	conditions stores an SQLConditionCollection which filters this query"
	
	conditions := anSQLConditionCollection!

hasConditions

	"21/3/2001"
	
	^self conditions isEmpty not!

parameterisedFields

	"26/4/2001"

	| parameterisedFields |

	parameterisedFields := OrderedCollection new.

	self conditions do:
		[ :condition |
		(condition value == SSWSQLQueryParameter) ifTrue: [parameterisedFields add: condition field]].

	^parameterisedFields!

writeWhereClauseOn: aStream

	"21/3/2001
	
	Write the SQL for the WHERE clause for the receiver's conditions on aStream.
	If no conditions, do nothing"
	
	| allConditions |
	
	allConditions := self conditions.
	self tables do:
		[ :table |
		table hasStaticConditions ifTrue: [allConditions := table sqlAndStaticConditionsWith: allConditions]].
	
	allConditions isEmpty ifFalse:
		[aStream nextPutAll: ' WHERE '.
		allConditions writeSQLOn: aStream]! !
!SSWSQLConditionalQuery categoriesFor: #conditions!accessing!public! !
!SSWSQLConditionalQuery categoriesFor: #conditions:!accessing!public! !
!SSWSQLConditionalQuery categoriesFor: #hasConditions!public!testing! !
!SSWSQLConditionalQuery categoriesFor: #parameterisedFields!evaluating!public! !
!SSWSQLConditionalQuery categoriesFor: #writeWhereClauseOn:!output!public! !

