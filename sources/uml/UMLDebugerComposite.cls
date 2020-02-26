"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLDebugerComposite
	instanceVariableNames: 'stackPresenter snapshotObjectsPresenter receiverWorkspace sourcePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDebugerComposite guid: (GUID fromString: '{0c18d82e-ea1f-4ef2-8133-1542a292bb44}')!
UMLDebugerComposite comment: ''!
!UMLDebugerComposite categoriesForClass!MVP-Resources-UFabrik! !
!UMLDebugerComposite methodsFor!

addMessageToImplementation

	self selectedClass addSourceImplementation: sourcePresenter getAllText.

	self resumeProcess.

	self stepInto.!

addSnapshot: aUMLImplementationDebugerSnapshot

	stackPresenter model add: aUMLImplementationDebugerSnapshot.!

createComponents

	super createComponents.

	stackPresenter := self add: ListPresenter new name: 'stackPresenter'.
	snapshotObjectsPresenter := self add: ListPresenter new name: 'snapshotObjectsPresenter'.
	receiverWorkspace := self add: UMLInspectorWorkspaceComposite new name: 'receiverWorkspace'.
	sourcePresenter := self add: UMLDebugerWorkspaceComposite new name: 'sourcePresenter'!

createSchematicWiring

	super createSchematicWiring.

	stackPresenter when: #selectionChanged send: #onStackSelectionChanged to: self.

	snapshotObjectsPresenter when: #leftButtonDoubleClicked: send: #onSnapshotObjectDoubleClicked: to: self.!

executionStack

	^stackPresenter model!

implementationNotFound: anUMLImplementationNotFoundError 
	| implementorClass source |

	(MessageBox confirm: anUMLImplementationNotFoundError description , '. Do you want to implement it ?' caption: self applicationName) ifFalse: [^self].

	implementorClass := (DetalleDeOpciones listaCon: anUMLImplementationNotFoundError getAllClasses para: 'UMLClasses view') ifNil: [^self] ifNotNil: [:value | value last].

	source := anUMLImplementationNotFoundError implementationName , String lineDelimiter , String tab, '^self'.

	implementorClass addSourceImplementation: source.

	self stepInto!

isClassSideSelected

	model mainSnapshot isScript ifTrue: [^true].

	^model mainSnapshot sequence methodClass isMetaclass not!

model: anUMLDebuggerSnapshot

	super model: anUMLDebuggerSnapshot.

	stackPresenter model add: anUMLDebuggerSnapshot.

	!

onSnapshotObjectDoubleClicked: aMouseEvent

	snapshotObjectsPresenter hasSelection ifFalse: [^self].

	snapshotObjectsPresenter selection last inspectUMLInstance!

onStackSelectionChanged

	stackPresenter hasSelection ifFalse: [^sourcePresenter value: ''].

	sourcePresenter value: stackPresenter selection sequenceSource.

	self selectFirstNodeText.

	sourcePresenter sourcePresenterView styler: (
		stackPresenter selection isScriptSnapshot
		ifTrue: [SmalltalkExpressionStyler new] 
		ifFalse: [SmalltalkMethodStyler new]).

	self showAllObjectsForExecutionSnapshot: stackPresenter selection!

onViewOpened

	super onViewOpened.

	model notNil ifTrue: [sourcePresenter value: self model sequenceSource].

	sourcePresenter setToExpressionStyler.

	stackPresenter selection: self model ifAbsent: [].

	self selectFirstNodeText.!

restartDebug

	stackPresenter hasSelection ifFalse: [^self].

	stackPresenter selection restartExecution.

	self onStackSelectionChanged.!

resumeProcess
	| index resumedSnapshot |

	stackPresenter hasSelection ifFalse: [^self].

	resumedSnapshot := stackPresenter selection.
	resumedSnapshot nodesToExecute do: [:each | resumedSnapshot stepOver: each].

	index := stackPresenter model indexOf: resumedSnapshot.

	stackPresenter model size = 1
	ifTrue: [self topShell exit] 
	ifFalse: [stackPresenter selectionByIndex: index - 1.
		stackPresenter model remove: resumedSnapshot.].!

selectedClass

	stackPresenter hasSelection ifFalse: [^nil].

	stackPresenter selection isScriptSnapshot ifTrue: [^nil].

	^stackPresenter selection mainSnapshot sequence methodClass!

selectedObject
	^stackPresenter selection mainSnapshot receiverObject!

selectFirstNodeText

	stackPresenter hasSelection ifFalse: [^self].

	stackPresenter selection nextNode 
	ifNil: [self selectNode: stackPresenter selection getNextNode] 
	ifNotNil: [:value | self selectNode: value]!

selectLastStackItem

	stackPresenter model isEmpty ifTrue: [^self].

	stackPresenter selection: stackPresenter model last ifAbsent: []!

selectNode: aStProgramNode
	"The debugger select <aStProgramNode> text in the source presenter. 
	But if is an Implementation Snapshot the <nodes> with the real position are in the implementation NOT in the <nodesToExecute> of the Debugger Snapshot"

	aStProgramNode ifNil: [^self].

	^sourcePresenter selectionRange: aStProgramNode sourceInterval!

setLastAnnotatedResult
	| nextNode snapshot |

	snapshot := stackPresenter selection.
	nextNode := snapshot nextNode .

	nextNode isAssignment
	ifTrue: [nextNode variable isMessage 
		ifTrue: [snapshot executeNode: nextNode variable ]] 
	ifFalse: [(nextNode isMessage or: [nextNode isVariable]) ifTrue: [snapshot executeNode: nextNode] ]!

setScriptSnapshot: anUMLExecutionSnapshot

	sourcePresenter setScriptSnapshot: anUMLExecutionSnapshot!

showAllObjectsForExecutionSnapshot: anUMLExecutionSnapshot

	snapshotObjectsPresenter model: ListModel new.

	snapshotObjectsPresenter model add: (Array with: 'self' with: anUMLExecutionSnapshot receiverObject).

	anUMLExecutionSnapshot receiverObject instancesVariables keysAndValuesDo: [:eachKey :eachValue |  
		snapshotObjectsPresenter model add: (Array with: ('....', eachKey) with: eachValue)].

	anUMLExecutionSnapshot sequenceArguments keysAndValuesDo: [:eachKey :eachValue |   
		snapshotObjectsPresenter model add: (Array with: '~',eachKey, '~' with: eachValue)].

	anUMLExecutionSnapshot sequenceTemporaries keysAndValuesDo: [:eachKey :eachValue |   
		snapshotObjectsPresenter model add: (Array with: '<',eachKey, '>' with: eachValue)].

	anUMLExecutionSnapshot temporaries keysAndValuesDo: [:eachKey :eachValue |   
		snapshotObjectsPresenter model add: (Array with: '<',eachKey, '>' with: eachValue)].

	snapshotObjectsPresenter model add: (Array with: '[lastResult]' with: stackPresenter selection lastAnnotatedResult "lastResult").
!

showNextStatement

	self onStackSelectionChanged!

specialStepInto: aStMessageNode
	| innerBlockNode |

	innerBlockNode := stackPresenter selection stepIntoSpecialMessage: stackPresenter selection nextNode.

	self selectNode: innerBlockNode!

stepInto
	| newSnapshot selectedSnapshop receiverObject |
	selectedSnapshop := stackPresenter selection.

	selectedSnapshop nextNode isReturn ifTrue: [^MessageBox notify: 'Return node can not be debugged' caption: self applicationName].
	selectedSnapshop isPrimitiveImplementation ifTrue: [^MessageBox notify: 'Primitives call can not be debugged' caption: self applicationName].
	(selectedSnapshop nextNode isAssignment and: [selectedSnapshop nextNode value isMessage not])  ifTrue: [^MessageBox notify: 'Simple assigments can not be debugged' caption: self applicationName].
	selectedSnapshop nextNode receiver isBlock ifTrue: [^MessageBox notify: 'Block messages can not be debugged' caption: self applicationName].
	receiverObject := selectedSnapshop getReceiverObjectFrom: selectedSnapshop nextNode receiver.
	"here we check if is a simple message with the same name as one of its instances variables, in this case the node can only be debuged if he had a specific implementation for that instance variable"
	((selectedSnapshop nextNode isMessage and: [selectedSnapshop nextNode receiver isMessage not]) 
		and: [receiverObject hasVariableNamed: selectedSnapshop nextNode selector]) 
			ifTrue: 
				[(receiverObject canUnderstand: selectedSnapshop nextNode selector) 
					ifFalse: 
						[^MessageBox notify: 'Instance variable node without an implementation can not be debugged'
							caption: self applicationName]].
	(selectedSnapshop isSpecialNodeMessage: selectedSnapshop nextNode) 
		ifTrue: [^self specialStepInto: selectedSnapshop nextNode].
	newSnapshot := [selectedSnapshop stepInto: selectedSnapshop nextNode] on: Error
				do: [:ex | ^self implementationNotFound: ex].
	newSnapshot 
		ifNil: [^MessageBox notify: 'Empty methods can not be debugged' caption: self applicationName].
	self addSnapshot: newSnapshot.
	stackPresenter selection: newSnapshot ifAbsent: []!

stepOut
	| debugerSnapshot currentIteration index |
	stackPresenter hasSelection ifFalse: [^self].
	debugerSnapshot := stackPresenter selection.
	currentIteration := debugerSnapshot currentIterationBlock.
	currentIteration 
		ifNil: 
			[^MessageBox notify: 'You have to be debuging an iteration node to <step out>'
				caption: self applicationName].
	currentIteration forceFinalization.
	debugerSnapshot isAtEnd 
		ifFalse: [self selectNode: debugerSnapshot getNextNode]
		ifTrue: 
			[stackPresenter model size = 1 
				ifTrue: [self topShell exit]
				ifFalse: 
					[index := stackPresenter model indexOf: debugerSnapshot.
					stackPresenter selectionByIndex: index - 1.
					stackPresenter model remove: debugerSnapshot]]!

stepOver
	| selectedSnapshot node |

	selectedSnapshot := stackPresenter selection.
	node := selectedSnapshot nextNode ifNil: [selectedSnapshot getNextNode] ifNotNil: [:value | value] "getNextNode".

	selectedSnapshot stepOver: node.

	selectedSnapshot isAtEnd 
	ifTrue: [stackPresenter model remove: selectedSnapshot.
		^stackPresenter selection: selectedSnapshot parentSnapshot ifAbsent: [^self topShell exit].
		"self selectNode: stackPresenter selection lastExecutedNode"].

	self selectNode: selectedSnapshot getNextNode.

	self showAllObjectsForExecutionSnapshot: stackPresenter selection! !
!UMLDebugerComposite categoriesFor: #addMessageToImplementation!public! !
!UMLDebugerComposite categoriesFor: #addSnapshot:!public! !
!UMLDebugerComposite categoriesFor: #createComponents!public! !
!UMLDebugerComposite categoriesFor: #createSchematicWiring!public! !
!UMLDebugerComposite categoriesFor: #executionStack!public! !
!UMLDebugerComposite categoriesFor: #implementationNotFound:!debug!debug process!public! !
!UMLDebugerComposite categoriesFor: #isClassSideSelected!public! !
!UMLDebugerComposite categoriesFor: #model:!public! !
!UMLDebugerComposite categoriesFor: #onSnapshotObjectDoubleClicked:!public! !
!UMLDebugerComposite categoriesFor: #onStackSelectionChanged!public!selecting nodes! !
!UMLDebugerComposite categoriesFor: #onViewOpened!public! !
!UMLDebugerComposite categoriesFor: #restartDebug!public! !
!UMLDebugerComposite categoriesFor: #resumeProcess!debug!public! !
!UMLDebugerComposite categoriesFor: #selectedClass!public! !
!UMLDebugerComposite categoriesFor: #selectedObject!public! !
!UMLDebugerComposite categoriesFor: #selectFirstNodeText!public!selecting nodes! !
!UMLDebugerComposite categoriesFor: #selectLastStackItem!public! !
!UMLDebugerComposite categoriesFor: #selectNode:!debug!public!selecting nodes! !
!UMLDebugerComposite categoriesFor: #setLastAnnotatedResult!public! !
!UMLDebugerComposite categoriesFor: #setScriptSnapshot:!public! !
!UMLDebugerComposite categoriesFor: #showAllObjectsForExecutionSnapshot:!public! !
!UMLDebugerComposite categoriesFor: #showNextStatement!debug!public! !
!UMLDebugerComposite categoriesFor: #specialStepInto:!public! !
!UMLDebugerComposite categoriesFor: #stepInto!debug!debug process!public! !
!UMLDebugerComposite categoriesFor: #stepOut!debug!debug process!public! !
!UMLDebugerComposite categoriesFor: #stepOver!debug!debug process!public! !

!UMLDebugerComposite class methodsFor!

icon

	^Icon fromId: 'Debugger.ico'!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  3199 21 706 1911 1231 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 250 9 0 0 113 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 816 0 0 0 5 0 0 0 816 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 816 98 2 8 1140850688 131073 912 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 912 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.ReferenceView)  98 14 0 912 98 2 8 1140850688 131073 1072 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 1072 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UMLDebugger_tools 0 578 202 208 98 1 642 672 98 2 706 1 1 706 241 51 1072 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 120 0 0 0 25 0 0 0] 544 706 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 1472 241 1458 8 #fixedParentTop 1 1458 8 #fixedParentBottom 1 410 1088 98 14 0 912 98 2 8 1140850688 131073 1568 0 1154 8 4278190080 0 5 0 0 0 1568 1202 1232 8 #resource_UML_Common 0 578 202 208 98 1 642 672 98 2 706 231 1 706 1681 51 1568 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 115 0 0 0 0 0 0 0 187 3 0 0 25 0 0 0] 544 1408 0 27 1426 1472 231 1458 8 #fixedParentRight 1 1504 1 1536 1 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1911 51 912 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 187 3 0 0 25 0 0 0] 98 2 1072 1568 1408 0 27 0 0 0 410 432 98 15 0 816 98 2 8 1140850688 131073 2064 0 0 0 5 0 0 0 2064 498 234 240 544 32 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 51 706 1911 557 2064 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 187 3 0 0 47 1 0 0] 98 3 410 432 98 15 0 2064 98 2 8 1140850688 131073 2336 0 0 0 5 0 0 0 2336 498 234 240 544 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 2336 98 2 8 1409388621 1025 2464 590662 2 ##(Smalltalk.ListModel)  202 208 544 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  1154 8 4278190080 0 5 0 0 0 2464 0 8 4294902809 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Execution Stack' 801 8 #left 2674 8 #printSnapshotName 98 0 8 ##(Smalltalk.SortedCollection)  0 0 2464 0 1 0 0 8 #report 544 0 131171 0 0 578 202 208 98 2 642 672 98 2 706 1 1 706 947 557 2464 642 8 #text: 98 1 8 'Execution Stack' 2464 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 1 0 0 22 1 0 0] 98 0 1408 0 27 8 'stackPresenter' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 947 557 2336 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 1 0 0 22 1 0 0] 98 1 2464 1408 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 2064 98 2 8 1140850688 1 3360 0 1154 8 4278190080 0 517 0 0 0 3360 578 202 208 98 1 642 672 98 2 706 947 1 706 19 557 3360 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 217 1 0 0 0 0 0 0 226 1 0 0 22 1 0 0] 98 0 1408 0 27 410 432 98 15 0 2064 98 2 8 1140850688 131073 3632 0 0 0 5 0 0 0 3632 498 234 240 98 2 410 432 98 15 0 3632 98 2 8 1140850688 131073 3744 0 0 0 5 0 0 0 3744 498 234 240 544 32 234 256 98 2 410 2480 98 30 0 3744 98 2 8 1409388621 1025 3872 2546 202 208 544 0 2608 1154 2640 0 5 0 0 0 3872 0 8 4294902809 2674 2704 98 0 2736 2768 0 0 0 0 0 0 202 208 98 2 2818 8 'Variable' 201 2864 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 2672 8 'doIt' 8 '[:e | e first]' 8 #[30 105 226 0 106] 8 #first 4112 7 257 0 2928 0 0 3872 0 1 0 0 2818 8 'Value' 501 2864 4098 0 0 4130 2 1 2672 8 'doIt' 8 '[:e | e second]' 8 #[30 105 226 0 106] 8 #second 4256 7 257 0 2674 8 #<= 98 0 0 0 3872 0 1 0 0 2944 544 0 131171 0 0 578 202 208 98 2 642 672 98 2 706 1 1 706 947 359 3872 642 3088 98 1 8 'Variable' 3872 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 1 0 0 179 0 0 0] 98 0 1408 0 27 8 'snapshotObjectsPresenter' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 947 359 3744 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 1 0 0 179 0 0 0] 98 1 3872 1408 0 27 5 16 234 256 544 0 578 202 208 98 1 642 672 98 2 706 965 1 706 947 557 3632 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 226 1 0 0 0 0 0 0 187 3 0 0 22 1 0 0] 98 3 3744 410 3376 98 12 0 3632 98 2 8 1140850688 1 4960 0 1154 3456 0 517 0 0 0 4960 578 202 208 98 1 642 672 98 2 706 1 359 706 947 19 4960 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 179 0 0 0 217 1 0 0 188 0 0 0] 98 0 1408 0 27 410 432 98 15 0 3632 98 2 8 1140850688 131073 5200 0 0 0 5 0 0 0 5200 498 234 240 544 32 234 256 98 2 410 1088 98 14 0 5200 98 2 8 1140850688 131073 5328 0 1154 8 4278190080 0 5 0 0 0 5328 1202 8 ##(Smalltalk.UMLInspectorWorkspaceComposite)  8 #resource_Default_view 0 578 202 208 98 1 642 672 98 2 706 1 1 706 947 181 5328 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 1 0 0 90 0 0 0] 544 1408 0 27 8 'receiverWorkspace' 0 578 202 208 98 1 642 672 98 2 706 1 377 706 947 181 5200 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 188 0 0 0 217 1 0 0 22 1 0 0] 98 1 5328 1408 0 27 1408 0 27 1408 0 27 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1911 607 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 187 3 0 0 47 1 0 0] 98 2 912 2064 1408 0 27 410 3376 98 12 0 416 98 2 8 1140850688 1 5968 0 1154 3456 0 517 0 0 0 5968 578 202 208 98 1 642 672 98 2 706 1 607 706 1911 19 5968 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 47 1 0 0 187 3 0 0 56 1 0 0] 98 0 1408 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 6208 0 0 0 5 0 0 0 6208 882 1 1 410 1088 98 14 0 6208 98 2 8 1140850688 131073 6288 0 1154 1648 0 5 0 0 0 6288 1202 1232 1248 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1911 51 6288 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 187 3 0 0 25 0 0 0] 544 1408 0 27 0 0 0 410 1088 98 14 0 6208 98 2 8 1140850688 131073 6528 0 1154 5408 0 5 0 0 0 6528 1202 8 ##(Smalltalk.UMLClassWorkspaceComposite)  5456 0 578 202 208 98 1 642 672 98 2 706 1 51 706 1911 557 6528 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 187 3 0 0 47 1 0 0] 544 1408 0 27 234 256 98 2 6528 8 'sourcePresenter' 0 578 202 208 98 1 642 672 98 2 706 1 625 706 1911 607 6208 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 56 1 0 0 187 3 0 0 103 2 0 0] 98 2 6528 6288 1408 0 27 1408 0 27 )! !
!UMLDebugerComposite class categoriesFor: #icon!public! !
!UMLDebugerComposite class categoriesFor: #resource_Default_view!public!resources-views! !

