"Filed out from Dolphin Smalltalk 7"!

Object subclass: #UMLVirtualMachineBootstrap
	instanceVariableNames: 'xmlDocument traits packages superclassesDictionary virtualMachine'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineBootstrap guid: (GUID fromString: '{8bf72792-0c64-4cf9-b823-7040599c4248}')!
UMLVirtualMachineBootstrap comment: ''!
!UMLVirtualMachineBootstrap categoriesForClass!Unclassified! !
!UMLVirtualMachineBootstrap methodsFor!

createVirtualMachineFrom: xmlSource

	xmlDocument := IXMLDOMDocument new.
	xmlDocument loadText: xmlSource.

	traits := self generateVirtualMachineTraits.

	self generateVirtualMachinePackages.

	self setSuperclassesAndSubclasses. 
	
	self setTraitsToPackages.
	self setTraitsToClasses.
	self setSmalltalkClasses.

	^self generateVirtualMachine!

createVirtualMachineFromVersion1

	^self createVirtualMachineFrom: self class virtualMachineV1Code!

fileInFromXml: pathFile
	| stream xmlSource |

	superclassesDictionary := Dictionary new.
	stream := FileStream read: pathFile text: true.
	xmlSource := stream contents.
	stream close.

	^self createVirtualMachineFrom: xmlSource!

generateVirtualMachine

	self getAllClasses do: [:each | virtualMachine addUMLMetaclass: each].

	virtualMachine packages: packages;
		transLog: UMLVMTransLog new;
		isInstanceBehaviorAvailable: true.

	self setPrimitiveObjects.

	^virtualMachine
	!

generateVirtualMachineAndSetAsDefault

	self generateVirtualMachine.

	UMLVirtualMachine setDefault: virtualMachine.!

generateVirtualMachinePackages
	| packagesNodes umlMetaclasses |

	packages := OrderedCollection new.
	umlMetaclasses := Dictionary new.
	packagesNodes := (xmlDocument selectNodes: 'VM/Packages') asArray last childNodes.

	 packagesNodes  do: [:eachPackage | | packName classesNodes metaclassesNodes package umlClasses |
		umlClasses := Dictionary new.
		packName := (eachPackage selectSingleNode: 'VMPackageNamed') innerXML.
		package := UMLVirtualMachinePackage new name: packName.
		metaclassesNodes := (eachPackage selectSingleNode: 'Metaclasses') childNodes asArray.
		metaclassesNodes do: [:classNode | | className classStType superClassName umlMetaclass implementationNodes |
			className := (classNode selectSingleNode: 'VMClassNamed') innerXML.
			classStType := (classNode selectSingleNode: 'VMClassTypeNamed') innerXML.
			superClassName := (classNode selectSingleNode: 'SuperclassName') innerXML.
			superclassesDictionary at: className put: superClassName.
			umlMetaclass := UMLVirtualMachineMetaclass newNamed: className.
			umlMetaclass virtualMachine: virtualMachine.
			umlMetaclasses at: umlMetaclass name put: umlMetaclass.
			implementationNodes := (classNode selectSingleNode: 'Implementations') childNodes asArray.
			implementationNodes do: [:each | | newImplementation parsedMethod source |
				source := ((each selectSingleNode: 'Source') innerXML allButFirst: 9) allButLast: 3.
				parsedMethod := SmalltalkParser  parseMethod: source.
				newImplementation := (UMLTraitMethod newNamed: parsedMethod selector) parsedCode: parsedMethod. 
				newImplementation := (UMLParsedImplementation newNamed: parsedMethod selector) parsedCode: parsedMethod.
				umlMetaclass addImplementation: newImplementation.
			].
		].
		classesNodes := (eachPackage selectSingleNode: 'Classes') childNodes asArray.
		classesNodes do: [:classNode | | className classStType superClassName umlClass implementationNodes |
			className := (classNode selectSingleNode: 'VMClassNamed') innerXML.
			classStType := (classNode selectSingleNode: 'VMClassTypeNamed') innerXML.
			superClassName := (classNode selectSingleNode: 'SuperclassName') innerXML.
			umlClass := UMLVirtualMachineClass createFrom: (umlMetaclasses at: className).
			umlClass virtualMachine: virtualMachine.
			(umlMetaclasses at: className) instanceClass: umlClass.
			package addClass: umlClass.
			implementationNodes := (classNode selectSingleNode: 'Implementations') childNodes asArray.
			implementationNodes do: [:each | | newImplementation parsedMethod source |
				source := ((each selectSingleNode: 'Source') innerXML allButFirst: 9) allButLast: 3.
				parsedMethod := SmalltalkParser  parseMethod: source.
				newImplementation := (UMLTraitMethod newNamed: parsedMethod selector) parsedCode: parsedMethod. 
				newImplementation := (UMLParsedImplementation newNamed: parsedMethod selector) parsedCode: parsedMethod.
				umlClass addImplementation: newImplementation.
			].
		].
		packages add: package .
	].
	^packages!

generateVirtualMachineTraits
	| traitNodes |

	traits := Dictionary new.
	traitNodes := (xmlDocument selectNodes: 'VM/Traits') asArray last childNodes.

	 traitNodes  do: [:eachTrait | | traitName implementationsNodes trait |
		traitName := (eachTrait selectSingleNode: 'TraitNamed') innerXML.
		trait := UMLTrait new name: traitName.
		implementationsNodes := (eachTrait selectNodes: 'Implementation') asArray.
		implementationsNodes do: [:impNode | | methodName source implementation parsedSource |
			"methodName := impNode selectSingleNode: 'TraitMethodNamed'."
			source := ((impNode selectSingleNode: 'Source') innerXML allButFirst: 9) allButLast: 3.
			parsedSource := SmalltalkParser  parseMethod: source.
			implementation := (UMLTraitMethod newNamed: parsedSource selector) parsedCode: parsedSource. 
			trait addMethod: implementation.
		].
		traits at: trait name put: trait.
	].
	virtualMachine traits: traits.
	^traits!

getAllClasses
	| allClasses |

	allClasses := OrderedCollection new.

	packages do: [:pack | 
		allClasses addAll: (pack classes collect: [:each | each metaclass] )].

	^allClasses!

getPackageNamed: aString

	packages do: [:each | (each name = aString) ifTrue: [^each ] ].

	^nil!

getTraitNamed: aString

	traits do: [:each | (each name = aString) ifTrue: [^each ] ].

	^nil!

getUMLClassNamed: aString

	packages do: [:pack | 
		pack classes do: [:each | (each name = aString) ifTrue: [^each ] ] ].

	^nil!

getUMLMetaclassNamed: aString

	packages do: [:pack | 
		pack classes do: [:each | (each name = aString) ifTrue: [^each metaclass] ] ].

	^nil!

initialize

	super initialize.

	virtualMachine := UMLVirtualMachine new.

	virtualMachine packages: packages;
		traits: traits.
!

packages
	^packages!

packages: anObject
	packages := anObject!

setPrimitiveObjects
	| falseObject trueObject nilObject  |

	nilObject := UMLVirtualMachineInstance umlClass: (self getUMLClassNamed: 'UndefinedObject') with: nil.

	trueObject := UMLVirtualMachineInstance umlClass: (self getUMLClassNamed: 'True') with: true.
	falseObject := UMLVirtualMachineInstance umlClass: (self getUMLClassNamed: 'False') with: false.

	virtualMachine addPrimitiveObject: nilObject named: 'nil'.
	virtualMachine addPrimitiveObject: trueObject named: 'true'.
	virtualMachine addPrimitiveObject: falseObject named: 'false'.
!

setSmalltalkClasses

	(self getUMLClassNamed: 'Object') smalltalkClass: Object.

	(self getUMLClassNamed: 'UndefinedObject') smalltalkClass: UndefinedObject.

	(self getUMLClassNamed: 'Boolean') smalltalkClass: Boolean.
	(self getUMLClassNamed: 'False') smalltalkClass: False.
	(self getUMLClassNamed: 'True') smalltalkClass: True.

	(self getUMLClassNamed: 'Number') smalltalkClass: Number.

	(self getUMLClassNamed: 'Collection') smalltalkClass: Collection.
	(self getUMLClassNamed: 'Array') smalltalkClass: Array.
	(self getUMLClassNamed: 'OrderedCollection') smalltalkClass: OrderedCollection.
	(self getUMLClassNamed: 'Dictionary') smalltalkClass: Dictionary.
	(self getUMLClassNamed: 'Interval') smalltalkClass: Interval.
	(self getUMLClassNamed: 'String') smalltalkClass: String.

	(self getUMLClassNamed: 'Blob') smalltalkClass: Object.
	(self getUMLClassNamed: 'Block') smalltalkClass: BlockClosure.
	(self getUMLClassNamed: 'Date') smalltalkClass: Date.
	(self getUMLClassNamed: 'Time') smalltalkClass: Time.
	(self getUMLClassNamed: 'TimeStamp') smalltalkClass: TimeStamp.

	(self getUMLClassNamed: 'EditableObject') smalltalkClass: Object.
	(self getUMLClassNamed: 'ExternalFile') smalltalkClass: ExternalFile.
	(self getUMLClassNamed: 'MSText') smalltalkClass: MSText.
	(self getUMLClassNamed: 'MSOffice') smalltalkClass: MSOffice.
	(self getUMLClassNamed: 'MSExcel') smalltalkClass: MSExcel.
	(self getUMLClassNamed: 'MSWord') smalltalkClass: MSWord.
	(self getUMLClassNamed: 'MSPowerPoint') smalltalkClass: MSPowerPoint.
	(self getUMLClassNamed: 'MessageBox') smalltalkClass: MessageBox.
	(self getUMLClassNamed: 'ParsedMethod') smalltalkClass: ParsedMethod.
	(self getUMLClassNamed: 'TreeModel') smalltalkClass: TreeModel.

	(self getUMLClassNamed: 'View') smalltalkClass: View.
	(self getUMLClassNamed: 'WebApplication') smalltalkClass: WebApplication.
	(self getUMLClassNamed: 'WebElement') smalltalkClass: WebElement.

	(self getUMLClassNamed: 'VMClass') smalltalkClass: VMClass.
	(self getUMLClassNamed: 'VMClassBehavior') smalltalkClass: VMClassBehavior.
	(self getUMLClassNamed: 'VMInstance') smalltalkClass: VMInstance.
	(self getUMLClassNamed: 'VMMetaclass') smalltalkClass: VMMetaclass.

	(self getUMLClassNamed: 'Error') smalltalkClass: Error.	
	(self getUMLClassNamed: 'Exception') smalltalkClass: Exception.
	(self getUMLClassNamed: 'Warning') smalltalkClass: Warning.
!

setSuperclassesAndSubclasses
	| objectClass objectMetaclass nilObject |

	packages do: [:package | 
		package classes do: [:umlClass | | superClassName |
			superClassName := superclassesDictionary at: umlClass name.
			umlClass umlSuperclass: (self getUMLClassNamed: superClassName).
			umlClass metaclass umlSuperclass: (self getUMLMetaclassNamed: superClassName).
		].
	].

	objectClass := self getUMLClassNamed: 'Object'.
	objectMetaclass := self getUMLMetaclassNamed: 'Object'.

	nilObject := self getUMLClassNamed: 'UndefinedObject'.
	nilObject subclasses: OrderedCollection new.
	nilObject metaclass subclasses: OrderedCollection new.

"
	#('Collection' 'ExternalFile' 'Blob' 'Date' 'Number' 'String' 'Time' 'TimeStamp' 'View' 'Block' 'Boolean' 'Error' 'MessageBox' 'ParsedMethod' 'TreeModel' 'UndefinedObject' 'VMClassBehavior' 'EditableObject' 'WebApplication' 'WebElement') do: [:each | 
		| itemClass itemMetaclass |
		itemClass := self getUMLClassNamed: each.
		itemMetaclass := self getUMLMetaclassNamed: each.
		objectClass addSubclass: itemClass.
		objectMetaclass addSubclass: itemMetaclass.
	]."!

setTraitsToClasses
	| collectionObject fileObject collectionTrait externalFileTrait |

	collectionObject := self getUMLClassNamed: 'Collection'.
	fileObject := self getUMLClassNamed: 'ExternalFile'.

	collectionTrait := self getTraitNamed: 'UML Relations Methods'.
	externalFileTrait := self getTraitNamed: 'File Manipulation'.
	collectionObject addTrait: collectionTrait.
	fileObject addTrait: externalFileTrait.

	collectionObject subclasses do: [:each | each addTrait: collectionTrait].
	fileObject subclasses do: [:each | each addTrait: externalFileTrait].	
	(self getUMLClassNamed: 'MSOffice') subclasses do: [:each | each addTrait: externalFileTrait].	

"
	#('Collection' 'ExternalFile' 'Blob' 'Date' 'Number' 'String' 'Time' 'TimeStamp' 'View' 'Block' 'Boolean' 'Error' 'MessageBox' 'ParsedMethod' 'TreeModel' 'UndefinedObject' 'VMClassBehavior' 'EditableObject' 'WebApplication' 'WebElement') do: [:each | 
		| itemClass itemMetaclass |
		itemClass := self getUMLClassNamed: each.
		itemMetaclass := self getUMLMetaclassNamed: each.
		objectClass addSubclass: itemClass.
		objectMetaclass addSubclass: itemMetaclass.
	]."!

setTraitsToPackages
	| collectionPack filePack collectionTrait externalFileTrait |

	collectionPack := self getPackageNamed: 'Collections'.
	filePack := self getPackageNamed: 'External Files'.

	collectionTrait := self getTraitNamed: 'UML Relations Methods'.
	externalFileTrait := self getTraitNamed: 'File Manipulation'.
	collectionPack addTrait: collectionTrait.
	filePack addTrait: externalFileTrait.
!

superclassesDictionary
	^superclassesDictionary!

superclassesDictionary: anObject
	superclassesDictionary := anObject!

traits
	^traits!

traits: anObject
	traits := anObject! !
!UMLVirtualMachineBootstrap categoriesFor: #createVirtualMachineFrom:!public!vm generation! !
!UMLVirtualMachineBootstrap categoriesFor: #createVirtualMachineFromVersion1!public!vm generation! !
!UMLVirtualMachineBootstrap categoriesFor: #fileInFromXml:!fileIn/Out!public! !
!UMLVirtualMachineBootstrap categoriesFor: #generateVirtualMachine!public!vm generation! !
!UMLVirtualMachineBootstrap categoriesFor: #generateVirtualMachineAndSetAsDefault!public!vm generation! !
!UMLVirtualMachineBootstrap categoriesFor: #generateVirtualMachinePackages!public!vm generation! !
!UMLVirtualMachineBootstrap categoriesFor: #generateVirtualMachineTraits!public!vm generation! !
!UMLVirtualMachineBootstrap categoriesFor: #getAllClasses!new vm queries!public! !
!UMLVirtualMachineBootstrap categoriesFor: #getPackageNamed:!new vm queries!public! !
!UMLVirtualMachineBootstrap categoriesFor: #getTraitNamed:!new vm queries!public! !
!UMLVirtualMachineBootstrap categoriesFor: #getUMLClassNamed:!new vm queries!public! !
!UMLVirtualMachineBootstrap categoriesFor: #getUMLMetaclassNamed:!new vm queries!public! !
!UMLVirtualMachineBootstrap categoriesFor: #initialize!public! !
!UMLVirtualMachineBootstrap categoriesFor: #packages!accessing!private! !
!UMLVirtualMachineBootstrap categoriesFor: #packages:!accessing!private! !
!UMLVirtualMachineBootstrap categoriesFor: #setPrimitiveObjects!public!setup objects! !
!UMLVirtualMachineBootstrap categoriesFor: #setSmalltalkClasses!public!setup objects! !
!UMLVirtualMachineBootstrap categoriesFor: #setSuperclassesAndSubclasses!public!setup objects! !
!UMLVirtualMachineBootstrap categoriesFor: #setTraitsToClasses!public!setup objects! !
!UMLVirtualMachineBootstrap categoriesFor: #setTraitsToPackages!public!setup objects! !
!UMLVirtualMachineBootstrap categoriesFor: #superclassesDictionary!accessing!private! !
!UMLVirtualMachineBootstrap categoriesFor: #superclassesDictionary:!accessing!private! !
!UMLVirtualMachineBootstrap categoriesFor: #traits!accessing!private! !
!UMLVirtualMachineBootstrap categoriesFor: #traits:!accessing!private! !

!UMLVirtualMachineBootstrap class methodsFor!

new

	^super new initialize!

virtualMachineV1Code
	"This is the code of the first U-Fabrik Virtual Machine.
	Includes: Basic classes and basic traits"
	^'<VM>
	<Traits>
		<Trait>
			<TraitNamed>UML Relations Methods</TraitNamed>
			<Implementation>
				<TraitMethodNamed>any:satisfy:</TraitMethodNamed>
				<Source><!![CDATA[any: anUMLClass satisfy: aBlock 
	| collection |

	collection := super getCollectionToIterateOver: anUMLClass
				ifNone: 
					[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection anySatisfy: aBlock]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>mutualAdd:</TraitMethodNamed>
				<Source><!![CDATA[mutualAdd: anObject
	| collection |
	collection := super
		getCollectionToOperateWith: anObject
		ifNone:
			[^Error
				message: ''Mismatch relation between ['' , super className , ''] and ['' , anObject className , '']''].
	collection add: anObject.
	^anObject basicAdd: self]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>in:do:</TraitMethodNamed>
				<Source><!![CDATA[in: anUMLClass do: aBlock
	| collection |

	collection := super
		getCollectionToIterateOver: anUMLClass
		ifNone:
			[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection do: aBlock]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>in:collect:</TraitMethodNamed>
				<Source><!![CDATA[in: anUMLClass collect: aBlock
	| collection |
	collection := super
		getCollectionToIterateOver: anUMLClass
		ifNone:
			[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection collect: aBlock]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>mutualRemove:</TraitMethodNamed>
				<Source><!![CDATA[mutualRemove: anObject
	| collection |

	collection := super
		getCollectionToOperateWith: anObject
		ifNone:
			[^Error
				message: ''Mismatch relation between ['' , super className , ''] and ['' , anObject className , '']''].
	collection remove: anObject.
	^anObject basicRemove: self]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>basicRemove:</TraitMethodNamed>
				<Source><!![CDATA[basicRemove: anObject
	| collection |

	collection := super
		getCollectionToOperateWith: anObject
		ifNone:
			[^Error
				message: ''Mismatch relation between ['' , super className , ''] and ['' , anObject className , '']''].
	^collection remove: anObject]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>all:satisfy:</TraitMethodNamed>
				<Source><!![CDATA[all: anUMLClass satisfy: aBlock
	| collection |
	collection := super
		getCollectionToIterateOver: anUMLClass
		ifNone:
			[^Error
				message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection allSatisfy: aBlock]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>in:reject:</TraitMethodNamed>
				<Source><!![CDATA[in: anUMLClass reject: aBlock
	| collection |

	collection := super
		getCollectionToIterateOver: anUMLClass
		ifNone:
			[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection reject: aBlock]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>includes:</TraitMethodNamed>
				<Source><!![CDATA[includes: anObject
	| collection |
	collection := super
		getCollectionToOperateWith: anObject
		ifNone:
			[^Error
				message: ''Mismatch relation between ['' , super className , ''] and ['' , anObject className , '']''].
	^collection includes: anObject]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>in:detect:</TraitMethodNamed>
				<Source><!![CDATA[in: anUMLClass detect: aBlock
	| collection |
	collection := super
		getCollectionToIterateOver: anUMLClass
		ifNone:
			[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection detect: aBlock]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>in:select:</TraitMethodNamed>
				<Source><!![CDATA[in: anUMLClass select: aBlock
	| collection |
	collection := super
		getCollectionToIterateOver: anUMLClass
		ifNone:
			[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection select: aBlock]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>add:</TraitMethodNamed>
				<Source><!![CDATA[add: anObject
	| collection |
	collection := super
		getCollectionToOperateWith: anObject
		ifNone:
			[^Error
				message: ''Mismatch relation between ['' , super className , ''] and ['' , anObject className , '']''].
	anObject setDirectRelationWith: self.
	^collection add: anObject]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>basicAdd:</TraitMethodNamed>
				<Source><!![CDATA[basicAdd: anObject
	| collection |
	collection := super
		getCollectionToOperateWith: anObject
		ifNone:
			[^Error
				message: ''Mismatch relation between ['' , super className , ''] and ['' , anObject className , '']''].
	^collection add: anObject]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>remove:</TraitMethodNamed>
				<Source><!![CDATA[remove: anObject
	| collection newClass newObject |

	collection := super
		getCollectionToOperateWith: anObject
		ifNone:
			[^Error
				message: ''Mismatch relation between ['' , super className , ''] and ['' , anObject className , '']''].
	newClass := super class.
	newObject := newClass newInstance.
	anObject setDirectRelationWith: newObject.
	collection remove: anObject]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>countNumberOf:</TraitMethodNamed>
				<Source><!![CDATA[countNumberOf: anUMLClass 
	| collection |

	collection := super getCollectionToIterateOver: anUMLClass
				ifNone: 
					[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection size]]></Source>
			</Implementation>
		</Trait>
		<Trait>
			<TraitNamed>File Manipulation</TraitNamed>
			<Implementation>
				<TraitMethodNamed>free</TraitMethodNamed>
				<Source><!![CDATA[free
	^super getFile free]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>save</TraitMethodNamed>
				<Source><!![CDATA[save
	^super getFile save]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>open</TraitMethodNamed>
				<Source><!![CDATA[open
	^super getFile open]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>openFileIn:</TraitMethodNamed>
				<Source><!![CDATA[openFileIn: pathFile

	^super setFileWith: (super getDocumentClass open: pathFile)]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>fileName</TraitMethodNamed>
				<Source><!![CDATA[fileName

	^self getFile name]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>showApplication</TraitMethodNamed>
				<Source><!![CDATA[showApplication
	^super getFile showApplication]]></Source>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>createFileIn:</TraitMethodNamed>
				<Source><!![CDATA[createFileIn: pathFile
	| newDocument |
	newDocument := super getDocumentClass create: pathFile.
	super setFileWith: newDocument.
	self save.
	^newDocument]]></Source>
			</Implementation>
		</Trait>
	</Traits>
	<Packages>
		<Package>
			<VMPackageNamed>Collections</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Interval</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[includes: index
"Answer whether or not the receiver Interval includes <index>"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock

<primitive: 130 >]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	"Answer the size of the receiver"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[start
	"Answer the initial value of the receiver"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[step
	"Answer the receiver step"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[stop
	"Answer the receiver stop"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
"Answer the element at the position <index> in the receiver Array"
	<primitive: 101>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Interval</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Collection</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[_difference: comperand
	"Answer a <collection> like the receiver containing the Set theroetic 
	difference between the receiver and the <collection>, comperand. 
	i.e. Answer the set of all objects that are elements of the receiver 
	but not the argument. 
	This method is optimized inside the UML Virtual Machine"

	<primitive: 103>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isCollection
	"Answer whether the receiver is a collection or not"
	^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[difference: comperand
	"Answer a <collection> like the receiver containing the Set theroetic 
	difference between the receiver and the <collection>, comperand. 
	i.e. Answer the set of all objects that are elements of the receiver 
	but not the argument."

	^self reject: [:e | comperand includes: e]]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>ArrayDictionaryOrderedCollectionInterval</Subclasses>
					<Traits></Traits>
					<StClass>Collection</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Array</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[resize: newSize
	"Resize the receiver Array to <newSize>"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
	"Answer the element at the position <index> in the receiver Array"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index put: anObject
	"At position <index> put <anObject> in the receiver Array"
	<primitive: 103>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock 
	"Evaluates aBlock one time per each element passing the element as arguments"

	<primitive: 122>]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Array</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Dictionary</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[keys
	"Answer anOrderedCollection with all key elements of the receiver Dictionary"

	<primitive: 128>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: key put: anObject
	"At key element <key> put (store) <anObject> in the receiver Dictionary"
	<primitive: 103>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"
	<primitive: 103>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeKey: key
	"Removes <key> from key elements of the receiver Dictionary"
	<primitive: 103>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includesKey: key
	"Answer whether or not the receiver Dictionary has key element equal to <key>"
	<primitive: 103>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection

	<primitive: 102>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: key
	"Answer the element at <key> in the receiver Dictionary"
	<primitive: 103>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Dictionary</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>OrderedCollection</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[detect: discrimininator
	"Answer the first element that answer true in the <discriminator> Block"
	<primitive: 121>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[first
	"Answer the first element of the receiver"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEmpty
	"Answer whether or not the receiver is empty"
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[select: discriminator
	"Answer a new collection  with all elements that answer <true> in the <discriminator> Block"

	<primitive: 123>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[identityIncludes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"

	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[addAll: anOrderedCollection
	"Add all elements of <anOrderedCollection> to the receiver Collection"
	^anOrderedCollection do: [:each | self add: each]]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[second
	"Answer the second element of the receiver"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notEmpty
	"Answer whether or not the receiver is NOT empty"
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	"Answer the size of the receiver"
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[last
	"Answer the last element of the receiver"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copyWithoutDuplicates
	"Answer a new collection wiuthout duplicated elements"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reject: discriminatorBlock
	"Answer a new collection  with all elements that answer <false> in the <discriminator> Block"


	<primitive: 126>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[add: anObject
	"Add <anObject> to the receiver"
	<primitive: 151>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[third
	"Answer the third element of the receiver"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[remove: anObject
	<primitive: 152>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allSatisfy: discriminator
	"Answer whether or not all elements of the receiver answer true to <discriminator> block"
	<primitive: 124>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[, anOrderedCollection
	"Answer a new collection with the receiver elements plus <anOrderedCollection> elements"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"
	<primitive: 103>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asArray
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[collect: aBlock

<primitive: 120>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asSortedCollection: sortBlock
	"Answer aSortedCollection using the sort block <sortBlock>"
	<primitive: 127>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock
"Evaluates aBlock one time per each element passing the element as arguments"
	<primitive: 122>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[anySatisfy: discriminator
<primitive: 125>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[detect: discrimininator ifNone: aBlock
	"Answer the first element that answer true in the <discriminator> Block"

	<primitive: 121>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[keysAndValuesDo: aBlock

	<primitive: 129>]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>OrderedCollection</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Interval</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Collection</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses>DictionaryArrayOrderedCollectionFreeCollectionFreeCollection</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Array</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[with: firstObject with: secondObject
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[with: firstObject
	<primitive: 102>]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Dictionary</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>OrderedCollection</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[with: firstObject with: secondObject
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[with: firstObject
	<primitive: 102>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits></Traits>
		</Package>
		<Package>
			<VMPackageNamed>External Files</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>ExternalFile</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isOpen
	"Answer whether or not the receiver is open"
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[free
	"Close the receiver and free all its external resource"
	<primitive: 602>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[save
	"Save the file to hard disk"
	<primitive: 602>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[open
	"Open the receiver - connect it with external resources"
	<primitive: 602>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[extension
	"Answer the extension of the receiver"
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[close
	"Close the receiver and free all its external resource"
	^self free]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[saveAndFree
	"Save and close the receiver"
	self save.
	self free]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>MSOfficeMSText</Subclasses>
					<Traits></Traits>
					<StClass>ExternalFile</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSText</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>MSText</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSPowerPoint</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>MSPowerPoint</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSExcel</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>MSExcel</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSOffice</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[showApplication
	"Show the external application that holds the receiver"
	<primitive: 602>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>MSWordMSExcelMSPowerPoint</Subclasses>
					<Traits></Traits>
					<StClass>nil</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSWord</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>MSWord</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>ExternalFile</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[delete: pathFile

	^self delete: pathFile onError: nil
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[rename: oldFileNameString to: newFileNameString
	"Rename the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"

	^self rename: oldFileNameString to: newFileNameString onError: nil
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copy: oldFileNameString to: newFileNameString 
	"Copy the <oldFileNameString> to <newFileNameString>.
	If anError arise the answer anError"

	^self 
		copy: oldFileNameString
		to: newFileNameString
		onError: []]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[exists: fileName onError: exceptionBlock
	<primitive: 603>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[exists: fileName
	^self exists: fileName onError: []]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[temporaryFilename

	<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[tempPath
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeDirectory: path onError: exceptionBlock

	<primitive: 608>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[applicationDirectory
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copy: oldFileNameString to: newFileNameString onError: exceptionBlock
	"Copy the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"
	<primitive: 604>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createDirectory: path onError: exceptionBlock
	<primitive: 607>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createDirectory: path
	^self createDirectory: path onError: nil
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[delete: pathFile onError: exceptionBlock
	<primitive: 605>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[create: pathFile
	"Create a new file in the path file <pathFile>"
	<primitive: 601>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[open: pathFile
	"Open an existing file in <pathFile>"
	<primitive: 601>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[rename: oldFileNameString to: newFileNameString onError: exceptionBlock
	"Rename the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"

	<primitive: 606>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[workingDirectory
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeDirectory: path
	^self removeDirectory: path onError: nil]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSText</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSPowerPoint</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSExcel</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSOffice</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSWord</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits></Traits>
		</Package>
		<Package>
			<VMPackageNamed>Views</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>View</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>View</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>View</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits></Traits>
		</Package>
		<Package>
			<VMPackageNamed>Values</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>String</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isEmpty
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asLowercase
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reverse
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notEmpty
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trimNulls
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[, aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[last: index
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subStrings: aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[findString: aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trimBlanks
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[capitalized
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printString

	^self]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[first: index
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[match: aString

	<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asUppercase
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 
^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aString
	<primitive: 101>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>String</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Date</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[<= aDate
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aDate
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asDays

<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aDate
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[addDays: aDate
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hash

	^self asDays]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subtractDays: aDate
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aDate
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aDate
	<primitive: 101>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Date</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>TimeStamp</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[printShortFormat
		<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[date
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aTimeStamp
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[time
<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aTimeStamp
	<primitive: 101>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>TimeStamp</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Number</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[negated
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sin
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sum: aNumber
^self + aNumber]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[** aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isSmallerThan: aNumber
^self < aNumber]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[substract: aNumber

^self - aNumber]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[multiplyBy: aNumber
^self * aNumber]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[divideBy: aNumber

^self / aNumber]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sqrt
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asFloat
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[abs
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[+ aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[- aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[truncated
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[rounded
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[* aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[/ aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[// aNumber
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBiggerOrEqualThan: aNumber

^self >= aNumber]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aNumber

^self = aNumber]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isSmallerOrEqualThan: aNumber
	^self <= aNumber]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[to: num
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[log
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBiggerThan: aNumber

^self > aNumber]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Number</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Blob</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>nil</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Time</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[hash

	^self milliseconds
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aTime
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aTime
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[addTime: aTime
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aTime
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aTime
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hours
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aTime
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subtractTime: aTime
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asSeconds
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[milliseconds
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[minutes
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Time</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Time</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Date</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[today

^self newInstance]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>TimeStamp</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Number</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Blob</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>String</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits></Traits>
		</Package>
		<Package>
			<VMPackageNamed>VM Core</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Error</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[messageText: signalerText

<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[messageText
	<primitive: 101>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>ExceptionWarning</Subclasses>
					<Traits></Traits>
					<StClass>Error</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>UndefinedObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[notNil 

^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= anObject

^self == anObject]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asBlock

	^[self]]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil 

^true]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>UndefinedObject</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMMetaclass</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>VMMetaclass</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Block</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[valueWithArguments: anArray
	"Evaluate all messages contained in this <Block of code> passing <anArray> as the Block argumentS"

	<primitive: 204>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileTrue
	<primitive: 206>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileFalse: aBlock
	"The receiver evaluates it self and then evaluates <aBlock>.
	This process is repeated over and over again.
	The process is halted when the receiver last message answer <false> "

	<primitive: 207>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[on: anException do: aBlock

	<primitive: 209>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileTrue: aBlock
	"The receiver evaluates it self and then evaluates <aBlock>.
	This process is repeated over and over again.
	The process is halted when the receiver last message answer <true> "
	<primitive: 205>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value: arg1 value: arg2

	^self valueWithArguments: (Array with: arg1 with: arg2) ]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value
"Evaluate all messages contained in this <Block of code> "
	<primitive: 202>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value: anObject
"Evaluate all messages contained in this <Block of code> passing <anObject> as the Block argument"
	<primitive: 203>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileFalse
	"The receiver (the Block) evaluate it self while the last messages answer <false>"
	<primitive: 208>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>UMLBlockClosureNode</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Object</VMClassNamed>
					<SuperclassName>UndefinedObject</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[reStoreSession

	^self]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printObjectName
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"

	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[destroy

	<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeFromSetupObjects
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method removes the receiver object from the Setup Objects (or ParametricObjects) Cache."

	<primitive: 404>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[externalOpen: pathFile
	<primitive: 139>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sendMailTo: receiver from: sender password: password smtpserver: smtpserver subject: subject textBody: text
	"The UML object sends a mail to <receiver> from the email address <sender> with the sibject <subject> and text body <text>.
	To avoid spam the password and the SMTPServer must be included"

	<primitive: 630>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToIterateOver: anUMLClass ifNone: aBlock
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 306>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[className
	"Answer the class of the receiver object"

	^self class name]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDoubleDirectRelationWith: anObject 
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>.
	3. Repeat the processs for the receiver."

	self setDirectRelationWith: anObject.
	anObject setDirectRelationWith: self]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hashString

	^self hash printObjectName]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent withArguments: arguments
	<primitive: 522>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[halt
	"The receiver halts the current execution and Open an UML Step by Step Real Time Simulator Assistant"
	<primitive: 500>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isDomainObject
	^self isBasic not and: [self isCollection not]]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printUMLFormat
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[vmPerform: aSelector
	"The receiver perform the UML implementation named <aSelector> with NO arguments"

	^self vmPerform: aSelector withArguments: Array newInstance]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isCollection 

	^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= anObject
	"Answer whether or not the receiver and <anObject> are equal"

	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[~= anObject
	"Answer whether or not the receiver and <anObject> are not the same object"

	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[storeAsSetupObject
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the Setup Objects (or ParametricObjects) Cache."
	<primitive: 403>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[updateInstance

	<primitive: 106>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDirectRelationWith: anObject
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>"
	<primitive: 305>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToOperateWith: anObject
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"
	<primitive: 302>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canUnderstand: aSymbol 
	"Answer whether the receiver can directly understand the message <aSymbol>"
	<primitive: 800>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[== anObject
	"Answer whether or not the receiver and <anObject> are the same object"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[initialize
	"The receiver initialize it''s <instances variables>"

	^self]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[class
	"Answer the class of the receiver object"

	<primitive: 810>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[session
	^self]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent
	<primitive: 520>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToOperateWith: anObject ifNone: aBlock
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 307>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canAnyUnderstand: aSymbol 
	"Answer whether the receiver or superclasses can understand the message <aSymbol>"
	<primitive: 801>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[deepDestroy
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subscribeTo: stringEvent eventHandler: stringEventHandler publisher: publisherObject eventArguments: eventArguments
	<primitive: 523>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sendMailTo: receiver from: sender smtpserver: smtpserver subject: subject textBody: text
	"The UML object sends a mail to <receiver> from the email address <sender> with the sibject <subject> and text body <text>."

	<primitive: 631>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil
	"Answer whether the receiver is <nil> or not"
	^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic

	^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notNil
"Answer whether the receiver is not <nil> "
	^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeAllEventsTriggered
	"Remove all events triggers by the receiver"

	<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subscribeTo: stringEvent eventHandler: stringEventHandler publisher: publisherObject
	<primitive: 521>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[vmPerform: aSelector withArguments: anArray
	"The receiver performs the UML implementation named <aSelector> with arguments <anArray>"

	<primitive: 201>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToIterateOver: anUMLClass
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 301>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setVariableNamed: aString with: anObject
	"The receiver object set the variable named <aString> with <anObject>"
	<primitive: 304>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isIdenticalTo: anObject
	"Answer whether or not the receiver is the SAME object as <anObject>"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[eventsNames
	<primitive: 530>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[~~ anObject
	"Answer whether or not the receiver and <anObject> are not the same object"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDirectRelationWith: anObject ifNone: aBlock
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>"

	<primitive: 308>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[storeAsGlobalObject
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the first cache."

	<primitive: 401>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getUniqueID
	"The receiver answer aString which is an UNIQUE id in the context of UML Almighty"

	<primitive:  640>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent with: anObject
	<primitive: 524>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[yourself
	"Answer the receiver"
	^self]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[variableNamed: aString
	"Answer the variable named <aString>"
	<primitive: 303>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent with: arg1 with: arg2 
	<primitive: 526>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asEditableObject
	^EditableObject for: self]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeFromGlobalObjects
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method removes the receiver object from the first cache."

	<primitive: 402>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hash
	
	<primitive: 101>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>ExternalFileViewVMClassBehaviorWebElementUndefinedObjectDateStringMessageBoxBooleanEditableObjectCollectionBlockParsedMethodTimeStampNumberTimeTreeModelWebApplicationBlobErrorGrupoRespuestaSolicitudDefinicionTransicionDefinicionProcesoUMLClassEstadoCanalIngresoTemaProcesoPersonaJuiridicaSolicitudPoliticaPermisosPersonaOrganismoSoporteEntregaRepresentacionDocumentTipoRespuestaTransicionOperacionInformeEstadoSolicitudRol</Subclasses>
					<Traits></Traits>
					<StClass>Object</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>False</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[not 

^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: falseBlock ifTrue: trueBlock
	^falseBlock value]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[or: aBlock
	^aBlock value]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: aBlock
	^aBlock value]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[and: aBlock
	"Answer wheter or not the receiver and the evaluation of <aBlock> answer both <true>"
	^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifTrue: trueBlock ifFalse: falseBlock
	^falseBlock value]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifTrue: aBlock
	^nil]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>False</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Warning</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Warning</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Exception</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Exception</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>ParsedMethod</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[name
	"Answer the name (#methodName) of the receiver"
	<primitive: 821>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfSenders
	"Answer the number of UML Methods senders of the receiver "

	^self senders size]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sentMessages
	"Answer <anOrderedCollection> with the messages sent by the receiver "

	<primitive: 824>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[methodClass
	"Answer the UML Class that holds the receiver in its Method Catalog"
	<primitive: 822>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[senders
	"Answer <anOrderedCollection> with the UML Methods senders of the receiver "

	<primitive: 827>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[referencedClasses
	"Answer <anOrderedCollection> with the UML Classes referenced by the receiver"
	<primitive: 826>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[temporaries
	"Answer <anOrderedCollection> with the temporaries of the receiver "

	<primitive: 825>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfReferencedClasses
	"Answer the number of UML Classes referenced by the receiver"
	^self referencedClasses size]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfArguments
	"Answer the number of arguments of the receiver"
	^self arguments size]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfMessages
	"Answer the number of messages sent by the receiver"
	^self sentMessages size]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfTemporaries
	"Answer the number of temporaries of the receiver"
	^self temporaries size]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[arguments
	"Answer <anOrderedCollection> with the <arguments> of the receiver"
	<primitive: 823>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>ParsedMethod</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMClassBehavior</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[getAllMethodsNamesButObject
	<primitive: 808>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getAllMethodsNames
	<primitive: 809>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getAllAttributesNames
	<primitive: 309>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getMethodsNames
	<primitive: 807>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>VMClassVMMetaclassVMInstance</Subclasses>
					<Traits></Traits>
					<StClass>VMClassBehavior</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MessageBox</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>MessageBox</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMInstance</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>VMInstance</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>TreeModel</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[select: aBlock
	^self asOrderedCollection select: aBlock]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[remove: anObject
	<primitive: 102>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock

^self asOrderedCollection do: aBlock]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEmpty
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[parentOf: anObject
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reject: aBlock
	^self asOrderedCollection reject: aBlock]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[childrenOf: anObject
	<primitive: 102>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[add: child asChildOf: parent

<primitive: 102>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	<primitive: 102>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>TreeModel</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMClass</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>VMClass</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Boolean</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isBasic 
^true]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>FalseTrue</Subclasses>
					<Traits></Traits>
					<StClass>Boolean</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>True</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[not 

^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: falseBlock ifTrue: trueBlock
	^trueBlock value]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[or: aBlock
	^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: aBlock
	^nil]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[and: aBlock
	^aBlock value]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifTrue: trueBlock ifFalse: falseBlock
	^trueBlock value]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifTrue: aBlock
	^aBlock value]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>True</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>True</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[new

	^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[newInstance
	^true]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	^true]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>UndefinedObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[newInstance 

^nil]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>VMMetaclass</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Block</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Object</VMClassNamed>
					<SuperclassName>UndefinedObject</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[getGlobalObjectSatisfying: aBlock
	"Answer a collection of objects in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."
	<primitive: 406>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[startTransErrorLog
	"The Virtual Machine start to register all messages that failed to complete "

	<primitive: 722>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil
	"Answer whether the receiver class is <nil>"
	^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[basicNew
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allSetupObjects
	"Answer <anOrderedCollection> with all [Setup Objects] of the receiver class"

	^self getParametricObjectSatisfying: [:each | each notNil]]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getLastParametricObjectSatisfying: aBlock ifNone: blockException
	"Answer the last  object in the Setup Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."
	| objects |
	objects := self getParametricObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[externalOpen: pathFile

	<primitive: 139>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[stopTransErrorLog
	"The Virtual Machine stop to register all messages that failed to complete "
	<primitive: 723>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstGlobalObjectSatisfying: aBlock ifNone: blockException
	"Answer the first object in the <Global Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"
	| objects |
	objects := self getGlobalObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getLastGlobalObjectSatisfying: aBlock ifNone: blockException in: aBBSession
	"Answer the last object in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."

	| objects |
	objects := self getGlobalObjectSatisfying: aBlock in: aBBSession.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[newInstance
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstGlobalObjectSatisfying: aBlock ifNone: blockException in: aBBSession
	"Answer the first object in the <Global Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"

	| objects |
	objects := self getGlobalObjectSatisfying: aBlock in: aBBSession.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[startTransLog
	"The Virtual Machine start to register all processed messages "
	<primitive: 720>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getLastGlobalObjectSatisfying: aBlock ifNone: blockException
	"Answer the last object in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."
	| objects |
	objects := self getGlobalObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allGlobalObjects
	"Answer <anOrderedCollection> with all [Global Objects] of the receiver class"

	^self getGlobalObjectSatisfying: [:each | each notNil]]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[cleanTransLog
	<primitive: 724>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstParametricObjectSatisfying: aBlock ifNone: blockException
	"Answer the first object in the <Setup Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"
	| objects |
	objects := self getParametricObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allInstances
	"Answer all instnaces of the receiver class"
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[stopTransLog
	"The Virtual Machine stop to register all processed messages "
	<primitive: 721>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[destroyAllInstances

	^self allInstances do: [:each | each deepDestroy]]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[class
	"Answer the class of the receiver object"
	<primitive: 811>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[yourself

	^self]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getParametricObjectSatisfying: aBlock
	"Answer a collection of objects in the Setup Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."
	<primitive: 405>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[new
	"Creates a new instance of the receiver class"
	| object |

	object := self basicNew.
	object initialize.
	^object

	
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canAnyUnderstand: aSymbol 
	"Answer whether the receiver or superclasses can understand the message <aSymbol>"

	<primitive: 803>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canUnderstand: aSymbol 
	"Answer whether the receiver can directly understand the message <aSymbol>"
	<primitive: 802>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getGlobalObjectSatisfying: aBlock in: aBBSession 
	"Answer a collection of objects in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."

	<primitive: 407>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[name
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"

	<primitive: 101>]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>ExternalFileViewVMClassBehaviorWebElementUndefinedObjectDateStringMessageBoxBooleanEditableObjectCollectionBlockParsedMethodTimeStampNumberTimeTreeModelWebApplicationBlobErrorGrupoRespuestaSolicitudDefinicionTransicionDefinicionProcesoUMLClassEstadoCanalIngresoTemaProcesoPersonaJuiridicaSolicitudPoliticaPermisosPersonaOrganismoSoporteEntregaRepresentacionDocumentTipoRespuestaTransicionOperacionInformeEstadoSolicitudRol</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>False</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[new
	^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[newInstance

	^false]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	^false]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Warning</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Exception</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>ParsedMethod</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[for: methodName in: anUMLClass
	"Answer a new instance of the receiver"
	<primitive: 820>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>VMClassBehavior</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses>VMClassVMMetaclassVMInstance</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MessageBox</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[confirm: aString
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notify: aString
<primitive: 101>]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notify: aString caption: caption
	<primitive: 101>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[confirm: aString caption: caption
	<primitive: 101>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>VMInstance</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>TreeModel</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[withRoots: anOrderedCollection
	<primitive: 101>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>VMClass</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Boolean</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses>FalseTrue</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Error</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[message: aString
	^super new messageText: aString]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses>ExceptionWarning</Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits></Traits>
		</Package>
		<Package>
			<VMPackageNamed>Web Server</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>WebElement</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[viewMain
	| webPage |

	"self addAllJavaScript."
	self getUserFromUMLApplication. "map the web user with the UML User and store in the Web Application"
	webPage := WebElement new.	
	webPage add: self viewTabComponent.

	self createObjectHeaderIn: webPage.

	self createSimpleWebControlsIn: webPage.

	self addCommandButtonsTo: webPage.
	webPage addBreak;addBreak.
	self addCommandButtonsWithCurrentUserTo: webPage.
	webPage addBreak;addBreak.
	self addCommandButtonsWithArgumentsTo: webPage.
	webPage addBreak;addBreak.
	self addCommandButtonsWithCollectionTo:  webPage.
	webPage addBreak;addBreak.
	self addCommandButtonsWithCollectionWithUserTo: webPage.

	self style pageFrameWith: webPage title: self observee className observee: self observee]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>WebElement</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>EditableObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[editableObject

	<primitive: 101>]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>UMLEditWebObject</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>WebApplication</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>WebApplication</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>WebElement</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>EditableObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[for: anObject
	<primitive: 700>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>WebApplication</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isDeployment
	"Answer whether the Web Application is in DEPLOYMENT mode or not"

	<primitive: 712>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[beDevelopment
	"Set the Web Application to DEVELOPMENT mode"

	<primitive: 711>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isDevelopment
	"Set the Web Application to DEVELOPMENT mode"

	<primitive: 713>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[beDeployment
	"Set the Web Application to DEPLOYMENT mode"

	<primitive: 710>
	]]></Source>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits></Traits>
		</Package>
	</Packages>
</VM>'! !
!UMLVirtualMachineBootstrap class categoriesFor: #new!public! !
!UMLVirtualMachineBootstrap class categoriesFor: #virtualMachineV1Code!public! !

