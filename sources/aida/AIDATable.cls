"Filed out from Dolphin Smalltalk 7"!

AIDAAbstractWebElement subclass: #AIDATable
	instanceVariableNames: 'objects rowDescription'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AIDATable guid: (GUID fromString: '{94983c63-24d1-4b04-88a0-b76ebe104eea}')!
AIDATable comment: ''!
!AIDATable categoriesForClass!Unclassified! !
!AIDATable methodsFor!

objects
	^objects!

objects: anObject
	objects := anObject!

rowDescription
	^rowDescription!

rowDescription: anObject
	rowDescription := anObject! !
!AIDATable categoriesFor: #objects!accessing!private! !
!AIDATable categoriesFor: #objects:!accessing!private! !
!AIDATable categoriesFor: #rowDescription!accessing!private! !
!AIDATable categoriesFor: #rowDescription:!accessing!private! !

!AIDATable class methodsFor!

with: anOrderedCollection

	^super new initialize
		objects: anOrderedCollection;
		yourself.! !
!AIDATable class categoriesFor: #with:!public! !

