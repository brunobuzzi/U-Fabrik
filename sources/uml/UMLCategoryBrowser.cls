"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLCategoryBrowser
	instanceVariableNames: 'categoriesPresenter methodBrowser virtualCategoriesPresenter categoryCommentsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCategoryBrowser guid: (GUID fromString: '{259991d1-2941-4974-865d-9952bb351ea2}')!
UMLCategoryBrowser comment: ''!
!UMLCategoryBrowser categoriesForClass!Unclassified! !
!UMLCategoryBrowser methodsFor!

aboutThisTool
	^Error notYetImplemented!

addCategory
	| categoryName newCategory |
	self hasSelectedClass 
		ifFalse: 
			[^MessageBox notify: 'There is no selected class to add the category' caption: self applicationName].
	categoryName := Prompter prompt: 'Enter the new category' caption: self applicationName.
	categoryName ifNil: [^self].
	newCategory := UMLImplementationCategory newNamed: categoryName.
	self selectedClass addCategory: newCategory.
	categoriesPresenter model: (ListModel on: self selectedClass getUserCategories).
	self topShell mainComposite trigger: #newCategoryAdded:in:
		withArguments: (Array with: newCategory with: self)!

addExistingCategory
	| category categoryName categories |


	categories := (self defaultVirtualMachine getAllCategories,  self defaultVirtualMachine getAllMetaclassCategories)
				select: [:each | each isUserCategory] thenCollect: [:each | each name].
	categoryName := DetalleDeOpciones listaCon: categories para: 'Default view' titulo: 'Select the category to add'. 

	categoryName ifNil: [^self].

	category := (self defaultVirtualMachine getAllCategories,  self defaultVirtualMachine getAllMetaclassCategories)  detect: [:each | each name = categoryName].

	self selectedClass addCategory: category.

	categoriesPresenter model: (ListModel on: (self selectedClass getUserCategories)).

	self topShell mainComposite trigger: #newCategoryAdded:in: withArguments: (Array with: category with: self).!

blankAll

	methodBrowser blankAll.
	categoriesPresenter model: ListModel new.
	categoryCommentsPresenter value: ''.!

browserImplementationDefenitions
	| definitions methodName |
	methodName := self hasSelectedImplementation 
				ifFalse: 
					[(Prompter prompt: 'Enter the method name to search...' caption: self applicationName) 
						ifNil: [^self]
						ifNotNil: [:value | value asSymbol]]
				ifTrue: [self selectedImplementation name].
	definitions := self defaultVirtualMachine allDefinitionsOf: methodName.
	UMLMethodBrowserShell showOn: definitions!

browserImplementationOfCategory
	| methods browser |

	categoriesPresenter hasSelection ifFalse: [^self].
	methods := OrderedCollection new.
	(self defaultVirtualMachine getAllClasses select: [:each | each includesCategory: categoriesPresenter selection]) 
		do:  [:each | methods addAll: (each methodsOfCategory:  categoriesPresenter selection)].
	
	browser := UMLMethodBrowserShell showOn: methods.

	browser view caption: (browser view caption, ' - methods of category <', categoriesPresenter selection name, '>')!

browserImplementationReferences
	| references browser methodName |
	methodName := self hasSelectedImplementation 
				ifFalse: 
					[(Prompter prompt: 'Enter the method name to search...' caption: self applicationName) 
						ifNil: [^self]
						ifNotNil: [:value | value asSymbol]]
				ifTrue: [self selectedImplementation name].
	references := self defaultVirtualMachine getReferencesTo: methodName.
	browser := UMLMethodBrowserShell showOn: references.
	self hasSelectedImplementation 
		ifTrue: 
			[browser view 
				caption: browser view caption , ' - references to: <' , self selectedImplementation methodName , '>']!

checkSelectedMethod

	self checkCompilationErrorsFor: self selectedImplementation parsedCode inClass: self selectedClass!

colorForCategory: anUMLImplementationCategory 

	self selectedClass ifNil: [^Color black].

	(self hasSelectedImplementation or: [categoriesPresenter hasSelection]) ifFalse: [^Color black].
	self hasSelectedImplementation ifFalse: [^Color black ].
	(self selectedClass category: anUMLImplementationCategory includes: methodBrowser selectedImplementation) ifTrue: [^Color black].

	^Color black fadedBy: 4!

createComponents

	super createComponents.

	categoriesPresenter := self add: ListPresenter new name: 'categoriesPresenter'.
	methodBrowser := self add: UMLMethodBrowserComposite new name: 'methodBrowser'.
	virtualCategoriesPresenter := self add: ListPresenter new name: 'virtualCategoriesPresenter'.
	categoryCommentsPresenter := self add: RichTextComposite new name: 'categoryCommentsPresenter'.!

createSchematicWiring

	super createSchematicWiring.

	categoriesPresenter when: #selectionChanged send: #onCategoriaChanged to: self;
		when: #dragOver: send: #onDragOverCategoria: to: self;
		when: #drop: send: #onDropUMLImplementationOverCategoria: to: self.

	virtualCategoriesPresenter when: #selectionChanged send: #onVirtualCategoriaChanged to: self;
		when: #dragOver: send: #onDragOverVirtualCategoria: to: self;
		when: #drop: send: #onDropUMLImplementationOverVirtualCategoria: to: self.!

exit
	^self topShell closeCurrentUMLCard!

fileInMethodsOfCategory
	| pathFile |
	pathFile := (FileOpenDialog new)
				caption: 'UML Category...';
				fileTypes: #(#('UML Category (*.umc)' '*.umc'));
				showModal.
	(pathFile isNil or: [pathFile isEmpty]) ifTrue: [^self].
	self defaultVirtualMachine fileInCategoryMethodsFrom: pathFile.
	^MessageBox notify: 'Methods installation succeeded' caption: self applicationName!

fileOutMethodsOfCategory
	| pathFile |

	categoriesPresenter hasSelection ifFalse: [^self].

	pathFile := (FileSaveDialog new)
				caption: 'Save UML Category...';
				fileTypes: #(#('UML Category (*.umc)' '*.umc'));
				showModal.

	(pathFile isNil or: [pathFile isEmpty]) ifTrue: [^self].

	self defaultVirtualMachine fileOutCategory: categoriesPresenter selection to: pathFile!

getAllText

	^methodBrowser getAllText!

hasSelectedCategory

	^categoriesPresenter hasSelection !

hasSelectedClass
	^self selectedClass notNil !

hasSelectedImplementation
	^methodBrowser hasSelectedImplementation!

hasSelectedModel
	^false!

helpWithThisTool
	^Error notYetImplemented!

invalidateCategories

	categoriesPresenter view invalidate.
	virtualCategoriesPresenter view invalidate.!

invalidateVirtualCategories

	virtualCategoriesPresenter view invalidate!

isCategoryBrowser

	^true!

isClassSideSelected

	self selectedClass isNil ifTrue: [^true].

	^self selectedClass isMetaclass not!

menuBar
	| menu |
	menu := MenuBar new.
	(menu addSubmenu: 'File') addCommand: (MessageSend receiver: self selector: #exit)
		description: 'Exit'.
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
		addCommand: (MessageSend receiver: self selector: #aboutUFabrik)
			description: 'About ' , self applicationName.
	^menu!

methods

	^methodBrowser model list!

model: anOrderedCollection

	super model: anOrderedCollection.

	categoriesPresenter model: (ListModel on: (anOrderedCollection reject: [:each | each isVirtual or: [each isGUICategory] ] )).

	virtualCategoriesPresenter model: ((ListModel on: (anOrderedCollection select: [:each | each isVirtual or: [each isGUICategory] ])) asSortedCollection: [:a :b | a name <= b name]).
!

onCategoriaAdded
	| category |

	self hasSelectedCategory ifFalse: [^self model: self defaultVirtualMachine getAllCategories].
	category := self selectedCategory.

	self model: self defaultVirtualMachine getAllCategories.

	self selectCategory: category.

	self hasSelectedImplementation ifFalse: [^self].

	self selectImplementation: self selectedImplementation
	!

onCategoriaChanged
	| methods selectedImplementation |

	categoriesPresenter hasSelection ifFalse: [^methodBrowser model: (self selectedClass ifNil: [OrderedCollection new] ifNotNil: [:value | value implementationsAsSortedCollection])].

	selectedImplementation := self hasSelectedImplementation  ifTrue: [self selectedImplementation ] ifFalse: [nil].
	methods := OrderedCollection new.
	((parentPresenter class == Presenter) "if true we are inside an IdeaSpace"
	ifTrue: [self defaultVirtualMachine getAllClasses] 
	ifFalse: [parentPresenter getAllClasses])
		do: [:each | (each methodsOfCategory: categoriesPresenter selection) ifNotNil: [:value | methods addAll: value]].
	
	methodBrowser model: methods.

	self invalidateCategories.

	categoryCommentsPresenter ifNotNil: [:value | value model: (categoriesPresenter selection aspectValue: #comments)]. 

	selectedImplementation ifNotNil: [:value | self selectImplementation: selectedImplementation ]!

onDragOverCategoria: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDragOverVirtualCategoria: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDropUMLImplementationOverCategoria: aDragDropSession
	| categoria |

	categoria := aDragDropSession suggestedTarget.

	Keyboard default isShiftDown
	ifFalse: [aDragDropSession dragObjects do: [:each | 
		each object methodClass add: each object toCategory: categoria.
		self topShell mainComposite trigger: #method:addedToCategory:in: withArguments: (Array with: each object with: categoria with: self) ]]
	ifTrue: [aDragDropSession dragObjects do: [:each | 
		each object methodClass remove: each object from: categoria.
		self topShell mainComposite trigger: #method:removedFromCategory:in: withArguments: (Array with: each object with: categoria with: self).
		(categoria methodsFor: each object methodClass) isEmpty 
		ifTrue: ["each object methodClass removeCategory: categoria."
			self topShell mainComposite trigger: #categoryRemoved:in: withArguments: (Array with: categoria with: self)].]].!

onDropUMLImplementationOverVirtualCategoria: aDragDropSession 
	| categoria |
	categoria := aDragDropSession suggestedTarget.
	((aDragDropSession suggestedSource methodName occurrencesOf: $:) = 0 or: [categoria isCommandUser]) 
		ifFalse: 
			[^MessageBox 
				notify: 'Is NOT possible to drag and drop an implementation with arguments into a Virtual Category'
				caption: self applicationName].
	(categoria isUserCategory not and: [categoria isVirtual]) 
		ifTrue: 
			[^MessageBox 
				notify: 'Is NOT possible to drag and drop an implementation into Fixed Virtual Category'
				caption: self applicationName].
	(categoria == UMLGUIButtomArgCategory current and: [Keyboard default isShiftDown not]) 
		ifTrue: [^self showButtonArgCategoryEditorFor: aDragDropSession].
	(categoria == UMLGUIButtomCollectionCategory current and: [Keyboard default isShiftDown not]) 
		ifTrue: [^self showButtonCollectionCategoryEditorFor: aDragDropSession].
	(categoria == UMLGUIButtomCollectionUserCategory current and: [Keyboard default isShiftDown not]) 
		ifTrue: [^self showButtonCollectionWithUserCategoryEditorFor: aDragDropSession].
	Keyboard default isShiftDown 
		ifFalse: 
			[aDragDropSession dragObjects 
				do: [:each | self selectedClass add: each object toCategory: categoria]]
		ifTrue: 
			[aDragDropSession dragObjects do: [:each | self selectedClass remove: each object from: categoria]]!

onMethodRemoved

	self onCategoriaChanged!

onNewMethodAdded: anUMLParsedImplementation
	| implementation |

	self hasSelectedImplementation ifFalse: [^self].
	implementation := self selectedImplementation.

	(anUMLParsedImplementation methodName = implementation methodName) ifFalse: [self onCategoriaChanged. ^self selectImplementation: implementation].

	self onCategoriaChanged.

	methodBrowser selectImplementation: anUMLParsedImplementation.!

onUMLModelClassChanged
!

onVirtualCategoriaChanged
	| methods selectedImplementation |

	self selectedClass ifNil: [^methodBrowser model: ListModel new].
	virtualCategoriesPresenter hasSelection ifFalse: [^methodBrowser model: self selectedClass implementationsAsSortedCollection].

	selectedImplementation := self hasSelectedImplementation  ifTrue: [self selectedImplementation ] ifFalse: [nil].
	methods := virtualCategoriesPresenter selection isTraitCategory
		ifFalse: [virtualCategoriesPresenter selection implementationsAsSortedCollection select: [:each | (each methodClass == self topShell selectedClassDescription) or: [each isTrait] ].] 
		ifTrue: [self selectedClass traits inject: OrderedCollection new into: [:all :each | all addAll: each methods asOrderedCollection. all]].
		

	methodBrowser model: (methods copyWithoutDuplicates asSortedCollection: [:a :b | a methodName <= b methodName]).

	self invalidateVirtualCategories.

	selectedImplementation ifNotNil: [:value | self selectImplementation: selectedImplementation ]!

removeCategory
	| category |
	categoriesPresenter hasSelection ifFalse: [^self].
	categoriesPresenter selection isVirtual 
		ifTrue: [^MessageBox notify: 'Virtual categories can NOT be deleted !!' caption: self applicationName].
	(MessageBox confirm: 'Are you sure to remove this category (no implementations will be deleted) ?'
		caption: self applicationName) ifFalse: [^self].
	category := categoriesPresenter selection.
	self topShell hasSelectedClass 
		ifTrue: 
			[self selectedClass removeCategory: category.
			categoriesPresenter model: (ListModel on: self selectedClass getUserCategories)]
		ifFalse: [categoriesPresenter model: (ListModel on: self defaultVirtualMachine getUserCategories)].
	self topShell mainComposite trigger: #categoryRemoved:in:
		withArguments: (Array with: category with: self)!

renameCategory
	| categoryName newCategory |
	self hasSelectedCategory 
		ifFalse: [^MessageBox notify: 'There is no selected category to rename' caption: self applicationName].
	categoryName := Prompter 
				prompt: 'Enter the new name category of the category <' , self selectedCategory name , '>'
				caption: self applicationName.
	categoryName ifNil: [^self].
	categoryName isEmpty ifTrue: [^self].
	self defaultVirtualMachine renameCategory: self selectedCategory to: categoryName asSymbol.
	categoriesPresenter 
		model: (ListModel on: (self topShell mainComposite isCategoryBrowser 
						ifFalse: [self selectedClass getUserCategories]
						ifTrue: [self defaultVirtualMachine getAllCategories select: [:each | each isUserCategory]])).
	newCategory := UMLImplementationCategory getCategoryNamed: categoryName asSymbol.
	self topShell mainComposite trigger: #newCategoryAdded:in:
		withArguments: (Array with: newCategory with: self)!

resetSanityCheck

	methodBrowser resetSanityCheck!

selectCategory: anUMLImplementationCategory

	virtualCategoriesPresenter selection: anUMLImplementationCategory ifAbsent: [categoriesPresenter selection: anUMLImplementationCategory ifAbsent: []]!

selectedCategory

	^categoriesPresenter selection !

selectedClass

	(self parentPresenter class == Presenter) ifTrue: [^methodBrowser hasSelectedImplementation ifFalse: [nil] ifTrue: [methodBrowser selectedImplementation methodClass] ].
	
	^self topShell selectedClass
!

selectedClassDescription
	^self selectedClass!

selectedElement

	(view == DeafObject current) ifTrue: [^self selectedClass].

	^categoriesPresenter selection!

selectedImplementation

	^methodBrowser selectedImplementation!

selectImplementation: anUMLParsedImplementation 

	^methodBrowser selectImplementation: anUMLParsedImplementation !

selectSanityCard

	methodBrowser selectSanityCard!

setMethodsWith: anOrderedCollection

	methodBrowser model: anOrderedCollection!

setSanityCheckWith: aTreeModel

	methodBrowser setSanityCheckWith: aTreeModel!

showButtonArgCategoryEditorFor: anDragDropSession
	| dialog |

	dialog := UMLButtonStoredArgumentsStructureDialog createOn: self selectedClass.
	dialog methodName: anDragDropSession suggestedSource methodName.
	dialog showModal.
	dialog newMethod ifNil: [^nil].
	self selectedClass add: dialog newMethod toCategory: UMLGUIButtomArgCategory current.
	self topShell onUMLModelClassChanged.
	self topShell selectImplementation: dialog newMethod!

showButtonCollectionCategoryEditorFor: anDragDropSession
	| dialog |

	dialog := UMLButtonCollectionStructureDialog createOn: self selectedClass.
	dialog methodName: anDragDropSession suggestedSource methodName.
	dialog showModal.
	dialog newMethod ifNil: [^nil].
	self selectedClass add: dialog newMethod toCategory: UMLGUIButtomCollectionCategory current.
	self topShell onUMLModelClassChanged.
	self topShell selectImplementation: dialog newMethod!

showButtonCollectionWithUserCategoryEditorFor: anDragDropSession
	| dialog |

	dialog := UMLButtonCollectionWithUserStructureDialog createOn: self selectedClass.
	dialog methodName: anDragDropSession suggestedSource methodName.
	dialog loginManager: self selectedImplementation methodClass umlModel loginManager.
	dialog model: dialog model.
	dialog showModal.
	dialog newMethod ifNil: [^nil].
	self selectedClass add: dialog newMethod toCategory: UMLGUIButtomCollectionUserCategory current.
	self topShell onUMLModelClassChanged.
	self topShell selectImplementation: dialog newMethod! !
!UMLCategoryBrowser categoriesFor: #aboutThisTool!public! !
!UMLCategoryBrowser categoriesFor: #addCategory!public!uml env events! !
!UMLCategoryBrowser categoriesFor: #addExistingCategory!public!uml env events! !
!UMLCategoryBrowser categoriesFor: #blankAll!public! !
!UMLCategoryBrowser categoriesFor: #browserImplementationDefenitions!public! !
!UMLCategoryBrowser categoriesFor: #browserImplementationOfCategory!public! !
!UMLCategoryBrowser categoriesFor: #browserImplementationReferences!public! !
!UMLCategoryBrowser categoriesFor: #checkSelectedMethod!public! !
!UMLCategoryBrowser categoriesFor: #colorForCategory:!public! !
!UMLCategoryBrowser categoriesFor: #createComponents!public! !
!UMLCategoryBrowser categoriesFor: #createSchematicWiring!drag & drop!public! !
!UMLCategoryBrowser categoriesFor: #exit!public! !
!UMLCategoryBrowser categoriesFor: #fileInMethodsOfCategory!public! !
!UMLCategoryBrowser categoriesFor: #fileOutMethodsOfCategory!public! !
!UMLCategoryBrowser categoriesFor: #getAllText!public! !
!UMLCategoryBrowser categoriesFor: #hasSelectedCategory!public! !
!UMLCategoryBrowser categoriesFor: #hasSelectedClass!public! !
!UMLCategoryBrowser categoriesFor: #hasSelectedImplementation!public! !
!UMLCategoryBrowser categoriesFor: #hasSelectedModel!public! !
!UMLCategoryBrowser categoriesFor: #helpWithThisTool!public! !
!UMLCategoryBrowser categoriesFor: #invalidateCategories!public! !
!UMLCategoryBrowser categoriesFor: #invalidateVirtualCategories!public! !
!UMLCategoryBrowser categoriesFor: #isCategoryBrowser!public! !
!UMLCategoryBrowser categoriesFor: #isClassSideSelected!public! !
!UMLCategoryBrowser categoriesFor: #menuBar!public! !
!UMLCategoryBrowser categoriesFor: #methods!public! !
!UMLCategoryBrowser categoriesFor: #model:!public! !
!UMLCategoryBrowser categoriesFor: #onCategoriaAdded!public! !
!UMLCategoryBrowser categoriesFor: #onCategoriaChanged!public! !
!UMLCategoryBrowser categoriesFor: #onDragOverCategoria:!categories!drag & drop!private! !
!UMLCategoryBrowser categoriesFor: #onDragOverVirtualCategoria:!categories!drag & drop!private! !
!UMLCategoryBrowser categoriesFor: #onDropUMLImplementationOverCategoria:!categories!drag & drop!public!uml env events! !
!UMLCategoryBrowser categoriesFor: #onDropUMLImplementationOverVirtualCategoria:!categories!drag & drop!public! !
!UMLCategoryBrowser categoriesFor: #onMethodRemoved!public! !
!UMLCategoryBrowser categoriesFor: #onNewMethodAdded:!public!uml env events! !
!UMLCategoryBrowser categoriesFor: #onUMLModelClassChanged!public! !
!UMLCategoryBrowser categoriesFor: #onVirtualCategoriaChanged!public! !
!UMLCategoryBrowser categoriesFor: #removeCategory!public!uml env events! !
!UMLCategoryBrowser categoriesFor: #renameCategory!public!uml env events! !
!UMLCategoryBrowser categoriesFor: #resetSanityCheck!public! !
!UMLCategoryBrowser categoriesFor: #selectCategory:!public! !
!UMLCategoryBrowser categoriesFor: #selectedCategory!public! !
!UMLCategoryBrowser categoriesFor: #selectedClass!public! !
!UMLCategoryBrowser categoriesFor: #selectedClassDescription!public! !
!UMLCategoryBrowser categoriesFor: #selectedElement!public! !
!UMLCategoryBrowser categoriesFor: #selectedImplementation!public! !
!UMLCategoryBrowser categoriesFor: #selectImplementation:!public! !
!UMLCategoryBrowser categoriesFor: #selectSanityCard!public! !
!UMLCategoryBrowser categoriesFor: #setMethodsWith:!public! !
!UMLCategoryBrowser categoriesFor: #setSanityCheckWith:!public! !
!UMLCategoryBrowser categoriesFor: #showButtonArgCategoryEditorFor:!categories!public! !
!UMLCategoryBrowser categoriesFor: #showButtonCollectionCategoryEditorFor:!categories!public! !
!UMLCategoryBrowser categoriesFor: #showButtonCollectionWithUserCategoryEditorFor:!categories!public! !

!UMLCategoryBrowser class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 560 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 13 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLMethodBrowserComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  589 1 882 1143 781 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 38 1 0 0 0 0 0 0 97 3 0 0 134 1 0 0] 98 0 882 193 193 0 27 5 32 234 256 98 2 560 8 'methodBrowser' 0 754 202 208 98 1 818 848 98 2 882 2879 21 882 1731 781 416 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 0 9 0 0 144 1 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 1216 0 0 0 5 0 0 0 1216 498 234 240 976 16 234 256 98 4 410 576 98 14 0 1216 98 2 8 1140850688 131073 1344 0 642 8 4278190080 0 5 0 0 0 1344 690 8 ##(Smalltalk.RichTextComposite)  736 0 754 202 208 98 1 818 848 98 2 882 1 399 882 571 383 1344 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 199 0 0 0 29 1 0 0 134 1 0 0] 976 992 0 27 8 'categoryCommentsPresenter' 410 576 98 14 0 1216 98 2 8 1140850688 131073 1632 0 642 672 0 21 0 0 0 1632 690 8 ##(Smalltalk.ListPresenter)  8 #resource_UMLCategory_list 0 754 202 208 98 1 818 848 98 2 882 1 1 882 571 381 1632 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 29 1 0 0 190 0 0 0] 976 992 0 27 8 'categoriesPresenter' 0 754 202 208 98 1 818 848 98 2 882 1 1 882 571 781 1216 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 29 1 0 0 134 1 0 0] 98 3 1632 410 8 ##(Smalltalk.Splitter)  98 12 0 1216 98 2 8 1140850688 1 2080 0 642 8 4278190080 0 517 0 0 0 2080 754 202 208 98 1 818 848 98 2 882 1 381 882 571 19 2080 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 190 0 0 0 29 1 0 0 199 0 0 0] 98 0 992 0 27 1344 992 0 27 410 2096 98 12 0 416 98 2 8 1140850688 1 2352 0 642 8 4278190080 0 517 0 0 0 2352 754 202 208 98 1 818 848 98 2 882 571 1 882 19 781 2352 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 29 1 0 0 0 0 0 0 38 1 0 0 134 1 0 0] 98 0 992 0 27 560 992 0 27 )! !
!UMLCategoryBrowser class categoriesFor: #resource_Default_view!public!resources-views! !

