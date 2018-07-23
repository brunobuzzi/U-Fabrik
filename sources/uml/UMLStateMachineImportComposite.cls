"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLStateMachineImportComposite
	instanceVariableNames: 'fileNamePresenter stateMachineListPresenter stateMachineNamePresenter stateMachineVariableNamePresenter umlModelPresenter stateMachineClassPresenter transitionVariableNamePresenter currentStateMessagePresenter nextStateMessagePresenter transitionClassPresenter stateVariableNamePresenter stateClassPresenter'
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

	xmi := XmiEnterpriseArchitect fromFile: fileNamePresenter value.

	machines := xmi createUMLStateMachines.
	
	stateMachineListPresenter model: (ListModel on: machines)!

importStateMachines

	stateMachineListPresenter hasSelection ifFalse: [^self].

	stateMachineListPresenter selection createAllUMLStateAndTransitionInstances.

	MessageBox notify: 'The state machine has been imported !!' caption: self applicationName.!

model: anOrderedCollection

	super model: anOrderedCollection.

	stateMachineListPresenter model: (ListModel on: anOrderedCollection).

	umlModelPresenter model: (ListModel on: self defaultVirtualMachine umlModels asOrderedCollection).!

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

	fileNamePresenter model: FileOpenDialog  showModal asValue! !
!UMLStateMachineImportComposite categoriesFor: #clearAll!public! !
!UMLStateMachineImportComposite categoriesFor: #createComponents!public! !
!UMLStateMachineImportComposite categoriesFor: #createSchematicWiring!public! !
!UMLStateMachineImportComposite categoriesFor: #generateStateMachines!public! !
!UMLStateMachineImportComposite categoriesFor: #importStateMachines!public! !
!UMLStateMachineImportComposite categoriesFor: #model:!public! !
!UMLStateMachineImportComposite categoriesFor: #onStateClassChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #onStateMachineChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #onStateMachineClassChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #onTransitionClassChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #onUMLModelChanged!public! !
!UMLStateMachineImportComposite categoriesFor: #openXMIfile!public! !

!UMLStateMachineImportComposite class methodsFor!

defaultModel

	^OrderedCollection new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 328198 ##(Smalltalk.Point)  1171 1401 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 608 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 3199 21 530 1171 1361 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 74 8 0 0 178 2 0 0] 98 1 410 432 98 15 0 416 98 2 8 1140850688 131073 864 0 0 0 5 0 0 0 864 0 234 256 98 24 410 8 ##(Smalltalk.ComboBox)  98 17 0 864 98 2 8 1412498947 1025 960 590662 2 ##(Smalltalk.ListModel)  202 208 608 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 960 0 8 4294903299 459270 ##(Smalltalk.Message)  8 #name 98 0 608 401 642 202 208 98 1 706 736 98 2 530 481 1191 530 631 47 960 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 83 2 0 0 43 2 0 0 106 2 0 0] 98 0 530 193 193 0 27 8 'stateClass' 410 8 ##(Smalltalk.TextEdit)  98 16 0 864 98 2 8 1140916352 1025 1440 0 1122 8 4278190080 0 5 0 0 0 1440 0 8 4294903301 852486 ##(Smalltalk.NullConverter)  0 0 1 642 202 208 98 3 706 736 98 2 530 481 781 530 631 47 1440 706 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1440 706 8 #isTextModified: 98 1 32 1440 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 134 1 0 0 43 2 0 0 157 1 0 0] 98 0 1408 0 27 8 'transitionVariableName' 410 976 98 17 0 864 98 2 8 1412498947 1025 1904 1042 202 208 608 0 1104 1122 1152 0 5 0 0 0 1904 0 8 4294903299 1186 1216 1232 608 401 642 202 208 98 1 706 736 98 2 530 481 261 530 631 47 1904 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 130 0 0 0 43 2 0 0 153 0 0 0] 98 0 1408 0 27 8 'stateMachineList' 410 1456 98 16 0 864 98 2 8 1140916352 1025 2224 0 1122 1536 0 5 0 0 0 2224 0 8 4294903301 1570 0 0 1 642 202 208 98 3 706 736 98 2 530 481 841 530 631 47 2224 706 1728 98 1 1762 3 1 3 2224 706 1808 98 1 32 2224 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 164 1 0 0 43 2 0 0 187 1 0 0] 98 0 1408 0 27 8 'currentStateMessage' 410 1456 98 16 0 864 98 2 8 1140916352 1025 2592 0 1122 1536 0 5 0 0 0 2592 0 8 4294903301 1570 0 0 1 642 202 208 98 3 706 736 98 2 530 481 421 530 631 47 2592 706 1728 98 1 1762 3 1 3 2592 706 1808 98 1 32 2592 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 210 0 0 0 43 2 0 0 233 0 0 0] 98 0 1408 0 27 8 'stateMachineName' 410 8 ##(Smalltalk.StaticText)  98 16 0 864 98 2 8 1140850944 262145 2960 0 0 0 5 0 0 0 2960 0 8 4294903267 1570 0 0 0 642 202 208 98 1 706 736 98 2 530 221 121 530 881 41 2960 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 60 0 0 0 38 2 0 0 80 0 0 0] 98 0 1408 0 27 8 'fileName' 410 1456 98 16 0 864 98 2 8 1140916352 1025 3248 0 1122 1536 0 5 0 0 0 3248 0 8 4294903301 1570 0 0 1 642 202 208 98 3 706 736 98 2 530 481 491 530 631 47 3248 706 1728 98 1 1762 3 1 3 3248 706 1808 98 1 32 3248 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 245 0 0 0 43 2 0 0 12 1 0 0] 98 0 1408 0 27 8 'stateMachineVariableName' 410 976 98 17 0 864 98 2 8 1412498947 1025 3616 1042 202 208 608 0 1104 1122 1152 0 5 0 0 0 3616 0 8 4294903299 1186 1216 1232 608 401 642 202 208 98 1 706 736 98 2 530 481 561 530 631 47 3616 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 24 1 0 0 43 2 0 0 47 1 0 0] 98 0 1408 0 27 8 'umlModel' 410 1456 98 16 0 864 98 2 8 1140916352 1025 3936 0 1122 1536 0 5 0 0 0 3936 0 8 4294903301 1570 0 0 1 642 202 208 98 3 706 736 98 2 530 481 901 530 631 47 3936 706 1728 98 1 1762 3 1 3 3936 706 1808 98 1 32 3936 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 194 1 0 0 43 2 0 0 217 1 0 0] 98 0 1408 0 27 8 'nextStateMessage' 410 976 98 17 0 864 98 2 8 1412498947 1025 4304 1042 202 208 608 0 1104 1122 1152 0 5 0 0 0 4304 0 8 4294903299 1186 1216 1232 608 401 642 202 208 98 1 706 736 98 2 530 481 631 530 631 47 4304 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 59 1 0 0 43 2 0 0 82 1 0 0] 98 0 1408 0 27 8 'stateMachineClass' 410 976 98 17 0 864 98 2 8 1412498947 1025 4624 1042 202 208 608 0 1104 1122 1152 0 5 0 0 0 4624 0 8 4294903299 1186 1216 1232 608 401 642 202 208 98 1 706 736 98 2 530 481 971 530 631 47 4624 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 229 1 0 0 43 2 0 0 252 1 0 0] 98 0 1408 0 27 8 'transitionClass' 410 1456 98 16 0 864 98 2 8 1140916352 1025 4944 0 1122 1536 0 5 0 0 0 4944 0 8 4294903301 1570 0 0 1 642 202 208 98 3 706 736 98 2 530 481 1121 530 631 47 4944 706 1728 98 1 1762 3 1 3 4944 706 1808 98 1 32 4944 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 48 2 0 0 43 2 0 0 71 2 0 0] 98 0 1408 0 27 8 'stateVariableName' 0 642 202 208 98 1 706 736 98 2 530 1 1 530 1171 1361 864 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 73 2 0 0 168 2 0 0] 98 31 410 2976 98 16 0 864 98 2 8 1140850944 1 5472 0 0 0 5 0 0 0 5472 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 51 131 530 171 41 5472 706 8 #text: 98 1 8 'File to import' 5472 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 65 0 0 0 110 0 0 0 85 0 0 0] 98 0 1408 0 27 2960 410 8 ##(Smalltalk.PushButton)  98 20 0 864 98 2 8 1140924416 1 5792 0 0 0 5 0 0 0 5792 0 8 4294903251 1180998 4 ##(Smalltalk.CommandDescription)  8 #openXMIfile 8 'Open File' 1 1 0 0 32 0 0 0 642 202 208 98 3 706 736 98 2 530 221 171 530 161 61 5792 706 8 #isEnabled: 98 1 32 5792 706 5696 98 1 8 'Open File' 5792 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 85 0 0 0 190 0 0 0 115 0 0 0] 98 0 1408 0 29 410 5808 98 20 0 864 98 2 8 1140924416 1 6208 0 0 0 5 0 0 0 6208 0 8 4294903251 5890 8 #generateStateMachines 8 'Create' 1 1 0 0 32 0 0 0 642 202 208 98 3 706 736 98 2 530 941 171 530 161 61 6208 706 6080 98 1 32 6208 706 5696 98 1 8 'Create' 6208 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 214 1 0 0 85 0 0 0 38 2 0 0 115 0 0 0] 98 0 1408 0 29 1904 410 2976 98 16 0 864 98 2 8 1140850944 1 6576 0 0 0 5 0 0 0 6576 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 61 841 530 241 39 6576 706 5696 98 1 8 'Current State message' 6576 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 164 1 0 0 150 0 0 0 183 1 0 0] 98 0 1408 0 27 410 2976 98 16 0 864 98 2 8 1140850944 1 6880 0 0 0 5 0 0 0 6880 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 61 911 530 241 39 6880 706 5696 98 1 8 'Next State message' 6880 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 199 1 0 0 150 0 0 0 218 1 0 0] 98 0 1408 0 27 410 2976 98 16 0 864 98 2 8 1140850944 1 7184 0 0 0 5 0 0 0 7184 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 51 441 530 241 39 7184 706 5696 98 1 8 'State Machine name' 7184 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 220 0 0 0 145 0 0 0 239 0 0 0] 98 0 1408 0 27 410 2976 98 16 0 864 98 2 8 1140850944 1 7488 0 0 0 5 0 0 0 7488 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 51 511 530 401 51 7488 706 5696 98 1 8 'State Machine variable for name' 7488 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 255 0 0 0 225 0 0 0 24 1 0 0] 98 0 1408 0 27 410 2976 98 16 0 864 98 2 8 1140850944 1 7792 0 0 0 5 0 0 0 7792 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 61 781 530 341 41 7792 706 5696 98 1 8 'Transition variable for name' 7792 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 134 1 0 0 200 0 0 0 154 1 0 0] 98 0 1408 0 27 410 2976 98 16 0 864 98 2 8 1140850944 1 8096 0 0 0 5 0 0 0 8096 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 61 1141 530 321 41 8096 706 5696 98 1 8 'State variable for name' 8096 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 58 2 0 0 190 0 0 0 78 2 0 0] 98 0 1408 0 27 410 2976 98 16 0 864 98 2 8 1140850944 1 8400 0 0 0 5 0 0 0 8400 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 51 641 530 241 39 8400 706 5696 98 1 8 'State Machine class' 8400 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 64 1 0 0 145 0 0 0 83 1 0 0] 98 0 1408 0 27 410 2976 98 16 0 864 98 2 8 1140850944 1 8704 0 0 0 5 0 0 0 8704 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 61 981 530 241 39 8704 706 5696 98 1 8 'Transition class' 8704 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 234 1 0 0 150 0 0 0 253 1 0 0] 98 0 1408 0 27 410 2976 98 16 0 864 98 2 8 1140850944 1 9008 0 0 0 5 0 0 0 9008 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 61 1201 530 241 39 9008 706 5696 98 1 8 'State class' 9008 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 30 0 0 0 88 2 0 0 150 0 0 0 107 2 0 0] 98 0 1408 0 27 2592 3248 410 2976 98 16 0 864 98 2 8 1140850944 1 9312 0 0 0 5 0 0 0 9312 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 51 581 530 241 39 9312 706 5696 98 1 8 'UML Model' 9312 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 34 1 0 0 145 0 0 0 53 1 0 0] 98 0 1408 0 27 3616 4304 1440 2224 3936 4624 4944 960 410 5808 98 20 0 864 98 2 8 1140924416 1 9616 0 0 0 5 0 0 0 9616 0 8 4294903251 5890 8 #importStateMachines 8 'Import' 1 1 0 0 32 0 0 0 642 202 208 98 3 706 736 98 2 530 971 1291 530 161 61 9616 706 6080 98 1 32 9616 706 5696 98 1 8 'Import' 9616 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 229 1 0 0 133 2 0 0 53 2 0 0 163 2 0 0] 98 0 1408 0 29 410 2976 98 16 0 864 98 2 8 1140850944 1 9984 0 0 0 5 0 0 0 9984 0 8 4294903267 1570 0 0 0 642 202 208 98 2 706 736 98 2 530 51 261 530 241 39 9984 706 5696 98 1 8 'State Machine list' 9984 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 130 0 0 0 145 0 0 0 149 0 0 0] 98 0 1408 0 27 410 8 ##(Smalltalk.GroupBox)  98 14 0 864 98 2 8 1140850695 65 10288 0 1122 8 4294967295 0 5 0 0 0 10288 0 8 4294903251 642 202 208 98 2 706 736 98 2 530 21 361 530 1111 341 10288 706 5696 98 1 8 'State Machine options' 10288 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 180 0 0 0 53 2 0 0 94 1 0 0] 98 0 1408 0 27 410 10304 98 14 0 864 98 2 8 1140850695 65 10624 0 1122 10384 0 5 0 0 0 10624 0 8 4294903251 642 202 208 98 2 706 736 98 2 530 21 721 530 1111 321 10624 706 5696 98 1 8 'Transition options' 10624 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 104 1 0 0 53 2 0 0 8 2 0 0] 98 0 1408 0 27 410 10304 98 14 0 864 98 2 8 1140850695 65 10928 0 1122 10384 0 5 0 0 0 10928 0 8 4294903251 642 202 208 98 2 706 736 98 2 530 21 1071 530 1111 191 10928 706 5696 98 1 8 'State options' 10928 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 23 2 0 0 53 2 0 0 118 2 0 0] 98 0 1408 0 27 410 10304 98 14 0 864 98 2 8 1140850695 65 11232 0 1122 10384 0 5 0 0 0 11232 0 8 4294903251 642 202 208 98 2 706 736 98 2 530 21 61 530 1111 271 11232 706 5696 98 1 8 'Import options' 11232 802 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 30 0 0 0 53 2 0 0 165 0 0 0] 98 0 1408 0 27 1408 0 27 1408 0 27 )! !
!UMLStateMachineImportComposite class categoriesFor: #defaultModel!public! !
!UMLStateMachineImportComposite class categoriesFor: #resource_Default_view!public!resources-views! !

