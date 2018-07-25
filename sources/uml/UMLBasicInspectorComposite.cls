"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLBasicInspectorComposite
	instanceVariableNames: 'instVarTreePresenter containerPresenter workspaceComposite urlPresenter aspectPresenter'
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

	originalClass := model getMetaclass isClassAssociation 
		ifFalse: [model getMetaclass getRelatedClassForInstVarNamed: instVarTreePresenter selection instVarName] 
		ifTrue: [instVarTreePresenter selection value getMetaclass].

	selectedClass := (DetalleDeOpciones listaCon: originalClass allSubclasses para: 'UMLClasses view' titulo: 'Select the class to instance') ifNil: [^self] ifNotNil: [:value | value last].

	newInstance := selectedClass vmPerform: #newInstance.
	newInstance runBehaviorInitialize.
	
	model atVariableName: instVarTreePresenter selection instVarName put: newInstance.

	self model: model.

	instVarTreePresenter view expandAll.!

createComponents

	super createComponents.

	instVarTreePresenter := self add: TreePresenter new name: 'objectTree'.
	containerPresenter := self add: Presenter new name: 'container'.
	workspaceComposite := self add: UMLInspectorWorkspaceComposite new name: 'workspaceComposite'.
	urlPresenter := self add: URLPresenter new name: 'browser'.!

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
	ifTrue: [parentObject value 
			atVariableName: instVarTreePresenter selection instVarName 
			put: ((parentObject value atVariableName: instVarTreePresenter selection instVarName) vmPerform: #not)].

	self selectedInstVar value: (parentObject value atVariableName: instVarTreePresenter selection instVarName )
!

onCategoriaAdded
!

onInstVarChanged
	| resourceIdentifier |

	instVarTreePresenter hasSelection ifFalse: [^self].
	workspaceComposite executionSnapshot addTemporary: instVarTreePresenter selection asUMLObject named: 'self'.
	self setSequenceTemporariesFor: instVarTreePresenter selection.
	containerPresenter subPresenters do: [:each | 
		containerPresenter remove: each.
		each view close].
	self topShell view caption: self defaultCaption.
	(instVarTreePresenter selection className = 'Dictionary') ifTrue: [^self]. "there is NO special component for Dictionary, for now we only manage keys"
	((instVarTreePresenter selection class == UMLClass) or:[instVarTreePresenter selection class == UMLVirtualMachineClass] ) ifTrue: [^self].
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

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.TreeView)  98 27 0 416 98 2 8 1140916775 1025 592 590918 3 ##(Smalltalk.TreeModel)  0 1310726 ##(Smalltalk.IdentitySearchPolicy)  525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 544 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 10 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #inspectSelectedObject 8 'Inspect' 9363 1 0 0 0 882 1 914 8 #browseClass 8 'Browse Class' 1 1 0 0 0 882 1 914 8 #inspectUMLWithCustomizedView 8 'Inspect with Customized View' 1 1 0 0 0 882 1 914 8 #expandSelection 8 'Expand' 9355 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 882 1 914 8 #changeObjectClass 8 'Change Object Class' 1 1 0 0 0 882 1 914 8 #initializeSelectedObject 8 'Initialize Object' 9377 1 0 0 0 1170 4097 882 1 914 8 #storeAsGlobalObject 8 'Store as Global Object' 9359 1 0 0 0 882 1 914 8 #storeAsSetupObject 8 'Store as Setup Object (basic parametric)' 9383 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 592 0 8 4294902975 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 234 240 544 17 8 #smallIcons 1 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1778 587 821 592 1714 8 #contextMenu: 98 1 848 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 37 1 0 0 154 1 0 0] 98 0 1778 193 193 0 27 8 'objectTree' 0 1650 202 208 98 1 1714 1744 98 2 1778 3199 21 1778 1191 821 416 1874 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 146 8 0 0 164 1 0 0] 98 3 592 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 2128 0 786 8 4278190080 0 517 0 0 0 2128 1650 202 208 98 1 1714 1744 98 2 1778 587 1 1778 19 821 2128 1874 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 37 1 0 0 0 0 0 0 46 1 0 0 154 1 0 0] 98 0 1936 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 2400 0 0 0 5 0 0 0 2400 498 234 240 544 32 234 256 544 0 1650 202 208 98 1 1714 1744 98 2 1778 605 1 1778 587 821 2400 1874 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 46 1 0 0 0 0 0 0 83 2 0 0 154 1 0 0] 98 1 410 432 98 15 0 2400 98 2 8 1140850688 131073 2672 0 0 0 5 0 0 0 2672 498 234 240 544 16 234 256 98 4 410 432 98 15 0 2672 98 2 8 1140850688 131073 2800 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 2800 498 234 240 544 32 234 256 544 0 1650 202 208 98 1 1714 1744 98 2 1778 1 1 1778 587 401 2800 1874 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 37 1 0 0 200 0 0 0] 98 0 1936 0 27 8 'container' 410 432 98 15 0 2672 98 2 8 1140850688 131073 3120 0 0 0 5 0 0 0 3120 498 234 240 544 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 3120 98 2 8 1140850688 131073 3248 0 786 8 4278190080 0 5 0 0 0 3248 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLInspectorWorkspaceComposite)  8 #resource_Default_view 0 1650 202 208 98 1 1714 1744 98 2 1778 1 1 1778 587 403 3248 1874 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 37 1 0 0 201 0 0 0] 544 1936 0 27 8 'workspaceComposite' 0 1650 202 208 98 1 1714 1744 98 2 1778 1 419 1778 587 403 3120 1874 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 209 0 0 0 37 1 0 0 154 1 0 0] 98 1 3248 1936 0 27 8 'workspanceContainer' 0 1650 202 208 98 1 1714 1744 98 2 1778 1 1 1778 587 821 2672 1874 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 37 1 0 0 154 1 0 0] 98 3 2800 410 2144 98 12 0 2672 98 2 8 1140850688 1 3920 0 786 8 4278190080 0 517 0 0 0 3920 1650 202 208 98 1 1714 1744 98 2 1778 1 401 1778 587 19 3920 1874 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 200 0 0 0 37 1 0 0 209 0 0 0] 98 0 1936 0 27 3120 1936 0 27 1936 0 27 1936 0 27 )! !
!UMLBasicInspectorComposite class categoriesFor: #resource_Default_view!public!resources-views! !

