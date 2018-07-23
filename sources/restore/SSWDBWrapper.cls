"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SSWDBWrapper
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBWrapper guid: (GUID fromString: '{44c5e1a2-5c6b-4f6a-b2ea-81c583e66ea2}')!
SSWDBWrapper comment: ''!
!SSWDBWrapper categoriesForClass!Unclassified! !
!SSWDBWrapper methodsFor!

object

	"object stores the Object being wrapped"

	^object!

object: anObject

	"object stores the Object being wrapped"

	object := anObject! !
!SSWDBWrapper categoriesFor: #object!accessing!public! !
!SSWDBWrapper categoriesFor: #object:!accessing!public! !

!SSWDBWrapper class methodsFor!

on: anObject

	^self new
		object: anObject;
		yourself
! !
!SSWDBWrapper class categoriesFor: #on:!instance creation!public! !

