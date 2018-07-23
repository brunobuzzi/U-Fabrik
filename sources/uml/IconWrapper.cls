"Filed out from Dolphin Smalltalk 7"!

Object subclass: #IconWrapper
	instanceVariableNames: 'wIcon'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IconWrapper guid: (GUID fromString: '{4a404876-4ab9-4515-8305-b1470761a7b3}')!
IconWrapper comment: ''!
!IconWrapper categoriesForClass!Unclassified! !
!IconWrapper methodsFor!

icon

	^wIcon !

name

	^wIcon identifier!

wIcon: anObject
	wIcon := anObject! !
!IconWrapper categoriesFor: #icon!public! !
!IconWrapper categoriesFor: #name!public! !
!IconWrapper categoriesFor: #wIcon:!accessing!private! !

!IconWrapper class methodsFor!

getAll

	^Icon allInstances asOrderedCollection copyWithoutDuplicates collect: [:each | self icon: each]
!

icon: anIcon

	^super new initialize
		wIcon: anIcon;
		yourself.! !
!IconWrapper class categoriesFor: #getAll!public! !
!IconWrapper class categoriesFor: #icon:!public! !

