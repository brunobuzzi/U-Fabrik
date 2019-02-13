"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLTraitBrowserComposite
	instanceVariableNames: 'traitsPresenter traitComposite packagesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTraitBrowserComposite guid: (GUID fromString: '{216073bf-f2b0-43b5-9779-eccfbd65ba03}')!
UMLTraitBrowserComposite comment: ''!
!UMLTraitBrowserComposite categoriesForClass!Unclassified! !
!UMLTraitBrowserComposite methodsFor!

aboutThisTool
	^Error notYetImplemented!

addMessageToImplementation
	| selectedTrait |

	selectedTrait := self selectedTrait.

	traitComposite addMethod: (selectedTrait addSourceMethod: traitComposite getAllText).

	self onTraitChanged.!

addTrait
	| name trait |
	packagesPresenter hasSelection 
		ifFalse: 
			[^MessageBox notify: 'First select a Virtual Machine Package then create the Trait'
				caption: self applicationName].
	name := (Prompter prompt: 'Enter TRAIT name' caption: self applicationName) ifNil: [^self].
	trait := UMLTrait new name: name.
	model addTrait: trait.
	packagesPresenter selection addTrait: trait.
	traitsPresenter model: (ListModel 
				on: (packagesPresenter selection traits asSortedCollection: [:a :b | a name <= b name]))!

createComponents

	super createComponents.

	traitsPresenter := self add: ListPresenter new name: 'traitsPresenter'.
	traitComposite := self add: UMLTraitComposite new name: 'traitComposite'.
	packagesPresenter := self add: ListPresenter new name: 'packages'.!

createSchematicWiring

	super createSchematicWiring.

	traitsPresenter when: #selectionChanged send: #onTraitChanged to: self.

	packagesPresenter when: #selectionChanged send: #onUMLPackageChanged to: self;
		when: #dragOver: send: #onDragOverVirtualMachinePackage: to: self;
		when: #drop: send: #onDropTraitOverVirtualMachinePackage: to: self.
!

hasSelectedClass
	^false!

hasSelectedTrait
	^traitsPresenter hasSelection!

helpWithThisTool
	^Error notYetImplemented!

menuBar
	| menu |
	menu := MenuBar new.
	(menu addSubmenu: 'File') addCommand: (MessageSend receiver: self selector: #exit)
		description: 'Exit'.
	(menu addSubmenu: 'Support')
		addCommand: (MessageSend receiver: self selector: #gotoUFabrikWebSite)
			description: self applicationName , ' Web site';
		addCommand: (MessageSend receiver: self selector: #goToUFabrikNewsGroup) description: 'News Group';
		addCommand: (MessageSend receiver: self selector: #goToUFabrikDocumentation)
			description: 'Online Documents';
		addCommand: (MessageSend receiver: self selector: #goToUFabrikEnglishVideos)
			description: 'Online Videos - English';
		addCommand: (MessageSend receiver: self selector: #goToUFabrikVideos)
			description: 'Online Videos - Spanish';
		addCommand: (MessageSend receiver: self selector: #goToUFabrikBlog) description: 'Blog'.
	(menu addSubmenu: 'About')
		addCommand: (MessageSend receiver: self selector: #aboutThisTool) description: 'About this tool';
		addCommand: (MessageSend receiver: self selector: #helpWithThisTool)
			description: 'Help with this tool';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #aboutUFabrik)
			description: 'About ' , self applicationName.
	^menu!

model: anUMLVirtualMachine

	super model: anUMLVirtualMachine.

	packagesPresenter model: (ListModel on: anUMLVirtualMachine packagesAsSortedCollection).
	!

onDragOverVirtualMachinePackage: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDropTraitOverVirtualMachinePackage: aDragDropSession
	| vmPackage |

	vmPackage := aDragDropSession suggestedTarget.

	Keyboard default isShiftDown 
	ifFalse: [aDragDropSession dragObjects do: [:each | 
			vmPackage addTrait: each object.
			packagesPresenter hasSelection ifTrue: [packagesPresenter selection removeTrait: each object] ]]
	ifTrue: [aDragDropSession dragObjects do: [:each | vmPackage removeTrait: each object]].

	self onUMLPackageChanged.!

onTraitChanged

	traitComposite model: (traitsPresenter hasSelection ifTrue:[traitsPresenter selection] ifFalse: [UMLTrait new])!

onUMLPackageChanged

	traitsPresenter model: (ListModel on:
		(packagesPresenter selections inject: (SortedCollection sortBlock: [:a :b | a name <= b name]) into: [:all :each | all addAll: each traits. all])).!

onViewOpened

	super onViewOpened.

	packagesPresenter view selectAll!

removeTrait
	traitsPresenter hasSelection ifFalse: [^self].
	(MessageBox confirm: 'Do you want to remove this TRAIT?' caption: self applicationName) 
		ifFalse: [^self].
	model removeTrait: traitsPresenter selection.
	packagesPresenter selection removeTrait: traitsPresenter selection.
	traitsPresenter model remove: traitsPresenter selection.
	self onUMLPackageChanged!

selectedClass
	^traitsPresenter selection!

selectedTrait
	^traitsPresenter selection!

selectTrait: anUMLTrait
	| vmPackage |

	vmPackage := packagesPresenter model detect: [:each | each includesTrait: anUMLTrait] ifNone: [^self].
	packagesPresenter selection: vmPackage ifAbsent: [^self].

	traitsPresenter selection: anUMLTrait ifAbsent: []! !
!UMLTraitBrowserComposite categoriesFor: #aboutThisTool!public! !
!UMLTraitBrowserComposite categoriesFor: #addMessageToImplementation!public! !
!UMLTraitBrowserComposite categoriesFor: #addTrait!public! !
!UMLTraitBrowserComposite categoriesFor: #createComponents!public! !
!UMLTraitBrowserComposite categoriesFor: #createSchematicWiring!public! !
!UMLTraitBrowserComposite categoriesFor: #hasSelectedClass!public! !
!UMLTraitBrowserComposite categoriesFor: #hasSelectedTrait!public! !
!UMLTraitBrowserComposite categoriesFor: #helpWithThisTool!public! !
!UMLTraitBrowserComposite categoriesFor: #menuBar!public! !
!UMLTraitBrowserComposite categoriesFor: #model:!public! !
!UMLTraitBrowserComposite categoriesFor: #onDragOverVirtualMachinePackage:!public! !
!UMLTraitBrowserComposite categoriesFor: #onDropTraitOverVirtualMachinePackage:!public! !
!UMLTraitBrowserComposite categoriesFor: #onTraitChanged!public! !
!UMLTraitBrowserComposite categoriesFor: #onUMLPackageChanged!public! !
!UMLTraitBrowserComposite categoriesFor: #onViewOpened!public! !
!UMLTraitBrowserComposite categoriesFor: #removeTrait!public! !
!UMLTraitBrowserComposite categoriesFor: #selectedClass!public! !
!UMLTraitBrowserComposite categoriesFor: #selectedTrait!public! !
!UMLTraitBrowserComposite categoriesFor: #selectTrait:!public! !

!UMLTraitBrowserComposite class methodsFor!

defaultModel

	^UMLVirtualMachine default!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 704 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 704 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLTraitComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1026 1129 1111 704 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 52 2 0 0 43 2 0 0] 656 1026 193 193 0 27 8 'traitComposite' 0 898 202 208 98 1 962 992 98 2 1026 393 1 1026 1129 1111 560 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 196 0 0 0 0 0 0 0 248 2 0 0 43 2 0 0] 98 1 704 1120 0 27 7 32 234 256 656 0 898 202 208 98 1 962 992 98 2 1026 3199 21 1026 1521 1111 416 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 249 8 0 0 53 2 0 0] 98 3 410 8 ##(Smalltalk.SlideyInneyOuteyThing)  98 23 0 416 98 2 8 1409286144 131073 1488 0 786 8 4278190080 0 517 0 0 0 1488 655878 ##(Smalltalk.CardLayout)  202 208 98 1 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Packages' 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  6 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Packages'' iconBlock: [Package icon]' 8 #[29 30 34 112 31 161 106 194 105] 1696 1728 8 ##(Smalltalk.Package)  8 #icon 8 #text:iconBlock: 1760 11 1 0 0 410 432 98 15 0 410 8 ##(Smalltalk.SlidingCardTray)  98 22 0 1488 98 2 8 1140850688 131073 1952 0 786 1584 0 5 0 0 0 1952 1616 234 256 656 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 1488 98 2 8 1140916864 1 2064 590662 2 ##(Smalltalk.ListModel)  202 208 98 1 1712 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  786 1584 0 1 0 0 0 2064 0 8 4294903239 8 ##(Smalltalk.BasicListAbstract)  8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 8 #smallIcons 0 0 0 0 0 898 202 208 98 3 962 992 98 2 1026 1 1 1026 375 1111 2064 962 8 #basicSelectionsByIndex: 98 1 98 1 3 2064 962 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 2064 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 187 0 0 0 43 2 0 0] 98 0 1120 0 27 0 1488 1026 33 33 1049862 ##(Smalltalk.ButtonInteractor)  1952 0 590342 ##(Smalltalk.Rectangle)  1026 277 3 1026 309 35 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 898 202 208 98 1 962 992 98 2 1026 55 9 1026 313 1095 1952 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 27 0 0 0 4 0 0 0 183 0 0 0 39 2 0 0] 98 1 1920 1120 0 27 98 2 8 1140850688 131073 1920 0 0 0 5 0 0 0 1920 498 234 240 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 1920 98 2 8 1409355853 1025 3040 2146 202 208 656 0 2224 786 8 4278190080 0 13 265030 4 ##(Smalltalk.Menu)  0 16 98 2 984134 2 ##(Smalltalk.CommandMenuItem)  1 2738 8 #addTrait 8 'Add Trait' 1 1 0 0 0 3234 1 2738 8 #removeTrait 8 'Remove Trait' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 3040 0 8 4294903025 459270 ##(Smalltalk.Message)  8 #displayString 98 0 2288 2320 0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'TRAIT Name' 361 8 #left 3410 8 #name 98 0 1746 0 0 1778 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3584 3616 7 513 0 0 0 3040 0 1 0 0 8 #report 656 0 131169 0 0 898 202 208 98 3 962 992 98 2 1026 1 279 1026 313 781 3040 962 8 #contextMenu: 98 1 3200 3040 962 8 #text: 98 1 8 'TRAIT Name' 3040 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 139 0 0 0 156 0 0 0 17 2 0 0] 98 0 1120 0 27 7 16 234 256 98 4 3040 8 'traitsPresenter' 410 3056 98 30 0 1920 98 2 8 1409355848 1025 4080 2146 202 208 656 0 2224 786 8 4278190080 0 21 0 0 0 4080 0 8 4294903025 3410 3584 98 0 2288 2320 0 0 0 1026 65 65 0 0 202 208 98 1 3506 8 'Column 1' 201 3552 3410 3440 98 0 8 ##(Smalltalk.SortedCollection)  0 0 4080 0 1 0 0 8 #largeIcons 656 0 131169 0 0 898 202 208 98 2 962 992 98 2 1026 1 1 1026 313 261 4080 962 3936 98 1 8 'Column 1' 4080 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 156 0 0 0 130 0 0 0] 98 0 1120 0 27 8 'packages' 0 898 202 208 98 1 962 992 98 2 1026 1 37 1026 313 1059 1920 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 156 0 0 0 35 2 0 0] 98 3 4080 410 8 ##(Smalltalk.Splitter)  98 12 0 1920 98 2 8 1140850688 1 4784 0 786 8 4278190080 0 517 0 0 0 4784 898 202 208 98 1 962 992 98 2 1026 1 261 1026 313 19 4784 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 130 0 0 0 156 0 0 0 139 0 0 0] 98 0 1120 0 27 3040 1120 0 27 1920 234 256 656 0 2064 1952 1026 201 201 401 1 31 0 0 898 202 208 98 1 962 992 98 2 1026 1 1 1026 375 1111 1488 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 187 0 0 0 43 2 0 0] 98 2 1952 2064 1120 0 27 410 4800 98 12 0 416 98 2 8 1140850688 1 5248 0 786 8 4278190080 0 517 0 0 0 5248 898 202 208 98 1 962 992 98 2 1026 375 1 1026 19 1111 5248 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 187 0 0 0 0 0 0 0 196 0 0 0 43 2 0 0] 98 0 1120 0 27 560 1120 0 27 )! !
!UMLTraitBrowserComposite class categoriesFor: #defaultModel!public! !
!UMLTraitBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

