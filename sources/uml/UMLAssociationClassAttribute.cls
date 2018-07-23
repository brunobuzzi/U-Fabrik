"Filed out from Dolphin Smalltalk 7"!

UMLComplexClassAttribute subclass: #UMLAssociationClassAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAssociationClassAttribute guid: (GUID fromString: '{7e47e4c7-2fec-4e60-a834-5ca0811eec20}')!
UMLAssociationClassAttribute comment: ''!
!UMLAssociationClassAttribute categoriesForClass!Unclassified! !
!UMLAssociationClassAttribute methodsFor!

getInitializeType

	^self type
!

getInitializeTypeFor: anUMLClass

	(anUMLClass == self getInitializeType) ifFalse: [^self getInitializeType].
	^self getType
	!

getType

	^type!

icon

	^self class icon!

originalType

	^'Association Class '!

seteableClass

	(self sourceClass name asString = self name capitalized asString) ifTrue: [^self sourceClass].

	^self targetClass!

sourceClass

	^relation sourceClass!

targetClass

	^relation targetClass!

type

	^relation ifNotNil: [:value | value umlclass] ifNil: [umlClass]! !
!UMLAssociationClassAttribute categoriesFor: #getInitializeType!public! !
!UMLAssociationClassAttribute categoriesFor: #getInitializeTypeFor:!public! !
!UMLAssociationClassAttribute categoriesFor: #getType!public! !
!UMLAssociationClassAttribute categoriesFor: #icon!public! !
!UMLAssociationClassAttribute categoriesFor: #originalType!public! !
!UMLAssociationClassAttribute categoriesFor: #seteableClass!public! !
!UMLAssociationClassAttribute categoriesFor: #sourceClass!public! !
!UMLAssociationClassAttribute categoriesFor: #targetClass!public! !
!UMLAssociationClassAttribute categoriesFor: #type!public! !

!UMLAssociationClassAttribute class methodsFor!

icon

	^Icon fromId: 'Rectangle.ico'! !
!UMLAssociationClassAttribute class categoriesFor: #icon!public! !

