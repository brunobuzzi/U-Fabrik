"Filed out from Dolphin Smalltalk 7"!

UMLClassDescription subclass: #UMLClass
	instanceVariableNames: 'relations metaclass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClass guid: (GUID fromString: '{03184f90-ddcc-4977-9f49-483ad83b8a26}')!
UMLClass comment: 'This class represent the entire concept of class as is understood in UML.

The instances variables are:

umlSuperclass 		- an instance of UMLClass representing the super class.
name 			- aString
attributes 			- is aDictionary and each key is aString with the name of the attribute. The values are instances of UMLInstance.
relations 			- is anOrderedCollection with all relations of the receiver with other classes in the UMLModel.
subclasses 		- is anOrderedCollection with all subclasses of the receiver.
implementations 	- is aDictionary and each key is aSymbol with the name of the UMLImplementation.
metaclass			- is a UMLMetaclass that represent the metaclass of the receiver.
'!
!UMLClass categoriesForClass!Unclassified! !
!UMLClass methodsFor!

= anUMLClass

	^anUMLClass class = self class and:[anUMLClass name = name]!

addRelation: anUMLRelation
	^relations add: anUMLRelation!

allCollectionsToShow

	^((self collectionVariables collect: [:each | each getName]) asOrderedCollection, self categoriesCollections asOrderedCollection) asSortedCollection!

allRelations
	" The father of all classes is Object, but Object has -UndefinedObject class- as it's superclass.
	When <umlSuperclass> of the receiver is <'UndefinedObject'> we reach the top of hierarchy chain so we quit the process"

	(umlSuperclass name = 'UndefinedObject') ifTrue: [^relations].
	^relations, umlSuperclass allRelations!

anyAttributeHasTypeNamed: aString 

	^instancesVariables anySatisfy: [:each | aString match: each type name]!

basicRelationFor: anUMLClass ifNone: aBlock
	| detectedRelation |

	detectedRelation := self allRelations select: [:each | ((each classToCreateInstanceLinkedTo: self) == anUMLClass) or:[(anUMLClass allSuperclasses 
						anySatisfy: [:eachSuperClass | (each classToCreateInstanceLinkedTo: self) == eachSuperClass])]].

	detectedRelation isEmpty ifTrue: [^nil].
	(detectedRelation size = 1) ifTrue: [^detectedRelation first]. "there is only on relation between the receiver and <anUMLClass>"

	"Now we have to find the most suitable UMLRelation from <detectedRelation>"

	^detectedRelation detect: [:each | each hasUMLClass: anUMLClass] 
		ifNone: [self basicRelationFor: anUMLClass umlSuperclass ifNone: aBlock].
!

becomeIn: anUMLAssociationClass

	anUMLAssociationClass umlSuperclass: umlSuperclass;
		name: name; 
		instancesVariables: instancesVariables;
		relations: relations; 
		subclasses: subclasses;
		implementations: implementations.

	self become: anUMLAssociationClass!

categoriesCollections
	| collectionMethods |

	collectionMethods := OrderedCollection new.
	(self getAllCategories select: [:each | each isGUICategory and: [each isCollectionCategory] ]) do: [:eachCategory |
		collectionMethods addAll: (eachCategory methodsFor: self).].

	^(collectionMethods collect: [:each | each methodName]) asSortedCollection!

classNameForImplementationList

	^self className!

defaultTopObjectClass

	^virtualMachine objectClass!

definedRelations

	^relations reject: [:each | each isUndefined]!

ensureAllAttributesKeysAsSymbol

	(instancesVariables keys select: [:each | each class == String])
		do: [:each | instancesVariables at: each asSymbol put: (instancesVariables at: each).
				instancesVariables removeKey: each ]!

fetchMethodNamed: aSymbol ifNone: aBlock
	"The receiver send the correct message to the Virtual Machine to fecth the method named <aSymbol> if none evaluates <aBlock>"

	^virtualMachine fetchClassMethodNamed: aSymbol for: self ifNone: aBlock!

generateAttributeForRelation: anUMLRelation
	" Generate the receiver's attributes for relation <anUMLRelation>"
	| newAttribute relatedClass secondName |

	(anUMLRelation getMultiplicityFor: self) isNavigable ifFalse: [^self].
	newAttribute := (anUMLRelation isAssociationClass 
		ifFalse: [UMLRelationClassAttribute. "we create the attribute and set the relation to the new attribute"] 
		ifTrue: [UMLAssociationClassAttribute]) relation: anUMLRelation.
	relatedClass := newAttribute relation relatedClassTo: self.  "we get the related class to the receiver for <anUMLRelation>"
	newAttribute name: (relatedClass nameForRelation) asSymbol; "we set the attibute name based on the <relatedClass>"
			umlClass: self;
			type: relatedClass.

	((self hasVariableNamed: newAttribute name) "and: [anUMLRelation hasDoubleRelation]")
	ifTrue: [(self promptNewNameFor: newAttribute relation: anUMLRelation)
		ifNotNil: [anUMLRelation hasDoubleRelation: true.
			anUMLRelation alias: newAttribute alias]].
	self addAttribute: newAttribute. "we add the attribute to the class"
	anUMLRelation isSelfReferenceClass ifFalse: [^newAttribute]. "if it is a self reference relation for a class then anther attribute must be added"
	((anUMLRelation isSourceNavigable) and: [anUMLRelation isTargetNavigable]) ifFalse: [^newAttribute]. "if it has non navigable side then only one attribute is needed"
	secondName := self promptSecondNameForSelfReference: newAttribute relation: anUMLRelation.
	secondName ifNil: [secondName := (relatedClass nameForRelation , '2') asSymbol].
	newAttribute := (anUMLRelation isAssociationClass 
		ifFalse: [UMLRelationClassAttribute. "we create the attribute and set the relation to the new attribute"] 
		ifTrue: [UMLAssociationClassAttribute]) relation: anUMLRelation.
	relatedClass := newAttribute relation relatedClassTo: self.  "we get the related class to the receiver for <anUMLRelation>"
	newAttribute name: secondName; "we set the attibute name based on the <relatedClass>"
			umlClass: self;
			type: relatedClass.
	^self addAttribute: newAttribute. "we add the attribute to the class"!

generateAttributesForRelations
	" Generate the receiver's attributes for each relations "

	^relations collect: [:each | self generateAttributeForRelation: each]!

getAllGlobalObjects

	^self umlModel getAllGlobalObjectsOf: self!

getAllRelationsForClassNamed: aString

	^relations select: [:eachRelation | ((self relatedClassIn: eachRelation) name = aString) 
										or:[(self relatedClassIn: eachRelation) allSubclasses anySatisfy: [:eachSubclass | eachSubclass name = aString ] ]] !

getAllRelationsNames

	^self allRelations inject: OrderedCollection new
		into: 	[:all :eachRelation | | relatedClass |
			relatedClass := self relatedClassIn: eachRelation.
			all addAll: (OrderedCollection with: relatedClass name) ,(OrderedCollection withAll: (relatedClass subclasses collect: [:each | each name])).
			all]!

getAllSubclasses
	| allSubclasses |

	subclasses isEmpty ifTrue: [^subclasses].
	allSubclasses := OrderedCollection new.

	^subclasses, allSubclasses addAll: (subclasses collect: [:each | each getAllSubclasses])!

getAnyRelationForClassNamed: aString

	^self getAnyRelationForClassNamed: aString ifNone: [virtualMachine nilObject]!

getAnyRelationForClassNamed: aString ifNone: aBlock

	^relations detect: [:eachRelation | ((self relatedClassIn: eachRelation) name = aString) 
										or:[(self relatedClassIn: eachRelation) allSubclasses anySatisfy: [:eachSubclass | eachSubclass name = aString ] ]] 
		ifNone: [aBlock value]!

getAnyVariableNamed: aSymbol 

	^self allAttributes 
		detect: [:each | (each name = aSymbol) or: [(each name asSymbol = aSymbol) or: [(each alias notNil and: [(each alias = aSymbol)])] ] ]
		ifNone: [virtualMachine nilObject]!

getAnyVariableNamed: aSymbol  ifNone: aBlock

	^self allAttributes 
		detect: [:each | (each name = aSymbol) or: [(each name asSymbol = aSymbol) or: [(each alias notNil and: [(each alias = aSymbol)])] ] ]
		ifNone: aBlock!

getGlobalObjects

	^self umlModel getGlobalObjectsOf: self!

getInitialClassObjectNames

	^(self allAttributes collect: [:each | each name]) asSortedCollection
!

getInstVarNameForClass: anUMLClass 
	"self allSuperclasses is used in the case that the ClassAssociation has subclasses, because the subclasses are NOT ClassAssociation."

	self isClassAssociation ifFalse: [^(anUMLClass associationClass relatedClassTo: self) nameForRelation asSymbol ].

	^(self allSuperclasses detect: [:each | each isClassAssociation] ifNone: [^nil]) getInstVarNameForClass: anUMLClass!

getLinkVariableForClass: anUMLClass
	| possibleClasses instVarName relation |

	possibleClasses := OrderedCollection with: anUMLClass.
	possibleClasses addAll: anUMLClass allSuperclasses.
	possibleClasses remove: virtualMachine objectClass ifAbsent: [].

	relation := (self allRelations select: [:each | possibleClasses includes: (each relatedClassTo: self)])
		detect: [:each | (each hasMultipleInstances: self) not]
		ifNone: [^nil].

	instVarName := (relation relatedClassTo: self) nameForRelation asSymbol.

	^self getAnyVariableNamed: instVarName!

getMetaclass

	^metaclass!

getRelatedClassForInstVarNamed: aSymbol 
	"The receiver get the related class based on <aSymbol>, if the receiver do not have a relation for named <aSymbol> evaluate <aBlock>.
	Must check in the superclasses "
	| targetRelation |

	(aSymbol capitalized = self name) ifTrue: [^self]. "in this case the name <aSymbol> of the instance variable is a Self Reference Attribute "

	targetRelation  := relations detect: [:each | ((each sourceClassName = aSymbol capitalized) or:[each targetClassName = aSymbol capitalized]) or: [each alias = aSymbol]] 
						ifNone: [^(self umlSuperclass == virtualMachine nilObject)	"if the receiver do not have a <aSymbol> relation we search for it's superclass"
								ifFalse: [self umlSuperclass getRelatedClassForInstVarNamed: aSymbol]  "super class search"
								ifTrue: [nil]]."no relation for <aSymbol>"

	targetRelation isAssociationClass ifTrue: [^targetRelation umlclass]. "the relation is anAssociationClass so we answer the association class"

	^(self == targetRelation targetClass) ifTrue: [targetRelation sourceClass] ifFalse: [targetRelation targetClass]
	"^targetRelation sourceClassName = aSymbol capitalized ifTrue: [targetRelation sourceClass] ifFalse: [targetRelation targetClass]"!

hasGlobalObjects

	^self getGlobalObjects notEmpty!

hasParentClass

	^umlSuperclass notNil!

hasWildCardVariableNamed: aString 

	^instancesVariables keys anySatisfy: [:each | aString match: each]!

includesRelation: anUMLRelation

	^self allRelations identityIncludes: anUMLRelation!

initialize

	super initialize.

	relations := OrderedCollection new.!

instanceClass

	^self!

instanciableRelations

	^self allRelations select: [:each | each isNavigableFrom: self].!

isClassAssociation
	^false!

metaclass
	^metaclass!

metaclass: anObject
	metaclass := anObject!

myRootObjects

	^self umlModel getGlobalObjectsOf: self!

mySetupObjects

	^self umlModel getSetupObjectsOf: self!

nameFor: anUMLRelation

	^(self relatedClassIn: anUMLRelation) name!

nameForRelation

	^name first asLowercase asString, name allButFirst!

newName: aSymbol for: anUMLClassAttribute
	"The receiver prompt a new name <alias> for the receiver's attribute <anUMLClassAttribute>"

	anUMLClassAttribute alias: aSymbol!

printGemstoneDefinitionOn: aWriteStream
	"The receiver print it's definition in GemStone/S format on <aWriteStream>"

	self printGemstoneDefinitionOn: aWriteStream forGsPackageNamed: self umlModel name!

printGemstoneDefinitionOn: aWriteStream forGsPackageNamed: gemstonePackageName
	"The receiver print it's definition in GemStone/S format on <aWriteStream>"

	(umlSuperclass name = 'Object') ifFalse: [aWriteStream nextPutAll: 'System commit.'; cr]. "issue #161"

	aWriteStream nextPutAll: umlSuperclass name, ' subclass: ''', name, ''''; cr.
	aWriteStream nextPutAll: 'instVarNames: #('.
	instancesVariables do: [:each | aWriteStream nextPutAll: (each name , ' ')].
	aWriteStream nextPutAll: ')'; cr.
	aWriteStream nextPutAll: 'classVars: #()'; cr.
	aWriteStream nextPutAll: 'classInstVars: #()'; cr.
	aWriteStream nextPutAll: 'poolDictionaries: #()'; cr.
	aWriteStream nextPutAll: 'inDictionary: '''''; cr.
	aWriteStream nextPutAll: ('category:  ''', gemstonePackageName, '''.') ; cr.
!

printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $<;
		nextPutAll: name;
		nextPut: $>.!

promptNewNameFor: anUMLClassAttribute 
	"The receiver prompt a new name <alias> for the receiver's attribute <anUMLClassAttribute>"

	^self 
		newName: (Prompter prompt: 'Enter Alias name this attribute' caption: self applicationName) asSymbol
		for: anUMLClassAttribute!

promptNewNameFor: anUMLClassAttribute relation: anUMLRelation 
	"The receiver prompt a new name <alias> for the receiver's attribute <anUMLClassAttribute>"
	| prompter newName |

	prompter := Prompter createOn: String new prompt: ('Enter Alias name for attribute derived from relation <' , anUMLRelation printName , ' - ', anUMLRelation printRelationMultiplicity , '>') caption: self applicationName.

	prompter extent: (400@220).
	(prompter view viewNamed: 'prompt') extent: 300@90.
	newName := prompter showModal.

	(newName isNil or: [newName isEmpty]) ifTrue: [^nil] .

	^self newName: newName asSymbol for: anUMLClassAttribute!

promptSecondNameForSelfReference: anUMLClassAttribute relation: anUMLRelation 
	"The receiver prompt a new name <alias> for the receiver's attribute <anUMLClassAttribute>"

	| secondName |
	secondName := (Prompter 
				prompt: 'Enter the Second name of this self relation <' , anUMLRelation printName , ' - ' 
						, anUMLRelation printRelationMultiplicity , '>'
				caption: self applicationName) ifNil: [''] ifNotNil: [:value | value asSymbol].
	(self hasVariableNamed: secondName) 
		ifTrue: 
			[MessageBox notify: 'Instance variable already exists with this name <' , secondName , '>'
				caption: self applicationName.
			^self promptSecondNameForSelfReference: anUMLClassAttribute relation: anUMLRelation].
	^secondName!

relatedClassIn: anUMLRelation

	anUMLRelation isAssociationClass ifTrue: [^anUMLRelation umlclass].

	(anUMLRelation targetClassName = name) ifTrue: [^anUMLRelation sourceClass].

	^anUMLRelation targetClass!

relationFor: anUMLClass

	^self relationFor: anUMLClass ifNone: []!

relationFor: anUMLClass ifNone: aBlock
	"Answer the most suitable <anUMLRelation> of the receiver with the UML Class argument <anUMLClass>, if there is not relation evaluate <aBlock>"

	^((self basicRelationFor: anUMLClass ifNone: aBlock) 
		ifNotNil: [:value | value] 
		ifNil: [anUMLClass basicRelationFor: self ifNone: aBlock])
	ifNil: [aBlock value]
	ifNotNil: [:value | value]
	!

relationForClassNamed: aString

	^relations detect: [:each | (self relatedClassIn: each) name = aString] ifNone: [virtualMachine nilObject]!

relationForInstVarNamed: aString

	"instancesVariables detect: [:each | each getName = aString asSymbol] ifNone: []."

	^self allAttributes detect: [:each | each getName = aString asSymbol] ifNone: [].

!

relations
	^relations!

relations: anObject
	relations := anObject!

removeRelation: anUMLRelation
	^relations remove: anUMLRelation!

selectAttributesOfType: anUMLClass

	^instancesVariables select: [:each | (each relatedClassTo: self) == anUMLClass]!

selectAttributesOfTypeNamed: aString

	^(instancesVariables select: [:each | each isBasic not and: [(each relatedClassTo: self) name = aString]]) asOrderedCollection!

setAllRelationsMultiplicity

	^relations do: [:each | each setRelationMultiplicity]!

setInstancesVariablesForLicence

	instancesVariables := LookupTable new.
	relations := OrderedCollection new.!

setSubclassesIn: anUMLModel

	umlSuperclass ifNil: [^self].

	umlSuperclass := anUMLModel getClassNamed: umlSuperclass name.

	umlSuperclass addSubclass: self!

typeName

	^self name!

umlClass
	^self!

umlModel

	^virtualMachine umlModelOf: self!

uninstallClass

	umlSuperclass removeSubclass: self.
	umlSuperclass getMetaclass removeSubclass: metaclass.
	umlSuperclass := nil.
	virtualMachine := nil.
	metaclass instanceClass: nil.
	metaclass := nil.
	! !
!UMLClass categoriesFor: #=!public! !
!UMLClass categoriesFor: #addRelation:!public!relations! !
!UMLClass categoriesFor: #allCollectionsToShow!public! !
!UMLClass categoriesFor: #allRelations!public!relations! !
!UMLClass categoriesFor: #anyAttributeHasTypeNamed:!public! !
!UMLClass categoriesFor: #basicRelationFor:ifNone:!public!relations! !
!UMLClass categoriesFor: #becomeIn:!public!relations!transforming! !
!UMLClass categoriesFor: #categoriesCollections!public! !
!UMLClass categoriesFor: #classNameForImplementationList!public! !
!UMLClass categoriesFor: #defaultTopObjectClass!public! !
!UMLClass categoriesFor: #definedRelations!public!relations! !
!UMLClass categoriesFor: #ensureAllAttributesKeysAsSymbol!public! !
!UMLClass categoriesFor: #fetchMethodNamed:ifNone:!public! !
!UMLClass categoriesFor: #generateAttributeForRelation:!attributes!public!relations!transforming!xmi-relations! !
!UMLClass categoriesFor: #generateAttributesForRelations!attributes!public!relations!transforming!xmi-relations! !
!UMLClass categoriesFor: #getAllGlobalObjects!public! !
!UMLClass categoriesFor: #getAllRelationsForClassNamed:!get elements!public!relations! !
!UMLClass categoriesFor: #getAllRelationsNames!get elements!public!relations! !
!UMLClass categoriesFor: #getAllSubclasses!public!relations! !
!UMLClass categoriesFor: #getAnyRelationForClassNamed:!get elements!public!relations! !
!UMLClass categoriesFor: #getAnyRelationForClassNamed:ifNone:!get elements!public!relations! !
!UMLClass categoriesFor: #getAnyVariableNamed:!behavior!instance variables!public! !
!UMLClass categoriesFor: #getAnyVariableNamed:ifNone:!behavior!instance variables!public! !
!UMLClass categoriesFor: #getGlobalObjects!public! !
!UMLClass categoriesFor: #getInitialClassObjectNames!public! !
!UMLClass categoriesFor: #getInstVarNameForClass:!public! !
!UMLClass categoriesFor: #getLinkVariableForClass:!behavior!instance variables!public! !
!UMLClass categoriesFor: #getMetaclass!get elements!public!relations! !
!UMLClass categoriesFor: #getRelatedClassForInstVarNamed:!public! !
!UMLClass categoriesFor: #hasGlobalObjects!public! !
!UMLClass categoriesFor: #hasParentClass!public!relations!xmi-classes! !
!UMLClass categoriesFor: #hasWildCardVariableNamed:!public! !
!UMLClass categoriesFor: #includesRelation:!public! !
!UMLClass categoriesFor: #initialize!public! !
!UMLClass categoriesFor: #instanceClass!public! !
!UMLClass categoriesFor: #instanciableRelations!public! !
!UMLClass categoriesFor: #isClassAssociation!accessing!public! !
!UMLClass categoriesFor: #metaclass!accessing!private! !
!UMLClass categoriesFor: #metaclass:!accessing!private! !
!UMLClass categoriesFor: #myRootObjects!public! !
!UMLClass categoriesFor: #mySetupObjects!public! !
!UMLClass categoriesFor: #nameFor:!public!relations! !
!UMLClass categoriesFor: #nameForRelation!public! !
!UMLClass categoriesFor: #newName:for:!attributes!public!relations!transforming! !
!UMLClass categoriesFor: #printGemstoneDefinitionOn:!public! !
!UMLClass categoriesFor: #printGemstoneDefinitionOn:forGsPackageNamed:!public! !
!UMLClass categoriesFor: #printOn:!public! !
!UMLClass categoriesFor: #promptNewNameFor:!attributes!public!relations!transforming! !
!UMLClass categoriesFor: #promptNewNameFor:relation:!attributes!public!relations!transforming! !
!UMLClass categoriesFor: #promptSecondNameForSelfReference:relation:!attributes!public!relations!transforming! !
!UMLClass categoriesFor: #relatedClassIn:!public!relations! !
!UMLClass categoriesFor: #relationFor:!public!relations! !
!UMLClass categoriesFor: #relationFor:ifNone:!public!relations! !
!UMLClass categoriesFor: #relationForClassNamed:!get elements!public!relations! !
!UMLClass categoriesFor: #relationForInstVarNamed:!public!relations! !
!UMLClass categoriesFor: #relations!accessing!private! !
!UMLClass categoriesFor: #relations:!accessing!private! !
!UMLClass categoriesFor: #removeRelation:!public!relations! !
!UMLClass categoriesFor: #selectAttributesOfType:!attributes!public! !
!UMLClass categoriesFor: #selectAttributesOfTypeNamed:!attributes!public! !
!UMLClass categoriesFor: #setAllRelationsMultiplicity!public!relations!xmi!xmi-relations! !
!UMLClass categoriesFor: #setInstancesVariablesForLicence!public! !
!UMLClass categoriesFor: #setSubclassesIn:!public!relations!xmi-classes! !
!UMLClass categoriesFor: #typeName!public! !
!UMLClass categoriesFor: #umlClass!public! !
!UMLClass categoriesFor: #umlModel!gui!public! !
!UMLClass categoriesFor: #uninstallClass!public! !

!UMLClass class methodsFor!

all
	| all |

	all := Dictionary new.
	super allInstances do: [:each | all at: each name put: each].
	^all!

colorForClassName: className
	| umlClass |

	umlClass := self defaultVirtualMachine getAnyClassNamed: className ifAbsent: [^Color darkRed].
	^umlClass getGlobalObjects isEmpty ifTrue: [Color red] ifFalse: [Color darkBlue]!

createFrom: anUMLMetaclass 

	^super new initialize
		name: anUMLMetaclass name;
		metaclass: anUMLMetaclass;
		yourself.!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'umlclass4.png'.
	"
	^Icon fromFile: 'icons/class01.ico'!

named: aString

	^self allInstances select: [:each | each name = aString]! !
!UMLClass class categoriesFor: #all!public! !
!UMLClass class categoriesFor: #colorForClassName:!public! !
!UMLClass class categoriesFor: #createFrom:!public! !
!UMLClass class categoriesFor: #icon!constants!public! !
!UMLClass class categoriesFor: #named:!public! !

