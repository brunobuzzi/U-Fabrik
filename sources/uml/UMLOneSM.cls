"Filed out from Dolphin Smalltalk 7"!

UMLAssociationSideMultiplicity subclass: #UMLOneSM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLOneSM guid: (GUID fromString: '{8582c46c-2291-4ea1-95d4-acb0e3133387}')!
UMLOneSM comment: ''!
!UMLOneSM categoriesForClass!Unclassified! !
!UMLOneSM methodsFor!

breakLinkSymbol

	^#setDirectRelationWith:!

hasMultipleInstances

	^false!

linkSymbol

	^#setDirectRelationWith:! !
!UMLOneSM categoriesFor: #breakLinkSymbol!public! !
!UMLOneSM categoriesFor: #hasMultipleInstances!public! !
!UMLOneSM categoriesFor: #linkSymbol!public! !

!UMLOneSM class methodsFor!

multiplicityCharacters

	^OrderedCollection with: '1'!

printName

	^'One element [1]'!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "

	aString ifNil: [^false].
	^aString = '1'! !
!UMLOneSM class categoriesFor: #multiplicityCharacters!public! !
!UMLOneSM class categoriesFor: #printName!public! !
!UMLOneSM class categoriesFor: #validate:!public! !

