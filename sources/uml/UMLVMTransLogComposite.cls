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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 544 nil nil nil 5 nil nil nil 544 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 656 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 802 1471 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 34 1 410 ##(Smalltalk.ReferenceView) 34 14 nil 544 34 2 8 1140850688 131073 912 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 912 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 51 912 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 656 802 193 193 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 1216 nil nil nil 5 nil nil nil 1216 514 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 1216 34 2 8 1140850688 131073 1296 nil nil nil 5 nil nil nil 1296 nil 170 192 34 10 410 ##(Smalltalk.CheckBox) 34 16 nil 1296 34 2 8 1409363203 1 1392 721990 2 ##(Smalltalk.ValueHolder) nil nil 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 5 nil nil nil 1392 nil 8 1819115916 852486 ##(Smalltalk.NullConverter) nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 41 131 802 341 41 1392 754 #text: 34 1 8 'Active Error Log' 1392 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 65 0 0 0 190 0 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'errorLogIsActive' 410 ##(Smalltalk.CheckBox) 34 16 nil 1296 34 2 8 1409363203 1 1792 1458 nil nil 1504 false nil nil 5 nil nil nil 1792 nil 8 1819115916 1538 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 41 61 802 341 41 1792 754 #text: 34 1 8 'Active Message Send Log' 1792 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 30 0 0 0 190 0 0 0 50 0 0 0] 8 #() 1200 nil 27 8 'logIsActive' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 2128 nil nil nil 5 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 2128 nil 8 1819028818 1538 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1231 131 802 161 41 2128 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 103 2 0 0 65 0 0 0 183 2 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'totalSize' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 2496 nil nil nil 5 nil 2194 nil true 2226 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 2496 nil 8 1819028818 1538 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1001 131 802 161 41 2496 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 244 1 0 0 65 0 0 0 68 2 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'errorLogSize' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 2832 nil nil nil 5 nil 2194 nil true 2226 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 2832 nil 8 1819028818 1538 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 771 131 802 161 41 2832 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 65 0 0 0 209 1 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'logSize' nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 201 1296 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 100 0 0 0] 34 11 1392 1792 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 3328 nil nil nil 5 nil nil nil 3328 nil 8 1819115916 1180998 4 ##(Smalltalk.CommandDescription) #cleanErrorLog 8 'Clean Error Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 991 41 802 191 81 3328 754 #isEnabled: 8 #(false) 3328 754 #text: 34 1 8 'Clean Error Log' 3328 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 239 1 0 0 20 0 0 0 78 2 0 0 60 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 3696 nil nil nil 5 nil nil nil 3696 nil 8 1819115916 3410 #cleanAll 8 'Clean All' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1231 41 802 161 81 3696 754 #isEnabled: 8 #(false) 3696 754 #text: 34 1 8 'Clean All' 3696 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 103 2 0 0 20 0 0 0 183 2 0 0 60 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 4048 nil nil nil 5 nil nil nil 4048 nil 8 1819115916 3410 #cleanLog 8 'Clean Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 771 41 802 161 81 4048 754 #isEnabled: 8 #(false) 4048 754 #text: 34 1 8 'Clean Log' 4048 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 20 0 0 0 209 1 0 0 60 0 0 0] 8 #() 1200 nil 29 2832 2496 2128 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 4400 nil nil nil 5 nil nil nil 4400 nil 8 1819115916 3410 #refreshTransLog 8 'Refresh Trans Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 451 61 802 231 81 4400 754 #isEnabled: 8 #(false) 4400 754 #text: 34 1 8 'Refresh Trans Log' 4400 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 225 0 0 0 30 0 0 0 84 1 0 0 70 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.GroupBox) 34 14 nil 1296 34 2 8 1140850695 65 4752 nil 978 8 4278190080 nil 5 nil nil nil 4752 nil 8 1819115916 690 138 144 34 2 754 #createAt:extent: 34 2 802 11 11 802 381 171 4752 754 #text: 34 1 8 'Trans Log Activity' 4752 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 195 0 0 0 90 0 0 0] 8 #() 1200 nil 27 410 ##(Smalltalk.GroupBox) 34 14 nil 1296 34 2 8 1140850695 65 5072 nil 978 8 4278190080 nil 5 nil nil nil 5072 nil 8 1819115916 690 138 144 34 2 754 #createAt:extent: 34 2 802 411 11 802 1041 171 5072 754 #text: 34 1 8 'Trans Log Commands' 5072 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 205 0 0 0 5 0 0 0 213 2 0 0 90 0 0 0] 8 #() 1200 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 1216 34 2 8 1140850688 131073 5392 nil nil nil 5 nil nil nil 5392 610 170 176 656 false 170 192 34 2 410 ##(Smalltalk.CardContainer) 34 16 nil 5392 34 2 8 1409286144 131073 5520 nil 978 8 4278190080 nil 5 nil nil nil 5520 655878 ##(Smalltalk.CardLayout) 138 144 34 2 721414 ##(Smalltalk.Association) 8 'Error Log' 410 ##(Smalltalk.ListView) 34 30 nil 5520 34 2 8 1409355853 1025 5728 590662 2 ##(Smalltalk.ListModel) 138 144 656 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 978 8 4278190080 nil 5 265030 4 ##(Smalltalk.Menu) nil true 34 3 984134 2 ##(Smalltalk.CommandMenuItem) 1 3410 #inspectSnapshot 8 'Inspect Snapshot' 1 1 nil nil nil 5954 1 3410 #inspectReceiver 8 'Inspect Receiver' 1 1 nil nil nil 5954 1 3410 #inspectParameters 8 'Inspect Parameters' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 5728 nil 8 1819272559 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil nil 138 144 34 4 920646 5 ##(Smalltalk.ListViewColumn) 8 'Method' 401 #left 6146 #methodName 8 #() 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 2 1 106 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] #methodName 6352 7 513 nil nil nil 5728 nil 1 nil nil 6258 8 'Stamp' 501 #left 6146 #stamp 6320 6338 0 nil 6370 2 1 6336 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] #stamp 6544 7 513 nil nil nil 5728 nil 1 nil nil 6258 8 'Receiver' 201 #left 6146 #receiverName 6320 6338 0 nil 6370 2 1 6336 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] #receiverName 6672 7 513 nil nil nil 5728 nil 1 nil nil 6258 8 'Parameters' 201 #left 6146 #displayString 6320 6146 #<= 6320 nil nil 5728 nil 1 nil nil #report 656 nil 131169 nil 34 4 nil nil 802 1 1 nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 9 53 802 1455 641 5728 754 #contextMenu: 34 1 5920 5728 754 #text: 34 1 8 'Method' 5728 850 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 219 2 0 0 90 1 0 0] 8 #() 1200 nil 27 5682 590662 1 ##(Smalltalk.CardLabel) 8 'Message Send' 6338 0 nil 6370 7 1 7104 8 'doIt' 8 '(CardLabel text: ''Message Send'' iconBlock: [Icon fromId: ''MessageSendAbstract.ico''])' 8 #[45 30 35 113 47 32 180 106 195 105] 983558 ##(Smalltalk.VariableBinding) #CardLabel 7104 7136 7234 #Icon ##(Smalltalk.Icon) 8 'MessageSendAbstract.ico' #fromId: #text:iconBlock: 7152 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 5520 34 2 8 1140850688 131073 7296 nil nil nil 5 nil nil nil 7296 610 170 176 34 2 410 ##(Smalltalk.ListView) 34 30 nil 7296 34 2 8 1409355853 1025 7408 5794 138 144 656 nil 5856 978 5888 nil 5 5906 nil true 34 3 5954 1 3410 #inspectSnapshot 8 'Inspect Snapshot' 1 1 nil nil nil 5954 1 3410 #inspectReceiver 8 'Inspect Receiver' 1 1 nil nil nil 5954 1 3410 #inspectParameters 8 'Inspect Parameters' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 7408 nil 8 1819272559 6146 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6208 nil nil nil nil nil nil 138 144 34 8 6258 8 'Receiver' 201 #left 6146 #receiverName 8 #() 6338 0 nil 6370 2 1 6336 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] #receiverName 7856 7 513 nil nil nil 7408 nil 1 nil nil 6258 8 'Method' 401 #left 6146 #printMethodName 8 #() 6338 0 nil 6370 2 1 6400 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] #methodName 8000 7 513 nil nil nil 7408 nil 1 nil nil 6258 8 'Parameters' 201 #left 6146 #printParameters 8 #() 6146 #<= 7840 nil nil 7408 nil 1 nil nil 6258 8 'hasDNU' 201 #left 6146 #hasDNU 8 #() 6146 #<= 8208 nil nil 7408 nil 1 nil nil 6258 8 'hasInfiniteLoop' 201 #left 6146 #hasInfiniteLoop 8208 6146 #<= 8208 nil nil 7408 nil 1 nil nil 6258 8 'hasOnErrorDo' 201 #left 6146 #hasOnErrorDo 8208 6146 #<= 8208 nil nil 7408 nil 1 nil nil 6258 8 'isCurtailed' 201 #left 6146 #isCurtailed 8208 6146 #<= 8208 nil nil 7408 nil 1 nil nil 6258 8 'Stamp' 501 #left 6146 #timeStampAsMilliseconds 8 #() 6338 0 nil 6370 2 1 6336 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] #stamp 8496 7 513 nil nil nil 7408 nil 1 nil nil #report 656 nil 131169 nil 34 4 nil nil 802 1 1 nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1 1 802 963 641 7408 754 #contextMenu: 34 1 7520 7408 754 #text: 34 1 8 'Receiver' 7408 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 225 1 0 0 64 1 0 0] 8 #() 1200 nil 27 5 false 170 192 34 4 410 ##(Smalltalk.ReferenceView) 34 14 nil 7296 34 2 8 1140850688 131073 8880 nil 978 8 4278190080 nil 5 nil nil nil 8880 1026 ##(Smalltalk.UMLClassWorkspaceComposite) #resource_Default_view nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 973 1 802 483 641 8880 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 230 1 0 0 0 0 0 0 215 2 0 0 64 1 0 0] 656 1200 nil 27 8 'workspace' 7408 8 'logs' nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 9 53 802 1455 641 7296 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 219 2 0 0 90 1 0 0] 34 3 7408 410 ##(Smalltalk.Splitter) 34 12 nil 7296 34 2 8 1140850688 1 9328 nil 978 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 9328 nil 1 #left nil nil nil 802 1 1 802 9 9 nil 9456 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 963 1 802 11 641 9328 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 225 1 0 0 0 0 0 0 230 1 0 0 64 1 0 0] 8 #() 1200 nil 27 8880 1200 nil 27 7296 170 192 34 4 5728 8 'errorLogs' 7296 8 'messageSendLogs' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 5520 34 2 8 1140916736 1 9712 5794 138 144 34 2 7120 5712 nil 5856 nil nil 1 nil nil nil 9712 nil 8 1818943198 6338 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 9840 7 257 nil 6338 0 nil 9858 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 9904 7 257 nil 6208 nil nil nil nil nil #smallIcons nil nil nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1 1 802 1471 701 9712 754 #basicSelectionsByIndex: 34 1 8 #(1) 9712 754 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 9712 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 94 1 0 0] 8 #() 1200 nil 27 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 701 5520 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 94 1 0 0] 34 3 7296 5728 9712 1200 nil 27 8 'card' nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 201 802 1471 701 5392 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 100 0 0 0 223 2 0 0 194 1 0 0] 34 1 5520 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 51 802 1471 901 1216 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 223 2 0 0 219 1 0 0] 34 2 1296 5392 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 2719 21 802 1471 951 416 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 46 8 0 0 229 1 0 0] 34 2 544 1216 1200 nil 27 )! !
!UMLVMTransLogComposite class categoriesFor: #defaultModel!public! !
!UMLVMTransLogComposite class categoriesFor: #resource_Default_view!public!resources-views! !

