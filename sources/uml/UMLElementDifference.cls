"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLElementDifference
	instanceVariableNames: 'comparator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLElementDifference guid: (GUID fromString: '{bcbc774a-2ff3-49f1-9791-af5c6a59d91d}')!
UMLElementDifference comment: ''!
!UMLElementDifference categoriesForClass!Unclassified! !
!UMLElementDifference methodsFor!

comparator
	^comparator!

comparator: anObject
	comparator := anObject!

rtfDetail
	^'{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\b\f0\fs24 \cf0\b0\f1\fs18 
\par }'!

typeString

	^'Change'! !
!UMLElementDifference categoriesFor: #comparator!accessing!private! !
!UMLElementDifference categoriesFor: #comparator:!accessing!private! !
!UMLElementDifference categoriesFor: #rtfDetail!public! !
!UMLElementDifference categoriesFor: #typeString!public! !

!UMLElementDifference class methodsFor!

comparator: anUMLElementComparision

	^super new initialize
		comparator: anUMLElementComparision;
		yourself.!

isComboSelectable
	^false!

printComboName

	^''! !
!UMLElementDifference class categoriesFor: #comparator:!public! !
!UMLElementDifference class categoriesFor: #isComboSelectable!public! !
!UMLElementDifference class categoriesFor: #printComboName!public! !

