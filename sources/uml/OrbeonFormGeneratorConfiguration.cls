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

addGemStoneFields

	#('s' 'k' 'oop' 'oop2') do: [:each | | attr |
		attr := UMLClassAttribute new.
		attr name: each;
			originalType: 'String';
			type: (UMLVirtualMachine default virtualMachineClassNamed: 'String');
			sectionName: self defaultBPMInternalSectionName.
		self setSection: self defaultBPMInternalSectionName for: attr.
	].

	#('username' 'rol' 'processId') do: [:each | | attr |
		attr := UMLClassAttribute new.
		attr name: each;
			originalType: 'String';
			type: (UMLVirtualMachine default virtualMachineClassNamed: 'String');
			sectionName: self defaultBPMUserSectionName.
		self setSection: self defaultBPMUserSectionName for: attr.
	].
!

applicationName
	^applicationName!

applicationName: anObject
	applicationName := anObject!

basicVariables

	umlClass ifNil: [^#()].

	^umlClass basicVariables asOrderedCollection!

defaultBPMInternalSectionName

	^'internal-section'!

defaultBPMUserSectionName

	^'user'!

fieldsPerColumn
	^fieldsPerColumn!

fieldsPerColumn: anObject
	fieldsPerColumn := anObject!

formName
	^formName!

formName: anObject
	formName := anObject!

getBPMFields

	^(sectionFields at: self defaultBPMInternalSectionName ifAbsent: [#()]), (sectionFields at: self defaultBPMUserSectionName ifAbsent: [#()])!

initialize

	super initialize.

	applicationName := 'u-fabrik'.
	formName := 'test'.
	fieldsPerColumn := 1. 
	isGemStoneForm := false.
	sectionFields := Dictionary new.!

isGemStoneForm
	^isGemStoneForm!

isGemStoneForm: aBooelan

	(isGemStoneForm == aBooelan) ifTrue: [^self].

	isGemStoneForm := aBooelan.

	aBooelan 
	ifTrue: [self addGemStoneFields] 
	ifFalse: [self removeGemStoneFields]!

removeFromSection: sectionName attribute: anUMLClassAttribute

	(sectionFields includesKey: sectionName) ifFalse: [^self].

	^(sectionFields at: sectionName) remove: anUMLClassAttribute ifAbsent: []!

removeGemStoneFields

	sectionFields removeKey: self defaultBPMInternalSectionName ifAbsent: [].

	sectionFields removeKey: self defaultBPMUserSectionName ifAbsent: [].
!

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
!OrbeonFormGeneratorConfiguration categoriesFor: #addGemStoneFields!accessing!gemstone fields!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #applicationName!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #applicationName:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #basicVariables!accessing!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #defaultBPMInternalSectionName!accessing!gemstone fields!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #defaultBPMUserSectionName!accessing!gemstone fields!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #fieldsPerColumn!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #fieldsPerColumn:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #formName!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #formName:!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #getBPMFields!gemstone fields!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #initialize!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #isGemStoneForm!accessing!private! !
!OrbeonFormGeneratorConfiguration categoriesFor: #isGemStoneForm:!accessing!gemstone fields!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #removeFromSection:attribute:!public! !
!OrbeonFormGeneratorConfiguration categoriesFor: #removeGemStoneFields!accessing!gemstone fields!public! !
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

