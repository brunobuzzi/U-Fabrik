"Filed out from Dolphin Smalltalk 7"!

UMLVirtualImplementationCategory subclass: #UMLAllButTraitCategory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAllButTraitCategory guid: (GUID fromString: '{7b81da24-0739-4ab0-9e0e-1b51392b9bee}')!
UMLAllButTraitCategory comment: ''!
!UMLAllButTraitCategory categoriesForClass!Unclassified! !
!UMLAllButTraitCategory methodsFor!

isAllCategory

	^true!

isAllCategoryButTrait

	^true!

methodsFor: anUMLClassDescription

	^anUMLClassDescription implementations asSortedCollection: [:a :b | a name <= b name]!

name

	^'All but Trait'! !
!UMLAllButTraitCategory categoriesFor: #isAllCategory!public! !
!UMLAllButTraitCategory categoriesFor: #isAllCategoryButTrait!public! !
!UMLAllButTraitCategory categoriesFor: #methodsFor:!public! !
!UMLAllButTraitCategory categoriesFor: #name!public! !

!UMLAllButTraitCategory class methodsFor!

defaultName

	^'All but Trait'!

icon

	^Icon fromFile: 'U-Fabrik/icons/categorybuttrait.ico' ! !
!UMLAllButTraitCategory class categoriesFor: #defaultName!public! !
!UMLAllButTraitCategory class categoriesFor: #icon!public! !

