"Filed out from Dolphin Smalltalk 7"!

UMLInstVarAbstractDifference subclass: #UMLInstVarDifference
	instanceVariableNames: 'absentModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLInstVarDifference guid: (GUID fromString: '{b2e86b95-5811-449e-80d7-388372443ad8}')!
UMLInstVarDifference comment: ''!
!UMLInstVarDifference categoriesForClass!Unclassified! !
!UMLInstVarDifference methodsFor!

absentModel
	^absentModel!

absentModel: anObject
	absentModel := anObject!

absentModelName

	absentModel ifNil: [^''].

	^absentModel name!

rtfDetail
	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 The instance variable \cf2 ', varName, ' \cf1 of the class \cf2 ', firstClass name, ' \cf3 does not exist \cf1 in the model \cf2 ', self absentModelName ,'\cf0\b0\f1\fs18 
\par }'!

typeString

	^'Inst Var <', varName, '> Not Exist in model <', self absentModelName, '>'! !
!UMLInstVarDifference categoriesFor: #absentModel!accessing!private! !
!UMLInstVarDifference categoriesFor: #absentModel:!accessing!private! !
!UMLInstVarDifference categoriesFor: #absentModelName!public! !
!UMLInstVarDifference categoriesFor: #rtfDetail!public! !
!UMLInstVarDifference categoriesFor: #typeString!public! !

!UMLInstVarDifference class methodsFor!

icon

	^Icon fromId: 'CompileFailedMethod.ico'!

isComboSelectable

	^true!

printComboName

	^'Instance variable of a Class does not exist'! !
!UMLInstVarDifference class categoriesFor: #icon!public! !
!UMLInstVarDifference class categoriesFor: #isComboSelectable!public! !
!UMLInstVarDifference class categoriesFor: #printComboName!public! !

