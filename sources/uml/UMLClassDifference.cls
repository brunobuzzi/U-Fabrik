"Filed out from Dolphin Smalltalk 7"!

UMLElementDifference subclass: #UMLClassDifference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassDifference guid: (GUID fromString: '{2d008235-fd01-4445-b4b4-dbf7959af64f}')!
UMLClassDifference comment: ''!
!UMLClassDifference categoriesForClass!Unclassified! !
!UMLClassDifference methodsFor!

firstClass

	^comparator firstElement!

secondClass

	^comparator secondClass!

typeString

	^'Class Change'! !
!UMLClassDifference categoriesFor: #firstClass!public! !
!UMLClassDifference categoriesFor: #secondClass!public! !
!UMLClassDifference categoriesFor: #typeString!public! !

!UMLClassDifference class methodsFor!

firstClass: anUMLClass

	^super new initialize
		firstClass: anUMLClass;
		yourself.! !
!UMLClassDifference class categoriesFor: #firstClass:!public! !

