"Filed out from Dolphin Smalltalk 7"!

UMLClassDifference subclass: #UMLClassNotExistDifference
	instanceVariableNames: 'absentModel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassNotExistDifference guid: (GUID fromString: '{97a7086c-a5bd-41ca-88b7-ff8be83b8ea9}')!
UMLClassNotExistDifference comment: ''!
!UMLClassNotExistDifference categoriesForClass!Unclassified! !
!UMLClassNotExistDifference methodsFor!

absentModel
	^absentModel!

absentModel: anObject
	absentModel := anObject!

absentModelName

	absentModel ifNil: [^''].

	^absentModel name!

classNotPresentName

	^self firstClass name!

rtfDetail
	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 The class \cf2', self firstClass name, ' \cf3 does not exist \cf1 in the model \cf2 ', self absentModelName,'\cf0\b0\f1\fs18 
\par }
'!

typeString

	^'Class <', self firstClass name,'> Not Exist in <', self absentModelName, '>'! !
!UMLClassNotExistDifference categoriesFor: #absentModel!accessing!private! !
!UMLClassNotExistDifference categoriesFor: #absentModel:!accessing!private! !
!UMLClassNotExistDifference categoriesFor: #absentModelName!public! !
!UMLClassNotExistDifference categoriesFor: #classNotPresentName!public! !
!UMLClassNotExistDifference categoriesFor: #rtfDetail!public! !
!UMLClassNotExistDifference categoriesFor: #typeString!public! !

!UMLClassNotExistDifference class methodsFor!

icon

	^Error icon!

isComboSelectable

	^true!

printComboName

	^'Class does not exist'! !
!UMLClassNotExistDifference class categoriesFor: #icon!public! !
!UMLClassNotExistDifference class categoriesFor: #isComboSelectable!public! !
!UMLClassNotExistDifference class categoriesFor: #printComboName!public! !

