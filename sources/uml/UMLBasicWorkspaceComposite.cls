"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLBasicWorkspaceComposite
	instanceVariableNames: 'workspacePresenter lastCharacter lastAutocompletation variables executionSnapshot lastCharacterCollection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLBasicWorkspaceComposite guid: (GUID fromString: '{c3ddc0fe-521b-4d40-87de-6434cf235be5}')!
UMLBasicWorkspaceComposite comment: ''!
!UMLBasicWorkspaceComposite categoriesForClass!Unclassified! !
!UMLBasicWorkspaceComposite methodsFor!

aboutThisTool
	^Error notYetImplemented!

appendText: aString

	^workspacePresenter view appendText: aString!

backcolor: aColor

	workspacePresenter view backcolor: aColor!

caretPosition

	^self workspaceView caretPosition!

classBrowserParent
	| parentComposite |

	parentComposite := parentPresenter.

	[(parentComposite class ~=  UMLClassBrowserComposite) and: [(parentComposite class ~=  UMLMethodBrowserComposite) and: [parentComposite notNil]]]
	whileTrue: [
		parentComposite := parentComposite parentPresenter].

	^parentComposite!

copyLine

	^self workspaceView copyLine!

copySelection

	^self workspaceView copySelection!

createComponents

	super createComponents.

	workspacePresenter := self add: TextPresenter new name: 'workspace'.!

createSchematicWiring

	super createSchematicWiring.

	workspacePresenter when: #keyPressed: send: #onKeyPressed: to: self.

	workspacePresenter when: #autoComplete:startingAt:accept: send: #onAutoComplete:startingAt:accept:  to: self;
		when: #dragOver: send: #onDragOverArena: to: self;
		when: #drop: send: #onDropUMLObjectOverArena: to: self.
	"self editorView when: #autoComplete:startingAt:accept: send: #onAutoComplete:startingAt:accept:  to: self."!

currentWord
	| caretPosition word |

	caretPosition := self caretPosition.
	self moveToStartOfWord.
	[self workspaceView basicSelectionStart: (self caretPosition - 1) end: caretPosition] on: Error do: [:ex | self workspaceView caretPosition: caretPosition.^''].
	word := self workspaceView selection.
	self workspaceView caretPosition: caretPosition.
	^word reject: [:each | (each = Character cr) or: [each = Character nl or: [each = Character space] ]]!

debugIt
	"The receiver open a debugger with the selected text"
	| formattedCode debuggerSnapshot parsedCode|

	self getSelectedText isEmpty ifTrue: [^self].
	parsedCode := SmalltalkParser parseExpression: self getSelectedText.
	formattedCode := SmalltalkParser parseExpression: parsedCode formattedCode.

	executionSnapshot sequence: formattedCode.

	debuggerSnapshot := UMLScriptDebugerSnapshot snapshot: executionSnapshot sequence: formattedCode.	"debugger := UMLExecutionSnapshotThreadShell showOn: executionSnapshot sequence: sequence."
	(UMLDebuggerShell showOn: debuggerSnapshot) setScriptSnapshot: executionSnapshot!

deleteToStartOfWord

	^workspacePresenter view deleteToStartOfWord!

displayIt
	| result objectToDisplay |

	self getSelectedText isEmpty ifTrue: [^self].
	result := (self evaluate: self getSelectedText) ifNil: [^self] .

	(result == self defaultVirtualMachine nilObject) ifTrue: [^self appendText: String lineDelimiter, 'nil'].

	(result isUMLInstance) ifTrue: [^self appendText: String lineDelimiter, result printString].

	(result notBlock and: [result isEmpty]) ifTrue: [^self].

	objectToDisplay := result isBlock ifTrue: [result] ifFalse: [result last].

	^self appendText: String lineDelimiter, objectToDisplay printString!

enable: aBoolean 

	workspacePresenter view isEnabled: aBoolean !

evaluate: aString 
	| parsedCode |

	executionSnapshot clearExecutedImplementations;
		exception: nil;
		hasDNU: false;
		isCurtailed: false.
	parsedCode := self parser parseExpression: aString.
	executionSnapshot activateSnaphotWith: parsedCode.
	self topShell selectedObject ifNotNil: [:value | executionSnapshot addTemporary:  value named: 'self'].

	parsedCode isBlock ifFalse: [^self defaultVirtualMachine executeSequenceNodeReturningAll: parsedCode in: executionSnapshot].

	^executionSnapshot createBlockFrom: parsedCode 
!

evaluateIt

	^self evaluate: self getSelectedText!

executionSnapshot
	^executionSnapshot!

executionSnapshot: anObject
	executionSnapshot := anObject!

exit
	^self topShell closeCurrentUMLCard!

getAllText

	^workspacePresenter view plainTextFrom: 1 to: (workspacePresenter view textLength)!

getSelectedText
	| selectedText |

	selectedText := workspacePresenter view selection.

	selectedText isEmpty 
	ifTrue: [workspacePresenter view selectCurrentLine.
		selectedText := workspacePresenter view selection.].

	^selectedText!

hasSelectedClass
	^false!

helpWithThisTool
	^Error notYetImplemented!

inspectIt
	| result objectToInspect |

	self getSelectedText isEmpty ifTrue: [^self].
	result := [self evaluate: self getSelectedText] on: Error
				do: [:ex | ^MessageBox notify: ex description caption: self applicationName].
	result ifNil: [^self].
	result == self defaultVirtualMachine nilObject ifTrue: [^UMLBasicInspectorShell showOn: result].

	result isUMLInstance ifTrue: [^UMLBasicInspectorShell showOn: result].

	(result notBlock and: [result isEmpty]) ifTrue: [^self].

	objectToInspect := result isBlock ifTrue: [result ] ifFalse: [result last].

	^UMLBasicInspectorShell showOn: objectToInspect!

isStartOfTheWord

	^((workspacePresenter view characterAt: (self caretPosition - 1)) = Character space)
	or: [(workspacePresenter view characterAt: (self caretPosition - 1)) = Character tab]!

menuBar
	| menu |
	menu := MenuBar new.
	(menu addSubmenu: 'File')
		addCommand: (MessageSend receiver: self selector: #saveUMLScript) description: 'Save UML Script';
		addCommand: (MessageSend receiver: self selector: #openUMLScript) description: 'Open UML Script';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #exit) description: 'Exit'.
	(menu addSubmenu: 'Script Execution')
		addCommand: (MessageSend receiver: self selector: #displayIt)
			description: 'Display it (execute and show result)';
		addCommand: (MessageSend receiver: self selector: #evaluateIt) description: 'Evaluate it (execute)';
		addCommand: (MessageSend receiver: self selector: #inspectIt)
			description: 'Inspect it (execute and inspect result)';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #debugIt)
			description: 'Step by Step Simulation (debug it)';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #removeAllTemporaries)
			description: 'Remove All Temporaries';
		addCommand: (MessageSend receiver: self selector: #removeAllInnerTemporaries)
			description: 'Remove All Inner Temporaries'.
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
		addCommand: (MessageSend receiver: self selector: #openDefaultExamples)
			description: 'Examples with Default UML Model';
		addCommand: (MessageSend receiver: self selector: #aboutThisTool) description: 'About this tool';
		addCommand: (MessageSend receiver: self selector: #helpWithThisTool)
			description: 'Help with this tool';
		addSeparator;
		addCommand: (MessageSend receiver: self selector: #aboutUMLAlmighty)
			description: 'About ' , self applicationName.
	^menu!

methodBrowserParent
	| parentComposite |

	parentComposite := parentPresenter.

	[parentComposite class ~=  UMLMethodBrowserComposite and: [parentComposite notNil]]
	whileTrue: [
		parentComposite := parentComposite parentPresenter].

	^parentComposite!

model: anUMLVirtualMachine

	super model: anUMLVirtualMachine

	!

moveToEndOfWord

	^self workspaceView moveToEndOfWord!

moveToStartOfWord

	^self workspaceView moveToStartOfWord!

onAutoComplete: aString startingAt: start accept: valueHolder
	| word stringToInsert |

	word := self currentWord.

	stringToInsert := self isStartOfTheWord 
		ifFalse: [aString rightString: (aString size - word size)]
		ifTrue: [aString].

	((stringToInsert occurrencesOf: $:) > 0)
	ifFalse: [self workspaceView insertText: stringToInsert at: self caretPosition]
	ifTrue: [| str implementations |
		str := ''.
		implementations := self defaultVirtualMachine getAllImplementationsNamed: aString asSymbol.
		implementations isEmpty 
		ifTrue: [(stringToInsert subStrings: ':') keysAndValuesDo: [:eachKey :eachValue | str := str, eachValue, ': arg', eachKey printString , ' '.].] 
		ifFalse: [(stringToInsert subStrings: ':') keysAndValuesDo: [:eachKey :eachValue | str := str, eachValue, ': ', (implementations last argumentAt: eachKey) , ' '.].].
		
		self workspaceView insertText: str at: self caretPosition].

	valueHolder value: false.

	self updateAutocompletationWith: aString.
	"self editorView hideSelection: true."

	self workspaceView moveToEndOfWord.!

onDragOverArena: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	((aDragDropSession suggestedSource isKindOf: UMLInstance) or: [aDragDropSession suggestedSource isKindOf: UMLTreeNode]) ifFalse: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDragOverCategoria: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	aDragDropSession suggestedTarget ifNil: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation!

onDropUMLObjectOverArena: aDragDropSession 
	| object name |
	object := aDragDropSession suggestedSource.
	name := (Prompter prompt: 'Enter the name of the variable' caption: self applicationName) 
				ifNil: [^self].
	executionSnapshot addTemporary: object asUMLObject named: name!

onKeyPressed: aKeyEvent
	| lastWord |

	((aKeyEvent wParam = 83 "S") and: [Keyboard default isControlDown "ctrl"]) 
	ifTrue: [self classBrowserParent addMessageToImplementation.
			^self methodBrowserParent onImplementationAdded].
	((aKeyEvent wParam = 67 "C") and: [Keyboard default isControlDown "ctrl"]) ifTrue: [^workspacePresenter view copySelection].
	((aKeyEvent wParam = 88 "X") and: [Keyboard default isControlDown "ctrl"]) ifTrue: [^workspacePresenter view cutSelection].

	self workspaceView isAutoCompletionActive ifTrue: [^self].

	((aKeyEvent wParam = 190 "point") or: [(aKeyEvent wParam = 13 "enter") or: [(aKeyEvent wParam = 9 "tab") or: [lastCharacter = ';' ":"] ] ]) 
	ifTrue: [lastAutocompletation := UMLAutocompletation new].
	((aKeyEvent wParam = 8 "backspace") and: [lastCharacterCollection notEmpty]) ifTrue: [lastCharacterCollection removeLast].
 
	(aKeyEvent wParam = 13 "enter" or: [(aKeyEvent wParam = 8 "backspace") or: [(aKeyEvent wParam = 17 "ctrl") or: [Keyboard default isShiftDown] ] ]) 
	ifTrue: [^self]. "we let the editor work as always with these keys"

	lastCharacter := Keyboard keyNameFromLParam: aKeyEvent lParam.
	(#('SHIFT' 'RIGHT SHIFT' 'LEFT SHIFT' 'SPACE' 'TAB' 'RIGHT ALT' 'RIGHT' 'LEFT' 'DOWN' 'UP') includes: lastCharacter)
	ifFalse: [lastCharacterCollection add: lastCharacter.].

	lastWord := ''.
	lastCharacterCollection do: [:each | lastWord := lastWord , (each ifNil: [''] ifNotNil: [:value | value]) ].

	((aKeyEvent wParam = 32 "space") or: [aKeyEvent wParam = 9"tab"]) ifTrue: [lastCharacterCollection  := OrderedCollection  new].
"	(lastAutocompletation originalName notEmpty and: [lastCharacterCollection notEmpty]) ifTrue: []."
	lastAutocompletation originalName notEmpty ifTrue: [^self showAutocompletationOn: lastAutocompletation originalName].
	lastCharacterCollection notEmpty ifTrue: [^self showAutocompletationOn: lastWord].

	Keyboard default isAltDown ifTrue: [^self showAutocompletationOn: ''].
	((aKeyEvent wParam = 32 "space") or: [aKeyEvent wParam = 9"tab"]) ifTrue: [lastCharacterCollection  := OrderedCollection  new].
!

onViewOpened

	super onViewOpened.

	variables := Dictionary new.

	executionSnapshot:= UMLScriptExecutionSnapshot virtualMachine: self defaultVirtualMachine.

	workspacePresenter view textStyles: self class defaultTextStyles;
		maxCompletionListHeight: 10.

	self zoomLevel: 2.

	lastCharacterCollection := OrderedCollection new.
	lastAutocompletation := UMLAutocompletation new.!

openDefaultExamples

	self setText: '
factory1 := SoftwareFactory createInstance. "We create a new instance of SoftwareFactory"
factory1 initialize.
factory1 name: ''UML Software Company''. "We set the name"

factory2 := SoftwareFactory createInstance."We create a new instance of SoftwareFactory"
factory2 initialize.
factory2 name: ''The Object Company''. "We set the name"

simulationProject := Project createInstance."We create a new instance of Project"
simulationProject initialize.
simulationProject name: ''Environment Simulation Tool''."We set the name"

vmProject := Project createInstance."We create a new instance of Project"
vmProject initialize.
vmProject name: ''UML Virtual Machine''."We set the name"

factory1 add: simulationProject. "We link <factory1> with <simulationProject>"
factory2 add: vmProject. "We link <factory2> with <vmProject>"

factory1 storeAsGlobalObject. "We store <factory1> UML object into the Persistent Cache"
factory2 storeAsGlobalObject. "We store <factory2> UML object into the Persistent Cache"
'!

openUMLScript
	| fileStream pathFile |

	pathFile := (FileOpenDialog new)
				caption: 'Exporting packages...';
				fileTypes: #(#('UML Script (*.ums)' '*.ums'));
				showModal.
	pathFile ifNil: [^self].
	fileStream := FileStream read: pathFile text: false.
	self setText: (Object binaryReadFrom: fileStream).
	fileStream close.!

removeAllInnerTemporaries
	executionSnapshot temporaries: LookupTable new.
	^MessageBox notify: 'All inner temporary objects have been removed' caption: self applicationName!

removeAllTemporaries
	executionSnapshot sequenceTemporaries: LookupTable new.
	^MessageBox notify: 'All temporaries variables have been removed' caption: self applicationName!

saveUMLScript
	| fileStream pathFile |

	pathFile := (FileSaveDialog new)
				caption: 'Save UML Script...';
				fileTypes: #(#('UML Script (*.ums)' '*.ums'));
				showModal.
	pathFile ifNil: [^self].
	fileStream := FileStream write: pathFile text: false.
	self getAllText binaryStoreOn: fileStream.
	fileStream close.!

selectedClass

	^self topShell selectedClass

"esto es pq cuando abro Dolphin si hay un IdeaSpace abierto --> loop eterno, con esto se evita, pero deja de antar el selectedClass "

	"^self topShell isIdeaSpace
	ifFalse: [self topShell selectedClass]
	ifTrue: [nil]" 
!

selectedClassIsMetaclass
	^self topShell selectedClassIsMetaclass!

selectedImplementation
	^parentPresenter selectedImplementation!

selectedImplementationIfNone: aBlock
	^parentPresenter selectedImplementationIfNone: aBlock!

selectionRange: anInterval

	^workspacePresenter view selectionRange: anInterval!

setText: aString

	workspacePresenter model: aString.
	self workspaceView text: aString!

setToExpressionStyler

	workspacePresenter view styler: SmalltalkExpressionStyler new
	!

setToMethodStyler

	workspacePresenter view styler: SmalltalkMethodStyler new
	!

showAllImplementations

	self showAutocompletationList: (self defaultVirtualMachine getAllImplementationsAsSortedCollection collect: [:each | each methodName]) copyWithoutDuplicates!

showAllImplementationsMatching: aString

	self showAutocompletationList: (self defaultVirtualMachine getAllImplementationsAsSortedCollection 
		select: [:each | aString match: each methodName] 
		thenCollect: [:each | each methodName asString]) copyWithoutDuplicates!

showAllNamesFor: aString 
	"the user has inserted some incomplete text, so the receiver try to match the incomplete text with some of the autocompletation possibilities"
	| textCollection |

	aString isEmpty ifTrue: [^self].
	textCollection := aString first isUpperCase
		ifTrue: [self defaultVirtualMachine getAllClassesNames select: [:each | (aString, '*') match: each asString] ] "if is uppercase then is an incomplete class name"
"if not then is: 1. incomplete instVar, 2. incomplete temp variable"
		ifFalse: [ | instVar |
			instVar := executionSnapshot sequenceTemporaries keys asSortedCollection select: [:each | (aString, '*') match: each].
			instVar isEmpty 
			ifTrue: [(self defaultVirtualMachine hasClassNamed: aString capitalized) 
				ifTrue: [^self showImplementationsOfClassNamed: aString capitalized] ifFalse: [OrderedCollection new] ] 
			ifFalse: [^self showImplementationsOfClass: (executionSnapshot getTemporaryNamed: aString) umlClass] ].

	[self workspaceView showAutoCompletionList: textCollection copyWithoutDuplicates prefixLength: 0] forkAt: 4!

showAutocompletationList: textCollection

	[self workspaceView showAutoCompletionList: textCollection copyWithoutDuplicates prefixLength: 0] forkAt: 4!

showAutocompletationOn: aString
	| currentText |

	aString trimBlanks isEmpty ifTrue: [^self showVariables].
	currentText := self currentWord trimBlanks.
	(self startSentenceCollection includes: currentText) ifTrue: [^self showVariables].

	(self defaultVirtualMachine hasClassNamed: currentText) ifTrue: [^self showImplementationsOfWrittenClass: currentText]. "the inserted text is anUMLClass"

	^self isStartOfTheWord ifTrue: [self showAllImplementations] ifFalse: [self showAllNamesFor: currentText]
	!

showImplementationsOfClass: anUMLClass
	"the receiver shows the implementations and instances variables of <anUMLClass>"
	| implementationsNames |

	implementationsNames := ((anUMLClass allImplementationsAsSortedCollection collect: [:each | each methodName]), anUMLClass getAllAttributesNames) asSortedCollection.

	self showAutocompletationList: implementationsNames!

showImplementationsOfClassNamed: className
	"the receiver shows the implementations and instances variables of class named <className>"
	| currentClass |

	currentClass := self defaultVirtualMachine getAnyClassNamed: className.

	^self showImplementationsOfClass: currentClass!

showImplementationsOfCurrentInstanceVariable: varName
	"the receiver shows all implementations of instances variables (of receiver class) named <varName>. To get the class of the inst var we use #getType"
	| implementationsNames |

	implementationsNames := ((self selectedClass allAttributes detect: [:each | each name asSymbol = varName asSymbol]) getType 
		allImplementations collect: [:each | each methodName]) asSortedCollection.

	self showAutocompletationList: implementationsNames!

showImplementationsOfInstanceVariable: aString 
	| instVar |

	instVar := self selectedClass atVariableName: aString ifAbsent: [].

	^self showImplementationsOfClassNamed: instVar type name
!

showImplementationsOfSelectedClass
	"the receiber shows the implementations of the selected class in the browser"

	^self showImplementationsOfClass: self selectedClass!

showImplementationsOfSuperClassOfSelectedClass
	"the receiber shows the implementations of the super class of the selected class"

	(self selectedClass == self defaultVirtualMachine objectClass) ifTrue: [^self].

	^self showImplementationsOfClass: self selectedClass umlSuperclass!

showImplementationsOfWrittenClass: className
	"the receiver shows the implementations of the UMLClass named <className>"

	^self showImplementationsOfClass: (self defaultVirtualMachine getAnyClassNamed: className) getMetaclass!

showVariables
	| temporaries |

	temporaries := (SmalltalkParser parseMethod: self getAllText) allTemporaryVariables asSortedCollection.

	^self showAutocompletationList: temporaries, (executionSnapshot sequenceTemporaries keys asSortedCollection) , self defaultVirtualMachine getAllClassesNames!

startSentenceCollection

	^#(':' ':=' '|')!

updateAutocompletationWith: aString
	| umlClass |

	umlClass := model getAnyClassNamed: aString.
	lastAutocompletation := UMLAutocompletation label: aString position: self caretPosition linkedTo: umlClass parent: lastAutocompletation.
	!

variables
	^variables!

variables: anObject
	variables := anObject!

workspacePresenter

	^workspacePresenter!

workspaceView

	^workspacePresenter view!

zoomLevel: anInteger

	workspacePresenter view zoomLevel: anInteger! !
!UMLBasicWorkspaceComposite categoriesFor: #aboutThisTool!public! !
!UMLBasicWorkspaceComposite categoriesFor: #appendText:!public! !
!UMLBasicWorkspaceComposite categoriesFor: #backcolor:!public! !
!UMLBasicWorkspaceComposite categoriesFor: #caretPosition!public! !
!UMLBasicWorkspaceComposite categoriesFor: #classBrowserParent!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #copyLine!public! !
!UMLBasicWorkspaceComposite categoriesFor: #copySelection!public! !
!UMLBasicWorkspaceComposite categoriesFor: #createComponents!public! !
!UMLBasicWorkspaceComposite categoriesFor: #createSchematicWiring!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #currentWord!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #debugIt!evaluations!public! !
!UMLBasicWorkspaceComposite categoriesFor: #deleteToStartOfWord!public! !
!UMLBasicWorkspaceComposite categoriesFor: #displayIt!evaluations!public! !
!UMLBasicWorkspaceComposite categoriesFor: #enable:!public! !
!UMLBasicWorkspaceComposite categoriesFor: #evaluate:!evaluations!public!smalltalk parser! !
!UMLBasicWorkspaceComposite categoriesFor: #evaluateIt!evaluations!public! !
!UMLBasicWorkspaceComposite categoriesFor: #executionSnapshot!accessing!private! !
!UMLBasicWorkspaceComposite categoriesFor: #executionSnapshot:!accessing!private! !
!UMLBasicWorkspaceComposite categoriesFor: #exit!public! !
!UMLBasicWorkspaceComposite categoriesFor: #getAllText!public! !
!UMLBasicWorkspaceComposite categoriesFor: #getSelectedText!public! !
!UMLBasicWorkspaceComposite categoriesFor: #hasSelectedClass!public! !
!UMLBasicWorkspaceComposite categoriesFor: #helpWithThisTool!public! !
!UMLBasicWorkspaceComposite categoriesFor: #inspectIt!evaluations!public! !
!UMLBasicWorkspaceComposite categoriesFor: #isStartOfTheWord!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #menuBar!public! !
!UMLBasicWorkspaceComposite categoriesFor: #methodBrowserParent!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #model:!public! !
!UMLBasicWorkspaceComposite categoriesFor: #moveToEndOfWord!public! !
!UMLBasicWorkspaceComposite categoriesFor: #moveToStartOfWord!public! !
!UMLBasicWorkspaceComposite categoriesFor: #onAutoComplete:startingAt:accept:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #onDragOverArena:!private! !
!UMLBasicWorkspaceComposite categoriesFor: #onDragOverCategoria:!private! !
!UMLBasicWorkspaceComposite categoriesFor: #onDropUMLObjectOverArena:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #onKeyPressed:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #onViewOpened!public! !
!UMLBasicWorkspaceComposite categoriesFor: #openDefaultExamples!public! !
!UMLBasicWorkspaceComposite categoriesFor: #openUMLScript!binary filing!public! !
!UMLBasicWorkspaceComposite categoriesFor: #removeAllInnerTemporaries!public! !
!UMLBasicWorkspaceComposite categoriesFor: #removeAllTemporaries!public! !
!UMLBasicWorkspaceComposite categoriesFor: #saveUMLScript!binary filing!public! !
!UMLBasicWorkspaceComposite categoriesFor: #selectedClass!public! !
!UMLBasicWorkspaceComposite categoriesFor: #selectedClassIsMetaclass!public! !
!UMLBasicWorkspaceComposite categoriesFor: #selectedImplementation!public! !
!UMLBasicWorkspaceComposite categoriesFor: #selectedImplementationIfNone:!public! !
!UMLBasicWorkspaceComposite categoriesFor: #selectionRange:!public! !
!UMLBasicWorkspaceComposite categoriesFor: #setText:!public! !
!UMLBasicWorkspaceComposite categoriesFor: #setToExpressionStyler!public! !
!UMLBasicWorkspaceComposite categoriesFor: #setToMethodStyler!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showAllImplementations!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showAllImplementationsMatching:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showAllNamesFor:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showAutocompletationList:!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showAutocompletationOn:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showImplementationsOfClass:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showImplementationsOfClassNamed:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showImplementationsOfCurrentInstanceVariable:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showImplementationsOfInstanceVariable:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showImplementationsOfSelectedClass!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showImplementationsOfSuperClassOfSelectedClass!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showImplementationsOfWrittenClass:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #showVariables!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #startSentenceCollection!public! !
!UMLBasicWorkspaceComposite categoriesFor: #updateAutocompletationWith:!autocompletion!public! !
!UMLBasicWorkspaceComposite categoriesFor: #variables!accessing!private! !
!UMLBasicWorkspaceComposite categoriesFor: #variables:!accessing!private! !
!UMLBasicWorkspaceComposite categoriesFor: #workspacePresenter!public! !
!UMLBasicWorkspaceComposite categoriesFor: #workspaceView!public! !
!UMLBasicWorkspaceComposite categoriesFor: #zoomLevel:!public! !

!UMLBasicWorkspaceComposite class methodsFor!

defaultModel

	^UMLVirtualMachine default!

defaultTextStyles
	"Answer the default text styles to be used for colouring text in workspaces. To configure
	the styles to taste modify through Dolphin Options."

	"
	TextStyles := nil
	(ScintillaTextStylesDialog createOn: self textStyles) defaultStyle: self defaultTextStyle; showModal
	"

	| answer |
	answer := Set new.
	answer
		add: ((ScintillaTextStyle name: #illegal)
					description: 'Illegal characters, e.g. £';
					forecolor: Color red;
					isBold: true;
					yourself);
		add: ((ScintillaTextStyle name: #comment)
					description: 'Comments in method source';
					forecolor: Color darkGreen;
					isItalic: true;
					yourself);
		add: ((ScintillaTextStyle name: #identifier)
					description: 'Variables references (instance, temporary and class)';
					yourself);
		add: ((ScintillaTextStyle name: #argDecl)
					description: 'Argument declaration in method signature';
					isItalic: true;
					isBold: true;
					yourself);
		add: ((ScintillaTextStyle name: #blockArgDecl)
					description: 'Block argument declaration';
					isItalic: true;
					yourself);
		add: ((ScintillaTextStyle name: #tempDecl)
					description: 'Temporary variable declaration';
					isItalic: true;
					yourself);
		add: ((ScintillaTextStyle name: #unarySelector)
					description: 'Unary selectors (method signature)';
					forecolor: Color blue;
					isBold: true;
					yourself);
		add: ((ScintillaTextStyle name: #unaryMessage)
					description: 'Unary (no argument) messages';
					forecolor: Color blue;
					yourself);
		add: ((ScintillaTextStyle name: #binarySelector)
					description: 'Binary in-fix selectors such as + and - (method signature)';
					forecolor: Color blue;
					isBold: true;
					yourself);
		add: ((ScintillaTextStyle name: #binaryMessage)
					description: 'Binary in-fix messages such as + and -';
					forecolor: Color blue;
					yourself);
		add: ((ScintillaTextStyle name: #keywordSelector)
					description: 'Components of multi-keyword message selectors';
					forecolor: Color blue;
					isBold: true;
					yourself);
		add: ((ScintillaTextStyle name: #keywordMessage)
					description: 'Components of multi-keyword message selectors';
					forecolor: Color blue;
					yourself);
		add: ((ScintillaTextStyle name: #literalPseudo)
					description: 'The literal constants true, false and nil';
					forecolor: Color darkCyan;
					yourself);
		add: ((ScintillaTextStyle name: #literalNumber)
					description: 'Numeric literal constants, e.g. 1.2e6';
					forecolor: Color darkRed;
					yourself);
		add: ((ScintillaTextStyle name: #literalString)
					description: 'Literal string constants, e.g. ''abc''';
					forecolor: Color darkMagenta;
					yourself);
		add: ((ScintillaTextStyle name: #literalSymbol)
					description: 'Literal symbol constants, e.g. #abc';
					forecolor: Color darkBlue;
					yourself);
		add: ((ScintillaTextStyle name: #literalCharacter)
					description: 'Literal character constants, e.g. $A';
					forecolor: Color darkBlue;
					yourself);
		add: ((ScintillaTextStyle name: #literalBytes)
					description: 'Literal byte arrays, e.g. #[0 1 2]';
					forecolor: Color brown;
					yourself);
		add: ((ScintillaTextStyle name: #assignment)
					description: 'Assignment operation, i.e. :=';
					isItalic: true;
					yourself);
		add: ((ScintillaTextStyle name: #tempOpenBar)
					description: 'Temporary declarations opening bar';
					isItalic: true;
					yourself);
		add: ((ScintillaTextStyle name: #tempCloseBar)
					description: 'Temporary declarations closing bar';
					isItalic: true;
					yourself);
		add: ((ScintillaTextStyle name: #specialCharacter)
					description: 'Special characters, e.g. normal and block parentheses';
					yourself);
		add: ((ScintillaTextStyle name: #literalArray)
					description: 'Opening/closing token of literal array, i.e. #()';
					isBold: true;
					yourself);
		add: ((ScintillaTextStyle name: #tag)
					description: 'Primitive or external call tag, e.g. <primitive: 1>';
					forecolor: Color darkGray;
					isItalic: true;
					yourself);
		yourself.
	self assert: [answer size < 32].
	"Scintilla pre-defined styles - note how #normal style inherits font of the view (which in turn should be the default system font)"
	answer
		add: ScintillaTextStyle normal yourself;
		add: ((ScintillaTextStyle name: #indentGuide)
					description: 'Indentation guides, when visible';
					forecolor: Color gray;
					yourself);
		add: ((ScintillaTextStyle name: #braceHighlight)
					description: 'Matching brace, when brace highlighting enabled';
					forecolor: Color blue;
					isBold: true;
					yourself);
		add: ((ScintillaTextStyle name: #braceMismatch)
					description: 'Mismatched brace, when brace highlighting enabled';
					forecolor: Color red;
					isBold: true;
					yourself);
		yourself.
	^answer!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ScintillaView)  98 46 0 560 98 2 8 1445007428 1025 720 721990 2 ##(Smalltalk.ValueHolder)  0 32 1310726 ##(Smalltalk.EqualitySearchPolicy)  0 196934 1 ##(Smalltalk.RGB)  22007275 0 5 0 0 0 720 0 8 4294904167 852486 ##(Smalltalk.NullConverter)  0 0 9 0 234 256 98 2 8 #normal 1182726 ##(Smalltalk.ScintillaTextStyle)  1 0 0 1 0 0 0 0 976 0 0 0 98 40 1008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1639686 ##(Smalltalk.SmalltalkExpressionStyler)  1 0 0 32 202 208 672 234 256 98 2 8 #default 1639942 ##(Smalltalk.ScintillaMarkerDefinition)  1 1 786694 ##(Smalltalk.IndexedColor)  33554433 1170 33554471 720 8 #circle 202 208 672 0 63 9215 0 0 0 0 1170 33554447 0 0 0 0 0 234 256 98 6 8 #literalArray 8 '()' 8 #literalBytes 8 '[]' 8 #specialCharacter 8 '()[]<>' 8 '' 3 234 256 98 2 8 #container 944 0 0 0 0 1 0 234 256 98 6 1 1509190 1 ##(Smalltalk.ScintillaIndicatorStyle)  1 720 65025 3 32 1 0 3 1490 3 720 33423361 5 32 3 0 5 1490 5 720 511 1 32 5 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 8 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1682 1201 551 720 1618 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 720 1618 8 #isTextModified: 98 1 32 720 1618 8 #modificationEventMask: 98 1 9215 720 1618 8 #margins: 98 1 98 3 984582 ##(Smalltalk.ScintillaMargin)  1 720 1 3 32 1 1970 3 720 33 1 16 67108863 1970 5 720 1 1 16 -67108863 720 1618 8 #indentationGuides: 98 1 0 720 1618 8 #tabIndents: 98 1 16 720 1618 8 #tabWidth: 98 1 9 720 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 19 1 0 0] 98 0 1682 193 193 0 27 8 'workspace' 0 1554 202 208 98 1 1618 1648 98 2 1682 1 61 1682 1201 551 560 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 88 2 0 0 49 1 0 0] 98 1 720 2240 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 2466 8 #fixedParentRight 1 2466 8 #fixedParentTop 61 2466 8 #fixedParentBottom 1 410 432 98 15 0 416 98 2 8 1140850688 131073 2608 0 0 0 5 0 0 0 2608 498 234 240 98 2 410 432 98 15 0 2608 98 2 8 1140850688 131073 2720 0 0 0 5 0 0 0 2720 788230 ##(Smalltalk.BorderLayout)  1 1 0 0 0 410 8 ##(Smalltalk.Toolbar)  98 25 0 2720 98 2 8 1409288972 131137 2816 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 517 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1682 193 193 0 2816 2898 2928 8 4294907039 234 256 672 234 256 98 12 42447 1115910 ##(Smalltalk.ToolbarIconButton)  42447 0 2816 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #saveUMLScript 8 'Save UML Script' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'FileSave.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 1682 33 33 1 42449 3122 42449 0 2816 1 3154 8 #openUMLScript 8 'Open UML Script' 1 1 3218 0 16 3264 8 'FileOpen.ico' 3312 3346 0 16 0 0 0 0 3 1682 33 33 1 42451 3122 42451 0 2816 1 3154 8 #displayIt 8 'Display it (execute and show result)' 1 1 3218 0 16 3264 8 'DisplayIt.ico' 3312 3346 0 16 0 0 0 0 3 1682 33 33 1 42453 3122 42453 0 2816 1 3154 8 #evaluateIt 8 'Evaluate it (execute)' 1 1 3218 0 16 3264 8 'EvaluateIt.ico' 3312 3346 0 16 0 0 0 0 3 1682 33 33 1 42455 3122 42455 0 2816 1 3154 8 #inspectIt 8 'Inspect it (execute and inspect result)' 1 1 3218 0 16 3264 8 'InspectIt.ico' 3312 3346 0 16 0 0 0 0 3 1682 33 33 1 42457 3122 42457 0 2816 1 3154 8 #debugIt 8 'Deb&ug It' 1 1 3218 0 16 3264 8 'Debugger.ico' 3312 3346 0 16 0 0 0 0 3 1682 33 33 1 98 7 3136 3392 1050118 ##(Smalltalk.ToolbarSeparator)  0 0 2816 3 0 1 3520 3648 3776 3904 234 240 98 12 3616 5 3360 1 3488 3 3744 7 3872 9 4000 11 0 1 0 1682 33 33 1682 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 1554 202 208 98 2 1618 1648 98 2 1682 1 1 1682 301 61 2816 1618 8 #updateSize 672 2816 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 150 0 0 0 30 0 0 0] 98 0 2240 0 27 410 8 ##(Smalltalk.ReferenceView)  98 14 0 2720 98 2 8 1140850688 131073 4368 0 2898 8 4278190080 0 5 0 0 0 4368 1180166 ##(Smalltalk.ResourceIdentifier)  2832 8 #resource_UML_Common 0 1554 202 208 98 1 1618 1648 98 2 1682 301 1 1682 901 61 4368 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 672 2240 0 27 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 1 1 1682 1201 61 2720 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 2 2816 4368 2240 0 27 2434 2480 1 2512 1 2544 1 2576 1 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 1 1 1682 1201 61 2608 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 1 2720 2240 0 27 2434 2480 1 2512 1 2544 1 2544 61 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 2879 21 1682 1201 611 416 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 59 1 0 0] 98 2 2608 560 2240 0 27 )! !
!UMLBasicWorkspaceComposite class categoriesFor: #defaultModel!public! !
!UMLBasicWorkspaceComposite class categoriesFor: #defaultTextStyles!public! !
!UMLBasicWorkspaceComposite class categoriesFor: #resource_Default_view!public!resources-views! !

