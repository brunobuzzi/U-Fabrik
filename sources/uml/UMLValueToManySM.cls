"Filed out from Dolphin Smalltalk 7"!

UMLAssociationSideMultiplicity subclass: #UMLValueToManySM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLValueToManySM guid: (GUID fromString: '{c38dc794-fc0d-4398-829b-5916549bbe56}')!
UMLValueToManySM comment: ''!
!UMLValueToManySM categoriesForClass!Unclassified! !
!UMLValueToManySM methodsFor!

breakLinkSymbol

	^#basicRemove:!

hasMultipleInstances

	^true!

isPrimaryAssociation

	^true!

linkSymbol

	^#basicAdd:! !
!UMLValueToManySM categoriesFor: #breakLinkSymbol!public! !
!UMLValueToManySM categoriesFor: #hasMultipleInstances!public! !
!UMLValueToManySM categoriesFor: #isPrimaryAssociation!public! !
!UMLValueToManySM categoriesFor: #linkSymbol!public! !

!UMLValueToManySM class methodsFor!

printName

	^'X to Many elements [x..*]'!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "
	| multiplicitySplit |

	aString ifNil: [^false].
	multiplicitySplit := aString subStrings: '..'.
	(multiplicitySplit size = 2) ifFalse: [^false].
	[multiplicitySplit first asNumber] on: Error do: [:ex | ^false].
	(multiplicitySplit last = '*') ifFalse: [^false].
	^true! !
!UMLValueToManySM class categoriesFor: #printName!public! !
!UMLValueToManySM class categoriesFor: #validate:!public! !

