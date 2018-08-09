"Filed out from Dolphin Smalltalk 7"!

UMLBehavior subclass: #UMLTrait
	instanceVariableNames: 'name methods requirements traits block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTrait guid: (GUID fromString: '{e924da88-b38f-4f54-a2f9-e72eb61e426d}')!
UMLTrait comment: ''!
!UMLTrait categoriesForClass!Unclassified! !
!UMLTrait methodsFor!

addMethod: anUMLTraitMethod

	anUMLTraitMethod trait: self.
	^methods at: anUMLTraitMethod methodName put: anUMLTraitMethod!

addRequirement: anUMLTraitRequirement

	^requirements add: anUMLTraitRequirement!

addSourceMethod: sourceCode
	"The receiver add a new implementation <anUMLParsedImplementation> with source code <sourceCode>"

	^self addSourceMethod: sourceCode comments: ''!

addSourceMethod: sourceCode comments: methodComments
	"The receiver add a new implementation <anUMLParsedImplementation> with source code <sourceCode>"
	| newMethod |

	newMethod := UMLTraitMethod newWithCode: sourceCode.
	newMethod comments: methodComments.

	newMethod hasCompilationFailure: (self umlCompiler hasCompilationFailure: newMethod parsedCode for: self).

	^self addMethod: newMethod!

allImplementations
	^methods!

allImplementationsAsSortedCollection

	^self allImplementations asSortedCollection: [:a :b | a methodName <= b methodName]!

allImplementationsButObject

	^methods!

block
	^block!

block: anObject
	block := anObject!

category: anUMLImplementationCategory includes: anUMLTraitMethod 

	^anUMLImplementationCategory isTraitCategory or: [anUMLImplementationCategory isAllCategory and: [anUMLImplementationCategory isAllCategoryButTrait not] ]!

fileOutAsXmlTo: aStream

	aStream nextPutAll: '<TraitNamed>', name, '</TraitNamed>'.

	methods do: [:eachMeth | 
		aStream nextPutAll: '<Implementation>'.
		eachMeth fileOutAsXmlTo: aStream.
		aStream nextPutAll: '</Implementation>'.].

	requirements do: [:eachTraitReq | 
		aStream nextPutAll: '<Requirement>'.
		eachTraitReq fileOutAsXmlTo: aStream.
		aStream nextPutAll: '</Requirement>'.].!

getAllAttributesNames
	^#()!

includesMessage: aSymbol

	^methods includesKey: aSymbol!

initialize

	super initialize.

	name := ''.
	traits := OrderedCollection new.
	requirements := OrderedCollection new.
	methods := LookupTable new.!

methodNamed: aSymbol

	^methods at: aSymbol!

methods
	^methods!

methods: anObject
	methods := anObject!

methodsAsSortedCollection

	^methods asSortedCollection: [:a :b | a methodName <= b methodName]!

name
	^name!

name: anObject
	name := anObject!

removeMethod: anUMLTraitMethod

	anUMLTraitMethod trait: nil.
	^methods removeKey: anUMLTraitMethod methodName!

removeRequirement: anUMLTraitRequirement

	^requirements remove: anUMLTraitRequirement!

requirements
	^requirements!

requirements: anObject
	requirements := anObject!

traits
	^traits!

traits: anObject
	traits := anObject!

umlModel
	^nil! !
!UMLTrait categoriesFor: #addMethod:!public! !
!UMLTrait categoriesFor: #addRequirement:!public! !
!UMLTrait categoriesFor: #addSourceMethod:!public! !
!UMLTrait categoriesFor: #addSourceMethod:comments:!public! !
!UMLTrait categoriesFor: #allImplementations!public! !
!UMLTrait categoriesFor: #allImplementationsAsSortedCollection!public! !
!UMLTrait categoriesFor: #allImplementationsButObject!public!relations! !
!UMLTrait categoriesFor: #block!accessing!private! !
!UMLTrait categoriesFor: #block:!accessing!private! !
!UMLTrait categoriesFor: #category:includes:!public! !
!UMLTrait categoriesFor: #fileOutAsXmlTo:!binary filing!public! !
!UMLTrait categoriesFor: #getAllAttributesNames!public! !
!UMLTrait categoriesFor: #includesMessage:!public! !
!UMLTrait categoriesFor: #initialize!public! !
!UMLTrait categoriesFor: #methodNamed:!public! !
!UMLTrait categoriesFor: #methods!accessing!private! !
!UMLTrait categoriesFor: #methods:!accessing!private! !
!UMLTrait categoriesFor: #methodsAsSortedCollection!public! !
!UMLTrait categoriesFor: #name!accessing!private! !
!UMLTrait categoriesFor: #name:!accessing!private! !
!UMLTrait categoriesFor: #removeMethod:!public! !
!UMLTrait categoriesFor: #removeRequirement:!public! !
!UMLTrait categoriesFor: #requirements!accessing!private! !
!UMLTrait categoriesFor: #requirements:!accessing!private! !
!UMLTrait categoriesFor: #traits!accessing!private! !
!UMLTrait categoriesFor: #traits:!accessing!private! !
!UMLTrait categoriesFor: #umlModel!public! !

!UMLTrait class methodsFor!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'context.png'.
	"
	^Icon fromFile: 'icons/trait.ico'!

name: aSymbol sequence: anUMLSequenceNode

	^super new initialize
		name: aSymbol;
		sequence: anUMLSequenceNode;
		yourself.! !
!UMLTrait class categoriesFor: #icon!constants!public! !
!UMLTrait class categoriesFor: #name:sequence:!public! !

