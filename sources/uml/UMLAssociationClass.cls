"Filed out from Dolphin Smalltalk 7"!

UMLRelation subclass: #UMLAssociationClass
	instanceVariableNames: 'umlclass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAssociationClass guid: (GUID fromString: '{e6d7768c-7b19-4210-a66e-d185a4c9c408}')!
UMLAssociationClass comment: ''!
!UMLAssociationClass categoriesForClass!Unclassified! !
!UMLAssociationClass methodsFor!

basicUmlclass: anObject

	umlclass := anObject.!

classToCreateInstanceLinkedTo: anUMLClass

	^umlclass!

isAssociationClass
	^true!

printTypeName

	^'Association class <', umlclass name, '>'!

relatedClassTo: anUMLClass

"	((sourceClass == anUMLClass) or: [anUMLClass allSuperclasses anySatisfy: [:each | each == sourceClass]]) 
	ifTrue: [^umlclass].
	((targetClass == anUMLClass) or: [anUMLClass allSuperclasses anySatisfy: [:each | each == targetClass]]) 
	ifTrue: [^umlclass].

	^anUMLClass"
	
	^super relatedClassTo: anUMLClass!

setUMLClassToNil

	umlclass := nil!

umlclass
	^umlclass!

umlclass: anObject

	anObject becomeIn: UMLClassAssociation new.
	umlclass := anObject.
	anObject associationClass: self.! !
!UMLAssociationClass categoriesFor: #basicUmlclass:!accessing!public! !
!UMLAssociationClass categoriesFor: #classToCreateInstanceLinkedTo:!object links!public! !
!UMLAssociationClass categoriesFor: #isAssociationClass!public! !
!UMLAssociationClass categoriesFor: #printTypeName!public! !
!UMLAssociationClass categoriesFor: #relatedClassTo:!public! !
!UMLAssociationClass categoriesFor: #setUMLClassToNil!accessing!public! !
!UMLAssociationClass categoriesFor: #umlclass!accessing!private! !
!UMLAssociationClass categoriesFor: #umlclass:!accessing!public! !

!UMLAssociationClass class methodsFor!

printName

	^'Association class'! !
!UMLAssociationClass class categoriesFor: #printName!public! !

