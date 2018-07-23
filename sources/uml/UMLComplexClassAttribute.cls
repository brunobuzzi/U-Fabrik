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

isSelfReferenceAttribute

	^relation isSelfReferenceClass!

relatedClassTo: anUMLClass 

	^relation relatedClassTo: anUMLClass 
!

relation
	^relation!

relation: anObject
	relation := anObject!

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
!UMLComplexClassAttribute categoriesFor: #isSelfReferenceAttribute!public! !
!UMLComplexClassAttribute categoriesFor: #relatedClassTo:!public! !
!UMLComplexClassAttribute categoriesFor: #relation!accessing!private! !
!UMLComplexClassAttribute categoriesFor: #relation:!accessing!private! !
!UMLComplexClassAttribute categoriesFor: #uninstall!public! !

!UMLComplexClassAttribute class methodsFor!

relation: anUMLRelation

	^super new initialize
		relation: anUMLRelation;
		yourself.! !
!UMLComplexClassAttribute class categoriesFor: #relation:!public! !

