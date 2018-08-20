"Filed out from Dolphin Smalltalk 7"!

UMLCategory subclass: #UMLImplementationCategory
	instanceVariableNames: 'comments'
	classVariableNames: 'CategoryTable'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLImplementationCategory guid: (GUID fromString: '{edb3323b-d9b4-4538-99e1-b4d51625223b}')!
UMLImplementationCategory comment: ''!
!UMLImplementationCategory categoriesForClass!Unclassified! !
!UMLImplementationCategory methodsFor!

comments
	^comments!

comments: anObject
	comments := anObject!

defaultName

	^self class defaultName!

existInCatalogue

	^self class categoryTable includesKey: name!

implementationsAsSortedCollection
	| methods |

	methods := Set new.
	self defaultVirtualMachine getAllClasses do: [:each | 
		methods addAll: (self methodsFor: each).
		methods addAll: (self methodsFor: each metaclass).].

	^methods asSortedCollection: [:a :b | a methodName <= b methodName].!

isAllCategory

	^false!

isAllCategoryButTrait

	^false!

isCollectionCategory

	^false!

isCommandCategory

	^false!

isCommandCollection

	^false!

isCommandUser

	^false!

isExternalCategory

	^false!

isTraitCategory

	^false!

isUserCategory

	^true!

isVirtual

	^false!

methodsFor: anUMLObjectBehavior

	(anUMLObjectBehavior includesCategory: self) ifFalse: [^OrderedCollection new].

	^(anUMLObjectBehavior getImplementationsFor: self) asSortedCollection: [:a :b | a name <= b name]!

registerInTable

	^self class categoryTable at: name put: self!

unorderedMethodsFor: anUMLObjectBehavior

	(anUMLObjectBehavior includesCategory: self) ifFalse: [^OrderedCollection new].

	^anUMLObjectBehavior getImplementationsFor: self!

unregisterFromTable

	^self class categoryTable removeKey: name! !
!UMLImplementationCategory categoriesFor: #comments!accessing!private! !
!UMLImplementationCategory categoriesFor: #comments:!accessing!private! !
!UMLImplementationCategory categoriesFor: #defaultName!public! !
!UMLImplementationCategory categoriesFor: #existInCatalogue!public! !
!UMLImplementationCategory categoriesFor: #implementationsAsSortedCollection!public! !
!UMLImplementationCategory categoriesFor: #isAllCategory!public! !
!UMLImplementationCategory categoriesFor: #isAllCategoryButTrait!public! !
!UMLImplementationCategory categoriesFor: #isCollectionCategory!public! !
!UMLImplementationCategory categoriesFor: #isCommandCategory!public! !
!UMLImplementationCategory categoriesFor: #isCommandCollection!public! !
!UMLImplementationCategory categoriesFor: #isCommandUser!public! !
!UMLImplementationCategory categoriesFor: #isExternalCategory!public! !
!UMLImplementationCategory categoriesFor: #isTraitCategory!public! !
!UMLImplementationCategory categoriesFor: #isUserCategory!public! !
!UMLImplementationCategory categoriesFor: #isVirtual!public! !
!UMLImplementationCategory categoriesFor: #methodsFor:!public! !
!UMLImplementationCategory categoriesFor: #registerInTable!public! !
!UMLImplementationCategory categoriesFor: #unorderedMethodsFor:!public! !
!UMLImplementationCategory categoriesFor: #unregisterFromTable!public! !

!UMLImplementationCategory class methodsFor!

categoryTable

	CategoryTable ifNil: [CategoryTable := LookupTable  new].

	^CategoryTable!

defaultName

	self subclassResponsibility!

getCategoryNamed: aString

	^self categoryTable at: aString ifAbsent: [self getGUICategoryNamed: aString]
!

getGUICategoryNamed: aString 

	^(UMLGUICategory allSubclasses detect: [:each | each current name = aString] ifNone: [^nil]) current

!

getOrNewNamed: aString
	| newCategory |

	(self getGUICategoryNamed: aString) ifNotNil: [:guiCategory | ^guiCategory].
	(self categoryTable includesKey: aString) ifTrue: [^self categoryTable at: aString].

	newCategory := super new initialize name: aString.
	newCategory registerInTable.
	^newCategory!

icon

	^Icon fromFile: 'category.ico'!

newNamed: aString
	| newCategory |

	(self categoryTable includesKey: aString) ifTrue: [^self categoryTable at: aString].

	newCategory := super new initialize name: aString.
	newCategory registerInTable.
	^newCategory! !
!UMLImplementationCategory class categoriesFor: #categoryTable!public! !
!UMLImplementationCategory class categoriesFor: #defaultName!public! !
!UMLImplementationCategory class categoriesFor: #getCategoryNamed:!public! !
!UMLImplementationCategory class categoriesFor: #getGUICategoryNamed:!public! !
!UMLImplementationCategory class categoriesFor: #getOrNewNamed:!public! !
!UMLImplementationCategory class categoriesFor: #icon!public! !
!UMLImplementationCategory class categoriesFor: #newNamed:!public! !

