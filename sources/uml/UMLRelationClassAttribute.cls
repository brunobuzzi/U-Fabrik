"Filed out from Dolphin Smalltalk 7"!

UMLComplexClassAttribute subclass: #UMLRelationClassAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRelationClassAttribute guid: (GUID fromString: '{cc16d9a3-a030-486f-b178-a11e97e95ef2}')!
UMLRelationClassAttribute comment: 'This class represent the attributes of an UMLClass generated from a UMLRelation rather than a simple attribute.

Instances Variables:

relation	- the UMLRelation which generated the attribute'!
!UMLRelationClassAttribute categoriesForClass!Unclassified! !
!UMLRelationClassAttribute methodsFor!

icon

	^relation icon!

originalType

	^'Relation'! !
!UMLRelationClassAttribute categoriesFor: #icon!public! !
!UMLRelationClassAttribute categoriesFor: #originalType!public! !

!UMLRelationClassAttribute class methodsFor!

icon

	^UMLRelation icon! !
!UMLRelationClassAttribute class categoriesFor: #icon!public! !

