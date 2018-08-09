"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLMethodBrowserComposite
	instanceVariableNames: 'implementationsPresenter implementationComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLMethodBrowserComposite guid: (GUID fromString: '{ee19c751-ff24-42a9-81c3-06aad2e49d5b}')!
UMLMethodBrowserComposite comment: ''!
!UMLMethodBrowserComposite categoriesForClass!Unclassified! !
!UMLMethodBrowserComposite methodsFor!

aboutThisTool
	^Error notYetImplemented!

addMessageToImplementation
	| result implementation selectedMethod |

	self hasClassBrowserAsParent ifTrue: [^self classBrowser addMessageToImplementation].

	self hasSelectedImplementation ifFalse: [^self].

	result := self umlCompiler parseMethod: self getAllText. "we parse the source code into a UMLMessageSequenceNode"
	selectedMethod := self selectedImplementation.

	implementation := (UMLParsedImplementation newNamed: result selector) parsedCode: result. "we create the implementation for the parsed code"

"	(result canBeCompiledIn: context) "

	selectedMethod methodClass addImplementation: implementation.

	implementationsPresenter model remove: selectedMethod.
	implementationsPresenter model add: implementation.
	implementationsPresenter selection: implementation.!

blankAll

	implementationsPresenter model: ListModel new.
	implementationComposite setText: ''.!

checkSelectedMethod

	^self checkCompilationErrorsFor: self selectedImplementation parsedCode inClass: self selectedClass!

classBrowser
	^parentPresenter parentPresenter!

createComponents

	super createComponents.

	implementationsPresenter := self add: ListPresenter new name: 'implementations'.
	implementationComposite := self add: UMLImplementationComposite new name: 'implementationComposite'.
!

createSchematicWiring

	super createSchematicWiring.

	implementationsPresenter when: #selectionChanged send: #onImplementationChanged to: self;
		when: #leftButtonDoubleClicked: send: #onImplementationDoubleClicked: to: self.!

fileInMethods
	| pathFile |
	pathFile := FileOpenDialog showModal.
	(pathFile isNil or: [pathFile isEmpty]) ifTrue: [^self].
	self defaultVirtualMachine fileInMethodsFrom: pathFile.
	^MessageBox notify: 'Methods installation succeeded' caption: self applicationName!

fileOutMethods
	| pathFile |

	pathFile := FileSaveDialog showModal.

	(pathFile isNil or: [pathFile isEmpty]) ifTrue: [^self].

	self defaultVirtualMachine fileOutMethods: implementationsPresenter model to: pathFile!

getAllText

	^implementationComposite getAllText!

hasClassBrowserAsParent

	^parentPresenter parentPresenter class == UMLClassBrowserComposite!

hasSelectedClass
	^self hasSelectedImplementation!

hasSelectedImplementation
	^implementationsPresenter hasSelection!

helpWithThisTool
	^Error notYetImplemented!

isClassSideSelected
	^self topShell isClassSideSelected!

menuBar
	| menu |
	menu := MenuBar new.
	(menu addSubmenu: 'File')
		addCommand: (MessageSend receiver: self selector: #fileOutMethods) description: 'File out methods';
		addCommand: (MessageSend receiver: self selector: #fileInMethods) description: 'File in methods';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #exit) description: 'Exit'.
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

	implementationsPresenter model: (ListModel on: anOrderedCollection)!

onImplementationAdded

	implementationComposite model: UMLParsedImplementation new.

	[implementationComposite model: implementationsPresenter selection.

	parentPresenter invalidateCategories.

	self resetSanityCheck.

	self topShell checkSelectedMethod.] forkAt: 4!

onImplementationChanged

	implementationsPresenter hasSelection ifFalse: [^implementationComposite model: UMLParsedImplementation new].

	implementationComposite model: implementationsPresenter selection.

	parentPresenter invalidateCategories.

	self resetSanityCheck.

	self topShell checkSelectedMethod.!

onImplementationDoubleClicked: aMouseEvent
	| implementation |

	implementationsPresenter hasSelection ifFalse: [^self].
	implementationsPresenter selection hasShowHideMessage ifFalse: [^self].

	implementation := implementationsPresenter model detect: [:each | each methodName = implementationsPresenter selection hideShowMessage] ifNone: [^self].

	implementationsPresenter selection: implementation ifAbsent: [].!

onNewMethodAdded: anUMLParsedImplementation 

!

removeImplementation
	| implementation |
	implementationsPresenter hasSelection ifFalse: [^nil].
	(MessageBox confirm: 'Are you sure to remove <' , implementationsPresenter selection name 
				, '> from the system ?'
		caption: self applicationName) ifFalse: [^self].
	implementation := implementationsPresenter selection.
	self selectedClass removeImplementation: implementation.
	implementationsPresenter 
		model: (ListModel on: self selectedElement implementationsAsSortedCollection).
	self topShell mainComposite trigger: #method:removedFromClass:in:
		withArguments: (Array 
				with: implementation
				with: implementation methodClass
				with: self topShell mainComposite)!

resetSanityCheck

	implementationComposite resetSanityCheck!

selectedClass

	self hasSelectedImplementation ifTrue: [^self selectedImplementation methodClass].

	self topShell isMethodBrowser ifTrue: [^nil].

	^self topShell selectedClass!

selectedClassDescription

	(self hasSelectedClass) ifFalse: [^self].

	^self selectedImplementation methodClass!

selectedElement

	^self selectedClass!

selectedImplementation
	^implementationsPresenter selection!

selectedImplementationIfNone: aBlock

	implementationsPresenter hasSelection ifFalse: [^aBlock value].
	^implementationsPresenter selection!

selectImplementation: anUMLParsedImplementation 

	^implementationsPresenter selection: anUMLParsedImplementation ifAbsent: []!

selectSanityCard

	implementationComposite selectSanityCard!

setSanityCheckWith: aTreeModel

	implementationComposite setSanityCheckWith: aTreeModel!

showImplementationsOf: anUMLClass

	implementationsPresenter model: (ListModel on: (anUMLClass implementations asSortedCollection: [:a :b | a name <= b name])).
! !
!UMLMethodBrowserComposite categoriesFor: #aboutThisTool!public! !
!UMLMethodBrowserComposite categoriesFor: #addMessageToImplementation!public! !
!UMLMethodBrowserComposite categoriesFor: #blankAll!public! !
!UMLMethodBrowserComposite categoriesFor: #checkSelectedMethod!public! !
!UMLMethodBrowserComposite categoriesFor: #classBrowser!public! !
!UMLMethodBrowserComposite categoriesFor: #createComponents!class metaclass switch!public! !
!UMLMethodBrowserComposite categoriesFor: #createSchematicWiring!class metaclass switch!public! !
!UMLMethodBrowserComposite categoriesFor: #fileInMethods!public! !
!UMLMethodBrowserComposite categoriesFor: #fileOutMethods!public! !
!UMLMethodBrowserComposite categoriesFor: #getAllText!public! !
!UMLMethodBrowserComposite categoriesFor: #hasClassBrowserAsParent!public! !
!UMLMethodBrowserComposite categoriesFor: #hasSelectedClass!public! !
!UMLMethodBrowserComposite categoriesFor: #hasSelectedImplementation!public! !
!UMLMethodBrowserComposite categoriesFor: #helpWithThisTool!public! !
!UMLMethodBrowserComposite categoriesFor: #isClassSideSelected!public! !
!UMLMethodBrowserComposite categoriesFor: #menuBar!public! !
!UMLMethodBrowserComposite categoriesFor: #model:!public! !
!UMLMethodBrowserComposite categoriesFor: #onImplementationAdded!implementations!public! !
!UMLMethodBrowserComposite categoriesFor: #onImplementationChanged!implementations!public! !
!UMLMethodBrowserComposite categoriesFor: #onImplementationDoubleClicked:!class metaclass switch!public! !
!UMLMethodBrowserComposite categoriesFor: #onNewMethodAdded:!public! !
!UMLMethodBrowserComposite categoriesFor: #removeImplementation!public! !
!UMLMethodBrowserComposite categoriesFor: #resetSanityCheck!public! !
!UMLMethodBrowserComposite categoriesFor: #selectedClass!public! !
!UMLMethodBrowserComposite categoriesFor: #selectedClassDescription!public! !
!UMLMethodBrowserComposite categoriesFor: #selectedElement!public! !
!UMLMethodBrowserComposite categoriesFor: #selectedImplementation!public! !
!UMLMethodBrowserComposite categoriesFor: #selectedImplementationIfNone:!implementations!public! !
!UMLMethodBrowserComposite categoriesFor: #selectImplementation:!public! !
!UMLMethodBrowserComposite categoriesFor: #selectSanityCard!public! !
!UMLMethodBrowserComposite categoriesFor: #setSanityCheckWith:!public! !
!UMLMethodBrowserComposite categoriesFor: #showImplementationsOf:!class metaclass switch!public! !

!UMLMethodBrowserComposite class methodsFor!

defaultModel

	^OrderedCollection new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  3199 21 706 1561 1361 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 13 9 0 0 178 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 816 0 0 0 5 0 0 0 816 498 234 240 544 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 816 98 2 8 1140920397 1025 944 590662 2 ##(Smalltalk.ListModel)  202 208 544 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 13 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #removeImplementation 8 'Remove Implementation' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 944 0 8 4294902607 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 3 920646 5 ##(Smalltalk.ListViewColumn)  8 'Method Name' 601 8 #left 1330 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 1552 1600 7 513 0 0 0 944 0 1 0 0 1474 8 'Class' 401 1520 1330 8 #classNameForImplementationList 544 1586 0 0 1618 2 1 1584 8 'doIt' 8 '[:a :b | a classNameForImplementationList <= b classNameForImplementationList]' 8 #[30 105 226 0 226 32 130 106] 1792 1808 7 513 0 0 0 944 0 1 0 0 1474 8 'UML Model' 361 1520 1330 8 #umlModelName 98 0 1586 0 0 1618 2 1 1328 8 'doIt' 8 '[:a :b | a umlModelName <= b umlModelName]' 8 #[30 105 226 0 226 32 130 106] 1936 1968 7 513 0 0 0 944 0 1 0 0 8 #report 544 0 131169 0 0 578 202 208 98 3 642 672 98 2 706 1 1 706 1561 671 944 642 8 #contextMenu: 98 1 1168 944 642 8 #text: 98 1 8 'Method Name' 944 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 12 3 0 0 79 1 0 0] 98 0 706 193 193 0 27 8 'implementations' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1561 671 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 12 3 0 0 79 1 0 0] 98 1 944 2336 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 2528 0 1106 8 4278190080 0 517 0 0 0 2528 578 202 208 98 1 642 672 98 2 706 1 671 706 1561 19 2528 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 79 1 0 0 12 3 0 0 88 1 0 0] 98 0 2336 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 2800 0 0 0 5 0 0 0 2800 498 234 240 544 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 2800 98 2 8 1140850688 131073 2928 0 1106 8 4278190080 0 5 0 0 0 2928 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLImplementationComposite)  8 #resource_Default_view 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1561 673 2928 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 12 3 0 0 80 1 0 0] 544 2336 0 27 8 'implementationComposite' 0 578 202 208 98 1 642 672 98 2 706 1 689 706 1561 673 2800 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 88 1 0 0 12 3 0 0 168 2 0 0] 98 1 2928 2336 0 27 2336 0 27 )! !
!UMLMethodBrowserComposite class categoriesFor: #defaultModel!public! !
!UMLMethodBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

