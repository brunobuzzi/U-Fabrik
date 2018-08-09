"Filed out from Dolphin Smalltalk 7"!

Object subclass: #UMLVirtualMachineBootstrap
	instanceVariableNames: 'xmlDocument traits packages superclassesDictionary virtualMachine'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachineBootstrap guid: (GUID fromString: '{8bf72792-0c64-4cf9-b823-7040599c4248}')!
UMLVirtualMachineBootstrap comment: 'The code of the U-Fabrik Virtual Machine is at: 
UMLVirtualMachineBootstrap class>>virtualMachineV1Code'!
!UMLVirtualMachineBootstrap categoriesForClass!Unclassified! !
!UMLVirtualMachineBootstrap methodsFor!

createVirtualMachineFrom: xmlSource
	"The receiver create <anUMLVirtualMachine> from the source code <xmlSource>.
	This method is the entry point to create a new U-Fabrik Virtual Machine"

	xmlDocument := IXMLDOMDocument new.
	xmlDocument loadText: xmlSource.

	traits := self generateVirtualMachineTraits. "generate initial Traits of the VM contained in <xmlSource>"

	self generateVirtualMachinePackages. "generate initial VM packages contained in <xmlSource>"

	self setSuperclassesAndSubclasses. "link classes with it's subclasses - before this all classes were generated without hierarchy"
	
	self setTraitsToPackages. "add default Traits to VM Packages"
	self setTraitsToClasses. "add default Traits to VM Classes"
	self setSmalltalkClasses. "all U-Fabrik classes has been created but not related to Smalltalk underline classes"

	^self generateVirtualMachine!

createVirtualMachineFromVersion1
	"The receiver generate a new <UMLVirtualMachine> using the code of Version 1 VM.
	This method is the entry point to create a new U-Fabrik Virtual Machine"

	^self createVirtualMachineFrom: self class virtualMachineV1Code!

createVirtualMachineFromVersion1_1
	"The receiver generate a new <UMLVirtualMachine> using the code of Version 1 VM.
	This method is the entry point to create a new U-Fabrik Virtual Machine"

	^self createVirtualMachineFrom: self class virtualMachineV1_1Code!

createVirtualMachineFromVersion1_2
	"The receiver generate a new <UMLVirtualMachine> using the code of Version 1 VM.
	This method is the entry point to create a new U-Fabrik Virtual Machine"

	^self createVirtualMachineFrom: self class virtualMachineV1_2Code!

fileInFromXml: pathFile
	"The receiver create a new Virtual Machine contained in XML file <pathFile>"
	| stream xmlSource |

	superclassesDictionary := Dictionary new.
	stream := FileStream read: pathFile text: true.
	xmlSource := stream contents.
	stream close.

	^self createVirtualMachineFrom: xmlSource!

fileOutAsXmlTo: pathFile
	| stream |

	stream := FileStream write: pathFile text: true.
	UMLVirtualMachine default fileOutAsXmlTo: stream.
	stream flush; close.
	
	!

generateVirtualMachine
	"The receiver generate the <UMLVirtualMachine> by:
	1- Adding generated U-Fabrik classes to the Virtual Machine.
	2- Adding generated U-Fabrik packages to the Virtual Machine.
	3- Setting default primitive objects of the Virtual Machine (true, false, nil)."

	self getAllClasses do: [:each | virtualMachine addUMLMetaclass: each]. "add generate classes to the VM"

	virtualMachine packages: packages; "add generated packages to the VM"
		transLog: UMLVMTransLog new; "set the current trans log to the VM"
		isInstanceBehaviorAvailable: true. "set if <UMLInstance>s can have behavior"

	self setPrimitiveObjects. "set primitive objects of the VM (true, false, nil)"

	^virtualMachine
	!

generateVirtualMachineAndSetAsDefault
	"The receiver generate a new Virtual Machine and set it as the default Virtual Machine in U-Fabrik environment"

	self generateVirtualMachine.

	UMLVirtualMachine setDefault: virtualMachine.!

generateVirtualMachinePackages
	"The receiver generate the Virtual Machine default Packages and also create all classes contained in each package. The code of the VM is in [UMLVirtualMachineBootstrap class>>virtualMachineV1Code].
	The code of VM packages is in Xpath 'VM/Packages'.
	Default Packages: VM Core, Collections, Values, External Files, Views and Web Server."
	| packagesNodes umlMetaclasses |

	packages := OrderedCollection new.
	umlMetaclasses := Dictionary new.
	packagesNodes := (xmlDocument selectNodes: 'VM/Packages') asArray last childNodes.

	 packagesNodes  do: [:eachPackage | | packName classesNodes metaclassesNodes package |
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
				source := ((each selectSingleNode: 'Source') innerXML allButFirst: 9) allButLast: 3. "to remove <!![CDATA[ and ]]>"
				parsedMethod := self umlCompiler parseMethod: source.
				newImplementation := (UMLParsedImplementation newNamed: parsedMethod selector) parsedCode: parsedMethod.
				newImplementation comments: (((each selectSingleNode: 'Comments') innerXML allButFirst: 9) allButLast: 3). "to remove <!![CDATA[ and ]]>"
				umlMetaclass addImplementation: newImplementation.
				(each selectNodes: 'Categories/CategoryName') do: [:catNameNode | 
					umlMetaclass addCategory: (UMLImplementationCategory newNamed: catNameNode innerXML).
					umlMetaclass add: newImplementation toCategoryNamed: catNameNode innerXML.
				].
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
				source := ((each selectSingleNode: 'Source') innerXML allButFirst: 9) allButLast: 3. "to remove <!![CDATA[ and ]]>"
				parsedMethod := self umlCompiler parseMethod: source.
				newImplementation := (UMLParsedImplementation newNamed: parsedMethod selector) parsedCode: parsedMethod.
				newImplementation comments: (((each selectSingleNode: 'Comments') innerXML allButFirst: 9) allButLast: 3). "to remove <!![CDATA[ and ]]>"
				umlClass addImplementation: newImplementation.
				(each selectNodes: 'Categories/CategoryName') do: [:catNameNode | 
					umlClass addCategory: (UMLImplementationCategory newNamed: catNameNode innerXML).
					umlClass add: newImplementation toCategoryNamed: catNameNode innerXML.
				].
			].
		].
		packages add: package .
	].
	^packages!

generateVirtualMachineTraits
	"The receiver generate the Virtual Machine default Traits. The code of the VM is in [UMLVirtualMachineBootstrap class>>virtualMachineV1Code].
	Default Packages: UML Relations Methods and File Manipulation.
	'UML Relations Methods' trait is the most important because add behavior to related objects based on the UML Model"
	| traitNodes |

	traits := Dictionary new.
	traitNodes := (xmlDocument selectNodes: 'VM/Traits') asArray last childNodes.

	 traitNodes  do: [:eachTrait | | traitName implementationsNodes trait requirementNodes |
		traitName := (eachTrait selectSingleNode: 'TraitNamed') innerXML.
		trait := UMLTrait new name: traitName.
		implementationsNodes := (eachTrait selectNodes: 'Implementation') asArray.
		implementationsNodes do: [:impNode | | source implementation parsedSource comments |
			source := ((impNode selectSingleNode: 'Source') innerXML allButFirst: 9) allButLast: 3. "to remove <!![CDATA[ and ]]>"
			comments := ((impNode selectSingleNode: 'Comments') innerXML allButFirst: 9) allButLast: 3. "to remove <!![CDATA[ and ]]>"
			parsedSource := self umlCompiler parseMethod: source.
			implementation := (UMLTraitMethod newNamed: parsedSource selector) parsedCode: parsedSource.
			implementation comments: comments.
			trait addMethod: implementation.
		].
		requirementNodes := (eachTrait selectNodes: 'Requirement') asArray.
		requirementNodes do: [:reqNode | | req |
			req := UMLTraitRequirement new.
			req message: (reqNode selectSingleNode: 'MessageName') innerXML asSymbol;
				comments: (((reqNode selectSingleNode: 'Comments') innerXML allButFirst: 9) allButLast: 3). "to remove <!![CDATA[ and ]]>"
			trait addRequirement: req.
		].
		traits at: trait name put: trait.
	].
	virtualMachine traits: traits.
	^traits!

getAllClasses
	"The receiver answer a collection with all classes contained in all generated VM Packages"
	| allClasses |

	allClasses := OrderedCollection new.

	packages do: [:pack | 
		allClasses addAll: (pack classes collect: [:each | each metaclass] )].

	^allClasses!

getPackageNamed: aString
	"The receiver answer <anUMLVirtualMachinePackage> named <aString>"

	packages do: [:each | (each name = aString) ifTrue: [^each ] ].

	^nil!

getTraitNamed: aString
	"The receiver answer <anUMLTrair> named <aString>"

	traits do: [:each | (each name = aString) ifTrue: [^each ] ].

	^nil!

getUMLClassNamed: aString
	"The receiver answer <anUMLVirtualMachineClass> named <aString>"

	packages do: [:pack | 
		pack classes do: [:each | (each name = aString) ifTrue: [^each ] ] ].

	^nil!

getUMLMetaclassNamed: aString
	"The receiver answer <anUMLVirtualMachineMetaclass> named <aString>"

	packages do: [:pack | 
		pack classes do: [:each | (each name = aString) ifTrue: [^each metaclass] ] ].

	^nil!

initialize

	super initialize.

	superclassesDictionary := Dictionary new.
	virtualMachine := UMLVirtualMachine new.

	virtualMachine packages: packages;
		traits: traits.
!

packages
	^packages!

packages: anObject
	packages := anObject!

setPrimitiveObjects
	"The receiver create and set the three basic obejcts of the Virtual Machine (nil, true and false)"
	| falseObject trueObject nilObject  |

	nilObject := UMLVirtualMachineInstance umlClass: (self getUMLClassNamed: 'UndefinedObject') with: nil. "create <nil> object"

	trueObject := UMLVirtualMachineInstance umlClass: (self getUMLClassNamed: 'True') with: true. "create <true> object"
	falseObject := UMLVirtualMachineInstance umlClass: (self getUMLClassNamed: 'False') with: false. "create <false> object"

	virtualMachine addPrimitiveObject: nilObject named: 'nil'. "add <nil> object to the Virtual Machine"
	virtualMachine addPrimitiveObject: trueObject named: 'true'. "add <true> object to the Virtual Machine"
	virtualMachine addPrimitiveObject: falseObject named: 'false'. "add <false> object to the Virtual Machine"
!

setSmalltalkClasses
	"The receiver set the Smalltalk underline classes of U-Fabrik Virtual Machine classes."

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
	"The receiver set all superclasses of all generated classes. 
	The classes were initially created without its superclass now each superclass is set"
	| nilObject |

	packages do: [:package | 
		package classes do: [:umlClass | | superClassName |
			superClassName := superclassesDictionary at: umlClass name.
			umlClass umlSuperclass: (self getUMLClassNamed: superClassName).
			umlClass metaclass umlSuperclass: (self getUMLMetaclassNamed: superClassName).
		].
	].

	nilObject := self getUMLClassNamed: 'UndefinedObject'.
	nilObject subclasses: OrderedCollection new.
	nilObject metaclass subclasses: OrderedCollection new.
!

setTraitsToClasses
	"The receiver set <UMLTrait>s to corresponding classes.
	'UML Relations Methods' trait - is set to all Collection classes (this create support for [1xN] and [NxN] UML relations)"
	| collectionObject fileObject collectionTrait externalFileTrait |

	collectionObject := self getUMLClassNamed: 'Collection'.
	fileObject := self getUMLClassNamed: 'ExternalFile'.

	collectionTrait := self getTraitNamed: 'UML Relations Methods'. "get the <UMLTrait> that implement behavior to support [NxN] and [Nx1] UML relations"
	externalFileTrait := self getTraitNamed: 'File Manipulation'. "utilities for external file operations"
	collectionObject addTrait: collectionTrait. "set the <UMLTrait> to Collection class"
	fileObject addTrait: externalFileTrait.

	collectionObject subclasses do: [:each | each addTrait: collectionTrait]. "set the <UMLTrait> to all Collection subclasses"
	fileObject subclasses do: [:each | each addTrait: externalFileTrait].	
	(self getUMLClassNamed: 'MSOffice') subclasses do: [:each | each addTrait: externalFileTrait].	!

setTraitsToPackages
	"The receiver set <UMLTrait> to VM packages"
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
	traits := anObject!

umlCompiler

	^UMLCompiler!

virtualMachine
	^virtualMachine!

virtualMachine: anObject
	virtualMachine := anObject! !
!UMLVirtualMachineBootstrap categoriesFor: #createVirtualMachineFrom:!public!vm generation!vm generation api! !
!UMLVirtualMachineBootstrap categoriesFor: #createVirtualMachineFromVersion1!public!vm generation!vm generation api! !
!UMLVirtualMachineBootstrap categoriesFor: #createVirtualMachineFromVersion1_1!public!vm generation!vm generation api! !
!UMLVirtualMachineBootstrap categoriesFor: #createVirtualMachineFromVersion1_2!public!vm generation!vm generation api! !
!UMLVirtualMachineBootstrap categoriesFor: #fileInFromXml:!fileIn/Out!public! !
!UMLVirtualMachineBootstrap categoriesFor: #fileOutAsXmlTo:!fileIn/Out!public! !
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
!UMLVirtualMachineBootstrap categoriesFor: #umlCompiler!public! !
!UMLVirtualMachineBootstrap categoriesFor: #virtualMachine!accessing!private! !
!UMLVirtualMachineBootstrap categoriesFor: #virtualMachine:!accessing!private! !

!UMLVirtualMachineBootstrap class methodsFor!

new

	^super new initialize!

virtualMachineV1_1Code
	"This is the code of the first U-Fabrik Virtual Machine.
	Includes: Basic classes and basic traits"
	^'<VM>
	<Traits>
		<Trait>
			<TraitNamed>File Manipulation</TraitNamed>
			<Implementation>
				<TraitMethodNamed>showApplication</TraitMethodNamed>
				<Source><!![CDATA[showApplication
	^super getFile showApplication]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>openFileIn:</TraitMethodNamed>
				<Source><!![CDATA[openFileIn: pathFile

	^super setFileWith: (super getDocumentClass open: pathFile)]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>fileName</TraitMethodNamed>
				<Source><!![CDATA[fileName

	^self getFile name]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>free</TraitMethodNamed>
				<Source><!![CDATA[free
	^super getFile free]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>createFileIn:</TraitMethodNamed>
				<Source><!![CDATA[createFileIn: pathFile
	| newDocument |
	newDocument := super getDocumentClass create: pathFile.
	super setFileWith: newDocument.
	self save.
	^newDocument]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>save</TraitMethodNamed>
				<Source><!![CDATA[save
	^super getFile save]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>open</TraitMethodNamed>
				<Source><!![CDATA[open
	^super getFile open]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Requirement>
				<MessageName>getFile</MessageName>
				<Comments><!![CDATA[]]></Comments>
			</Requirement>
			<Requirement>
				<MessageName>getDocumentClass</MessageName>
				<Comments><!![CDATA[]]></Comments>
			</Requirement>
			<Requirement>
				<MessageName>setFileWith:</MessageName>
				<Comments><!![CDATA[]]></Comments>
			</Requirement>
		</Trait>
		<Trait>
			<TraitNamed>UML Relations Methods</TraitNamed>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a \b Nx relation\b0  and answer \b whether or not all objects \b0 of the \b collection \b0 satisfy some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
aBank \cf1 all:\cf0  Account \cf1 satisfy:\cf0  [:eachAccount | eachAccount \cf1 balance >\cf0  0].\par
\par
In this case #\cf1 all:satisfy:\cf0  iterate over \b Nx relation\b0  between \b Bank \b0 and \b Account\b0 .\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a\b  Nx relation\b0  answer a \b new collection \b0 with \b elements \b0 that \b satisfy \b0 some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank \cf1\b0 in:\cf0  \b Account \cf1\b0 select:\cf0  [:eachAccount | eachAccount \cf1 balance \cf0 < 0].\par
\par
In this case #\cf1 in:select:\cf0  answer a \b new collection\b0  with the accounts of \b aBank \b0 that \b comply \cf1\b0 balance \cf0 < 0.\par
\par
\par
}
]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>countNumberOf:</TraitMethodNamed>
				<Source><!![CDATA[countNumberOf: anUMLClass 
	| collection |

	collection := super getCollectionToIterateOver: anUMLClass
				ifNone: 
					[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection size]]></Source>
				<Comments><!![CDATA[]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;\red0\green0\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method is used to remove a \b link \b0 between\b  2 objects\b0  that it''s classes has an \b N mulitiplicity relation\b0 .\par
The \b receiver object \b0 (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf2\b Remove \cf0 anObject \b0 from \b collection \b0 obtained in \b 1\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method is used to\b  link 2 objects \b0 that it''s classes has an \b N mulitiplicity relation\b0 .\par
The \b receiver object \b0 (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf1\b Add \cf0 anObject \b0 to the \b collection \b0 obtained in \b 1\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a\b  Nx relation\b0  answer the\b  first element\b0  of the \b collection \b0 that \b satisfy \b0 some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank\cf1  \b0 in:\cf0  \b Account \cf1\b0 detect: \cf0 [:eachAccount | eachAccount\cf1  balance <\cf0  0].\par
\par
In this case #\cf1 in:detect:\cf0  answer the first account in \b aBank \b0 with balance < 0.\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method is used to\b  link 2 objects\b0  that it''s \b classes \b0 has an \b NxN mulitiplicity relation\b0 .\par
The \b receiver object\b0  (self) has a \b collection \b0 of \b N\b0  objects of the same type of \b anObject\b0 .\par
And \b anObject \b0 has \b N\b0  objects of the same type of \b receiver object\b0  (self). (\b NxN relation\b0 )\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 answer \b anError\b0 .\par
2. \cf1\b Add \cf0 anObject \b0 to the \b collection \b0 obtained in \b 1\b0 .\par
3. \cf1\b Add \cf0\b0 the \b receiver object \b0 (self) to \b anObject\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method is used remove a \b link \b0 between\b  2 objects \b0 that it''s classes has an \b 1xN mulitiplicity relation\b0 .\par
The\b  receiver object \b0 (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
And \b anObject \b0 has \b 1 link\b0  to the\b  receiver object\b0  (self). (\b 1xN relation\b0 )\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf1\b Remove \cf0 anObject \b0 from \b collection \b0 obtained in \b 1\b0 . \par
}
]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>any:satisfy:</TraitMethodNamed>
				<Source><!![CDATA[any: anUMLClass satisfy: aBlock 
	| collection |

	collection := super getCollectionToIterateOver: anUMLClass
				ifNone: 
					[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection anySatisfy: aBlock]]></Source>
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a \b Nx relation\b0  and answer \b whether or any objects \b0 of the \b collection \b0 satisfy some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
aBank \cf1 any:\cf0  Account \cf1 satisfy:\cf0  [:eachAccount | eachAccount \cf1 balance >\cf0  0].\par
\par
\pard In this case #\cf1 any:satisfy:\cf0  iterate over \b Nx relation\b0  between \b Bank \b0 and \b Account\b0 .\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a \b Nx relation\b0  and answer \b another collection\b0  that \b collect \b0 some aspect of the \b elements\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank \cf1\b0 in:\cf0  \b Account \cf1\b0 collect: \cf0 [:eachAccount | eachAccount \cf1 number\cf0 ].\par
\par
In this case #\cf1 in:collect:\cf0  answer a new collection with all numbers of the accounts in \b aBank\b0 .\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method is used to \b link 2 objects\b0  that it''s \b classes \b0 has an \b 1xN mulitiplicity relation\b0 .\par
The \b receiver object\b0  (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
And \b anObject \b0 has \b 1 link\b0  to the\b  receiver object\b0  (self). (\cf1\b 1xN relation\cf0\b0 )\par
\par
1. \cf1\b Get \cf0\b0 the collection to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf1\b Set \cf0\b0 the \b 1x relation\b0  of \b anObject \b0 with the \b receiver\b0 .\par
3. \cf1\b Add \cf0 anObject \b0 to the \b collection \b0 obtained in \b 1\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 Answer if \b anObject \b0 is contained by the \b receiver object\b0  in any of it''s \b Nx mulitiplicity relation\b0 .\par
The \b receiver object\b0  (self) has a collection of \b N\b0  objects of the same type of \b anObject\b0 .\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf1\b Test \cf0\b0 the \b collection \b0 to find out if \cf2 includes \cf0\b anObject\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method is used to\b  remove \b0 a \b link \b0 between \b 2 objects\b0  that it''s classes has an \b NxN mulitiplicity relation\b0 .\par
\par
The \b receiver object\b0  (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
And \b anObject \b0 has \b N \b0 objects of the same type of \b receiver object \b0 (self). (\b NxN relation\b0 )\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 answer \b anError\b0 .\par
2. \cf1\b Remove \cf0 anObject \b0 from \b collection \b0 obtained in \b 1\b0 .\par
3. \cf1\b Remove \cf0\b0 the \b receiver object \b0 (self) from \b anObject\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a \b Nx relation\b0  to \b perform \b0 some \b operation \b0 in each \b element\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank \cf1\b0 in:\cf0  \b Account \cf1\b0 do:\cf0  [:eachAccount | eachAccount \cf1 checkTransactionsBalance\cf0 ].\par
\par
In this case #\cf1 in:do: \cf0 apply \cf1 checkTransactionsBalance \cf0 method to all accounts in \b aBank\b0 .\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a\b  Nx relation\b0  answer a \b new collection \b0 with \b elements \b0 that \b reject \b0 some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank \cf1\b0 in:\cf0  \b Account \cf1\b0 reject:\cf0  [:eachAccount | eachAccount \cf1 balance \cf0 < 0].\par
\par
In this case #\cf1 in:reject:\cf0  answer a \b new collection\b0  with the accounts of \b aBank \b0 that \b reject \cf1\b0 balance \cf0 < 0.\par
}
]]></Comments>
			</Implementation>
			<Requirement>
				<MessageName>getCollectionToOperateWith:</MessageName>
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method \cf1\b get\cf0\b0  the \b collection \b0 where the \b Trait \b0 operate. It''s obtained using the \b UMLClass \b0 that is sent as argument to the method.\par
}
]]></Comments>
			</Requirement>
			<Requirement>
				<MessageName>getCollectionToIterateOver:</MessageName>
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method \cf1\b get\cf0\b0  the \b collection \b0 where the \b Trait \b0 operate. It''s obtained using the \b UMLClass \b0 of the \b anUMLObject \b0 that is sent as argument to the method.\par
}
]]></Comments>
			</Requirement>
			<Requirement>
				<MessageName>setDirectRelationWith:</MessageName>
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method \cf1\b set \cf0\b0 with \b anObject \b0 the\b  instance variable \b0 representing an \b 1x Multiplicity Relationship\b0  with the class of \b anObject\b0 .\par
}
]]></Comments>
			</Requirement>
		</Trait>
	</Traits>
	<Packages>
		<Package>
			<VMPackageNamed>Collections</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Dictionary</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeKey: key
	"Removes <key> from key elements of the receiver Dictionary"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[keys
	"Answer anOrderedCollection with all key elements of the receiver Dictionary"

	<primitive: 128>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: key put: anObject
	"At key element <key> put (store) <anObject> in the receiver Dictionary"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection

	<primitive: 102>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: key
	"Answer the element at <key> in the receiver Dictionary"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includesKey: key
	"Answer whether or not the receiver Dictionary has key element equal to <key>"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>Dictionary</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Array</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[resize: newSize
	"Resize the receiver Array to <newSize>"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index put: anObject
	"At position <index> put <anObject> in the receiver Array"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
	"Answer the element at the position <index> in the receiver Array"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock 
	"Evaluates aBlock one time per each element passing the element as arguments"

	<primitive: 122>]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>Array</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Collection</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isCollection
	"Answer whether the receiver is a collection or not"
	^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[difference: comperand
	"Answer a <collection> like the receiver containing the Set theroetic 
	difference between the receiver and the <collection>, comperand. 
	i.e. Answer the set of all objects that are elements of the receiver 
	but not the argument."

	^self reject: [:e | comperand includes: e]]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[_difference: comperand
	"Answer a <collection> like the receiver containing the Set theroetic 
	difference between the receiver and the <collection>, comperand. 
	i.e. Answer the set of all objects that are elements of the receiver 
	but not the argument. 
	This method is optimized inside the UML Virtual Machine"

	<primitive: 103>]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>DictionaryArrayOrderedCollectionInterval</Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>Collection</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>OrderedCollection</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[select: discriminator
	"Answer a new collection  with all elements that answer <true> in the <discriminator> Block"

	<primitive: 123>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[anySatisfy: discriminator
<primitive: 125>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[first
	"Answer the first element of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[, anOrderedCollection
	"Answer a new collection with the receiver elements plus <anOrderedCollection> elements"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[second
	"Answer the second element of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[third
	"Answer the third element of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[detect: discrimininator ifNone: aBlock
	"Answer the first element that answer true in the <discriminator> Block"

	<primitive: 121>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[remove: anObject
	<primitive: 152>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[last
	"Answer the last element of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allSatisfy: discriminator
	"Answer whether or not all elements of the receiver answer true to <discriminator> block"
	<primitive: 124>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[keysAndValuesDo: aBlock

	<primitive: 129>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock
"Evaluates aBlock one time per each element passing the element as arguments"
	<primitive: 122>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEmpty
	"Answer whether or not the receiver is empty"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notEmpty
	"Answer whether or not the receiver is NOT empty"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asArray
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[detect: discrimininator
	"Answer the first element that answer true in the <discriminator> Block"
	<primitive: 121>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[addAll: anOrderedCollection
	"Add all elements of <anOrderedCollection> to the receiver Collection"
	^anOrderedCollection do: [:each | self add: each]]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asSortedCollection: sortBlock
	"Answer aSortedCollection using the sort block <sortBlock>"
	<primitive: 127>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copyWithoutDuplicates
	"Answer a new collection wiuthout duplicated elements"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[identityIncludes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"

	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[add: anObject
	"Add <anObject> to the receiver"
	<primitive: 151>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	"Answer the size of the receiver"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[collect: aBlock

<primitive: 120>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reject: discriminatorBlock
	"Answer a new collection  with all elements that answer <false> in the <discriminator> Block"


	<primitive: 126>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>OrderedCollection</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Interval</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[step
	"Answer the receiver step"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includes: index
"Answer whether or not the receiver Interval includes <index>"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[start
	"Answer the initial value of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[stop
	"Answer the receiver stop"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock

<primitive: 130 >]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
"Answer the element at the position <index> in the receiver Array"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	"Answer the size of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>Interval</StClass>
				</Class>
			</Classes>
			<Metaclasses>
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
					<VMClassNamed>Array</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[with: firstObject with: secondObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[with: firstObject
	<primitive: 102>]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Collection</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses>DictionaryArrayOrderedCollectionInterval</Subclasses>
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
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[with: firstObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Interval</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits>
				<TraitName>UML Relations Methods</TraitName>
			</Traits>
		</Package>
		<Package>
			<VMPackageNamed>External Files</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSWord</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSWord</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSPowerPoint</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSPowerPoint</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSExcel</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
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
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>MSWordMSPowerPointMSExcel</Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSOffice</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSText</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSText</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>ExternalFile</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[open
	"Open the receiver - connect it with external resources"
	<primitive: 602>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[close
	"Close the receiver and free all its external resource"
	^self free]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isOpen
	"Answer whether or not the receiver is open"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[saveAndFree
	"Save and close the receiver"
	self save.
	self free]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[save
	"Save the file to hard disk"
	<primitive: 602>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[free
	"Close the receiver and free all its external resource"
	<primitive: 602>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[extension
	"Answer the extension of the receiver"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>MSOfficeMSText</Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>ExternalFile</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSWord</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
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
					<Subclasses>MSWordMSPowerPointMSExcel</Subclasses>
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
					<VMClassNamed>ExternalFile</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[temporaryFilename

	<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeDirectory: path onError: exceptionBlock

	<primitive: 608>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createDirectory: path onError: exceptionBlock
	<primitive: 607>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[rename: oldFileNameString to: newFileNameString
	"Rename the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"

	^self rename: oldFileNameString to: newFileNameString onError: nil
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[delete: pathFile onError: exceptionBlock
	<primitive: 605>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copy: oldFileNameString to: newFileNameString 
	"Copy the <oldFileNameString> to <newFileNameString>.
	If anError arise the answer anError"

	^self 
		copy: oldFileNameString
		to: newFileNameString
		onError: []]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[exists: fileName onError: exceptionBlock
	<primitive: 603>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[workingDirectory
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[open: pathFile
	"Open an existing file in <pathFile>"
	<primitive: 601>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[delete: pathFile

	^self delete: pathFile onError: nil
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeDirectory: path
	^self removeDirectory: path onError: nil]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createDirectory: path
	^self createDirectory: path onError: nil
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[exists: fileName
	^self exists: fileName onError: []]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[tempPath
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[create: pathFile
	"Create a new file in the path file <pathFile>"
	<primitive: 601>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[rename: oldFileNameString to: newFileNameString onError: exceptionBlock
	"Rename the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"

	<primitive: 606>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[applicationDirectory
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copy: oldFileNameString to: newFileNameString onError: exceptionBlock
	"Copy the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"
	<primitive: 604>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>MSOfficeMSText</Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits>
				<TraitName>File Manipulation</TraitName>
			</Traits>
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
					<VMClassNamed>Number</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[< aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[multiplyBy: aNumber
^self * aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[rounded
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sqrt
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aNumber

^self = aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBiggerOrEqualThan: aNumber

^self >= aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[* aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asFloat
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isSmallerThan: aNumber
^self < aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBiggerThan: aNumber

^self > aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[/ aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isSmallerOrEqualThan: aNumber
	^self <= aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sum: aNumber
^self + aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[substract: aNumber

^self - aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[to: num
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[** aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[divideBy: aNumber

^self / aNumber]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[+ aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[negated
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[truncated
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sin
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[log
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[- aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[// aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[abs
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Number</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>TimeStamp</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[date
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aTimeStamp
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aTimeStamp
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printShortFormat
		<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[time
<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>TimeStamp</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Date</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[< aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hash

	^self asDays]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subtractDays: aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asDays

<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[addDays: aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Date</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Time</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[addTime: aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hash

	^self milliseconds
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hours
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asSeconds
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[minutes
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[milliseconds
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subtractTime: aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Time</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Blob</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Object</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>String</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[, aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trimBlanks
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subStrings: aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[findString: aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEmpty
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notEmpty
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reverse
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printString

	^self]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[match: aString

	<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 
^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asUppercase
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trimNulls
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[last: index
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[first: index
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[capitalized
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asLowercase
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>String</StClass>
				</Class>
			</Classes>
			<Metaclasses>
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
					<VMClassNamed>TimeStamp</VMClassNamed>
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
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
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
					<VMClassNamed>Block</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[whileFalse: aBlock
	"The receiver evaluates it self and then evaluates <aBlock>.
	This process is repeated over and over again.
	The process is halted when the receiver last message answer <false> "

	<primitive: 207>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[on: anException do: aBlock

	<primitive: 209>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value: arg1 value: arg2

	^self valueWithArguments: (Array with: arg1 with: arg2) ]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[valueWithArguments: anArray
	"Evaluate all messages contained in this <Block of code> passing <anArray> as the Block argumentS"

	<primitive: 204>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileTrue: aBlock
	"The receiver evaluates it self and then evaluates <aBlock>.
	This process is repeated over and over again.
	The process is halted when the receiver last message answer <true> "
	<primitive: 205>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value: anObject
"Evaluate all messages contained in this <Block of code> passing <anObject> as the Block argument"
	<primitive: 203>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileFalse
	"The receiver (the Block) evaluate it self while the last messages answer <false>"
	<primitive: 208>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value
"Evaluate all messages contained in this <Block of code> "
	<primitive: 202>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileTrue
	<primitive: 206>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>BlockClosure</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMClassBehavior</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[getMethodsNames
	<primitive: 807>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getAllMethodsNamesButObject
	<primitive: 808>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getAllMethodsNames
	<primitive: 809>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getAllAttributesNames
	<primitive: 309>]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>VMClassVMInstanceVMMetaclass</Subclasses>
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
					<VMClassNamed>Error</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[messageText
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[messageText: signalerText

<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>WarningException</Subclasses>
					<Traits></Traits>
					<StClass>Error</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Object</VMClassNamed>
					<SuperclassName>UndefinedObject</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[removeFromGlobalObjects
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method removes the receiver object from the first cache."

	<primitive: 402>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sendMailTo: receiver from: sender smtpserver: smtpserver subject: subject textBody: text
	"The UML object sends a mail to <receiver> from the email address <sender> with the sibject <subject> and text body <text>."

	<primitive: 631>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent withArguments: arguments
	<primitive: 522>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subscribeTo: stringEvent eventHandler: stringEventHandler publisher: publisherObject eventArguments: eventArguments
	<primitive: 523>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeAllEventsTriggered
	"Remove all events triggers by the receiver"

	<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[eventsNames
	<primitive: 530>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[yourself
	"Answer the receiver"
	^self]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hashString

	^self hash printObjectName]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hash
	
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[halt
	"The receiver halts the current execution and Open an UML Step by Step Real Time Simulator Assistant"
	<primitive: 500>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[variableNamed: aString
	"Answer the variable named <aString>"
	<primitive: 303>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[class
	"Answer the class of the receiver object"

	<primitive: 810>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[className
	"Answer the class of the receiver object"

	^self class name]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent
	<primitive: 520>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isIdenticalTo: anObject
	"Answer whether or not the receiver is the SAME object as <anObject>"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[~= anObject
	"Answer whether or not the receiver and <anObject> are not the same object"

	<primitive: 101>
	]]></Source>
							<Categories>
								<CategoryName>comparision</CategoryName>
							</Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToOperateWith: anObject ifNone: aBlock
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 307>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent with: arg1 with: arg2 
	<primitive: 526>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeFromSetupObjects
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method removes the receiver object from the Setup Objects (or ParametricObjects) Cache."

	<primitive: 404>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic

	^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printUMLFormat
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[deepDestroy
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDirectRelationWith: anObject ifNone: aBlock
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>"

	<primitive: 308>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canUnderstand: aSymbol 
	"Answer whether the receiver can directly understand the message <aSymbol>"
	<primitive: 800>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= anObject
	"Answer whether or not the receiver and <anObject> are equal"

	<primitive: 101>
	]]></Source>
							<Categories>
								<CategoryName>comparision</CategoryName>
							</Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setVariableNamed: aString with: anObject
	"The receiver object set the variable named <aString> with <anObject>"
	<primitive: 304>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[vmPerform: aSelector
	"The receiver perform the UML implementation named <aSelector> with NO arguments"

	^self vmPerform: aSelector withArguments: Array newInstance]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[~~ anObject
	"Answer whether or not the receiver and <anObject> are not the same object"
	<primitive: 101>
	]]></Source>
							<Categories>
								<CategoryName>comparision</CategoryName>
							</Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent with: anObject
	<primitive: 524>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[externalOpen: pathFile
	<primitive: 139>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asEditableObject
	^EditableObject for: self]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notNil
"Answer whether the receiver is not <nil> "
	^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canAnyUnderstand: aSymbol 
	"Answer whether the receiver or superclasses can understand the message <aSymbol>"
	<primitive: 801>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isDomainObject
	^self isBasic not and: [self isCollection not]]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToIterateOver: anUMLClass ifNone: aBlock
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 306>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reStoreSession

	^self]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[== anObject
	"Answer whether or not the receiver and <anObject> are the same object"
	<primitive: 101>
	]]></Source>
							<Categories>
								<CategoryName>comparision</CategoryName>
							</Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[vmPerform: aSelector withArguments: anArray
	"The receiver performs the UML implementation named <aSelector> with arguments <anArray>"

	<primitive: 201>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[updateInstance

	<primitive: 106>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[session
	^self]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[storeAsSetupObject
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the Setup Objects (or ParametricObjects) Cache."
	<primitive: 403>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[storeAsGlobalObject
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the first cache."

	<primitive: 401>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDirectRelationWith: anObject
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>"
	<primitive: 305>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isCollection 

	^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getUniqueID
	"The receiver answer aString which is an UNIQUE id in the context of UML Almighty"

	<primitive:  640>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToIterateOver: anUMLClass
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 301>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil
	"Answer whether the receiver is <nil> or not"
	^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[initialize
	"The receiver initialize it''s <instances variables>"

	^self]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subscribeTo: stringEvent eventHandler: stringEventHandler publisher: publisherObject
	<primitive: 521>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printObjectName
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"

	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDoubleDirectRelationWith: anObject 
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>.
	3. Repeat the processs for the receiver."

	self setDirectRelationWith: anObject.
	anObject setDirectRelationWith: self]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToOperateWith: anObject
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"
	<primitive: 302>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sendMailTo: receiver from: sender password: password smtpserver: smtpserver subject: subject textBody: text
	"The UML object sends a mail to <receiver> from the email address <sender> with the sibject <subject> and text body <text>.
	To avoid spam the password and the SMTPServer must be included"

	<primitive: 630>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[destroy

	<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>CollectionExternalFileViewNumberTimeStampDateTimeBlobStringErrorParsedMethodUndefinedObjectVMClassBehaviorTreeModelBooleanBlockMessageBoxEditableObjectWebApplicationWebElementOperacionTransicionSeccionPersonaCampoCategoriaRegistroDefinicionTransicionPoliticaPermisosDefinicionMaquinaEstadoOrganismoRolMaquinaEstadoEstadoFormularioDocumentGrupo</Subclasses>
					<Traits></Traits>
					<StClass>Object</StClass>
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
					<VMClassNamed>True</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[ifTrue: aBlock
	^aBlock value]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[not 

^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: aBlock
	^nil]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: falseBlock ifTrue: trueBlock
	^trueBlock value]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifTrue: trueBlock ifFalse: falseBlock
	^trueBlock value]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[and: aBlock
	^aBlock value]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[or: aBlock
	^true]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>True</StClass>
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
					<VMClassNamed>ParsedMethod</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[methodClass
	"Answer the UML Class that holds the receiver in its Method Catalog"
	<primitive: 822>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfMessages
	"Answer the number of messages sent by the receiver"
	^self sentMessages size]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfSenders
	"Answer the number of UML Methods senders of the receiver "

	^self senders size]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[name
	"Answer the name (#methodName) of the receiver"
	<primitive: 821>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfTemporaries
	"Answer the number of temporaries of the receiver"
	^self temporaries size]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfArguments
	"Answer the number of arguments of the receiver"
	^self arguments size]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[arguments
	"Answer <anOrderedCollection> with the <arguments> of the receiver"
	<primitive: 823>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfReferencedClasses
	"Answer the number of UML Classes referenced by the receiver"
	^self referencedClasses size]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[temporaries
	"Answer <anOrderedCollection> with the temporaries of the receiver "

	<primitive: 825>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[referencedClasses
	"Answer <anOrderedCollection> with the UML Classes referenced by the receiver"
	<primitive: 826>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[senders
	"Answer <anOrderedCollection> with the UML Methods senders of the receiver "

	<primitive: 827>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sentMessages
	"Answer <anOrderedCollection> with the messages sent by the receiver "

	<primitive: 824>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>ParsedMethod</StClass>
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
					<VMClassNamed>Boolean</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isBasic 
^true]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>FalseTrue</Subclasses>
					<Traits></Traits>
					<StClass>Boolean</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>TreeModel</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[add: child asChildOf: parent

<primitive: 102>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[remove: anObject
	<primitive: 102>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[select: aBlock
	^self asOrderedCollection select: aBlock]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[parentOf: anObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reject: aBlock
	^self asOrderedCollection reject: aBlock]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEmpty
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[childrenOf: anObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock

^self asOrderedCollection do: aBlock]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>TreeModel</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>UndefinedObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[asBlock

	^[self]]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notNil 

^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil 

^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= anObject

^self == anObject]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>UndefinedObject</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>False</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[ifTrue: aBlock
	^nil]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[not 

^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: aBlock
	^aBlock value]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: falseBlock ifTrue: trueBlock
	^falseBlock value]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifTrue: trueBlock ifFalse: falseBlock
	^falseBlock value]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[and: aBlock
	"Answer wheter or not the receiver and the evaluation of <aBlock> answer both <true>"
	^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[or: aBlock
	^aBlock value]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>False</StClass>
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
					<VMClassNamed>Exception</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Exception</StClass>
				</Class>
			</Classes>
			<Metaclasses>
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
					<VMClassNamed>VMClassBehavior</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses>VMClassVMInstanceVMMetaclass</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MessageBox</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[notify: aString
<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[confirm: aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notify: aString caption: caption
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[confirm: aString caption: caption
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
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
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>WarningException</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Object</VMClassNamed>
					<SuperclassName>UndefinedObject</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[stopTransLog
	"The Virtual Machine stop to register all processed messages "
	<primitive: 721>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[startTransErrorLog
	"The Virtual Machine start to register all messages that failed to complete "

	<primitive: 722>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil
	"Answer whether the receiver class is <nil>"
	^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getLastGlobalObjectSatisfying: aBlock ifNone: blockException in: aBBSession
	"Answer the last object in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."

	| objects |
	objects := self getGlobalObjectSatisfying: aBlock in: aBBSession.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[yourself

	^self]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allSetupObjects
	"Answer <anOrderedCollection> with all [Setup Objects] of the receiver class"

	^self getParametricObjectSatisfying: [:each | each notNil]]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[newInstance
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
							<Categories>
								<CategoryName>instance creation</CategoryName>
							</Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[new
	"Creates a new instance of the receiver class"
	| object |

	object := self basicNew.
	object initialize.
	^object

	
	]]></Source>
							<Categories>
								<CategoryName>instance creation</CategoryName>
							</Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canUnderstand: aSymbol 
	"Answer whether the receiver can directly understand the message <aSymbol>"
	<primitive: 802>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getLastParametricObjectSatisfying: aBlock ifNone: blockException
	"Answer the last  object in the Setup Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."
	| objects |
	objects := self getParametricObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allInstances
	"Answer all instnaces of the receiver class"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getParametricObjectSatisfying: aBlock
	"Answer a collection of objects in the Setup Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."
	<primitive: 405>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[cleanTransLog
	<primitive: 724>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[name
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"

	<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstParametricObjectSatisfying: aBlock ifNone: blockException
	"Answer the first object in the <Setup Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"
	| objects |
	objects := self getParametricObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[basicNew
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
							<Categories>
								<CategoryName>instance creation</CategoryName>
							</Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[destroyAllInstances

	^self allInstances do: [:each | each deepDestroy]]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canAnyUnderstand: aSymbol 
	"Answer whether the receiver or superclasses can understand the message <aSymbol>"

	<primitive: 803>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstGlobalObjectSatisfying: aBlock ifNone: blockException
	"Answer the first object in the <Global Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"
	| objects |
	objects := self getGlobalObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstGlobalObjectSatisfying: aBlock ifNone: blockException in: aBBSession
	"Answer the first object in the <Global Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"

	| objects |
	objects := self getGlobalObjectSatisfying: aBlock in: aBBSession.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allGlobalObjects
	"Answer <anOrderedCollection> with all [Global Objects] of the receiver class"

	^self getGlobalObjectSatisfying: [:each | each notNil]]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[stopTransErrorLog
	"The Virtual Machine stop to register all messages that failed to complete "
	<primitive: 723>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getGlobalObjectSatisfying: aBlock in: aBBSession 
	"Answer a collection of objects in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."

	<primitive: 407>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getLastGlobalObjectSatisfying: aBlock ifNone: blockException
	"Answer the last object in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."
	| objects |
	objects := self getGlobalObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[class
	"Answer the class of the receiver object"
	<primitive: 811>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[externalOpen: pathFile

	<primitive: 139>]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[startTransLog
	"The Virtual Machine start to register all processed messages "
	<primitive: 720>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getGlobalObjectSatisfying: aBlock
	"Answer a collection of objects in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."
	<primitive: 406>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses>CollectionExternalFileViewNumberTimeStampDateTimeBlobStringErrorParsedMethodUndefinedObjectVMClassBehaviorTreeModelBooleanBlockMessageBoxEditableObjectWebApplicationWebElementOperacionTransicionSeccionPersonaCampoCategoriaRegistroDefinicionTransicionPoliticaPermisosDefinicionMaquinaEstadoOrganismoRolMaquinaEstadoEstadoFormularioDocumentGrupo</Subclasses>
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
					<VMClassNamed>True</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[newInstance
	^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	^true]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[new

	^true]]></Source>
							<Categories></Categories>
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
					<VMClassNamed>ParsedMethod</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[for: methodName in: anUMLClass
	"Answer a new instance of the receiver"
	<primitive: 820>
	]]></Source>
							<Categories></Categories>
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
					<VMClassNamed>Boolean</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses>FalseTrue</Subclasses>
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
							<Categories></Categories>
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
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>False</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[newInstance

	^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	^false]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[new
	^false]]></Source>
							<Categories></Categories>
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
					<VMClassNamed>Exception</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
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
					<VMClassNamed>EditableObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[editableObject

	<primitive: 101>]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Object</StClass>
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
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>WebElement</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>EditableObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[for: anObject
	<primitive: 700>
	]]></Source>
							<Categories></Categories>
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
							<Source><!![CDATA[beDeployment
	"Set the Web Application to DEPLOYMENT mode"

	<primitive: 710>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[beDevelopment
	"Set the Web Application to DEVELOPMENT mode"

	<primitive: 711>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isDeployment
	"Answer whether the Web Application is in DEPLOYMENT mode or not"

	<primitive: 712>
	]]></Source>
							<Categories></Categories>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isDevelopment
	"Set the Web Application to DEVELOPMENT mode"

	<primitive: 713>
	]]></Source>
							<Categories></Categories>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>WebElement</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits></Traits>
		</Package>
	</Packages>
</VM>'!

virtualMachineV1_2Code
	"This is the code of the first U-Fabrik Virtual Machine.
	Includes: Basic classes and basic traits"
	^'<VM>
	<Traits>
		<Trait>
			<TraitNamed>File Manipulation</TraitNamed>
			<Implementation>
				<TraitMethodNamed>createFileIn:</TraitMethodNamed>
				<Source><!![CDATA[createFileIn: pathFile
	| newDocument |
	newDocument := super getDocumentClass create: pathFile.
	super setFileWith: newDocument.
	self save.
	^newDocument]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>fileName</TraitMethodNamed>
				<Source><!![CDATA[fileName

	^self getFile name]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>free</TraitMethodNamed>
				<Source><!![CDATA[free
	^super getFile free]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>openFileIn:</TraitMethodNamed>
				<Source><!![CDATA[openFileIn: pathFile

	^super setFileWith: (super getDocumentClass open: pathFile)]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>save</TraitMethodNamed>
				<Source><!![CDATA[save
	^super getFile save]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>open</TraitMethodNamed>
				<Source><!![CDATA[open
	^super getFile open]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>showApplication</TraitMethodNamed>
				<Source><!![CDATA[showApplication
	^super getFile showApplication]]></Source>
				<Comments><!![CDATA[]]></Comments>
			</Implementation>
			<Requirement>
				<MessageName>getFile</MessageName>
				<Comments><!![CDATA[]]></Comments>
			</Requirement>
			<Requirement>
				<MessageName>getDocumentClass</MessageName>
				<Comments><!![CDATA[]]></Comments>
			</Requirement>
			<Requirement>
				<MessageName>setFileWith:</MessageName>
				<Comments><!![CDATA[]]></Comments>
			</Requirement>
		</Trait>
		<Trait>
			<TraitNamed>UML Relations Methods</TraitNamed>
			<Implementation>
				<TraitMethodNamed>countNumberOf:</TraitMethodNamed>
				<Source><!![CDATA[countNumberOf: anUMLClass 
	| collection |

	collection := super getCollectionToIterateOver: anUMLClass
				ifNone: 
					[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection size]]></Source>
				<Comments><!![CDATA[]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a \b Nx relation\b0  to \b perform \b0 some \b operation \b0 in each \b element\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank \cf1\b0 in:\cf0  \b Account \cf1\b0 do:\cf0  [:eachAccount | eachAccount \cf1 checkTransactionsBalance\cf0 ].\par
\par
In this case #\cf1 in:do: \cf0 apply \cf1 checkTransactionsBalance \cf0 method to all accounts in \b aBank\b0 .\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;\red0\green0\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method is used to remove a \b link \b0 between\b  2 objects\b0  that it''s classes has an \b N mulitiplicity relation\b0 .\par
The \b receiver object \b0 (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf2\b Remove \cf0 anObject \b0 from \b collection \b0 obtained in \b 1\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method is used remove a \b link \b0 between\b  2 objects \b0 that it''s classes has an \b 1xN mulitiplicity relation\b0 .\par
The\b  receiver object \b0 (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
And \b anObject \b0 has \b 1 link\b0  to the\b  receiver object\b0  (self). (\b 1xN relation\b0 )\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf1\b Remove \cf0 anObject \b0 from \b collection \b0 obtained in \b 1\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a\b  Nx relation\b0  answer the\b  first element\b0  of the \b collection \b0 that \b satisfy \b0 some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank\cf1  \b0 in:\cf0  \b Account \cf1\b0 detect: \cf0 [:eachAccount | eachAccount\cf1  balance <\cf0  0].\par
\par
In this case #\cf1 in:detect:\cf0  answer the first account in \b aBank \b0 with balance < 0.\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method is used to\b  remove \b0 a \b link \b0 between \b 2 objects\b0  that it''s classes has an \b NxN mulitiplicity relation\b0 .\par
\par
The \b receiver object\b0  (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
And \b anObject \b0 has \b N \b0 objects of the same type of \b receiver object \b0 (self). (\b NxN relation\b0 )\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 answer \b anError\b0 .\par
2. \cf1\b Remove \cf0 anObject \b0 from \b collection \b0 obtained in \b 1\b0 .\par
3. \cf1\b Remove \cf0\b0 the \b receiver object \b0 (self) from \b anObject\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a \b Nx relation\b0  and answer \b another collection\b0  that \b collect \b0 some aspect of the \b elements\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank \cf1\b0 in:\cf0  \b Account \cf1\b0 collect: \cf0 [:eachAccount | eachAccount \cf1 number\cf0 ].\par
\par
In this case #\cf1 in:collect:\cf0  answer a new collection with all numbers of the accounts in \b aBank\b0 .\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method is used to\b  link 2 objects \b0 that it''s classes has an \b N mulitiplicity relation\b0 .\par
The \b receiver object \b0 (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf1\b Add \cf0 anObject \b0 to the \b collection \b0 obtained in \b 1\b0 . \par
}
]]></Comments>
			</Implementation>
			<Implementation>
				<TraitMethodNamed>any:satisfy:</TraitMethodNamed>
				<Source><!![CDATA[any: anUMLClass satisfy: aBlock 
	| collection |

	collection := super getCollectionToIterateOver: anUMLClass
				ifNone: 
					[^Error message: ''Mismatch relation between ['' , super className , ''] and ['' , anUMLClass name , '']''].
	^collection anySatisfy: aBlock]]></Source>
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a \b Nx relation\b0  and answer \b whether or any objects \b0 of the \b collection \b0 satisfy some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
aBank \cf1 any:\cf0  Account \cf1 satisfy:\cf0  [:eachAccount | eachAccount \cf1 balance >\cf0  0].\par
\par
\pard In this case #\cf1 any:satisfy:\cf0  iterate over \b Nx relation\b0  between \b Bank \b0 and \b Account\b0 .\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method is used to\b  link 2 objects\b0  that it''s \b classes \b0 has an \b NxN mulitiplicity relation\b0 .\par
The \b receiver object\b0  (self) has a \b collection \b0 of \b N\b0  objects of the same type of \b anObject\b0 .\par
And \b anObject \b0 has \b N\b0  objects of the same type of \b receiver object\b0  (self). (\b NxN relation\b0 )\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 answer \b anError\b0 .\par
2. \cf1\b Add \cf0 anObject \b0 to the \b collection \b0 obtained in \b 1\b0 .\par
3. \cf1\b Add \cf0\b0 the \b receiver object \b0 (self) to \b anObject\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method is used to \b link 2 objects\b0  that it''s \b classes \b0 has an \b 1xN mulitiplicity relation\b0 .\par
The \b receiver object\b0  (self) has a \b collection \b0 of \b N \b0 objects of the same type of \b anObject\b0 .\par
And \b anObject \b0 has \b 1 link\b0  to the\b  receiver object\b0  (self). (\cf1\b 1xN relation\cf0\b0 )\par
\par
1. \cf1\b Get \cf0\b0 the collection to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf1\b Set \cf0\b0 the \b 1x relation\b0  of \b anObject \b0 with the \b receiver\b0 .\par
3. \cf1\b Add \cf0 anObject \b0 to the \b collection \b0 obtained in \b 1\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a\b  Nx relation\b0  answer a \b new collection \b0 with \b elements \b0 that \b satisfy \b0 some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank \cf1\b0 in:\cf0  \b Account \cf1\b0 select:\cf0  [:eachAccount | eachAccount \cf1 balance \cf0 < 0].\par
\par
In this case #\cf1 in:select:\cf0  answer a \b new collection\b0  with the accounts of \b aBank \b0 that \b comply \cf1\b0 balance \cf0 < 0.\par
\par
\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 Answer if \b anObject \b0 is contained by the \b receiver object\b0  in any of it''s \b Nx mulitiplicity relation\b0 .\par
The \b receiver object\b0  (self) has a collection of \b N\b0  objects of the same type of \b anObject\b0 .\par
\par
1. \cf1\b Get \cf0\b0 the \b collection \b0 to operate with \b anObject\b0 . If \b none \b0 the answer \b anError\b0 .\par
2. \cf1\b Test \cf0\b0 the \b collection \b0 to find out if \cf2 includes \cf0\b anObject\b0 . \par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a \b Nx relation\b0  and answer \b whether or not all objects \b0 of the \b collection \b0 satisfy some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
aBank \cf1 all:\cf0  Account \cf1 satisfy:\cf0  [:eachAccount | eachAccount \cf1 balance >\cf0  0].\par
\par
In this case #\cf1 all:satisfy:\cf0  iterate over \b Nx relation\b0  between \b Bank \b0 and \b Account\b0 .\par
}
]]></Comments>
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
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\f0\fs20 This method iterate over a\b  Nx relation\b0  answer a \b new collection \b0 with \b elements \b0 that \b reject \b0 some \b condition\b0 .\par
The first argument is \b anUMLClass \b0 and the second \b aBlock\b0 .\par
\par
For example a \b Bank \b0 has \b N \b0 instances of \b Account\b0 :\par
\b aBank \cf1\b0 in:\cf0  \b Account \cf1\b0 reject:\cf0  [:eachAccount | eachAccount \cf1 balance \cf0 < 0].\par
\par
In this case #\cf1 in:reject:\cf0  answer a \b new collection\b0  with the accounts of \b aBank \b0 that \b reject \cf1\b0 balance \cf0 < 0.\par
}
]]></Comments>
			</Implementation>
			<Requirement>
				<MessageName>getCollectionToOperateWith:</MessageName>
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method \cf1\b get\cf0\b0  the \b collection \b0 where the \b Trait \b0 operate. It''s obtained using the \b UMLClass \b0 that is sent as argument to the method.\par
}
]]></Comments>
			</Requirement>
			<Requirement>
				<MessageName>getCollectionToIterateOver:</MessageName>
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method \cf1\b get\cf0\b0  the \b collection \b0 where the \b Trait \b0 operate. It''s obtained using the \b UMLClass \b0 of the \b anUMLObject \b0 that is sent as argument to the method.\par
}
]]></Comments>
			</Requirement>
			<Requirement>
				<MessageName>setDirectRelationWith:</MessageName>
				<Comments><!![CDATA[{\urtf1\ansi\ansicpg1252\deff0\deflang14346{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}
{\colortbl ;\red0\green64\blue128;}
\viewkind4\uc1\pard\f0\fs20 This method \cf1\b set \cf0\b0 with \b anObject \b0 the\b  instance variable \b0 representing an \b 1x Multiplicity Relationship\b0  with the class of \b anObject\b0 .\par
}
]]></Comments>
			</Requirement>
		</Trait>
	</Traits>
	<Packages>
		<Package>
			<VMPackageNamed>Collections</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Dictionary</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeKey: key
	"Removes <key> from key elements of the receiver Dictionary"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[keys
	"Answer anOrderedCollection with all key elements of the receiver Dictionary"

	<primitive: 128>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: key put: anObject
	"At key element <key> put (store) <anObject> in the receiver Dictionary"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection

	<primitive: 102>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: key
	"Answer the element at <key> in the receiver Dictionary"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includesKey: key
	"Answer whether or not the receiver Dictionary has key element equal to <key>"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>Dictionary</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>OrderedCollection</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[anySatisfy: discriminator
<primitive: 125>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[remove: anObject
	<primitive: 152>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[keysAndValuesDo: aBlock

	<primitive: 129>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asArray
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	"Answer the size of the receiver"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[detect: discrimininator
	"Answer the first element that answer true in the <discriminator> Block"
	<primitive: 121>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[identityIncludes: anObject
	"Answer whether or not the receiver Dictionary includes <anObject>"

	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[addAll: anOrderedCollection
	"Add all elements of <anOrderedCollection> to the receiver Collection"
	^anOrderedCollection do: [:each | self add: each]]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[, anOrderedCollection
	"Answer a new collection with the receiver elements plus <anOrderedCollection> elements"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[third
	"Answer the third element of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[second
	"Answer the second element of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[first
	"Answer the first element of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[collect: aBlock

<primitive: 120>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[detect: discrimininator ifNone: aBlock
	"Answer the first element that answer true in the <discriminator> Block"

	<primitive: 121>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock
"Evaluates aBlock one time per each element passing the element as arguments"
	<primitive: 122>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reject: discriminatorBlock
	"Answer a new collection  with all elements that answer <false> in the <discriminator> Block"


	<primitive: 126>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asSortedCollection: sortBlock
	"Answer aSortedCollection using the sort block <sortBlock>"
	<primitive: 127>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[select: discriminator
	"Answer a new collection  with all elements that answer <true> in the <discriminator> Block"

	<primitive: 123>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[add: anObject
	"Add <anObject> to the receiver"
	<primitive: 151>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[last
	"Answer the last element of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notEmpty
	"Answer whether or not the receiver is NOT empty"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allSatisfy: discriminator
	"Answer whether or not all elements of the receiver answer true to <discriminator> block"
	<primitive: 124>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEmpty
	"Answer whether or not the receiver is empty"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copyWithoutDuplicates
	"Answer a new collection wiuthout duplicated elements"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>OrderedCollection</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Array</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[resize: newSize
	"Resize the receiver Array to <newSize>"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index put: anObject
	"At position <index> put <anObject> in the receiver Array"
	<primitive: 103>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
	"Answer the element at the position <index> in the receiver Array"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock 
	"Evaluates aBlock one time per each element passing the element as arguments"

	<primitive: 122>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>Array</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Collection</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[difference: comperand
	"Answer a <collection> like the receiver containing the Set theroetic 
	difference between the receiver and the <collection>, comperand. 
	i.e. Answer the set of all objects that are elements of the receiver 
	but not the argument."

	^self reject: [:e | comperand includes: e]]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[_difference: comperand
	"Answer a <collection> like the receiver containing the Set theroetic 
	difference between the receiver and the <collection>, comperand. 
	i.e. Answer the set of all objects that are elements of the receiver 
	but not the argument. 
	This method is optimized inside the UML Virtual Machine"

	<primitive: 103>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isCollection
	"Answer whether the receiver is a collection or not"
	^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>DictionaryOrderedCollectionArrayInterval</Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>Collection</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Interval</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[step
	"Answer the receiver step"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includes: index
"Answer whether or not the receiver Interval includes <index>"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[start
	"Answer the initial value of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[stop
	"Answer the receiver stop"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock

<primitive: 130 >]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[at: index
"Answer the element at the position <index> in the receiver Array"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	"Answer the size of the receiver"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>UML Relations Methods</TraitName>
					</Traits>
					<StClass>Interval</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Dictionary</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>OrderedCollection</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[with: firstObject with: secondObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[with: firstObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Array</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[with: firstObject with: secondObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[with: firstObject
	<primitive: 102>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Collection</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses>DictionaryOrderedCollectionArrayInterval</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Interval</VMClassNamed>
					<SuperclassName>Collection</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits>
				<TraitName>UML Relations Methods</TraitName>
			</Traits>
		</Package>
		<Package>
			<VMPackageNamed>External Files</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSWord</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSWord</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSExcel</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSExcel</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSPowerPoint</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSPowerPoint</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSOffice</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[showApplication
	"Show the external application that holds the receiver"
	<primitive: 602>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>MSWordMSExcelMSPowerPoint</Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSOffice</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MSText</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>MSText</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>ExternalFile</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[close
	"Close the receiver and free all its external resource"
	^self free]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isOpen
	"Answer whether or not the receiver is open"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[free
	"Close the receiver and free all its external resource"
	<primitive: 602>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[save
	"Save the file to hard disk"
	<primitive: 602>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[open
	"Open the receiver - connect it with external resources"
	<primitive: 602>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[saveAndFree
	"Save and close the receiver"
	self save.
	self free]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[extension
	"Answer the extension of the receiver"
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>MSOfficeMSText</Subclasses>
					<Traits>
						<TraitName>File Manipulation</TraitName>
					</Traits>
					<StClass>ExternalFile</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSWord</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSExcel</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSPowerPoint</VMClassNamed>
					<SuperclassName>MSOffice</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSOffice</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses>MSWordMSExcelMSPowerPoint</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MSText</VMClassNamed>
					<SuperclassName>ExternalFile</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>ExternalFile</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[removeDirectory: path
	^self removeDirectory: path onError: nil]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[open: pathFile
	"Open an existing file in <pathFile>"
	<primitive: 601>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[create: pathFile
	"Create a new file in the path file <pathFile>"
	<primitive: 601>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeDirectory: path onError: exceptionBlock

	<primitive: 608>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createDirectory: path
	^self createDirectory: path onError: nil
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[delete: pathFile onError: exceptionBlock
	<primitive: 605>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[temporaryFilename

	<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[exists: fileName onError: exceptionBlock
	<primitive: 603>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[applicationDirectory
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[exists: fileName
	^self exists: fileName onError: []]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copy: oldFileNameString to: newFileNameString 
	"Copy the <oldFileNameString> to <newFileNameString>.
	If anError arise the answer anError"

	^self 
		copy: oldFileNameString
		to: newFileNameString
		onError: []]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[rename: oldFileNameString to: newFileNameString onError: exceptionBlock
	"Rename the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"

	<primitive: 606>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[workingDirectory
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[copy: oldFileNameString to: newFileNameString onError: exceptionBlock
	"Copy the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"
	<primitive: 604>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createDirectory: path onError: exceptionBlock
	<primitive: 607>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[rename: oldFileNameString to: newFileNameString
	"Rename the <oldFileNameString> to <newFileNameString>.
	If anError arise evaluates the Block <exceptionBlock>.
	If <exceptionBlock> is Nil then answer the File error"

	^self rename: oldFileNameString to: newFileNameString onError: nil
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[delete: pathFile

	^self delete: pathFile onError: nil
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[tempPath
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>MSOfficeMSText</Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits>
				<TraitName>File Manipulation</TraitName>
			</Traits>
		</Package>
		<Package>
			<VMPackageNamed>Views</VMPackageNamed>
			<Classes>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>View</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
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
					<Comments><!![CDATA[]]></Comments>
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
					<VMClassNamed>Number</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[rounded
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aNumber

^self = aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isSmallerOrEqualThan: aNumber
	^self <= aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sqrt
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[* aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asFloat
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sum: aNumber
^self + aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBiggerOrEqualThan: aNumber

^self >= aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[/ aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[to: num
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBiggerThan: aNumber

^self > aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[** aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[divideBy: aNumber

^self / aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isSmallerThan: aNumber
^self < aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[+ aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[negated
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[truncated
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[substract: aNumber

^self - aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sin
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[log
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[- aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[multiplyBy: aNumber
^self * aNumber]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[// aNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[abs
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Number</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>TimeStamp</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[date
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aTimeStamp
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aTimeStamp
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printShortFormat
		<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[time
<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>TimeStamp</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Date</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subtractDays: aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[addDays: aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aDate
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hash

	^self asDays]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asDays

<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Date</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Time</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[>= aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[milliseconds
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subtractTime: aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hours
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asSeconds
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[minutes
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[< aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[addTime: aTime
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hash

	^self milliseconds
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Time</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Blob</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Object</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>String</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[< aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEqualTo: aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 
^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subStrings: aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[size
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printString

	^self]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[> aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asLowercase
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[, aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[<= aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asUppercase
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asNumber
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[capitalized
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trimNulls
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[>= aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trimBlanks
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[last: index
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[first: index
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[findString: aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notEmpty
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEmpty
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[match: aString

	<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reverse
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>String</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Number</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>TimeStamp</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Date</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[today

^self newInstance]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Time</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Blob</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>String</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
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
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[messageText
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[messageText: signalerText

<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>WarningException</Subclasses>
					<Traits></Traits>
					<StClass>Error</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Warning</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Warning</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>ParsedMethod</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[numberOfArguments
	"Answer the number of arguments of the receiver"
	^self arguments size]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[arguments
	"Answer <anOrderedCollection> with the <arguments> of the receiver"
	<primitive: 823>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[senders
	"Answer <anOrderedCollection> with the UML Methods senders of the receiver "

	<primitive: 827>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfSenders
	"Answer the number of UML Methods senders of the receiver "

	^self senders size]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[referencedClasses
	"Answer <anOrderedCollection> with the UML Classes referenced by the receiver"
	<primitive: 826>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[name
	"Answer the name (#methodName) of the receiver"
	<primitive: 821>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[methodClass
	"Answer the UML Class that holds the receiver in its Method Catalog"
	<primitive: 822>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sentMessages
	"Answer <anOrderedCollection> with the messages sent by the receiver "

	<primitive: 824>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[temporaries
	"Answer <anOrderedCollection> with the temporaries of the receiver "

	<primitive: 825>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfMessages
	"Answer the number of messages sent by the receiver"
	^self sentMessages size]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfTemporaries
	"Answer the number of temporaries of the receiver"
	^self temporaries size]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[numberOfReferencedClasses
	"Answer the number of UML Classes referenced by the receiver"
	^self referencedClasses size]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>ParsedMethod</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>False</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[ifTrue: aBlock
	^nil]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[not 

^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: aBlock
	^aBlock value]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: falseBlock ifTrue: trueBlock
	^falseBlock value]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifTrue: trueBlock ifFalse: falseBlock
	^falseBlock value]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[and: aBlock
	"Answer wheter or not the receiver and the evaluation of <aBlock> answer both <true>"
	^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[or: aBlock
	^aBlock value]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>False</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Exception</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Exception</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>UndefinedObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[= anObject

^self == anObject]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asBlock

	^[self]]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notNil 

^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic 

^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil 

^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>UndefinedObject</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Object</VMClassNamed>
					<SuperclassName>UndefinedObject</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[class
	"Answer the class of the receiver object"

	<primitive: 810>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canUnderstand: aSymbol 
	"Answer whether the receiver can directly understand the message <aSymbol>"
	<primitive: 800>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[= anObject
	"Answer whether or not the receiver and <anObject> are equal"

	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[externalOpen: pathFile
	<primitive: 139>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToIterateOver: anUMLClass
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 301>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[asEditableObject
	^EditableObject for: self]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[storeAsSetupObject
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the Setup Objects (or ParametricObjects) Cache."
	<primitive: 403>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[className
	"Answer the class of the receiver object"

	^self class name]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[halt
	"The receiver halts the current execution and Open an UML Step by Step Real Time Simulator Assistant"
	<primitive: 500>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent with: anObject
	<primitive: 524>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToIterateOver: anUMLClass ifNone: aBlock
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 306>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeFromSetupObjects
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method removes the receiver object from the Setup Objects (or ParametricObjects) Cache."

	<primitive: 404>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent withArguments: arguments
	<primitive: 522>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subscribeTo: stringEvent eventHandler: stringEventHandler publisher: publisherObject
	<primitive: 521>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[yourself
	"Answer the receiver"
	^self]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isDomainObject
	^self isBasic not and: [self isCollection not]]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sendMailTo: receiver from: sender password: password smtpserver: smtpserver subject: subject textBody: text
	"The UML object sends a mail to <receiver> from the email address <sender> with the sibject <subject> and text body <text>.
	To avoid spam the password and the SMTPServer must be included"

	<primitive: 630>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[== anObject
	"Answer whether or not the receiver and <anObject> are the same object"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getUniqueID
	"The receiver answer aString which is an UNIQUE id in the context of UML Almighty"

	<primitive:  640>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setVariableNamed: aString with: anObject
	"The receiver object set the variable named <aString> with <anObject>"
	<primitive: 304>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToOperateWith: anObject ifNone: aBlock
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"

	<primitive: 307>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent
	<primitive: 520>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[subscribeTo: stringEvent eventHandler: stringEventHandler publisher: publisherObject eventArguments: eventArguments
	<primitive: 523>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[storeAsGlobalObject
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the first cache."

	<primitive: 401>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hashString

	^self hash printObjectName]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[trigger: stringEvent with: arg1 with: arg2 
	<primitive: 526>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[vmPerform: aSelector
	"The receiver perform the UML implementation named <aSelector> with NO arguments"

	^self vmPerform: aSelector withArguments: Array newInstance]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[updateInstance

	<primitive: 106>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notNil
"Answer whether the receiver is not <nil> "
	^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDirectRelationWith: anObject
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>"
	<primitive: 305>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[destroy

	<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeFromGlobalObjects
	"The UML Almighty has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method removes the receiver object from the first cache."

	<primitive: 402>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDirectRelationWith: anObject ifNone: aBlock
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>"

	<primitive: 308>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[setDoubleDirectRelationWith: anObject 
	"The receiver object obtain from the Meta Model the <instanceVariable> to store <anObject>.
	1. Based on the class of <anObject> the Meta Model select an <instance variable> of the receiver
	2. Set the <instanceVariable> with <anObject>.
	3. Repeat the processs for the receiver."

	self setDirectRelationWith: anObject.
	anObject setDirectRelationWith: self]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[initialize
	"The receiver initialize it''s <instances variables>"

	^self]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printUMLFormat
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[~~ anObject
	"Answer whether or not the receiver and <anObject> are not the same object"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[hash
	
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[removeAllEventsTriggered
	"Remove all events triggers by the receiver"

	<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canAnyUnderstand: aSymbol 
	"Answer whether the receiver or superclasses can understand the message <aSymbol>"
	<primitive: 801>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[vmPerform: aSelector withArguments: anArray
	"The receiver performs the UML implementation named <aSelector> with arguments <anArray>"

	<primitive: 201>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[sendMailTo: receiver from: sender smtpserver: smtpserver subject: subject textBody: text
	"The UML object sends a mail to <receiver> from the email address <sender> with the sibject <subject> and text body <text>."

	<primitive: 631>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isCollection 

	^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reStoreSession

	^self]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isBasic

	^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil
	"Answer whether the receiver is <nil> or not"
	^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[eventsNames
	<primitive: 530>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getCollectionToOperateWith: anObject
	"The receiver answer a collection that represent the UML relation with <anUMLClass.
	This is for relation with N multiplicity"
	<primitive: 302>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[~= anObject
	"Answer whether or not the receiver and <anObject> are not the same object"

	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[session
	^self]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isIdenticalTo: anObject
	"Answer whether or not the receiver is the SAME object as <anObject>"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[deepDestroy
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[printObjectName
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"

	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[variableNamed: aString
	"Answer the variable named <aString>"
	<primitive: 303>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>CollectionExternalFileViewNumberTimeStampDateTimeBlobStringErrorParsedMethodUndefinedObjectVMClassBehaviorTreeModelBooleanBlockMessageBoxEditableObjectWebApplicationWebElement</Subclasses>
					<Traits></Traits>
					<StClass>Object</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMClassBehavior</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[getMethodsNames
	<primitive: 807>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getAllAttributesNames
	<primitive: 309>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getAllMethodsNamesButObject
	<primitive: 808>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getAllMethodsNames
	<primitive: 809>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>VMClassVMInstanceVMMetaclass</Subclasses>
					<Traits></Traits>
					<StClass>VMClassBehavior</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMClass</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>VMClass</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>TreeModel</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[asOrderedCollection
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[childrenOf: anObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[do: aBlock

^self asOrderedCollection do: aBlock]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[remove: anObject
	<primitive: 102>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[reject: aBlock
	^self asOrderedCollection reject: aBlock]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isEmpty
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[parentOf: anObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[includes: anObject
	<primitive: 102>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[select: aBlock
	^self asOrderedCollection select: aBlock]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[add: child asChildOf: parent

<primitive: 102>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>TreeModel</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMInstance</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>VMInstance</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>True</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[ifTrue: aBlock
	^aBlock value]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[not 

^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: aBlock
	^nil]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifFalse: falseBlock ifTrue: trueBlock
	^trueBlock value]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[ifTrue: trueBlock ifFalse: falseBlock
	^trueBlock value]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[and: aBlock
	^aBlock value]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[or: aBlock
	^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>True</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Boolean</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isBasic 
^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>FalseTrue</Subclasses>
					<Traits></Traits>
					<StClass>Boolean</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>Block</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[whileTrue: aBlock
	"The receiver evaluates it self and then evaluates <aBlock>.
	This process is repeated over and over again.
	The process is halted when the receiver last message answer <true> "
	<primitive: 205>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value
"Evaluate all messages contained in this <Block of code> "
	<primitive: 202>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value: arg1 value: arg2

	^self valueWithArguments: (Array with: arg1 with: arg2) ]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileTrue
	<primitive: 206>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileFalse: aBlock
	"The receiver evaluates it self and then evaluates <aBlock>.
	This process is repeated over and over again.
	The process is halted when the receiver last message answer <false> "

	<primitive: 207>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[value: anObject
"Evaluate all messages contained in this <Block of code> passing <anObject> as the Block argument"
	<primitive: 203>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[valueWithArguments: anArray
	"Evaluate all messages contained in this <Block of code> passing <anArray> as the Block argumentS"

	<primitive: 204>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[whileFalse
	"The receiver (the Block) evaluate it self while the last messages answer <false>"
	<primitive: 208>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[on: anException do: aBlock

	<primitive: 209>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>BlockClosure</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>MessageBox</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>MessageBox</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>VMMetaclass</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>VMMetaclass</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Block</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>VMClassBehavior</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses>VMClassVMInstanceVMMetaclass</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>MessageBox</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[confirm: aString caption: caption
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notify: aString
<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[notify: aString caption: caption
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[confirm: aString
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Error</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[message: aString
	^super new messageText: aString]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>WarningException</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Object</VMClassNamed>
					<SuperclassName>UndefinedObject</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[getLastGlobalObjectSatisfying: aBlock ifNone: blockException in: aBBSession
	"Answer the last object in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."

	| objects |
	objects := self getGlobalObjectSatisfying: aBlock in: aBBSession.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
							<Categories>
								<CategoryName>global objects</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allGlobalObjects
	"Answer <anOrderedCollection> with all [Global Objects] of the receiver class"

	^self getGlobalObjectSatisfying: [:each | each notNil]]]></Source>
							<Categories>
								<CategoryName>global objects</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allSetupObjects
	"Answer <anOrderedCollection> with all [Setup Objects] of the receiver class"

	^self getParametricObjectSatisfying: [:each | each notNil]]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[newInstance
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
							<Categories>
								<CategoryName>instance creation</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[startTransErrorLog
	"The Virtual Machine start to register all messages that failed to complete "

	<primitive: 722>
	]]></Source>
							<Categories>
								<CategoryName>vm log</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isNil
	"Answer whether the receiver class is <nil>"
	^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[yourself

	^self]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[stopTransErrorLog
	"The Virtual Machine stop to register all messages that failed to complete "
	<primitive: 723>
	]]></Source>
							<Categories>
								<CategoryName>vm log</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getParametricObjectSatisfying: aBlock
	"Answer a collection of objects in the Setup Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."
	<primitive: 405>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canUnderstand: aSymbol 
	"Answer whether the receiver can directly understand the message <aSymbol>"
	<primitive: 802>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[new
	"Creates a new instance of the receiver class"
	| object |

	object := self basicNew.
	object initialize.
	^object

	
	]]></Source>
							<Categories>
								<CategoryName>instance creation</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[startTransLog
	"The Virtual Machine start to register all processed messages "
	<primitive: 720>
	]]></Source>
							<Categories>
								<CategoryName>vm log</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getLastGlobalObjectSatisfying: aBlock ifNone: blockException
	"Answer the last object in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."
	| objects |
	objects := self getGlobalObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
							<Categories>
								<CategoryName>global objects</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[name
	"The receiver print it''s self as aString. This message always answer aString.
	This method can be overridden by any subclass"

	<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[allInstances
	"Answer all instnaces of the receiver class"
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[stopTransLog
	"The Virtual Machine stop to register all processed messages "
	<primitive: 721>
	]]></Source>
							<Categories>
								<CategoryName>vm log</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[canAnyUnderstand: aSymbol 
	"Answer whether the receiver or superclasses can understand the message <aSymbol>"

	<primitive: 803>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstGlobalObjectSatisfying: aBlock ifNone: blockException in: aBBSession
	"Answer the first object in the <Global Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"

	| objects |
	objects := self getGlobalObjectSatisfying: aBlock in: aBBSession.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
							<Categories>
								<CategoryName>global objects</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstParametricObjectSatisfying: aBlock ifNone: blockException
	"Answer the first object in the <Setup Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"
	| objects |
	objects := self getParametricObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[basicNew
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
							<Categories>
								<CategoryName>instance creation</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getFirstGlobalObjectSatisfying: aBlock ifNone: blockException
	"Answer the first object in the <Global Object Cache> that satisfy (answer true) to the evaluation of <aBlock>
	If non objects satisfy <aBlock> then evaluates the block <blockException>"
	| objects |
	objects := self getGlobalObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects first]]></Source>
							<Categories>
								<CategoryName>global objects</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getGlobalObjectSatisfying: aBlock
	"Answer a collection of objects in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."
	<primitive: 406>
	]]></Source>
							<Categories>
								<CategoryName>global objects</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[externalOpen: pathFile

	<primitive: 139>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[cleanTransLog
	<primitive: 724>
	]]></Source>
							<Categories>
								<CategoryName>vm log</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	"Creates a new instance of the receiver class"

	<primitive: 105>
	]]></Source>
							<Categories>
								<CategoryName>instance creation</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[class
	"Answer the class of the receiver object"
	<primitive: 811>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getLastParametricObjectSatisfying: aBlock ifNone: blockException
	"Answer the last  object in the Setup Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If non objects satisfy <aBlock> then evaluates the exception block <blockException>."
	| objects |
	objects := self getParametricObjectSatisfying: aBlock.
	objects isEmpty ifTrue: [^blockException value].
	^objects last]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[destroyAllInstances

	^self allInstances do: [:each | each deepDestroy]]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getGlobalObjectSatisfying: aBlock in: aBBSession 
	"Answer a collection of objects in the Global Object Cache that satisfy (answer true) to the evaluation of <aBlock>.
	If none object satisfy <aBlock> then answer an empty OrderedCollection."

	<primitive: 407>
	]]></Source>
							<Categories>
								<CategoryName>global objects</CategoryName>
							</Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses>CollectionExternalFileViewNumberTimeStampDateTimeBlobStringErrorParsedMethodUndefinedObjectVMClassBehaviorTreeModelBooleanBlockMessageBoxEditableObjectWebApplicationWebElement</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>VMMetaclass</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>True</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[newInstance
	^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[new

	^true]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Warning</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>ParsedMethod</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[for: methodName in: anUMLClass
	"Answer a new instance of the receiver"
	<primitive: 820>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>VMInstance</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Boolean</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses>FalseTrue</Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>TreeModel</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[withRoots: anOrderedCollection
	<primitive: 101>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>UndefinedObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[newInstance 

^nil]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>False</VMClassNamed>
					<SuperclassName>Boolean</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[newInstance

	^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[createInstance
	^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[new
	^false]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>VMClass</VMClassNamed>
					<SuperclassName>VMClassBehavior</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>Exception</VMClassNamed>
					<SuperclassName>Error</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
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
					<VMClassNamed>EditableObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[editableObject

	<primitive: 101>]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>Object</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>WebApplication</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>WebApplication</StClass>
				</Class>
				<Class>
					<VMClassTypeNamed>UMLVirtualMachineClass</VMClassTypeNamed>
					<VMClassNamed>WebElement</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
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
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
					<StClass>WebElement</StClass>
				</Class>
			</Classes>
			<Metaclasses>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>EditableObject</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[for: anObject
	<primitive: 700>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>WebApplication</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations>
						<Implementation>
							<Source><!![CDATA[isDeployment
	"Answer whether the Web Application is in DEPLOYMENT mode or not"

	<primitive: 712>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[isDevelopment
	"Set the Web Application to DEVELOPMENT mode"

	<primitive: 713>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[beDevelopment
	"Set the Web Application to DEVELOPMENT mode"

	<primitive: 711>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[beDeployment
	"Set the Web Application to DEPLOYMENT mode"

	<primitive: 710>
	]]></Source>
							<Categories></Categories>
							<Comments><!![CDATA[]]></Comments>
						</Implementation>
					</Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
				<Metalass>
					<VMClassTypeNamed>UMLVirtualMachineMetaclass</VMClassTypeNamed>
					<VMClassNamed>WebElement</VMClassNamed>
					<SuperclassName>Object</SuperclassName>
					<Comments><!![CDATA[]]></Comments>
					<Implementations></Implementations>
					<Subclasses></Subclasses>
					<Traits></Traits>
				</Metalass>
			</Metaclasses>
			<Traits></Traits>
		</Package>
	</Packages>
</VM>'!

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
	"The U-Fabrik has two CACHEs to store objects.
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
	"The U-Fabrik has two CACHEs to store objects.
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
	"The U-Fabrik has two CACHEs to store objects.
	The First is named: Global Objects Cache
	The Second is named: Setup Objects Cache or ParametricObjects Cache 
	This method adds the receiver object from the first cache."

	<primitive: 401>
	]]></Source>
						</Implementation>
						<Implementation>
							<Source><!![CDATA[getUniqueID
	"The receiver answer aString which is an UNIQUE id in the context of U-Fabrik"

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
	"The U-Fabrik has two CACHEs to store objects.
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
!UMLVirtualMachineBootstrap class categoriesFor: #virtualMachineV1_1Code!public!vm code! !
!UMLVirtualMachineBootstrap class categoriesFor: #virtualMachineV1_2Code!public!vm code! !
!UMLVirtualMachineBootstrap class categoriesFor: #virtualMachineV1Code!public!vm code! !

