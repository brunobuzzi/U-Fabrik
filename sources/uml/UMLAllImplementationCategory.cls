"Filed out from Dolphin Smalltalk 7"!

UMLVirtualImplementationCategory subclass: #UMLAllImplementationCategory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAllImplementationCategory guid: (GUID fromString: '{01e18754-032d-47b7-b6e8-b8bdd5e90965}')!
UMLAllImplementationCategory comment: ''!
!UMLAllImplementationCategory categoriesForClass!Unclassified! !
!UMLAllImplementationCategory methodsFor!

isAllCategory

	^true!

methodsFor: anUMLClassDescription

	^(anUMLClassDescription implementations asOrderedCollection, anUMLClassDescription traitsImplementations) asSortedCollection: [:a :b | a name <= b name]! !
!UMLAllImplementationCategory categoriesFor: #isAllCategory!public! !
!UMLAllImplementationCategory categoriesFor: #methodsFor:!public! !

!UMLAllImplementationCategory class methodsFor!

defaultName

	^'All'! !
!UMLAllImplementationCategory class categoriesFor: #defaultName!public! !

