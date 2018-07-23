"Filed out from Dolphin Smalltalk 7"!

UMLAssociationMultiplicity subclass: #UMLManyToManyMultiplicity
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLManyToManyMultiplicity guid: (GUID fromString: '{fdfae8ae-8b1b-4ea5-b8d7-d7481b7736ae}')!
UMLManyToManyMultiplicity comment: ''!
!UMLManyToManyMultiplicity categoriesForClass!Unclassified! !
!UMLManyToManyMultiplicity methodsFor!

hasMultipleInstances: anUMLClass 

	^((anUMLClass name = association targetClassName) or: [anUMLClass name = association sourceClassName])
	ifFalse: [(anUMLClass umlSuperclass name = 'Object')
			ifTrue: [false] 
			ifFalse: [self hasMultipleInstances: anUMLClass umlSuperclass] ] 
	ifTrue: [true]!

isManyToMany

	^true!

presentationColor

	^Color darkGreen!

printClassHeadName

	^'N ', association printTargetNavigability, association printSourceNavigability, ' N'! !
!UMLManyToManyMultiplicity categoriesFor: #hasMultipleInstances:!public! !
!UMLManyToManyMultiplicity categoriesFor: #isManyToMany!public! !
!UMLManyToManyMultiplicity categoriesFor: #presentationColor!public! !
!UMLManyToManyMultiplicity categoriesFor: #printClassHeadName!public! !

!UMLManyToManyMultiplicity class methodsFor!

icon

	^Icon fromId: 'AspectBuffer.ico'!

printName

	^'Many to Many [N <--> N]'!

sourceSideClasses
	^OrderedCollection 
		with: UMLOneToManySM "1..*"
		with: UMLZeroToManySM "0..*"
		with: UMLValueToManySM "k..*"!

targetSideClasses
	^OrderedCollection 
		with: UMLOneToManySM "1..*"
		with: UMLZeroToManySM "0..*"
		with: UMLValueToManySM "k..*"! !
!UMLManyToManyMultiplicity class categoriesFor: #icon!public! !
!UMLManyToManyMultiplicity class categoriesFor: #printName!public! !
!UMLManyToManyMultiplicity class categoriesFor: #sourceSideClasses!public! !
!UMLManyToManyMultiplicity class categoriesFor: #targetSideClasses!public! !

