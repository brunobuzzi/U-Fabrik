"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLAssociationMultiplicity
	instanceVariableNames: 'association sourceMultiplicity targetMultiplicity'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAssociationMultiplicity guid: (GUID fromString: '{299050c7-ffc6-48d2-8058-9f2ed123d87f}')!
UMLAssociationMultiplicity comment: 'This class represent the general multiplicity in a relation between two UMLClasses: (1 to 1) - (N to N) - (1 to N) - (N to 1)

It has 3 instances variables:
association - an instance of UMLRelation which is the relation between both classes.
sourceMultiplicity - represent the multiplicity of the source class.
targetMultiplicity - represent the multiplicity of the target class.'!
!UMLAssociationMultiplicity categoriesForClass!Unclassified! !
!UMLAssociationMultiplicity methodsFor!

association
	^association!

association: anObject
	association := anObject!

isManyToMany

	^false!

isOneToManyOrManyToOne

	^false!

isOneToOne

	^false!

isSameTypeAs: anUMLAssociationMultiplicity

	^self class == anUMLAssociationMultiplicity class!

isUndefined

	^false!

presentationColor

	^Color black!

presentationColorFor: anUMLClass

	^self presentationColor!

printClassHeadName

	^self subclassResponsibility!

printMultiplicity

	^self printSourceMultiplicityClassName, self printMultiplicityText, self printTargetMultiplicityClassName !

printMultiplicityText
	^' (', sourceMultiplicity text, ') [', self printClassHeadName,'] (', targetMultiplicity text, ') '!

printOn: aStream

	"super printOn: aStream."

	aStream
		nextPut: $[;
		nextPutAll: self printMultiplicity;
		nextPut: $].!

printSourceMultiplicityClassName

	^sourceMultiplicity printSourceMultiplicityClassName!

printTargetMultiplicityClassName

	^sourceMultiplicity printTargetMultiplicityClassName!

sourceMultiplicity
	^sourceMultiplicity!

sourceMultiplicity: anObject
	sourceMultiplicity := anObject!

sourceSideClasses

	^self class sourceSideClasses!

targetMultiplicity
	^targetMultiplicity!

targetMultiplicity: anObject
	targetMultiplicity := anObject!

targetSideClasses

	^self class targetSideClasses! !
!UMLAssociationMultiplicity categoriesFor: #association!accessing!private! !
!UMLAssociationMultiplicity categoriesFor: #association:!accessing!private! !
!UMLAssociationMultiplicity categoriesFor: #isManyToMany!public! !
!UMLAssociationMultiplicity categoriesFor: #isOneToManyOrManyToOne!public! !
!UMLAssociationMultiplicity categoriesFor: #isOneToOne!public! !
!UMLAssociationMultiplicity categoriesFor: #isSameTypeAs:!public! !
!UMLAssociationMultiplicity categoriesFor: #isUndefined!public! !
!UMLAssociationMultiplicity categoriesFor: #presentationColor!public! !
!UMLAssociationMultiplicity categoriesFor: #presentationColorFor:!public! !
!UMLAssociationMultiplicity categoriesFor: #printClassHeadName!printing!public! !
!UMLAssociationMultiplicity categoriesFor: #printMultiplicity!printing!public! !
!UMLAssociationMultiplicity categoriesFor: #printMultiplicityText!printing!public! !
!UMLAssociationMultiplicity categoriesFor: #printOn:!printing!public! !
!UMLAssociationMultiplicity categoriesFor: #printSourceMultiplicityClassName!printing!public! !
!UMLAssociationMultiplicity categoriesFor: #printTargetMultiplicityClassName!printing!public! !
!UMLAssociationMultiplicity categoriesFor: #sourceMultiplicity!accessing!private! !
!UMLAssociationMultiplicity categoriesFor: #sourceMultiplicity:!accessing!private! !
!UMLAssociationMultiplicity categoriesFor: #sourceSideClasses!public! !
!UMLAssociationMultiplicity categoriesFor: #targetMultiplicity!accessing!private! !
!UMLAssociationMultiplicity categoriesFor: #targetMultiplicity:!accessing!private! !
!UMLAssociationMultiplicity categoriesFor: #targetSideClasses!public! !

!UMLAssociationMultiplicity class methodsFor!

allConcreteClasses

	^OrderedCollection with: UMLManyToManyMultiplicity with: UMLOneToOneMultiplicity with: UMLOneToManyMultiplicity with: UMLManyToOneMultiplicity with: UMLUndefinedMultiplicity!

association: anUMLRelation

	^super new initialize
		association: anUMLRelation;
		yourself.!

icon

	^Icon fromId: 'TreeModelAbstract.ico'!

printName

	^self subclassResponsibility!

sourceSideClasses

	^self subclassResponsibility!

targetSideClasses

	^self subclassResponsibility! !
!UMLAssociationMultiplicity class categoriesFor: #allConcreteClasses!public! !
!UMLAssociationMultiplicity class categoriesFor: #association:!public! !
!UMLAssociationMultiplicity class categoriesFor: #icon!public! !
!UMLAssociationMultiplicity class categoriesFor: #printName!public! !
!UMLAssociationMultiplicity class categoriesFor: #sourceSideClasses!public! !
!UMLAssociationMultiplicity class categoriesFor: #targetSideClasses!public! !

