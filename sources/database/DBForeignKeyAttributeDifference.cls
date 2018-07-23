"Filed out from Dolphin Smalltalk 7"!

DBForeignKeyDifference subclass: #DBForeignKeyAttributeDifference
	instanceVariableNames: 'table absentForeignKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBForeignKeyAttributeDifference guid: (GUID fromString: '{08f75cdc-a51d-4d6a-912e-583a63caeeee}')!
DBForeignKeyAttributeDifference comment: ''!
!DBForeignKeyAttributeDifference categoriesForClass!Unclassified! !
!DBForeignKeyAttributeDifference methodsFor!

absentForeignKey
	^absentForeignKey!

absentForeignKey: anObject
	absentForeignKey := anObject!

comparedElement

	^absentForeignKey!

oppositeComparedElement

	^(absentForeignKey table == self firstElement) ifTrue: [self secondElement foreignKeyEqualNameTo: absentForeignKey] ifFalse: [self firstElement foreignKeyEqualNameTo: absentForeignKey]!

rtfDetail

	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil\fcharset0 Segoe UI;}{\f2\fnil Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 The Foreign key named\cf0\b0\f1\fs18  \cf2\b\f0\fs24 ', absentForeignKey localName, ' \cf3 has changed\cf1  attributes in model\cf0\b0\f1\fs18  \cf2\b\f0\fs24 ', table modelName,'\cf0\lang2057\b0\f2\fs18 
\par }
'!

table
	^table!

table: anObject
	table := anObject!

typeString

	^'The Foreign key named <', absentForeignKey localName, '> does not exist in model <', table modelName, '>'! !
!DBForeignKeyAttributeDifference categoriesFor: #absentForeignKey!accessing!private! !
!DBForeignKeyAttributeDifference categoriesFor: #absentForeignKey:!accessing!private! !
!DBForeignKeyAttributeDifference categoriesFor: #comparedElement!public! !
!DBForeignKeyAttributeDifference categoriesFor: #oppositeComparedElement!public! !
!DBForeignKeyAttributeDifference categoriesFor: #rtfDetail!public! !
!DBForeignKeyAttributeDifference categoriesFor: #table!accessing!private! !
!DBForeignKeyAttributeDifference categoriesFor: #table:!accessing!private! !
!DBForeignKeyAttributeDifference categoriesFor: #typeString!public! !

!DBForeignKeyAttributeDifference class methodsFor!

icon

	^BBDBForeignKey icon!

isComboSelectable

	^true!

printComboName
	^'The Foreign key has changed attributes'!

table: aBBDBTable absentForeignKey: aBBDBForeignKey

	^super new initialize
		table: aBBDBTable;
		absentForeignKey: aBBDBForeignKey;
		yourself.!

table: aBBDBTable absentForeignKey: aBBDBForeignKey comparator: aDBElementComparision

	^super new initialize
		table: aBBDBTable;
		absentForeignKey: aBBDBForeignKey;
		comparator: aDBElementComparision;
		yourself.! !
!DBForeignKeyAttributeDifference class categoriesFor: #icon!public! !
!DBForeignKeyAttributeDifference class categoriesFor: #isComboSelectable!public! !
!DBForeignKeyAttributeDifference class categoriesFor: #printComboName!public! !
!DBForeignKeyAttributeDifference class categoriesFor: #table:absentForeignKey:!public! !
!DBForeignKeyAttributeDifference class categoriesFor: #table:absentForeignKey:comparator:!public! !

