"Filed out from Dolphin Smalltalk 7"!

UMLSideMultiplicityDifference subclass: #UMLSourceSideMultiplicityDifference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLSourceSideMultiplicityDifference guid: (GUID fromString: '{ea3ab4a2-1e77-4f66-a137-38ddbc392172}')!
UMLSourceSideMultiplicityDifference comment: ''!
!UMLSourceSideMultiplicityDifference categoriesForClass!Unclassified! !
!UMLSourceSideMultiplicityDifference methodsFor!

rtfDetail

	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang2057\b\f0\fs24 Side Multiplicity Change in relation\cf0\b0\f1\fs18  \cf2\lang1033\b\f0\fs24 ', comparator printClassesNames,'\cf0\lang2057\b0\f1\fs18 . \cf1\b\f0\fs24 In the first model the side multiplicity is\cf0\b0\f1\fs18  \cf3\lang1033\b\f0\fs24 ', comparator printFirstLongName,'\lang2057  \cf1 and in the second model the side multiplicity is\cf0\b0\f1\fs18  \cf3\lang1033\b\f0\fs24 ', comparator printSecondLongName ,'\cf0\lang2057\b0\f1\fs18 
\par }'!

typeString

	^'Side Multiplicity Change in relation <', comparator printClassesNames, '>. In the first model the side multiplicity is <', comparator printFirstLongName, '> and in the second model the side multiplicity is <', comparator printSecondLongName, '>'
! !
!UMLSourceSideMultiplicityDifference categoriesFor: #rtfDetail!public! !
!UMLSourceSideMultiplicityDifference categoriesFor: #typeString!public! !

!UMLSourceSideMultiplicityDifference class methodsFor!

isComboSelectable
	^true!

printComboName

	^'Multiplicity Source Side changed'! !
!UMLSourceSideMultiplicityDifference class categoriesFor: #isComboSelectable!public! !
!UMLSourceSideMultiplicityDifference class categoriesFor: #printComboName!public! !

