"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLRelation
	instanceVariableNames: 'sourceClass targetClass sourceNavigable targetNavigable sourceMultiplicity targetMultiplicity relationMultiplicity navigability alias hasDoubleRelation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLRelation guid: (GUID fromString: '{ee883993-2fce-42cb-a024-da7daf3f7645}')!
UMLRelation comment: 'This class represent all relations between two UMLClasses.

Instances Variables:

sourceClass 		- anUMLClass which is the source of the relation
targetClass 		- anUMLClass which is the target of the relation
sourceNavigable 	- not used for now
targetNavigable 		- not used for now
relationMultiplicity 	- anUMLAssociationMultiplicity representing the multiplicity of the entire relation (1 to N) (N to N). 
sourceMultiplicity 	- anUMLAssociationSideMultiplicity representing the detailed multiplicity of the source SIDE (1) (1..3) (N) (0..1) - only one side
targetMultiplicity 	- anUMLAssociationSideMultiplicity representing the detailed multiplicity of the target SIDE (1) (1..3) (N) (0..1) - only one side
navigability		- aString with navigability text in the diagram'!
!UMLRelation categoriesForClass!Unclassified! !
!UMLRelation methodsFor!

alias
	^alias!

alias: anObject
	alias := anObject asSymbol!

classToCreateInstanceLinkedTo: anUMLClass
	"Answer the related UMLClass of the receiver with the UMLClass argument <anUMLClass>
	1. If the argument <anUMLClass> is the source class or one of the superclass of <anUMLClass> is the source class then answer the target class
	2. If the argument <anUMLClass> is the target class or one of the superclass of <anUMLClass> is the target class then answer the source class"

	^self relatedClassTo: anUMLClass!

getCounterpartMultiplicityFor: anUMLClass

	((anUMLClass == sourceClass) or: [anUMLClass allSuperclasses anySatisfy: [:each | each == sourceClass]]) ifTrue: [^targetMultiplicity].

	((anUMLClass == targetClass) or: [anUMLClass allSuperclasses anySatisfy: [:each | each == targetClass]]) ifTrue: [^sourceMultiplicity].

	^targetMultiplicity!

getMultiplicityFor: anUMLClass

	((anUMLClass == sourceClass) or: [anUMLClass allSuperclasses anySatisfy: [:each | each == sourceClass]]) ifTrue: [^sourceMultiplicity].

	((anUMLClass == targetClass) or: [anUMLClass allSuperclasses anySatisfy: [:each | each == targetClass]]) ifTrue: [^targetMultiplicity].

	^targetMultiplicity!

getPrimaryMultiplicityAssociation

	^(OrderedCollection with: sourceMultiplicity with: targetMultiplicity) detect: [:each | each isPrimaryAssociation] ifNone: []!

getSelfMultiplicityFor: anUMLClass

	(anUMLClass == sourceClass) ifTrue: [^sourceMultiplicity].

	(anUMLClass == targetClass) ifTrue: [^targetMultiplicity].

	^sourceMultiplicity!

hasAlias
	^alias notNil!

hasDoubleRelation
	^hasDoubleRelation!

hasDoubleRelation: anObject
	hasDoubleRelation := anObject!

hasMultipleInstances: anUMLClass

	^relationMultiplicity hasMultipleInstances: anUMLClass!

hasSameRelatedClassesAs: anUMLRelation
	" Answer whether or not the receiver has the same #targetClass and #sourceClass as <anUMLRelation>.
	Compare both source classes and target classes. Also compare the source with the target in case that the relation was inverted "

	^((self sourceClassName = anUMLRelation sourceClassName) and: [self targetClassName = anUMLRelation targetClassName])
		or: [(self sourceClassName = anUMLRelation targetClassName) and: [self targetClassName = anUMLRelation sourceClassName ] ]!

hasUMLClass: anUMLClass

	 ^targetClass == anUMLClass or: [anUMLClass == sourceClass]!

icon

	relationMultiplicity ifNil: [^self class icon].

	^relationMultiplicity icon!

initialize

	super initialize.

	hasDoubleRelation := false.
"if class A and class B has more that one relation then all these relations are marked as <hasDoubleRelation> - useful for the Live Engine Environment"
	navigability := ''.
	sourceNavigable := ''.
	targetNavigable := ''.!

instancesDescriptorOf: anUMLClass

	(anUMLClass == sourceClass) ifTrue: [^sourceMultiplicity].

	(anUMLClass == targetClass) ifTrue: [^targetMultiplicity].

	^targetMultiplicity!

isAssociationClass
	^false!

isGxLevelGenerator

	^relationMultiplicity isGxLevelGenerator!

isManyToMany
	^relationMultiplicity isManyToMany!

isNavigable: anUMLClass 
	"The receiver answer whether or not the argument <anUMLClass> is navigable"

	((anUMLClass allSuperclasses, (OrderedCollection with: anUMLClass))  includes: targetClass) ifTrue: [^self isTargetNavigable].

	^self isSourceNavigable


	!

isNavigableFrom: anUMLClass 

	self isSelfReferenceClass ifTrue: [^self isTargetNavigable or: [self isSourceNavigable] ].

	^(anUMLClass == targetClass) 
	ifTrue: [self isTargetNavigable] 
	ifFalse:[self isSourceNavigable]!

isOneToManyOrManyToOne
	^relationMultiplicity isOneToManyOrManyToOne!

isOneToOne
	^relationMultiplicity isOneToOne!

isSelfReferenceClass

	^sourceClass == targetClass!

isSourceNavigable

	^sourceMultiplicity isNavigable!

isTargetNavigable

	^targetMultiplicity isNavigable!

isUndefined

	^relationMultiplicity isNil or: [relationMultiplicity isUndefined]!

name

	^self printName!

navigability
	^navigability!

navigability: anObject
	navigability := anObject!

presentationColorFor: anUMLClass

	^relationMultiplicity presentationColorFor: anUMLClass!

printAlias

	alias ifNil: [^'none'].

	^alias!

printLongName

	^sourceClass name, ' [',self printMultiplicityText ,'] ', targetClass name!

printMultiplicity

	relationMultiplicity notNil ifTrue: [^relationMultiplicity printMultiplicity].

	^self printName!

printMultiplicityText

	^relationMultiplicity printMultiplicityText!

printName

	^self printSourceMultiplicity ,' - ', self  printTargetMultiplicity!

printNavigability

	^navigability!

printOn: aStream

	"super printOn: aStream."
	relationMultiplicity notNil ifTrue: [^relationMultiplicity printOn: aStream].

	aStream
		nextPut: $<;
		nextPutAll: self printName;
		nextPut: $>.!

printRelationMultiplicity

	relationMultiplicity ifNil: [^'none'].

	^relationMultiplicity printMultiplicityText!

printSourceMultiplicity

	sourceMultiplicity ifNil: [^'none'].

	^sourceMultiplicity printMultiplicity!

printSourceMultiplicityClassName

	^relationMultiplicity printSourceMultiplicityClassName!

printSourceNavigability

	^self isSourceNavigable ifTrue: ['>'] ifFalse: ['']!

printTargetMultiplicity

	targetMultiplicity ifNil: [^'none'].

	^targetMultiplicity printMultiplicity!

printTargetMultiplicityClassName

	^relationMultiplicity printTargetMultiplicityClassName!

printTargetNavigability

	^self isTargetNavigable ifTrue: ['<'] ifFalse: ['']!

printTypeName
	^self class name!

relatedClassTo: anUMLClass
	"Answer the related UMLClass of the receiver with the UMLClass argument <anUMLClass>
	1. If the argument <anUMLClass> is the source class or a superclass of <anUMLClass> is the source class then answer the target class
	2. If the argument <anUMLClass> is the target class or a superclass of <anUMLClass> is the target class then answer the source class"

	((sourceClass == anUMLClass) or: [anUMLClass allSuperclasses anySatisfy: [:each | each == sourceClass]]) 
	ifTrue: [^targetClass].

	((targetClass == anUMLClass) or: [anUMLClass allSuperclasses anySatisfy: [:each | each == targetClass]]) 
	ifTrue: [^sourceClass].

	^anUMLClass!

relationMultiplicity
	^relationMultiplicity!

relationMultiplicity: anObject
	relationMultiplicity := anObject!

setClassesWith: anOrderedCollectionOfUMLClass 

	sourceClass := anOrderedCollectionOfUMLClass detect: [:each | each name = sourceClass] ifNone: [sourceClass].
	targetClass := anOrderedCollectionOfUMLClass detect: [:each | each name = targetClass] ifNone: [targetClass].
!

setRelationMultiplicity

	relationMultiplicity := self umlRelationMultiplicityClass new
		sourceMultiplicity: sourceMultiplicity;
		targetMultiplicity: targetMultiplicity;
		association: self;
		yourself.!

setUMLClassToNil!

shortName
	^Error notYetImplemented!

sourceClass
	^sourceClass!

sourceClass: anObject
	sourceClass := anObject!

sourceClassName

	^sourceClass name!

sourceMultiplicity
	^sourceMultiplicity!

sourceMultiplicity: anObject
	sourceMultiplicity := anObject!

sourceNavigable
	^sourceNavigable!

sourceNavigable: anObject
	sourceNavigable := anObject!

switchMultiplicity
	| multiplicity |

	multiplicity := targetMultiplicity.
	targetMultiplicity := sourceMultiplicity.
	sourceMultiplicity := multiplicity.

	relationMultiplicity sourceMultiplicity: sourceMultiplicity;
		targetMultiplicity: targetMultiplicity.!

switchNavigability
	| navigable |

	navigable := targetMultiplicity isNavigable.
	targetMultiplicity isNavigable: sourceMultiplicity isNavigable.
	sourceMultiplicity isNavigable: navigable!

targetClass
	^targetClass!

targetClass: anObject
	targetClass := anObject!

targetClassName

	^targetClass name!

targetMultiplicity
	^targetMultiplicity!

targetMultiplicity: anObject
	targetMultiplicity := anObject!

targetNavigable
	^targetNavigable!

targetNavigable: anObject
	targetNavigable := anObject!

umlRelationMultiplicityClass

	^UMLAssociationMultiplicity allConcreteClasses detect: [:each | | possibleSources possibleTargets |
		possibleSources := each sourceSideClasses select: [:eachM | eachM = sourceMultiplicity class].
		possibleTargets := each targetSideClasses select: [:eachM | (eachM = targetMultiplicity class)].
		possibleTargets notEmpty and:[possibleSources notEmpty].] ifNone:[self umlRelationWithNavigability].
!

umlRelationWithNavigability

	(targetMultiplicity isNavigable and: [sourceMultiplicity isNavigable]) ifTrue: [^UMLUndefinedMultiplicity].

	^sourceMultiplicity isNavigable 
"source can see target"
	ifTrue: [UMLAssociationMultiplicity allConcreteClasses detect: [:each | each targetSideClasses includes: targetMultiplicity class] ifNone: [UMLUndefinedMultiplicity]
		] 
"target can see source"
	ifFalse: [UMLAssociationMultiplicity allConcreteClasses detect: [:each | each sourceSideClasses includes: sourceMultiplicity class] ifNone: [UMLUndefinedMultiplicity]              
		].

!

uninstall

	relationMultiplicity ifNotNil: [:value | relationMultiplicity association: nil].
	sourceMultiplicity ifNotNil: [:value | sourceMultiplicity association: nil].
	targetMultiplicity ifNotNil: [:value |  targetMultiplicity association: nil].
	
	sourceClass := nil.
	targetClass := nil.
	sourceMultiplicity := nil.
	targetMultiplicity := nil.
	relationMultiplicity := nil.
	navigability := nil.
	hasDoubleRelation := nil.! !
!UMLRelation categoriesFor: #alias!accessing!private! !
!UMLRelation categoriesFor: #alias:!accessing!private! !
!UMLRelation categoriesFor: #classToCreateInstanceLinkedTo:!object links!public! !
!UMLRelation categoriesFor: #getCounterpartMultiplicityFor:!object links!public!xmi-relations! !
!UMLRelation categoriesFor: #getMultiplicityFor:!object links!public!xmi-relations! !
!UMLRelation categoriesFor: #getPrimaryMultiplicityAssociation!object links!public! !
!UMLRelation categoriesFor: #getSelfMultiplicityFor:!object links!public! !
!UMLRelation categoriesFor: #hasAlias!public! !
!UMLRelation categoriesFor: #hasDoubleRelation!accessing!private! !
!UMLRelation categoriesFor: #hasDoubleRelation:!accessing!private! !
!UMLRelation categoriesFor: #hasMultipleInstances:!public! !
!UMLRelation categoriesFor: #hasSameRelatedClassesAs:!public! !
!UMLRelation categoriesFor: #hasUMLClass:!public! !
!UMLRelation categoriesFor: #icon!public! !
!UMLRelation categoriesFor: #initialize!public! !
!UMLRelation categoriesFor: #instancesDescriptorOf:!public! !
!UMLRelation categoriesFor: #isAssociationClass!public! !
!UMLRelation categoriesFor: #isGxLevelGenerator!public! !
!UMLRelation categoriesFor: #isManyToMany!public! !
!UMLRelation categoriesFor: #isNavigable:!public! !
!UMLRelation categoriesFor: #isNavigableFrom:!public! !
!UMLRelation categoriesFor: #isOneToManyOrManyToOne!public! !
!UMLRelation categoriesFor: #isOneToOne!public! !
!UMLRelation categoriesFor: #isSelfReferenceClass!public! !
!UMLRelation categoriesFor: #isSourceNavigable!navigability!public! !
!UMLRelation categoriesFor: #isTargetNavigable!navigability!public! !
!UMLRelation categoriesFor: #isUndefined!public! !
!UMLRelation categoriesFor: #name!public! !
!UMLRelation categoriesFor: #navigability!accessing!private! !
!UMLRelation categoriesFor: #navigability:!accessing!private! !
!UMLRelation categoriesFor: #presentationColorFor:!public! !
!UMLRelation categoriesFor: #printAlias!public! !
!UMLRelation categoriesFor: #printLongName!printing!public! !
!UMLRelation categoriesFor: #printMultiplicity!printing!public! !
!UMLRelation categoriesFor: #printMultiplicityText!printing!public! !
!UMLRelation categoriesFor: #printName!printing!public! !
!UMLRelation categoriesFor: #printNavigability!public! !
!UMLRelation categoriesFor: #printOn:!printing!public! !
!UMLRelation categoriesFor: #printRelationMultiplicity!public! !
!UMLRelation categoriesFor: #printSourceMultiplicity!printing!public! !
!UMLRelation categoriesFor: #printSourceMultiplicityClassName!printing!public! !
!UMLRelation categoriesFor: #printSourceNavigability!public! !
!UMLRelation categoriesFor: #printTargetMultiplicity!printing!public! !
!UMLRelation categoriesFor: #printTargetMultiplicityClassName!printing!public! !
!UMLRelation categoriesFor: #printTargetNavigability!public! !
!UMLRelation categoriesFor: #printTypeName!public! !
!UMLRelation categoriesFor: #relatedClassTo:!object links!public!xmi-relations! !
!UMLRelation categoriesFor: #relationMultiplicity!accessing!private! !
!UMLRelation categoriesFor: #relationMultiplicity:!accessing!private! !
!UMLRelation categoriesFor: #setClassesWith:!public! !
!UMLRelation categoriesFor: #setRelationMultiplicity!public!xmi-relations! !
!UMLRelation categoriesFor: #setUMLClassToNil!public! !
!UMLRelation categoriesFor: #shortName!public! !
!UMLRelation categoriesFor: #sourceClass!accessing!private! !
!UMLRelation categoriesFor: #sourceClass:!accessing!private! !
!UMLRelation categoriesFor: #sourceClassName!public! !
!UMLRelation categoriesFor: #sourceMultiplicity!accessing!private! !
!UMLRelation categoriesFor: #sourceMultiplicity:!accessing!private! !
!UMLRelation categoriesFor: #sourceNavigable!accessing!private! !
!UMLRelation categoriesFor: #sourceNavigable:!accessing!private! !
!UMLRelation categoriesFor: #switchMultiplicity!public! !
!UMLRelation categoriesFor: #switchNavigability!public! !
!UMLRelation categoriesFor: #targetClass!accessing!private! !
!UMLRelation categoriesFor: #targetClass:!accessing!private! !
!UMLRelation categoriesFor: #targetClassName!public! !
!UMLRelation categoriesFor: #targetMultiplicity!accessing!private! !
!UMLRelation categoriesFor: #targetMultiplicity:!accessing!private! !
!UMLRelation categoriesFor: #targetNavigable!accessing!private! !
!UMLRelation categoriesFor: #targetNavigable:!accessing!private! !
!UMLRelation categoriesFor: #umlRelationMultiplicityClass!public! !
!UMLRelation categoriesFor: #umlRelationWithNavigability!public! !
!UMLRelation categoriesFor: #uninstall!public! !

!UMLRelation class methodsFor!

icon

	^Icon fromId: 'TypeConverter.ico'!

printName

	^'Relation'! !
!UMLRelation class categoriesFor: #icon!public! !
!UMLRelation class categoriesFor: #printName!public! !

