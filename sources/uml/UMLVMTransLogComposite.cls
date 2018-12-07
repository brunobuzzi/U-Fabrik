"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLVMTransLogComposite
	instanceVariableNames: 'logIsActivePresenter errorLogIsActivePresenter logSizePresenter errorLogSizePresenter totalSizePresenter logsPresenter errorLogsPresenter workspacePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVMTransLogComposite guid: (GUID fromString: '{03106ed5-262c-493b-b2a0-50cb8d6835c5}')!
UMLVMTransLogComposite comment: ''!
!UMLVMTransLogComposite categoriesForClass!Unclassified! !
!UMLVMTransLogComposite methodsFor!

cleanAll

	self model cleanAll.

	self refreshTransLog.!

cleanErrorLog

	self model cleanErrorLog.

	self refreshTransLog.!

cleanLog

	self model cleanLog.

	self refreshTransLog.!

createComponents

	super createComponents.

	logIsActivePresenter := self add: BooleanPresenter new name: 'logIsActive'.
	errorLogIsActivePresenter := self add: BooleanPresenter new name: 'errorLogIsActive'.
	logSizePresenter := self add: TextPresenter new name: 'logSize'.
	errorLogSizePresenter := self add: TextPresenter new name: 'errorLogSize'.
	totalSizePresenter := self add: TextPresenter new name: 'totalSize'.
	logsPresenter := self add: ListPresenter new name: 'logs'.
	errorLogsPresenter := self add: ListPresenter new name: 'errorLogs'.
	workspacePresenter := self add: UMLClassWorkspaceComposite new name: 'workspace'.!

createSchematicWiring

	super createSchematicWiring.

	logsPresenter when: #selectionChanged send: #onImplementationChanged to: self!

currentCard

	^(view viewNamed: 'card') currentCard
!

currentCardName

	^self currentCard name!

deleteLogEntry
	| index |

	logsPresenter hasSelection ifFalse: [^self].

	index := logsPresenter list indexOf: logsPresenter selection.
	logsPresenter list remove: logsPresenter selection ifAbsent: [].
	(index <= logsPresenter list size)
	ifTrue: [logsPresenter selection: (logsPresenter list at: index) ifAbsent: []]
	ifFalse: [logsPresenter selection: (logsPresenter list at: index - 1) ifAbsent: []]!

inspectParameters

	(self currentCardName = 'messageSendLogs')
	ifTrue: [logsPresenter hasSelection ifFalse: [^self].
		logsPresenter selection umlParameters inspect.
	]
	ifFalse: [errorLogsPresenter hasSelection ifFalse: [^self].
		errorLogsPresenter selection umlParameters inspect.
	]!

inspectReceiver

	(self currentCardName = 'messageSendLogs')
	ifTrue: [logsPresenter hasSelection ifFalse: [^self].
		logsPresenter selection umlReceiver inspect.
	]
	ifFalse: [errorLogsPresenter hasSelection ifFalse: [^self].
		errorLogsPresenter selection umlReceiver inspect.
	]!

inspectSnapshot

	(self currentCardName = 'messageSendLogs')
	ifTrue: [logsPresenter hasSelection ifFalse: [^self].
		logsPresenter selection snapshot inspect.
	]
	ifFalse: [errorLogsPresenter hasSelection ifFalse: [^self].
		errorLogsPresenter selection snapshot inspect.
	]!

model: anUMLVMTransLog

	super model: anUMLVMTransLog.

	logIsActivePresenter model: (anUMLVMTransLog aspectValue: #logIsActive).
	errorLogIsActivePresenter model: (anUMLVMTransLog aspectValue: #errorLogIsActive).
	logSizePresenter value: anUMLVMTransLog logSize.
	errorLogSizePresenter value: anUMLVMTransLog errorLogSize.
	totalSizePresenter value: anUMLVMTransLog totalSize.
	logsPresenter model: (ListModel on: anUMLVMTransLog logs).
	errorLogsPresenter model: (ListModel on: anUMLVMTransLog errorLogs).!

onImplementationChanged

	logsPresenter hasSelection ifFalse: [^self].

	workspacePresenter setText: logsPresenter selection snapshot printMessage!

refreshTransLog

	self model: self model! !
!UMLVMTransLogComposite categoriesFor: #cleanAll!public! !
!UMLVMTransLogComposite categoriesFor: #cleanErrorLog!public! !
!UMLVMTransLogComposite categoriesFor: #cleanLog!public! !
!UMLVMTransLogComposite categoriesFor: #createComponents!public! !
!UMLVMTransLogComposite categoriesFor: #createSchematicWiring!public! !
!UMLVMTransLogComposite categoriesFor: #currentCard!public! !
!UMLVMTransLogComposite categoriesFor: #currentCardName!public! !
!UMLVMTransLogComposite categoriesFor: #deleteLogEntry!public! !
!UMLVMTransLogComposite categoriesFor: #inspectParameters!public! !
!UMLVMTransLogComposite categoriesFor: #inspectReceiver!public! !
!UMLVMTransLogComposite categoriesFor: #inspectSnapshot!public! !
!UMLVMTransLogComposite categoriesFor: #model:!public! !
!UMLVMTransLogComposite categoriesFor: #onImplementationChanged!public! !
!UMLVMTransLogComposite categoriesFor: #refreshTransLog!public! !

!UMLVMTransLogComposite class methodsFor!

defaultModel

	^UMLVMTransLog new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 544 nil nil nil 5 nil nil nil 544 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 656 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 802 1471 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 34 1 410 ##(Smalltalk.ReferenceView) 34 14 nil 544 34 2 8 1140850688 131073 912 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 912 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 51 912 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 656 802 193 193 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 1216 nil nil nil 5 nil nil nil 1216 514 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 1216 34 2 8 1140850688 131073 1296 nil nil nil 5 nil nil nil 1296 nil 170 192 34 10 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 1392 nil nil nil 5 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 1392 nil 8 1911172434 852486 ##(Smalltalk.NullConverter) nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 771 131 802 161 41 1392 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 65 0 0 0 209 1 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'logSize' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 1776 nil nil nil 5 nil 1458 nil true 1490 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 1776 nil 8 1911172434 1570 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1001 131 802 161 41 1776 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 244 1 0 0 65 0 0 0 68 2 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'errorLogSize' 410 ##(Smalltalk.CheckBox) 34 16 nil 1296 34 2 8 1409363203 1 2112 721990 2 ##(Smalltalk.ValueHolder) nil nil 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 5 nil nil nil 2112 nil 8 1911259532 1570 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 41 131 802 341 41 2112 754 #text: 34 1 8 'Active Error Log' 2112 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 65 0 0 0 190 0 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'errorLogIsActive' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 2496 nil nil nil 5 nil 1458 nil true 1490 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 2496 nil 8 1911172434 1570 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1231 131 802 161 41 2496 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 103 2 0 0 65 0 0 0 183 2 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'totalSize' 410 ##(Smalltalk.CheckBox) 34 16 nil 1296 34 2 8 1409363203 1 2832 2178 nil nil 2224 false nil nil 5 nil nil nil 2832 nil 8 1911259532 1570 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 41 61 802 341 41 2832 754 #text: 34 1 8 'Active Message Send Log' 2832 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 30 0 0 0 190 0 0 0 50 0 0 0] 8 #() 1200 nil 27 8 'logIsActive' nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 201 1296 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 100 0 0 0] 34 11 2112 2832 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 3328 nil nil nil 5 nil nil nil 3328 nil 8 1911259532 1180998 4 ##(Smalltalk.CommandDescription) #cleanErrorLog 8 'Clean Error Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 991 41 802 191 81 3328 754 #isEnabled: 8 #(false) 3328 754 #text: 34 1 8 'Clean Error Log' 3328 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 239 1 0 0 20 0 0 0 78 2 0 0 60 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 3696 nil nil nil 5 nil nil nil 3696 nil 8 1911259532 3410 #cleanAll 8 'Clean All' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1231 41 802 161 81 3696 754 #isEnabled: 8 #(false) 3696 754 #text: 34 1 8 'Clean All' 3696 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 103 2 0 0 20 0 0 0 183 2 0 0 60 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 4048 nil nil nil 5 nil nil nil 4048 nil 8 1911259532 3410 #cleanLog 8 'Clean Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 771 41 802 161 81 4048 754 #isEnabled: 8 #(false) 4048 754 #text: 34 1 8 'Clean Log' 4048 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 20 0 0 0 209 1 0 0 60 0 0 0] 8 #() 1200 nil 29 1392 1776 2496 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 4400 nil nil nil 5 nil nil nil 4400 nil 8 1911259532 3410 #refreshTransLog 8 'Refresh Trans Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 451 61 802 231 81 4400 754 #isEnabled: 8 #(false) 4400 754 #text: 34 1 8 'Refresh Trans Log' 4400 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 225 0 0 0 30 0 0 0 84 1 0 0 70 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.GroupBox) 34 14 nil 1296 34 2 8 1140850695 65 4752 nil 978 8 4278190080 nil 5 nil nil nil 4752 nil 8 1911259532 690 138 144 34 2 754 #createAt:extent: 34 2 802 11 11 802 381 171 4752 754 #text: 34 1 8 'Trans Log Activity' 4752 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 195 0 0 0 90 0 0 0] 8 #() 1200 nil 27 410 ##(Smalltalk.GroupBox) 34 14 nil 1296 34 2 8 1140850695 65 5072 nil 978 8 4278190080 nil 5 nil nil nil 5072 nil 8 1911259532 690 138 144 34 2 754 #createAt:extent: 34 2 802 411 11 802 1041 171 5072 754 #text: 34 1 8 'Trans Log Commands' 5072 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 205 0 0 0 5 0 0 0 213 2 0 0 90 0 0 0] 8 #() 1200 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 1216 34 2 8 1140850688 131073 5392 nil nil nil 5 nil nil nil 5392 514 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 5392 34 2 8 1140850688 131073 5472 nil nil nil 5 nil nil nil 5472 610 170 176 656 false 170 192 656 590342 ##(Smalltalk.Rectangle) 802 1 1 802 1 1 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 41 5472 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 20 0 0 0] 34 1 410 ##(Smalltalk.Toolbar) 34 25 nil 5472 34 2 8 1409288972 131137 5808 nil 978 8 4278190080 nil 517 nil 1458 nil true 1490 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 5808 978 5888 8 1911361713 170 192 656 170 192 34 2 26365 1115206 1 ##(Smalltalk.ToolbarIconButton) 5808 1 3410 #deleteLogEntry 8 'Delete Entry' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'CompileFailedMethod.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr7.dll' nil 26365 34 1 6064 170 176 34 2 657990 3 ##(Smalltalk.DIBSection) nil true nil nil nil nil 3 802 33 33 65 nil 1 nil 1 nil 802 33 33 802 45 45 nil 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 690 138 144 34 2 754 #createAt:extent: 34 2 802 1 1 802 1471 41 5808 754 #updateSizePosted 656 5808 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 20 0 0 0] 8 #() 1200 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 5392 34 2 8 1140850688 131073 6576 nil nil nil 5 nil nil nil 6576 610 170 176 656 false 170 192 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 6576 34 2 8 1409286144 131073 6704 nil 978 8 4278190080 nil 5 nil nil nil 6704 655878 ##(Smalltalk.CardLayout) 138 144 34 2 721414 ##(Smalltalk.Association) 8 'Error Log' 410 ##(Smalltalk.ListView) 34 30 nil 6704 34 2 8 1409355853 1025 6912 590662 2 ##(Smalltalk.ListModel) 138 144 656 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 978 8 4278190080 nil 5 265030 4 ##(Smalltalk.Menu) nil true 34 3 984134 2 ##(Smalltalk.CommandMenuItem) 1 3410 #inspectSnapshot 8 'Inspect Snapshot' 1 1 nil nil nil 7138 1 3410 #inspectReceiver 8 'Inspect Receiver' 1 1 nil nil nil 7138 1 3410 #inspectParameters 8 'Inspect Parameters' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 6912 nil 8 1911416175 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil nil 138 144 34 4 920646 5 ##(Smalltalk.ListViewColumn) 8 'Method' 401 #left 7330 #methodName 8 #() 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 2 1 106 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] #methodName 7536 7 513 nil nil nil 6912 nil 1 nil nil 7442 8 'Stamp' 501 #left 7330 #stamp 7504 7522 0 nil 7554 2 1 7520 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] #stamp 7728 7 513 nil nil nil 6912 nil 1 nil nil 7442 8 'Receiver' 201 #left 7330 #receiverName 7504 7522 0 nil 7554 2 1 7520 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] #receiverName 7856 7 513 nil nil nil 6912 nil 1 nil nil 7442 8 'Parameters' 201 #left 7330 #displayString 7504 7330 #<= 7504 nil nil 6912 nil 1 nil nil #report 656 nil 131169 nil 34 4 nil nil 802 1 1 nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 9 53 802 1455 591 6912 754 #contextMenu: 34 1 7104 6912 754 #text: 34 1 8 'Method' 6912 850 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 219 2 0 0 65 1 0 0] 8 #() 1200 nil 27 6866 590662 1 ##(Smalltalk.CardLabel) 8 'Message Send' 7522 0 nil 7554 7 1 8288 8 'doIt' 8 '(CardLabel text: ''Message Send'' iconBlock: [Icon fromId: ''MessageSendAbstract.ico''])' 8 #[45 30 35 113 47 32 180 106 195 105] 983558 ##(Smalltalk.VariableBinding) #CardLabel 8288 8320 8418 #Icon 6112 8 'MessageSendAbstract.ico' #fromId: #text:iconBlock: 8336 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 6704 34 2 8 1140850688 131073 8480 nil nil nil 5 nil nil nil 8480 610 170 176 34 2 410 ##(Smalltalk.ListView) 34 30 nil 8480 34 2 8 1409355853 1025 8592 6978 138 144 656 nil 7040 978 7072 nil 5 7090 nil true 34 3 7138 1 3410 #inspectSnapshot 8 'Inspect Snapshot' 1 1 nil nil nil 7138 1 3410 #inspectReceiver 8 'Inspect Receiver' 1 1 nil nil nil 7138 1 3410 #inspectParameters 8 'Inspect Parameters' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 8592 nil 8 1911416175 7330 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 7392 nil nil nil nil nil nil 138 144 34 8 7442 8 'Receiver' 201 #left 7330 #receiverName 8 #() 7522 0 nil 7554 2 1 7520 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] #receiverName 9040 7 513 nil nil nil 8592 nil 1 nil nil 7442 8 'Method' 401 #left 7330 #printMethodName 8 #() 7522 0 nil 7554 2 1 7584 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] #methodName 9184 7 513 nil nil nil 8592 nil 1 nil nil 7442 8 'Parameters' 201 #left 7330 #printParameters 8 #() 7330 #<= 9024 nil nil 8592 nil 1 nil nil 7442 8 'hasDNU' 201 #left 7330 #hasDNU 8 #() 7330 #<= 9392 nil nil 8592 nil 1 nil nil 7442 8 'hasInfiniteLoop' 201 #left 7330 #hasInfiniteLoop 9392 7330 #<= 9392 nil nil 8592 nil 1 nil nil 7442 8 'hasOnErrorDo' 201 #left 7330 #hasOnErrorDo 9392 7330 #<= 9392 nil nil 8592 nil 1 nil nil 7442 8 'isCurtailed' 201 #left 7330 #isCurtailed 9392 7330 #<= 9392 nil nil 8592 nil 1 nil nil 7442 8 'Stamp' 501 #left 7330 #timeStampAsMilliseconds 8 #() 7522 0 nil 7554 2 1 7520 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] #stamp 9680 7 513 nil nil nil 8592 nil 1 nil nil #report 656 nil 131169 nil 34 4 nil nil 802 1 1 nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1 1 802 963 591 8592 754 #contextMenu: 34 1 8704 8592 754 #text: 34 1 8 'Receiver' 8592 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 225 1 0 0 39 1 0 0] 8 #() 1200 nil 27 5 false 170 192 34 4 8592 8 'logs' 410 ##(Smalltalk.ReferenceView) 34 14 nil 8480 34 2 8 1140850688 131073 10080 nil 978 8 4278190080 nil 5 nil nil nil 10080 1026 ##(Smalltalk.UMLClassWorkspaceComposite) #resource_Default_view nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 973 1 802 483 591 10080 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 230 1 0 0 0 0 0 0 215 2 0 0 39 1 0 0] 656 1200 nil 27 8 'workspace' nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 9 53 802 1455 591 8480 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 219 2 0 0 65 1 0 0] 34 3 8592 410 ##(Smalltalk.Splitter) 34 12 nil 8480 34 2 8 1140850688 1 10512 nil 978 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 10512 nil 1 #left nil nil nil 802 1 1 802 9 9 nil 10640 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 963 1 802 11 591 10512 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 225 1 0 0 0 0 0 0 230 1 0 0 39 1 0 0] 8 #() 1200 nil 27 10080 1200 nil 27 8480 170 192 34 4 6912 8 'errorLogs' 8480 8 'messageSendLogs' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 6704 34 2 8 1140916736 1 10896 6978 138 144 34 2 8304 6896 nil 7040 nil nil 1 nil nil nil 10896 nil 8 1911086814 7522 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 11024 7 257 nil 7522 0 nil 11042 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 11088 7 257 nil 7392 nil nil nil nil nil #smallIcons nil nil nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1 1 802 1471 651 10896 754 #basicSelectionsByIndex: 34 1 8 #(1) 10896 754 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 10896 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 69 1 0 0] 8 #() 1200 nil 27 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 11 802 1471 651 6704 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 5 0 0 0 223 2 0 0 74 1 0 0] 34 3 8480 6912 10896 1200 nil 27 8 'card' 5586 802 1 11 802 1 1 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 41 802 1471 661 6576 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 20 0 0 0 223 2 0 0 94 1 0 0] 34 1 6704 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 201 802 1471 701 5392 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 100 0 0 0 223 2 0 0 194 1 0 0] 34 2 5472 6576 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 51 802 1471 901 1216 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 223 2 0 0 219 1 0 0] 34 2 1296 5392 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 2719 21 802 1471 951 416 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 46 8 0 0 229 1 0 0] 34 2 544 1216 1200 nil 27 )! !
!UMLVMTransLogComposite class categoriesFor: #defaultModel!public! !
!UMLVMTransLogComposite class categoriesFor: #resource_Default_view!public!resources-views! !

