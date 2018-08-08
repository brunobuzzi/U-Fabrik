"Filed out from Dolphin Smalltalk 7"!

UMLObjectBehavior subclass: #UMLClassDescription
	instanceVariableNames: 'name subclasses umlSuperclass traits'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassDescription guid: (GUID fromString: '{89769e84-ae5d-4adf-b1e6-4a97b1114db3}')!
UMLClassDescription comment: ''!
!UMLClassDescription categoriesForClass!Unclassified! !
!UMLClassDescription methodsFor!

addAttribute: anUMLClassAttribute

	anUMLClassAttribute umlClass: self.
	^instancesVariables at: anUMLClassAttribute getName put: anUMLClassAttribute!

addSubclass: anUMLClass

	^subclasses add: anUMLClass!

addTrait: anUMLTrait

	^traits add: anUMLTrait!

allAttributes
	" The father of all classes is Object, but Object has -UndefinedObject class- as it's superclass.
	When <umlSuperclass> of the receiver is <'UndefinedObject'> we reach the top of hierarchy chain so we quit the process"

	(umlSuperclass name = 'UndefinedObject') ifTrue: [^instancesVariables asOrderedCollection].
	^instancesVariables asOrderedCollection, umlSuperclass allAttributes!

allImplementations

	(umlSuperclass name = 'UndefinedObject') ifTrue: [^implementations asOrderedCollection].
	^implementations asOrderedCollection, umlSuperclass allImplementations asOrderedCollection, self allTraitsImplementations!

allImplementationsAsSortedCollection

	^self allImplementations asSortedCollection: [:a :b | a methodName <= b methodName]!

allImplementationsButObject

	(umlSuperclass name = 'Object') ifTrue: [^implementations asOrderedCollection].
	^implementations asOrderedCollection, umlSuperclass allImplementationsButObject asOrderedCollection!

allSubclasses

	^self asTreeModel asOrderedCollection!

allSuperclasses
	| allSuperclasses actualSuperclass |

	allSuperclasses := OrderedCollection new.
	actualSuperclass := umlSuperclass.
	[actualSuperclass name ~= 'UndefinedObject' and: [actualSuperclass notNil] ]  "if the superclass is <nil> is because the class has been recently imported from XMI"
		whileTrue: [
			allSuperclasses add: actualSuperclass.
			actualSuperclass :=  (actualSuperclass name = 'Object') 
							ifTrue: [allSuperclasses add: actualSuperclass. nil]
							ifFalse: [actualSuperclass umlSuperclass]].
	^allSuperclasses copyWithoutDuplicates
!

allSuperclassesUsingNil
	| allSuperclasses actualSuperclass |

	allSuperclasses := OrderedCollection new.
	actualSuperclass := umlSuperclass.
	[actualSuperclass notNil] "if the superclass is <nil> is because the class has been recently imported from XMI"
		whileTrue: [
			allSuperclasses add: actualSuperclass.
			actualSuperclass :=  actualSuperclass umlSuperclass isNil
							ifTrue: [nil]
							ifFalse: [actualSuperclass umlSuperclass]].
	^allSuperclasses
!

allTraitsImplementations

	^traits inject: OrderedCollection new into: [:all :eachTrait | all addAll: eachTrait methods asOrderedCollection; yourself.]!

asString

	^name!

asTreeModel
	| treeModel |

	treeModel := TreeModel withRoots: (OrderedCollection with: self).
	(subclasses asSortedCollection:[:a :b | a name <= b name]) do: [:each | treeModel addTree: each asTreeModel asChildOf: self].
	^treeModel!

asUppercase

	^name asUppercase!

asVirtualMachineTreeModel
	| treeModel |

	treeModel := TreeModel withRoots: (OrderedCollection with: self).
	((subclasses select: [:each | each belongToVirtualMachine]) asSortedCollection:[:a :b | a name <= b name]) do: [:each | treeModel addTree: each asTreeModel asChildOf: self].
	^treeModel!

attributesAsTreeModel
	| treeModel |

	treeModel := TreeModel withRoots: (OrderedCollection with: self).
	(instancesVariables asSortedCollection:[:a :b | a name <= b name]) do: [:each | treeModel addTree: each asChildOf: self].
	^treeModel!

basicUmlSuperclass: anUMLClass

	anUMLClass ifNil: [^self].
	umlSuperclass := anUMLClass.!

canUnderstand: aSymbol

	^(implementations includesKey: aSymbol) or: [traits anySatisfy: [:each | each includesMessage: aSymbol] ]!

category: anUMLImplementationCategory includes: anUMLImplementation

	(anUMLImplementation isTrait and: [anUMLImplementationCategory isAllCategoryButTrait]) ifTrue: [^false].
	anUMLImplementationCategory isAllCategory ifTrue: [^true].
	(self includesCategory: anUMLImplementationCategory) ifFalse: [^false].

	(anUMLImplementationCategory isTraitCategory and: [anUMLImplementation isTrait]) ifTrue: [^traits includes: anUMLImplementation trait].

	^(categoriesCatalogue at: anUMLImplementationCategory name ifAbsent: [^false]) includes: anUMLImplementation methodName
	!

className

	^name!

defaultTopObjectClass

	self subclassResponsibility!

displayDescriptorString

	^self name!

fileOutAsXmlTo: aStream

	aStream nextPutAll: '<VMClassTypeNamed>', self class name, '</VMClassTypeNamed>'.
	aStream nextPutAll: '<VMClassNamed>', name, '</VMClassNamed>'.
	aStream nextPutAll: '<SuperclassName>', self getSuperclass name, '</SuperclassName>'.
	aStream nextPutAll: '<Comments><!![CDATA[', comments , ']]></Comments>'.

	aStream nextPutAll: '<Implementations>'.
		implementations do: [:eachImp | 
			aStream nextPutAll: '<Implementation>'.
			eachImp fileOutAsXmlTo: aStream.
			aStream nextPutAll: '</Implementation>'.].
	aStream nextPutAll: '</Implementations>'.

	aStream nextPutAll: '<Subclasses>'.
		subclasses do: [:each | aStream nextPutAll: each name].
	aStream nextPutAll: '</Subclasses>'.

	aStream nextPutAll: '<Traits>'.
		traits do: [:each | aStream nextPutAll: '<TraitName>', each name, '</TraitName>'].
	aStream nextPutAll: '</Traits>'.!

getAllAttributesNames
	^(self allAttributes collect: [:each | each getName]) asSortedCollection!

getAllNames
	^self getAllAttributesNames asOrderedCollection , self getAllRelationsNames, self implementationsNamesAsOrderedCollection!

getAttributesNames
	^self attributes asOrderedCollection collect: [:each | each name]!

getFetchMethodsClass
	^self!

getFetchMethodsMetaclass
	^self getMetaclass!

getMetaclass

	^self subclassResponsibility!

getNames
	^self getAttributesNames asOrderedCollection , self implementationsNamesAsOrderedCollection!

getSuperclass

	^umlSuperclass!

hasAnyVariableNamed: aSymbol

	^self allAttributes anySatisfy: [:each | (each attributeName = aSymbol asSymbol) or: [each attributeName = aSymbol asString]]!

hasSubclasses
	^subclasses notEmpty!

implementationNamed: aSymbol

	^virtualMachine fetchMethodNamed: aSymbol for: self!

initialize

	super initialize.

	name := ''.
	subclasses := OrderedCollection new.
	traits := OrderedCollection new.!

instancesVariablesAsSortedCollection

	^instancesVariables asSortedCollection: [:a :b | a name <= b name]!

name
	^name!

name: anObject
	name := anObject!

printAllAttributesNames
	| all |

	all := ''.
	self allAttributes do: [:each | all := all, each name, ', '].
	^all!

removeAllRelationsAttributes

	(instancesVariables reject: [:each | each isBasic]) do: [:each | self removeAttribute: each]!

removeAttribute: aUMLClassAttribute

	^instancesVariables removeKey: aUMLClassAttribute getName ifAbsent: []!

removeAttributeNamed: aString

	^instancesVariables removeKey: aString ifAbsent: []!

removeImplementation: anUMLImplementation

	^self removeImplementationNamed: anUMLImplementation name!

removeSubclass: anUMLClass

	^subclasses remove: anUMLClass ifAbsent: []!

removeTrait: anUMLTrait

	^traits remove: anUMLTrait!

setAttributesClass

	instancesVariables do: [:each | each umlClass: self]!

setAttributesType

	instancesVariables do: [:each | each setTypeAsUMLType]!

setSuperclassToNil

	umlSuperclass := nil!

storeViewDesignWith: aTreeModel 

	^self umlModel storeViewOf: self withDesign: aTreeModel !

subclasses
	^subclasses!

subclasses: anObject
	subclasses := anObject!

topClass

	(umlSuperclass == self defaultTopObjectClass) ifTrue: [^self].

	^umlSuperclass topClass!

traits
	^traits!

traits: anObject
	traits := anObject!

traitsImplementations
	| traitsImplementations |

	traitsImplementations := OrderedCollection new.
	traits do: [:each | traitsImplementations addAll: each methods].

	^traitsImplementations asSortedCollection: [:a :b | a name <= b name]!

umlModel

	self subclassResponsibility!

umlModelName

	^self umlModel name!

umlSuperclass
	^umlSuperclass!

umlSuperclass: anUMLClass

	anUMLClass ifNil: [^self].
	umlSuperclass := anUMLClass.
	anUMLClass addSubclass: self.!

vmPerform: aSymbol withArguments: anArray 
	"The receiver perform the UMLImplementation named <aSymbol> with arguments <anArray>"

	^virtualMachine send: aSymbol to: self withAll: anArray parentSnapshot: nil!

vmPerform: aSymbol withArguments: anArray parentSnapshot: anUMLExecutionSnapshot
	"The receiver perform the UMLImplementation named <aSymbol> with arguments <anArray>"

	^virtualMachine send: aSymbol to: self withAll: anArray parentSnapshot: anUMLExecutionSnapshot! !
!UMLClassDescription categoriesFor: #addAttribute:!attributes!public! !
!UMLClassDescription categoriesFor: #addSubclass:!public!relations! !
!UMLClassDescription categoriesFor: #addTrait:!public! !
!UMLClassDescription categoriesFor: #allAttributes!attributes!public! !
!UMLClassDescription categoriesFor: #allImplementations!public!relations! !
!UMLClassDescription categoriesFor: #allImplementationsAsSortedCollection!public!relations! !
!UMLClassDescription categoriesFor: #allImplementationsButObject!public!relations! !
!UMLClassDescription categoriesFor: #allSubclasses!public! !
!UMLClassDescription categoriesFor: #allSuperclasses!attributes!public!xmi-classes! !
!UMLClassDescription categoriesFor: #allSuperclassesUsingNil!attributes!public!xmi-classes! !
!UMLClassDescription categoriesFor: #allTraitsImplementations!public!relations! !
!UMLClassDescription categoriesFor: #asString!public!transforming! !
!UMLClassDescription categoriesFor: #asTreeModel!public!transforming! !
!UMLClassDescription categoriesFor: #asUppercase!public!transforming! !
!UMLClassDescription categoriesFor: #asVirtualMachineTreeModel!public!transforming! !
!UMLClassDescription categoriesFor: #attributesAsTreeModel!public! !
!UMLClassDescription categoriesFor: #basicUmlSuperclass:!accessing!public!relations! !
!UMLClassDescription categoriesFor: #canUnderstand:!public! !
!UMLClassDescription categoriesFor: #category:includes:!public! !
!UMLClassDescription categoriesFor: #className!public! !
!UMLClassDescription categoriesFor: #defaultTopObjectClass!public! !
!UMLClassDescription categoriesFor: #displayDescriptorString!public! !
!UMLClassDescription categoriesFor: #fileOutAsXmlTo:!binary filing!public! !
!UMLClassDescription categoriesFor: #getAllAttributesNames!attributes!get elements!public! !
!UMLClassDescription categoriesFor: #getAllNames!attributes!get elements!public!relations! !
!UMLClassDescription categoriesFor: #getAttributesNames!attributes!get elements!public! !
!UMLClassDescription categoriesFor: #getFetchMethodsClass!public! !
!UMLClassDescription categoriesFor: #getFetchMethodsMetaclass!public! !
!UMLClassDescription categoriesFor: #getMetaclass!public! !
!UMLClassDescription categoriesFor: #getNames!get elements!public! !
!UMLClassDescription categoriesFor: #getSuperclass!get elements!public!relations! !
!UMLClassDescription categoriesFor: #hasAnyVariableNamed:!public! !
!UMLClassDescription categoriesFor: #hasSubclasses!public! !
!UMLClassDescription categoriesFor: #implementationNamed:!public! !
!UMLClassDescription categoriesFor: #initialize!public! !
!UMLClassDescription categoriesFor: #instancesVariablesAsSortedCollection!public! !
!UMLClassDescription categoriesFor: #name!accessing!private! !
!UMLClassDescription categoriesFor: #name:!accessing!private! !
!UMLClassDescription categoriesFor: #printAllAttributesNames!attributes!public! !
!UMLClassDescription categoriesFor: #removeAllRelationsAttributes!public! !
!UMLClassDescription categoriesFor: #removeAttribute:!attributes!public! !
!UMLClassDescription categoriesFor: #removeAttributeNamed:!attributes!public! !
!UMLClassDescription categoriesFor: #removeImplementation:!behavior!public! !
!UMLClassDescription categoriesFor: #removeSubclass:!public!relations! !
!UMLClassDescription categoriesFor: #removeTrait:!public! !
!UMLClassDescription categoriesFor: #setAttributesClass!attributes!public! !
!UMLClassDescription categoriesFor: #setAttributesType!attributes!public! !
!UMLClassDescription categoriesFor: #setSuperclassToNil!accessing!private!relations! !
!UMLClassDescription categoriesFor: #storeViewDesignWith:!gui!public! !
!UMLClassDescription categoriesFor: #subclasses!accessing!private! !
!UMLClassDescription categoriesFor: #subclasses:!accessing!private! !
!UMLClassDescription categoriesFor: #topClass!public! !
!UMLClassDescription categoriesFor: #traits!accessing!private! !
!UMLClassDescription categoriesFor: #traits:!accessing!private! !
!UMLClassDescription categoriesFor: #traitsImplementations!categories!public! !
!UMLClassDescription categoriesFor: #umlModel!gui!public! !
!UMLClassDescription categoriesFor: #umlModelName!gui!public! !
!UMLClassDescription categoriesFor: #umlSuperclass!accessing!private! !
!UMLClassDescription categoriesFor: #umlSuperclass:!accessing!public!relations! !
!UMLClassDescription categoriesFor: #vmPerform:withArguments:!behaviors!public!umlvm evaluation! !
!UMLClassDescription categoriesFor: #vmPerform:withArguments:parentSnapshot:!behaviors!public!umlvm evaluation! !

