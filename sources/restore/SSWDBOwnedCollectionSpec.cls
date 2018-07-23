"Filed out from Dolphin Smalltalk 7"!

SSWDBCollectionSpec subclass: #SSWDBOwnedCollectionSpec
	instanceVariableNames: 'targetClass ownerField ownerAccessor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBOwnedCollectionSpec guid: (GUID fromString: '{fb82fd82-49e2-11d5-b1df-0010a70883e2}')!
SSWDBOwnedCollectionSpec comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBOwnedCollectionSpec categoriesForClass!Unclassified! !
!SSWDBOwnedCollectionSpec methodsFor!

dbInstancesFor: aCollectionProxy

	"Return a DBInstancesCollection representing the instances owned by aCollectionProxy
	and specified by the receiver"

	| instances |

	self ownerField == nil ifTrue: [self setOwnerFieldFrom: aCollectionProxy _reStore].

	instances := aCollectionProxy _reStore instancesOf: self targetClass.

	instances parser qualifyingConditions: (instances parser qualifyingConditions sqlAnd:
		(SSWSQLCondition field: self ownerField equalTo: aCollectionProxy _ownerID)).

	^instances
		!

orderingSpecs

	"Created for issue 120-007"

	| sortBlock |

	(self templateCollection hasSortingSpecs) ifTrue: [^self templateCollection sortingSpecs].

	sortBlock := self templateCollection sortBlock.
	(sortBlock == SortedCollection and: [self targetClass isPersistentBaseClass]) "default ascending sort"
	ifTrue:
		[^OrderedCollection with: (SSWDBOrderingSpec ascending: #target)]
	ifFalse:
		[| instances |
		instances := self reStore instancesOf: self targetClass.
		instances sortBlock: sortBlock.
		^instances parser orderingSpecs collect: 
			[ :each || field |
			field := each criteria.
			field isNil 
				ifTrue: [each criteria: #target]
				ifFalse: [each criteria: field accessor name]]]
!

owner: aSymbol

	"30/9/2001"
	
	self ownerAccessor: (SSWInstVarAccessor toAccess: aSymbol in: self targetClass)!

ownerAccessor

	"14/8/2000
	
	ownerAccessor stores an Accessor configured to access instance variable 
	of the targetClass that holds the reference to the owner object"
	
	^ownerAccessor!

ownerAccessor: anInstVarAccessor

	"14/8/2000
	
	ownerAccessor stores an Accessor configured to access instance variable 
	of the targetClass that holds the reference to the owner object"
	
	ownerAccessor := anInstVarAccessor!

ownerClass

	"22/1/2001
	
	Return the class of object that owns the collection specified by the receiver"
	
	^self table instanceClass!

ownerField

	"14/8/2000
	
	ownerField stores the SSWDBField from the dbTable of the targetClass
	which refers to the the 'owner' object to which the many objects belong.
	
	This is initialized the first time it is required by setOwnerFieldFrom:"
	
	^ownerField!

ownerField: anSSWDBField

	"14/8/2000
	
	ownerField stores the SSWDBField from the dbTable of the targetClass
	which refers to the the 'owner' object to which the many objects belong.
	
	This is initialized the first time it is required by setOwnerFieldFrom:"
	
	ownerField := anSSWDBField!

queryClass

	"21/1/2001
	
	Return the correct query class to use for the receiver"
	
	^self templateCollection isOrdered
		ifTrue: [SSWSQLOrderedSelectQuery]
		ifFalse: [SSWSQLSelectQuery]!

recoverCollectionForProxy: aCollectionProxy

	"22/1/2001"

	| reStore statement collection |

	reStore := aCollectionProxy _reStore.
	statement := reStore cachedStatementFor: self ifAbsentGenerateFrom: [self selectQueryIn: reStore].
	
	collection := self newCollection.

	statement values: (Array with: aCollectionProxy _ownerID).
	reStore fetchObjectsOfClass: self targetClass withStatement: statement into: collection.
	
	aCollectionProxy _proxiedObject: collection!

selectQueryIn: anSSWReStore

	"Patched for issue 120-007"

	| query targetTable |

	self ownerField == nil ifTrue: [self setOwnerFieldFrom: anSSWReStore].

	query := self queryClass new.
	targetTable := anSSWReStore tableForClass: self targetClass.

	query
		table: targetTable;
		conditions: (SSWSQLCondition field: self ownerField equalTo: SSWSQLQueryParameter).

	self templateCollection isSorted
	ifTrue:
		[self orderingSpecs do: 
			[ :spec | 
			spec isAscending
				ifTrue: [query orderAscendingBy: (targetTable fieldAccessing: spec criteria)]
				ifFalse: [query orderDescendingBy: (targetTable fieldAccessing: spec criteria)]]]
	ifFalse:
		[self templateCollection isOrdered ifTrue: [query orderAscendingBy: targetTable idField]].

	^query!

setOwnerFieldFrom: anSSWReStore

	"14/8/2000"
	
	| targetTable |
	
	targetTable := anSSWReStore tableForClass: self targetClass.
	
	self ownerField: (targetTable dataFields detect: [ :field | field accessor = self ownerAccessor])!

setTargetClass: aClass

	"30/9/2001
	
	Double-despatch to the argument"
	
	aClass beTargetClassOf: self!

targetClass

	"14/8/2000
	
	targetClass stores the Class of object held in the collection specified by the receiver.
	Instances of this class must hold a reference to their owner object"
	
	^targetClass!

targetClass: aClass

	"14/8/2000
	
	targetClass stores the Class of object held in the collection specified by the receiver.
	Instances of this class must hold a reference to their owner object"
	
	targetClass := aClass! !
!SSWDBOwnedCollectionSpec categoriesFor: #dbInstancesFor:!accessing:derived!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #orderingSpecs!accessing:derived!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #owner:!accessing:derived!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #ownerAccessor!accessing!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #ownerAccessor:!accessing!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #ownerClass!accessing:derived!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #ownerField!accessing!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #ownerField:!accessing!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #queryClass!evaluating!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #recoverCollectionForProxy:!actions!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #selectQueryIn:!accessing:derived!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #setOwnerFieldFrom:!actions!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #setTargetClass:!accessing:derived!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #targetClass!accessing!public! !
!SSWDBOwnedCollectionSpec categoriesFor: #targetClass:!accessing!public! !

