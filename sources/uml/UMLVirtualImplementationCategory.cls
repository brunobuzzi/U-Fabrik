"Filed out from Dolphin Smalltalk 7"!

UMLImplementationCategory subclass: #UMLVirtualImplementationCategory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
UMLVirtualImplementationCategory guid: (GUID fromString: '{6f73a2c5-0b01-4d73-9239-3ce5c3969c1d}')!
UMLVirtualImplementationCategory comment: ''!
!UMLVirtualImplementationCategory categoriesForClass!Unclassified! !
!UMLVirtualImplementationCategory methodsFor!

isUserCategory

	^false!

isVirtual

	^true! !
!UMLVirtualImplementationCategory categoriesFor: #isUserCategory!public! !
!UMLVirtualImplementationCategory categoriesFor: #isVirtual!public! !

!UMLVirtualImplementationCategory class methodsFor!

allVirtualCategories

	^OrderedCollection withAll: (self allSubclasses select: [:each | each current notNil] thenCollect: [:each | each current]), (UMLGUICategory allSubclasses select: [:each | each current notNil] thenCollect: [:each | each current])
!

allVirtualCategoriesButGUICategories

	^OrderedCollection withAll: (self allSubclasses select: [:each | each current notNil] thenCollect: [:each | each current])
!

current

	current ifNil: [current := super new initialize name: self defaultName].

	^current! !
!UMLVirtualImplementationCategory class categoriesFor: #allVirtualCategories!public! !
!UMLVirtualImplementationCategory class categoriesFor: #allVirtualCategoriesButGUICategories!public! !
!UMLVirtualImplementationCategory class categoriesFor: #current!public! !

