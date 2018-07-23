"Filed out from Dolphin Smalltalk 7"!

UMLDialog subclass: #UMLAbstractCommandStructureDialog
	instanceVariableNames: 'newMethod'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLAbstractCommandStructureDialog guid: (GUID fromString: '{18ed14ba-2995-49cd-b8c1-58f8228582f6}')!
UMLAbstractCommandStructureDialog comment: ''!
!UMLAbstractCommandStructureDialog categoriesForClass!Unclassified! !
!UMLAbstractCommandStructureDialog methodsFor!

methodDone: anUMLImplementation

	newMethod := anUMLImplementation.
	self exit.!

newMethod
	^newMethod!

newMethod: anObject
	newMethod := anObject! !
!UMLAbstractCommandStructureDialog categoriesFor: #methodDone:!public! !
!UMLAbstractCommandStructureDialog categoriesFor: #newMethod!accessing!private! !
!UMLAbstractCommandStructureDialog categoriesFor: #newMethod:!accessing!private! !

