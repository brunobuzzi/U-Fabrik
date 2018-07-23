"Filed out from Dolphin Smalltalk 7"!

SSWDBInheritedTable subclass: #SSWDBSuperTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBSuperTable guid: (GUID fromString: '{266e4dcf-398e-11d5-b1df-444553540000}')!
SSWDBSuperTable comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBSuperTable categoriesForClass!Unclassified! !
!SSWDBSuperTable methodsFor!

forCreation

	"Create and return a new SSWDBSuperTable with merged fields
	from all the receiver's instanceClass's persistence subclasses"
	
	| tableForCreation |
	
	tableForCreation := self class forClass: self instanceClass.
	tableForCreation 
		name: self name;
		fullName: self fullName.
	tableForCreation initializeIn: self reStore.
	self instanceClass addClassDefinitionTo: tableForCreation.
	
	self instanceClass subclassesInheritingPersistency do:
		[ :cls || table |
		table := cls tableIn: self reStore.
		tableForCreation instanceClass: cls.
		table dataFields do: 
			[ :field | 
			(tableForCreation hasFieldAccessing: field accessor name) ifFalse: 
				[tableForCreation dataFields add: field]].
		table collectionSpecs do:
			[ :spec |
			(tableForCreation hasCollectionAccessing: spec accessor name) ifFalse: 
				[tableForCreation collectionSpecs add: spec]]].

	tableForCreation instanceClass: self instanceClass.
	
	^tableForCreation!

recoverInstanceFromRow: aDBRow into: anSSWDBObjectProxy
	
	"Redirect to the relevant concrete class. Also set the class of the proxy to the actual class of object.
	(since this may be one of the receiver's instanceClass' subclasses)"
	
	| class |
	
	class := self instanceClassFromRow: aDBRow.

	class = self instanceClass
		ifTrue: [super recoverInstanceFromRow: aDBRow into: anSSWDBObjectProxy]
		ifFalse: [(self reStore tableForClass: class) 
				recoverInstanceFromRow: aDBRow into: anSSWDBObjectProxy].
	
	anSSWDBObjectProxy _class: anSSWDBObjectProxy _proxiedObject class! !
!SSWDBSuperTable categoriesFor: #forCreation!evaluating!public! !
!SSWDBSuperTable categoriesFor: #recoverInstanceFromRow:into:!instance creation!public! !

