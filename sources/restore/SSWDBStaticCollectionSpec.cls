"Filed out from Dolphin Smalltalk 7"!

SSWDBGeneralCollectionSpec subclass: #SSWDBStaticCollectionSpec
	instanceVariableNames: 'targetClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBStaticCollectionSpec guid: (GUID fromString: '{266e4dd3-398e-11d5-b1df-444553540000}')!
SSWDBStaticCollectionSpec comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBStaticCollectionSpec categoriesForClass!Unclassified! !
!SSWDBStaticCollectionSpec methodsFor!

createCollectionTable

	"5/10/2001

	Intercept to set the Class of the target field in the collection table"
		
	super createCollectionTable.

	self targetField targetClass: self targetClass!

createNonProxiedInstanceFromRow: aDBRow

	"11/9/2001	Refactored from recoverCollectionForProxy to allow overriding (issue#0001)"

	^(self collectionTable createNonProxiedInstanceFromRow: aDBRow)
		table: self collectionTable;
		yourself!

recoverBaseClassCollectionForProxy: aCollectionProxy

	"5/10/2001

	Recover a collection of base class (String, Date, Number...) objects"

	| reStore statement collection fetchedRows entries |

	reStore := aCollectionProxy _reStore.

	statement := reStore cachedStatementFor: self ifAbsentGenerateFrom:
		[(self selectQueryIn: reStore)
			conditions: (SSWSQLCondition field: self sourceField equalTo: SSWSQLQueryParameter);
			yourself].
	
	collection := self newCollection.
	entries := OrderedCollection new.

	statement values: (Array with: aCollectionProxy _ownerID).
	reStore rowsFromStatement: statement do:
		[ :row |
		(self createNonProxiedInstanceFromRow: row)
			addTo: entries;
			addTargetTo: collection].
	
	aCollectionProxy
		_proxiedObject: collection;
		_collectionEntries: entries!

recoverCollectionForProxy: aCollectionProxy

	"Created: 20/8/2000
	Modified: 5/10/2001	Factored out to separate base and model class implementations"

	self targetClass isPersistentBaseClass
		ifTrue: [self recoverBaseClassCollectionForProxy: aCollectionProxy]
		ifFalse: [self recoverModelClassCollectionForProxy: aCollectionProxy]!

recoverModelClassCollectionForProxy: aCollectionProxy

	"Created 5/10/2001	(refactored from recoverCollectionForProxy:)
	Modified 16/10/2001	Use withAllFieldsIn: to correctly handle inherited classes (Issue#0025)

	Recover a collection of model class (non-base, specifying a table) instances"

	| reStore targetTable statement collection fetchedRows entries |

	reStore := aCollectionProxy _reStore.
	targetTable := reStore tableForClass: self targetClass.

	statement := reStore cachedStatementFor: self ifAbsentGenerateFrom:
		[(self selectQueryIn: reStore)
			addTable: targetTable withAllFields joinedWithField: self targetField;
			conditions: (SSWSQLCondition field: self sourceField equalTo: SSWSQLQueryParameter);
			yourself].
	
	collection := self newCollection.
	entries := OrderedCollection new.

	statement values: (Array with: aCollectionProxy _ownerID).
	reStore rowsFromStatement: statement do:
		[ :row || entry |
		entry := self createNonProxiedInstanceFromRow: row.
		(entry target isDBProxy and: [entry target _isRecovered not]) ifTrue:
			[targetTable recoverInstanceFromRow: row into: entry target].
		entry
			addTo: entries;
			addTargetTo: collection].
	
	aCollectionProxy
		_proxiedObject: collection;
		_collectionEntries: entries!

selectQueryIn: anSSWReStore

	"19/8/2000
	
	Return a Query for recovering a collection represented by the receiver from anSSWReStore"
	
	^self queryClass new
		table: self collectionTable;	
		yourself!

setTargetClass: aClass

	"30/9/2001
	
	Double-despatch to the argument"
	
	aClass beTargetClassOf: self!

targetClass

	"20/8/2000
	
	targetClass stores the single Class of the objects stored in the collection modelled by the receiver.
	This must  be a persistent class"
	
	^targetClass!

targetClass: aClass

	"20/8/2000
	
	targetClass stores the single Class of the objects stored in the collection modelled by the receiver.
	This must  be a persistent class"
	
	targetClass := aClass! !
!SSWDBStaticCollectionSpec categoriesFor: #createCollectionTable!initializing!public! !
!SSWDBStaticCollectionSpec categoriesFor: #createNonProxiedInstanceFromRow:!actions - api!public! !
!SSWDBStaticCollectionSpec categoriesFor: #recoverBaseClassCollectionForProxy:!actions - api!public! !
!SSWDBStaticCollectionSpec categoriesFor: #recoverCollectionForProxy:!actions - api!public! !
!SSWDBStaticCollectionSpec categoriesFor: #recoverModelClassCollectionForProxy:!actions - api!public! !
!SSWDBStaticCollectionSpec categoriesFor: #selectQueryIn:!evaluating!public! !
!SSWDBStaticCollectionSpec categoriesFor: #setTargetClass:!accessing!public! !
!SSWDBStaticCollectionSpec categoriesFor: #targetClass!accessing!public! !
!SSWDBStaticCollectionSpec categoriesFor: #targetClass:!accessing!public! !

