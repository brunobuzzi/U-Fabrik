"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLCategory
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCategory guid: (GUID fromString: '{a2cad2d4-f3c0-4ed4-93e9-7d5797db58f4}')!
UMLCategory comment: ''!
!UMLCategory categoriesForClass!Unclassified! !
!UMLCategory methodsFor!

initialize

	super initialize.

	name := ''.!

isGUICategory
	^false!

isUserCategory

	^false!

name
	^name!

name: anObject
	name := anObject! !
!UMLCategory categoriesFor: #initialize!public! !
!UMLCategory categoriesFor: #isGUICategory!public! !
!UMLCategory categoriesFor: #isUserCategory!public! !
!UMLCategory categoriesFor: #name!accessing!private! !
!UMLCategory categoriesFor: #name:!accessing!private! !

