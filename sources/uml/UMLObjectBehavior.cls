"Filed out from Dolphin Smalltalk 7"!

UMLBehavior subclass: #UMLObjectBehavior
	instanceVariableNames: 'instancesVariables implementations virtualMachine categoriesCatalogue'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLObjectBehavior guid: (GUID fromString: '{0b828222-5945-4c27-aa64-64d5f5a0f81f}')!
UMLObjectBehavior comment: ''!
!UMLObjectBehavior categoriesForClass!Unclassified! !
!UMLObjectBehavior methodsFor!

add: anUMLImplementation toCategory: anUMLImplementationCategory

	(self includesCategory: anUMLImplementationCategory) ifFalse: [categoriesCatalogue at: anUMLImplementationCategory name put: Set new].

	(categoriesCatalogue at: anUMLImplementationCategory name) add: anUMLImplementation methodName.!

add: anUMLImplementation toCategoryNamed: aString

	(self includesCategoryNamed: aString) ifFalse: [categoriesCatalogue at: aString put: Set new].

	(categoriesCatalogue at: aString) add: anUMLImplementation methodName.!

addCategory: anUMLImplementationCategory

	(self includesCategory: anUMLImplementationCategory) ifFalse: [categoriesCatalogue at: anUMLImplementationCategory name put: Set new].!

addImplementation: anUMLImplementation
	" The receiver add <anUMLImplementation> to it's implementations, if the implementation already exists then <comments> are copied to the new one"

	anUMLImplementation methodClass: self.
	(implementations includesKey: anUMLImplementation name) 
	ifTrue: [ | oldImplementation |
		oldImplementation := implementations at: anUMLImplementation name.
		anUMLImplementation comments isEmpty ifTrue: [anUMLImplementation comments: oldImplementation comments].
		(oldImplementation hasShowHideMessage and: [anUMLImplementation hasShowHideMessage not])
		ifTrue: [anUMLImplementation hideShowMessage: oldImplementation hideShowMessage] ].

	^implementations at: anUMLImplementation name put: anUMLImplementation!

allAttributesNames

	^(self allAttributes collect: [:each | each getName]) asSortedCollection!

allImplementations

	self subclassResponsibility!

attributes

	^instancesVariables!

atVariableName: stringName 
	^self atVariableName: stringName ifAbsent: []!

atVariableName: stringName ifAbsent: aBlock 
	^instancesVariables at: stringName asSymbol ifAbsent: [instancesVariables at: stringName asString ifAbsent: aBlock]!

basicAndObjectVariables

	^instancesVariables reject: [:each | each hasMultipleInstances]!

basicImplementationNamed: aSymbol

	^implementations at: aSymbol ifAbsent: [nil]!

basicVariables

	^instancesVariables select: [:each | each isBasic]!

belongToVirtualMachine

	^false!

canAnyUnderstand: aSymbol

	^(self allImplementations collect: [:each | each methodName]) includes: aSymbol!

canUnderstand: aSymbol

	^implementations includesKey: aSymbol!

categoriesCatalogue
	^categoriesCatalogue!

categoriesCatalogue: anObject
	categoriesCatalogue := anObject!

category: anUMLImplementationCategory includes: anUMLImplementation

	anUMLImplementationCategory isAllCategory ifTrue: [^true].
	(self includesCategory: anUMLImplementationCategory) ifFalse: [^false].

	^(categoriesCatalogue at: anUMLImplementationCategory name) includes: anUMLImplementation methodName
	!

className

	^self subclassResponsibility!

collectAttributesNamed: aString

	^instancesVariables select: [:each | aString match: each name]!

collectAttributesOfType: anUMLClass

	^instancesVariables select: [:each | anUMLClass name match: each type name]!

collectionVariables

	^instancesVariables select: [:each | each hasMultipleInstances]!

displayDescriptorString

	^self displayString!

fetchMethodNamed: aSymbol ifNone: aBlock
	"The receiver send the correct message to the Virtual Machine to fecth the method named <aSymbol> if none evaluates <aBlock>"

	^self subclassResponsibility!

getFetchMethodsClass
	^self subclassResponsibility!

getFetchMethodsMetaclass
	^self subclassResponsibility!

getImplementationsFor: anUMLImplementationCategory
	| categoryImplementations |

	categoryImplementations := (categoriesCatalogue at: anUMLImplementationCategory name ifAbsent: [^OrderedCollection new]) 
		collect: [:each | implementations at: each ifAbsent: [self removeImplementationNamed: each fromCategory: anUMLImplementationCategory. nil]].

	^categoryImplementations select: [:each | each notNil]!

getReferencesTo: implementationName

	^implementations select: [:each | each hasReferenceTo: implementationName]!

getVariableNamed: aSymbol

	^self getVariableNamed: aSymbol ifNone: [self virtualMachine nilObject]!

getVariableNamed: aSymbol ifNone: aBlock

	^self atVariableName: aSymbol ifAbsent: aBlock!

getVariableNamed: aSymbol snapshot: anUMLExecutionSnapshot

	virtualMachine logIsActive 
	ifTrue: [virtualMachine registerTransLogFor: self methodName: aSymbol arguments: #() snapshot: anUMLExecutionSnapshot].

	^self getVariableNamed: aSymbol ifNone: [self virtualMachine nilObject]!

getVariableNamedIgnoreCase: aSymbol 

	^self vmPerform: aSymbol withArguments: Array new!

getVariableOrImplementationNamed: aSymbol 

	^(self hasVariableNamed: aSymbol)
	ifTrue: [self atVariableName: aSymbol] 
	ifFalse: [self implementationNamed: aSymbol]!

hasAnyImplementationNamed: aSymbol
!

hasInstVarWithOriginalType: aString 

	^instancesVariables anySatisfy: [:each | aString match: each originalType]
!

hasVariableNamed: stringName

	self subclassResponsibility!

implementationNamed: aSymbol

	^implementations at: aSymbol ifAbsent: [nil]!

implementations
	^implementations!

implementations: anObject
	implementations := anObject!

implementationsAsSortedCollection

	^implementations asSortedCollection: [:a :b | a name <= b name]!

implementationsNamesAsOrderedCollection

	^(self allImplementations collect: [:each | each name]) asSortedCollection!

includesCategory: anUMLImplementationCategory

	anUMLImplementationCategory isVirtual ifTrue: [^true].

	^categoriesCatalogue includesKey: anUMLImplementationCategory name!

includesCategoryNamed: aString

	^categoriesCatalogue includesKey: aString!

includesImplementationNamed: aSymbol

	^implementations includesKey: aSymbol!

initialize

	super initialize.

	instancesVariables := LookupTable new.
	implementations := LookupTable new.
	categoriesCatalogue := LookupTable new.!

instancesVariables
	^instancesVariables!

instancesVariables: anObject
	instancesVariables := anObject!

instVarSize

	^instancesVariables size!

isBlock

	^false!

isMetaclass

	^false!

isUndefined

	^false!

methodsOfCategory: anUMLImplementationCategory

	^anUMLImplementationCategory methodsFor: self 

!

remove: anUMLImplementation from: anUMLImplementationCategory

	^self removeImplementationNamed: anUMLImplementation methodName fromCategory: anUMLImplementationCategory!

removeCategory: anUMLImplementationCategory

	^categoriesCatalogue removeKey: anUMLImplementationCategory name!

removeImplementationNamed: aString

	^implementations removeKey: aString!

removeImplementationNamed: methodName fromCategory: anUMLImplementationCategory

	(self includesCategory: anUMLImplementationCategory) ifFalse: [^self].

	(categoriesCatalogue at: anUMLImplementationCategory name) remove: methodName ifAbsent: [].

	(categoriesCatalogue at: anUMLImplementationCategory name) isEmpty ifTrue: [categoriesCatalogue removeKey: anUMLImplementationCategory name]!

resourceIdentifier

	^self virtualMachine resourceIdentifierFor: self!

setInstancesVariablesForLicence

	^instancesVariables := LookupTable new!

setVariableNamed: anUMLClassAttribute with: anUMLInstance 
	"The receiver set the variable named <aSymbol> with the value <anUMLInstances>"
	| varName |

	varName := anUMLClassAttribute hasAlias ifTrue: [anUMLClassAttribute alias asSymbol] ifFalse: [anUMLClassAttribute name asSymbol].

	^instancesVariables at: varName put: anUMLInstance!

stbSaveOn: anSTBOutFiler
	"Output the receiver to anSTBOutFiler. The cached analyzers consume a lot of space, so 
	we don't want to include them in the binary file."

	anSTBOutFiler override: virtualMachine with: nil.
	super stbSaveOn: anSTBOutFiler.!

umlClass
	^self subclassResponsibility!

unorderedMethodsFor: anUMLCategory 
	^anUMLCategory unorderedMethodsFor: self!

virtualMachine: anObject
	virtualMachine := anObject!

vmPerform: aSymbol 

	^self vmPerform: aSymbol withArguments: #()!

vmPerform: aSymbol parentSnapshot: anUMLExecutionSnapshot

	^self vmPerform: aSymbol withArguments: #() parentSnapshot: anUMLExecutionSnapshot!

vmPerform: aSymbol withArguments: anArray 
	"The receiver perform the UMLImplementation named <aSymbol> with arguments <anArray>"

	^self subclassResponsibility!

vmPerform: aSymbol withArguments: anArray  parentSnapshot: anUMLExecutionSnapshot
	"The receiver perform the UMLImplementation named <aSymbol> with arguments <anArray>"

	^self subclassResponsibility! !
!UMLObjectBehavior categoriesFor: #add:toCategory:!categories!public! !
!UMLObjectBehavior categoriesFor: #add:toCategoryNamed:!categories!public! !
!UMLObjectBehavior categoriesFor: #addCategory:!categories!public! !
!UMLObjectBehavior categoriesFor: #addImplementation:!behavior!public! !
!UMLObjectBehavior categoriesFor: #allAttributesNames!public! !
!UMLObjectBehavior categoriesFor: #allImplementations!public!relations! !
!UMLObjectBehavior categoriesFor: #attributes!instance variables!public! !
!UMLObjectBehavior categoriesFor: #atVariableName:!instance variables!public! !
!UMLObjectBehavior categoriesFor: #atVariableName:ifAbsent:!instance variables!public! !
!UMLObjectBehavior categoriesFor: #basicAndObjectVariables!instance variables!public! !
!UMLObjectBehavior categoriesFor: #basicImplementationNamed:!behavior!public! !
!UMLObjectBehavior categoriesFor: #basicVariables!instance variables!public! !
!UMLObjectBehavior categoriesFor: #belongToVirtualMachine!public! !
!UMLObjectBehavior categoriesFor: #canAnyUnderstand:!public! !
!UMLObjectBehavior categoriesFor: #canUnderstand:!public! !
!UMLObjectBehavior categoriesFor: #categoriesCatalogue!accessing!private! !
!UMLObjectBehavior categoriesFor: #categoriesCatalogue:!accessing!private! !
!UMLObjectBehavior categoriesFor: #category:includes:!categories!public! !
!UMLObjectBehavior categoriesFor: #className!public! !
!UMLObjectBehavior categoriesFor: #collectAttributesNamed:!public! !
!UMLObjectBehavior categoriesFor: #collectAttributesOfType:!public! !
!UMLObjectBehavior categoriesFor: #collectionVariables!instance variables!public! !
!UMLObjectBehavior categoriesFor: #displayDescriptorString!public! !
!UMLObjectBehavior categoriesFor: #fetchMethodNamed:ifNone:!public! !
!UMLObjectBehavior categoriesFor: #getFetchMethodsClass!public! !
!UMLObjectBehavior categoriesFor: #getFetchMethodsMetaclass!public! !
!UMLObjectBehavior categoriesFor: #getImplementationsFor:!public! !
!UMLObjectBehavior categoriesFor: #getReferencesTo:!public! !
!UMLObjectBehavior categoriesFor: #getVariableNamed:!behavior!instance variables!public! !
!UMLObjectBehavior categoriesFor: #getVariableNamed:ifNone:!behavior!instance variables!public! !
!UMLObjectBehavior categoriesFor: #getVariableNamed:snapshot:!behavior!instance variables!public! !
!UMLObjectBehavior categoriesFor: #getVariableNamedIgnoreCase:!behavior!instance variables!public! !
!UMLObjectBehavior categoriesFor: #getVariableOrImplementationNamed:!behavior!instance variables!public! !
!UMLObjectBehavior categoriesFor: #hasAnyImplementationNamed:!public! !
!UMLObjectBehavior categoriesFor: #hasInstVarWithOriginalType:!instance variables!public! !
!UMLObjectBehavior categoriesFor: #hasVariableNamed:!instance variables!public! !
!UMLObjectBehavior categoriesFor: #implementationNamed:!behavior!public! !
!UMLObjectBehavior categoriesFor: #implementations!accessing!private! !
!UMLObjectBehavior categoriesFor: #implementations:!accessing!private! !
!UMLObjectBehavior categoriesFor: #implementationsAsSortedCollection!public! !
!UMLObjectBehavior categoriesFor: #implementationsNamesAsOrderedCollection!public! !
!UMLObjectBehavior categoriesFor: #includesCategory:!categories!public! !
!UMLObjectBehavior categoriesFor: #includesCategoryNamed:!categories!public! !
!UMLObjectBehavior categoriesFor: #includesImplementationNamed:!behavior!public! !
!UMLObjectBehavior categoriesFor: #initialize!public! !
!UMLObjectBehavior categoriesFor: #instancesVariables!accessing!private! !
!UMLObjectBehavior categoriesFor: #instancesVariables:!accessing!private! !
!UMLObjectBehavior categoriesFor: #instVarSize!instance variables!public! !
!UMLObjectBehavior categoriesFor: #isBlock!public! !
!UMLObjectBehavior categoriesFor: #isMetaclass!public! !
!UMLObjectBehavior categoriesFor: #isUndefined!public! !
!UMLObjectBehavior categoriesFor: #methodsOfCategory:!categories!public! !
!UMLObjectBehavior categoriesFor: #remove:from:!categories!public! !
!UMLObjectBehavior categoriesFor: #removeCategory:!categories!public! !
!UMLObjectBehavior categoriesFor: #removeImplementationNamed:!behavior!public! !
!UMLObjectBehavior categoriesFor: #removeImplementationNamed:fromCategory:!categories!public! !
!UMLObjectBehavior categoriesFor: #resourceIdentifier!public! !
!UMLObjectBehavior categoriesFor: #setInstancesVariablesForLicence!public! !
!UMLObjectBehavior categoriesFor: #setVariableNamed:with:!behavior!instance variables!public! !
!UMLObjectBehavior categoriesFor: #stbSaveOn:!binary filing!public! !
!UMLObjectBehavior categoriesFor: #umlClass!public! !
!UMLObjectBehavior categoriesFor: #unorderedMethodsFor:!public! !
!UMLObjectBehavior categoriesFor: #virtualMachine:!accessing!private! !
!UMLObjectBehavior categoriesFor: #vmPerform:!behaviors!public! !
!UMLObjectBehavior categoriesFor: #vmPerform:parentSnapshot:!behaviors!public! !
!UMLObjectBehavior categoriesFor: #vmPerform:withArguments:!behaviors!public! !
!UMLObjectBehavior categoriesFor: #vmPerform:withArguments:parentSnapshot:!behaviors!public! !

