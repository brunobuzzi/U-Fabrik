"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLViewComponentDescriptor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLViewComponentDescriptor guid: (GUID fromString: '{ce36c1f6-0374-48d8-a723-3babaca22885}')!
UMLViewComponentDescriptor comment: 'This class provides the link between anUMLInstance and the Presenter to be generated for that instance.

Each attribute and method describes the aspect of the UMLInstances and the setting of the presenter to be generated.'!
!UMLViewComponentDescriptor categoriesForClass!Unclassified! !
!UMLViewComponentDescriptor methodsFor!

hasInstance

	^false! !
!UMLViewComponentDescriptor categoriesFor: #hasInstance!public! !

!UMLViewComponentDescriptor class methodsFor!

icon

	^Icon fromId: 'View.ico'!

new

	^super new initialize! !
!UMLViewComponentDescriptor class categoriesFor: #icon!public! !
!UMLViewComponentDescriptor class categoriesFor: #new!public! !

