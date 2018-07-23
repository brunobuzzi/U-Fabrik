"Filed out from Dolphin Smalltalk 7"!

UMLInstVarAbstractDifference subclass: #UMLInstVarTypeDifference
	instanceVariableNames: 'firstClassType secondClassType'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLInstVarTypeDifference guid: (GUID fromString: '{3713d31e-ece4-4565-8048-3bcb6976bc7e}')!
UMLInstVarTypeDifference comment: ''!
!UMLInstVarTypeDifference categoriesForClass!Unclassified! !
!UMLInstVarTypeDifference methodsFor!

firstClassType
	^firstClassType!

firstClassType: anObject
	firstClassType := anObject!

rtfDetail
	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 The instance variable \cf2',  varName, '\cf1  of the class \cf2 ', firstClass name, ' \cf3 has changed it''s\cf2  \cf3 type\cf1 .\cf2  \cf1 In the first model the type is\cf2  <', firstClassType, '> \cf1 and in the second model is\cf2  <', secondClassType, '>\cf0\b0\f1\fs18 
\par }
'!

secondClassType
	^secondClassType!

secondClassType: anObject
	secondClassType := anObject!

typeString

	^'Inst Var Type Change <', varName, '> left type <', firstClassType, '> right type <', secondClassType , '>'! !
!UMLInstVarTypeDifference categoriesFor: #firstClassType!accessing!private! !
!UMLInstVarTypeDifference categoriesFor: #firstClassType:!accessing!private! !
!UMLInstVarTypeDifference categoriesFor: #rtfDetail!public! !
!UMLInstVarTypeDifference categoriesFor: #secondClassType!accessing!private! !
!UMLInstVarTypeDifference categoriesFor: #secondClassType:!accessing!private! !
!UMLInstVarTypeDifference categoriesFor: #typeString!public! !

!UMLInstVarTypeDifference class methodsFor!

isComboSelectable

	^true!

printComboName

	^'Instance variable type changed'! !
!UMLInstVarTypeDifference class categoriesFor: #isComboSelectable!public! !
!UMLInstVarTypeDifference class categoriesFor: #printComboName!public! !

