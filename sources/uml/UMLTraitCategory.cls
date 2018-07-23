"Filed out from Dolphin Smalltalk 7"!

UMLVirtualImplementationCategory subclass: #UMLTraitCategory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTraitCategory guid: (GUID fromString: '{3e983f37-3c8b-4273-8539-9fc90feba2f8}')!
UMLTraitCategory comment: ''!
!UMLTraitCategory categoriesForClass!Unclassified! !
!UMLTraitCategory methodsFor!

isTraitCategory

	^true!

methodsFor: anUMLClassDescription

	^anUMLClassDescription traitsImplementations asSortedCollection: [:a :b | a name <= b name]!

name

	^'Trait'! !
!UMLTraitCategory categoriesFor: #isTraitCategory!public! !
!UMLTraitCategory categoriesFor: #methodsFor:!public! !
!UMLTraitCategory categoriesFor: #name!public! !

!UMLTraitCategory class methodsFor!

current

"	Current ifNil: [Current := super new initialize]."

	^current
!

defaultName

	^'Trait'!

icon

	^UMLTrait icon! !
!UMLTraitCategory class categoriesFor: #current!public! !
!UMLTraitCategory class categoriesFor: #defaultName!public! !
!UMLTraitCategory class categoriesFor: #icon!public! !

