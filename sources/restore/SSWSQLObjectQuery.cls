"Filed out from Dolphin Smalltalk 7"!

SSWSQLQuery subclass: #SSWSQLObjectQuery
	instanceVariableNames: 'object table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWSQLObjectQuery guid: (GUID fromString: '{6266c92d-3983-11d5-b1df-444553540000}')!
SSWSQLObjectQuery comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWSQLObjectQuery categoriesForClass!Unclassified! !
!SSWSQLObjectQuery methodsFor!

isWriteQuery

	"19/8/2000"
	
	^true!

object

	"18/8/2000
	
	object stores the proxy'd persistent object on which the receiver represents its query"
	
	^object
	!

object: aProxydObject

	"18/8/2000
	
	object stores the proxy'd persistent object on which the receiver represents its query"
	
	object := aProxydObject
	!

objectControlConditions

	"19/4/2001
	
	Create and return an SSWSQLConditionCollection which constrains the receiver query
	by whatever fields are in the table's controlFields"
	
	| conditions |

	conditions := SSWSQLConditionCollection forAND.

	self table controlFields do:
		[ :controlField |
		conditions add:
			(SSWSQLCondition
				field: controlField
				equalTo: (controlField accessor valueIn: self object))].

	^conditions!

objectIDCondition

	"19/8/2000
	
	Create and return an SSWSQLCondition which identifies the receiver's object
	within its table"
	
	^SSWSQLCondition 
		field: self table idField
		equalTo: self object _id!

table

	"19/8/2000
	
	table is a lazy-initialized cache for the table to which the receiver's object belongs"
	
	table == nil ifTrue: [table := object _dbTable].
	
	^table!

table: anSSWDBTable

	"19/8/2000
	
	table is a lazy-initialized cache for the table to which the receiver's object belongs"
	
	table := anSSWDBTable! !
!SSWSQLObjectQuery categoriesFor: #isWriteQuery!public!testing! !
!SSWSQLObjectQuery categoriesFor: #object!accessing!public! !
!SSWSQLObjectQuery categoriesFor: #object:!accessing!public! !
!SSWSQLObjectQuery categoriesFor: #objectControlConditions!evaluating!public! !
!SSWSQLObjectQuery categoriesFor: #objectIDCondition!evaluating!public! !
!SSWSQLObjectQuery categoriesFor: #table!accessing!public! !
!SSWSQLObjectQuery categoriesFor: #table:!accessing!public! !

!SSWSQLObjectQuery class methodsFor!

forObject: aProxydObject

	"19/8/2000"
	
	^self new
		object: aProxydObject;
		yourself! !
!SSWSQLObjectQuery class categoriesFor: #forObject:!instance creation!public! !

