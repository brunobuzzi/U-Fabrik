"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLVirtualMachine
	instanceVariableNames: 'systemDictionary primitiveObjects umlModels numbers userGlobals traits packages typeMapping isDeployment transLog isInstanceBehaviorAvailable'
	classVariableNames: 'Default'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVirtualMachine guid: (GUID fromString: '{515b0521-a10d-4df8-ba76-518feadaa85b}')!
UMLVirtualMachine comment: 'This class is the Virtual Machine used to give life to UMLModels and is responsible for sending the message to each object.

Instances variables:

systemDictionary 	- aDictionary with core classes of the virtual machine.
primitiveObjects 	- aDictionary with (false, nil, true).
umlModels 		- aDictionary with installed UML Models from XMI files.
numbers 			- aDictionary that is a cache for numbers, this is to avoid the creation of numbers each time we need one and to avoid multiple instance of the same number.
userGlobals 		- aDictionary to store user globals, is unsused for now.
traits 			- aDictionary of UMLTrait availables for the virtual machine.
packages			- aDictionary to group virtual machine core classes.'!
!UMLVirtualMachine categoriesForClass!Unclassified! !
!UMLVirtualMachine methodsFor!

addNumber: aNumber
	"The environment has request a number that not exist in the receiver, so we proceed to create it"
	| newNumberInstance |

	newNumberInstance := self numberClass newInstanceWith: aNumber. "we create the primitive insntace"
	numbers at: aNumber printString put: newNumberInstance. "we store it in the cache"
	newNumberInstance virtualMachine: self. "we set the virtual machine of the instance "
	^newNumberInstance!

addPackage: anUMLVirtualMachinePackage

	^packages at: anUMLVirtualMachinePackage name put: anUMLVirtualMachinePackage!

addPrimitiveObject: anUMLVirtualMachineInstance named: aString

	^primitiveObjects at: aString put: anUMLVirtualMachineInstance!

addTrait: anUMLTrait

	^traits at: anUMLTrait name put: anUMLTrait!

addUMLMetaclass: anUMLMetaclass
	" Add <anUMLMetaclass> to the receiver "

	^systemDictionary at: anUMLMetaclass name put: anUMLMetaclass!

addUMLModel: anUMLModel
	" Add <anUMLModel> to the receiver "

	anUMLModel virtualMachine: self.
	^umlModels at: anUMLModel name put: anUMLModel!

allAttributes
	| allAttributes |

	allAttributes := OrderedCollection new.
	umlModels asOrderedCollection do: [:each | allAttributes addAll: each allAttributes].

	^allAttributes asSortedCollection: [:a :b | a name <= b name]!

allDefinitionsOf: aSymbol
	"The receiver (VM) answer a collection of UMLParsedImplementation with the name of <aSymbol>"

	^(self getAllClasses select: [:each | each canUnderstand: aSymbol] thenCollect:  [:each | each implementationNamed: aSymbol]),
		((self getAllClasses collect: [:each | each getMetaclass]) select: [:each | each canUnderstand: aSymbol] thenCollect:  [:each | each implementationNamed: aSymbol]).!

allImplementations
	| allImplementations |

	allImplementations := OrderedCollection new.
	(umlModels asOrderedCollection, traits asOrderedCollection) do: [:each | allImplementations addAll: each allImplementations].

	^allImplementations asSortedCollection: [:a :b | a name <= b name]!

allPrimitiveObjects
	"Answer anOrderedCollection with the primitive objects of the receiver. These objects are: nil, false, true, ..."

	^primitiveObjects asOrderedCollection!

allTraits
	^traits!

allUMLImplementations
	| allImplementations |

	allImplementations := OrderedCollection new.
	umlModels asOrderedCollection do: [:each | allImplementations addAll: each allImplementationsAsSortedCollection].
	^allImplementations asSortedCollection: [:a :b | a name <= b name].!

apply: anUMLImplementation to: anUMLObject with: arguments
	"The Virtual Machine (the receiver) apply <anUMLImplementation to <anObject> with arguments <arguments>"

	^self apply: anUMLImplementation to: anUMLObject with: arguments parentSnapshot: nil!

apply: anUMLImplementation to: anUMLObject with: arguments parentSnapshot: anUMLExecutionSnapshot
	"The Virtual Machine (the receiver) apply <anUMLImplementation> to <anObject> with arguments <arguments> which parent execution snapshot is <anUMLExecutionSnapshot>"
	| snapShot | 

	snapShot := UMLImplementationExecutionSnapshot activateSnaphotWith: anUMLImplementation receiver: anUMLObject arguments: arguments virtualMachine: self. "the vm creates the Execution Snapshot for the Implementation and involved objects"
	snapShot parentSnapshot: anUMLExecutionSnapshot.
	^self apply: anUMLImplementation to: anUMLObject with: arguments snapshot: snapShot!

apply: anUMLImplementation to: anUMLObject with: arguments snapshot: anUMLExecutionSnapshot 
	"The Virtual Machine (the receiver) apply <anUMLImplementation> to <anObject> with arguments <arguments> which parent execution snapshot is <anUMLExecutionSnapshot>"
	| collectionResult | 

	self logIsActive ifTrue: [self registerTransLogFor: anUMLObject methodName: anUMLImplementation methodName arguments: arguments.]. "Here we register the message in the UMLVMTransLog"

	collectionResult := OrderedCollection new.
	anUMLImplementation nodes do: [:each |
		anUMLExecutionSnapshot isCurtailed "if a program node has a _^_ then the message stack is not executed any more"
		ifFalse: [(each isMessage and: [each selector = #halt"debug"]) 
					ifFalse: [collectionResult add: (each processInsideSnapshot: anUMLExecutionSnapshot context: anUMLObject parameters: arguments). " process the message node in a regular way"
						anUMLExecutionSnapshot hasDNU 
						ifTrue: [ self errorLogIsActive 
							ifTrue: [self registerTransErrorLogFor: anUMLObject methodName: arguments arguments: arguments snap: anUMLExecutionSnapshot]. "Here we register the error in the UMLVMTransLog"
							^self nilObject]]
					ifTrue: [^self processPrimitiveCallHaltIn: anUMLExecutionSnapshot node: each object: anUMLObject]. "debug interruption"] ]. " apply the super implementation to anObject "
	collectionResult isEmpty ifTrue: [^anUMLObject"^self errorNotImplementedYet: symbolMessage in: anUMLObject"].
	^collectionResult last!

arrayClass

	^self virtualMachineClassNamed: 'Array'!

avoidClassNameClashingFor: anUMLModel 
	"This method call it self until there is no more conflicts between existing classes and <anUMLModel> classes"

	| clashingClasses prefix |
	anUMLModel umlClasses do: [:each | each name: (each name copyWithoutAll: ' ')].	"we delete blank spaces for class names (what happend with a model with: BankWeb and Bank Web)- a clash !! "
	clashingClasses := anUMLModel umlClasses 
				select: [:each | self includesAnyClassNamed: each className].
	clashingClasses isEmpty ifTrue: [^self].
	[prefix isNil] whileTrue: 
			[prefix := Prompter prompt: 'Enter the prefix for clashing classes (<v1> --> MyClass_v1)'
						caption: self applicationName].
	clashingClasses do: 
			[:clashClass | 
			clashClass name: clashClass name , '_' , prefix.
			clashClass metaclass name: clashClass name].
	^(anUMLModel umlClasses select: [:each | self includesAnyClassNamed: each className]) isEmpty 
		ifTrue: [self]
		ifFalse: [self avoidClassNameClashingFor: anUMLModel]!

basicClasses

	^(#('Blob' 'Boolean' 'Date' 'Number' 'String' 'Time' 'TimeStamp' 'MSWord' 'MSText' 'MSExcel' 'MSPowerPoint' 'ExternalFile') collect: [:each | self getAnyClassNamed: each]) asOrderedCollection!

blockClass

	^self virtualMachineClassNamed: 'Block'!

classes
	"Answer anOrderedCollection with the primitive classes of the receiver "

	^systemDictionary asOrderedCollection collect: [:each | each instanceClass]!

classesAsTreeModel
	"Answer aTreeModel with all classes of the receiver using UMLCLass('Object') as the father of all objects. The superclass of UMLCLass('Object') is UMLCLass('UndefinedObject') "

	^self objectClass asTreeModel
	
	!

classesAsVirtualMachineTreeModel
	"Answer aTreeModel with Virtual Machine's classes of the receiver using UMLCLass('Object') as the father of all objects. The superclass of UMLCLass('Object') is UMLCLass('UndefinedObject') "

	^self objectClass asVirtualMachineTreeModel
	
	!

classNamed: aString
	"Answer a class named <aString> if absent asnwer anUMLInstance of UMLClass(''UndefinedObject)"
	| detectedUmlModel |

	detectedUmlModel := umlModels detect: [:each | each includesClassNamed: aString] ifNone: [^self nilObject].

	^detectedUmlModel getClassNamed: aString!

classNamed: aString ifNone: aBlock
	"Answer a class named <aString> if absent asnwer anUMLInstance of UMLClass(''UndefinedObject)"
	| detectedUmlModel |

	detectedUmlModel := umlModels detect: [:each | each includesClassNamed: aString] ifNone: [^aBlock value].

	^detectedUmlModel getClassNamed: aString!

createBooleanObjects
	"The receiver creates the <true> and <false> objects"

	self addPrimitiveObject: ((self virtualMachineClassNamed: 'True') newInstanceWith: true) named: 'true'.
	self addPrimitiveObject: ((self virtualMachineClassNamed: 'False') newInstanceWith: false) named: 'false'.!

createNilObject
	"The receiver creates the <nil> object"

	self addPrimitiveObject: ((self virtualMachineClassNamed: 'UndefinedObject') newInstanceWith: nil) named: 'nil'.!

cretateGettersAndSettersImplementationsFor: anUMLClassAttribute inClass: anUMLClass 
	^Error notYetImplemented!

dateClass

	^self virtualMachineClassNamed: 'Date'!

depurateObjectClass

	self objectClass subclasses: OrderedCollection new.
	self objectClass metaclass subclasses: OrderedCollection new.

	self setObjectSubclasses.!

dictionaryClass

	^self virtualMachineClassNamed: 'Dictionary'!

errorAssociationMismatch: anUMLAssociationClassAttribute receiver: anUMLObject setObject: anUMLInstance

	self errorLogIsActive ifTrue: [self registerTransErrorLogFor: anUMLObject methodName: anUMLAssociationClassAttribute name arguments: anUMLInstance snap: nil]. "Here we register the error in the UMLVMTransLog"

	^(self errorClass newInstance) 
		smalltalkObject: (Error new messageText: 'Mismatch error <', anUMLAssociationClassAttribute name ,'(', anUMLAssociationClassAttribute getType name,')> with <', anUMLInstance printString, '(', anUMLInstance umlClass name, ')>');
				yourself.!

errorClass

	^self virtualMachineClassNamed: 'Error'!

errorCollectionMismatch: varibleName receiver: anUMLObject setObject: setObject
	"In this case the InstVar <var> is NOT Basic, <var> is a NxN or 1xN for <anUMLObject class>  then --> Set Object MUST be a Collection if NOT --> anError"

	self errorLogIsActive ifTrue: [self registerTransErrorLogFor: anUMLObject methodName: varibleName arguments: setObject snap: nil]. "Here we register the error in the UMLVMTransLog"

	^(self errorClass newInstance) smalltalkObject: 
				(Error new messageText: 'Mismatch error <', varibleName ,'> (a Collection)> with <', setObject printString, '(', setObject umlClass name, ')>'); yourself.!

errorLogIsActive

	^transLog errorLogIsActive!

errorSelfReference: anUMLRelationClassAttribute receiver: anUMLObject setObject: setObject

	self errorLogIsActive ifTrue: [self registerTransErrorLogFor: anUMLObject methodName: anUMLRelationClassAttribute name  arguments: setObject snap: nil]. "Here we register the error in the UMLVMTransLog"

	^(self errorClass newInstance) 
		smalltalkObject: (Error new messageText: 'Mismatch error <', anUMLRelationClassAttribute name,'> (', anUMLRelationClassAttribute getType name,') with <', setObject printString, '(', setObject umlClass name, ')>'); yourself!

errorVariableMismatch: varibleName varType: varType receiver: anUMLObject setObject: setObject
	"The instance variable is a Basic Object (belongs to VM) and the Set Object is NOT --> anError "

	self errorLogIsActive ifTrue: [self registerTransErrorLogFor: anUMLObject methodName: varibleName  arguments: setObject snap: nil]. "Here we register the error in the UMLVMTransLog"

	^(self errorClass newInstance) 
				smalltalkObject: (Error new messageText: 'Mismatch error <', varibleName ,'(', varType getType name,')> with <', setObject printString, '(', setObject umlClass name, ')>');
				yourself.!

errorVaribleNotExist: varibleName receiver: anUMLObject setObject: setObject

	self errorLogIsActive ifTrue: [self registerTransErrorLogFor: anUMLObject methodName: varibleName  arguments: setObject snap: nil]. "Here we register the error in the UMLVMTransLog"

	^(self errorClass newInstance) 
		smalltalkObject: (Error new messageText: 'Instance variable <', varibleName ,'> does not exist'); 
		yourself.!

executeSequenceNodeReturningAll: aStProgramNode in: anUMLExecutionSnapshot
	"The receiver execute <aStProgramNode> created by the compiler. In this case the -ExecutionSnapshot- does not have -receiver- or -arguments-. 
	This method is invocaked from UMLWorkspace or UMLScritps"
	| allResults |

	allResults := OrderedCollection new.

	aStProgramNode nodes collect: [:each | | nodeResult |
		anUMLExecutionSnapshot isCurtailed "if we found an _^_ we halt the execution"
		ifFalse: [nodeResult := each processInsideSnapshot: anUMLExecutionSnapshot context: nil parameters: #().
			(anUMLExecutionSnapshot hasDNU and: [anUMLExecutionSnapshot hasOnErrorDo])
			ifTrue: [OrderedCollection with: nodeResult] "is a [] on: Error do: [] - we return the Error"
			ifFalse: [OrderedCollection with: nodeResult].
		allResults add: nodeResult]].
	^allResults!

falseObject

	^primitiveObjects at: 'false'!

fetchClassMethodNamed: aSymbol for: anUMLClass ifNone: aBlock
	"The receiver fetch a method named <aSymbol> for the UML class <anUMLClass> , if not exist then evaluates <aBlock>"
	| umlClass |

	"in most of cases it return ^value because the implementation is in <anUMLClass>"
	(anUMLClass basicImplementationNamed: aSymbol) ifNotNil: [:value | ^value]. 

	umlClass := anUMLClass getSuperclass.

	[umlClass className ~= 'UndefinedObject'] whileTrue: [ | method | "here we try to get the -super definition- of -symbolMessage-"
		method := umlClass basicImplementationNamed: aSymbol.
		method ifNotNil: [:value | ^value].
		umlClass := umlClass getSuperclass].

	((self virtualMachineClassNamed: 'VMClass') 
		basicImplementationNamed: aSymbol) ifNotNil: [:method | ^method].

	((self virtualMachineClassNamed: 'VMClassBehavior') 
		basicImplementationNamed: aSymbol) ifNotNil: [:method | ^method].

	^nil!

fetchImplementationNamed: symbolMessage for: anUMLClass ifNone: exceptionBlock
	" The receiver fetch the UMLImplementation of <UMLClass> named <symbolMessage>"
	| umlClass |

	"in most of cases it return ^value because the implementation is in <anUMLClass>"
	(anUMLClass basicImplementationNamed: symbolMessage) ifNotNil: [:value | ^value]. 

	umlClass := anUMLClass getSuperclass.

	[umlClass className ~= 'UndefinedObject'] whileTrue: [ | method | "here we try to get the -super definition- of -symbolMessage-"
		method := umlClass basicImplementationNamed: symbolMessage.
		method ifNotNil: [:value | ^value].
		umlClass := umlClass getSuperclass].

"if we reach here is because there is NO -super definition- for <symbolMessage> so we try to find a TRAIT for <anUMLClass> and <symbolMessage>"
	^self fetchTraitIn: anUMLClass implementing: symbolMessage ifNone: exceptionBlock!

fetchInstanceMethodNamed: aSymbol for: anUMLInstance ifNone: aBlock
	"The receiver fetch a method named <aSymbol> for the UML instance <anUMLInstance> , if not exist then evaluates <aBlock>"

	(anUMLInstance basicImplementationNamed: aSymbol) ifNotNil: [:method | ^method].

	^self fetchClassMethodNamed: aSymbol for: anUMLInstance umlClass
		ifNone: [	((self virtualMachineClassNamed: 'VMInstance') 
					basicImplementationNamed: aSymbol) ifNotNil: [:method | ^method].
				((self virtualMachineClassNamed: 'VMClassBehavior') 
					basicImplementationNamed: aSymbol) ifNotNil: [:method | ^method].]
!

fetchMetaclassMethodNamed: aSymbol for: anUMLMetaclass ifNone: aBlock
	"The receiver fetch a method named <aSymbol> for the UML metaclass <anUMLMetaclass> , if not exist then evaluates <aBlock>"
	| umlClass |

	"in most of cases it return ^value because the implementation is in <anUMLClass>"
	(anUMLMetaclass basicImplementationNamed: aSymbol) ifNotNil: [:value | ^value]. 

	umlClass := anUMLMetaclass getSuperclass.

	[umlClass className ~= 'UndefinedObject'] whileTrue: [ | method | "here we try to get the -super definition- of -symbolMessage-"
		method := umlClass basicImplementationNamed: aSymbol.
		method ifNotNil: [:value | ^value].
		umlClass := umlClass getSuperclass].

	((self virtualMachineClassNamed: 'VMMetaclass') 
		basicImplementationNamed: aSymbol) ifNotNil: [:method | ^method].

	((self virtualMachineClassNamed: 'VMClassBehavior') 
		basicImplementationNamed: aSymbol) ifNotNil: [:method | ^method].

	^nil!

fetchMethodNamed: aSymbol for: anUMLObject
	"The receiver fetch the method named <aSymbol> for <anUMLObject> "

	^self fetchMethodNamed: aSymbol for: anUMLObject ifNone:  [self nilObjectClass]!

fetchMethodNamed: aSymbol for: anUMLObject ifNone: aBlock 
	"The receiver fetch the method named <aSymbol> for <anUMLObject> if the method not exist then evaluate <aBlock>"
	| targetObject |

	"check for <isInstanceBehaviorAvailable> in the VM"
	targetObject := anUMLObject getFetchMethodsClass.

	(targetObject fetchMethodNamed: aSymbol ifNone: aBlock) ifNotNil: [:method | ^method].

"if we reach here is because there is NO -super definition- for <symbolMessage> so we try to find a TRAIT for <anUMLObject> and <aSymbol>.
But UMLInstances do NOT have Traits, so we send #umlClass to  <targetObject>"

	(self fetchTraitIn: targetObject umlClass implementing: aSymbol ifNone: aBlock) ifNotNil: [:traitMethod | ^traitMethod].

	^self nilObjectClass!

fetchTraitIn: anUMLClass implementing: symbolMessage ifNone: aBlock
	"The Virtual Machine fetch the UMLImplementation named <symbolMessage> for UMLClass <anUMLClass>.
	If message is NOT found then the BlockClosure <aBlock> is evaluated "
	| trait |

	trait := anUMLClass traits detect: [:each | each includesMessage: symbolMessage] ifNone: [^aBlock value].
	^trait methodNamed: symbolMessage!

fileInCategoryMethodsFrom: pathFile 
	"The receiver create a file with path file <pathFile> and store all elements of <aListModel> in an XML file"

	| fileStream xmlDocument xmlSource category |
	fileStream := FileStream read: pathFile text: true.
	xmlSource := fileStream contents.
	fileStream close.
	xmlDocument := IXMLDOMDocument new.
	xmlDocument loadText: xmlSource.
	category := UMLImplementationCategory 
				newNamed: (xmlDocument selectSingleNode: '/categoryFileOut/categoryName') innerXML.
	(xmlDocument selectNodes: '//implementation') do: 
			[:each | 
			| umlClass parsedCode parsedImplementation |
			parsedCode := SmalltalkParser 
						parseMethod: (((each selectSingleNode: 'source') innerXML subStrings: 'CDATA[') second allButLast: 3).
			parsedImplementation := UMLParsedImplementation newNamed: parsedCode selector.
			umlClass := self getAnyClassNamed: (each selectSingleNode: 'className') innerXML
						ifAbsent: 
							[xmlDocument free.
							xmlDocument := nil.
							^MessageBox notify: 'Can not import methods, an UML Class does not exist'
								caption: self applicationName].
			parsedImplementation parsedCode: parsedCode.
			umlClass addImplementation: parsedImplementation.
			umlClass add: parsedImplementation toCategory: category].
	xmlDocument free.
	xmlDocument := nil.
	fileStream := nil.
	xmlSource := nil!

fileInFromXml: pathFile
	| xmlDocument stream xmlSource |

	stream := FileStream read: pathFile text: true.
	xmlSource := stream contents.
	stream close.
	xmlDocument := IXMLDOMDocument new.
	xmlDocument loadText: xmlSource.
!

fileInMethodsFrom: pathFile 
	"The receiver create a file with path file <pathFile> and store all elements of <aListModel> in an XML file"

	| fileStream xmlDocument xmlSource |
	fileStream := FileStream read: pathFile text: true.
	xmlSource := fileStream contents.
	fileStream close.
	xmlDocument := IXMLDOMDocument new.
	xmlDocument loadText: xmlSource.
	(xmlDocument selectNodes: '//implementation') do: 
			[:each | 
			| umlClass parsedCode parsedImplementation |
			parsedCode := SmalltalkParser 
						parseMethod: (((each selectSingleNode: 'source') innerXML subStrings: 'CDATA[') second allButLast: 3).
			parsedImplementation := UMLParsedImplementation newNamed: parsedCode selector.
			umlClass := self getAnyClassNamed: (each selectSingleNode: 'className') innerXML
						ifAbsent: 
							[xmlDocument free.
							xmlDocument := nil.
							^MessageBox notify: 'Can not import methods, an UML Class does not exist'
								caption: self applicationName].
			parsedImplementation parsedCode: parsedCode.
			umlClass addImplementation: parsedImplementation].
	xmlDocument free.
	xmlDocument := nil.
	fileStream := nil.
	xmlSource := nil!

fileInUMLModelImplementationsFrom: pathFile 
	"The receiver create a file with path file <pathFile> and store all elements of <aListModel> in an XML file"

	| fileStream xmlDocument xmlSource |
	fileStream := FileStream read: pathFile text: true.
	xmlSource := fileStream contents.
	fileStream close.
	xmlDocument := IXMLDOMDocument new.
	xmlDocument loadText: xmlSource.
	self defaultVirtualMachine 
		getUMLModelNamed: (xmlDocument selectSingleNode: '/modelImplementationsFileOut/modelName') innerXML
		ifNone: [^MessageBox notify: 'UML Model is not installed' caption: self applicationName].
	(xmlDocument selectNodes: '//implementation') do: 
			[:each | 
			| parsedCode parsedImplementation |
			parsedCode := SmalltalkParser 
						parseMethod: (((each selectSingleNode: 'source') innerXML subStrings: 'CDATA[') second allButLast: 3).
			parsedImplementation := UMLParsedImplementation newNamed: parsedCode selector.
			(self getAnyClassNamed: (each selectSingleNode: 'className') innerXML) 
				ifNil: 
					[xmlDocument free.
					xmlDocument := nil.
					MessageBox 
						notify: 'Can not import methods, of UML Class ' , (each selectSingleNode: 'className') innerXML 
								, ' does not exist'
						caption: self applicationName]
				ifNotNil: 
					[:umlClass | 
					parsedImplementation parsedCode: parsedCode.
					(each selectSingleNode: 'isMeta') innerXML = 'true' 
						ifTrue: [umlClass metaclass addImplementation: parsedImplementation]
						ifFalse: [umlClass addImplementation: parsedImplementation].
					(each selectNodes: 'categories/categoryName') do: 
							[:eachCategoryName | 
							| category |
							category := UMLImplementationCategory getOrNewNamed: eachCategoryName innerXML.
							umlClass add: parsedImplementation toCategory: category]]].
	xmlDocument free.
	xmlDocument := nil.
	fileStream := nil.
	xmlSource := nil!

fileOutCategory: anUMLCategory to: pathFile
	"The receiver create a file with path file <pathFile> and store all elements of <aListModel> in an XML file"
	| fileStream |

	fileStream := FileStream write: pathFile text: true.
	fileStream nextPutAll: '<categoryFileOut><categoryName>', anUMLCategory name,'</categoryName>'.
	fileStream nextPutAll: '<methods>'.
	anUMLCategory implementationsAsSortedCollection do: [:each | 
		fileStream nextPutAll: '<implementation>'; cr. 
		each printSourceOn: fileStream.
		fileStream cr;
			nextPutAll: '</implementation>';
			cr.].
	fileStream nextPutAll: '</methods></categoryFileOut>'.
	fileStream flush.
	fileStream close.!

fileOutCleanVirtualMachineTo: pathFile
	"The receiver creates a new Virtual Machine, with basic objects to boot and store it in <pathFile>"
	| fileStream cleanVirtualMachine |

	cleanVirtualMachine := UMLVirtualMachine new.
	cleanVirtualMachine traits: traits;
		packages: packages;
		primitiveObjects: primitiveObjects;
		systemDictionary: systemDictionary.
	fileStream := FileStream write: pathFile text: false.
	cleanVirtualMachine binaryStoreOn: fileStream.
	fileStream close.!

fileOutMethods: aListModel to: pathFile
	"The receiver create a file with path file <pathFile> and store all elements of <aListModel> in an XML file"
	| fileStream |

	fileStream := FileStream write: pathFile text: true.
	fileStream nextPutAll: '<methodsFileOut><methods>'.
	aListModel do: [:each | 
		fileStream nextPutAll: '<implementation>'; cr. 
		each printSourceOn: fileStream.
		fileStream cr;
			nextPutAll: '</implementation>';
			cr.].
	fileStream nextPutAll: '</methods></methodsFileOut>'.
	fileStream flush.
	fileStream close.!

fileOutUMLModelImplementations: anUMLModel to: pathFile
	"The receiver create a file with path file <pathFile> and store all elements of <aListModel> in an XML file"
	| fileStream |

	fileStream := FileStream write: pathFile text: true.
	fileStream nextPutAll: '<modelImplementationsFileOut><modelName>', anUMLModel name,'</modelName>'.
	fileStream nextPutAll: '<methods>'.
	anUMLModel allImplementations do: [:each | 
		fileStream nextPutAll: '<implementation>'; cr. 
		each printSourceOn: fileStream.
		fileStream cr;
			nextPutAll: '</implementation>';
			cr.].
	fileStream nextPutAll: '</methods></modelImplementationsFileOut>'.
	fileStream flush.
	fileStream close.!

fileOutVirtualMachineTo: pathFile
	| fileStream |

	fileStream := FileStream write: pathFile text: false.
	self binaryStoreOn: fileStream.
	fileStream close!

generateMethodsReportFor: anUMLModel
	 | methods reportString excelReport |

	excelReport := MSExcel new: (MSExcel tempPath, 'Method Report.xls').
	Clipboard current empty.
	reportString := 'Class', String tab, 'Method', String tab, 'Sent Messages', String tab, 'Referenced Classes', String tab, 'Senders', String tab, 'Arguments', String tab, 'Temporaries', String lineDelimiter.
	methods := anUMLModel allImplementations asSortedCollection: [:a :b | (a methodClass name, a methodName) <= (b methodClass name, b methodName)].

	methods do: [:eachMethod | 
		reportString :=  reportString, eachMethod methodClass name, String tab, eachMethod methodName, String tab.
		reportString :=  reportString, eachMethod sentMessages size printString , String tab.
		reportString :=  reportString, (eachMethod referencedClassesIn: anUMLModel) size printString, String tab.
		reportString :=  reportString, (self getReferencesTo: eachMethod methodName) size printString, String tab.
		reportString :=  reportString, eachMethod arguments size printString, String tab.
		reportString :=  reportString, eachMethod temporaries size printString, String tab.
		reportString := reportString, String lineDelimiter.].

	Clipboard current setText: reportString format: #String.

	excelReport completePaste.

	
!

getAllCategories
	| all |

	all := Set new. 
	umlModels do: [:each | all addAll: each getAllCategories].
	^all asSortedCollection: [:a :b | a name <= b name]!

getAllClasses
	| allClasses |

	allClasses := OrderedCollection withAll: self getUMLClasses.
	allClasses addAll: (systemDictionary asOrderedCollection collect: [:each | each instanceClass]).

	^allClasses!

getAllClassesAsSortedCollection

	^self getAllClasses asSortedCollection: [:a :b | a name <= b name]!

getAllClassesNames

	^self getAllClasses collect: [:each | each name]!

getAllImplementations
	| definitions |

	definitions := OrderedCollection new.
	umlModels do: [:each | definitions addAll: each getAllImplementations].
	^definitions asSortedCollection: [:a :b | a methodName <= b methodName]!

getAllImplementationsAsSortedCollection
	"This method control what implementations are shown if the context can not be found. 
	In this implementation we answer a collection with all implementations in all UML Models but we now include VM method (this can be changed) "
	| implementations |

	implementations := OrderedCollection new.
	umlModels do: [:each | implementations addAll: each allImplementationsAsSortedCollection].
	systemDictionary do: [:each | implementations addAll: each instanceClass allImplementationsAsSortedCollection].
	^implementations copyWithoutDuplicates!

getAllImplementationsNamed: aString
	| definitions |

	definitions := OrderedCollection new.
	umlModels do: [:each | definitions addAll: (each getAllImplementationsNamed: aString)].
	^definitions!

getAllImplementationsWithDescription: aString
	| implementations |

	implementations := OrderedCollection new.
	umlModels do: [:each | implementations addAll: each allImplementations].

	^implementations select: [:each | aString match: each comments asString]!

getAllMetaclassCategories
	| all |

	all := Set new. 
	umlModels do: [:each | all addAll: each getAllMetaclassCategories].
	^all asSortedCollection: [:a :b | a name <= b name]!

getAllUserImplementations
	| definitions |

	definitions := OrderedCollection new.
	umlModels do: [:each | definitions addAll: each getAllImplementations].
	definitions := definitions reject: [:each | (each methodName = #initialize) or: [(each methodName indexOf: $:) ~= 0]].

	^(definitions asSortedCollection: [:a :b | a methodName <= b methodName]) !

getAnyClassNamed: aString 
	" Answer anUMLClass with the name <aString>, the receiver look inside UMLModels and the SystemDictionary "

	^self getAnyClassNamed: aString ifAbsent: [nil]!

getAnyClassNamed: aString ifAbsent: aBlock
	" Answer anUMLClass with the name <aString>, the receiver look inside UMLModels and the SystemDictionary "
	| selectedClass |

	selectedClass := (self virtualMachineClassNamedLowercase: aString).
	selectedClass ~~ self nilObject ifTrue: [^selectedClass].
	selectedClass := (self classNamed: aString).
	selectedClass ~~ self nilObject ifTrue: [^selectedClass].
	^aBlock value

	!

getBasicObjectFrom: aString 

	((aString indexOfSubCollection: '''') ~= 0) ifTrue: [^(aString copyWithoutAll: '''') asUMLObject: self].

	^(aString asNumberOnError: [:err | aString asUMLObject: self]) asUMLObject: self!

getClassNamedLike: aString 
	"The receiver answer a collection with classes with it's name match with <aString>"
	| classes |

	classes := OrderedCollection new.
	umlModels do: [:each | classes addAll: (each getClassNamedLike: aString)].

	^classes asSortedCollection: [:a :b | a name <= b name]!

getNumber: aNumber
	" The receiver answer anUMLInstance of class UMLClass('Number') where the Smalltalk Object is <aNumber>"
	"All numbers are created on demand, after aNumber -anUMLInstance of class UMLClass('Number')- is created this instance is answered in all ocassions"

	^self getNumber: aNumber ifAbsent: []!

getNumber: aNumber ifAbsent: aBlock
	" The receiver answer anUMLInstance of class UMLClass('Number') where the Smalltalk Object is <aNumber>"
	"All numbers are created on demand, after aNumber -anUMLInstance of class UMLClass('Number')- is created this instance is answered in all ocassions"

	^numbers at: aNumber printString ifAbsent: aBlock!

getReferencesTo: implementationName
	| references |

	references := OrderedCollection new.
	self getAllClasses do: [:each | 
		references addAll: (each getReferencesTo: implementationName).
		references  addAll: (each getMetaclass getReferencesTo: implementationName). ].

	^references!

getReferencesToClassName: className

	^self getAllImplementations select: [:each | (each hasReferencesToClassName: className)]
!

getUMLClasses
	| allClasses |

	allClasses := OrderedCollection new.
	umlModels do: [:each | allClasses addAll: each umlClasses].

	^allClasses!

getUMLModelNamed: aString

	^umlModels detect: [:each | each name = aString] ifNone: [nil]!

getUMLModelNamed: aString ifNone: aBlock

	^umlModels detect: [:each | each name = aString] ifNone: [aBlock value]!

getUserCategories

	^self getAllCategories select: [:each | each isUserCategory]!

getVirtualMachineImplementations
	| vmImplementations |

	vmImplementations := OrderedCollection new.
	systemDictionary do: [:each | vmImplementations addAll: each implementations asOrderedCollection].

	^vmImplementations!

hasClassNamed: aString
	"The receiver answer whether or not has a class named <aString >"

	self getAnyClassNamed: aString ifAbsent: [^false].
	^true!

hasDefinitionNamed: aSymbol
	"The receiver (VM) answer a collection of UMLParsedImplementation with the name of <aSymbol>"

	^self getAllClasses anySatisfy: [:each | each canUnderstand: aSymbol]!

hasLooseDefinitionNamed: aSymbol for: anUMLModel
	"The receiver answer whether or not it has a definition named <aSymbol> in all UML Models but in <anUMLModel>"

	^(umlModels asOrderedCollection copyWithout: anUMLModel) anySatisfy: [:each | each hasDefinitionNamed: aSymbol ]!

hasMetaDefinitionNamed: aSymbol
	"The receiver (VM) answer a collection of UMLParsedImplementation with the name of <aSymbol>"

	^(self getAllClasses collect: [:each | each getMetaclass]) anySatisfy: [:each | each canUnderstand: aSymbol]!

includesAnyClassNamed: aString

	self classNamed: aString ifNone: [self virtualMachineClassNamed: aString ifNone: [^false]].

	^true!

includesClassNamed: aString
	"Answer whether the receiver has a class named <aString> or not "

	^systemDictionary includesKey: aString!

includesPackage: anUMLVirtualMachinePackage

	^self includesPackageNamed: anUMLVirtualMachinePackage name!

includesPackageNamed: aString

	^packages includesKey: aString!

includesTraitNamed: aString

	^traits includesKey: aString!

includesUMLModel: anUMLModel
	" Add <anUMLModel> to the receiver "

	^umlModels includesKey: anUMLModel name!

initialize

	super initialize.

	systemDictionary := LookupTable new.
	primitiveObjects := LookupTable new.
	umlModels := LookupTable new.
	numbers := LookupTable new.
	userGlobals := LookupTable new.
	traits := LookupTable new.
	packages := LookupTable new.
	typeMapping := UMLClassAttribute initializeTypeMapping.
	isDeployment := false.

	self addUMLMetaclass: (UMLMetaclass newNamed: 'Object').!

installUMLModel: anUMLModel 

"we avoid clash with existing classes names"
	self avoidClassNameClashingFor: anUMLModel.

	self addUMLModel: anUMLModel.
	anUMLModel setVirtualMachineToAll.
	(anUMLModel umlClasses select: [:each | each umlSuperclass isNil]) 
		do: [:each | each umlSuperclass: self objectClass.
				each metaclass umlSuperclass: self objectClass metaclass].

	anUMLModel classesDo: [:eachClass | eachClass addTrait: (self traitNamed: 'UML Relations Methods')].

	anUMLModel generateKeysAtGlobalCache.!

intervalClass
	^self virtualMachineClassNamed: 'Interval'!

isDeployment
	^isDeployment!

isDeployment: anObject
	isDeployment := anObject!

isInstanceBehaviorAvailable
	^isInstanceBehaviorAvailable!

isInstanceBehaviorAvailable: anObject
	isInstanceBehaviorAvailable := anObject!

logIsActive

	^transLog logIsActive!

metaclassesAsTreeModel
	"Answer aTreeModel with Virtual Machine's metaclasses of the receiver using UMLCLass('Object') metaclass as the father of all objects. The superclass of UMLCLass('Object') metaclass is UMLCLass('UndefinedObject') "

	^self objectClass metaclass asTreeModel
	
	!

metaclassNamed: aString
	"The receiver answer a metaclass named <aString> if absent answer anUMLInstance of UMLClass(''UndefinedObject)"
	| instanceClass |

	instanceClass := self classNamed: aString.
	instanceClass == self nilObject ifTrue: [^self nilObject].

	^instanceClass metaclass!

nilObject

	^primitiveObjects at: 'nil'!

nilObjectClass

	^self virtualMachineClassNamed: 'UndefinedObject'!

numberClass

	^self virtualMachineClassNamed: 'Number'!

numbers
	^numbers!

numbers: anObject
	numbers := anObject!

objectClass

	^self virtualMachineClassNamed: 'Object'!

orderedCollectionClass

	^self virtualMachineClassNamed: 'OrderedCollection'!

packages
	^packages!

packages: anObject
	packages := anObject!

packagesAsSortedCollection

	^packages asSortedCollection: [:a :b | a name <= b name]!

primitiveObjects
	^primitiveObjects!

primitiveObjects: anObject
	primitiveObjects := anObject!

processPrimitiveCall: primitiveNumber receiver: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver process the primitive call number <primitiveNumber> sent to <anUMLObject> with arguments <anArray> in the context of <anUMLExecutionSnapshot>"
	| primitiveSelector |

	primitiveSelector := ('processPrimitiveCall_', primitiveNumber printString, ':', 'withArguments:snapshot:') asSymbol.

	(self class canUnderstand: primitiveSelector) ifFalse: [UMLPrimitiveNotFound signal: 'Primitive <', primitiveNumber printString, '> not found.' ].

	^[self perform: primitiveSelector withArguments: (Array with: anUMLInstance with: anArray with: anUMLExecutionSnapshot)] 
		on: Error, StackOverflow
		do: [:ex | (MessageBox confirm: ('[', ex description, '].', String lineDelimiter,'Primitive call has failed do you want to open a Smalltalk debugger ?')) 
				ifTrue: [ex signal] 
				ifFalse: [self nilObject] ]
"<primitiveNumber> CLASSIFICATION
100 - Object Mapping between Dolphin VM and UML VM (smalltalkObject asUMLObject:)
200 - UML Virtual Machine process
300 - UML Structure
400 - UML Model Structure
500 - UML Debug
600 - External Interface
"
!

processPrimitiveCall_101: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver process the primitive call number <101> sent to <anUMLObject> with arguments <anArray> in the context of <anUMLExecutionSnapshot>"
	"The -1- Primitive get the #smalltalkObject from <anUMLInstance> and <anArray> and perform a Dolphin Smalltalk direct operation using the selector of <anUMLExecutionSnapshot>"
	"1- Get the Smalltalk Objects from all UML Objects
	2- Perform the selector of <anUMLExecutionSnapshot> for these Smalltalk Objects"
	"Pure Primitive"

	^anUMLInstance smalltalkObject 
			perform: anUMLExecutionSnapshot selector 
			withArguments: (anArray collect: [:each | each smalltalkObject])!

processPrimitiveCall_102: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver process the primitive call number <102> sent to <anUMLObject> with arguments <anArray> in the context of <anUMLExecutionSnapshot>"
	"The -1- Primitive get the #smalltalkObject from <anUMLInstance> and perform a Dolphin Smalltalk direct operation using the selector of <anUMLExecutionSnapshot>"
	"1- Get the Smalltalk Object from <anUMLInstance> UML Objects
	2- Perform the selector of <anUMLExecutionSnapshot> for these Smalltalk Objects with elements of Array being UMLInstances"
	"Mixed Primitive"

	^anUMLInstance smalltalkObject perform: anUMLExecutionSnapshot selector withArguments: anArray
	!

processPrimitiveCall_103: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver process the primitive call number <103> sent to <anUMLObject> with arguments <anArray> in the context of <anUMLExecutionSnapshot>"
	"The -3- Primitive get the #smalltalkObject from <anUMLInstance> and perform a Dolphin Smalltalk mapped direct operation using a prefix and the selector of <anUMLExecutionSnapshot>"
	"1- Get the Smalltalk Object from <anUMLInstance> UML Objects
	2- Perform the prefix plus the selector of <anUMLExecutionSnapshot>"
	"Here in this Primitive <3> we perform special Dolphin Smalltalk selector with prefix #uml_xxx, these method call their Smalltalk counterpart #xxx.(check Dictionary>>uml_at:put:)
	Are useful for speed in case of Array and Dictionaries, where the Keys are Smalltalk objects and the values are UML Objects, this is possible because all #uml_ Smalltalk implementations"

	^anUMLInstance smalltalkObject perform: ('uml_', anUMLExecutionSnapshot selector) asSymbol withArguments: anArray
	!

processPrimitiveCall_104: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver process the primitive call number <105> sent to <anUMLObject> with arguments <anArray> in the context of <anUMLExecutionSnapshot>"
	"Object>>class"

	^anUMLInstance umlClass
	!

processPrimitiveCall_105: anUMLClass withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver perform the #newInstance method against <anUMLClass> with arguments <anArray>.
	This message answer anUMLInstance of <anUMLClass> "
	"Object class>>newInstance"
	| result |

	result := anUMLClass perform: #newInstance withArguments: anArray.
	^result!

processPrimitiveCall_106: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver perform the #newInstance method against <anUMLClass> with arguments <anArray>.
	This message answer anUMLInstance of <anUMLClass> "
	"Object>>updateInstance"
	| result |

	result := anUMLInstance perform: #updateInstance withArguments: anArray.
	^result!

processPrimitiveCall_120: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_Interval_do> in the context of <anUMLInstance> with arguments <anArray>"
	"OrderedCollection>>collect:"
	| result block |

	block := anArray last.

	result := anUMLInstance smalltalkObject collect: [:each | block vmPerform: #value: withArguments: (Array with: each) parentSnapshot: anUMLExecutionSnapshot].

	^result asUMLObject: self	!

processPrimitiveCall_121: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"OrderedCollection>>detect:
	OrderedCollection>>detect:ifNone:"
	| result block exceptionBlock |

	block := (anArray size = 1 "detect:") 
		ifTrue: [exceptionBlock := self nilObject vmPerform: #asBlock.
			anArray last] 
		ifFalse: ["detect:ifNone" 
			exceptionBlock := anArray last.
			anArray first].

"the evaluation of the UMLBlock answer anUMLBoolean so we get the #smalltalkObject because we are using a -native- Smalltalk #detect: that use Smalltalk booleans"
	result := anUMLInstance smalltalkObject 
		detect: [:each | | blockValue |
			blockValue := block vmPerform: #value: withArguments: (Array with: each) parentSnapshot: anUMLExecutionSnapshot.
			blockValue smalltalkObject "here we get the Smalltalk boolean"] 
		ifNone: [^exceptionBlock vmPerform: #value].

	^result asUMLObject: self!

processPrimitiveCall_122: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_Interval_do> in the context of <anUMLInstance> with arguments <anArray>.
	OrderedCollection>>do:"
	| result block |

	block := anArray last.

	result := anUMLInstance smalltalkObject do: [:each | block vmPerform: #value: withArguments: (Array with: each) parentSnapshot: anUMLExecutionSnapshot].

	^result asUMLObject: self!

processPrimitiveCall_123: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"OrderedCollection>>select:"
	| result block |

	block := anArray last.

"the evaluation of the UMLBlock answer anUMLBoolean so we get the #smalltalkObject because we are using a -native- Smalltalk #select: that use Smalltalk booleans"
	result := anUMLInstance smalltalkObject select: [:each | | blockValue |
		blockValue := block vmPerform: #value: withArguments: (Array with: each) parentSnapshot: anUMLExecutionSnapshot.
		blockValue smalltalkObject "here we get the Smalltalk boolean"].

	^result asUMLObject: self!

processPrimitiveCall_124: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_Interval_do> in the context of <anUMLInstance> with arguments <anArray>.
	OrderedCollection>>allSatisfy:"
	| result block |

	block := anArray last.

	result := anUMLInstance smalltalkObject allSatisfy: [:each | (block vmPerform: #value: withArguments: (Array with: each) parentSnapshot: anUMLExecutionSnapshot) smalltalkObject].

	^result asUMLObject: self!

processPrimitiveCall_125: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_Interval_do> in the context of <anUMLInstance> with arguments <anArray>.
	OrderedCollection>>anySatisfy:"
	| result block |

	block := anArray last.

	result := anUMLInstance smalltalkObject anySatisfy: [:each | (block vmPerform: #value: withArguments: (Array with: each) parentSnapshot: anUMLExecutionSnapshot) smalltalkObject].

	^result asUMLObject: self!

processPrimitiveCall_126: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"OrderedCollection>>reject:"
	| result block |

	block := anArray last.

"the evaluation of the UMLBlock answer anUMLBoolean so we get the #smalltalkObject because we are using a -native- Smalltalk #reject that use Smalltalk booleans"
	result := anUMLInstance smalltalkObject reject: [:each | | blockValue |
		blockValue := block vmPerform: #value: withArguments: (Array with: each) parentSnapshot: anUMLExecutionSnapshot.
		blockValue smalltalkObject "here we get the Smalltalk boolean"].

	^result asUMLObject: self!

processPrimitiveCall_127: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"OrderedCollection>>asSortedCollection:"
	"Here we pass to Dolphin Native Sort Alghorithm anUMLInstance as block arugment <block smalltalkObject>. The Dolphin Native Sort Alghorithm knows nothing about 	anUMLInstnace but it takes it's sortBlock send the message #value:value:, since UMLBlockClosureNode support #value:value:, we can use the Dolphin Native Sort Alghorithm to use #asSortedCollection: inside U-Fabrik"
	| block newCollection |

	block := anArray last.
	newCollection := self orderedCollectionClass newInstance.
"asSortedCollection: is a Native Dolphin Message with anUMLInstance as argument"
	newCollection smalltalkObject: (anUMLInstance smalltalkObject asSortedCollection: block smalltalkObject "anUMLBlockClosureNode that can understand: #value:value"). 

	^newCollection!

processPrimitiveCall_128: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Dictionary>>keys"

	^(anUMLInstance smalltalkObject keys collect: [:each | each asUMLObject: self ]) asUMLObject: self
!

processPrimitiveCall_129: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Dictionary>>keysAndValuesDo:"
	| result block |

	block := anArray last.

	result := anUMLInstance smalltalkObject keysAndValuesDo: [:eachKey :eachValue | 
				block vmPerform: #value:value: withArguments: (Array with: (eachKey asUMLObject: self) with: eachValue) parentSnapshot: anUMLExecutionSnapshot].

	^result asUMLObject: self
!

processPrimitiveCall_130: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_Interval_do> in the context of <anUMLInstance> with arguments <anArray>"
	"Interval>>do:"
	| result block |

	block := anArray last.

	result := anUMLInstance smalltalkObject collect: [:each | block vmPerform: #value: withArguments: (Array with: (each asUMLObject: self)) parentSnapshot: anUMLExecutionSnapshot].
	
	^result last!

processPrimitiveCall_139: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" ShellLibrary shellOpen: "
	| pathFile |

	pathFile := anArray last.

	[ShellLibrary default shellOpen: pathFile smalltalkObject] on: Error do: [:ex | ^(self errorClass newInstance vmPerform: #messageText: withArguments: (Array with: (ex asUMLObject: self))) ].

	^anUMLInstance!

processPrimitiveCall_151: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"OrderedCollection>>add:"
	| relation instVarName objectToAdd objectReceiver |

	objectToAdd := anArray last.
	"if the object to add belong to virtual machine then is a VM object --> we perform the normal #add:"
	objectToAdd belongToVirtualMachine ifTrue: [^self  processPrimitiveCall_102: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot].
	"if the object to add does NOT come from a Trait Method --> it means that is a simple a #add: to a collection. Note: #add: or #remove: to instVar is forbiden by the compiler"
	anUMLExecutionSnapshot parentSnapshot isTrait ifFalse: [^self  processPrimitiveCall_102: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot].

	"if the object to add NOT belong to virtual machine then is a Domain Object we have to check UML Objects relations and
	the object to add COME from a  Trait method --> is an add between two related classes in anUMLModel"
	objectReceiver := anUMLExecutionSnapshot parentSnapshot receiverObject. "we obtain the original Domain Object"
	relation := objectReceiver relationFor: objectToAdd ifNone: [^self nilObject].
	instVarName := relation hasAlias 
		ifFalse: [ | relatedClass |
			relatedClass := (relation relatedClassTo: objectReceiver umlClass).
			relatedClass isClassAssociation 
				ifTrue: [(objectToAdd umlClass == relation umlclass) ifFalse: [objectToAdd umlClass nameForRelation] ifTrue: [relation umlclass nameForRelation] ] 
				ifFalse: [relatedClass nameForRelation asSymbol]]
		ifTrue: [relation alias]. "name of instance variable that holds the collection"

	^(objectReceiver atVariableName: instVarName) smalltalkObject add: objectToAdd
!

processPrimitiveCall_152: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"OrderedCollection>>remove:"
	| relation instVarName objectToRemove objectReceiver |

	objectToRemove := anArray last.
	"if the object to add belong to virtual machine then is a VM object --> we perform the normal #add:"
	objectToRemove belongToVirtualMachine ifTrue: [^self  processPrimitiveCall_103: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot].
	"if the object to add does NOT come from a Trait Method --> it means that is a simple a #add: to a collection"
	anUMLExecutionSnapshot parentSnapshot isTrait ifFalse: [^self  processPrimitiveCall_102: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot].

	"if the object to add NOT belong to virtual machine then is a Domain Object we have to check UML Objects relations and
	the object to add COME from a  Trait method --> is an add between two related classes in anUMLModel"
	objectReceiver := anUMLExecutionSnapshot parentSnapshot receiverObject. "we obtain the original Domain Object"
	relation := objectReceiver relationFor: objectToRemove ifNone: [^self nilObject].
	instVarName := relation hasAlias 
		ifFalse: [ | relatedClass |
			relatedClass := (relation relatedClassTo: objectReceiver umlClass).
			relatedClass isClassAssociation 
				ifTrue: [(objectToRemove umlClass == relation umlclass) ifFalse: [objectToRemove umlClass nameForRelation] ifTrue: [relation umlclass nameForRelation] ] 
				ifFalse: [relatedClass nameForRelation asSymbol]]
		ifTrue: [relation alias]. "name of instance variable that holds the collection"

	^(objectReceiver atVariableName: instVarName) smalltalkObject remove: objectToRemove ifAbsent: []!

processPrimitiveCall_201: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_Interval_do> in the context of <anUMLInstance> with arguments <anArray>"
	"Object>>vmPerform:withArguments:"

	^self send: anArray first smalltalkObject asSymbol to: anUMLInstance withAll: anArray second smalltalkObject parentSnapshot: anUMLExecutionSnapshot
!

processPrimitiveCall_202: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <anUMLBlockMessage_value> in the context of <anUMLInstance> with arguments <anArray>"
	" The receiver process the Block contained in <anUMLBlockMessage_valueWithArguments> in the context of <anUMLInstance> with arguments <anArray>"
	"Block>>value"
	| blockNode blockResult |

	blockNode := anUMLInstance smalltalkObject.

	blockResult := self executeSequenceNodeReturningAll: blockNode sequenceNode in: blockNode smalltalkObject snapshot.

	blockResult isEmpty ifTrue: [^self nilObject].

	^blockResult last
!

processPrimitiveCall_203: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_valueWithArguments> in the context of <anUMLInstance> with arguments <anArray>"
	"Block>>value:"
	| blockNode blockResult |

	blockNode := anUMLInstance smalltalkObject.

	anArray keysAndValuesDo: [:eachKey :eachValue | blockNode snapshot addTemporary: eachValue named: (blockNode arguments at: eachKey)] .

	blockResult := self executeSequenceNodeReturningAll: blockNode sequenceNode in: blockNode snapshot.

	^blockResult last!

processPrimitiveCall_204: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_valueWithArguments> in the context of <anUMLInstance> with arguments <anArray>"
	"Block>>valueWithArguments:"
	| blockNode blockResult arguments |

	blockNode := anUMLInstance smalltalkObject.

	arguments := anArray first smalltalkObject.
	arguments keysAndValuesDo: [:eachKey :eachValue | blockNode snapshot addTemporary: eachValue named: (blockNode arguments at: eachKey)] .

	blockResult := self executeSequenceNodeReturningAll: blockNode sequenceNode in: blockNode snapshot.

	^blockResult last!

processPrimitiveCall_205: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_valueWithArguments> in the context of <anUMLInstance> with arguments <anArray>"
	"Block>>whileTrue:"
	| blockResult blockToEvaluate |

	blockToEvaluate := anArray first.

	[(anUMLInstance vmPerform: #value) smalltalkObject] whileTrue: [blockResult := blockToEvaluate vmPerform: #value].


	^blockResult ifNil: [self nilObject] ifNotNil: [:value | value]!

processPrimitiveCall_206: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_valueWithArguments> in the context of <anUMLInstance> with arguments <anArray>"
	"Block>>whileTrue"

	[(anUMLInstance vmPerform: #value) smalltalkObject] whileTrue.

	^self trueObject!

processPrimitiveCall_207: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_valueWithArguments> in the context of <anUMLInstance> with arguments <anArray>"
	"Block>>whileFalse:"
	| blockResult blockToEvaluate |

	blockToEvaluate := anArray first.

	[(anUMLInstance vmPerform: #value) smalltalkObject] whileFalse: [blockResult := blockToEvaluate vmPerform: #value].


	^blockResult ifNil: [self nilObject] ifNotNil: [:value | value]!

processPrimitiveCall_208: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <aUMLBlockMessage_valueWithArguments> in the context of <anUMLInstance> with arguments <anArray>"
	"Block>>whileFalse"

	[(anUMLInstance vmPerform: #value) smalltalkObject] whileFalse.

	^self trueObject!

processPrimitiveCall_209: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	" The receiver process the Block contained in <anUMLBlockMessage_valueWithArguments> in the context of <anUMLInstance> with arguments <anArray>
	[4 foo] on: Error do: [:err | err message]"
	"Block>>on:do: "
	| blockNode blockResult exceptionBlock |

	blockNode := anUMLInstance smalltalkObject. "block to evaluate"
	exceptionBlock := anArray second. "exception block if <blockNode> Fails"

	blockNode catchException.
	blockResult := self executeSequenceNodeReturningAll: blockNode sequenceNode in: blockNode smalltalkObject snapshot.

	(#('Error' 'Exception' 'Warning') includes: blockResult last umlClassName) "The previous Block answer anException --> we execute <exceptionBlock>"
	ifTrue: [^exceptionBlock vmPerform: #value: withArguments: (Array with: blockResult last)]. 
	
	^blockResult last
!

processPrimitiveCall_301: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>getCollectionToIterateOver:"
	| anUMLClass instVarName relation |

	anUMLClass := anArray first. 
	relation := anUMLInstance relationFor: anUMLClass ifNone: [^self nilObject].
	instVarName := relation hasAlias ifFalse: [(relation relatedClassTo: anUMLInstance umlClass) nameForRelation asSymbol] ifTrue: [relation alias]. "name of instance variable that holds the collection"
	^anUMLInstance atVariableName: instVarName ifAbsent: [self nilObject]
!

processPrimitiveCall_302: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>getCollectionToOperateWith:"
	| anUMLClass instVarName relation |

	anUMLClass := anArray first. 
	relation := anUMLInstance relationFor: anUMLClass ifNone: [^self nilObject].
	instVarName := relation hasAlias ifFalse: [(relation relatedClassTo: anUMLInstance umlClass) nameForRelation asSymbol] ifTrue: [relation alias]. "name of instance variable that holds the collection"
	^anUMLInstance atVariableName: instVarName ifAbsent: [self nilObject]
!

processPrimitiveCall_303: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer the variable named as in <anArray> arguments to <anUMLInstance>"
	"Object>>getVariableNamed:"
	| variableName |

	variableName := anArray last smalltalkObject asSymbol.
	^anUMLInstance variableName: variableName ifNone: [self nilObject]
!

processPrimitiveCall_304: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Set the variable named as in <anArray> arguments to <anUMLInstance>"
	"Object>>setVariableNamed:with:"

	^self setVariableNamed: anArray first smalltalkObject asSymbol with: anArray second to: anUMLInstance errorIfNotExist: false

!

processPrimitiveCall_305: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>setDirectRelationWith:"
	| instanceToSet instVarName relation |

	instanceToSet := anArray last. 
	relation := anUMLInstance relationFor: instanceToSet ifNone: [^self nilObject].
	instVarName := relation isAssociationClass
	ifFalse: [relation hasAlias 
			ifFalse: [ | relatedClass |
				relatedClass := (relation relatedClassTo: anUMLInstance umlClass).
				relatedClass isClassAssociation 
					ifTrue: [(instanceToSet umlClass == relation umlclass) ifFalse: [instanceToSet umlClass nameForRelation] ifTrue: [relation umlclass nameForRelation] ] 
					ifFalse: [relatedClass nameForRelation asSymbol]]
			ifTrue: [relation alias]. "name of instance variable that holds the collection"]
	ifTrue: [anUMLInstance umlClass getInstVarNameForClass: instanceToSet umlClass]. "if an association class we do not care about the alias, because the ClassAssociation has 2 inst var to each related class, we obtain the related class from the <instanceToSet> object"

	^anUMLInstance atVariableName: instVarName put: instanceToSet.
!

processPrimitiveCall_306: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>getCollectionToIterateOver:ifNone:"
	| anUMLClass instVarName relation exceptionBlock |

	anUMLClass := anArray first. 
	exceptionBlock := anArray second.
	exceptionBlock ifNil: [^(self errorClass newInstance) smalltalkObject: (Error new messageText: 'Exception block does not exist'); yourself].
	relation := anUMLInstance relationFor: anUMLClass ifNone: [^exceptionBlock vmPerform: #value].
	instVarName := relation hasAlias ifFalse: [(relation relatedClassTo: anUMLInstance umlClass) nameForRelation asSymbol] ifTrue: [relation alias]. "name of instance variable that holds the collection"
	^anUMLInstance atVariableName: instVarName ifAbsent: [exceptionBlock vmPerform: #value]
!

processPrimitiveCall_307: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>getCollectionToOperateWith:ifNone:"
	| anUMLClass instVarName relation exceptionBlock |

	anUMLClass := anArray first. 
	exceptionBlock := anArray second.
	relation := anUMLInstance relationFor: anUMLClass ifNone: [^exceptionBlock vmPerform: #value].
	instVarName := relation hasAlias ifFalse: [(relation relatedClassTo: anUMLInstance umlClass) nameForRelation asSymbol] ifTrue: [relation alias]. "name of instance variable that holds the collection"
	^anUMLInstance atVariableName: instVarName ifAbsent: [exceptionBlock vmPerform: #value]
!

processPrimitiveCall_308: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>setDirectRelationWith:"
	| instanceToSet instVarName relation exceptionBlock |

	instanceToSet := anArray last.
	exceptionBlock := anArray second.
	exceptionBlock ifNil: [^(self errorClass newInstance) smalltalkObject: (Error new messageText: 'Exception block does not exist'); yourself].
	relation := anUMLInstance relationFor: instanceToSet ifNone: [^exceptionBlock vmPerform: #value].
	instVarName := relation isAssociationClass
	ifFalse: [relation hasAlias 
			ifFalse: [ | relatedClass |
				relatedClass := (relation relatedClassTo: anUMLInstance umlClass).
				relatedClass isClassAssociation 
					ifTrue: [(instanceToSet umlClass == relation umlclass) ifFalse: [instanceToSet umlClass nameForRelation] ifTrue: [relation umlclass nameForRelation] ] 
					ifFalse: [relatedClass nameForRelation asSymbol]]
			ifTrue: [relation alias]. "name of instance variable that holds the collection"]
	ifTrue: [instanceToSet umlClass nameForRelation asSymbol]. "if an association class we do not care about the alias, because the ClassAssociation has 2 inst var to each related class, we obtain the related class from the <instanceToSet> object"

	^anUMLInstance atVariableName: instVarName put: instanceToSet.
!

processPrimitiveCall_309: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer the variable named as in <anArray> arguments to <anUMLInstance>"
	"Object>>getAllAttributesNames"

	^(anUMLInstance instancesVariables keys collect: [:each | each asUMLObject: self ]) asUMLObject: self!

processPrimitiveCall_401: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>storeAsGlobalObject"

	(self umlModelOf: anUMLInstance umlClass) storeGlobalObject: anUMLInstance.
	^anUMLInstance!

processPrimitiveCall_402: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>removeFromGlobalObjects"

	(self umlModelOf: anUMLInstance umlClass) removeGlobalObject: anUMLInstance.
	^anUMLInstance!

processPrimitiveCall_403: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>storeAsSetupObject"

	(self umlModelOf: anUMLInstance umlClass) storeSetupObject: anUMLInstance.
	^anUMLInstance!

processPrimitiveCall_404: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver answer <anUMLInstance> that represent a Collection for collect (and relate) instance of <anArray>"
	"Object>>removeFromSetupObjects"

	(self umlModelOf: anUMLInstance umlClass) removeSetupObject: anUMLInstance.
	^anUMLInstance!

processPrimitiveCall_405: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Object class>>getParametricObjectSatisfying:"
	| objectsCollection |

	objectsCollection := (OrderedCollection withAll: (anUMLInstance umlModel getSetupObjectsOf: anUMLInstance)) asUMLObject: self. "we get the set up object from the model "

	anUMLInstance umlClass hasSubclasses
	ifTrue: [anUMLInstance umlClass allSubclasses do: [:eachSubClass | objectsCollection addAll: ((eachSubClass umlModel getSetupObjectsOf: eachSubClass) asUMLObject: self)].].

	^objectsCollection vmPerform: #select: withArguments: anArray!

processPrimitiveCall_406: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Object class>>getGlobalObjectSatisfying:"
	| objectsCollection |

	objectsCollection := (OrderedCollection withAll: (anUMLInstance umlModel getGlobalObjectsOf: anUMLInstance getMetaclass)) asUMLObject: self. "we get the set up object from the model "

	anUMLInstance umlClass hasSubclasses
	ifTrue: [anUMLInstance umlClass allSubclasses do: [:eachSubClass | objectsCollection addAll: ((eachSubClass umlModel getGlobalObjectsOf: eachSubClass) asUMLObject: self)].].

	^objectsCollection vmPerform: #select: withArguments: anArray!

processPrimitiveCall_407: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Object class>>getGlobalObjectSatisfying:"
	| objectsCollection |

	objectsCollection := (OrderedCollection withAll: (anUMLInstance umlModel getGlobalObjectsOf: anUMLInstance getMetaclass)) asUMLObject: self. "we get the set up object from the model "

	anUMLInstance umlClass hasSubclasses
	ifTrue: [anUMLInstance umlClass allSubclasses do: [:eachSubClass | objectsCollection addAll: ((eachSubClass umlModel getGlobalObjectsOf: eachSubClass) asUMLObject: self)].].

	^objectsCollection vmPerform: #select: withArguments: (Array with: anArray first)!

processPrimitiveCall_520: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Evaluate the sequence of MessageSends registered for the receiver and the event, anEventSymbol. Passes the array of parameters to each message send.
	Answer the value returned by the last respondent.
	Smalltalk: trigger:"
	| triggerEvent eventMessageSequence |

	triggerEvent := anArray first smalltalkObject asSymbol.
	eventMessageSequence := anUMLObject events at: triggerEvent ifAbsent: [^anUMLExecutionSnapshot nilObject].

	eventMessageSequence messagesDo: [:eachEventMessageSend | 
		eachEventMessageSend receiver vmPerform: eachEventMessageSend selector].!

processPrimitiveCall_521: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Register an event handler such that when the receiver triggers the event anEventSymbol, the unary selector, aSelector, is sent to anObject.
	Smalltalk: when:send:to:"
	| publisher |

	publisher := anArray third. "this is the object that invokes the #trigger: message"

	publisher when: anArray first smalltalkObject asSymbol "event symbol"
		send: anArray second smalltalkObject asSymbol "event handler"
		to: anUMLObject.

	^anArray first
	!

processPrimitiveCall_522: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Register an event handler such that when the receiver triggers the event anEventSymbol, the unary selector, aSelector, is sent to anObject.
	Smalltalk: trigger:withArguments:"
	| triggerEvent eventMessageSequence |

	triggerEvent := anArray first smalltalkObject asSymbol.
	eventMessageSequence := anUMLObject events at: triggerEvent ifAbsent: [^anUMLExecutionSnapshot nilObject].

	eventMessageSequence messagesDo: [:eachEventMessageSend | 
		eachEventMessageSend receiver vmPerform: eachEventMessageSend selector withArguments: anArray second smalltalkObject].!

processPrimitiveCall_523: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Register an event handler such that when the receiver triggers the event anEventSymbol, the unary selector, aSelector, is sent to anObject.
	Smalltalk: when:send:to:withArguments:"
	| publisher |

	publisher := anArray third. "this is the object that invokes the #trigger: message"

	publisher when: anArray first smalltalkObject asSymbol "event symbol"
		send: anArray second smalltalkObject asSymbol "event handler"
		to: anUMLObject.

	^anArray first!

processPrimitiveCall_524: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Register an event handler such that when the receiver triggers the event anEventSymbol, the unary selector, aSelector, is sent to anObject.
	Smalltalk: trigger:with:"
	| triggerEvent eventMessageSequence |

	triggerEvent := anArray first smalltalkObject asSymbol.
	eventMessageSequence := anUMLObject events at: triggerEvent ifAbsent: [^anUMLExecutionSnapshot nilObject].

	eventMessageSequence messagesDo: [:eachEventMessageSend | 
		eachEventMessageSend receiver vmPerform: eachEventMessageSend selector withArguments: (Array with: anArray second)].!

processPrimitiveCall_526: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Register an event handler such that when the receiver triggers the event anEventSymbol, the unary selector, aSelector, is sent to anObject.
	Smalltalk: trigger:with:with:"
	| triggerEvent eventMessageSequence |

	triggerEvent := anArray first smalltalkObject asSymbol.
	eventMessageSequence := anUMLObject events at: triggerEvent ifAbsent: [^anUMLExecutionSnapshot nilObject].

	eventMessageSequence messagesDo: [:eachEventMessageSend | 
		eachEventMessageSend receiver vmPerform: eachEventMessageSend selector withArguments: (Array with: anArray second with: anArray third)].!

processPrimitiveCall_530: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Register an event handler such that when the receiver triggers the event anEventSymbol, the unary selector, aSelector, is sent to anObject.
	Smalltalk: events"
	
	^(anUMLObject events keys asOrderedCollection collect: [:each | each asString asUMLObject: anUMLExecutionSnapshot virtualMachine])
		asUMLObject: anUMLExecutionSnapshot virtualMachine!

processPrimitiveCall_601: anUMLClass withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver perform the #newInstance method against <anUMLClass> with arguments <anArray>.
	This message answer anUMLInstance of <anUMLClass> "
	"ExternalFile>>open:"
	| umlFile stFile |

	umlFile := anUMLClass newInstance.
	stFile := anUMLClass smalltalkClass perform: anUMLExecutionSnapshot selector withArguments: (anArray collect: [:each | each smalltalkObject]).
	umlFile smalltalkObject: stFile.
	^umlFile!

processPrimitiveCall_602: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver process the primitive call number <602> sent to <anUMLObject> with arguments <anArray> in the context of <anUMLExecutionSnapshot>"
	"This primitive is used when we call a Dolphin Smalltalk method (which answer a Smalltalk Object) and the result has NO equivalent in UML Environment so we can NOT send #asUMLObject:, in these cases we return <anUMLInstance>"

	anUMLInstance smalltalkObject 
			perform: anUMLExecutionSnapshot selector 
			withArguments: (anArray collect: [:each | each smalltalkObject]).

	^anUMLInstance!

processPrimitiveCall_603: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Smalltalk: File>>exists:"
	|  fileName exceptionBlock |

	(anArray first belongToVirtualMachine and: [anArray first smalltalkClass == String])
	ifFalse: [^self errorClass newInstance smalltalkObject: (Error new messageText: 'The File Name Must be a String')].

	fileName := anArray first smalltalkObject.
	exceptionBlock := anArray last.

	[^(File exists: fileName) asUMLObject: self ] on: Error do: [:ex | ^exceptionBlock vmPerform: #value]!

processPrimitiveCall_604: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Smalltalk: File>>copy:to:"
	|  oldFileName newFileName exceptionBlock |

	((anArray first belongToVirtualMachine and: [anArray first smalltalkClass == String]) and: [anArray second belongToVirtualMachine and: [anArray second smalltalkClass == String]])
	ifFalse: [^self errorClass newInstance smalltalkObject: (Error new messageText: 'The File Name Must be a String')].

	oldFileName := anArray first smalltalkObject.
	newFileName := anArray second smalltalkObject.
	exceptionBlock := anArray third.

	[File copy: oldFileName to: newFileName] on: Error do: [:ex | 
		^(exceptionBlock smalltalkObject notNil and: [exceptionBlock smalltalkClass == UMLBlockClosureNode ])
		ifTrue: [exceptionBlock vmPerform: #value] 
		ifFalse: [(self errorClass newInstance) smalltalkObject: (Error new messageText: ex description; yourself).] ].

	^self trueObject!

processPrimitiveCall_605: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Smalltalk: File>>delete:"
	|  pathFile exceptionBlock |

	(anArray first belongToVirtualMachine and: [anArray first smalltalkClass == String])
	ifFalse: [^self errorClass newInstance smalltalkObject: (Error new messageText: 'The File Name Must be a String')].

	pathFile := anArray first smalltalkObject.
	exceptionBlock := anArray second.

	[File delete: pathFile] on: Error do: [:ex | 
		^(exceptionBlock smalltalkObject notNil and: [exceptionBlock smalltalkClass == UMLBlockClosureNode ])
		ifTrue: [exceptionBlock vmPerform: #value] 
		ifFalse: [(self errorClass newInstance) smalltalkObject: (Error new messageText: ex description; yourself).] ].

	^self trueObject!

processPrimitiveCall_606: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Smalltalk: File>>delete:"
	|  pathFile exceptionBlock |

	(anArray first belongToVirtualMachine and: [anArray first smalltalkClass == String])
	ifFalse: [^self errorClass newInstance smalltalkObject: (Error new messageText: 'The File Name Must be a String')].

	pathFile := anArray first smalltalkObject.
	exceptionBlock := anArray second.

	[File delete: pathFile] on: Error do: [:ex | 
		^(exceptionBlock smalltalkObject notNil and: [exceptionBlock smalltalkClass == UMLBlockClosureNode ])
		ifTrue: [exceptionBlock vmPerform: #value] 
		ifFalse: [(self errorClass newInstance) smalltalkObject: (Error new messageText: ex description; yourself).] ].

	^self trueObject!

processPrimitiveCall_607: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Smalltalk: File>>createDirectory:"
	| path exceptionBlock |

	(anArray first belongToVirtualMachine and: [anArray first smalltalkClass == String])
	ifFalse: [^self errorClass newInstance smalltalkObject: (Error new messageText: 'The File Name Must be a String')].

	path := anArray first smalltalkObject.
	exceptionBlock := anArray second.

	[File createDirectory: path] on: Error do: [:ex | 
		^(exceptionBlock smalltalkObject notNil and: [exceptionBlock smalltalkClass == UMLBlockClosureNode ])
		ifTrue: [exceptionBlock vmPerform: #value] 
		ifFalse: [(self errorClass newInstance) smalltalkObject: (Error new messageText: ex description; yourself).] ].

	^self trueObject!

processPrimitiveCall_608: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Smalltalk: File>>removeDirectory:"
	| path exceptionBlock |

	(anArray first belongToVirtualMachine and: [anArray first smalltalkClass == String])
	ifFalse: [^self errorClass newInstance smalltalkObject: (Error new messageText: 'The File Name Must be a String')].

	path := anArray first smalltalkObject.
	exceptionBlock := anArray second.

	[File removeDirectory: path] on: Error do: [:ex | 
		^(exceptionBlock smalltalkObject notNil and: [exceptionBlock smalltalkClass == UMLBlockClosureNode ])
		ifTrue: [exceptionBlock vmPerform: #value] 
		ifFalse: [(self errorClass newInstance) smalltalkObject: (Error new messageText: ex description; yourself).] ].

	^self trueObject!

processPrimitiveCall_630: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The VM  send a mail to using the arguments of <anArray> to get the actual values:"
	| configuration fields cdoMessage |

	configuration := CDOIConfiguration new. 
	fields := configuration fields. 
	(fields item: 'http://schemas.microsoft.com/cdo/configuration/sendusing') value: 2. 
	(fields item: 'http://schemas.microsoft.com/cdo/configuration/smtpserver') value: anArray fourth smalltalkObject. 
	(fields item: 'http://schemas.microsoft.com/cdo/configuration/sendusername') value: anArray second smalltalkObject. 
	(fields item: 'http://schemas.microsoft.com/cdo/configuration/sendpassword') value: anArray third smalltalkObject. 
	(fields item: 'http://schemas.microsoft.com/cdo/configuration/smtpauthenticate') value: 1. 
	fields interface Update. 	

	cdoMessage := CDOIMessage new.
	cdoMessage configuration: configuration.
	cdoMessage to: anArray first smalltalkObject;
		from: anArray second smalltalkObject;	
		subject: (anArray at: 5) smalltalkObject;
		textBody: (anArray at: 6) smalltalkObject;
		Send!

processPrimitiveCall_631: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The VM  send a mail to using the arguments of <anArray> to get the actual values:"
	| configuration fields cdoMessage |

	configuration := CDOIConfiguration new. 
	fields := configuration fields. 
	(fields item: 'http://schemas.microsoft.com/cdo/configuration/sendusing') value: 2. 
	(fields item: 'http://schemas.microsoft.com/cdo/configuration/smtpserver') value: anArray third smalltalkObject. 
	(fields item: 'http://schemas.microsoft.com/cdo/configuration/smtpauthenticate') value: 0. 
	fields interface Update. 	

	cdoMessage := CDOIMessage new.
	cdoMessage configuration: configuration.
	cdoMessage to: anArray first smalltalkObject;
		from: anArray second smalltalkObject;	
		subject: (anArray at: 4) smalltalkObject;
		textBody: (anArray at: 5) smalltalkObject;
		Send!

processPrimitiveCall_640: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The VM  creates a UNIQUE id.
	IID>>newUnique"

	^IID newUnique asString asUMLObject: self!

processPrimitiveCall_700: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	| editableObject |

	editableObject := anUMLInstance newInstance.
	editableObject runBehaviorInitialize.
	editableObject smalltalkObject umlObject: anArray last.
	^editableObject!

processPrimitiveCall_710: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Set the receiver in DEPLOYMENT mode (see UMLWebStyle) " 

	isDeployment := true.

	^true asUMLObject: self!

processPrimitiveCall_711: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Set the receiver in DEVELOPMENT mode (see UMLWebStyle) " 

	isDeployment := false.

	^true asUMLObject: self!

processPrimitiveCall_712: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the the receiver is in DEPLOYMENT mode (see UMLWebStyle) " 

	^isDeployment asUMLObject: self!

processPrimitiveCall_713: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the the receiver is in DEVELOPMENT mode (see UMLWebStyle) " 

	^isDeployment not asUMLObject: self!

processPrimitiveCall_720: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the the receiver is in DEVELOPMENT mode (see UMLWebStyle) " 

	transLog logIsActive: true.

	^self trueObject!

processPrimitiveCall_721: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the the receiver is in DEVELOPMENT mode (see UMLWebStyle) " 

	transLog logIsActive: false.

	^self falseObject!

processPrimitiveCall_722: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the the receiver is in DEVELOPMENT mode (see UMLWebStyle) " 

	transLog errorLogIsActive: true.

	^self trueObject!

processPrimitiveCall_723: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the the receiver is in DEVELOPMENT mode (see UMLWebStyle) " 

	transLog errorLogIsActive: false.

	^self falseObject!

processPrimitiveCall_724: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the the receiver is in DEVELOPMENT mode (see UMLWebStyle) " 

	transLog cleanAll.

	^self trueObject!

processPrimitiveCall_800: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the <anUMLInstance> can understand a message " 
	| methodName |

	methodName := anArray last smalltalkObject asSymbol.

	^(anUMLInstance umlClass canUnderstand: methodName) asUMLObject: self!

processPrimitiveCall_801: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the <anUMLInstance> can ANY in the hierarchy understand a message " 
	| methodName |

	methodName := anArray last smalltalkObject asSymbol.

	^(anUMLInstance umlClass canAnyUnderstand: methodName) asUMLObject: self!

processPrimitiveCall_802: anUMLClass withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the <anUMLClass> can understand a message " 
	| methodName |

	methodName := anArray last smalltalkObject asSymbol.

	^(anUMLClass getMetaclass canUnderstand: methodName) asUMLObject: self!

processPrimitiveCall_803: anUMLClass withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer if the <anUMLClass> can ANY in the hierarchy understand a message " 
	| methodName |

	methodName := anArray last smalltalkObject asSymbol.

	^(anUMLClass getMetaclass canAnyUnderstand: methodName) asUMLObject: self!

processPrimitiveCall_807: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer methods names of the metclass <anUMLObject>" 

	^((anUMLObject implementations collect: [:each | each methodName]) asSortedCollection)
		collect: [:each | each asString asUMLObject: self]!

processPrimitiveCall_808: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer methods names of the metclass <anUMLObject>" 

	^((anUMLObject allImplementationsButObject collect: [:each | each methodName]) asSortedCollection)
		collect: [:each | each asString asUMLObject: self]!

processPrimitiveCall_809: anUMLObject withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer methods names of the metclass <anUMLClass>" 

	^((anUMLObject allImplementations collect: [:each | each methodName]) asSortedCollection)
		collect: [:each | each asString asUMLObject: self]!

processPrimitiveCall_810: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver process the primitive call number <810> sent to <anUMLObject> with arguments <anArray> in the context of <anUMLExecutionSnapshot>"
	"Object>>class"

	^anUMLInstance umlClass!

processPrimitiveCall_811: anUMLClass withArguments: anArray snapshot: anUMLExecutionSnapshot
	"The receiver process the primitive call number <811> sent to <anUMLObject> with arguments <anArray> in the context of <anUMLExecutionSnapshot>"
	"Object>>class"

	^anUMLClass getMetaclass!

processPrimitiveCall_820: anUMLClass withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer <aParsedMethod> of <anUMLClass> with arguments <anArray>" 
	| instance |

	instance := anUMLClass newInstance.
	instance smalltalkObject: (ParsedMethod on: (anArray second basicImplementationNamed: anArray first smalltalkObject asSymbol)).

	^instance!

processPrimitiveCall_821: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer the name of the <aParsedMethod> " 

	^anUMLInstance smalltalkObject methodName asUMLObject: self!

processPrimitiveCall_822: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer the <UMLClass> of the <aParsedMethod> " 

	^anUMLInstance smalltalkObject parsedImplementation methodClass!

processPrimitiveCall_823: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer the <argumentsNames> of the <aParsedMethod> " 

	^(anUMLInstance smalltalkObject parsedImplementation argumentNames collect: [:each | each asUMLObject: self]) asUMLObject: self!

processPrimitiveCall_824: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer the <sentMessages> of the <aParsedMethod> " 

	^(anUMLInstance smalltalkObject parsedImplementation sentMessages collect: [:each | each asUMLObject: self]) asUMLObject: self!

processPrimitiveCall_825: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer the <temporaries> of the <aParsedMethod> " 

	^(anUMLInstance smalltalkObject parsedImplementation temporaries collect: [:each | each asUMLObject: self]) asUMLObject: self!

processPrimitiveCall_826: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer the references to all classes in the <aParsedMethod> " 

	^(self getAllClasses select: [:each | anUMLInstance smalltalkObject parsedImplementation hasReferencesToClassName: each name]) asUMLObject: self.!

processPrimitiveCall_827: anUMLInstance withArguments: anArray snapshot: anUMLExecutionSnapshot
	"Answer methods references to <aParsedMethod> " 

	^((self getReferencesTo: anUMLInstance smalltalkObject methodName) collect: [:each | each largeName asUMLObject: self]) asUMLObject: self.
	!

processPrimitiveCallHaltIn: anUMLExecutionSnapshot node: aStPrimitiveNode object: anUMLObject

	^self processPrimitiveCall_500: anUMLObject withArguments: (Array with: aStPrimitiveNode) snapshot: anUMLExecutionSnapshot!

registerTransErrorLogFor: anUMLObject methodName: methodName arguments: arguments snap: anUMLExecutionSnapshot
	| log |

	log := UMLVMLog for: anUMLObject methodName: methodName args: arguments snap: anUMLExecutionSnapshot.

	transLog addErrorLog: log.

	^log!

registerTransLogFor: anUMLObject methodName: methodName arguments: arguments
	| log |

	log := UMLVMLog for: anUMLObject methodName: methodName args: arguments.

	transLog addLog: log.

	^log!

removeNumber: aNumber

	aNumber virtualMachine: nil.
	^numbers removeKey: aNumber!

removePackage: anUMLVirtualMachinePackage

	^packages removeKey: anUMLVirtualMachinePackage name ifAbsent: []!

removePrimitiveObjectNamed: aString

	^primitiveObjects removeKey: aString!

removeTrait: anUMLTrait

	^traits removeKey: anUMLTrait name!

removeUMLMetaclass: anUMLMetaclass
	"The receiver remove the metaclass <anUMLMetaclass>"

	^systemDictionary removeKey: anUMLMetaclass name!

removeUMLModel: anUMLModel
	"The receiver remove the UMLModel <anUMLModel>"

	^umlModels removeKey: anUMLModel name!

removeUMLModelNamed: aString
	"The receiver remove the UMLModel named <aString>"

	^umlModels removeKey: aString!

renameCategory: anUMLCategory to: symbolName
	| newCategory |

	newCategory := UMLImplementationCategory newNamed: symbolName.
	(self getUMLClasses select: [:each | each includesCategory: anUMLCategory])
		do: [:eachClass | | categoryImplementations |
			categoryImplementations := eachClass getImplementationsFor: anUMLCategory.
			eachClass removeCategory: anUMLCategory.
			eachClass addCategory: newCategory.
			categoryImplementations do: [:eachMethod | eachClass add: eachMethod toCategory: newCategory].].!

searchClassesWithAttributeType: anUMLClass 
	| classes |

	classes := OrderedCollection new.
	umlModels do: [:each | classes addAll: (each searchClassesWithAttributeType: anUMLClass )].

	^classes!

searchClassesWithRelationType: anUMLClass 
	| classes |

	classes := OrderedCollection new.
	umlModels do: [:each | classes addAll: (each searchClassesWithRelationType: anUMLClass )].

	^classes!

searchInstVarNamed: aString
	| classesWithInstVar |

	classesWithInstVar := OrderedCollection new.

	umlModels do: [:each | classesWithInstVar addAll: (each getClassesWithInstVarNamed: aString)].

	^classesWithInstVar!

searchInstVarWithOriginalType: aString 
	| classesWithInstVar |

	classesWithInstVar := OrderedCollection new.

	umlModels do: [:each | classesWithInstVar addAll: (each getClassesWithInstVarWithOriginalType: aString)].

	^classesWithInstVar!

searchWildCardInstVarNamed: aString 
	| classesWithInstVar |

	classesWithInstVar := OrderedCollection new.

	umlModels do: [:each | classesWithInstVar addAll: (each getClassesWithWildCardInstVarNamed: aString)].

	^classesWithInstVar!

send: symbolMessage to: anUMLObject withAll: parameters 
	" The Virtual Machine performs the implementation <UMLImplementation> named <symbolMessage> of the receiver <anUMLObject> with arguments array <parameters>.
		In order to do this:
			1. The Virtual Machine obtain the class of <anUMLObject>.
			2. The Virtual Machine dynamically lookup the UMLClass using <symbolMessage> to obtain the UMLImplementation.
			3. The Virtual Machine performs the <implementation> against <anUMLObject> with arguments <parameters>."

	^self send: symbolMessage to: anUMLObject withAll: parameters parentSnapshot: nil!

send: symbolMessage to: anUMLObject withAll: parameters parentSnapshot: anUMLExecutionSnapshot
	" The Virtual Machine performs the implementation <UMLImplementation> named <symbolMessage> of the receiver <anUMLObject> with arguments array <parameters>.In order to do this:
			1. The Virtual Machine obtain the class of <anUMLObject>.
			2. The Virtual Machine dynamically lookup the UMLClass using <symbolMessage> to obtain the UMLImplementation.
			3. The Virtual Machine performs the <implementation> against <anUMLObject> with arguments <parameters>."

	^self send: symbolMessage to: anUMLObject withAll: parameters parentSnapshot: anUMLExecutionSnapshot isSuperSend: false isTrait: false!

send: symbolMessage to: anUMLObject withAll: parameters parentSnapshot: anUMLExecutionSnapshot isSuperSend: superBoolean isTrait: traitBoolean
	" The Virtual Machine performs the implementation <implementation> <anUMLImplementation> named <symbolMessage> of the receiver <anUMLObject> with arguments array <parameters>.In order to do this:
			1. The Virtual Machine obtain the class of <anUMLObject>.
			2. The Virtual Machine dynamically lookup the UMLClass using <symbolMessage> to obtain the UMLImplementation.
			3. The Virtual Machine performs the <implementation> against <anUMLObject> with arguments <parameters>."
	| implementation targetObject |

	targetObject := traitBoolean ifFalse: [(superBoolean 
								ifTrue: [anUMLExecutionSnapshot sequence methodClass umlSuperclass] 
								ifFalse: [anUMLObject getFetchMethodsMetaclass])]
						ifTrue: [anUMLObject getMetaclass].
	"implementation lookup"
	implementation := self fetchMethodNamed: symbolMessage for: targetObject.	
	"used to detect inifinite loops in #initialize method (see issue #32)"
	anUMLExecutionSnapshot ifNotNil: [anUMLExecutionSnapshot isTrait ifFalse: [anUMLExecutionSnapshot registerImplemenation: implementation]].

	implementation == self nilObjectClass 
	ifTrue: [((anUMLObject hasVariableNamed: symbolMessage) or:[(symbolMessage includes: $:) and: [anUMLObject hasVariableNamed: (symbolMessage allButLast asSymbol)]])
		ifTrue: [ (symbolMessage includes: $:) 
			ifTrue: [^self setVariableNamed: symbolMessage allButLast asSymbol with: parameters first to: anUMLObject] "is a setting message of an instance variable"
			ifFalse: [^anUMLObject getVariableNamed: symbolMessage]] " is a getting message of an instance variable "
		ifFalse:[^self errorImplementation: symbolMessage notFoundFor: anUMLObject in: anUMLExecutionSnapshot isSuperSend: superBoolean]].

	^self apply: implementation to: anUMLObject with: parameters parentSnapshot: anUMLExecutionSnapshot"process each message of the implementation. (each processInside: self context: anUMLObject parameters: arguments)"!

setAssociationVariable: anUMLAssociationClassAttribute with: anUMLInstance to: anUMLObject

	((anUMLObject umlClass == anUMLAssociationClassAttribute type) or: [anUMLInstance umlClass == anUMLAssociationClassAttribute seteableClass])
	ifTrue: [((anUMLInstance umlClass == anUMLAssociationClassAttribute seteableClass) or: [(anUMLAssociationClassAttribute seteableClass subclasses includes: anUMLInstance umlClass)]) 
		ifFalse: [^self errorAssociationMismatch: anUMLAssociationClassAttribute receiver: anUMLObject setObject: anUMLInstance.] ] 
	ifFalse: [((anUMLInstance umlClass == anUMLAssociationClassAttribute type) or: [anUMLAssociationClassAttribute seteableClass subclasses includes: anUMLInstance umlClass])
		ifFalse: [(anUMLAssociationClassAttribute hasMultipleInstances and: [(anUMLInstance vmPerform: #isCollection) smalltalkObject])
			ifFalse:[^self errorAssociationMismatch: anUMLAssociationClassAttribute receiver: anUMLObject setObject: anUMLInstance]]].

	^anUMLObject setVariableNamed: anUMLAssociationClassAttribute with: anUMLInstance!

setObjectSubclasses
	| object objectInstanceClass |

	object := self virtualMachineMetaclassNamed: 'Object'.
	objectInstanceClass := object instanceClass.

	#('Collection' 'Blob' 'Boolean' 'Date' 'Number' 'String' 'Time' 'TimeStamp' 'UndefinedObject') do: [:each | object addSubclass: (self virtualMachineMetaclassNamed: each) ].

	#('Collection' 'Blob' 'Boolean' 'Date' 'Number' 'String' 'Time' 'TimeStamp' 'UndefinedObject') do: [:each | objectInstanceClass addSubclass: (self virtualMachineClassNamed: each) ].
!

setObjectSuperclass

	self objectClass basicUmlSuperclass: self nilObject.
	self objectClass metaclass basicUmlSuperclass: self nilObject.!

setSuperclassesOfMetaclasses
	"For each UMLMetaclass in the receiver set the umlsuperclass "

	(systemDictionary  select: [:each | each name ~= 'Object']) do: [:each | 
		each umlSuperclass: each instanceClass umlSuperclass metaclass].!

setSuperclassTo: anUMLModel
	"The receiver set the #umlsuperclass of <anUMLModel> with -objectClass-"

	(anUMLModel umlClasses select: [:each | each umlSuperclass isNil]) do: [:each | each umlSuperclass: self objectClass]!

setUMLSubclasses

	self classes do: [:each | 
		each subclasses: (self subclassesOf: each)].
!

setVariableForSelfReferenceClass: anUMLRelationClassAttribute with: setObject to: anUMLObject errorIfNotExist: aBoolean

	setObject belongToVirtualMachine ifTrue: [^self errorSelfReference: anUMLRelationClassAttribute receiver: anUMLObject setObject: setObject].

	(anUMLRelationClassAttribute relation isManyToMany and: [(setObject vmPerform: #isCollection) smalltalkObject not])
	ifTrue: [^self errorSelfReference: anUMLRelationClassAttribute receiver: anUMLObject setObject: setObject].

	((anUMLRelationClassAttribute relation isOneToOne and: [(setObject vmPerform: #isCollection) smalltalkObject]) 
	or: [((anUMLRelationClassAttribute getInitializeType == setObject umlClass) or: [anUMLRelationClassAttribute getType subclasses includes: setObject umlClass]) not])
	ifTrue: [^self errorSelfReference: anUMLRelationClassAttribute receiver: anUMLObject setObject: setObject].

	" -- in this case we allow in Nx1 or 1xN self relations to use both attributes as Object Holder (1x) or as Collection holder (Nx)"

	((anUMLRelationClassAttribute relation isOneToManyOrManyToOne and: [(setObject vmPerform: #isCollection) smalltalkObject]) 
	or: [(anUMLRelationClassAttribute getInitializeType == setObject umlClass) or: [anUMLRelationClassAttribute getType subclasses includes: setObject umlClass]])
	ifFalse: [^self errorSelfReference: anUMLRelationClassAttribute receiver: anUMLObject setObject: setObject].

	^anUMLObject setVariableNamed: anUMLRelationClassAttribute with: setObject. "we set the value"!

setVariableNamed: symbolName with: setObject to: anUMLObject
	"The receiver set the variable named <symbolName> of <anUMLObject> with value <setObject>
	We detect the attribute for the <symbolName> if does not exist we return error
	If the <setObject> if {nil} then we set it - {nil} is the ONLY value that is accepted and does not match the attribute type
	We check the instance variable type with <setObject> type
	We set the value"
	
	^self setVariableNamed: symbolName with: setObject to: anUMLObject errorIfNotExist: true!

setVariableNamed: symbolName with: setObject to: anUMLObject errorIfNotExist: aBoolean
	"The receiver set the variable named <symbolName> of <anUMLObject> with value <setObject>. We detect the attribute for the <symbolName> if does not exist we return error. If the <setObject> if {nil} then we set it - {nil} is the ONLY value that is accepted and does not match the attribute type. We check the instance variable type with <setObject> type. We set the value"
	| var instanceAttributes |

	instanceAttributes := anUMLObject umlClass allAttributes select: [:each | (each name asString = symbolName asString) and: [each alias isNil]].
	var := (instanceAttributes size = 1) 
		ifTrue: [instanceAttributes last] 
		ifFalse: [anUMLObject umlClass allAttributes detect: [:each | each alias notNil and: [each alias asString = symbolName asString]] 
					ifNone: [^aBoolean 
						ifTrue: [self errorVaribleNotExist: symbolName receiver: anUMLObject setObject: setObject] 
						ifFalse: [anUMLObject setVariableNamed: symbolName with: setObject].].].

	(setObject == self nilObject) ifTrue: [^anUMLObject setVariableNamed: var with: setObject]. "we set the value with {nil} - we do NOT perform any check"
	var isAssociationClass ifTrue: [^self setAssociationVariable: var with: setObject to: anUMLObject ]. "the instance variable to set is an AssociationClass"

	((setObject vmPerform: #isCollection) smalltalkObject and: [var relation hasMultipleInstances: anUMLObject umlClass]) "the instance variable to set is a Collection"
	ifTrue: [^anUMLObject setVariableNamed: var with: setObject. "we set the value"].

	(var isBasic not and: [var relation isSelfReferenceClass]) "is a Self Referenced class" ifTrue: [^self setVariableForSelfReferenceClass: var with: setObject to: anUMLObject errorIfNotExist: aBoolean].
	(var isBasic not and: [(var relation hasMultipleInstances: anUMLObject umlClass) and:[(setObject vmPerform: #isCollection) smalltalkObject not]])
		ifTrue: [^self errorCollectionMismatch: symbolName receiver: anUMLObject setObject: setObject].

	var getInitializeType belongToVirtualMachine
	ifTrue: [setObject umlClass belongToVirtualMachine ifFalse: [^self errorVariableMismatch: symbolName varType: var receiver: anUMLObject setObject: setObject].
		(var getType smalltalkClass == setObject umlClass smalltalkClass or: [var getType smalltalkClass subclasses includes: setObject umlClass smalltalkClass] ) "object types MUST match if NOT --> anError"
		ifFalse: [^self errorVariableMismatch: symbolName varType: var receiver: anUMLObject setObject: setObject]]
	ifFalse: [(((var getInitializeType == setObject umlClass) or: [var getType allSubclasses includes: setObject umlClass]) or: [(setObject vmPerform: #isCollection) smalltalkObject and: [var relation hasMultipleInstances: anUMLObject umlClass]])
		ifFalse: [^self errorVariableMismatch: symbolName varType: var receiver: anUMLObject setObject: setObject] ].

	^anUMLObject setVariableNamed: var with: setObject. "we set the value"!

stringClass

	^self virtualMachineClassNamed: 'String'!

subclassesOf: anUMLClass
	"Answer all subclasses of <anUMLClass>"

	^self classes select: [:each | each umlSuperclass == anUMLClass]!

systemDictionary
	^systemDictionary!

systemDictionary: anObject
	systemDictionary := anObject!

timeClass

	^self virtualMachineClassNamed: 'Time'!

timeStampClass

	^self virtualMachineClassNamed: 'TimeStamp'!

traitNamed: aString 

	^self allTraits detect: [:each | each name = aString ]!

traits
	^traits!

traits: anObject
	traits := anObject!

transLog
	^transLog!

transLog: anObject
	transLog := anObject!

treeModelClass

	^self virtualMachineClassNamed: 'TreeModel'!

trueObject

	^primitiveObjects at: 'true'!

typeMapping
	^typeMapping!

typeMapping: anObject
	typeMapping := anObject!

umlModelNamed: aString 
	"The receiver answer anUMLModel named <aString>"

	^umlModels at: aString!

umlModelOf: anUMLClass

	^umlModels detect: [:each | each identityIncludes: anUMLClass] ifNone:[nil]!

umlModels
	^umlModels!

umlModels: anObject
	umlModels := anObject!

uninstall

	umlModels do: [:each | self uninstallUMLModel: each].
	systemDictionary do: [:each | each uninstall].

	systemDictionary := LookupTable new.
	primitiveObjects := LookupTable new.
	umlModels  := LookupTable new.
	numbers  := LookupTable new.
	userGlobals  := LookupTable new.
	traits  := LookupTable new.
	packages := LookupTable new.!

uninstallUMLModel: anUMLModel 
	"The receiver uninstall <anUMLModel> from the system" 

	self removeUMLModel: anUMLModel. "we remove it from model collection"
	anUMLModel setVirtualMachineToAllToNil. "we disconnect all elements from the Virtual Machine"

	self objectClass ifNotNil: [:value | value subclasses: self objectClass subclasses asSet asOrderedCollection. "we purify (copy without duplicates) Object subclasses"].
	self objectClass getMetaclass ifNotNil: [:value | value subclasses: self objectClass subclasses asSet asOrderedCollection. "we purify (copy without duplicates) Object subclasses"].

	anUMLModel classesDo: [:umlClass | 
		self objectClass removeSubclass: umlClass.
		self objectClass getMetaclass removeSubclass: umlClass.]. "we remove each class from Object subclasses"

	anUMLModel classesDo: [:each | each uninstall]. "we disconnect all classes from the system"

	anUMLModel uninstall.!

unpackagedClasses

	^self classes reject: [:eachClass | 
		packages anySatisfy: [:each | each hasClassNamed: eachClass name]]!

userGlobals
	^userGlobals!

userGlobals: anObject
	userGlobals := anObject!

virtualMachineClassNamed: aString
	"Answer a Virtual Machine class named <aString> if absent asnwer anUMLInstance of UMLClass(''UndefinedObject)"

	^(systemDictionary at: aString ifAbsent: [^self nilObject]) instanceClass!

virtualMachineClassNamed: aString ifNone: aBlock
	"Answer a Virtual Machine class named <aString> if absent asnwer anUMLInstance of UMLClass(''UndefinedObject)"

	(systemDictionary at: aString ifAbsent: [^aBlock value]) instanceClass.

	^packages detect: [:each | (each getClassNamed: aString ifNone: [nil]) notNil] ifNone: aBlock
!

virtualMachineClassNamedLowercase: aString
	"Answer a Virtual Machine class named <aString> if absent asnwer anUMLInstance of UMLClass(''UndefinedObject)"
	| casedName |

	casedName := systemDictionary keys detect: [:each | each asLowercase = aString asLowercase] ifNone: [nil].
	^(systemDictionary at: casedName ifAbsent: [^self nilObject]) instanceClass!

virtualMachineMetaclassNamed: aString
	"Answer a Virtual Machine metaclass named <aString> if absent asnwer anUMLInstance of UMLClass(''UndefinedObject)"

	^systemDictionary at: aString ifAbsent: [^self nilObject].

	^(packages detect: [:each | (each getClassNamed: aString ifNone: [nil]) notNil] ifNone: [^self nilObject]) getMetaclass! !
!UMLVirtualMachine categoriesFor: #addNumber:!numbers!private! !
!UMLVirtualMachine categoriesFor: #addPackage:!public!vm packages! !
!UMLVirtualMachine categoriesFor: #addPrimitiveObject:named:!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #addTrait:!public! !
!UMLVirtualMachine categoriesFor: #addUMLMetaclass:!public! !
!UMLVirtualMachine categoriesFor: #addUMLModel:!public!uml models install! !
!UMLVirtualMachine categoriesFor: #allAttributes!public! !
!UMLVirtualMachine categoriesFor: #allDefinitionsOf:!public!uml msg tracking! !
!UMLVirtualMachine categoriesFor: #allImplementations!public!uml msg tracking! !
!UMLVirtualMachine categoriesFor: #allPrimitiveObjects!public! !
!UMLVirtualMachine categoriesFor: #allTraits!public! !
!UMLVirtualMachine categoriesFor: #allUMLImplementations!public!uml msg tracking! !
!UMLVirtualMachine categoriesFor: #apply:to:with:!double dispatch!message dispatching!public!vm core! !
!UMLVirtualMachine categoriesFor: #apply:to:with:parentSnapshot:!double dispatch!message dispatching!public!vm core! !
!UMLVirtualMachine categoriesFor: #apply:to:with:snapshot:!debug!double dispatch!message dispatching!message dispatching core!public!vm core! !
!UMLVirtualMachine categoriesFor: #arrayClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #avoidClassNameClashingFor:!public!uml models install!xmi-model!xmi-others! !
!UMLVirtualMachine categoriesFor: #basicClasses!public! !
!UMLVirtualMachine categoriesFor: #blockClass!public! !
!UMLVirtualMachine categoriesFor: #classes!public! !
!UMLVirtualMachine categoriesFor: #classesAsTreeModel!public! !
!UMLVirtualMachine categoriesFor: #classesAsVirtualMachineTreeModel!public! !
!UMLVirtualMachine categoriesFor: #classNamed:!public!searching! !
!UMLVirtualMachine categoriesFor: #classNamed:ifNone:!public!searching! !
!UMLVirtualMachine categoriesFor: #createBooleanObjects!initializing!public! !
!UMLVirtualMachine categoriesFor: #createNilObject!initializing!public! !
!UMLVirtualMachine categoriesFor: #cretateGettersAndSettersImplementationsFor:inClass:!public! !
!UMLVirtualMachine categoriesFor: #dateClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #depurateObjectClass!initializing!public! !
!UMLVirtualMachine categoriesFor: #dictionaryClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #errorAssociationMismatch:receiver:setObject:!error handling!public! !
!UMLVirtualMachine categoriesFor: #errorClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #errorCollectionMismatch:receiver:setObject:!error handling!public!vm core! !
!UMLVirtualMachine categoriesFor: #errorLogIsActive!error handling!public!vm core! !
!UMLVirtualMachine categoriesFor: #errorSelfReference:receiver:setObject:!error handling!public! !
!UMLVirtualMachine categoriesFor: #errorVariableMismatch:varType:receiver:setObject:!error handling!public!vm core! !
!UMLVirtualMachine categoriesFor: #errorVaribleNotExist:receiver:setObject:!error handling!public!vm core! !
!UMLVirtualMachine categoriesFor: #executeSequenceNodeReturningAll:in:!double dispatch!message dispatching!public!vm core! !
!UMLVirtualMachine categoriesFor: #falseObject!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #fetchClassMethodNamed:for:ifNone:!message dispatching core!public! !
!UMLVirtualMachine categoriesFor: #fetchImplementationNamed:for:ifNone:!double dispatch!message dispatching!message dispatching core!public!vm core! !
!UMLVirtualMachine categoriesFor: #fetchInstanceMethodNamed:for:ifNone:!message dispatching core!public! !
!UMLVirtualMachine categoriesFor: #fetchMetaclassMethodNamed:for:ifNone:!message dispatching core!public! !
!UMLVirtualMachine categoriesFor: #fetchMethodNamed:for:!message dispatching core!public! !
!UMLVirtualMachine categoriesFor: #fetchMethodNamed:for:ifNone:!message dispatching core!public! !
!UMLVirtualMachine categoriesFor: #fetchTraitIn:implementing:ifNone:!double dispatch!message dispatching!message dispatching core!public!vm core! !
!UMLVirtualMachine categoriesFor: #fileInCategoryMethodsFrom:!binary filing!public! !
!UMLVirtualMachine categoriesFor: #fileInFromXml:!public!vm file in! !
!UMLVirtualMachine categoriesFor: #fileInMethodsFrom:!binary filing!public! !
!UMLVirtualMachine categoriesFor: #fileInUMLModelImplementationsFrom:!binary filing!public! !
!UMLVirtualMachine categoriesFor: #fileOutCategory:to:!binary filing!public! !
!UMLVirtualMachine categoriesFor: #fileOutCleanVirtualMachineTo:!binary filing!public! !
!UMLVirtualMachine categoriesFor: #fileOutMethods:to:!binary filing!public! !
!UMLVirtualMachine categoriesFor: #fileOutUMLModelImplementations:to:!binary filing!public! !
!UMLVirtualMachine categoriesFor: #fileOutVirtualMachineTo:!binary filing!public! !
!UMLVirtualMachine categoriesFor: #generateMethodsReportFor:!public! !
!UMLVirtualMachine categoriesFor: #getAllCategories!public! !
!UMLVirtualMachine categoriesFor: #getAllClasses!public! !
!UMLVirtualMachine categoriesFor: #getAllClassesAsSortedCollection!public! !
!UMLVirtualMachine categoriesFor: #getAllClassesNames!public! !
!UMLVirtualMachine categoriesFor: #getAllImplementations!public! !
!UMLVirtualMachine categoriesFor: #getAllImplementationsAsSortedCollection!public! !
!UMLVirtualMachine categoriesFor: #getAllImplementationsNamed:!public! !
!UMLVirtualMachine categoriesFor: #getAllImplementationsWithDescription:!public! !
!UMLVirtualMachine categoriesFor: #getAllMetaclassCategories!public! !
!UMLVirtualMachine categoriesFor: #getAllUserImplementations!public! !
!UMLVirtualMachine categoriesFor: #getAnyClassNamed:!public! !
!UMLVirtualMachine categoriesFor: #getAnyClassNamed:ifAbsent:!public! !
!UMLVirtualMachine categoriesFor: #getBasicObjectFrom:!public! !
!UMLVirtualMachine categoriesFor: #getClassNamedLike:!public!searching! !
!UMLVirtualMachine categoriesFor: #getNumber:!numbers!public! !
!UMLVirtualMachine categoriesFor: #getNumber:ifAbsent:!numbers!private! !
!UMLVirtualMachine categoriesFor: #getReferencesTo:!public!uml msg tracking! !
!UMLVirtualMachine categoriesFor: #getReferencesToClassName:!public!uml msg tracking! !
!UMLVirtualMachine categoriesFor: #getUMLClasses!public! !
!UMLVirtualMachine categoriesFor: #getUMLModelNamed:!public! !
!UMLVirtualMachine categoriesFor: #getUMLModelNamed:ifNone:!public! !
!UMLVirtualMachine categoriesFor: #getUserCategories!public! !
!UMLVirtualMachine categoriesFor: #getVirtualMachineImplementations!public! !
!UMLVirtualMachine categoriesFor: #hasClassNamed:!public! !
!UMLVirtualMachine categoriesFor: #hasDefinitionNamed:!public!uml msg tracking! !
!UMLVirtualMachine categoriesFor: #hasLooseDefinitionNamed:for:!public!uml msg tracking! !
!UMLVirtualMachine categoriesFor: #hasMetaDefinitionNamed:!public!uml msg tracking! !
!UMLVirtualMachine categoriesFor: #includesAnyClassNamed:!public!searching! !
!UMLVirtualMachine categoriesFor: #includesClassNamed:!public! !
!UMLVirtualMachine categoriesFor: #includesPackage:!public!vm packages! !
!UMLVirtualMachine categoriesFor: #includesPackageNamed:!public!vm packages! !
!UMLVirtualMachine categoriesFor: #includesTraitNamed:!public! !
!UMLVirtualMachine categoriesFor: #includesUMLModel:!public! !
!UMLVirtualMachine categoriesFor: #initialize!public! !
!UMLVirtualMachine categoriesFor: #installUMLModel:!public!uml models install!xmi-model!xmi-others! !
!UMLVirtualMachine categoriesFor: #intervalClass!public! !
!UMLVirtualMachine categoriesFor: #isDeployment!accessing!private! !
!UMLVirtualMachine categoriesFor: #isDeployment:!accessing!private! !
!UMLVirtualMachine categoriesFor: #isInstanceBehaviorAvailable!accessing!private! !
!UMLVirtualMachine categoriesFor: #isInstanceBehaviorAvailable:!accessing!private! !
!UMLVirtualMachine categoriesFor: #logIsActive!public!vm core! !
!UMLVirtualMachine categoriesFor: #metaclassesAsTreeModel!public! !
!UMLVirtualMachine categoriesFor: #metaclassNamed:!public!searching! !
!UMLVirtualMachine categoriesFor: #nilObject!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #nilObjectClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #numberClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #numbers!accessing!private! !
!UMLVirtualMachine categoriesFor: #numbers:!accessing!private! !
!UMLVirtualMachine categoriesFor: #objectClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #orderedCollectionClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #packages!accessing!private! !
!UMLVirtualMachine categoriesFor: #packages:!accessing!private! !
!UMLVirtualMachine categoriesFor: #packagesAsSortedCollection!public!vm packages! !
!UMLVirtualMachine categoriesFor: #primitiveObjects!public! !
!UMLVirtualMachine categoriesFor: #primitiveObjects:!accessing!private! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall:receiver:withArguments:snapshot:!primitive processing!public!vm core! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_101:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_102:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_103:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_104:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_105:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_106:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_120:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_121:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_122:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_123:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_124:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_125:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_126:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_127:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_128:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_129:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_130:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_139:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_151:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_152:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_201:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_202:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_203:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_204:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_205:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_206:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_207:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_208:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_209:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_301:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_302:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_303:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_304:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_305:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_306:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_307:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_308:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_309:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_401:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_402:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_403:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_404:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_405:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_406:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_407:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_520:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_521:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_522:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_523:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_524:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_526:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_530:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_601:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_602:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_603:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_604:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_605:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_606:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_607:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_608:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_630:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_631:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_640:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_700:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_710:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_711:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_712:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_713:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_720:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_721:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_722:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_723:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_724:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_800:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_801:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_802:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_803:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_807:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_808:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_809:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_810:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_811:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_820:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_821:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_822:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_823:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_824:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_825:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_826:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCall_827:withArguments:snapshot:!primitive processing!public! !
!UMLVirtualMachine categoriesFor: #processPrimitiveCallHaltIn:node:object:!debug!public! !
!UMLVirtualMachine categoriesFor: #registerTransErrorLogFor:methodName:arguments:snap:!debug!double dispatch!message dispatching!message dispatching core!public!vm core! !
!UMLVirtualMachine categoriesFor: #registerTransLogFor:methodName:arguments:!debug!double dispatch!message dispatching!message dispatching core!public!vm core! !
!UMLVirtualMachine categoriesFor: #removeNumber:!numbers!private! !
!UMLVirtualMachine categoriesFor: #removePackage:!public!vm packages! !
!UMLVirtualMachine categoriesFor: #removePrimitiveObjectNamed:!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #removeTrait:!public! !
!UMLVirtualMachine categoriesFor: #removeUMLMetaclass:!public! !
!UMLVirtualMachine categoriesFor: #removeUMLModel:!public!uml models install! !
!UMLVirtualMachine categoriesFor: #removeUMLModelNamed:!public! !
!UMLVirtualMachine categoriesFor: #renameCategory:to:!public! !
!UMLVirtualMachine categoriesFor: #searchClassesWithAttributeType:!public!searching! !
!UMLVirtualMachine categoriesFor: #searchClassesWithRelationType:!public!searching! !
!UMLVirtualMachine categoriesFor: #searchInstVarNamed:!public!searching! !
!UMLVirtualMachine categoriesFor: #searchInstVarWithOriginalType:!public!searching! !
!UMLVirtualMachine categoriesFor: #searchWildCardInstVarNamed:!public!searching! !
!UMLVirtualMachine categoriesFor: #send:to:withAll:!double dispatch!message dispatching!public!vm core! !
!UMLVirtualMachine categoriesFor: #send:to:withAll:parentSnapshot:!double dispatch!message dispatching!public!vm core! !
!UMLVirtualMachine categoriesFor: #send:to:withAll:parentSnapshot:isSuperSend:isTrait:!double dispatch!message dispatching!message dispatching core!public!vm core! !
!UMLVirtualMachine categoriesFor: #setAssociationVariable:with:to:!public!vm core! !
!UMLVirtualMachine categoriesFor: #setObjectSubclasses!initializing!public! !
!UMLVirtualMachine categoriesFor: #setObjectSuperclass!initializing!public! !
!UMLVirtualMachine categoriesFor: #setSuperclassesOfMetaclasses!initializing!public! !
!UMLVirtualMachine categoriesFor: #setSuperclassTo:!initializing!public! !
!UMLVirtualMachine categoriesFor: #setUMLSubclasses!private! !
!UMLVirtualMachine categoriesFor: #setVariableForSelfReferenceClass:with:to:errorIfNotExist:!public!vm core! !
!UMLVirtualMachine categoriesFor: #setVariableNamed:with:to:!double dispatch!message dispatching!public!vm core! !
!UMLVirtualMachine categoriesFor: #setVariableNamed:with:to:errorIfNotExist:!double dispatch!message dispatching!public!vm core! !
!UMLVirtualMachine categoriesFor: #stringClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #subclassesOf:!public!searching! !
!UMLVirtualMachine categoriesFor: #systemDictionary!accessing!private! !
!UMLVirtualMachine categoriesFor: #systemDictionary:!accessing!private! !
!UMLVirtualMachine categoriesFor: #timeClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #timeStampClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #traitNamed:!public! !
!UMLVirtualMachine categoriesFor: #traits!accessing!private! !
!UMLVirtualMachine categoriesFor: #traits:!accessing!private! !
!UMLVirtualMachine categoriesFor: #transLog!accessing!private! !
!UMLVirtualMachine categoriesFor: #transLog:!accessing!private! !
!UMLVirtualMachine categoriesFor: #treeModelClass!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #trueObject!primitive objects!private! !
!UMLVirtualMachine categoriesFor: #typeMapping!accessing!private! !
!UMLVirtualMachine categoriesFor: #typeMapping:!accessing!private! !
!UMLVirtualMachine categoriesFor: #umlModelNamed:!public!searching! !
!UMLVirtualMachine categoriesFor: #umlModelOf:!public! !
!UMLVirtualMachine categoriesFor: #umlModels!accessing!private! !
!UMLVirtualMachine categoriesFor: #umlModels:!accessing!private! !
!UMLVirtualMachine categoriesFor: #uninstall!public! !
!UMLVirtualMachine categoriesFor: #uninstallUMLModel:!public!uml models install! !
!UMLVirtualMachine categoriesFor: #unpackagedClasses!public! !
!UMLVirtualMachine categoriesFor: #userGlobals!accessing!private! !
!UMLVirtualMachine categoriesFor: #userGlobals:!accessing!private! !
!UMLVirtualMachine categoriesFor: #virtualMachineClassNamed:!public!searching! !
!UMLVirtualMachine categoriesFor: #virtualMachineClassNamed:ifNone:!public!searching!vm packages! !
!UMLVirtualMachine categoriesFor: #virtualMachineClassNamedLowercase:!public!searching! !
!UMLVirtualMachine categoriesFor: #virtualMachineMetaclassNamed:!public!searching!vm packages! !

!UMLVirtualMachine class methodsFor!

default

	Default ifNil: [Default := self new initialize].

	^Default!

fileInVirtualMachineFrom: pathFile
	| fileStream |

	fileStream := FileStream read: pathFile text: false.
	self setDefault: (UMLVirtualMachine binaryReadFrom: fileStream).
	^self default!

icon
	"Generated from:
	self createIconMethodOfSize: 32@32 fromFile: 'vm02.png'.
	"
	^Icon fromFile: 'U-Fabrik/icons/vm01.ico'!

setDefault: anUMLVirtualMachine 

	((Default ~~ anUMLVirtualMachine) and: [Default notNil]) ifTrue: [Default uninstall].

	^Default := anUMLVirtualMachine! !
!UMLVirtualMachine class categoriesFor: #default!public! !
!UMLVirtualMachine class categoriesFor: #fileInVirtualMachineFrom:!public! !
!UMLVirtualMachine class categoriesFor: #icon!constants!public! !
!UMLVirtualMachine class categoriesFor: #setDefault:!public! !

