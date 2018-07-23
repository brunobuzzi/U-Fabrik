"Filed out from Dolphin Smalltalk 7"!

DBTableDifference subclass: #DBTableNotExistDifference
	instanceVariableNames: 'table absentModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBTableNotExistDifference guid: (GUID fromString: '{a8122513-926c-4197-a75a-cd5c3e4e9219}')!
DBTableNotExistDifference comment: ''!
!DBTableNotExistDifference categoriesForClass!Unclassified! !
!DBTableNotExistDifference methodsFor!

absentModel
	^absentModel!

absentModel: anObject 
	absentModel := anObject!

comparedElement

	^absentModel!

initialize

	super initialize.!

missingInModelName
	^absentModel name!

oppositeComparedElement

	^(absentModel == self firstElement) ifTrue: [self secondElement] ifFalse: [self firstElement]!

rtfDetail
	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 The Table named \cf2', table name , ' \cf3 does not exist \cf1 in the model \cf2 ', self missingInModelName,'\cf0\b0\f1\fs18 
\par }
'!

table
	^table!

table: anObject
	table := anObject!

typeString
	^'The Table named <' , table name , '> does not exist in model <' , absentModel name , '>'! !
!DBTableNotExistDifference categoriesFor: #absentModel!accessing!private! !
!DBTableNotExistDifference categoriesFor: #absentModel:!accessing!private! !
!DBTableNotExistDifference categoriesFor: #comparedElement!public! !
!DBTableNotExistDifference categoriesFor: #initialize!public! !
!DBTableNotExistDifference categoriesFor: #missingInModelName!public! !
!DBTableNotExistDifference categoriesFor: #oppositeComparedElement!public! !
!DBTableNotExistDifference categoriesFor: #rtfDetail!public! !
!DBTableNotExistDifference categoriesFor: #table!accessing!private! !
!DBTableNotExistDifference categoriesFor: #table:!accessing!private! !
!DBTableNotExistDifference categoriesFor: #typeString!public! !

!DBTableNotExistDifference class methodsFor!

icon

	^Error icon!

isComboSelectable

	^true!

printComboName
	^'Table does not exist'!

table: aBBDBTable absentModel: aBBDataBaseModel 
	^(super new initialize)
		table: aBBDBTable;
		absentModel: aBBDataBaseModel;
		yourself!

table: aBBDBTable absentModel: aBBDataBaseModel comparator: aDBElementComparision
	^(super new initialize)
		table: aBBDBTable;
		absentModel: aBBDataBaseModel;
		comparator: aDBElementComparision;
		yourself! !
!DBTableNotExistDifference class categoriesFor: #icon!public! !
!DBTableNotExistDifference class categoriesFor: #isComboSelectable!public! !
!DBTableNotExistDifference class categoriesFor: #printComboName!public! !
!DBTableNotExistDifference class categoriesFor: #table:absentModel:!public! !
!DBTableNotExistDifference class categoriesFor: #table:absentModel:comparator:!public! !

