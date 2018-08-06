"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLStateMachineImportComposite
	instanceVariableNames: 'fileNamePresenter stateMachineListPresenter stateMachineNamePresenter stateMachineVariableNamePresenter umlModelPresenter stateMachineClassPresenter transitionVariableNamePresenter currentStateMessagePresenter nextStateMessagePresenter transitionClassPresenter stateVariableNamePresenter stateClassPresenter xmiReaderClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLStateMachineImportComposite guid: (GUID fromString: '{79452ac2-f0cb-44c8-b135-0dcc6ca5655d}')!
UMLStateMachineImportComposite comment: ''!
!UMLStateMachineImportComposite categoriesForClass!Unclassified! !
!UMLStateMachineImportComposite methodsFor!

clearAll!

createComponents

	super createComponents.

	fileNamePresenter := self add: TextPresenter new name: 'fileName'.
	stateMachineListPresenter := self add: ListPresenter new name: 'stateMachineList'.
	stateMachineNamePresenter := self add: TextPresenter new name: 'stateMachineName'.
	stateMachineVariableNamePresenter := self add: TextPresenter new name: 'stateMachineVariableName'.
	umlModelPresenter := self add: ListPresenter new name: 'umlModel'.
	stateMachineClassPresenter := self add: ListPresenter new name: 'stateMachineClass'.
	transitionVariableNamePresenter := self add: TextPresenter new name: 'transitionVariableName'.
	currentStateMessagePresenter := self add: TextPresenter new name: 'currentStateMessage'.
	nextStateMessagePresenter := self add: TextPresenter new name: 'nextStateMessage'.
	transitionClassPresenter := self add: ListPresenter new name: 'transitionClass'.
	stateVariableNamePresenter := self add: TextPresenter new name: 'stateVariableName'.
	stateClassPresenter:= self add: ListPresenter new name: 'stateClass'.!

createSchematicWiring

	super createSchematicWiring.

	stateMachineListPresenter when: #selectionChanged send: #onStateMachineChanged to: self.

	umlModelPresenter when: #selectionChanged send: #onUMLModelChanged to: self.

	stateMachineClassPresenter when: #selectionChanged send: #onStateMachineClassChanged to: self.

	transitionClassPresenter when: #selectionChanged send: #onTransitionClassChanged to: self.

	stateClassPresenter when: #selectionChanged send: #onStateClassChanged to: self.
!

generateStateMachines
	| xmi machines |

	xmi := xmiReaderClass fromFile: fileNamePresenter value.

	machines := xmi createUMLStateMachines.
	
	stateMachineListPresenter model: (ListModel on: machines)!

importStateMachines
	| missingMessages |

	stateMachineListPresenter hasSelection ifFalse: [^self].

	missingMessages := self missingTransitionMessages.
	missingMessages isEmpty ifFalse: [^self notifyMissingMessages: missingMessages].

	stateMachineListPresenter selection createAllUMLStateAndTransitionInstances.

	MessageBox notify: 'The state machine has been imported !!' caption: self applicationName.!

missingTransitionMessages
	| missingMessages transitionClass startMessage endMessage |

	missingMessages := OrderedCollection new.

	transitionClass := stateMachineListPresenter selection umlTransitionClass.
	startMessage := stateMachineListPresenter selection currentStateMessage.
	endMessage := stateMachineListPresenter selection nextStateMessage.

	(transitionClass hasVariableNamed: startMessage)
	ifFalse: [(transitionClass canUnderstand: startMessage) ifFalse: [missingMessages add:  startMessage].
		(transitionClass canUnderstand: (startMessage, ':') asSymbol) ifFalse: [missingMessages add:  (startMessage, ':') asSymbol]].

	(transitionClass hasVariableNamed: endMessage)
	ifFalse: [(transitionClass canUnderstand: endMessage) ifFalse: [missingMessages add:  endMessage].
		(transitionClass canUnderstand: (endMessage, ':') asSymbol) ifFalse: [missingMessages add:  (endMessage, ':') asSymbol]].

	^missingMessages!

model: anOrderedCollection

	super model: anOrderedCollection.

	stateMachineListPresenter model: (ListModel on: anOrderedCollection).

	umlModelPresenter model: (ListModel on: self defaultVirtualMachine umlModels asOrderedCollection).!

notifyMissingMessages: anOrderedCollection
	| messagesString |

	messagesString := WriteStream on: String new.
	anOrderedCollection do: [:each | messagesString nextPutAll: each, ','].

	^MessageBox notify: 'Import Failed. Missing Transition Messages: ', messagesString contents allButLast.!

onStateClassChanged

	stateMachineListPresenter hasSelection ifFalse: [^self].

	stateMachineListPresenter selection umlStateClass: stateClassPresenter selectionOrNil.!

onStateMachineChanged

	stateMachineListPresenter hasSelection ifFalse: [^self clearAll].

	stateMachineNamePresenter model: (stateMachineListPresenter selection aspectValue: #name).
	stateMachineVariableNamePresenter model: (stateMachineListPresenter selection aspectValue: #processVarName).
	transitionVariableNamePresenter model: (stateMachineListPresenter selection aspectValue: #transitionNameVar).
	currentStateMessagePresenter model: (stateMachineListPresenter selection aspectValue: #currentStateMessage).
	nextStateMessagePresenter model: (stateMachineListPresenter selection aspectValue: #nextStateMessage).
	stateVariableNamePresenter model: (stateMachineListPresenter selection aspectValue: #stateNameVar).!

onStateMachineClassChanged

	stateMachineListPresenter hasSelection ifFalse: [^self].

	stateMachineListPresenter selection umlProcessClass: stateMachineClassPresenter selectionOrNil.!

onTransitionClassChanged

	transitionClassPresenter hasSelection ifFalse: [^self].

	stateMachineListPresenter selection umlTransitionClass: transitionClassPresenter selectionOrNil.!

onUMLModelChanged
	| classes | 

	umlModelPresenter hasSelection ifFalse: [
		stateMachineClassPresenter model: ListModel new.
		transitionClassPresenter model: ListModel new.
		stateClassPresenter model: ListModel new].
	stateMachineListPresenter hasSelection ifFalse: [^self].

	classes := umlModelPresenter selection umlClasses asSortedCollection: [:a :b | a name <= b name].
	stateMachineClassPresenter model: (ListModel on: classes).
	stateMachineClassPresenter selection: stateMachineListPresenter selection umlProcessClass ifAbsent: [].

	transitionClassPresenter model: (ListModel on: classes).
	transitionClassPresenter selection: stateMachineListPresenter selection umlTransitionClass ifAbsent: [].

	stateClassPresenter model: (ListModel on: classes).
	stateClassPresenter selection: stateMachineListPresenter selection umlStateClass ifAbsent: [].

!

openXMIfile

	fileNamePresenter model: FileOpenDialog  showModal asValue!

setXmiReaderClass: aXmiReaderClass

	xmiReaderClass := aXmiReaderClass! !
!UMLStateMachineImportComposite categoriesFor: #clearAll!public! !
!UMLStateMachineImportComposite categoriesFor: #createComponents!public! !
!UMLStateMachineImportComposite categoriesFor: #createSchematicWiring!public! !
!UMLStateMachineImportComposite categoriesFor: #generateStateMachines!public! !
!UMLStateMachineImportComposite categoriesFor: #importStateMachines!public! !
!UMLStateMachineImportComposite categoriesFor: #missingTransitionMessages!public! !
!UMLStateMachineImportComposite categoriesFor: #model:!public! !
!UMLStateMachineImportComposite categoriesFor: #notifyMissingMessages:!public! !
!UMLStateMachineImportComposite categoriesFor: #onStateClassChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #onStateMachineChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #onStateMachineClassChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #onTransitionClassChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #onUMLModelChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #openXMIfile!public! !
!UMLStateMachineImportComposite categoriesFor: #setXmiReaderClass:!public! !

!UMLStateMachineImportComposite class methodsFor!

defaultModel

	^OrderedCollection new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil 721158 ##(Smalltalk.SystemColor) 31 328198 ##(Smalltalk.Point) 1171 1401 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 592 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 514 2719 21 514 1171 1361 416 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 152 7 0 0 178 2 0 0] 34 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 832 nil nil nil 5 nil nil nil 832 nil 170 192 34 24 410 ##(Smalltalk.ComboBox) 34 17 nil 832 34 2 8 1412498947 1025 928 590662 2 ##(Smalltalk.ListModel) 138 144 592 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 928 nil 8 1917076456 459270 ##(Smalltalk.Message) #name 8 #() 592 401 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 631 514 631 51 928 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 59 1 0 0 43 2 0 0 84 1 0 0] 8 #() 514 193 193 nil 27 8 'stateMachineClass' 410 ##(Smalltalk.ComboBox) 34 17 nil 832 34 2 8 1412498947 1025 1376 994 138 144 592 nil 1056 1074 1104 nil 5 nil nil nil 1376 nil 8 1917076456 1138 #name 1168 592 401 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 1191 514 631 51 1376 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 83 2 0 0 43 2 0 0 108 2 0 0] 8 #() 1344 nil 27 8 'stateClass' 410 ##(Smalltalk.TextEdit) 34 16 nil 832 34 2 8 1140916352 1025 1696 nil 1074 8 4278190080 nil 5 nil nil nil 1696 nil 8 1917426347 852486 ##(Smalltalk.NullConverter) nil nil 1 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 491 514 631 47 1696 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 245 0 0 0 43 2 0 0 12 1 0 0] 8 #() 1344 nil 27 8 'stateMachineVariableName' 410 ##(Smalltalk.ComboBox) 34 17 nil 832 34 2 8 1412498947 1025 2016 994 138 144 592 nil 1056 1074 1104 nil 5 nil nil nil 2016 nil 8 1917076456 1138 #name 1168 592 401 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 561 514 631 51 2016 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 24 1 0 0 43 2 0 0 49 1 0 0] 8 #() 1344 nil 27 8 'umlModel' 410 ##(Smalltalk.ComboBox) 34 17 nil 832 34 2 8 1412498947 1025 2336 994 138 144 592 nil 1056 1074 1104 nil 5 nil nil nil 2336 nil 8 1917076456 1138 #name 1168 592 401 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 971 514 631 51 2336 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 229 1 0 0 43 2 0 0 254 1 0 0] 8 #() 1344 nil 27 8 'transitionClass' 410 ##(Smalltalk.TextEdit) 34 16 nil 832 34 2 8 1140916352 1025 2656 nil 1074 1776 nil 5 nil nil nil 2656 nil 8 1917426347 1810 nil nil 1 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 1121 514 631 47 2656 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 48 2 0 0 43 2 0 0 71 2 0 0] 8 #() 1344 nil 27 8 'stateVariableName' 410 ##(Smalltalk.ComboBox) 34 17 nil 832 34 2 8 1412498947 1025 2944 994 138 144 592 nil 1056 1074 1104 nil 5 nil nil nil 2944 nil 8 1917076456 1138 #name 1168 592 401 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 261 514 631 51 2944 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 130 0 0 0 43 2 0 0 155 0 0 0] 8 #() 1344 nil 27 8 'stateMachineList' 410 ##(Smalltalk.TextEdit) 34 16 nil 832 34 2 8 1140916352 1025 3264 nil 1074 1776 nil 5 nil nil nil 3264 nil 8 1917426347 1810 nil nil 1 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 421 514 631 47 3264 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 210 0 0 0 43 2 0 0 233 0 0 0] 8 #() 1344 nil 27 8 'stateMachineName' 410 ##(Smalltalk.TextEdit) 34 16 nil 832 34 2 8 1140916352 1025 3552 nil 1074 1776 nil 5 nil nil nil 3552 nil 8 1917426347 1810 nil nil 1 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 781 514 631 47 3552 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 134 1 0 0 43 2 0 0 157 1 0 0] 8 #() 1344 nil 27 8 'transitionVariableName' 410 ##(Smalltalk.TextEdit) 34 16 nil 832 34 2 8 1140916352 1025 3840 nil 1074 1776 nil 5 nil nil nil 3840 nil 8 1917426347 1810 nil nil 1 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 841 514 631 47 3840 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 164 1 0 0 43 2 0 0 187 1 0 0] 8 #() 1344 nil 27 8 'currentStateMessage' 410 ##(Smalltalk.TextEdit) 34 16 nil 832 34 2 8 1140916352 1025 4128 nil 1074 1776 nil 5 nil nil nil 4128 nil 8 1917426347 1810 nil nil 1 626 138 144 34 1 690 #createAt:extent: 34 2 514 481 901 514 631 47 4128 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 194 1 0 0 43 2 0 0 217 1 0 0] 8 #() 1344 nil 27 8 'nextStateMessage' 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 262145 4416 nil nil nil 5 nil nil nil 4416 nil 8 1917201746 1810 nil nil nil 626 138 144 34 1 690 #createAt:extent: 34 2 514 221 121 514 881 41 4416 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 60 0 0 0 38 2 0 0 80 0 0 0] 8 #() 1344 nil 27 8 'fileName' nil 626 138 144 34 1 690 #createAt:extent: 34 2 514 1 1 514 1171 1361 832 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 73 2 0 0 168 2 0 0] 34 31 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 4848 nil nil nil 5 nil nil nil 4848 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 51 131 514 171 41 4848 690 #text: 34 1 8 'File to import' 4848 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 65 0 0 0 110 0 0 0 85 0 0 0] 8 #() 1344 nil 27 4416 410 ##(Smalltalk.PushButton) 34 20 nil 832 34 2 8 1140924416 1 5152 nil nil nil 5 nil nil nil 5152 nil 8 1917288844 1180998 4 ##(Smalltalk.CommandDescription) #openXMIfile 8 'Open File' 1 1 nil nil false nil nil nil 626 138 144 34 3 690 #createAt:extent: 34 2 514 221 171 514 161 61 5152 690 #isEnabled: 8 #(false) 5152 690 #text: 34 1 8 'Open File' 5152 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 85 0 0 0 190 0 0 0 115 0 0 0] 8 #() 1344 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 832 34 2 8 1140924416 1 5520 nil nil nil 5 nil nil nil 5520 nil 8 1917288844 5234 #generateStateMachines 8 'Create' 1 1 nil nil false nil nil nil 626 138 144 34 3 690 #createAt:extent: 34 2 514 941 171 514 161 61 5520 690 #isEnabled: 8 #(false) 5520 690 #text: 34 1 8 'Create' 5520 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 214 1 0 0 85 0 0 0 38 2 0 0 115 0 0 0] 8 #() 1344 nil 29 2944 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 5872 nil nil nil 5 nil nil nil 5872 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 61 841 514 241 39 5872 690 #text: 34 1 8 'Start State message' 5872 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 164 1 0 0 150 0 0 0 183 1 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 6176 nil nil nil 5 nil nil nil 6176 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 61 911 514 241 39 6176 690 #text: 34 1 8 'End State message' 6176 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 199 1 0 0 150 0 0 0 218 1 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 6480 nil nil nil 5 nil nil nil 6480 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 51 441 514 241 39 6480 690 #text: 34 1 8 'State Machine name' 6480 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 220 0 0 0 145 0 0 0 239 0 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 6784 nil nil nil 5 nil nil nil 6784 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 51 511 514 401 51 6784 690 #text: 34 1 8 'State Machine variable for name' 6784 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 255 0 0 0 225 0 0 0 24 1 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 7088 nil nil nil 5 nil nil nil 7088 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 61 781 514 341 41 7088 690 #text: 34 1 8 'Transition variable for name' 7088 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 134 1 0 0 200 0 0 0 154 1 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 7392 nil nil nil 5 nil nil nil 7392 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 61 1141 514 321 41 7392 690 #text: 34 1 8 'State variable for name' 7392 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 58 2 0 0 190 0 0 0 78 2 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 7696 nil nil nil 5 nil nil nil 7696 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 51 641 514 241 39 7696 690 #text: 34 1 8 'State Machine class' 7696 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 64 1 0 0 145 0 0 0 83 1 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 8000 nil nil nil 5 nil nil nil 8000 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 61 981 514 241 39 8000 690 #text: 34 1 8 'Transition class' 8000 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 234 1 0 0 150 0 0 0 253 1 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 8304 nil nil nil 5 nil nil nil 8304 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 61 1201 514 241 39 8304 690 #text: 34 1 8 'State class' 8304 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 88 2 0 0 150 0 0 0 107 2 0 0] 8 #() 1344 nil 27 3264 1696 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 8608 nil nil nil 5 nil nil nil 8608 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 51 581 514 241 39 8608 690 #text: 34 1 8 'UML Model' 8608 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 34 1 0 0 145 0 0 0 53 1 0 0] 8 #() 1344 nil 27 2016 928 3552 3840 4128 2336 2656 1376 410 ##(Smalltalk.PushButton) 34 20 nil 832 34 2 8 1140924416 1 8912 nil nil nil 5 nil nil nil 8912 nil 8 1917288844 5234 #importStateMachines 8 'Import' 1 1 nil nil false nil nil nil 626 138 144 34 3 690 #createAt:extent: 34 2 514 971 1291 514 161 61 8912 690 #isEnabled: 8 #(false) 8912 690 #text: 34 1 8 'Import' 8912 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 229 1 0 0 133 2 0 0 53 2 0 0 163 2 0 0] 8 #() 1344 nil 29 410 ##(Smalltalk.StaticText) 34 16 nil 832 34 2 8 1140850944 1 9264 nil nil nil 5 nil nil nil 9264 nil 8 1917201746 1810 nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 51 261 514 241 39 9264 690 #text: 34 1 8 'State Machine list' 9264 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 130 0 0 0 145 0 0 0 149 0 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.GroupBox) 34 14 nil 832 34 2 8 1140850695 65 9568 nil 1074 8 4294967295 nil 5 nil nil nil 9568 nil 8 1917288844 626 138 144 34 2 690 #createAt:extent: 34 2 514 21 361 514 1111 341 9568 690 #text: 34 1 8 'State Machine options' 9568 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 180 0 0 0 53 2 0 0 94 1 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.GroupBox) 34 14 nil 832 34 2 8 1140850695 65 9888 nil 1074 9648 nil 5 nil nil nil 9888 nil 8 1917288844 626 138 144 34 2 690 #createAt:extent: 34 2 514 21 721 514 1111 321 9888 690 #text: 34 1 8 'Transition options' 9888 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 104 1 0 0 53 2 0 0 8 2 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.GroupBox) 34 14 nil 832 34 2 8 1140850695 65 10192 nil 1074 9648 nil 5 nil nil nil 10192 nil 8 1917288844 626 138 144 34 2 690 #createAt:extent: 34 2 514 21 1071 514 1111 191 10192 690 #text: 34 1 8 'State options' 10192 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 23 2 0 0 53 2 0 0 118 2 0 0] 8 #() 1344 nil 27 410 ##(Smalltalk.GroupBox) 34 14 nil 832 34 2 8 1140850695 65 10496 nil 1074 9648 nil 5 nil nil nil 10496 nil 8 1917288844 626 138 144 34 2 690 #createAt:extent: 34 2 514 21 61 514 1111 271 10496 690 #text: 34 1 8 'Import options' 10496 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 30 0 0 0 53 2 0 0 165 0 0 0] 8 #() 1344 nil 27 1344 nil 27 1344 nil 27 )! !
!UMLStateMachineImportComposite class categoriesFor: #defaultModel!public! !
!UMLStateMachineImportComposite class categoriesFor: #resource_Default_view!public!resources-views! !

