"Filed out from Dolphin Smalltalk 7"!

UMLRelationAbstractDifference subclass: #UMLNavigabilityDifference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLNavigabilityDifference guid: (GUID fromString: '{7ddf41b2-806c-4b85-9d55-0e40c6a6c44c}')!
UMLNavigabilityDifference comment: ''!
!UMLNavigabilityDifference categoriesForClass!Unclassified! !
!UMLNavigabilityDifference methodsFor!

rtfDetail

	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\lang2057\b\f0\fs24 Navigability Change in clase \cf2', comparator printClassName, '\cf1   in the first model is\cf0\b0\f1\fs18  \cf2\b\f0\fs24 Source -> Destination\cf0\b0\f1\fs18  \cf1\b\f0\fs24 and in the second model is \cf2 Unspecified\cf0\b0\f1\fs18 
\par }
'!

typeString

	^'Navigability Change in class <', comparator printClassName ,'> in the first model is <', comparator printFirstNavigability, '> and in the second model is <', comparator printSecondNavigability,'>'! !
!UMLNavigabilityDifference categoriesFor: #rtfDetail!public! !
!UMLNavigabilityDifference categoriesFor: #typeString!public! !

!UMLNavigabilityDifference class methodsFor!

isComboSelectable
	^true!

printComboName

	^'Navigability changed'! !
!UMLNavigabilityDifference class categoriesFor: #isComboSelectable!public! !
!UMLNavigabilityDifference class categoriesFor: #printComboName!public! !

