"Filed out from Dolphin Smalltalk 7"!

UMLObjectBehavior subclass: #UMLInstance
	instanceVariableNames: 'umlClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLInstance guid: (GUID fromString: '{4a19a12a-e7ce-4c03-815a-9a96b5ef65ce}')!
UMLInstance comment: 'This class represent all instances in the UML environment.

Each instance of UMLClass is boxed inside this class.

Instances Variables:

umlClass 			- UMLClass creator of the receiver.
instancesVariables	- aDictionay with all attributes of the receiver. Each attribute is an  UMLInstance too.'!
!UMLInstance categoriesForClass!Unclassified! !
!UMLInstance methodsFor!

allAttributes

	^instancesVariables!

allImplementations

	^implementations!

allImplementationsButObject

	^implementations!

asSmalltalkObject
	| stInstance |

	stInstance := self getSmalltalkClass new.
	self objectBasicVariables keysAndValuesDo: [:name :object | stInstance perform: (name, ':') asSymbol with: object smalltalkObject].
	self objectReferencesVariables keysAndValuesDo: [:name :object | stInstance perform: (name, ':') asSymbol with: object asSmalltalkObject].
	self objectCollectionVariables keysAndValuesDo: [:name :object | 
		object smalltalkObject do: [:each | self halt. stInstance add: each asSmalltalkObject]].

	^stInstance!

asTreeModel

	^self asTreeModelWith: self!

asTreeModelWith: objectRoot
	| treeModel orderedKeys |

	(objectRoot vmPerform: #isCollection) smalltalkObject ifTrue: [^self treeForCollection].
	treeModel := TreeModel withRoots: (OrderedCollection with: objectRoot).
	orderedKeys := instancesVariables keys asSortedCollection.
	orderedKeys do: [:eachKey | treeModel add: (UMLTreeNode instVarName: eachKey value: (instancesVariables at: eachKey)) asChildOf: objectRoot].
	^treeModel!

atVariableName: variableName put: anUMLObject
	"The receiver set the variable named <variableName> with <anUMLObject>.
	The UML Virtual Machine perform a type control based on the UML Meta Model for the receiver"

	^virtualMachine setVariableNamed: variableName with: anUMLObject to: self errorIfNotExist: true!

basicVariables

	^instancesVariables select: [:each | (each vmPerform: #isBasic) smalltalkObject]!

canUnderstand: aSymbol 

	^(super canUnderstand: aSymbol) or: [umlClass canUnderstand: aSymbol]!

className

	^umlClass name!

collectionVariables
	"Answer a collection with the instances variables of the receiver that holds a Collection (1 to N, or N to N relation) "

	^instancesVariables select: [:each | (each vmPerform: #isCollection) smalltalkObject]!

deepDestroy

	(instancesVariables select: [:each | each smalltalkObject class == OrderedCollection]) do: [:each | each destroy].

	(instancesVariables reject: [:each | (each smalltalkObject class == OrderedCollection) or: [each belongToVirtualMachine]]) do: [:each | each destroy].

	self destroy.

	^self!

destroy

	virtualMachine := nil.
	umlClass := nil.
	implementations := LookupTable new.
	instancesVariables := LookupTable new.
	categoriesCatalogue := LookupTable new.
!

doesNotUnderstand: failedMessage

	(((self hasVariableNamed: failedMessage selector"check for getVariable message") or: [self hasVariableNamed: failedMessage selector allButLast asSymbol"check for setVariable message"] ) 
		or: [self canUnderstand: failedMessage selector] "check for a regular message") 
	ifTrue: [^self vmPerform: failedMessage selector withArguments: (failedMessage arguments collect: [:each | each asUMLObject: virtualMachine])].

	^super doesNotUnderstand: failedMessage
!

fetchMethodNamed: aSymbol ifNone: aBlock
	"The receiver send the correct message to the Virtual Machine to fecth the method named <aSymbol> if none evaluates <aBlock>"

	^self defaultVirtualMachine fetchInstanceMethodNamed: aSymbol for: self ifNone: aBlock!

getFetchMethodsClass

	^self defaultVirtualMachine isInstanceBehaviorAvailable ifTrue: [self] ifFalse: [umlClass].
	!

getFetchMethodsMetaclass
	^self getFetchMethodsClass!

getInstancesVariablesNotInGlobalCache
	"Answer a collection with receiver instances variables which it's class has NO instances in the global cache <systemRoot>"

	^((self objectCollectionVariables select: [:each | each smalltalkObject notEmpty]) asOrderedCollection reject: [:each | each smalltalkObject last umlClass hasGlobalObjects]),
	(self objectReferencesVariables reject: [:each | each umlClass hasGlobalObjects]) asOrderedCollection!

getMetaclass

	^umlClass!

getRelatedClassForInstVarNamed: aSymbol
	"The receiver get the related class based on <aSymbol>, if the receiver do not have a relation for named <aSymbol> evaluate <aBlock>"

	^self getMetaclass getRelatedClassForInstVarNamed: aSymbol
!

getRelatedClassForInstVarNamed: aSymbol ifAbsent: aBlock 
	"The receiver get the related class based on <aSymbol>, if the receiver do not have a relation for named <aSymbol> evaluate <aBlock>"

	^(self getRelatedClassForInstVarNamed: aSymbol) ifNil: aBlock ifNotNil: [:value | value] !

getSmalltalkClass

	^Smalltalk at: umlClass name asSymbol!

getVariableOrImplementationNamed: aSymbol 

	^(self hasVariableNamed: aSymbol)
	ifTrue: [self atVariableName: aSymbol] 
	ifFalse: [self vmPerform: aSymbol]!

implementationNamed: aSymbol

	^implementations at: aSymbol ifAbsent: [umlClass implementationNamed: aSymbol]!

initialize

	super initialize.

	instancesVariables := LookupTable new.!

instVarEnabled: instVarName
	| var |

	var := umlClass allAttributes detect: [:each | (each getName = instVarName asSymbol) or: [each name = instVarName asString]] ifNone: [^false].
	^var isEnabled!

isInitialized

	^instancesVariables anySatisfy: [:each | each className ~= 'UndefinedObject']!

isUMLInstance

	^true!

linkWith: anUMLInstance
	"The receiver create a link with <anUMLInstance>. First find the relation with <anUMLInstance>. Second get the multiplicity with <anUMLInstance>. Third perform the #linkSymbol between both objects.
	NOTE: only works for classes with one relation, if 2 classes have more than one relation between then --> this might not work properly"
	| relation multiplicity |

	self runBehaviorInitialize.
	relation := self relationFor: anUMLInstance umlClass. "we get the UMLRelation between the selected object and the Inspector model (root object)"
	multiplicity := relation isAssociationClass
		ifFalse: [relation getMultiplicityFor: anUMLInstance umlClass] "we get the multimplicity from selected object to Inspector model "
		ifTrue: [relation getCounterpartMultiplicityFor: umlClass].

	multiplicity isUndefinedSideMultiplicity ifTrue: [^anUMLInstance].

	self vmPerform: multiplicity linkSymbol withArguments: (Array with: anUMLInstance). "we link both objects "!

name

	^umlClass name!

newInstance
	"The receiver set all it's #instancesVariables with <UML nil object>"

	umlClass allAttributes do: [:each | instancesVariables at: each getName asSymbol put: self defaultVirtualMachine nilObject].!

objectBasicVariables

	^instancesVariables select: [:each | (each vmPerform: #isBasic) smalltalkObject]!

objectCollectionVariables
	"Answer a collection with the instances variables of the receiver that holds a Collection (1 to N, or N to N relation) "

	^instancesVariables select: [:each | (each vmPerform: #isCollection) smalltalkObject]!

objectReferencesVariables
	"Answer a collection with the instances variables of the receiver that holds a reference to Domain Object (1 to N, or 1 to 1 relation) "

	^instancesVariables select: [:each | (each vmPerform: #isDomainObject) smalltalkObject]!

printName

	^umlClass name!

printOn: target

	| name |
	name := self umlClass name.
	target 
		nextPutAll: (name first isVowel ifTrue: ['an'] ifFalse: ['a']);
		nextPutAll: name!

printString

	^super printString!

relationFor: anUMLClass

	^umlClass relationFor: anUMLClass!

relationFor: anUMLObject ifNone: aBlock

	^umlClass relationFor: anUMLObject umlClass ifNone: [aBlock value]!

relationForClassNamed: aString

	^umlClass relationForClassNamed: aString
!

relationForInstVarNamed: aString

	^umlClass umlClass relationForInstVarNamed: aString!

removeComponent: anUMLCardViewDescriptor 

	^anUMLCardViewDescriptor!

removeFromGlobalObjects

	^self umlModel removeGlobalObject: self!

removeFromSetupObjects

	^self umlModel removeSetupObject: self!

runBehaviorInitialize

	(self canUnderstand: #initialize) ifFalse: [^self].
	^self vmPerform: #initialize!

setToNil: variableName

	^self atVariableName: variableName put: self umlUndefinedObject!

smalltalkObject

	^self!

storeAsGlobalObject

	^self umlModel storeGlobalObject: self!

storeAsSetupObject
	^self umlModel storeSetupObject: self!

storeViewDesignWith: aTreeModel 

	^self umlModel storeViewOf: umlClass withDesign: aTreeModel !

umlClass
	^umlClass!

umlClass: anObject
	umlClass := anObject!

umlClassName
	^umlClass name!

umlModel

	^virtualMachine umlModelOf: self umlClass!

umlSuperclass
	^umlClass umlSuperclass!

uninstall

	instancesVariables := LookupTable new.
	implementations := LookupTable new.
	virtualMachine := nil.
	categoriesCatalogue := LookupTable new.
	umlClass := nil!

updateInstance
	"The receiver update <instancesVariables> that are included in it's class but NOT in it's self.
	This case happends when a user add an instance variable (via browser) and this class already has instances.
	The existing instances does NOT update it's <instalcesVariables> automatically "

	(umlClass allAttributes reject: [:each | instancesVariables includesKey: each getName asSymbol])
		do: [:each | instancesVariables at: each getName asSymbol put: self defaultVirtualMachine nilObject].!

value
	^self!

variableName: variableName ifNone: aBlock

	^instancesVariables at: variableName ifAbsent: aBlock!

vmPerform: aSymbol withArguments: anArray 
	"The receiver perform the UMLImplementation named <aSymbol> with arguments <anArray>"

	^self vmPerform: aSymbol withArguments: anArray parentSnapshot: nil!

vmPerform: aSymbol withArguments: anArray parentSnapshot: anUMLExecutionSnapshot
	"The receiver perform the UMLImplementation named <aSymbol> with arguments <anArray>"

	^umlClass virtualMachine send: aSymbol to: self withAll: anArray parentSnapshot: anUMLExecutionSnapshot! !
!UMLInstance categoriesFor: #allAttributes!attributes!public! !
!UMLInstance categoriesFor: #allImplementations!public!relations! !
!UMLInstance categoriesFor: #allImplementationsButObject!public!relations! !
!UMLInstance categoriesFor: #asSmalltalkObject!public! !
!UMLInstance categoriesFor: #asTreeModel!public!transforming! !
!UMLInstance categoriesFor: #asTreeModelWith:!public!transforming! !
!UMLInstance categoriesFor: #atVariableName:put:!behaviors!instance variables!public! !
!UMLInstance categoriesFor: #basicVariables!instance variables!public! !
!UMLInstance categoriesFor: #canUnderstand:!public! !
!UMLInstance categoriesFor: #className!public! !
!UMLInstance categoriesFor: #collectionVariables!instance variables!public! !
!UMLInstance categoriesFor: #deepDestroy!public! !
!UMLInstance categoriesFor: #destroy!public! !
!UMLInstance categoriesFor: #doesNotUnderstand:!behaviors!public! !
!UMLInstance categoriesFor: #fetchMethodNamed:ifNone:!public! !
!UMLInstance categoriesFor: #getFetchMethodsClass!public! !
!UMLInstance categoriesFor: #getFetchMethodsMetaclass!public! !
!UMLInstance categoriesFor: #getInstancesVariablesNotInGlobalCache!public! !
!UMLInstance categoriesFor: #getMetaclass!public! !
!UMLInstance categoriesFor: #getRelatedClassForInstVarNamed:!public! !
!UMLInstance categoriesFor: #getRelatedClassForInstVarNamed:ifAbsent:!public! !
!UMLInstance categoriesFor: #getSmalltalkClass!public! !
!UMLInstance categoriesFor: #getVariableOrImplementationNamed:!behavior!instance variables!public! !
!UMLInstance categoriesFor: #implementationNamed:!public! !
!UMLInstance categoriesFor: #initialize!public! !
!UMLInstance categoriesFor: #instVarEnabled:!public! !
!UMLInstance categoriesFor: #isInitialized!public! !
!UMLInstance categoriesFor: #isUMLInstance!public! !
!UMLInstance categoriesFor: #linkWith:!public! !
!UMLInstance categoriesFor: #name!public! !
!UMLInstance categoriesFor: #newInstance!instance creation!public! !
!UMLInstance categoriesFor: #objectBasicVariables!instance variables!public! !
!UMLInstance categoriesFor: #objectCollectionVariables!instance variables!public! !
!UMLInstance categoriesFor: #objectReferencesVariables!instance variables!public! !
!UMLInstance categoriesFor: #printName!public! !
!UMLInstance categoriesFor: #printOn:!public! !
!UMLInstance categoriesFor: #printString!public! !
!UMLInstance categoriesFor: #relationFor:!public!relations! !
!UMLInstance categoriesFor: #relationFor:ifNone:!public! !
!UMLInstance categoriesFor: #relationForClassNamed:!get elements!public!relations! !
!UMLInstance categoriesFor: #relationForInstVarNamed:!public! !
!UMLInstance categoriesFor: #removeComponent:!public! !
!UMLInstance categoriesFor: #removeFromGlobalObjects!public! !
!UMLInstance categoriesFor: #removeFromSetupObjects!public! !
!UMLInstance categoriesFor: #runBehaviorInitialize!behaviors!public! !
!UMLInstance categoriesFor: #setToNil:!behaviors!public! !
!UMLInstance categoriesFor: #smalltalkObject!public! !
!UMLInstance categoriesFor: #storeAsGlobalObject!public! !
!UMLInstance categoriesFor: #storeAsSetupObject!public! !
!UMLInstance categoriesFor: #storeViewDesignWith:!gui!public! !
!UMLInstance categoriesFor: #umlClass!accessing!private! !
!UMLInstance categoriesFor: #umlClass:!accessing!private! !
!UMLInstance categoriesFor: #umlClassName!public! !
!UMLInstance categoriesFor: #umlModel!public! !
!UMLInstance categoriesFor: #umlSuperclass!public! !
!UMLInstance categoriesFor: #uninstall!public! !
!UMLInstance categoriesFor: #updateInstance!instance creation!public! !
!UMLInstance categoriesFor: #value!public! !
!UMLInstance categoriesFor: #variableName:ifNone:!behaviors!public! !
!UMLInstance categoriesFor: #vmPerform:withArguments:!behaviors!public!umlvm evaluation! !
!UMLInstance categoriesFor: #vmPerform:withArguments:parentSnapshot:!behaviors!public!umlvm evaluation! !

!UMLInstance class methodsFor!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'object5.png'.
	"
	^Icon fromFile: 'U-Fabrik/icons/umlinstance.ico'!

new
	^self shouldNotImplement!

umlClass: anUMLClass

	^super new initialize
		umlClass: anUMLClass;
		newInstance;
		yourself.! !
!UMLInstance class categoriesFor: #icon!constants!public! !
!UMLInstance class categoriesFor: #new!public! !
!UMLInstance class categoriesFor: #umlClass:!public! !

