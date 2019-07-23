"Filed out from Dolphin Smalltalk 7"!

Object subclass: #OrbeonFormGeneratorConfiguration
	instanceVariableNames: 'umlClass applicationName formName fieldsPerColumn isGemStoneForm sectionFieds'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrbeonFormGeneratorConfiguration guid: (GUID fromString: '{6a31379c-7572-4d55-a7fa-b53a088479ff}')!
OrbeonFormGeneratorConfiguration comment: ''!
!OrbeonFormGeneratorConfiguration categoriesForClass!Unclassified! !
!OrbeonFormGeneratorConfiguration methodsFor!

applicationName
	^applicationName!

applicationName: anObject
	applicationName := anObject!

fieldsPerColumn
	^fieldsPerColumn!

fieldsPerColumn: anObject
	fieldsPerColumn := anObject!

formName
	^formName!

formName: anObject
	formName := anObject!

initialize

	super initialize.

	applicationName := 'u-fabrik'.
	formName := 'test'.
	fieldsPerColumn := 1. 
	isGemStoneForm := false.
	sectionFieds := Dictionary new.!

isGemStoneForm
	^isGemStoneForm!

isGemStoneForm: anObject
	isGemStoneForm := anObject!

sectionFieds
	^sectionFieds!

sectionFieds: anObject
	sectionFieds := anObject!

umlClass
	^umlClass!

umlClass: anObject
	umlClass := anObject! !
!OrbeonFormGeneratorConfiguration categoriesFor: #applicationName!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #applicationName:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #fieldsPerColumn!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #fieldsPerColumn:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #formName!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #formName:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #initialize!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #isGemStoneForm!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #isGemStoneForm:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #sectionFieds!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #sectionFieds:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #umlClass!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #umlClass:!accessing!private! !

!OrbeonFormGeneratorConfiguration class methodsFor!

new

	^super new initialize!

newOn: anUMLClass

	^super new initialize
		umlClass: anUMLClass;
		yourself! !
!OrbeonFormGeneratorConfiguration class categoriesFor: #new!public! !
!OrbeonFormGeneratorConfiguration class categoriesFor: #newOn:!public! !

