"Filed out from Dolphin Smalltalk 7"!

UMLAssociationSideMultiplicity subclass: #UMLOneToManySM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLOneToManySM guid: (GUID fromString: '{9390a841-5bdb-47b9-af77-6d3ee0094fff}')!
UMLOneToManySM comment: ''!
!UMLOneToManySM categoriesForClass!Unclassified! !
!UMLOneToManySM methodsFor!

breakLinkSymbol
	^#basicRemove:!

hasMultipleInstances

	^true!

isPrimaryAssociation

	^true!

linkSymbol

	^#basicAdd:! !
!UMLOneToManySM categoriesFor: #breakLinkSymbol!public! !
!UMLOneToManySM categoriesFor: #hasMultipleInstances!public! !
!UMLOneToManySM categoriesFor: #isPrimaryAssociation!public! !
!UMLOneToManySM categoriesFor: #linkSymbol!public! !

!UMLOneToManySM class methodsFor!

multiplicityCharacters

	^OrderedCollection with: '1..*' with: '*'!

printName

	^'One to Many elements [1..*]'!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "

	^(OrderedCollection with: '1..*' with: '*') includes: aString! !
!UMLOneToManySM class categoriesFor: #multiplicityCharacters!public! !
!UMLOneToManySM class categoriesFor: #printName!public! !
!UMLOneToManySM class categoriesFor: #validate:!public! !

