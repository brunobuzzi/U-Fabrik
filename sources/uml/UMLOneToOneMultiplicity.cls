"Filed out from Dolphin Smalltalk 7"!

UMLAssociationMultiplicity subclass: #UMLOneToOneMultiplicity
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLOneToOneMultiplicity guid: (GUID fromString: '{9f334aa9-1913-4268-9a38-4f21df7bc5c8}')!
UMLOneToOneMultiplicity comment: ''!
!UMLOneToOneMultiplicity categoriesForClass!Unclassified! !
!UMLOneToOneMultiplicity methodsFor!

hasMultipleInstances: anUMLClass 

	^false!

isOneToOne

	^true!

newUMLObjectFor: anUMLClass 

	^anUMLClass newInstance!

presentationColor

	^Color blue!

printClassHeadName

	^'1 ', association printTargetNavigability, association printSourceNavigability, ' 1'! !
!UMLOneToOneMultiplicity categoriesFor: #hasMultipleInstances:!public! !
!UMLOneToOneMultiplicity categoriesFor: #isOneToOne!public! !
!UMLOneToOneMultiplicity categoriesFor: #newUMLObjectFor:!public! !
!UMLOneToOneMultiplicity categoriesFor: #presentationColor!public! !
!UMLOneToOneMultiplicity categoriesFor: #printClassHeadName!public! !

!UMLOneToOneMultiplicity class methodsFor!

icon

	^Icon fromId: 'ValueConverter.ico'!

printName

	^'One to One [1 <--> 1]'!

sourceSideClasses
	^OrderedCollection 
		with: UMLOneSM "1"
		with: UMLZeroOrOneSM "0..1"
		with: UMLValueToValueSM "k1..k2"
		with: UMLValueSM "k"!

targetSideClasses
	^OrderedCollection 
		with: UMLOneSM "1"
		with: UMLValueSM "k"
		with: UMLZeroOrOneSM "0..1"! !
!UMLOneToOneMultiplicity class categoriesFor: #icon!public! !
!UMLOneToOneMultiplicity class categoriesFor: #printName!public! !
!UMLOneToOneMultiplicity class categoriesFor: #sourceSideClasses!public! !
!UMLOneToOneMultiplicity class categoriesFor: #targetSideClasses!public! !

