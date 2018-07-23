"Filed out from Dolphin Smalltalk 7"!

DBElementComparision subclass: #DBModelComparision
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBModelComparision guid: (GUID fromString: '{0ef5c71c-fdb8-4240-8d41-225167b889ac}')!
DBModelComparision comment: ''!
!DBModelComparision categoriesForClass!Unclassified! !
!DBModelComparision methodsFor!

compareElements
	| differencesTree |

	differencesTree := TreeModel withRoots: (OrderedCollection with: self).

	(firstElement tablesNames difference: secondElement tablesNames) do: [:each | differencesTree add: (DBTableNotExistDifference table: (firstElement getTableNamed: each) absentModel: secondElement comparator: self) asChildOf: self].

	(secondElement tablesNames difference: firstElement tablesNames) do: [:each | differencesTree add: (DBTableNotExistDifference table: (secondElement getTableNamed: each) absentModel: firstElement comparator: self) asChildOf: self].

	(firstElement tablesNames intersection: secondElement tablesNames) do: [:eachTableName | | comparator tableDifferences |
		comparator := DBTableComparision with: (firstElement getTableNamed: eachTableName) with: (secondElement getTableNamed: eachTableName).
		tableDifferences := comparator compareElements.
		tableDifferences notEmpty ifTrue: [differencesTree add: comparator asChildOf: self].
		tableDifferences do: [:eachDiff | differencesTree add: eachDiff asChildOf: comparator]].

	^differencesTree!

rtfDetail

	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red0\green0\blue128;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 Comparision between DBModel \cf2 ',firstElement name,' \cf1 and\cf3  \cf2 ',secondElement name,'\cf4 \par }'!

typeString
	^'Database Model Comparision between <', firstElement name, '> and <', secondElement name, '>'! !
!DBModelComparision categoriesFor: #compareElements!comparision-attributes!comparision-foreign key!comparision-primary key!public! !
!DBModelComparision categoriesFor: #rtfDetail!public! !
!DBModelComparision categoriesFor: #typeString!public! !

!DBModelComparision class methodsFor!

icon

	^BBDataBaseModel icon! !
!DBModelComparision class categoriesFor: #icon!public! !

