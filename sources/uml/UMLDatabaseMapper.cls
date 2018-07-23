"Filed out from Dolphin Smalltalk 7"!

Object subclass: #UMLDatabaseMapper
	instanceVariableNames: 'umlModel database mappedClasses'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDatabaseMapper guid: (GUID fromString: '{3211c839-5afe-45d2-9cd6-f573e59cc606}')!
UMLDatabaseMapper comment: ''!
!UMLDatabaseMapper categoriesForClass!Unclassified! !
!UMLDatabaseMapper methodsFor!

createRelationTable: anUMLClass backward: relatedClass with: anUMLRelation
	| table fkForward fkBackward fieldFordward fieldBackward |

	table := BBDBTable newNamed: (anUMLClass name, '.', relatedClass name).

	fieldFordward := BBDBAttribute newNamed: anUMLClass name for: table.
	fieldBackward := BBDBAttribute newNamed: relatedClass name for: table.

	fkForward := BBDBForeignKey newNamed: fieldFordward name for: table.
	fkForward addAttribute: fieldFordward;
		relatedTable: (database getTableNamed: relatedClass name);
		foreignAttribute: (database getTableNamed: relatedClass name) primaryKey.
	table addForeignKey: fkForward.
		
	fkBackward := BBDBForeignKey newNamed: fieldBackward name for: table.
	fkBackward addAttribute: fieldBackward;
		relatedTable: (database getTableNamed: anUMLClass name);
		foreignAttribute: (database getTableNamed: anUMLClass name) primaryKey.
	table addForeignKey: fkBackward.

	table addAttribute:  fieldFordward;
		addAttribute: fieldBackward.
	^table!

database
	^database!

database: anObject
	database := anObject!

generateTablesFor: anUMLClass
	| mainTable |

	(mappedClasses includes: anUMLClass)
	ifFalse: [mainTable := anUMLClass createTableWithAttributes.
		database addTable: mainTable.
		mappedClasses add: anUMLClass.].

	anUMLClass instanciableRelations do: [:eachRelation | | relatedClass tableForward tableBackward relatedTable |

		relatedClass := eachRelation relatedClassTo: anUMLClass.
		(mappedClasses includes: relatedClass) 
		ifFalse: [relatedTable := relatedClass createTableWithAttributes.
			database addTable: relatedTable.
			mappedClasses add: relatedClass.].
		tableForward := self createRelationTable: anUMLClass backward: relatedClass with: eachRelation.
		tableBackward := self createRelationTable: relatedClass backward: anUMLClass with: eachRelation.
		(eachRelation isNavigableFrom: anUMLClass) ifTrue: [database addTable: tableForward].
		(eachRelation isNavigableFrom: relatedClass) ifTrue: [database addTable: tableBackward].
		]


	!

initialize

	super initialize.

	database := BBDataBaseModel new.
	mappedClasses := OrderedCollection new.!

mappedClasses
	^mappedClasses!

mappedClasses: anObject
	mappedClasses := anObject!

runMapping

	umlModel umlClasses do: [:each | self generateTablesFor: each]!

umlModel
	^umlModel!

umlModel: anObject

	umlModel := anObject.
	database name: anObject name.! !
!UMLDatabaseMapper categoriesFor: #createRelationTable:backward:with:!public! !
!UMLDatabaseMapper categoriesFor: #database!accessing!private! !
!UMLDatabaseMapper categoriesFor: #database:!accessing!private! !
!UMLDatabaseMapper categoriesFor: #generateTablesFor:!public! !
!UMLDatabaseMapper categoriesFor: #initialize!public! !
!UMLDatabaseMapper categoriesFor: #mappedClasses!accessing!private! !
!UMLDatabaseMapper categoriesFor: #mappedClasses:!accessing!private! !
!UMLDatabaseMapper categoriesFor: #runMapping!public! !
!UMLDatabaseMapper categoriesFor: #umlModel!accessing!private! !
!UMLDatabaseMapper categoriesFor: #umlModel:!accessing!private! !

!UMLDatabaseMapper class methodsFor!

umlModel: anUMLModel

	^super new initialize
		umlModel: anUMLModel;
		yourself.! !
!UMLDatabaseMapper class categoriesFor: #umlModel:!public! !

