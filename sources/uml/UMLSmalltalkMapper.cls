"Filed out from Dolphin Smalltalk 7"!

Object subclass: #UMLSmalltalkMapper
	instanceVariableNames: 'virtualMachine newClasses dbServer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLSmalltalkMapper guid: (GUID fromString: '{3cc1c0e4-c1b8-4a85-8316-8bc852a81751}')!
UMLSmalltalkMapper comment: ''!
!UMLSmalltalkMapper categoriesForClass!Unclassified! !
!UMLSmalltalkMapper methodsFor!

baseClasses

	^virtualMachine getUMLClasses select: [:each | each umlSuperclass == virtualMachine objectClass]!

baseClassesWithoutDuplicates

	^self baseClasses reject: [:each | Smalltalk keys includes: each name asSymbol]!

compileAccessors

	newClasses do: [:each | | source umlClass |
		umlClass := virtualMachine getAnyClassNamed: each name asString.
		umlClass instancesVariables do: [:eachAttr | 
			source := self createGetSourceForInstVar: eachAttr.
			each compile: source classified: 'accessing-private'.
			source := self createSetSourceForInstVar: eachAttr.
			each compile: source classified: 'accessing-private'.].].
!

compileButtonFor: aidaWebClass aspect: aspectSymbol
	"Create the methods that render a WebButton to execute <aspectSymbol> [-aspectSymbol-WebGrid]"
	| string umlClass implementation methodName noShowHide withShowHide |

	umlClass := self getUMLClassFrom: (Smalltalk at: (aidaWebClass name allButLast: 3) asSymbol).
	implementation := umlClass implementationNamed: aspectSymbol.
	methodName := (aspectSymbol copyWithoutAll: ':') , 'Button
	'. 
	noShowHide := '	^(WebButton text: ''', (aspectSymbol copyWithoutAll: ':'), ''' action: #', aspectSymbol, ')
		yourself'.
	implementation hasShowHideMessage  ifTrue: [withShowHide := '(self observee perform: #', implementation hideShowMessage, ' with: self currentUser) ifFalse: [^WebElement newDiv].'].

	string := methodName, (implementation hasShowHideMessage ifTrue: [withShowHide, String lineDelimiter, noShowHide] ifFalse: [noShowHide]).

	aidaWebClass compile: string categories: (OrderedCollection with: (MethodCategory name: 'uf_web buttons')).

	self compileButtonForObserveeWith: aidaWebClass aspect: aspectSymbol.!

compileButtonForObserveeWith: stClass aspect: aspectSymbol
	"Create a method to associate the <observee> and the WebApplication. This method is triggered from a web button"
	| stringSource |

	stringSource := aspectSymbol, '
		"This method is triggered from a web button"

		^self observee ', aspectSymbol , '.'. 

	stClass compile: stringSource categories: (OrderedCollection with: (MethodCategory name: 'uf_buttons actions'))!

compileCollectionAspects

	newClasses do: [:each | | source umlClass |
		umlClass := virtualMachine getAnyClassNamed: each name asString.
		source := 'categoryCollections', String lineDelimiter, String tab, '^', umlClass categoriesCollections asArray printString.
		each compile: source].!

compileCollectionButtonFor: aidaWebClass aspect: aspectSymbol
	"Create the methods that render a WebButton to execute <aspectSymbol> [-aspectSymbol-WebGrid]"
	| string umlClass implementation methodName noShowHide withShowHide |

	umlClass := self getUMLClassFrom: (Smalltalk at: (aidaWebClass name allButLast: 3) asSymbol).
	implementation := umlClass implementationNamed: aspectSymbol.
	methodName := (aspectSymbol copyWithoutAll: ':') , 'Button
	'. 
	noShowHide := '	^(WebButton text: ''', (aspectSymbol copyWithoutAll: ':'), ''' action: #', aspectSymbol, ')
		yourself'.
	implementation hasShowHideMessage  ifTrue: [withShowHide := '(self observee perform: #', implementation hideShowMessage, ' with: self currentUser) ifFalse: [^WebElement newDiv].'].

	string := methodName, (implementation hasShowHideMessage ifTrue: [withShowHide, String lineDelimiter, noShowHide] ifFalse: [noShowHide]).

	aidaWebClass compile: string categories: (OrderedCollection with: (MethodCategory name: 'uf_web buttons')).

	self compileCollectionButtonForObserveeWith: aidaWebClass aspect: aspectSymbol.!

compileCollectionButtonForObserveeWith: aidaWebClass aspect: aspectSymbol
	"Create a method to associate the <observee> and the WebApplication. This method is triggered fro := bum a web button"
	| umlClass umlInstance buttonConfiguration collectionMethod method stringSource |

	umlClass := self getUMLClassFrom: (Smalltalk at: (aidaWebClass name allButLast: 3) asSymbol).
	umlInstance := umlClass newInstance.
	buttonConfiguration := (umlInstance vmPerform: aspectSymbol) smalltalkObject. "anOrderedCollection: 1- st method name 2- collection of args"
	method := buttonConfiguration first smalltalkObject. "method to call with the selected method"
	collectionMethod := (umlClass implementationNamed: aspectSymbol) parsedCode body statements fourth arguments last formattedCode. "method to call to get the collection of possibles arguments"
	collectionMethod := (collectionMethod subStrings: ' ') last, ')'. "erase self from the string -self methodToExecute-"
	stringSource := aspectSymbol , '
		"This method is triggered from a web button"

		| webGrid webDialog webDialogResult |
		webGrid := self newWebGridColumns: #() aspects: #(printString) columnLinkViews: #() collection: (self observee ', collectionMethod , '.
		webDialog := WebDialogWebGrid newFor: webGrid.
		webDialogResult := self ask: webDialog.
		^self observee ', method, ' webDialogResult checkboxesCollection asArray.'. 

	aidaWebClass compile: stringSource categories: (OrderedCollection with: (MethodCategory name: 'uf_buttons actions'))!

compileExternalButtonFor: aidaWebClass aspect: aspectSymbol
	"Create the methods that render a WebButton to execute <aspectSymbol> [-aspectSymbol-WebGrid]"
	| string umlClass implementation methodName noShowHide withShowHide |

	umlClass := self getUMLClassFrom: (Smalltalk at: (aidaWebClass name allButLast: 3) asSymbol).
	implementation := umlClass implementationNamed: aspectSymbol.
	methodName := (aspectSymbol copyWithoutAll: ':') , 'Button
	'. 
	noShowHide := '	^(WebButton text: ''', (aspectSymbol copyWithoutAll: ':'), ''' action: #', aspectSymbol, ')
		yourself'.
	implementation hasShowHideMessage  ifTrue: [withShowHide := '(self observee perform: #', implementation hideShowMessage, ' with: self currentUser) ifFalse: [^WebElement newDiv].'].

	string := methodName, (implementation hasShowHideMessage ifTrue: [withShowHide, String lineDelimiter, noShowHide] ifFalse: [noShowHide]).

	aidaWebClass compile: string categories: (OrderedCollection with: (MethodCategory name: 'uf_web buttons'))!

compileLoginClass
	| source |

	newClasses isEmpty ifTrue: [^self].

	source := 'loginClass
	^', (self getUMLClassFrom: newClasses first) umlModel loginManager name.

	UMLSmalltalkObjectApp compile: source!

compileUMLClassesAndMetaclassMethods

	newClasses do: [:each | | source umlClass |
		umlClass := virtualMachine getAnyClassNamed: each name asString.
		(umlClass implementations reject: [:eachImplementation | eachImplementation getCategories anySatisfy: [:eachCat | eachCat isUserCategory and: [eachCat name = 'Not Deploy'] ] ]) "-Not Deploy- category avoid an UML method to be deployed as Smalltalk methods"
		do: [:eachImplementation | 
			source := eachImplementation printParsedCode.
			each compile: source].

		(umlClass getMetaclass implementations reject: [:eachImplementation | eachImplementation getCategories anySatisfy: [:eachCat | eachCat isUserCategory and: [eachCat name = 'Not Deploy'] ] ]) "-Not Deploy- category avoid an UML method to be deployed as Smalltalk methods"
			do: [:eachImplementation | 
					source := eachImplementation printParsedCode.
					each class compile: source].
	].
!

compileUserButtonFor: aidaWebClass aspect: aspectSymbol
	"Create the methods that render a WebButton to execute <aspectSymbol> [-aspectSymbol-WebGrid]"
	| string umlClass implementation methodName noShowHide withShowHide |

	umlClass := self getUMLClassFrom: (Smalltalk at: (aidaWebClass name allButLast: 3) asSymbol).
	implementation := umlClass implementationNamed: aspectSymbol.
	methodName := (aspectSymbol copyWithoutAll: ':') , 'Button
	'. 
	noShowHide := '	^(WebButton text: ''', (aspectSymbol copyWithoutAll: ':'), ''' action: #', aspectSymbol, ')
		yourself'.
	implementation hasShowHideMessage  ifTrue: [withShowHide := '(self observee perform: #', implementation hideShowMessage, ' with: self currentUser) ifFalse: [^WebElement newDiv].'].

	string := methodName, (implementation hasShowHideMessage ifTrue: [withShowHide, String lineDelimiter, noShowHide] ifFalse: [noShowHide]).

	aidaWebClass compile: string categories: (OrderedCollection with: (MethodCategory name: 'uf_web buttons')).

	self compileUserButtonForObserveeWith: aidaWebClass aspect: aspectSymbol.!

compileUserButtonForObserveeWith: stClass aspect: aspectSymbol
	"Create a method to associate the <observee> and the WebApplication. This method is triggered from a web button"
	| stringSource |

	stringSource := aspectSymbol, ' currentUser
		"This method is triggered from a web button"

		^self observee ', aspectSymbol , ' self currentUser.'. 

	stClass compile: stringSource categories: (OrderedCollection with: (MethodCategory name: 'uf_buttons actions'))!

compileUserCollectionButtonFor: aidaWebClass aspect: aspectSymbol
	"Create the methods that render a WebButton to execute <aspectSymbol> [-aspectSymbol-WebGrid]"
	| string umlClass implementation methodName noShowHide withShowHide |

	umlClass := self getUMLClassFrom: (Smalltalk at: (aidaWebClass name allButLast: 3) asSymbol).
	implementation := umlClass implementationNamed: aspectSymbol.
	methodName := (aspectSymbol copyWithoutAll: ':') , 'Button
	'. 
	noShowHide := '	^(WebButton text: ''', (aspectSymbol copyWithoutAll: ':'), ''' action: #', aspectSymbol, ')
		yourself'.
	implementation hasShowHideMessage  ifTrue: [withShowHide := '(self observee perform: #', implementation hideShowMessage, ' with: self currentUser) ifFalse: [^WebElement newDiv].'].

	string := methodName, (implementation hasShowHideMessage ifTrue: [withShowHide, String lineDelimiter, noShowHide] ifFalse: [noShowHide]).

	aidaWebClass compile: string categories: (OrderedCollection with: (MethodCategory name: 'uf_web buttons')).

	self compileUserCollectionButtonForObserveeWith: aidaWebClass aspect: aspectSymbol.

	!

compileUserCollectionButtonForObserveeWith: aidaWebClass aspect: aspectSymbol
	"Create a method to associate the <observee> and the WebApplication. This method is triggered fro := bum a web button"
	| umlClass umlInstance buttonConfiguration collectionMethod method stringSource |

	umlClass := self getUMLClassFrom: (Smalltalk at: (aidaWebClass name allButLast: 3) asSymbol).
	umlInstance := umlClass newInstance.
	buttonConfiguration := (umlInstance vmPerform: aspectSymbol) smalltalkObject. "anOrderedCollection: 1- st method name 2- collection of args"
	method := buttonConfiguration first smalltalkObject. "method to call with the selected method"
	collectionMethod := (umlClass implementationNamed: aspectSymbol) parsedCode body statements fourth arguments last formattedCode. "method to call to get the collection of possibles arguments"
	collectionMethod := (collectionMethod copyWithoutAll: ''''), ')'. "erase self from the string -self methodToExecute-"
	stringSource := aspectSymbol , '
		"This method is triggered from a web button"
		| webGrid webDialog webDialogResult |

		webGrid := self newWebGridColumns: #() aspects: #(printString) columnLinkViews: #() collection: (self observee ', collectionMethod , '.
		webDialog := WebDialogWebGrid newFor: webGrid.
		webDialogResult := self ask: webDialog.
		^self observee perform: #', method, ' withArguments: (Array with: webDialogResult checkboxesCollection asArray with: self currentUser).'. 

	aidaWebClass compile: stringSource categories: (OrderedCollection with: (MethodCategory name: 'uf_buttons actions'))!

compileViewTabFor: aidaWebClass aspect: aspectSymbol

	aidaWebClass compile: 'view', aspectSymbol capitalized, '
		| webPage |
		webPage := WebElement new.
		webPage add: self viewTabComponent.
		webPage addBreak; addBreak.
		webPage add: self ', aspectSymbol, 'WebGrid.', '
		webPage style: self tabSectionStyle.
		self style pageFrameWith: webPage title: self observee class name'.

	self compileWebGridIn: aidaWebClass aspect: aspectSymbol.!

compileWebButtons
	"All ST classes has been created. Now we compile web buttons from U-Fabrik"

	newClasses do: [:each | | appClass umlClass |
		appClass := Smalltalk at: (each name, 'App') asSymbol.
		umlClass := virtualMachine getAnyClassNamed: each name asString.
		umlClass buttonsCollectionCollection do: [:aspectSymbol | self compileCollectionButtonFor: appClass aspect: aspectSymbol].
		umlClass buttonsCollection do: [:aspectSymbol | self compileButtonFor: appClass aspect: aspectSymbol].
		umlClass buttonsUserCollection do: [:aspectSymbol | self compileUserButtonFor: appClass aspect: aspectSymbol].
		umlClass buttonsUserCollectionCollection do: [:aspectSymbol | self compileUserCollectionButtonFor: appClass aspect: aspectSymbol].
	].

		"umlClass buttonsExternalCollection do: [:aspectSymbol | self compileExternalButtonFor: appClass aspect: aspectSymbol]."
		"umlClass buttonsArgCollection do: [:aspectSymbol | self compileArgButtonFor: appClass aspect: aspectSymbol]."!

compileWebGridIn: aidaWebClass aspect: aspectSymbol
	"Create the methods that render a WebGrid to display a collection of objects [-aspectSymbol-WebGrid]"

aidaWebClass compile: aspectSymbol, 'WebGrid

	^(WebGrid new width: self style pageContentWidth)
		columnNames: #(nil nil nil);
		columnAspects: ', (self getAspectsForStClass: aidaWebClass aspect: aspectSymbol) ,';
		columnLinkViews: #(nil nil nil);
		collection: ((self observee perform: #', aspectSymbol, ')  asSortedCollection: [:u1 :u2 | u1 "username" printString < u2 "username"printString]);
		columnFilters: #(nil true true);
		setNumbering;
		rowsOnPage: 20;
		yourself'!

compileWebViewTabs

	newClasses do: [:each | | appClass umlClass |
		appClass := Smalltalk at: (each name, 'App') asSymbol.
		umlClass := virtualMachine getAnyClassNamed: each name asString.
		(umlClass categoriesCollections, (umlClass collectionVariables collect: [:eachVar | eachVar name])) 
			do: [:aspectSymbol | self compileViewTabFor: appClass aspect: aspectSymbol].].!

createBaseClasses

	newClasses := OrderedCollection new.
	self baseClassesWithoutDuplicates do: [:each |
		newClasses addAll: each createSmalltalkClassCascade. "createSmalltalkClass"].

	self compileUMLClassesAndMetaclassMethods.

	self compileAccessors.

	self compileCollectionAspects.

	self compileWebViewTabs.

	self compileWebButtons.

	self compileLoginClass.!

createDataBaseStructureMethodFor: anUMLClass
	| source |

	source := 'addClassDefinitionTo: aTable', String lineDelimiter , 'aTable', String  lineDelimiter, String  tab.
	anUMLClass attributes do: [:eachAttr | 
		source := source, 'define: #', eachAttr getName, ' as: (', (self printDBDefinitionFor: eachAttr), ');', String lineDelimiter, String tab.].
	anUMLClass attributes notEmpty ifTrue: [source := source , 'yourself'].
	(Smalltalk at: anUMLClass name) class compile: source!

createDataBaseStructureMethods

	newClasses do: [:each | |  umlClass |
		umlClass := virtualMachine getAnyClassNamed: each name asString.
		self createDataBaseStructureMethodFor: umlClass].!

createGetSourceForInstVar: anUMLClassAttribute

	^anUMLClassAttribute getName, String lineDelimiter, String tab, '^', anUMLClassAttribute getName!

createInitialObjects
	| session |

	session := dbServer newSession.
	self getGlobalClasses do: [:each | each perform: #_initialInstancesIn: with: session].

	session commit.
	session closeSession.!

createSetSourceForInstVar: anUMLClassAttribute

	^anUMLClassAttribute getName,': anObject', String lineDelimiter, String tab, anUMLClassAttribute getName, ' := anObject'!

createStateMachineObject: anUMLStateMachine smalltalkClasses: threeArray
	| session stObject |

	session := dbServer newSession.
	stObject := anUMLStateMachine asSmalltalkObject: threeArray.
	session add: stObject.
	session commit.
	session closeSession.

"
	| xmi machines |

	xmi := XmiEnterpriseArchitect fromFile: fileNamePresenter value.

	machines := xmi createUMLStateMachines.
"!

createSubClasses
	| subClasses |

	subClasses := newClasses select: [:each | each hasSubclasses].
	subClasses do: [:eachSub | eachSub createSmalltalkClass].


	newClasses do: [:each | | source umlClass |
		umlClass := virtualMachine getAnyClassNamed: each name asString.
		umlClass implementations do: [:eachImplementation | 
			source := eachImplementation printParsedCode.
			each compile: source].
		umlClass getMetaclass implementations do: [:eachImplementation | 
					source := eachImplementation printParsedCode.
					each class compile: source]].!

deployApplication: dsnName

	"StsManager current shutdown."
	self createBaseClasses.
	self createDataBaseStructureMethods.
	"dbServer := BBReStoreServer serverNamed: dsnName. "
	dbServer resetClasses.
	dbServer dsn: dsnName.
	dbServer repository useTransactionsWithVersioning.
	dbServer connectToDatabase.
	dbServer addAllClasses: UMLSmalltalkObject allSubclasses.
	dbServer createDatabase.
	dbServer closeRepository.
	self createInitialObjects.!

getAspectsForStClass: aidaWebClass aspect: aspectSymbol
	"Answer anArray with the aspects to be displayed of the collection from -aidaWebObject perform: aspectSymbol-. Use this method after populate the Global Cache.
	1. Get global object <object> from UML class mapped with <aidaWebClass>.
	2. Get anUMLObject <aspectObject> that is the aspect (using #aspectSymbol) of the object <object>.
	3. Get the collection aspects of <aspectObject> ifNone: display the basicVariables.
#(nombre descripcion direccion)."
	| umlClass aspectsNames aspectsArray object aspectObject |

	umlClass := self getUMLClassFrom: (Smalltalk at: (aidaWebClass name allButLast: 3) asSymbol).
	umlClass ifNil: [^'#(nil nil nil)'].
	umlClass getGlobalObjects isEmpty ifTrue: [^'#(nil nil nil)'].
	object := umlClass getGlobalObjects first.
	aspectObject := object vmPerform: aspectSymbol. "answer a collection -a dynamic collection-"
	aspectsNames := aspectObject smalltalkObject isEmpty ifTrue: [''] 
		ifFalse: [(aspectObject smalltalkObject first umlClass getImplementationsFor: UMLGUICollectionAspectsCategory current) collect: [:each | each name]].
	aspectsArray := '#('.
	aspectsNames isEmpty "ifNone: display basicVariables. ifNone then the collection aspects has not been configured"
		ifTrue: [aspectsNames := aspectObject umlClass basicVariables collect: [:each | each name]].
	aspectsNames do: [:each | aspectsArray := aspectsArray, each, ' '].
	aspectsArray := aspectsArray, ')'.
	^aspectsArray .
	!

getGlobalClasses

	^newClasses select: [:each | each class methodDictionary includesKey: #_initialInstancesIn:]!

getUMLClassFrom: smalltalkClass

	^virtualMachine getAnyClassNamed: smalltalkClass name asString ifAbsent: [nil]!

importStateMachineFromXmi: filePath
	| xmi machines |

	xmi := XmiEnterpriseArchitect fromFile: filePath.

	machines := xmi createUMLStateMachines.!

newClasses
	^newClasses!

newClasses: anObject
	newClasses := anObject!

printDBDefinitionFor: anUMLClassAttribute

	anUMLClassAttribute hasMultipleInstances 
	ifFalse: [anUMLClassAttribute isBasic ifTrue: [^self printSimpleType: anUMLClassAttribute].
		^anUMLClassAttribute type name].
	^'OrderedCollection of: ', anUMLClassAttribute type name!

printSimpleType: anUMLClassAttribute

	(anUMLClassAttribute type name = 'String') ifTrue: [^anUMLClassAttribute type name, ' maxSize: 500'].

	^anUMLClassAttribute type name!

virtualMachine
	^virtualMachine!

virtualMachine: anObject
	virtualMachine := anObject! !
!UMLSmalltalkMapper categoriesFor: #baseClasses!public! !
!UMLSmalltalkMapper categoriesFor: #baseClassesWithoutDuplicates!public! !
!UMLSmalltalkMapper categoriesFor: #compileAccessors!compile to st classes!public! !
!UMLSmalltalkMapper categoriesFor: #compileButtonFor:aspect:!compile buttons actions!compile to st classes!compile web buttons!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #compileButtonForObserveeWith:aspect:!compile buttons actions!public! !
!UMLSmalltalkMapper categoriesFor: #compileCollectionAspects!compile to st classes!compile web buttons!public! !
!UMLSmalltalkMapper categoriesFor: #compileCollectionButtonFor:aspect:!compile buttons actions!compile to st classes!compile web buttons!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #compileCollectionButtonForObserveeWith:aspect:!compile buttons actions!public! !
!UMLSmalltalkMapper categoriesFor: #compileExternalButtonFor:aspect:!compile to st classes!compile web buttons!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #compileLoginClass!compile to st classes!public! !
!UMLSmalltalkMapper categoriesFor: #compileUMLClassesAndMetaclassMethods!compile to st classes!public! !
!UMLSmalltalkMapper categoriesFor: #compileUserButtonFor:aspect:!compile buttons actions!compile to st classes!compile web buttons!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #compileUserButtonForObserveeWith:aspect:!compile buttons actions!public! !
!UMLSmalltalkMapper categoriesFor: #compileUserCollectionButtonFor:aspect:!compile buttons actions!compile to st classes!compile web buttons!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #compileUserCollectionButtonForObserveeWith:aspect:!compile buttons actions!public! !
!UMLSmalltalkMapper categoriesFor: #compileViewTabFor:aspect:!compile to st classes!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #compileWebButtons!compile buttons actions!compile to st classes!compile web buttons!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #compileWebGridIn:aspect:!compile to st classes!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #compileWebViewTabs!compile to st classes!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #createBaseClasses!compile to st classes!public! !
!UMLSmalltalkMapper categoriesFor: #createDataBaseStructureMethodFor:!public! !
!UMLSmalltalkMapper categoriesFor: #createDataBaseStructureMethods!public! !
!UMLSmalltalkMapper categoriesFor: #createGetSourceForInstVar:!public! !
!UMLSmalltalkMapper categoriesFor: #createInitialObjects!public! !
!UMLSmalltalkMapper categoriesFor: #createSetSourceForInstVar:!public! !
!UMLSmalltalkMapper categoriesFor: #createStateMachineObject:smalltalkClasses:!public! !
!UMLSmalltalkMapper categoriesFor: #createSubClasses!public! !
!UMLSmalltalkMapper categoriesFor: #deployApplication:!public! !
!UMLSmalltalkMapper categoriesFor: #getAspectsForStClass:aspect:!compile to st classes!compile web methods!public! !
!UMLSmalltalkMapper categoriesFor: #getGlobalClasses!public! !
!UMLSmalltalkMapper categoriesFor: #getUMLClassFrom:!public! !
!UMLSmalltalkMapper categoriesFor: #importStateMachineFromXmi:!public! !
!UMLSmalltalkMapper categoriesFor: #newClasses!accessing!private! !
!UMLSmalltalkMapper categoriesFor: #newClasses:!accessing!private! !
!UMLSmalltalkMapper categoriesFor: #printDBDefinitionFor:!public! !
!UMLSmalltalkMapper categoriesFor: #printSimpleType:!public! !
!UMLSmalltalkMapper categoriesFor: #virtualMachine!accessing!private! !
!UMLSmalltalkMapper categoriesFor: #virtualMachine:!accessing!private! !

!UMLSmalltalkMapper class methodsFor!

on: anUMLVirtualMachine

	^super new initialize
		virtualMachine: anUMLVirtualMachine;
		yourself.! !
!UMLSmalltalkMapper class categoriesFor: #on:!public! !

