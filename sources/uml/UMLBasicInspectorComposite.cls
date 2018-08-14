"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLBasicInspectorComposite
	instanceVariableNames: 'instVarTreePresenter containerPresenter workspaceComposite urlPresenter aspectPresenter diagramPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLBasicInspectorComposite guid: (GUID fromString: '{5a0a53a3-3b58-4174-a8c4-75690f31f7ec}')!
UMLBasicInspectorComposite comment: ''!
!UMLBasicInspectorComposite categoriesForClass!Unclassified! !
!UMLBasicInspectorComposite methodsFor!

aspectPresenter
	^aspectPresenter!

aspectPresenter: anObject 
	aspectPresenter := anObject!

browseClass
	| shellBrowser |

	shellBrowser := UMLModelShell show.
	self topShell isCustomizedInspector ifTrue: [^shellBrowser selectUMLClass: self topShell model umlClass ifAbsent: [].].
	self selectedObject ifNil: [^self].
	shellBrowser selectUMLClass: self selectedObject umlClass ifAbsent: [].!

changeObjectClass
	"The receiver removes the selected instance variable and prompt a list of classes to be instantiated and put the new object as the new value for the selected instance variable "
	| selectedClass newInstance originalClass |

	(instVarTreePresenter hasSelection and:[instVarTreePresenter selection value belongToVirtualMachine]) ifTrue: [^self].
	(instVarTreePresenter selection == model) ifTrue: [^self].

	originalClass := model getMetaclass isClassAssociation 
		ifFalse: [model getMetaclass getRelatedClassForInstVarNamed: instVarTreePresenter selection instVarName] 
		ifTrue: [instVarTreePresenter selection value getMetaclass].

	selectedClass := (DetalleDeOpciones listaCon: originalClass allSubclasses para: 'UMLClasses view' titulo: 'Select the class to instance') ifNil: [^self] ifNotNil: [:value | value last].

	newInstance := selectedClass vmPerform: #newInstance.
	newInstance runBehaviorInitialize.
	
	model atVariableName: instVarTreePresenter selection instVarName put: newInstance snapshot: nil.

	self model: model.

	instVarTreePresenter view expandAll.!

createComponents

	super createComponents.

	instVarTreePresenter := self add: TreePresenter new name: 'objectTree'.
	containerPresenter := self add: Presenter new name: 'container'.
	workspaceComposite := self add: UMLInspectorWorkspaceComposite new name: 'workspaceComposite'.
	urlPresenter := self add: URLPresenter new name: 'browser'.
	diagramPresenter := self add: ImagePresenter new name: 'image'.!

createSchematicWiring

	super createSchematicWiring.

	instVarTreePresenter when: #selectionChanged send: #onInstVarChanged to: self!

defaultCaption

	^'Inspecting: <', 
		(model className first isVowel ifTrue: ['an'] ifFalse: ['a']),
		(model className, '> - current context <', 
		(instVarTreePresenter selection className first isVowel ifTrue: ['an'] ifFalse: ['a']),
		instVarTreePresenter selection className,'>')!

expandObjectRoot
	instVarTreePresenter expandAll: instVarTreePresenter model roots first
!

expandSelection

	instVarTreePresenter hasSelection ifFalse: [^nil].

	(instVarTreePresenter selection vmPerform: #isBasic) smalltalkObject ifTrue: [^self].

	instVarTreePresenter model collapse: instVarTreePresenter selection.

	(instVarTreePresenter selection vmPerform: #isCollection) smalltalkObject
	ifTrue: [^instVarTreePresenter selection smalltalkObject 
			do: [:each | instVarTreePresenter model add: each asChildOf: instVarTreePresenter selection].].

	(instVarTreePresenter selection vmPerform: #isDomainObject) smalltalkObject
	ifTrue: [^instVarTreePresenter model 
				addTree: (instVarTreePresenter selection value asTreeModelWith: instVarTreePresenter selection) 
				asChildOf: instVarTreePresenter selection.].!

hasSelectedCategory
	^false!

hasSelectedClass
	^self selectedObject notNil!

hasSelectedImplementation
	^false!

initializeSelectedObject
	| selection initializedObject |

	instVarTreePresenter hasSelection ifFalse: [^nil].

	selection := instVarTreePresenter selection.
	instVarTreePresenter model collapse: selection ifAbsent: [].

	initializedObject := selection value.

	initializedObject == model 
	ifFalse: [initializedObject linkWith: model]
	ifTrue: [model runBehaviorInitialize].
	
	"self model: model."

	instVarTreePresenter selection: selection ifAbsent: [].
	self expandSelection.!

inspectObjectForDesignGUI

	^model inspectUMLInstanceForDesign!

inspectSelectedObject

	instVarTreePresenter hasSelection ifFalse: [^nil].

	
	UMLBasicInspectorShell showOn: (
		(instVarTreePresenter selection isKindOf: UMLClass)
		ifTrue: [instVarTreePresenter selection ] 
		ifFalse: [instVarTreePresenter selection value] )!

inspectUMLWithCustomizedView
	instVarTreePresenter hasSelection ifFalse: [^model inspectUMLWithCustomizedView].
	(instVarTreePresenter selection value vmPerform: #isDomainObject) smalltalkObject 
		ifFalse: [^MessageBox notify: 'There is no domain object to show' caption: self applicationName].
	^instVarTreePresenter selection value inspectUMLWithCustomizedView!

model: anUMLInstance

	super model: anUMLInstance.

	instVarTreePresenter model: anUMLInstance asTreeModel!

nameForSelectedAspect
	| selectedObject |

	selectedObject := instVarTreePresenter selection.
	(selectedObject == instVarTreePresenter model roots first) ifTrue: [^'root'].

	"(selectedObject vmPerform: #isCollection) smalltalkObject ifTrue: [instVarTreePresenter selection: (instVarTreePresenter model parentOf: selectedObject) ]."
	^selectedObject instVarName!

onBooleanPresenterChanged
	| parentObject |

	parentObject := instVarTreePresenter model parentOf: instVarTreePresenter selection.
	(parentObject vmPerform: #isDomainObject) smalltalkObject

	ifTrue: [parentObject value atVariableName: instVarTreePresenter selection instVarName 
						put: ((parentObject value atVariableName: instVarTreePresenter selection instVarName) vmPerform: #not)
						snapshot: nil].

	self selectedInstVar value: (parentObject value atVariableName: instVarTreePresenter selection instVarName)
!

onCategoriaAdded
!

onInstVarChanged
	| resourceIdentifier |

	instVarTreePresenter hasSelection ifFalse: [^self].

	containerPresenter subPresenters do: [:each | 
		containerPresenter remove: each.
		each view close].
	self topShell view caption: self defaultCaption.
	(instVarTreePresenter selection className = 'Dictionary') ifTrue: [^self]. "there is NO special component for Dictionary, for now we only manage keys"
	((instVarTreePresenter selection class == UMLClass) or:[instVarTreePresenter selection class == UMLVirtualMachineClass] ) ifTrue: [^self].
	self renderUMLDiagram.
	resourceIdentifier := model resourceIdentifierFor: instVarTreePresenter selection value.
	aspectPresenter := resourceIdentifier owningClass 
				create: resourceIdentifier name
				in: containerPresenter
				on: instVarTreePresenter selection value smalltalkObject."we search for the correct presenter for the selected object"
	self model isBlock ifTrue: [aspectPresenter setText: self model smalltalkObject source.
						aspectPresenter view isEnabled: false].
	(aspectPresenter class == UMLListComposite) 
	ifTrue: [((OrderedCollection with: OrderedCollection with: Array) includes: (instVarTreePresenter model roots first smalltalkObject class))
		ifFalse: [aspectPresenter view name: self nameForSelectedAspect] 
		ifTrue: [aspectPresenter view name: 'virtualCollection']].
	"self site urlResolver defaultURL: '/umlinstance.html' forObject: instVarTreePresenter selection value.
	urlPresenter model: 'http://localhost:8888/umlinstance.html' asValue."
	((aspectPresenter class == TextPresenter) or: [aspectPresenter class == NumberPresenter])
	ifTrue: [aspectPresenter view updatePerChar: true.
		aspectPresenter when: #valueChanged send: #onTextPresenterChanged to: self.].

	(aspectPresenter class == BooleanPresenter) ifTrue: [aspectPresenter when: #valueChanged send: #onBooleanPresenterChanged to: self].
	(view viewNamed: 'container') "arrangement: (354/343);" invalidate.
	instVarTreePresenter selection isCollectionNode ifFalse: [^self].
	aspectPresenter model isEmpty ifTrue: [^self].
	aspectPresenter model first createListViewFor: aspectPresenter."we create the specific ListView to display the elements of the collection - we display each basic value (#isBasic)"
!

onMethodRemoved!

onNewMethodAdded: anUMLParsedImplementation 
!

onTextPresenterChanged

	self selectedObject smalltalkObject: aspectPresenter value
!

onViewOpened

	super onViewOpened.

	instVarTreePresenter expandAll: self model.
!

openUMLBrowser

	self browseClass!

parentOfSelectedObject

	^instVarTreePresenter model parentOf: self selectedInstVar!

refreshInstancesVariables
	^self refreshObjectTree: self model!

refreshObjectTree: anObject

	instVarTreePresenter collapse: anObject.
	instVarTreePresenter expand: anObject.!

refreshSelectedObject
	| selection |

	"instVarTreePresenter collapse: self selectedObject.
	instVarTreePresenter expand: self selectedObject. "

	selection := self selectedObject.

	self model: model.
	instVarTreePresenter expand: model.

	instVarTreePresenter selection: selection ifAbsent: [^self].

	instVarTreePresenter expand: selection.!

renderUMLDiagram
	| diagram |

	(instVarTreePresenter selection vmPerform: #isDomainObject) smalltalkObject ifFalse: [^self].

	(Canvas forView: diagramPresenter view) erase.
	diagram := (UMLPaint on: instVarTreePresenter selection umlClass) generate; yourself.
	diagramPresenter model: diagram bitmap!

selectedClass

	instVarTreePresenter hasSelection ifFalse: [^self defaultVirtualMachine nilObjectClass].

	^instVarTreePresenter selection asUMLObject umlClass!

selectedClassDescription
	^self selectedClass!

selectedInstVar
	^instVarTreePresenter selection!

selectedObject

	instVarTreePresenter hasSelection ifFalse: [^nil].

	(instVarTreePresenter selection isKindOf: UMLClass) ifTrue: [^instVarTreePresenter selection].

	^instVarTreePresenter selection value!

setSequenceTemporariesFor: anUMLObject

	workspaceComposite executionSnapshot temporaries: LookupTable new.
	anUMLObject asUMLObject allAttributes keysAndValuesDo: [:eachKey :eachValue | workspaceComposite executionSnapshot addTemporary: eachValue named: eachKey asString].!

storeAsGlobalObject
	instVarTreePresenter hasSelection ifFalse: [^self].
	instVarTreePresenter selection storeAsGlobalObject.
	MessageBox notify: 'Object stored as Global Object !!' caption: self applicationName!

storeAsSetupObject
	instVarTreePresenter hasSelection ifFalse: [^self].
	instVarTreePresenter selection vmPerform: #storeAsSetupObject.
	MessageBox notify: 'Object stored as Parametric Object !!' caption: self applicationName!

updateList
	^aspectPresenter model: aspectPresenter model! !
!UMLBasicInspectorComposite categoriesFor: #aspectPresenter!accessing!private! !
!UMLBasicInspectorComposite categoriesFor: #aspectPresenter:!accessing!private! !
!UMLBasicInspectorComposite categoriesFor: #browseClass!public! !
!UMLBasicInspectorComposite categoriesFor: #changeObjectClass!public! !
!UMLBasicInspectorComposite categoriesFor: #createComponents!public! !
!UMLBasicInspectorComposite categoriesFor: #createSchematicWiring!public! !
!UMLBasicInspectorComposite categoriesFor: #defaultCaption!public! !
!UMLBasicInspectorComposite categoriesFor: #expandObjectRoot!public! !
!UMLBasicInspectorComposite categoriesFor: #expandSelection!public! !
!UMLBasicInspectorComposite categoriesFor: #hasSelectedCategory!public! !
!UMLBasicInspectorComposite categoriesFor: #hasSelectedClass!public! !
!UMLBasicInspectorComposite categoriesFor: #hasSelectedImplementation!public! !
!UMLBasicInspectorComposite categoriesFor: #initializeSelectedObject!public! !
!UMLBasicInspectorComposite categoriesFor: #inspectObjectForDesignGUI!public! !
!UMLBasicInspectorComposite categoriesFor: #inspectSelectedObject!public! !
!UMLBasicInspectorComposite categoriesFor: #inspectUMLWithCustomizedView!public! !
!UMLBasicInspectorComposite categoriesFor: #model:!public! !
!UMLBasicInspectorComposite categoriesFor: #nameForSelectedAspect!public! !
!UMLBasicInspectorComposite categoriesFor: #onBooleanPresenterChanged!public! !
!UMLBasicInspectorComposite categoriesFor: #onCategoriaAdded!public! !
!UMLBasicInspectorComposite categoriesFor: #onInstVarChanged!public! !
!UMLBasicInspectorComposite categoriesFor: #onMethodRemoved!public! !
!UMLBasicInspectorComposite categoriesFor: #onNewMethodAdded:!public! !
!UMLBasicInspectorComposite categoriesFor: #onTextPresenterChanged!public! !
!UMLBasicInspectorComposite categoriesFor: #onViewOpened!public! !
!UMLBasicInspectorComposite categoriesFor: #openUMLBrowser!public! !
!UMLBasicInspectorComposite categoriesFor: #parentOfSelectedObject!public! !
!UMLBasicInspectorComposite categoriesFor: #refreshInstancesVariables!public! !
!UMLBasicInspectorComposite categoriesFor: #refreshObjectTree:!public! !
!UMLBasicInspectorComposite categoriesFor: #refreshSelectedObject!public! !
!UMLBasicInspectorComposite categoriesFor: #renderUMLDiagram!public! !
!UMLBasicInspectorComposite categoriesFor: #selectedClass!public! !
!UMLBasicInspectorComposite categoriesFor: #selectedClassDescription!public! !
!UMLBasicInspectorComposite categoriesFor: #selectedInstVar!public! !
!UMLBasicInspectorComposite categoriesFor: #selectedObject!public! !
!UMLBasicInspectorComposite categoriesFor: #setSequenceTemporariesFor:!public! !
!UMLBasicInspectorComposite categoriesFor: #storeAsGlobalObject!public! !
!UMLBasicInspectorComposite categoriesFor: #storeAsSetupObject!public! !
!UMLBasicInspectorComposite categoriesFor: #updateList!public! !

!UMLBasicInspectorComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 34 2 410 ##(Smalltalk.TreeView) 34 27 nil 416 34 2 8 1140916775 1025 576 590918 3 ##(Smalltalk.TreeModel) nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 525062 ##(Smalltalk.TreeNode) nil nil nil 170 192 528 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 265030 4 ##(Smalltalk.Menu) nil true 34 10 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) #inspectSelectedObject 8 'Inspect' 9363 1 nil nil nil 850 1 882 #browseClass 8 'Browse Class' 1 1 nil nil nil 850 1 882 #inspectUMLWithCustomizedView 8 'Inspect with Customized View' 1 1 nil nil nil 850 1 882 #expandSelection 8 'Expand' 9355 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 850 1 882 #changeObjectClass 8 'Change Object Class' 1 1 nil nil nil 850 1 882 #initializeSelectedObject 8 'Initialize Object' 9377 1 nil nil nil 1074 4097 850 1 882 #storeAsGlobalObject 8 'Store as Global Object' 9359 1 nil nil nil 850 1 882 #storeAsSetupObject 8 'Store as Setup Object (basic parametric)' 9383 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 576 nil 8 1819019918 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil 170 176 528 17 #smallIcons 1 170 ##(Smalltalk.PluggableLookupTable) 528 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 1570 591 821 576 1522 #contextMenu: 34 1 816 576 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 39 1 0 0 154 1 0 0] 8 #() 1570 193 193 nil 27 8 'objectTree' nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 2719 21 1570 1191 821 416 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 162 7 0 0 164 1 0 0] 34 3 576 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 1904 nil 754 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 1904 nil 1 #left nil nil nil 1570 1 1 1570 9 9 nil 2032 nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 591 1 1570 11 821 1904 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 39 1 0 0 0 0 0 0 44 1 0 0 154 1 0 0] 8 #() 1712 nil 27 410 ##(Smalltalk.CardContainer) 34 16 nil 416 34 2 8 1409286144 131073 2224 nil 754 8 4278190080 nil 5 nil nil nil 2224 655878 ##(Smalltalk.CardLayout) 138 144 34 2 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Workspace' 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Workspace'' iconBlock: [UMLWorkspaceShell icon]' 8 #[45 30 34 112 47 161 106 194 105] 983558 ##(Smalltalk.VariableBinding) #CardLabel 2416 2448 2578 #UMLWorkspaceShell ##(Smalltalk.UMLWorkspaceShell) #icon #text:iconBlock: 2480 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 2224 34 2 8 1140850688 131073 2624 nil nil nil 5 nil nil nil 2624 482 170 176 528 false 170 192 528 nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 9 53 1570 575 761 2624 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 35 1 0 0 150 1 0 0] 34 1 410 ##(Smalltalk.ContainerView) 34 15 nil 2624 34 2 8 1140850688 131073 2896 nil nil nil 5 nil nil nil 2896 482 170 176 528 true 170 192 34 4 410 ##(Smalltalk.ContainerView) 34 15 nil 2896 34 2 8 1140850688 131073 3024 nil nil nil 5 nil nil nil 3024 482 170 176 528 false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 3024 34 2 8 1140850688 131073 3152 nil 754 8 4278190080 nil 5 nil nil nil 3152 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.UMLInspectorWorkspaceComposite) #resource_Default_view nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 1 1 1570 575 377 3152 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 31 1 0 0 188 0 0 0] 528 1712 nil 27 8 'workspaceComposite' nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 1 385 1570 575 377 3024 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 192 0 0 0 31 1 0 0 124 1 0 0] 34 1 3152 1712 nil 27 8 'workspanceContainer' 410 ##(Smalltalk.ContainerView) 34 15 nil 2896 34 2 8 1140850688 131073 3616 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 3616 482 170 176 528 false 170 192 528 nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 1 1 1570 575 375 3616 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 31 1 0 0 187 0 0 0] 8 #() 1712 nil 27 8 'container' nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 1 1 1570 575 761 2896 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 31 1 0 0 124 1 0 0] 34 3 3616 410 ##(Smalltalk.Splitter) 34 12 nil 2896 34 2 8 1140850688 1 4096 nil 754 8 4278190080 nil 517 nil nil nil 2002 4096 nil 1 #left nil nil nil 1570 1 1 2048 nil 4208 nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 1 375 1570 575 11 4096 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 187 0 0 0 31 1 0 0 192 0 0 0] 8 #() 1712 nil 27 3024 1712 nil 27 1712 nil 27 2386 2418 8 'UML Model' 2466 0 nil 2498 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''UML Model'' iconBlock: [UMLModel icon]' 8 #[45 30 34 112 47 161 106 194 105] 2592 4416 2578 #UMLModel ##(Smalltalk.UMLModel) #icon #text:iconBlock: 4432 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 2224 34 2 8 1140850688 131073 4528 nil nil nil 5 nil nil nil 4528 482 170 176 528 false 170 192 34 2 410 ##(Smalltalk.GdiplusImageView) 34 28 nil 4528 34 2 8 1140850944 1 4656 721990 2 ##(Smalltalk.ValueHolder) nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil nil nil 5 nil nil nil 4656 nil nil 852486 ##(Smalltalk.NullConverter) nil nil nil nil #normal 1 590342 ##(Smalltalk.Rectangle) 1570 1 1 1570 1 1 nil nil #none nil nil nil nil nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 1 1 1570 575 761 4656 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 31 1 0 0 124 1 0 0] 8 #() 1712 nil 29 8 'image' nil 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 9 53 1570 575 761 4528 1650 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 35 1 0 0 150 1 0 0] 34 1 4656 1712 nil 27 2624 170 192 528 nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 2224 34 2 8 1140916736 1 5232 590662 2 ##(Smalltalk.ListModel) 138 144 34 2 2432 4400 nil 688 nil nil 1 nil nil nil 5232 nil 8 1818943198 2466 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 5376 7 257 nil 2466 0 nil 5394 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 5440 7 257 nil 1408 nil nil nil nil nil #smallIcons nil nil nil nil nil 1458 138 144 34 3 1522 #createAt:extent: 34 2 1570 1 1 1570 591 821 5232 1522 #basicSelectionsByIndex: 34 1 8 #(1) 5232 1522 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 5232 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 39 1 0 0 154 1 0 0] 8 #() 1712 nil 27 1458 138 144 34 1 1522 #createAt:extent: 34 2 1570 601 1 1570 591 821 2224 1650 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 44 1 0 0 0 0 0 0 83 2 0 0 154 1 0 0] 34 3 2624 4528 5232 1712 nil 27 1712 nil 27 )! !
!UMLBasicInspectorComposite class categoriesFor: #resource_Default_view!public!resources-views! !

