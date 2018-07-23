"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLClassOrInstanceList
	instanceVariableNames: 'umlclass isInstanceList'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassOrInstanceList guid: (GUID fromString: '{cb13d0d3-8a56-4c07-89dc-a78a360c09d4}')!
UMLClassOrInstanceList comment: ''!
!UMLClassOrInstanceList categoriesForClass!Unclassified! !
!UMLClassOrInstanceList methodsFor!

initialize

	super initialize.

	isInstanceList := true.!

isInstanceList
	^isInstanceList!

isInstanceList: anObject
	isInstanceList := anObject!

name
	^umlclass name!

printBooleanValue

	^isInstanceList printString!

switchListType
	isInstanceList := isInstanceList not!

umlclass
	^umlclass!

umlclass: anObject
	umlclass := anObject! !
!UMLClassOrInstanceList categoriesFor: #initialize!public! !
!UMLClassOrInstanceList categoriesFor: #isInstanceList!accessing!private! !
!UMLClassOrInstanceList categoriesFor: #isInstanceList:!accessing!private! !
!UMLClassOrInstanceList categoriesFor: #name!public! !
!UMLClassOrInstanceList categoriesFor: #printBooleanValue!public! !
!UMLClassOrInstanceList categoriesFor: #switchListType!public! !
!UMLClassOrInstanceList categoriesFor: #umlclass!accessing!private! !
!UMLClassOrInstanceList categoriesFor: #umlclass:!accessing!private! !

!UMLClassOrInstanceList class methodsFor!

fromUMLClass: anUMLClass

	^super new initialize
		umlclass: anUMLClass;
		yourself.! !
!UMLClassOrInstanceList class categoriesFor: #fromUMLClass:!public! !

