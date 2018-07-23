"Filed out from Dolphin Smalltalk 7"!

UMLElementDifference subclass: #UMLRelationAbstractDifference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRelationAbstractDifference guid: (GUID fromString: '{52e225ef-6487-429c-8ab4-97285d5bd9cd}')!
UMLRelationAbstractDifference comment: ''!
!UMLRelationAbstractDifference categoriesForClass!Unclassified! !
!UMLRelationAbstractDifference methodsFor!

typeString

	^'Relation Change'! !
!UMLRelationAbstractDifference categoriesFor: #typeString!public! !

!UMLRelationAbstractDifference class methodsFor!

icon

	^Exception icon!

relation: anUMLRelation

	^super new initialize
		relation: anUMLRelation;
		yourself.! !
!UMLRelationAbstractDifference class categoriesFor: #icon!public! !
!UMLRelationAbstractDifference class categoriesFor: #relation:!public! !

