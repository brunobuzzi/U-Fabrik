"Filed out from Dolphin Smalltalk 7"!

UMLAssociationSideMultiplicity subclass: #UMLZeroToManySM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLZeroToManySM guid: (GUID fromString: '{905e3f0f-4da3-4239-8a53-fe8ebd7b1578}')!
UMLZeroToManySM comment: ''!
!UMLZeroToManySM categoriesForClass!Unclassified! !
!UMLZeroToManySM methodsFor!

breakLinkSymbol

	^#basicRemove:!

hasMultipleInstances

	^true!

isPrimaryAssociation

	^true!

linkSymbol

	^#basicAdd:!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "

	^(OrderedCollection with: '0..*' with: '*') includes: aString! !
!UMLZeroToManySM categoriesFor: #breakLinkSymbol!public! !
!UMLZeroToManySM categoriesFor: #hasMultipleInstances!public! !
!UMLZeroToManySM categoriesFor: #isPrimaryAssociation!public! !
!UMLZeroToManySM categoriesFor: #linkSymbol!public! !
!UMLZeroToManySM categoriesFor: #validate:!public! !

!UMLZeroToManySM class methodsFor!

multiplicityCharacters

	^OrderedCollection with: '0..*' with: '*'!

printName

	^'Zero to Many element [0..*]'!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "

	^(OrderedCollection with: '0..*' with: '*') includes: aString! !
!UMLZeroToManySM class categoriesFor: #multiplicityCharacters!public! !
!UMLZeroToManySM class categoriesFor: #printName!public! !
!UMLZeroToManySM class categoriesFor: #validate:!public! !

