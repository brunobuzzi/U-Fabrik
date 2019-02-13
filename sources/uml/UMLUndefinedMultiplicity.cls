"Filed out from Dolphin Smalltalk 7"!

UMLAssociationMultiplicity subclass: #UMLUndefinedMultiplicity
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLUndefinedMultiplicity guid: (GUID fromString: '{53166433-678d-4041-b3de-38d3c9d1ce8a}')!
UMLUndefinedMultiplicity comment: ''!
!UMLUndefinedMultiplicity categoriesForClass!Unclassified! !
!UMLUndefinedMultiplicity methodsFor!

hasMultipleInstances: anUMLClass 

	^false!

isUndefined

	^true!

presentationColor

	^Color darkRed!

printClassHeadName

	^'X'!

printMultiplicity

	^self printSourceMultiplicityClassName, ' ', sourceMultiplicity text, ' [', self printClassHeadName,'] ', targetMultiplicity text, ' ', self printTargetMultiplicityClassName ! !
!UMLUndefinedMultiplicity categoriesFor: #hasMultipleInstances:!public! !
!UMLUndefinedMultiplicity categoriesFor: #isUndefined!public! !
!UMLUndefinedMultiplicity categoriesFor: #presentationColor!public! !
!UMLUndefinedMultiplicity categoriesFor: #printClassHeadName!public! !
!UMLUndefinedMultiplicity categoriesFor: #printMultiplicity!public! !

!UMLUndefinedMultiplicity class methodsFor!

icon

	^(TextTileIcon text: $\x2622 fontName: 'Segoe UI Emoji')!

printName

	^'Undefined'!

sourceSideClasses

	^OrderedCollection with: UMLUndefinedSD!

targetSideClasses

	^OrderedCollection with: UMLUndefinedSD! !
!UMLUndefinedMultiplicity class categoriesFor: #icon!public! !
!UMLUndefinedMultiplicity class categoriesFor: #printName!public! !
!UMLUndefinedMultiplicity class categoriesFor: #sourceSideClasses!public! !
!UMLUndefinedMultiplicity class categoriesFor: #targetSideClasses!public! !

