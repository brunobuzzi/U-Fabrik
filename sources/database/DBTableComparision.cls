"Filed out from Dolphin Smalltalk 7"!

DBElementComparision subclass: #DBTableComparision
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBTableComparision guid: (GUID fromString: '{601e59c5-96dd-4b8c-8224-5eefad4587c6}')!
DBTableComparision comment: ''!
!DBTableComparision categoriesForClass!Unclassified! !
!DBTableComparision methodsFor!

compareAttributes

	^self compareMissingAttributes, self compareAttributeTypeDifference!

compareAttributeTypeDifference
	| differences |

	"((firstElement attributes select: [:each | secondElement includesAttributeNamed: each name])
		allSatisfy: [:each | (secondElement getAttributeNamed: each name) printType = each printType]) ifTrue: [^OrderedCollection new]."

	differences := OrderedCollection new.

	(firstElement attributes select: [:each | secondElement includesAttributeNamed: each name]) do: [:each |  | difference |
		((secondElement getAttributeNamed: each name) printType = each printType)
		ifFalse: [difference := DBAttributeTypeDifference attribute: each typeValue: each printType comparator: self.
				differences add: difference]].

	(secondElement attributes select: [:each | firstElement includesAttributeNamed: each name]) do: [:each |  | difference |
		((firstElement getAttributeNamed: each name) printType = each printType)
		ifFalse: [difference := DBAttributeTypeDifference attribute: each typeValue: each printType comparator: self.
				differences add: difference]].

	^differences
!

compareElements

	^self compareAttributes, self comparePrimaryKeys, self compareForeignKeys!

compareForeignKeys

	^self compareForeignKeysMissingAttribute!

compareForeignKeysMissingAttribute
	| differences |

	differences := OrderedCollection new.

	firstElement foreignKeys do: [:eachFK | | fkMatch |
		fkMatch := secondElement foreignKeys anySatisfy: [:each | each isEqualTo: eachFK].
		fkMatch ifFalse: [ | difference |
			difference := DBForeignKeyAttributeDifference table: secondElement absentForeignKey: eachFK comparator: self.
			differences add: difference] ].

	"secondElement foreignKeys do: [:eachFK | | fkMatch |
		fkMatch := firstElement foreignKeys anySatisfy: [:each | each isEqualTo: eachFK].
		fkMatch ifFalse: [ | difference |
			difference := DBForeignKeyAttributeDifference table: secondElement absentForeignKey: eachFK.
			differences add: difference] ]."

	^differences!

compareMissingAttributes
	| differences firstElementAttributesNotPresent secondElementAttributesNotPresent |

	differences := OrderedCollection new.
	firstElementAttributesNotPresent := self getFirstElementAttributesNotPresent.
	secondElementAttributesNotPresent := self getSecondElementAttributesNotPresent.

	differences addAll: (firstElementAttributesNotPresent collect: [:each | DBAttributeNotExistDifference attribute: (firstElement getAttributeNamed: each) absentTable: secondElement comparator: self]).
	
	differences addAll: (secondElementAttributesNotPresent collect: [:each | DBAttributeNotExistDifference attribute: (secondElement getAttributeNamed: each) absentTable: firstElement comparator: self]).

	^differences!

comparePrimaryKeyDoesNotExist

	firstElement hasPrimaryKey = secondElement hasPrimaryKey ifTrue: [^OrderedCollection new].

	firstElement hasPrimaryKey ifFalse: [^OrderedCollection with: (DBPrimaryKeyNotExistDifference tableName: firstElement absentModel: firstElement databaseModel comparator: self)].

	^OrderedCollection with: (DBPrimaryKeyNotExistDifference tableName: secondElement absentModel: secondElement databaseModel comparator: self)!

comparePrimaryKeys

	^self comparePrimaryKeysMissingAttribute, self comparePrimaryKeyDoesNotExist!

comparePrimaryKeysMissingAttribute
	| differences |

	differences := OrderedCollection new.
	(firstElement primaryKey isEqualTo: secondElement primaryKey) ifTrue: [^differences].

	(self getAttributesNotPresentIn: firstElement primaryKeyAttributes comparedTo: secondElement primaryKeyAttributes) do: [:each | differences add: (DBPrimaryKeyAttributeDifference table: secondElement missingAttribute: (firstElement getAttributeNamed: each) comparator: self)].

	(self getAttributesNotPresentIn: secondElement primaryKeyAttributes comparedTo: firstElement primaryKeyAttributes) do: [:each | differences add: (DBPrimaryKeyAttributeDifference table: firstElement missingAttribute: (secondElement getAttributeNamed: each) comparator: self)].

	^differences!

getAttributesNotPresentIn: firstCollection comparedTo: secondCollection

	^(firstCollection collect: [:each | each name]) asSortedCollection difference: (secondCollection collect: [:each | each name]) asSortedCollection!

getCommonAttributes

	^(firstElement attributes collect: [:each | each name]) intersection: (secondElement attributes collect: [:each | each name])!

getFirstElementAttributesNotPresent

	^self getAttributesNotPresentIn: firstElement attributes comparedTo: secondElement attributes!

getSecondElementAttributesNotPresent

	^self getAttributesNotPresentIn: secondElement attributes comparedTo: firstElement attributes!

rtfDetail

	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 Difference list for table named \cf2 ', firstElement name,' \cf3 
\par }'
!

secondElementInstancesVariables

	^secondElement instancesVariables!

typeString
	^'Table Comparision <', firstElement name, '>'! !
!DBTableComparision categoriesFor: #compareAttributes!comparision-attributes!public! !
!DBTableComparision categoriesFor: #compareAttributeTypeDifference!comparision-attributes!public! !
!DBTableComparision categoriesFor: #compareElements!comparision-attributes!comparision-foreign key!comparision-primary key!public! !
!DBTableComparision categoriesFor: #compareForeignKeys!comparision-foreign key!public! !
!DBTableComparision categoriesFor: #compareForeignKeysMissingAttribute!comparision-foreign key!public! !
!DBTableComparision categoriesFor: #compareMissingAttributes!comparision-attributes!public! !
!DBTableComparision categoriesFor: #comparePrimaryKeyDoesNotExist!comparision-primary key!public! !
!DBTableComparision categoriesFor: #comparePrimaryKeys!comparision-primary key!public! !
!DBTableComparision categoriesFor: #comparePrimaryKeysMissingAttribute!comparision-primary key!public! !
!DBTableComparision categoriesFor: #getAttributesNotPresentIn:comparedTo:!get minor differences!public! !
!DBTableComparision categoriesFor: #getCommonAttributes!get minor differences!public! !
!DBTableComparision categoriesFor: #getFirstElementAttributesNotPresent!get minor differences!public! !
!DBTableComparision categoriesFor: #getSecondElementAttributesNotPresent!get minor differences!public! !
!DBTableComparision categoriesFor: #rtfDetail!public! !
!DBTableComparision categoriesFor: #secondElementInstancesVariables!public! !
!DBTableComparision categoriesFor: #typeString!public! !

!DBTableComparision class methodsFor!

icon

	^BBDBTable icon! !
!DBTableComparision class categoriesFor: #icon!public! !

