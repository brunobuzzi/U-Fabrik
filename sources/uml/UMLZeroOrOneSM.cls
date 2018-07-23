"Filed out from Dolphin Smalltalk 7"!

UMLAssociationSideMultiplicity subclass: #UMLZeroOrOneSM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLZeroOrOneSM guid: (GUID fromString: '{dbae5477-4d56-44a0-8ad1-a7c17cb3e589}')!
UMLZeroOrOneSM comment: ''!
!UMLZeroOrOneSM categoriesForClass!Unclassified! !
!UMLZeroOrOneSM methodsFor!

breakLinkSymbol

	^#setDirectRelationWith:!

hasMultipleInstances

	^false!

linkSymbol

	^#setDirectRelationWith:! !
!UMLZeroOrOneSM categoriesFor: #breakLinkSymbol!public! !
!UMLZeroOrOneSM categoriesFor: #hasMultipleInstances!public! !
!UMLZeroOrOneSM categoriesFor: #linkSymbol!public! !

!UMLZeroOrOneSM class methodsFor!

multiplicityCharacters

	^OrderedCollection with: '0..1'!

printName

	^'Zero or One element [0..1]'!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "

	^(OrderedCollection with: '0..1') includes: aString! !
!UMLZeroOrOneSM class categoriesFor: #multiplicityCharacters!public! !
!UMLZeroOrOneSM class categoriesFor: #printName!public! !
!UMLZeroOrOneSM class categoriesFor: #validate:!public! !

