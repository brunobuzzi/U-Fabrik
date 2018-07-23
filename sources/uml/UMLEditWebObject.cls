"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLEditWebObject
	instanceVariableNames: 'umlObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLEditWebObject guid: (GUID fromString: '{45f4cc52-4b61-4296-985e-a9322d0f5448}')!
UMLEditWebObject comment: ''!
!UMLEditWebObject categoriesForClass!Unclassified! !
!UMLEditWebObject methodsFor!

editableObject

	^umlObject!

umlObject
	^umlObject!

umlObject: anObject
	umlObject := anObject! !
!UMLEditWebObject categoriesFor: #editableObject!public! !
!UMLEditWebObject categoriesFor: #umlObject!accessing!private! !
!UMLEditWebObject categoriesFor: #umlObject:!accessing!private! !

!UMLEditWebObject class methodsFor!

for: anUMLInstance

	^super new initialize
		umlObject: anUMLInstance;
		yourself.! !
!UMLEditWebObject class categoriesFor: #for:!public! !

