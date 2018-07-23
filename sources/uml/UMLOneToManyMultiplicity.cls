"Filed out from Dolphin Smalltalk 7"!

UMLMirrorMultiplicity subclass: #UMLOneToManyMultiplicity
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLOneToManyMultiplicity guid: (GUID fromString: '{5e5bbfe0-cbb3-4f9a-9c04-166bfa988156}')!
UMLOneToManyMultiplicity comment: ''!
!UMLOneToManyMultiplicity categoriesForClass!Unclassified! !
!UMLOneToManyMultiplicity methodsFor!

hasMultipleInstances: anUMLClass 

	"^anUMLClass name = association sourceClassName"

	^(anUMLClass name = association sourceClassName)
	ifFalse: [(anUMLClass umlSuperclass name = 'Object')
			ifTrue: [false] 
			ifFalse: [self hasMultipleInstances: anUMLClass umlSuperclass] ] 
	ifTrue: [true]!

printClassHeadName

	^'1 ', association printTargetNavigability, association printSourceNavigability, ' N'! !
!UMLOneToManyMultiplicity categoriesFor: #hasMultipleInstances:!public! !
!UMLOneToManyMultiplicity categoriesFor: #printClassHeadName!public! !

!UMLOneToManyMultiplicity class methodsFor!

icon

	^Icon fromId: 'ValueAdaptor.ico'!

printName

	^'One to Many [1 <--> N]'!

sourceSideClasses
	^OrderedCollection 
		with: UMLOneSM "1"
		with: UMLZeroOrOneSM "1..0"
		with: UMLValueToValueSM "v1..v2"!

targetSideClasses
	^OrderedCollection 
		with: UMLOneToManySM "1..*"
		with: UMLZeroToManySM "0..*"
		with: UMLValueToManySM "k..*"! !
!UMLOneToManyMultiplicity class categoriesFor: #icon!public! !
!UMLOneToManyMultiplicity class categoriesFor: #printName!public! !
!UMLOneToManyMultiplicity class categoriesFor: #sourceSideClasses!public! !
!UMLOneToManyMultiplicity class categoriesFor: #targetSideClasses!public! !

