"Filed out from Dolphin Smalltalk 7"!

UMLMultiplicityDifference subclass: #UMLEntireMultiplicityDifference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLEntireMultiplicityDifference guid: (GUID fromString: '{af8b1c48-048d-4fcf-9a57-722658233218}')!
UMLEntireMultiplicityDifference comment: ''!
!UMLEntireMultiplicityDifference categoriesForClass!Unclassified! !
!UMLEntireMultiplicityDifference methodsFor!

rtfDetail

	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil Segoe UI;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;\red255\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang2057\b\f0\fs24 Multiplicity Change in relation\cf0\b0\f1\fs18  \cf2\lang1033\b\f0\fs24 ', comparator printClassesNames,'\cf0\lang2057\b0\f1\fs18 . \cf1\b\f0\fs24 In the first model the multiplicity is\cf0\b0\f1\fs18  \cf3\lang1033\b\f0\fs24 ', comparator printFirstMultiplicity,'\lang2057  \cf1 and in the second model the multiplicity is\cf0\b0\f1\fs18  \cf3\lang1033\b\f0\fs24 ', comparator printSecondMultiplicity ,'\cf0\lang2057\b0\f1\fs18 
\par }'!

typeString

	^'Entire Multiplicity Change in relation <', comparator printClassesNames, '>. In the first model the multiplicity is <', comparator printFirstMultiplicity , '> and in the second model the multiplicity is <', comparator printSecondMultiplicity, '>'
! !
!UMLEntireMultiplicityDifference categoriesFor: #rtfDetail!public! !
!UMLEntireMultiplicityDifference categoriesFor: #typeString!public! !

