"Filed out from Dolphin Smalltalk 7"!

UMLSideMultiplicityDifference subclass: #UMLTargetSideMultiplicityDifference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTargetSideMultiplicityDifference guid: (GUID fromString: '{e47aea0b-6889-44f0-831b-a17eb5cf2e2b}')!
UMLTargetSideMultiplicityDifference comment: ''!
!UMLTargetSideMultiplicityDifference categoriesForClass!Unclassified! !
!UMLTargetSideMultiplicityDifference methodsFor!

rtfDetail
	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang2057\b\f0\fs24 Side Multiplicity Change in relation\cf0\b0\f1\fs18  \cf2\lang1033\b\f0\fs24 ', comparator printClassesNames,'\cf0\lang2057\b0\f1\fs18 . \cf1\b\f0\fs24 In the first model the side multiplicity is\cf0\b0\f1\fs18  \cf3\lang1033\b\f0\fs24 ', comparator printFirstLongName,'\lang2057  \cf1 and in the second model the side multiplicity is\cf0\b0\f1\fs18  \cf3\lang1033\b\f0\fs24 ', comparator printSecondLongName ,'\cf0\lang2057\b0\f1\fs18 
\par }'!

typeString

	^'Side Multiplicity Change in relation <', comparator printClassesNames, '>. In the first model the side multiplicity is <', comparator printFirstLongName, '> and in the second model the side multiplicity is <', comparator printSecondLongName, '>'! !
!UMLTargetSideMultiplicityDifference categoriesFor: #rtfDetail!public! !
!UMLTargetSideMultiplicityDifference categoriesFor: #typeString!public! !

!UMLTargetSideMultiplicityDifference class methodsFor!

isComboSelectable
	^true!

printComboName

	^'Multiplicity Target Side changed'! !
!UMLTargetSideMultiplicityDifference class categoriesFor: #isComboSelectable!public! !
!UMLTargetSideMultiplicityDifference class categoriesFor: #printComboName!public! !

