"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLAssociationSideMultiplicity
	instanceVariableNames: 'association text isNavigable'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAssociationSideMultiplicity guid: (GUID fromString: '{c98c51bf-072f-4b67-b9ee-1097c115ebdd}')!
UMLAssociationSideMultiplicity comment: 'This class represent the connection multiplicity at one point in a UMLRelation.

Each UMLAssociationMultiplicity has 2 instance of this hierarchy for representing the multiplicity.
'!
!UMLAssociationSideMultiplicity categoriesForClass!Unclassified! !
!UMLAssociationSideMultiplicity methodsFor!

association
	^association!

association: anObject
	association := anObject!

hasMultipleInstances

	self subclassResponsibility!

hasSameText: anUMLAssociationSideMultiplicity

	^text = anUMLAssociationSideMultiplicity text
!

initialize

	super initialize.

	text := ''.
	isNavigable := true.!

isNavigable
	^isNavigable!

isNavigable: anObject

	isNavigable := anObject!

isPrimaryAssociation

	^false!

isSameTypeAs: anUMLAssociationSideMultiplicity

	^self class == anUMLAssociationSideMultiplicity class!

isUndefinedSideMultiplicity

	^false!

printMultiplicity

	^self sourceClass name, '.', self targetClass name!

printSourceMultiplicityClassName

	^self sourceClass name!

printTargetMultiplicityClassName

	^self targetClass name!

sourceClass

	^association sourceClass!

targetClass

	^association targetClass!

text
	^text!

text: anObject
	
	text := anObject ifNotNil: [:value | value] ifNil: [''].!

validate: aString
	" The receiver validates that the argument <aString> is a valid multiplicity text "

	^self class validate: aString! !
!UMLAssociationSideMultiplicity categoriesFor: #association!accessing!private! !
!UMLAssociationSideMultiplicity categoriesFor: #association:!accessing!private! !
!UMLAssociationSideMultiplicity categoriesFor: #hasMultipleInstances!public! !
!UMLAssociationSideMultiplicity categoriesFor: #hasSameText:!public!testing! !
!UMLAssociationSideMultiplicity categoriesFor: #initialize!public! !
!UMLAssociationSideMultiplicity categoriesFor: #isNavigable!accessing!private! !
!UMLAssociationSideMultiplicity categoriesFor: #isNavigable:!accessing!private! !
!UMLAssociationSideMultiplicity categoriesFor: #isPrimaryAssociation!public! !
!UMLAssociationSideMultiplicity categoriesFor: #isSameTypeAs:!public!testing! !
!UMLAssociationSideMultiplicity categoriesFor: #isUndefinedSideMultiplicity!public! !
!UMLAssociationSideMultiplicity categoriesFor: #printMultiplicity!public! !
!UMLAssociationSideMultiplicity categoriesFor: #printSourceMultiplicityClassName!public! !
!UMLAssociationSideMultiplicity categoriesFor: #printTargetMultiplicityClassName!public! !
!UMLAssociationSideMultiplicity categoriesFor: #sourceClass!public! !
!UMLAssociationSideMultiplicity categoriesFor: #targetClass!public! !
!UMLAssociationSideMultiplicity categoriesFor: #text!accessing!private! !
!UMLAssociationSideMultiplicity categoriesFor: #text:!accessing!public! !
!UMLAssociationSideMultiplicity categoriesFor: #validate:!public! !

!UMLAssociationSideMultiplicity class methodsFor!

association: anUMLRelation

	^super new initialize
		association: anUMLRelation;
		yourself.!

icon

	^Icon fromFile: 'U-Fabrik/icons/Side Multiplicity.ico'!

multiplicityCharacters

	^OrderedCollection new!

printName

	^self subclassResponsibility! !
!UMLAssociationSideMultiplicity class categoriesFor: #association:!public! !
!UMLAssociationSideMultiplicity class categoriesFor: #icon!public! !
!UMLAssociationSideMultiplicity class categoriesFor: #multiplicityCharacters!public! !
!UMLAssociationSideMultiplicity class categoriesFor: #printName!public! !

