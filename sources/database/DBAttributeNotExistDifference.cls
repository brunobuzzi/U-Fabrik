"Filed out from Dolphin Smalltalk 7"!

DBAttributeDifference subclass: #DBAttributeNotExistDifference
	instanceVariableNames: 'absentTable'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBAttributeNotExistDifference guid: (GUID fromString: '{f48792cc-841a-4c12-8213-9cb3026399da}')!
DBAttributeNotExistDifference comment: ''!
!DBAttributeNotExistDifference categoriesForClass!Unclassified! !
!DBAttributeNotExistDifference methodsFor!

absentTable
	^absentTable!

absentTable: anObject 
	absentTable := anObject!

comparedElement

	^absentTable!

oppositeComparedElement

	^(absentTable == self firstElement) ifTrue: [self secondElement] ifFalse: [self firstElement]!

rtfDetail

	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 The attribute named \cf2 ', attribute tableName, '\cf3 .', attribute name, ' \cf2 ', attribute printType, ' \cf3 \cf4 does not \cf1 exist in model \cf3 ', absentTable modelName,'\cf0\lang2057\b0\f1\fs18 \par }'.!

typeString

	^'The attribute named <' , attribute tableName, '.', attribute name , '> (', attribute printType , ') does not exist in model <' , absentTable modelName , '>'! !
!DBAttributeNotExistDifference categoriesFor: #absentTable!accessing!private! !
!DBAttributeNotExistDifference categoriesFor: #absentTable:!accessing!private! !
!DBAttributeNotExistDifference categoriesFor: #comparedElement!public! !
!DBAttributeNotExistDifference categoriesFor: #oppositeComparedElement!public! !
!DBAttributeNotExistDifference categoriesFor: #rtfDetail!public! !
!DBAttributeNotExistDifference categoriesFor: #typeString!public! !

!DBAttributeNotExistDifference class methodsFor!

attribute: aBBDBAttribute absentTable: aBBDBTable  comparator: aDBElementComparision
	^(super new initialize)
		attribute: aBBDBAttribute;
		absentTable: aBBDBTable;
		comparator: aDBElementComparision;
		yourself!

icon

	^BBDBAttribute icon!

isComboSelectable

	^true!

printComboName
	^'Attribute Not Exist in Table'! !
!DBAttributeNotExistDifference class categoriesFor: #attribute:absentTable:comparator:!public! !
!DBAttributeNotExistDifference class categoriesFor: #icon!public! !
!DBAttributeNotExistDifference class categoriesFor: #isComboSelectable!public! !
!DBAttributeNotExistDifference class categoriesFor: #printComboName!public! !

