"Filed out from Dolphin Smalltalk 7"!

SSWDBAbstractSubTable subclass: #SSWDBSubTable
	instanceVariableNames: 'classCondition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBSubTable guid: (GUID fromString: '{266e4dce-398e-11d5-b1df-444553540000}')!
SSWDBSubTable comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBSubTable categoriesForClass!Unclassified! !
!SSWDBSubTable methodsFor!

classCondition

	"11/4/2001
	
	classCondition stores an SSWSQLCondition which is applied to all SELECTs 
	on the receiver table, to ensure only instances of the receiver's instanceClass are selected"
	
	classCondition == nil ifTrue: 
		[classCondition := SSWSQLCondition field: self classField equalTo: self instanceClass].
	
	^classCondition!

classCondition: anSSWSQLCondition

	"11/4/2001
	
	classCondition stores an SSWSQLCondition which is applied to all SELECTs 
	on the receiver table, to ensure only instances of the receiver's instanceClass are selected"
	
	classCondition := anSSWSQLCondition!

hasStaticConditions

	"11/4/2001"
	
	^true!

sqlAndStaticConditionsWith: anSQLConditionCollection

	"19/4/2001
	
	Return the receiver's staticConditions ANDed with anSQLConditionCollection"
	
	"The receiver's staticConditions are redundant if there is an ID condition"
	^(anSQLConditionCollection anySatisfy: [ :cond | cond field = self idField]) 
		ifTrue: [anSQLConditionCollection]
		ifFalse: [self staticConditions sqlAnd: anSQLConditionCollection]!

staticConditions

	"10/4/2001
	
	Return the classCondition
	 - a single SSWSQLCondition is polymorphic with an SSWSQLConditionCollection"
	
	^self classCondition!

withAllFields

	"Return a table equivalent to the receiver but containing all possible fields.	
	For a subtable (not inherited further) can optimise this back to just the receiver"

	^self! !
!SSWDBSubTable categoriesFor: #classCondition!accessing!public! !
!SSWDBSubTable categoriesFor: #classCondition:!accessing!public! !
!SSWDBSubTable categoriesFor: #hasStaticConditions!public!testing! !
!SSWDBSubTable categoriesFor: #sqlAndStaticConditionsWith:!evaluating!public! !
!SSWDBSubTable categoriesFor: #staticConditions!evaluating!public! !
!SSWDBSubTable categoriesFor: #withAllFields!evaluating!public! !

