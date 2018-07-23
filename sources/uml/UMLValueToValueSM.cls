"Filed out from Dolphin Smalltalk 7"!

UMLAssociationSideMultiplicity subclass: #UMLValueToValueSM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLValueToValueSM guid: (GUID fromString: '{d3677865-6330-4ebc-b39c-880c041de27d}')!
UMLValueToValueSM comment: ''!
!UMLValueToValueSM categoriesForClass!Unclassified! !
!UMLValueToValueSM methodsFor!

breakLinkSymbol

	^#setDirectRelationWith:!

hasMultipleInstances

	^true!

linkSymbol

	^#setDirectRelationWith:! !
!UMLValueToValueSM categoriesFor: #breakLinkSymbol!public! !
!UMLValueToValueSM categoriesFor: #hasMultipleInstances!public! !
!UMLValueToValueSM categoriesFor: #linkSymbol!public! !

!UMLValueToValueSM class methodsFor!

multiplicityCharacters

	^OrderedCollection new!

printName

	^'X to Y elements [x..y]'!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "
	| multiplicitySplit |

	aString ifNil: [^false].
	multiplicitySplit := aString subStrings: '..'.
	(multiplicitySplit size = 2) ifFalse: [^false].
	[multiplicitySplit first asNumber. multiplicitySplit last asNumber] on: Error do: [:ex | ^false].
	^true! !
!UMLValueToValueSM class categoriesFor: #multiplicityCharacters!public! !
!UMLValueToValueSM class categoriesFor: #printName!public! !
!UMLValueToValueSM class categoriesFor: #validate:!public! !

