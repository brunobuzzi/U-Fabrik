"Filed out from Dolphin Smalltalk 7"!

Object subclass: #OrbeonFormGeneratorConfiguration
	instanceVariableNames: 'umlClass applicationName formName fieldsPerColumn isGemStoneForm sectionFields'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrbeonFormGeneratorConfiguration guid: (GUID fromString: '{6a31379c-7572-4d55-a7fa-b53a088479ff}')!
OrbeonFormGeneratorConfiguration comment: ''!
!OrbeonFormGeneratorConfiguration categoriesForClass!Unclassified! !
!OrbeonFormGeneratorConfiguration methodsFor!

add: anUMLClassAttribute to: sectionName removeFrom: oldSection

	self removeFromSection: oldSection attribute: anUMLClassAttribute. "is removed from current section"

	^self setSection: sectionName for: anUMLClassAttribute!

applicationName
	^applicationName!

applicationName: anObject
	applicationName := anObject!

basicVariables

	umlClass ifNil: [^#()].

	^umlClass basicVariables asOrderedCollection!

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
	sectionFields := Dictionary new.!

isGemStoneForm
	^isGemStoneForm!

isGemStoneForm: anObject
	isGemStoneForm := anObject!

removeFromSection: sectionName attribute: anUMLClassAttribute

	(sectionFields includesKey: sectionName) ifFalse: [^self].

	^(sectionFields at: sectionName) remove: anUMLClassAttribute ifAbsent: []!

sectionFieds
	^sectionFieds!

sectionFieds: anObject
	sectionFieds := anObject!

sectionFields
	^sectionFields!

sectionFields: anObject
	sectionFields := anObject!

setSection: sectionName for: anUMLClassAttribute

	(sectionFields includesKey: sectionName) ifFalse: [sectionFields at: sectionName put: OrderedCollection new].

	^(sectionFields at: sectionName) add: anUMLClassAttribute!

umlClass
	^umlClass!

umlClass: anUMLClass

	umlClass := anUMLClass.

	anUMLClass basicVariables do: [:anUMLClassAttribute | | sectionName |

		sectionName := anUMLClassAttribute sectionName ifNil: ['default'] ifNotNil: [:value | value].
		self setSection: sectionName for: anUMLClassAttribute ]! !
!OrbeonFormGeneratorConfiguration categoriesFor: #add:to:removeFrom:!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #applicationName!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #applicationName:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #basicVariables!accessing!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #fieldsPerColumn!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #fieldsPerColumn:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #formName!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #formName:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #initialize!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #isGemStoneForm!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #isGemStoneForm:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #removeFromSection:attribute:!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #sectionFieds!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #sectionFieds:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #sectionFields!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #sectionFields:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #setSection:for:!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #umlClass!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #umlClass:!accessing!public! !

!OrbeonFormGeneratorConfiguration class methodsFor!

new

	^super new initialize!

newOn: anUMLClass

	^super new initialize
		umlClass: anUMLClass;
		yourself! !
!OrbeonFormGeneratorConfiguration class categoriesFor: #new!public! !
!OrbeonFormGeneratorConfiguration class categoriesFor: #newOn:!public! !

