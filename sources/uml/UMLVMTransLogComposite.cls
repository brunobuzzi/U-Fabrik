"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLVMTransLogComposite
	instanceVariableNames: 'logIsActivePresenter errorLogIsActivePresenter logSizePresenter errorLogSizePresenter totalSizePresenter logsPresenter errorLogsPresenter'
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
	errorLogsPresenter := self add: ListPresenter new name: 'errorLogs'.!

inspectParameters

	logsPresenter hasSelection ifFalse: [^self].

	logsPresenter selection umlParameters inspect!

inspectReceiver

	logsPresenter hasSelection ifFalse: [^self].

	logsPresenter selection umlReceiver inspect!

inspectSnapshot

	logsPresenter hasSelection ifFalse: [^self].

	logsPresenter selection snapshot inspect!

model: anUMLVMTransLog

	super model: anUMLVMTransLog.

	logIsActivePresenter model: (anUMLVMTransLog aspectValue: #logIsActive).
	errorLogIsActivePresenter model: (anUMLVMTransLog aspectValue: #errorLogIsActive).
	logSizePresenter value: anUMLVMTransLog logSize.
	errorLogSizePresenter value: anUMLVMTransLog errorLogSize.
	totalSizePresenter value: anUMLVMTransLog totalSize.
	logsPresenter model: (ListModel on: anUMLVMTransLog logs).
	errorLogsPresenter model: (ListModel on: anUMLVMTransLog errorLogs).!

refreshTransLog

	self model: self model! !
!UMLVMTransLogComposite categoriesFor: #cleanAll!public! !
!UMLVMTransLogComposite categoriesFor: #cleanErrorLog!public! !
!UMLVMTransLogComposite categoriesFor: #cleanLog!public! !
!UMLVMTransLogComposite categoriesFor: #createComponents!public! !
!UMLVMTransLogComposite categoriesFor: #inspectParameters!public! !
!UMLVMTransLogComposite categoriesFor: #inspectReceiver!public! !
!UMLVMTransLogComposite categoriesFor: #inspectSnapshot!public! !
!UMLVMTransLogComposite categoriesFor: #model:!public! !
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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 544 nil nil nil 5 nil nil nil 544 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 656 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 802 1471 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 34 1 410 ##(Smalltalk.ReferenceView) 34 14 nil 544 34 2 8 1140850688 131073 912 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 912 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 51 912 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 656 802 193 193 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 1216 nil nil nil 5 nil nil nil 1216 514 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 1216 34 2 8 1140850688 131073 1296 nil nil nil 5 nil nil nil 1296 nil 170 192 34 10 410 ##(Smalltalk.CheckBox) 34 16 nil 1296 34 2 8 1409363203 1 1392 721990 2 ##(Smalltalk.ValueHolder) nil nil 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 5 nil nil nil 1392 nil 8 1819115916 852486 ##(Smalltalk.NullConverter) nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 41 61 802 341 41 1392 754 #text: 34 1 8 'Active Message Send Log' 1392 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 30 0 0 0 190 0 0 0 50 0 0 0] 8 #() 1200 nil 27 8 'logIsActive' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 1792 nil nil nil 5 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 1792 nil 8 1819028818 1538 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 771 131 802 161 41 1792 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 65 0 0 0 209 1 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'logSize' 410 ##(Smalltalk.CheckBox) 34 16 nil 1296 34 2 8 1409363203 1 2160 1458 nil nil 1504 false nil nil 5 nil nil nil 2160 nil 8 1819115916 1538 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 41 131 802 341 41 2160 754 #text: 34 1 8 'Active Error Log' 2160 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 65 0 0 0 190 0 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'errorLogIsActive' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 2496 nil nil nil 5 nil 1858 nil true 1890 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 2496 nil 8 1819028818 1538 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1001 131 802 161 41 2496 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 244 1 0 0 65 0 0 0 68 2 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'errorLogSize' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 2832 nil nil nil 5 nil 1858 nil true 1890 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 2832 nil 8 1819028818 1538 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1231 131 802 161 41 2832 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 103 2 0 0 65 0 0 0 183 2 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'totalSize' nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 201 1296 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 100 0 0 0] 34 11 2160 1392 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 3328 nil nil nil 5 nil nil nil 3328 nil 8 1819115916 1180998 4 ##(Smalltalk.CommandDescription) #cleanErrorLog 8 'Clean Error Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 991 41 802 191 81 3328 754 #isEnabled: 8 #(false) 3328 754 #text: 34 1 8 'Clean Error Log' 3328 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 239 1 0 0 20 0 0 0 78 2 0 0 60 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 3696 nil nil nil 5 nil nil nil 3696 nil 8 1819115916 3410 #cleanAll 8 'Clean All' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1231 41 802 161 81 3696 754 #isEnabled: 8 #(false) 3696 754 #text: 34 1 8 'Clean All' 3696 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 103 2 0 0 20 0 0 0 183 2 0 0 60 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 4048 nil nil nil 5 nil nil nil 4048 nil 8 1819115916 3410 #cleanLog 8 'Clean Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 771 41 802 161 81 4048 754 #isEnabled: 8 #(false) 4048 754 #text: 34 1 8 'Clean Log' 4048 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 20 0 0 0 209 1 0 0 60 0 0 0] 8 #() 1200 nil 29 1792 2496 2832 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 4400 nil nil nil 5 nil nil nil 4400 nil 8 1819115916 3410 #refreshTransLog 8 'Refresh Trans Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 451 61 802 231 81 4400 754 #isEnabled: 8 #(false) 4400 754 #text: 34 1 8 'Refresh Trans Log' 4400 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 225 0 0 0 30 0 0 0 84 1 0 0 70 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.GroupBox) 34 14 nil 1296 34 2 8 1140850695 65 4752 nil 978 8 4278190080 nil 5 nil nil nil 4752 nil 8 1819115916 690 138 144 34 2 754 #createAt:extent: 34 2 802 11 11 802 381 171 4752 754 #text: 34 1 8 'Trans Log Activity' 4752 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 195 0 0 0 90 0 0 0] 8 #() 1200 nil 27 410 ##(Smalltalk.GroupBox) 34 14 nil 1296 34 2 8 1140850695 65 5072 nil 978 8 4278190080 nil 5 nil nil nil 5072 nil 8 1819115916 690 138 144 34 2 754 #createAt:extent: 34 2 802 411 11 802 1041 171 5072 754 #text: 34 1 8 'Trans Log Commands' 5072 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 205 0 0 0 5 0 0 0 213 2 0 0 90 0 0 0] 8 #() 1200 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 1216 34 2 8 1140850688 131073 5392 nil nil nil 5 nil nil nil 5392 610 170 176 656 false 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 201 802 1471 701 5392 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 100 0 0 0 223 2 0 0 194 1 0 0] 34 1 410 ##(Smalltalk.CardContainer) 34 16 nil 5392 34 2 8 1409286144 131073 5664 nil 978 8 4278190080 nil 5 nil nil nil 5664 655878 ##(Smalltalk.CardLayout) 138 144 34 2 721414 ##(Smalltalk.Association) 8 'Log' 410 ##(Smalltalk.ListView) 34 30 nil 5664 34 2 8 1409355853 1025 5872 590662 2 ##(Smalltalk.ListModel) 138 144 656 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 978 8 4278190080 nil 5 265030 4 ##(Smalltalk.Menu) nil true 34 3 984134 2 ##(Smalltalk.CommandMenuItem) 1 3410 #inspectSnapshot 8 'Inspect Snapshot' 1 1 nil nil nil 6098 1 3410 #inspectReceiver 8 'Inspect Receiver' 1 1 nil nil nil 6098 1 3410 #inspectParameters 8 'Inspect Parameters' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 5872 nil 8 1819272559 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil nil 138 144 34 8 920646 5 ##(Smalltalk.ListViewColumn) 8 'Receiver' 201 #left 6290 #receiverName 8 #() 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 2 1 6480 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] #receiverName 6496 7 513 nil nil nil 5872 nil 1 nil nil 6402 8 'Method' 401 #left 6290 #printMethodName 656 6482 0 nil 6514 2 1 106 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] #methodName 6640 7 513 nil nil nil 5872 nil 1 nil nil 6402 8 'Parameters' 201 #left 6290 #printParameters 8 #() 6290 #<= 6464 nil nil 5872 nil 1 nil nil 6402 8 'hasDNU' 201 #left 6290 #hasDNU 8 #() 6290 #<= 6896 nil nil 5872 nil 1 nil nil 6402 8 'hasInfiniteLoop' 201 #left 6290 #hasInfiniteLoop 6896 6290 #<= 6896 nil nil 5872 nil 1 nil nil 6402 8 'hasOnErrorDo' 201 #left 6290 #hasOnErrorDo 6896 6290 #<= 6896 nil nil 5872 nil 1 nil nil 6402 8 'isCurtailed' 201 #left 6290 #isCurtailed 6896 6290 #<= 6896 nil nil 5872 nil 1 nil nil 6402 8 'Stamp' 501 #left 6290 #timeStampAsMilliseconds 8 #() 6482 0 nil 6514 2 1 6480 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] #stamp 7184 7 513 nil nil nil 5872 nil 1 nil nil #report 656 nil 131169 nil 34 4 nil nil 802 1 1 nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 9 53 802 1455 641 5872 754 #contextMenu: 34 1 6064 5872 754 #text: 34 1 8 'Receiver' 5872 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 219 2 0 0 90 1 0 0] 8 #() 1200 nil 27 5826 8 'Error Log' 410 ##(Smalltalk.ListView) 34 30 nil 5664 34 2 8 1409355853 1025 7568 5938 138 144 656 nil 6000 978 6032 nil 5 nil nil nil 7568 nil 8 1819272559 6290 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6352 nil nil nil nil nil nil 138 144 34 4 6402 8 'Method' 401 #left 6290 #methodName 8 #() 6482 0 nil 6514 2 1 6672 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] #methodName 7824 7 513 nil nil nil 7568 nil 1 nil nil 6402 8 'Stamp' 501 #left 6290 #stamp 7808 6482 0 nil 6514 2 1 6480 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] #stamp 7952 7 513 nil nil nil 7568 nil 1 nil nil 6402 8 'Receiver' 201 #left 6290 #receiverName 7808 6482 0 nil 6514 2 1 6480 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] #receiverName 8080 7 513 nil nil nil 7568 nil 1 nil nil 6402 8 'Parameters' 201 #left 6290 #displayString 7808 6290 #<= 7808 nil nil 7568 nil 1 nil nil #report 656 nil 131169 nil 8 #(nil) 690 138 144 34 2 754 #createAt:extent: 34 2 802 9 53 802 1455 641 7568 754 #text: 34 1 8 'Method' 7568 850 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 219 2 0 0 90 1 0 0] 8 #() 1200 nil 27 5872 170 192 34 4 5872 8 'logs' 7568 8 'errorLogs' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 5664 34 2 8 1140916736 1 8512 5938 138 144 34 2 5856 7552 nil 6000 nil nil 1 nil nil nil 8512 nil 8 1818943198 6482 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 8640 7 257 nil 6482 0 nil 8658 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 8704 7 257 nil 6352 nil nil nil nil nil #smallIcons nil nil nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1 1 802 1471 701 8512 754 #basicSelectionsByIndex: 34 1 8 #(1) 8512 754 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 8512 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 94 1 0 0] 8 #() 1200 nil 27 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 701 5664 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 94 1 0 0] 34 3 5872 7568 8512 1200 nil 27 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 51 802 1471 901 1216 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 223 2 0 0 219 1 0 0] 34 2 1296 5392 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 2719 21 802 1471 951 416 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 46 8 0 0 229 1 0 0] 34 2 544 1216 1200 nil 27 )! !
!UMLVMTransLogComposite class categoriesFor: #defaultModel!public! !
!UMLVMTransLogComposite class categoriesFor: #resource_Default_view!public!resources-views! !

