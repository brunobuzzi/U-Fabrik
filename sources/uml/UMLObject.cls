"Filed out from Dolphin Smalltalk 7"!

Object subclass: #UMLObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLObject guid: (GUID fromString: '{e4399899-d26d-4d25-a3cc-02408c3a6de5}')!
UMLObject comment: ''!
!UMLObject categoriesForClass!Unclassified! !
!UMLObject methodsFor!

asUMLObject

	^self!

asUMLObject: anUMLVirtualMachine

	^self!

isMethodImplementation

	^false!

isUMLClass

	^false!

isUMLObject

	^true!

umlUndefinedObject

	^self class umlUndefinedObject! !
!UMLObject categoriesFor: #asUMLObject!public!xmi!xmi-others! !
!UMLObject categoriesFor: #asUMLObject:!public! !
!UMLObject categoriesFor: #isMethodImplementation!public! !
!UMLObject categoriesFor: #isUMLClass!public! !
!UMLObject categoriesFor: #isUMLObject!public! !
!UMLObject categoriesFor: #umlUndefinedObject!public! !

!UMLObject class methodsFor!

icon

	^Icon fromId: 'Model.ico'!

new

	^super new initialize! !
!UMLObject class categoriesFor: #icon!public! !
!UMLObject class categoriesFor: #new!public! !

