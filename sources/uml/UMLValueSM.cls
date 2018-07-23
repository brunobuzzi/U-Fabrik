"Filed out from Dolphin Smalltalk 7"!

UMLAssociationSideMultiplicity subclass: #UMLValueSM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLValueSM guid: (GUID fromString: '{a81a8c7c-d03e-4a66-9bbe-092ff03edcb1}')!
UMLValueSM comment: ''!
!UMLValueSM categoriesForClass!Unclassified! !
!UMLValueSM methodsFor!

breakLinkSymbol

	^#basicAdd:!

hasMultipleInstances

	^true!

linkSymbol

	^#basicAdd:! !
!UMLValueSM categoriesFor: #breakLinkSymbol!public! !
!UMLValueSM categoriesFor: #hasMultipleInstances!public! !
!UMLValueSM categoriesFor: #linkSymbol!public! !

!UMLValueSM class methodsFor!

printName

	^'X elements [x]'!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "

	aString ifNil: [^false].
	[aString asNumber] on: Error do: [:ex | ^false].
	^true! !
!UMLValueSM class categoriesFor: #printName!public! !
!UMLValueSM class categoriesFor: #validate:!public! !

