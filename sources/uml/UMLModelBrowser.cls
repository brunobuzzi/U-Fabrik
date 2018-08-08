"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLModelBrowser
	instanceVariableNames: 'modelsPresenter classBrowser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelBrowser guid: (GUID fromString: '{573c957a-4b27-4610-8274-5e36a8a6f4df}')!
UMLModelBrowser comment: ''!
!UMLModelBrowser categoriesForClass!Unclassified! !
!UMLModelBrowser methodsFor!

aboutThisTool
	^Error notYetImplemented!

addCategory
	^classBrowser addCategory!

addTraitToSelectedClass
	^classBrowser addTraitToSelectedClass!

browseGlobals

	modelsPresenter hasSelection ifFalse: [^self].

	UMLModelGlobalsShell showOn: modelsPresenter selection!

browserImplementationDefenitions
	^classBrowser browserImplementationDefenitions!

browserImplementationOfCategory
	^classBrowser browserImplementationOfCategory!

browserImplementationReferences
	^classBrowser browserImplementationReferences!

browseSetupObjects

	modelsPresenter hasSelection ifFalse: [^self].

	UMLModelSetupObjectsShell showOn: modelsPresenter selection!

browseTree
	| level |

	level := (Prompter prompt: 'Enter recursive level (default 5): ') asNumberOnError: [:e | 5 ].

	[UMLTreeImplementationsShell showOn: (self selectedImplementation asTreeModelUpto: level count: 0)] forkAt: 4!

browseUMLModelDatabase
	| mapper | 

	mapper := UMLDatabaseMapper umlModel: self selectedModel.

	mapper runMapping.

	mapper database show.!

checkSelectedMethod
	^classBrowser checkSelectedMethod!

chooseUMLTool
	^(DetalleDeOpciones
		listaCon: XmiReader subclasses asOrderedCollection
		para: 'UMLTools view'
		titulo: 'Select the UML Tool that genereted the XMI file')
			ifNil: [nil]
			ifNotNil: [:value | value last]!

createComponents

	super createComponents.

	modelsPresenter := self add: ListPresenter new name: 'modelsPresenter'.
	classBrowser := self add: UMLClassBrowserComposite new name: 'classBrowser'.!

createSchematicWiring

	super createSchematicWiring.

	modelsPresenter when: #selectionChanged send: #onModelChanged to: self!

defineLoginManagerClass
	| loginManagerClass implementation |
	modelsPresenter hasSelection ifFalse: [^self].
	loginManagerClass := DetalleDeOpciones 
				listaCon: self selectedModel umlClassesAsSortedCollection
				para: 'UMLClasses view'
				titulo: 'Select the Login Manager class'.
	loginManagerClass ifNil: [^self].
	self selectedModel loginManager: loginManagerClass last.
	MessageBox notify: 'The new Login Manager class is <' , loginManagerClass last name , '>'
		caption: self applicationName.
	self selectClass: self selectedModel loginManager ifAbsent: [].
	implementation := self loginImplementation.
	self selectedModel loginManager getMetaclass addImplementation: implementation.
	self selectImplementation: implementation.
	UMLDevelopmentEnvironment default 
		onNewMethod: implementation
		addedToClass: self selectedModel loginManager getMetaclass
		in: nil!

deployDatabase
	| dsn smalltalkMapper |

 	dsn := Prompter prompt: 'Enter DSN for the Database' caption: self applicationName.
	dsn ifNil: [^self].
	dsn isEmpty ifTrue: [^self].
	smalltalkMapper := UMLSmalltalkMapper on: self defaultVirtualMachine.
	smalltalkMapper deployApplication: dsn.
!

designCustomizedView
	^classBrowser designCustomizedView!

exit
	^self topShell closeCurrentUMLCard!

exportMethodsReportToExcel
	modelsPresenter hasSelection ifFalse: [^self].
	self defaultVirtualMachine generateMethodsReportFor: self selectedModel!

fileInMethodsOfCategory
	^classBrowser fileInMethodsOfCategory!

fileInUMLModel
	| file umlModel |
	
	file := (FileOpenDialog new)
				caption: 'UML Model...';
				fileTypes: #(#('UML Model (*.umm)' '*.umm'));
				showModal.
	file ifNil: [^self].

	umlModel := UMLModel binaryReadFrom: (FileStream read: file text: false).

	model installUMLModel: umlModel.

	modelsPresenter model: (ListModel on: (model umlModels asSortedCollection: [:a :b | a name <= b name]))!

fileInUMLModelImplementations
	| file |
	modelsPresenter hasSelection ifFalse: [^self].
	file := (FileOpenDialog new)
				caption: 'UML Model Implementations...';
				fileTypes: #(#('UML Model Implementations (*.umi)' '*.umi'));
				showModal.
	file ifNil: [^self].
	self defaultVirtualMachine fileInUMLModelImplementationsFrom: file.
	^MessageBox notify: 'UML Model implementations installation succeeded' caption: self applicationName!

fileOutMethodsOfCategory
	^classBrowser fileOutMethodsOfCategory!

fileOutUMLModel
	| file |
	modelsPresenter hasSelection ifFalse: [^self].
	file := (FileSaveDialog new)
				caption: 'Save UML Model...';
				fileTypes: #(#('UML Model (*.umm)' '*.umm'));
				showModal.
	file ifNil: [^self].
	modelsPresenter selection binaryStoreOn: (FileStream write: file text: false).
	^MessageBox notify: 'UML Model saved on <' , file , '>' caption: self applicationName!

fileOutUMLModelImplementations
	| file |
	
	modelsPresenter hasSelection ifFalse: [^self].
	file := (FileSaveDialog new)
				caption: 'Save UML Implementations...';
				fileTypes: #(#('UML Implementations (*.umi)' '*.umi'));
				showModal.
	file ifNil: [^self].

	self defaultVirtualMachine fileOutUMLModelImplementations: modelsPresenter selection to: file!

hasSelectedCategory
	^classBrowser hasSelectedCategory!

hasSelectedClass
	^classBrowser hasSelectedClass!

hasSelectedImplementation
	^classBrowser hasSelectedImplementation 
!

hasSelectedModel
	^modelsPresenter hasSelection!

helpWithThisTool
	^Error notYetImplemented!

importXMIFile
	| archivo umlModelName xmlNode newModel |
	archivo := (FileOpenDialog new)
				fileTypes: #(#('XMI file (*.xml)' '*.xml') #('XMI file (*.xmi)' '*.xmi'));
				caption: 'Import XMI 2.1 file';
				showModal.
	archivo ifNil: [^nil].
	archivo isEmpty ifTrue: [^nil].
	umlModelName := File splitFilenameFrom: archivo.
	xmlNode := (self chooseUMLTool ifNil: [^self] ifNotNil: [:value | value]) fromFile: archivo.
	[newModel := xmlNode generateUMLModelNamed: umlModelName] on: Error
		do: [:ex | ^MessageBox notify: 'Wrong File Format' , String lineDelimiter , ex description caption: self applicationName].

	xmlNode duplicatedClass notEmpty ifTrue: [^MessageBox notify: 'The Diagram has a duplicated class name <', xmlNode duplicatedClass, '>'].
	self defaultVirtualMachine installUMLModel: newModel.
"	self licenciaPorDefecto removerClassesDe: newModel."
	modelsPresenter model: (ListModel on: (self defaultVirtualMachine umlModels asSortedCollection: [:a :b | a name <= b name])).!

isClassSideSelected

	^classBrowser isClassSideSelected!

licenciaPorDefecto

	^LicenciaSoftware current!

loginImplementation
	|  parsedMethod  |

	parsedMethod := SmalltalkParser parseMethod: 'getLoginMainObjectFor: userName password: password
"Automatically generated, this method answer the objects to be showed after login"
"^', self selectedModel loginManager name , ' getGlobalObjectSatisfying: [:each | each name = userName and: [each password = password]]"

	^', self selectedModel loginManager name , '  allGlobalObjects'.

	^(UMLParsedImplementation newNamed: parsedMethod selector) parsedCode: parsedMethod
	!

menuBar
	| menu |
	menu := MenuBar new.
	(menu addSubmenu: 'File')
		addCommand: (MessageSend receiver: self selector: #browseSetupObjects)
			description: 'Browse Setup Objects';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #importXMIFile) description: 'Import XMI File';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #fileOutUMLModel) description: 'Store UML Model';
		addCommand: (MessageSend receiver: self selector: #fileInUMLModel)
			description: 'Restore UML Model from File';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #exit) description: 'Exit'.
	(menu addSubmenu: 'UML Model')
		addCommand: (MessageSend receiver: self selector: #browseGlobals)
			description: 'Browse Global Objects';
		addCommand: (MessageSend receiver: self selector: #browseSetupObjects)
			description: 'Browse Setup Objects';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #importXMIFile) description: 'Import XMI File';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #exportMethodsReportToExcel)
			description: 'Export Methods Report to Excel';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #fileOutUMLModelImplementations)
			description: 'File out UML Model Implementations';
		addCommand: (MessageSend receiver: self selector: #fileInUMLModelImplementations)
			description: 'File in UML Model Implementations';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #fileOutUMLModel) description: 'Store UML Model';
		addCommand: (MessageSend receiver: self selector: #fileInUMLModel)
			description: 'Restore UML Model from File';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #removeUMLModel) description: 'Remove UML Model'.
	(menu addSubmenu: 'UML Class')
		addCommand: (MessageSend receiver: self selector: #addTraitToSelectedClass)
			description: 'Add Trait to Selected Class';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #autogenerateInitializeMethod)
			description: 'Generate #initialize Method';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #designCustomizedView)
			description: 'Design Customize View';
		addCommand: (MessageSend receiver: self selector: #inspectCustomizedNewInstance)
			description: 'Inspect New Instance in Customized View';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #inspectNewInstance)
			description: 'Inspect New Instance';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #addNewClass) description: 'Add New Class';
		addCommand: (MessageSend receiver: self selector: #removeClass) description: 'Remove Class'.
	(menu addSubmenu: 'Method Implementation')
		addCommand: (MessageSend receiver: self selector: #browserImplementationDefenitions)
			description: 'Browse Definitions';
		addCommand: (MessageSend receiver: self selector: #browserImplementationReferences)
			description: 'Browse References';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #removeImplementation)
			description: 'Remove Implementation'.
	(menu addSubmenu: 'User Categories')
		addCommand: (MessageSend receiver: self selector: #addCategory) description: 'Add Category';
		addCommand: (MessageSend receiver: self selector: #removeCategory) description: 'Remove Category';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #browserImplementationOfCategory)
			description: 'Browser Implementations of Category';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #fileOutMethodsOfCategory)
			description: 'File out Category';
		addCommand: (MessageSend receiver: self selector: #fileInMethodsOfCategory)
			description: 'File in Category'.
	(menu addSubmenu: 'Search')
		addCommand: (MessageSend receiver: self selector: #searchAttributeNamed)
			description: 'Attributes Named';
		addCommand: (MessageSend receiver: self selector: #searchAttributesOfType)
			description: 'Attributes of Type';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #searchUndefinedAttributes)
			description: 'Undefined Attributes';
		addCommand: (MessageSend receiver: self selector: #searchUndefinedRelations)
			description: 'Undefined Relations'.
	(menu addSubmenu: 'Support')
		addCommand: (MessageSend receiver: self selector: #gotoUFabrikWebSite)
			description: self applicationName , ' Web site';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyNewsGroup)
			description: 'News Group';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyDocumentation)
			description: 'Online Documents';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyEnglishVideos)
			description: 'Online Videos - English';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyVideos)
			description: 'Online Videos - Spanish';
		addCommand: (MessageSend receiver: self selector: #goToUMLAlmightyBlog) description: 'Blog'.
	(menu addSubmenu: 'About')
		addCommand: (MessageSend receiver: self selector: #aboutThisTool) description: 'About this tool';
		addCommand: (MessageSend receiver: self selector: #helpWithThisTool)
			description: 'Help with this tool';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #aboutUMLAlmighty)
			description: 'About ' , self applicationName.
	^menu!

model: anOrderedCollection

	super model: anOrderedCollection.

	modelsPresenter model: (ListModel on: anOrderedCollection)!

onCategoriaAdded

	^classBrowser onCategoriaAdded!

onCategoriaChanged
	^classBrowser onCategoriaChanged!

onClassChanged
	^classBrowser onClassChanged!

onMethodRemoved

	^self onClassChanged!

onModelChanged

	modelsPresenter hasSelection ifFalse: [^classBrowser emptyAll].

	classBrowser model: modelsPresenter selection!

onNewMethodAdded

	^self onClassChanged!

onNewMethodAdded: anUMLParsedImplementation

	^self onClassChanged!

onUMLModelClassChanged

	^classBrowser onUMLModelClassChanged!

refreshClasses

	^self model: self model!

refreshInstancesVariables
	^classBrowser refreshInstancesVariables!

refreshRelations
	^classBrowser refreshRelations!

removeCategory
	^classBrowser removeCategory!

removeShowHideMethod

	self hasSelectedImplementation ifFalse: [^self].

	self selectedImplementation hideShowMessage: nil.
	self selectedImplementation hideShowMessageClass: nil.	!

removeUMLModel
	modelsPresenter hasSelection ifFalse: [^self].
	(MessageBox confirm: 'Are you sure to Uninstall <' , modelsPresenter selection name 
				, '> from the system ? (all instances will be removed)'
		caption: self applicationName) ifFalse: [^self].
	self defaultVirtualMachine uninstallUMLModel: modelsPresenter selection.
	modelsPresenter model: (ListModel 
				on: (self defaultVirtualMachine umlModels asSortedCollection: [:a :b | a name <= b name])).
	classBrowser resetAttributesAndRelations!

searchAttributeNamed
	| attributeName attributes shell |
	attributeName := Prompter prompt: 'Enter the name of the attribute' caption: self applicationName.
	(attributeName isNil or: [attributeName isEmpty]) ifTrue: [^self].
	attributes := OrderedCollection new.
	(self defaultVirtualMachine getUMLClasses 
		select: [:each | each hasWildCardVariableNamed: attributeName]) 
			do: [:each | attributes addAll: (each collectAttributesNamed: attributeName) asOrderedCollection].
	shell := UMLListAttributeShell showOn: attributes.
	shell view caption: shell view caption , ' - attribute named <' , attributeName , '>'!

searchAttributesOfType
	| typeToSearch attributes shell |

	typeToSearch := DetalleDeOpciones listaCon: self defaultVirtualMachine getAllClasses para: 'UMLClasses view' titulo: 'Select type to search in Attributes of UML Classes'.

	(typeToSearch isNil or: [typeToSearch isEmpty]) ifTrue: [^self].

	typeToSearch := typeToSearch last.

	attributes := OrderedCollection new.
	(self defaultVirtualMachine getUMLClasses select: [:each | each anyAttributeHasTypeNamed: typeToSearch name])
	do: [:each | attributes addAll: (each collectAttributesOfType: typeToSearch) asOrderedCollection].

	shell  := UMLListAttributeShell showOn: attributes.
	shell view caption: (shell view caption, ' - type <', typeToSearch name, '>') 
!

searchUndefinedAttributes

	UMLListAttributeShell showOn: self selectedModel allUndefinedAttributes!

searchUndefinedRelations

	UMLListRelationsShell showOn: self selectedModel allUndefinedRelations!

selectClass: anUMLClass 
	^classBrowser selectClass: anUMLClass !

selectClass: anUMLClass ifAbsent: aNiladicValuable 

	^classBrowser selectClass: anUMLClass ifAbsent: aNiladicValuable 
!

selectedCategory
	^classBrowser selectedCategory!

selectedClass

	^classBrowser selectedClass!

selectedClassDescription
	^classBrowser selectedClassDescription!

selectedClassIsMetaclass
	^classBrowser selectedClassIsMetaclass!

selectedImplementation

	^classBrowser selectedImplementation!

selectedModel

	^modelsPresenter selectionOrNil!

selectImplementation: anUMLParsedImplementation 

	^classBrowser selectImplementation: anUMLParsedImplementation !

selectModel: anUMLModel ifAbsent: aNiladicValuable 

	^modelsPresenter selection: anUMLModel ifAbsent: aNiladicValuable!

selectUMLClass: anUMLClass ifAbsent: aNiladicValuable 
	| umlModel |

	umlModel := model detect: [:each | each identityIncludes: anUMLClass] ifNone: [^aNiladicValuable value].
	modelsPresenter selection: umlModel ifAbsent: [].
	classBrowser selectUMLClass: anUMLClass ifAbsent: aNiladicValuable.!

setShowHideMessage

	self hasSelectedImplementation ifFalse: [^MessageBox notify: 'Select an UML Implementation to set Show/Hide message'].
	^UMLShowHideAspectShell showModalOn: self selectedImplementation.

	! !
!UMLModelBrowser categoriesFor: #aboutThisTool!public! !
!UMLModelBrowser categoriesFor: #addCategory!public! !
!UMLModelBrowser categoriesFor: #addTraitToSelectedClass!public! !
!UMLModelBrowser categoriesFor: #browseGlobals!public! !
!UMLModelBrowser categoriesFor: #browserImplementationDefenitions!public! !
!UMLModelBrowser categoriesFor: #browserImplementationOfCategory!public! !
!UMLModelBrowser categoriesFor: #browserImplementationReferences!public! !
!UMLModelBrowser categoriesFor: #browseSetupObjects!public! !
!UMLModelBrowser categoriesFor: #browseTree!public! !
!UMLModelBrowser categoriesFor: #browseUMLModelDatabase!public! !
!UMLModelBrowser categoriesFor: #checkSelectedMethod!public! !
!UMLModelBrowser categoriesFor: #chooseUMLTool!public!xmi-file! !
!UMLModelBrowser categoriesFor: #createComponents!public! !
!UMLModelBrowser categoriesFor: #createSchematicWiring!public! !
!UMLModelBrowser categoriesFor: #defineLoginManagerClass!public! !
!UMLModelBrowser categoriesFor: #deployDatabase!public! !
!UMLModelBrowser categoriesFor: #designCustomizedView!public! !
!UMLModelBrowser categoriesFor: #exit!public! !
!UMLModelBrowser categoriesFor: #exportMethodsReportToExcel!public! !
!UMLModelBrowser categoriesFor: #fileInMethodsOfCategory!public! !
!UMLModelBrowser categoriesFor: #fileInUMLModel!public! !
!UMLModelBrowser categoriesFor: #fileInUMLModelImplementations!public! !
!UMLModelBrowser categoriesFor: #fileOutMethodsOfCategory!public! !
!UMLModelBrowser categoriesFor: #fileOutUMLModel!public! !
!UMLModelBrowser categoriesFor: #fileOutUMLModelImplementations!public! !
!UMLModelBrowser categoriesFor: #hasSelectedCategory!public! !
!UMLModelBrowser categoriesFor: #hasSelectedClass!public! !
!UMLModelBrowser categoriesFor: #hasSelectedImplementation!public! !
!UMLModelBrowser categoriesFor: #hasSelectedModel!public! !
!UMLModelBrowser categoriesFor: #helpWithThisTool!public! !
!UMLModelBrowser categoriesFor: #importXMIFile!public!xmi-file! !
!UMLModelBrowser categoriesFor: #isClassSideSelected!public! !
!UMLModelBrowser categoriesFor: #licenciaPorDefecto!public!xmi-file! !
!UMLModelBrowser categoriesFor: #loginImplementation!public! !
!UMLModelBrowser categoriesFor: #menuBar!public! !
!UMLModelBrowser categoriesFor: #model:!public! !
!UMLModelBrowser categoriesFor: #onCategoriaAdded!public! !
!UMLModelBrowser categoriesFor: #onCategoriaChanged!public! !
!UMLModelBrowser categoriesFor: #onClassChanged!public! !
!UMLModelBrowser categoriesFor: #onMethodRemoved!public! !
!UMLModelBrowser categoriesFor: #onModelChanged!public! !
!UMLModelBrowser categoriesFor: #onNewMethodAdded!public! !
!UMLModelBrowser categoriesFor: #onNewMethodAdded:!public! !
!UMLModelBrowser categoriesFor: #onUMLModelClassChanged!public! !
!UMLModelBrowser categoriesFor: #refreshClasses!public! !
!UMLModelBrowser categoriesFor: #refreshInstancesVariables!public! !
!UMLModelBrowser categoriesFor: #refreshRelations!public! !
!UMLModelBrowser categoriesFor: #removeCategory!public! !
!UMLModelBrowser categoriesFor: #removeShowHideMethod!public! !
!UMLModelBrowser categoriesFor: #removeUMLModel!public! !
!UMLModelBrowser categoriesFor: #searchAttributeNamed!public! !
!UMLModelBrowser categoriesFor: #searchAttributesOfType!public! !
!UMLModelBrowser categoriesFor: #searchUndefinedAttributes!public! !
!UMLModelBrowser categoriesFor: #searchUndefinedRelations!public! !
!UMLModelBrowser categoriesFor: #selectClass:!public! !
!UMLModelBrowser categoriesFor: #selectClass:ifAbsent:!public! !
!UMLModelBrowser categoriesFor: #selectedCategory!public! !
!UMLModelBrowser categoriesFor: #selectedClass!public! !
!UMLModelBrowser categoriesFor: #selectedClassDescription!public! !
!UMLModelBrowser categoriesFor: #selectedClassIsMetaclass!public! !
!UMLModelBrowser categoriesFor: #selectedImplementation!public! !
!UMLModelBrowser categoriesFor: #selectedModel!public! !
!UMLModelBrowser categoriesFor: #selectImplementation:!public! !
!UMLModelBrowser categoriesFor: #selectModel:ifAbsent:!public! !
!UMLModelBrowser categoriesFor: #selectUMLClass:ifAbsent:!public! !
!UMLModelBrowser categoriesFor: #setShowHideMessage!public! !

!UMLModelBrowser class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() true 170 192 528 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 2719 21 674 1871 1331 416 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 246 8 0 0 163 2 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 784 nil nil nil 5 nil nil nil 784 482 170 176 34 2 410 ##(Smalltalk.ContainerView) 34 15 nil 784 34 2 8 1140850688 131073 896 nil nil nil 5 nil nil nil 896 482 170 176 528 false 170 192 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 896 34 2 8 1140850688 131073 1024 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 1024 655878 ##(Smalltalk.CardLayout) 138 144 34 2 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'UML Classes' 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 6 1 16 8 'doIt' 8 '(CardLabel text: ''UML Classes'' iconBlock: [UMLClass icon])' 8 #[29 30 34 112 31 161 106 194 105] 1232 1264 ##(Smalltalk.UMLClass) #icon #text:iconBlock: 1296 11 1 nil nil 410 ##(Smalltalk.TreeView) 34 27 nil 1024 34 2 8 1140916775 1025 1392 590918 3 ##(Smalltalk.TreeModel) nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 525062 ##(Smalltalk.TreeNode) nil nil nil 170 192 528 1090 8 4278190080 nil 21 265030 4 ##(Smalltalk.Menu) nil true 34 12 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) #browseClassReferences 8 'Browse Class References' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 1650 1 1682 #addTraitToSelectedClass 8 'Add Trait to Selected Class' 1 1 nil nil nil 1730 4097 1650 1 1682 #autogenerateInitializeMethod 8 'Generate #initialize Method' 1 1 nil nil nil 1730 4097 1650 1 1682 #inspectCustomizedNewInstance 8 'Inspect New Instance in Customized View' 1 1 nil nil nil 1730 4097 1650 1 1682 #inspectNewInstance 8 'Inspect New Instance' 1 1 nil nil nil 1730 4097 1650 1 1682 #addNewClass 8 'Add New Class' 1 1 nil nil nil 1650 1 1682 #removeClass 8 'Remove Class' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 1392 nil 8 1917192846 459270 ##(Smalltalk.Message) #name 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil 170 176 528 17 #smallIcons 1 170 ##(Smalltalk.PluggableLookupTable) 528 562 138 144 34 2 626 #createAt:extent: 34 2 674 9 53 674 443 601 1392 626 #contextMenu: 34 1 1616 1392 722 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 225 0 0 0 70 1 0 0] 8 #() 674 193 193 nil 27 1202 1234 8 'Classes list' 1282 0 nil 1314 6 1 16 8 'doIt' 8 '(CardLabel text: ''Classes list'' iconBlock: [ListViewColumn icon])' 8 #[29 30 34 112 31 161 106 194 105] 1232 2496 ##(Smalltalk.ListViewColumn) #icon #text:iconBlock: 2512 11 1 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 1024 34 2 8 1140920397 1025 2592 590662 2 ##(Smalltalk.ListModel) 138 144 528 nil 1504 1090 8 4278190080 nil 21 1602 nil true 34 12 1650 1 1682 #browseClassReferences 8 'Browse Class References' 1 1 nil nil nil 1730 4097 1650 1 1682 #addTraitToSelectedClass 8 'Add Trait to Selected Class' 1 1 nil nil nil 1730 4097 1650 1 1682 #autogenerateInitializeMethod 8 'Generate #initialize Method' 1 1 nil nil nil 1730 4097 1650 1 1682 #inspectCustomizedNewInstance 8 'Inspect New Instance in Customized View' 1 1 nil nil nil 1730 4097 1650 1 1682 #inspectNewInstance 8 'Inspect New Instance' 1 1 nil nil nil 1730 4097 1650 1 1682 #addNewClass 8 'Add New Class' 1 1 nil nil nil 1650 1 1682 #removeClass 8 'Remove Class' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 2592 nil 8 1917445487 2146 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 2208 nil nil nil nil nil nil 138 144 34 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Class Name' 401 #left 2146 #name 8 #() 1282 0 nil 1314 2 1 106 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 3360 7 513 nil nil nil 2592 nil 1 nil nil #report 528 nil 131169 nil 8 #(nil) 562 138 144 34 3 626 #createAt:extent: 34 2 674 9 53 674 443 601 2592 626 #contextMenu: 34 1 2736 2592 626 #text: 34 1 8 'Class Name' 2592 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 225 0 0 0 70 1 0 0] 8 #() 2448 nil 27 2592 170 192 34 4 1392 8 'hierarchy' 2592 8 'classes' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 1024 34 2 8 1140916736 1 3808 2658 138 144 34 2 2480 1248 nil 1504 nil nil 1 nil nil nil 3808 nil 8 1917116126 1282 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 3936 7 257 nil 1282 0 nil 3954 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 4000 7 257 nil 2208 nil nil nil nil nil #smallIcons nil nil nil nil nil 562 138 144 34 3 626 #createAt:extent: 34 2 674 1 1 674 459 661 3808 626 #basicSelectionsByIndex: 34 1 8 #(1) 3808 626 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 3808 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 229 0 0 0 74 1 0 0] 8 #() 2448 nil 27 562 138 144 34 1 626 #createAt:extent: 34 2 674 467 1 674 459 661 1024 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 233 0 0 0 0 0 0 0 206 1 0 0 74 1 0 0] 34 3 2592 1392 3808 2448 nil 27 8 'card' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 1 674 925 661 896 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 206 1 0 0 74 1 0 0] 34 3 410 ##(Smalltalk.SlideyInneyOuteyThing) 34 23 nil 896 34 2 8 1409286144 131073 4624 nil 1090 8 4278190080 nil 517 nil nil nil 4624 1138 138 144 34 1 1202 1234 8 'UML Models' 1282 0 nil 1314 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text:  ''UML Models'' iconBlock: [UMLModel icon]' 8 #[29 30 34 112 31 161 106 194 105] 1232 4800 ##(Smalltalk.UMLModel) #icon #text:iconBlock: 4816 11 1 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 410 ##(Smalltalk.SlidingCardTray) 34 22 nil 4624 34 2 8 1140850688 131073 4928 nil 1090 4704 nil 5 nil nil nil 4928 4720 170 192 34 2 4896 8 'modelsPresenter' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 4624 34 2 8 1140916864 1 5056 2658 138 144 34 1 4784 nil 1504 1090 4704 nil 1 nil nil nil 5056 nil 8 1917116126 ##(Smalltalk.BasicListAbstract) ##(Smalltalk.IconicListAbstract) 2208 nil nil nil nil nil #smallIcons nil nil nil nil nil 562 138 144 34 3 626 #createAt:extent: 34 2 674 1 1 674 457 661 5056 626 #basicSelectionsByIndex: 34 1 8 #(1) 5056 626 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 5056 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 228 0 0 0 74 1 0 0] 8 #() 2448 nil 27 nil 4624 674 33 33 1050182 1 ##(Smalltalk.ButtonInteractor) 4928 nil 1 590342 ##(Smalltalk.Rectangle) 674 357 3 674 389 35 nil 1682 #togglePin 8 'Pin or Unpin the tray' 1 1 nil nil nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 57 9 674 393 645 4928 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 28 0 0 0 4 0 0 0 224 0 0 0 70 1 0 0] 34 1 4896 2448 nil 27 34 2 8 1140920397 1025 4896 2658 138 144 528 nil 1504 1090 8 4278190080 nil 5 1602 nil true 34 18 1650 1 1682 #browseGlobals 8 'Browse Global Objects' 1 1 nil nil nil 1650 1 1682 #browseSetupObjects 8 'Browse Setup Objects' 1 1 nil nil nil 1730 4097 1650 1 1682 #defineLoginManagerClass 8 'Define Login Manager class' 1 1 nil nil nil 1730 4097 1650 1 1682 #importXMIFile 8 'Import XMI File' 1 1 nil nil nil 1730 4097 1650 1 1682 #fileOutUMLModelImplementations 8 'File out UML Model Implementations' 1 1 nil nil nil 1650 1 1682 #fileInUMLModelImplementations 8 'File in UML Model Implementations' 1 1 nil nil nil 1730 4097 1650 1 1682 #fileOutUMLModel 8 'Store UML Model' 1 1 nil nil nil 1650 1 1682 #fileInUMLModel 8 'Restore UML Model from File' 1 1 nil nil nil 1730 4097 1650 1 1682 #browseUMLModelDatabase 8 'Browse UML Model Database' 1 1 nil nil nil 1730 4097 1650 1 1682 #removeUMLModel 8 'Remove UML Model' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 65027 1 nil nil 1730 4097 1650 1 1682 #deployDatabase 8 'Deploy Database' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 4896 nil 8 1917445487 2146 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 2208 nil nil nil nil nil nil 138 144 34 2 3282 8 'Model Name' 581 #left 2146 #name 8 #() 1282 0 nil 1314 2 1 3392 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 6736 7 513 nil nil nil 4896 nil 1 nil nil 3282 8 'Login Manager Class' 201 #left 2146 #printLoginManagerClass 6720 1282 0 nil 1314 2 1 2144 8 'doIt' 8 '[:a :b | a printLoginManagerClass <= b printLoginManagerClass]' 8 #[30 105 226 0 226 32 130 106] #printLoginManagerClass 6864 7 513 nil nil nil 4896 nil 1 nil nil #report 528 nil 131169 nil 34 4 nil nil 674 1 1 nil 562 138 144 34 3 626 #createAt:extent: 34 2 674 1 37 674 393 609 4896 626 #contextMenu: 34 1 5840 4896 626 #text: 34 1 8 'Model Name' 4896 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 196 0 0 0 66 1 0 0] 8 #() 2448 nil 27 4896 170 192 528 nil 5056 4928 674 201 201 401 1 31 nil nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 1 674 457 661 4624 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 228 0 0 0 74 1 0 0] 34 2 4928 5056 2448 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 896 34 2 8 1140850688 1 7408 nil 1090 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 7408 nil 1 #left nil nil nil 674 1 1 674 9 9 nil 7536 nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 457 1 674 11 661 7408 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 228 0 0 0 0 0 0 0 233 0 0 0 74 1 0 0] 8 #() 2448 nil 27 1024 2448 nil 27 5 false 170 192 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 784 34 2 8 1409286144 131073 7760 nil 1090 8 4278190080 nil 5 nil nil nil 7760 1138 138 144 34 2 1202 1234 8 'User Category' 1282 0 nil 1314 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''User Category'' iconBlock: [String icon]' 8 #[29 30 34 112 31 161 106 194 105] 1232 7936 16 #icon #text:iconBlock: 7952 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 7760 34 2 8 1140850688 131073 8032 nil 1090 8 4278190080 nil 21 nil nil nil 8032 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.ListPresenter) #resource_UMLCategory_list nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 9 97 674 449 557 8032 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 48 0 0 0 228 0 0 0 70 1 0 0] 528 2448 nil 27 1202 1234 8 'Virtual Category' 1282 0 nil 1314 6 1 1232 8 'doIt' 8 '(CardLabel text: ''Virtual Category'' iconBlock: [UMLAllButTraitCategory icon])' 8 #[29 30 34 112 31 161 106 194 105] 1232 8336 ##(Smalltalk.UMLAllButTraitCategory) #icon #text:iconBlock: 8352 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 7760 34 2 8 1140850688 131073 8432 nil 1090 8 4278190080 nil 21 nil nil nil 8432 8130 ##(Smalltalk.ListPresenter) #resource_UMLCategory_virtual_list nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 9 97 674 449 557 8432 722 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 48 0 0 0 228 0 0 0 70 1 0 0] 528 2448 nil 27 8032 170 192 34 4 8032 8 'categoriesPresenter' 8432 8 'virtualCategoriesPresenter' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 7760 34 2 8 1140916736 1 8752 2658 138 144 34 2 8320 7920 nil 1504 nil nil 1 nil nil nil 8752 nil 8 1917116126 1282 0 nil 3954 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 8880 7 257 nil 1282 0 nil 3954 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 8928 7 257 nil 2208 nil nil nil nil nil #smallIcons nil nil nil nil nil 562 138 144 34 3 626 #createAt:extent: 34 2 674 1 1 674 465 661 8752 626 #basicSelectionsByIndex: 34 1 8 #(2) 8752 626 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 8752 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 232 0 0 0 74 1 0 0] 8 #() 2448 nil 27 562 138 144 34 1 626 #createAt:extent: 34 2 674 1407 1 674 465 661 7760 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 191 2 0 0 0 0 0 0 167 3 0 0 74 1 0 0] 34 3 8432 8032 8752 2448 nil 27 8 'categoryCard' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 1 674 1871 661 784 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 74 1 0 0] 34 5 896 410 ##(Smalltalk.Splitter) 34 12 nil 784 34 2 8 1140850688 1 9552 nil 1090 8 4278190080 nil 517 nil nil nil 7506 9552 nil 1 #left nil nil nil 674 1 1 7552 nil 9664 nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 925 1 674 11 661 9552 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 206 1 0 0 0 0 0 0 211 1 0 0 74 1 0 0] 8 #() 2448 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 784 34 2 8 1140850688 131073 9840 nil nil nil 5 nil nil nil 9840 788230 ##(Smalltalk.BorderLayout) 1 1 nil 410 ##(Smalltalk.ContainerView) 34 15 nil 9840 34 2 8 1409286144 131073 9936 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 9936 482 170 176 528 false 170 192 34 4 410 ##(Smalltalk.RadioButton) 34 16 nil 9936 34 2 8 1140924425 1 10096 721990 2 ##(Smalltalk.ValueHolder) nil nil 1376774 ##(Smalltalk.PluggableSearchPolicy) 2146 #= 8 #() 2146 #hash 8 #() false 1090 8 4278190080 nil 5 nil nil nil 10096 nil 8 1917288844 852486 ##(Smalltalk.NullConverter) nil nil nil 562 138 144 34 2 626 #createAt:extent: 34 2 674 241 1 674 223 61 10096 626 #text: 34 1 8 'Class methods' 10096 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 120 0 0 0 0 0 0 0 231 0 0 0 30 0 0 0] 8 #() 2448 nil 27 8 'metaclassSide' 410 ##(Smalltalk.RadioButton) 34 16 nil 9936 34 2 8 1141058825 1 10592 10162 nil false 10194 2146 #= 8 #() 2146 #hash 8 #() true 1090 10304 nil 5 nil nil nil 10592 nil 8 1917288844 10338 nil nil nil 562 138 144 34 2 626 #createAt:extent: 34 2 674 21 1 674 221 61 10592 626 #text: 34 1 8 'Instance methods' 10592 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 120 0 0 0 30 0 0 0] 8 #() 2448 nil 27 8 'classSide' 5490 674 21 1 674 1 1 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 601 674 463 61 9936 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 44 1 0 0 231 0 0 0 74 1 0 0] 34 2 10592 10096 2448 nil 27 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 9840 34 2 8 1140920397 1025 11232 2658 138 144 528 nil 1504 1090 8 4278190080 nil 13 1602 nil true 34 8 1650 1 1682 #browserImplementationDefenitions 8 'Browse Definitions' 1 1 nil nil nil 1650 1 1682 #browserImplementationReferences 8 'Browse References' 1 1 nil nil nil 1650 1 1682 #browseTree 8 'Browse Tree' 1 1 nil nil nil 1730 4097 1650 1 1682 #setShowHideMessage 8 'Set Show/Hide Message' 1 1 nil nil nil 1650 1 1682 #removeShowHideMethod 8 'Remove Show/Hide Method' 1 1 nil nil nil 1730 4097 1650 1 1682 #removeImplementation 8 'Remove Implementation' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 11232 nil 8 1917445487 2146 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 2208 nil nil nil nil nil nil 138 144 34 2 3282 8 'Method Name' 601 #left 2146 #name 8 #() 1282 0 nil 1314 2 1 3392 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 11872 7 513 nil nil nil 11232 nil 1 nil nil 3282 8 'Show/Hide Message' 201 #left 2146 #hideShowMessage 8 #() 1282 0 nil 1314 2 1 1280 8 'doIt' 8 '[:a :b | a printHideShowMessage <= b printHideShowMessage ]' 8 #[30 105 226 0 226 32 130 106] #printHideShowMessage 12016 7 513 nil nil nil 11232 nil 1 nil nil #report 528 nil 131169 nil 8 #(nil) 562 138 144 34 3 626 #createAt:extent: 34 2 674 1 1 674 463 601 11232 626 #contextMenu: 34 1 11360 11232 626 #text: 34 1 8 'Method Name' 11232 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 231 0 0 0 44 1 0 0] 8 #() 2448 nil 27 170 192 34 4 9936 8 'radioButtonsPresenter' 11232 8 'implementations' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 935 1 674 463 661 9840 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 211 1 0 0 0 0 0 0 186 2 0 0 74 1 0 0] 34 2 11232 9936 2448 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 784 34 2 8 1140850688 1 12576 nil 1090 9632 nil 517 nil nil nil 7506 12576 nil 1 #left nil nil nil 674 1 1 7552 nil 12672 nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1397 1 674 11 661 12576 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 186 2 0 0 0 0 0 0 191 2 0 0 74 1 0 0] 8 #() 2448 nil 27 7760 2448 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 12848 nil 1090 8 4278190080 nil 517 nil nil nil 7506 12848 nil 1 #left nil nil nil 674 1 1 7552 nil 12960 nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 661 674 1871 11 12848 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 74 1 0 0 167 3 0 0 79 1 0 0] 8 #() 2448 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 13136 nil nil nil 5 nil nil nil 13136 482 170 176 528 false 170 192 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 13136 34 2 8 1409286144 131073 13264 nil 1090 8 4278190080 nil 5 nil nil nil 13264 1138 138 144 34 5 1202 1234 8 'Attributes/Relations' 1282 0 nil 1314 7 1 1232 8 'doIt' 8 '(CardLabel text: ''Attributes/Relations'' iconBlock: [Icon fromId: ''TypeConverter.ico''])' 8 #[29 30 35 113 31 32 180 106 195 105] 1232 13440 6448 8 'TypeConverter.ico' #fromId: #text:iconBlock: 13456 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 13264 34 2 8 1140850688 131073 13552 nil nil nil 5 nil nil nil 13552 482 170 176 528 false 170 192 34 4 410 ##(Smalltalk.ReferenceView) 34 14 nil 13552 34 2 8 1140850688 131073 13680 nil 1090 8 4278190080 nil 5 1602 nil true 34 7 1650 1 1682 #addUMLRelation 8 'Add UML Relation' 1 1 nil nil nil 1650 1 1682 #removeUMLRelation 8 'Remove UML Relation' 1 1 nil nil nil 1730 4097 1650 1 1682 #switchSourceNavigability 8 'Switch Source Navigability' 1 1 nil nil nil 1650 1 1682 #switchTargetNavigability 8 'Switch Target Navigability' 1 1 nil nil nil 1730 4097 1650 1 1682 #generateAttributesFromRelations 8 'Generate Attributes from Relations' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 13680 8130 ##(Smalltalk.ListPresenter) #resource_UMLRelations_view nil 562 138 144 34 2 626 #createAt:extent: 34 2 674 937 1 674 919 601 13680 626 #contextMenu: 34 1 13776 13680 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 212 1 0 0 0 0 0 0 159 3 0 0 44 1 0 0] 528 2448 nil 27 8 'relationsPresenter' 410 ##(Smalltalk.ReferenceView) 34 14 nil 13552 34 2 8 1140850688 131073 14304 nil 1090 8 4278190080 nil 5 1602 nil true 34 7 1650 1 1682 #browseAttributeClass 8 'Browse Attribute Class' 1 1 nil nil nil 1730 4097 1650 1 1682 #addSimpleAttribute 8 'Add Simple Attribute' 1 1 nil nil nil 1650 1 1682 #removeAttribute 8 'Remove Attribute' 1 1 nil nil nil 1730 4097 1650 1 1682 #switchEnabled 8 'Enable/Disable' 1 1 nil nil nil 1650 1 1682 #switchLargeString 8 'Switch Large String' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 14304 8130 ##(Smalltalk.ListPresenter) #resource_UMLAttributes_view nil 562 138 144 34 2 626 #createAt:extent: 34 2 674 1 1 674 919 601 14304 626 #contextMenu: 34 1 14400 14304 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 203 1 0 0 44 1 0 0] 528 2448 nil 27 8 'attributesPresenter' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 9 53 674 1855 601 13552 722 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 70 1 0 0] 34 3 14304 410 ##(Smalltalk.Splitter) 34 12 nil 13552 34 2 8 1140850688 1 15088 nil 1090 8 4278190080 nil 517 nil nil nil 7506 15088 nil 1 #left nil nil nil 674 1 1 7552 nil 15200 nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 919 1 674 19 601 15088 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 203 1 0 0 0 0 0 0 212 1 0 0 44 1 0 0] 8 #() 2448 nil 27 13680 2448 nil 27 1202 1234 8 'Source' 1282 0 nil 1314 6 1 1232 8 'doIt' 8 '(CardLabel text: ''Source'' iconBlock: [UMLParsedImplementation icon])' 8 #[29 30 34 112 31 161 106 194 105] 1232 15408 ##(Smalltalk.UMLParsedImplementation) #icon #text:iconBlock: 15424 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 13264 34 2 8 1140850688 131073 15504 nil 1090 8 4278190080 nil 5 nil nil nil 15504 8130 ##(Smalltalk.UMLImplementationComposite) #resource_Default_view nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 9 53 674 1855 601 15504 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 70 1 0 0] 528 2448 nil 27 1202 1234 8 'Diagram' 1282 0 nil 1314 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Diagram'' iconBlock: [UMLModel icon]' 8 #[29 30 34 112 31 161 106 194 105] 1232 15792 ##(Smalltalk.UMLModel) #icon #text:iconBlock: 15808 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 13264 34 2 8 1140850688 131073 15888 nil nil nil 5 nil nil nil 15888 482 170 176 528 false 170 192 34 2 410 ##(Smalltalk.GdiplusImageView) 34 28 nil 15888 34 2 8 1140850944 1 16016 10162 nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil nil nil 5 nil nil nil 16016 nil nil 10338 nil nil nil nil #normal 1 5490 674 1 1 674 1 1 nil nil #none nil nil nil nil nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 1 674 1855 601 16016 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 159 3 0 0 44 1 0 0] 8 #() 2448 nil 29 8 'diagram' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 9 53 674 1855 601 15888 722 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 70 1 0 0] 34 1 16016 2448 nil 27 1202 1234 8 'Traits' 1282 0 nil 1314 7 1 1232 8 'doIt' 8 '(CardLabel text: ''Traits'' iconBlock: [Icon fromFile: ''icons/trait.ico''])' 8 #[45 30 35 113 47 32 180 106 195 105] 983558 ##(Smalltalk.VariableBinding) #CardLabel 1232 16560 16658 #Icon 6448 8 'icons/trait.ico' #fromFile: #text:iconBlock: 16576 11 1 nil nil 410 ##(Smalltalk.ListView) 34 30 nil 13264 34 2 8 1409355853 1025 16720 2658 138 144 528 nil 1504 1090 8 4278190080 nil 5 1602 nil true 34 2 1650 1 1682 #addTrait 8 'Add Trait' 1 1 nil nil nil 1650 1 1682 #removeTrait 8 'Remove Trait' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 16720 nil 8 1917445487 2146 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 2208 nil nil nil nil nil nil 138 144 34 1 3282 8 'TRAIT Name' 501 #left 2146 #name 8 #() 1282 0 nil 1314 2 1 3392 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 17136 7 513 nil nil nil 16720 nil 1 nil nil #report 528 nil 131169 nil 34 4 nil nil 674 1 1 nil 562 138 144 34 3 626 #createAt:extent: 34 2 674 9 53 674 1855 601 16720 626 #contextMenu: 34 1 16848 16720 626 #text: 34 1 8 'TRAIT Name' 16720 722 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 70 1 0 0] 8 #() 2448 nil 27 1202 1234 8 'Class Comments' 1282 0 nil 1314 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Class Comments'' iconBlock: [String icon]' 8 #[45 30 34 112 47 161 106 194 105] 16658 #CardLabel 1232 17520 16658 #String ##(Smalltalk.String) #icon #text:iconBlock: 17536 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 13264 34 2 8 1140850688 131073 17648 nil nil nil 5 nil nil nil 17648 482 170 176 528 false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 17648 34 2 8 1140850688 131073 17776 nil 1090 8 4278190080 nil 5 nil nil nil 17776 8130 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 1 674 1855 601 17776 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 159 3 0 0 44 1 0 0] 528 2448 nil 27 8 'classComments' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 9 53 674 1855 601 17648 722 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 163 3 0 0 70 1 0 0] 34 1 17776 2448 nil 27 15504 170 192 34 4 16720 8 'traitsPresenter' 15504 8 'implementationComposite' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 13264 34 2 8 1140916736 1 18272 2658 138 144 34 5 15392 13424 16544 15776 17504 nil 1504 nil nil 1 nil nil nil 18272 nil 8 1917116126 1282 0 nil 3954 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 18400 7 257 nil 1282 0 nil 3954 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 18448 7 257 nil 2208 nil nil nil nil nil #smallIcons nil nil nil nil nil 562 138 144 34 3 626 #createAt:extent: 34 2 674 1 1 674 1871 661 18272 626 #basicSelectionsByIndex: 34 1 8 #(1) 18272 626 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 18272 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 74 1 0 0] 8 #() 2448 nil 27 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 1 674 1871 661 13264 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 167 3 0 0 74 1 0 0] 34 6 15504 13552 16720 15888 17648 18272 2448 nil 27 8 'card' nil 562 138 144 34 1 626 #createAt:extent: 34 2 674 1 671 674 1871 661 13136 722 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 79 1 0 0 167 3 0 0 153 2 0 0] 34 1 13264 2448 nil 27 2448 nil 27 )! !
!UMLModelBrowser class categoriesFor: #resource_Default_view!public!resources-views! !

