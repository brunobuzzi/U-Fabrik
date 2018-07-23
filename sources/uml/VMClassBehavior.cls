"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #VMClassBehavior
	instanceVariableNames: 'umlClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
VMClassBehavior guid: (GUID fromString: '{28378f47-5cf5-46de-b41b-4e11e5f4c558}')!
VMClassBehavior comment: 'These classes gives access to reflection properties to all UML Classes in the UML Environment.

UMLVirtual machine changed its routing message process (#fetchImplementationNamed:)

Now Object is NOT the top object in the routing message hierarchy.

For UMLClasses after Object class we search in VMClass.
For UMLClassesMetaclasses after Object metaclass we search in VMMetaClass.
'!
!VMClassBehavior categoriesForClass!Unclassified! !
!VMClassBehavior methodsFor!

umlClass
	^umlClass!

umlClass: anObject
	umlClass := anObject! !
!VMClassBehavior categoriesFor: #umlClass!accessing!private! !
!VMClassBehavior categoriesFor: #umlClass:!accessing!private! !

!VMClassBehavior class methodsFor!

icon

	^UMLObjectBehavior icon!

on: anUMLObjectBehavior

	^super new initialize
		umlClass: anUMLObjectBehavior;
		yourself.! !
!VMClassBehavior class categoriesFor: #icon!public! !
!VMClassBehavior class categoriesFor: #on:!public! !

