"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLBehavior
	instanceVariableNames: 'comments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLBehavior guid: (GUID fromString: '{cfbd7fee-88f8-4aa3-b3bb-f14ed38a8910}')!
UMLBehavior comment: ''!
!UMLBehavior categoriesForClass!Unclassified! !
!UMLBehavior methodsFor!

comments
	^comments!

comments: anObject
	comments := anObject!

initialize

	super initialize.

	comments := ''.! !
!UMLBehavior categoriesFor: #comments!accessing!private! !
!UMLBehavior categoriesFor: #comments:!accessing!private! !
!UMLBehavior categoriesFor: #initialize!public! !

!UMLBehavior class methodsFor!

icon

	^Icon fromId: 'Behavior.ico'! !
!UMLBehavior class categoriesFor: #icon!public! !

