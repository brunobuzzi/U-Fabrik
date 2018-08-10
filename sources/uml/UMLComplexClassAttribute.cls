"Filed out from Dolphin Smalltalk 7"!

UMLClassAttribute subclass: #UMLComplexClassAttribute
	instanceVariableNames: 'relation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLComplexClassAttribute guid: (GUID fromString: '{db96521f-8c53-40f3-9865-e1d2ee484fac}')!
UMLComplexClassAttribute comment: ''!
!UMLComplexClassAttribute categoriesForClass!Unclassified! !
!UMLComplexClassAttribute methodsFor!

getSymbolToBreakLinkWith: anUMLClass 

	anUMLClass isClassAssociation ifTrue: [^#setDirectRelationWith:].
	^(relation getCounterpartMultiplicityFor: anUMLClass) breakLinkSymbol!

getSymbolToLinkWith: anUMLClass 

	(anUMLClass isClassAssociation or: ["for subclasses of an ClassAssociation"anUMLClass allSuperclasses anySatisfy: [:each | each isClassAssociation]]) 
	ifTrue: [^#setDirectRelationWith:].
	^(relation getCounterpartMultiplicityFor: anUMLClass) linkSymbol!

getType

	^type!

hasMultipleInstances

	relation isSelfReferenceClass ifTrue: [^false].
	^relation hasMultipleInstances: umlClass!

icon

	^relation icon!

isAssociationClass

	^relation isAssociationClass!

isBasic

	^false!

isNavigable: anUMLClass 
	"The receiver answer whether or not the argument <anUMLClass> is navigable"

	^relation isNavigable: anUMLClass !

isSelfReferenceAttribute

	^relation isSelfReferenceClass!

isSourceNavigable

	^relation isSourceNavigable!

isTargetNavigable

	^relation isTargetNavigable!

relatedClassTo: anUMLClass 
	"Answer the related UMLClass of the receiver with the UMLClass argument <anUMLClass>
	1. If the argument <anUMLClass> is the source class or a superclass of <anUMLClass> is the source class then answer the target class
	2. If the argument <anUMLClass> is the target class or a superclass of <anUMLClass> is the target class then answer the source class"

	^relation relatedClassTo: anUMLClass 
!

relation
	^relation!

relation: anObject
	relation := anObject!

relationIsManyToMany

	^relation isManyToMany!

relationIsOneToManyOrManyToOne

	^relation isOneToManyOrManyToOne!

relationIsOneToOne

	^relation isOneToOne!

uninstall

	super uninstall.

	relation := nil.! !
!UMLComplexClassAttribute categoriesFor: #getSymbolToBreakLinkWith:!public! !
!UMLComplexClassAttribute categoriesFor: #getSymbolToLinkWith:!public! !
!UMLComplexClassAttribute categoriesFor: #getType!public! !
!UMLComplexClassAttribute categoriesFor: #hasMultipleInstances!public! !
!UMLComplexClassAttribute categoriesFor: #icon!public! !
!UMLComplexClassAttribute categoriesFor: #isAssociationClass!public! !
!UMLComplexClassAttribute categoriesFor: #isBasic!public! !
!UMLComplexClassAttribute categoriesFor: #isNavigable:!public! !
!UMLComplexClassAttribute categoriesFor: #isSelfReferenceAttribute!public! !
!UMLComplexClassAttribute categoriesFor: #isSourceNavigable!navigability!public! !
!UMLComplexClassAttribute categoriesFor: #isTargetNavigable!navigability!public! !
!UMLComplexClassAttribute categoriesFor: #relatedClassTo:!public! !
!UMLComplexClassAttribute categoriesFor: #relation!accessing!private! !
!UMLComplexClassAttribute categoriesFor: #relation:!accessing!private! !
!UMLComplexClassAttribute categoriesFor: #relationIsManyToMany!multiplicity!public! !
!UMLComplexClassAttribute categoriesFor: #relationIsOneToManyOrManyToOne!multiplicity!public! !
!UMLComplexClassAttribute categoriesFor: #relationIsOneToOne!multiplicity!public! !
!UMLComplexClassAttribute categoriesFor: #uninstall!public! !

!UMLComplexClassAttribute class methodsFor!

relation: anUMLRelation

	^super new initialize
		relation: anUMLRelation;
		yourself.! !
!UMLComplexClassAttribute class categoriesFor: #relation:!public! !

