"Filed out from Dolphin Smalltalk 7"!

UMLListComposite subclass: #UMLParametricListComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLParametricListComposite guid: (GUID fromString: '{6c2dfde3-7c8c-42f7-97fb-c1dfe2d2b681}')!
UMLParametricListComposite comment: ''!
!UMLParametricListComposite categoriesForClass!Unclassified! !
!UMLParametricListComposite methodsFor!

addNewObject
	| newObject |

	newObject := self topShell newObjectForSelectedClass.
	newObject ifNil: [^MessageBox notify: 'Class not found error !!' caption: self applicationName].
	newObject runBehaviorInitialize.
	self topShell addToRepository: newObject.
	self topShell onGlobalNameChanged.

	objectListPresenter selection: newObject ifAbsent: [].!

addNewObject: anUMLInstance
	| mainObject collection mainLink relatedLink relation |
	mainObject := self topShell getModel.
	relation := mainObject relationForInstVarNamed: view name.
	mainLink := relation getSymbolToLinkWith: mainObject umlClass.
	relatedLink := relation getSymbolToLinkWith: anUMLInstance umlClass.
	mainObject vmPerform: mainLink withArguments: (Array with: anUMLInstance).
	anUMLInstance vmPerform: relatedLink withArguments: (Array with: mainObject).
	collection := (mainObject getVariableNamed: view name) smalltalkObject.
	(collection size = 1 and: [listPresenterCreated not])
		ifTrue: [collection last createListViewFor: self].
	objectListPresenter model: (ListModel on: collection)!

addObject

	^MessageBox notify: 'Is not possible to add an existing object to the repository, because it is already stored'!

initializeObject

	objectListPresenter hasSelection ifFalse: [^self].

	objectListPresenter selection vmPerform: #initialize withArguments: #().

	objectListPresenter selection linkWith: self topShell model.

	objectListPresenter view invalidate.!

onDropOverList: aDragDropSession 
	| relation newInstance |

	relation := self topShell model relationForInstVarNamed: aDragDropSession suggestedSource umlClass nameForRelation.
	relation ifNil: [^MessageBox notify: 'Drag and drop does not match between objects.' caption: self applicationName].

	relation isAssociationClass ifFalse: [^self addNewObject: aDragDropSession suggestedSource].
	newInstance := (relation relation classToCreateInstanceLinkedTo: aDragDropSession suggestedSource)  vmPerform: #newInstance.
	newInstance vmPerform: #initialize.

	(newInstance hasVariableNamed: aDragDropSession suggestedSource umlClass nameForRelation asSymbol) 
	ifTrue: [newInstance atVariableName: aDragDropSession suggestedSource umlClass nameForRelation asSymbol put: aDragDropSession suggestedSource snapshot: nil.
		self addNewObject: newInstance]
	ifFalse: [self halt]	"Keyboard default isShiftDown "!

relatedObjectLinkSymbol

	^#basicAdd:!

removeObject

	objectListPresenter hasSelection ifFalse: [^self].
	(MessageBox confirm: 'Do you want to remove the selected object ?' caption: 'UML Virtual Environment') ifFalse: [^nil].

	self topShell removeFromRepository: (self selection ifNil: [^self]) .
! !
!UMLParametricListComposite categoriesFor: #addNewObject!abm!public! !
!UMLParametricListComposite categoriesFor: #addNewObject:!abm!public! !
!UMLParametricListComposite categoriesFor: #addObject!abm!public! !
!UMLParametricListComposite categoriesFor: #initializeObject!abm!public! !
!UMLParametricListComposite categoriesFor: #onDropOverList:!abm!drag & drop!public! !
!UMLParametricListComposite categoriesFor: #relatedObjectLinkSymbol!public! !
!UMLParametricListComposite categoriesFor: #removeObject!abm!public! !

