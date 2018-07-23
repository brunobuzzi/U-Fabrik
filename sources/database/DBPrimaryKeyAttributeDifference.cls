"Filed out from Dolphin Smalltalk 7"!

DBPrimaryKeyDifference subclass: #DBPrimaryKeyAttributeDifference
	instanceVariableNames: 'missingAttribute'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBPrimaryKeyAttributeDifference guid: (GUID fromString: '{16eddf5c-d9c1-45b0-94be-0ece3f1a79b1}')!
DBPrimaryKeyAttributeDifference comment: ''!
!DBPrimaryKeyAttributeDifference categoriesForClass!Unclassified! !
!DBPrimaryKeyAttributeDifference methodsFor!

databaseModel

	^table databaseModel!

missingAttribute
	^missingAttribute!

missingAttribute: anObject
	missingAttribute := anObject!

rtfDetail
	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}}
{\colortbl ;\red0\green0\blue0;\red255\green0\blue0;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 Primary key \cf2 has changed\cf1  attribute \cf3 ', missingAttribute name ,'\cf1  in model \cf3 ',table modelName ,'\cf2 \par }'!

typeString

	^'Primary key has changed attribute <', missingAttribute name ,'> in model <',table modelName ,'>'! !
!DBPrimaryKeyAttributeDifference categoriesFor: #databaseModel!public! !
!DBPrimaryKeyAttributeDifference categoriesFor: #missingAttribute!accessing!private! !
!DBPrimaryKeyAttributeDifference categoriesFor: #missingAttribute:!accessing!private! !
!DBPrimaryKeyAttributeDifference categoriesFor: #rtfDetail!public! !
!DBPrimaryKeyAttributeDifference categoriesFor: #typeString!public! !

!DBPrimaryKeyAttributeDifference class methodsFor!

icon

	^BBDBPrimaryKey icon!

isComboSelectable

	^true!

printComboName
	^'The Primary key has changed attributes'!

table: aBBDBTable missingAttribute: aString comparator: aDBElementComparision

	^super new initialize
		table: aBBDBTable;
		missingAttribute: aString;
		comparator: aDBElementComparision;
		yourself.! !
!DBPrimaryKeyAttributeDifference class categoriesFor: #icon!public! !
!DBPrimaryKeyAttributeDifference class categoriesFor: #isComboSelectable!public! !
!DBPrimaryKeyAttributeDifference class categoriesFor: #printComboName!public! !
!DBPrimaryKeyAttributeDifference class categoriesFor: #table:missingAttribute:comparator:!public! !

