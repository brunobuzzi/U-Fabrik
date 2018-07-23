"Filed out from Dolphin Smalltalk 7"!

UMLImplementationCategory subclass: #UMLGUICategory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
UMLGUICategory guid: (GUID fromString: '{bd831a51-e4fb-4a70-81b9-4ca099ecfb8a}')!
UMLGUICategory comment: ''!
!UMLGUICategory categoriesForClass!Unclassified! !
!UMLGUICategory methodsFor!

hasArguments

	^false!

isGUICategory
	^true!

isModelObjectCategory

	^false!

isObjectHeaderCategory

	^false!

isSimple

	^false!

isUserAndCollectionCategory

	^false!

isUserCategory

	^false!

isValueCategory

	^false! !
!UMLGUICategory categoriesFor: #hasArguments!public! !
!UMLGUICategory categoriesFor: #isGUICategory!public! !
!UMLGUICategory categoriesFor: #isModelObjectCategory!public! !
!UMLGUICategory categoriesFor: #isObjectHeaderCategory!public! !
!UMLGUICategory categoriesFor: #isSimple!public! !
!UMLGUICategory categoriesFor: #isUserAndCollectionCategory!public! !
!UMLGUICategory categoriesFor: #isUserCategory!public! !
!UMLGUICategory categoriesFor: #isValueCategory!public! !

!UMLGUICategory class methodsFor!

current

	current ifNil: [current := super new initialize name: self defaultName].

	^current!

current: anObject

	current := anObject!

icon

	^Icon fromId: 'Shell.ico'! !
!UMLGUICategory class categoriesFor: #current!public! !
!UMLGUICategory class categoriesFor: #current:!public! !
!UMLGUICategory class categoriesFor: #icon!public! !

