"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLModelParametricObjectBrowserComposite
	instanceVariableNames: 'parametricNamePresenter parametricsContainer parametricsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelParametricObjectBrowserComposite guid: (GUID fromString: '{4a567fa8-06f7-4aa3-815d-84dba6a5da4a}')!
UMLModelParametricObjectBrowserComposite comment: ''!
!UMLModelParametricObjectBrowserComposite categoriesForClass!MVP-Resources-UFabrik! !
!UMLModelParametricObjectBrowserComposite methodsFor!

addGlobalClass
	| selectecClass |

	selectecClass := DetalleDeOpciones 
		listaCon: (self defaultVirtualMachine getUMLClasses reject: [:each | parametricNamePresenter model includes: each name]) 
		para: 'UMLClasses view' titulo: 'The selected class will create a global storage for it''s instances'.
	selectecClass ifNil: [^self].
	model createGlobalKey: selectecClass last name.

	parametricNamePresenter resetSelection.
	self onGlobalNameChanged.
	!

addNewInstance
	| newInstance |
	parametricNamePresenter hasSelection ifFalse: [^self].
	newInstance := (self defaultVirtualMachine getAnyClassNamed: parametricNamePresenter selection
				ifAbsent: [^MessageBox notify: 'Class not found !!' caption: self applicationName]) newInstance.
	newInstance
		runBehaviorInitialize;
		storeAsGlobalObject.
	self onGlobalNameChanged!

createAccessorMethods
	| umlClass prompter vars |

	umlClass := (self defaultVirtualMachine getAnyClassNamed: parametricNamePresenter selection) ifNil: [^self].

	vars := (umlClass instancesVariables select: [:each | each isBasic]  thenCollect: [:each | each name]) asSortedCollection.

	prompter := (ChoicePrompter choices: vars caption: 'Select variable to be used to generate the method') ifNil: [^self] ifNotNil: [:value | value asSymbol].

	umlClass createClassAccessorsForGlobalObjectsUsing: prompter.!

createComponents

	super createComponents.

	parametricNamePresenter := self add: ListPresenter new name: 'parametricNames'.
	parametricsContainer := self add: Presenter new name: 'parametricContainer'.!

createCreationMethods
	| umlClass prompter vars |

	umlClass := (self defaultVirtualMachine getAnyClassNamed: parametricNamePresenter selection) ifNil: [^self].

	vars := (umlClass instancesVariables select: [:each | each isBasic]  thenCollect: [:each | each name]) asSortedCollection.

	prompter := (ChoicePrompter choices: vars caption: 'Select variable to be used to generate the method') ifNil: [^self] ifNotNil: [:value | value asSymbol].

	umlClass createClassCreationMethodsForGlobalObjectsUsing: prompter.!

createDBAccessorMethods
	| umlClass prompter vars |

	umlClass := (self defaultVirtualMachine getAnyClassNamed: parametricNamePresenter selection) ifNil: [^self].

	vars := (umlClass instancesVariables select: [:each | each isBasic]  thenCollect: [:each | each name]) asSortedCollection.

	prompter := (ChoicePrompter choices: vars caption: 'Select variable to be used to generate the method') ifNil: [^self] ifNotNil: [:value | value asSymbol].

	umlClass createClassDBAccessorsForGlobalObjectsUsing: prompter.!

createDBCreationMethods
	| umlClass prompter vars |

	umlClass := (self defaultVirtualMachine getAnyClassNamed: parametricNamePresenter selection) ifNil: [^self].

	vars := (umlClass instancesVariables select: [:each | each isBasic]  thenCollect: [:each | each name]) asSortedCollection.

	prompter := (ChoicePrompter choices: vars caption: 'Select variable to be used to generate the method') ifNil: [^self] ifNotNil: [:value | value asSymbol].

	umlClass createClassDBCreationMethodsForGlobalObjectsUsing: prompter.!

createSchematicWiring

	super createSchematicWiring.

	parametricNamePresenter when: #selectionChanged send: #onGlobalNameChanged to: self!

inspectObjectForDesignGUI

	^parametricsPresenter selection inspectUMLInstanceForDesign!

model: anUMLModel

	super model: anUMLModel.

	parametricNamePresenter model: (ListModel on: self parametricsObjects)!

modelRoot

	^self subclassResponsibility!

newObjectForSelectedClass

	^(self defaultVirtualMachine getAnyClassNamed: self selectedName ifAbsent: [^nil]) newInstance.!

onGlobalNameChanged
	| globalCollection |

	parametricsContainer subPresenters do: [:each | each view close].
	parametricNamePresenter hasSelection ifFalse: [^parametricNamePresenter model: (ListModel on: self parametricsObjects)].

	globalCollection := self modelRoot at: parametricNamePresenter selection.

	globalCollection isEmpty ifTrue: [^self.].

	parametricsPresenter := UMLParametricListComposite createIn: parametricsContainer.
	globalCollection first createListViewFor: parametricsPresenter .
	parametricsPresenter model: (ListModel on: globalCollection).
	parametricsPresenter setFocus.

	self topShell view extent: ((self topShell view extent) + 1).
	self topShell view extent: ((self topShell view extent) + 1)
!

onGlobalObjectDoubleClicked: aMouseEvent

	parametricsPresenter hasSelection ifFalse: [^self].

	^parametricsPresenter selection inspectUMLInstance
!

parametricsObjects

	^self subclassResponsibility!

refreshObjectList
	^self onGlobalNameChanged!

removeSelectedClassAsGlobal
	parametricNamePresenter hasSelection ifFalse: [^self].
	(MessageBox 
		confirm: 'Are sure to remove the selected class ? All unreferenced instance will removed'
		caption: self applicationName) ifFalse: [^self].
	(self defaultVirtualMachine 
		umlModelOf: (self defaultVirtualMachine getAnyClassNamed: parametricNamePresenter selection)) 
			destroyGlobalKey: parametricNamePresenter selection.
	parametricNamePresenter resetSelection.
	self onGlobalNameChanged!

selectedName

	^parametricNamePresenter selection! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #addGlobalClass!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #addNewInstance!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #createAccessorMethods!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #createComponents!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #createCreationMethods!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #createDBAccessorMethods!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #createDBCreationMethods!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #createSchematicWiring!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #inspectObjectForDesignGUI!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #model:!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #modelRoot!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #newObjectForSelectedClass!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #onGlobalNameChanged!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #onGlobalObjectDoubleClicked:!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #parametricsObjects!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #refreshObjectList!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #removeSelectedClassAsGlobal!public! !
!UMLModelParametricObjectBrowserComposite categoriesFor: #selectedName!public! !

!UMLModelParametricObjectBrowserComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 656 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  377 1 818 1075 861 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 188 0 0 0 0 0 0 0 213 2 0 0 174 1 0 0] 98 0 818 193 193 0 27 7 32 234 256 98 2 560 8 'parametricContainer' 0 690 202 208 98 1 754 784 98 2 818 2731 21 818 1451 861 416 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 5 0 0 10 0 0 0 42 8 0 0 184 1 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 1152 0 0 0 5 0 0 0 1152 498 234 240 656 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 1152 98 2 8 1140920397 1025 1280 590662 2 ##(Smalltalk.ListModel)  202 208 656 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 10 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #addGlobalClass 8 'Add Class' 1 1 0 0 0 1538 1 1570 8 #removeSelectedClassAsGlobal 8 'Remove Class' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1538 1 1570 8 #addNewInstance 8 'Add New Instance' 1 1 0 0 0 1698 4097 1538 1 1570 8 #createAccessorMethods 8 'Create Accessor Methods' 1 1 0 0 0 1538 1 1570 8 #createCreationMethods 8 'Create Creation Methods' 1 1 0 0 0 1698 4097 1538 1 1570 8 #createDBCreationMethods 8 'Create Database Creation Methods' 1 1 0 0 0 1538 1 1570 8 #createDBAccessorMethods 8 'Create Database Accesor Methods' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1280 0 8 4294903307 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Class Name' 301 8 #left 2114 2144 2160 8 ##(Smalltalk.SortedCollection)  0 0 1280 0 1 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  5 1 8 ##(Smalltalk.UndefinedObject)  8 'doIt' 8 '[:ctx | 
ctx forecolor: (UMLClass colorForClassName: ctx item) ].' 8 #[33 105 17 29 226 1 178 179 106] 8 ##(Smalltalk.UMLClass)  8 #item 8 #colorForClassName: 8 #forecolor: 2368 7 257 0 8 #report 656 0 131169 0 0 690 202 208 98 3 754 784 98 2 818 1 1 818 359 861 1280 754 8 #contextMenu: 98 1 1504 1280 754 8 #text: 98 1 8 'Class Name' 1280 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 179 0 0 0 174 1 0 0] 98 0 928 0 27 8 'parametricNames' 0 690 202 208 98 1 754 784 98 2 818 1 1 818 359 861 1152 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 179 0 0 0 174 1 0 0] 98 1 1280 928 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 3008 0 1442 8 4278190080 0 517 0 0 0 3008 690 202 208 98 1 754 784 98 2 818 359 1 818 19 861 3008 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 179 0 0 0 0 0 0 0 188 0 0 0 174 1 0 0] 98 0 928 0 27 560 928 0 27 )! !
!UMLModelParametricObjectBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

