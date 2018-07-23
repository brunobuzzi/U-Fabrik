"Filed out from Dolphin Smalltalk 7"!

DBPrimaryKeyDifference subclass: #DBPrimaryKeyNotExistDifference
	instanceVariableNames: 'absentModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBPrimaryKeyNotExistDifference guid: (GUID fromString: '{6f4c993d-f934-4763-89a4-0427e842bb0c}')!
DBPrimaryKeyNotExistDifference comment: ''!
!DBPrimaryKeyNotExistDifference categoriesForClass!Unclassified! !
!DBPrimaryKeyNotExistDifference methodsFor!

absentModel
	^absentModel!

absentModel: anObject 
	absentModel := anObject!

rtfDetail
	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}}
{\colortbl ;\red0\green0\blue0;\red255\green0\blue0;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 Primary key \cf2 does not exist\cf1  in table \cf3 ' 
		, table name , '\cf1  in model \cf3 ' 
		, absentModel name, '\cf2 \par }'!

typeString

	^'Primary key does not exist in table <', table name, '> in model <', absentModel name, '>'! !
!DBPrimaryKeyNotExistDifference categoriesFor: #absentModel!accessing!private! !
!DBPrimaryKeyNotExistDifference categoriesFor: #absentModel:!accessing!private! !
!DBPrimaryKeyNotExistDifference categoriesFor: #rtfDetail!public! !
!DBPrimaryKeyNotExistDifference categoriesFor: #typeString!public! !

!DBPrimaryKeyNotExistDifference class methodsFor!

icon

	^Icon fromId: 'CompileFailedMethod.ico'!

isComboSelectable

	^true!

printComboName
	^'The Primary key does not exist'!

tableName: aString absentModel: aBBDataBaseModel comparator: aDBElementComparision
	^(super new initialize)
		table: aString;
		absentModel: aBBDataBaseModel;
		comparator: aDBElementComparision;
		yourself! !
!DBPrimaryKeyNotExistDifference class categoriesFor: #icon!public! !
!DBPrimaryKeyNotExistDifference class categoriesFor: #isComboSelectable!public! !
!DBPrimaryKeyNotExistDifference class categoriesFor: #printComboName!public! !
!DBPrimaryKeyNotExistDifference class categoriesFor: #tableName:absentModel:comparator:!public! !

