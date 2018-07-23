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

model: anUMLVMTransLog

	super model: anUMLVMTransLog.

	logIsActivePresenter model: (anUMLVMTransLog aspectValue: #logIsActive).
	errorLogIsActivePresenter model: (anUMLVMTransLog aspectValue: #errorLogIsActive).
	logSizePresenter value: anUMLVMTransLog logSize.
	errorLogSizePresenter value: anUMLVMTransLog errorLogSize.
	totalSizePresenter value: anUMLVMTransLog totalSize.
	logsPresenter model: (ListModel on: anUMLVMTransLog logsAsSortedCollection).
	errorLogsPresenter model: (ListModel on: anUMLVMTransLog errorLogsAsSortedCollection).!

refreshTransLog

	self model: self model! !
!UMLVMTransLogComposite categoriesFor: #cleanAll!public! !
!UMLVMTransLogComposite categoriesFor: #cleanErrorLog!public! !
!UMLVMTransLogComposite categoriesFor: #cleanLog!public! !
!UMLVMTransLogComposite categoriesFor: #createComponents!public! !
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

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 672 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 834 1471 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 98 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 944 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 944 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 706 202 208 98 1 770 800 98 2 834 1 1 834 1471 51 944 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 672 834 193 193 0 27 1280 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 1296 0 0 0 5 0 0 0 1296 530 1 1 410 432 98 15 0 1296 98 2 8 1140850688 131073 1376 0 0 0 5 0 0 0 1376 0 234 256 98 10 410 8 ##(Smalltalk.StaticText)  98 16 0 1376 98 2 8 1140855040 1 1472 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 834 193 193 0 1472 0 8 4294903089 852486 ##(Smalltalk.NullConverter)  0 0 0 706 202 208 98 1 770 800 98 2 834 941 131 834 161 41 1472 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 214 1 0 0 65 0 0 0 38 2 0 0 85 0 0 0] 98 0 1280 0 27 8 'errorLogSize' 410 1488 98 16 0 1376 98 2 8 1140855040 1 1872 0 0 0 5 0 1554 0 16 1586 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 834 193 193 0 1872 0 8 4294903089 1666 0 0 0 706 202 208 98 1 770 800 98 2 834 1171 131 834 161 41 1872 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 73 2 0 0 65 0 0 0 153 2 0 0 85 0 0 0] 98 0 1280 0 27 8 'totalSize' 410 1488 98 16 0 1376 98 2 8 1140855040 1 2208 0 0 0 5 0 1554 0 16 1586 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 834 193 193 0 2208 0 8 4294903089 1666 0 0 0 706 202 208 98 1 770 800 98 2 834 711 131 834 161 41 2208 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 99 1 0 0 65 0 0 0 179 1 0 0 85 0 0 0] 98 0 1280 0 27 8 'logSize' 410 8 ##(Smalltalk.CheckBox)  98 16 0 1376 98 2 8 1409363203 1 2544 721990 2 ##(Smalltalk.ValueHolder)  0 0 1114118 ##(Smalltalk.NeverSearchPolicy)  32 0 0 5 0 0 0 2544 0 8 4294902567 1666 0 0 0 706 202 208 98 2 770 800 98 2 834 41 61 834 227 43 2544 770 8 #text: 98 1 8 'Log Is Active' 2544 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 30 0 0 0 133 0 0 0 51 0 0 0] 98 0 1280 0 27 8 'logIsActive' 410 2560 98 16 0 1376 98 2 8 1409363203 1 2960 2626 0 0 2672 32 0 0 5 0 0 0 2960 0 8 4294902567 1666 0 0 0 706 202 208 98 2 770 800 98 2 834 41 131 834 227 43 2960 770 2848 98 1 8 'Error Log Is Active' 2960 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 65 0 0 0 133 0 0 0 86 0 0 0] 98 0 1280 0 27 8 'errorLogIsActive' 0 706 202 208 98 1 770 800 98 2 834 1 1 834 1471 201 1376 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 100 0 0 0] 98 11 2960 2544 410 8 ##(Smalltalk.PushButton)  98 20 0 1376 98 2 8 1140924416 1 3456 0 0 0 5 0 0 0 3456 0 8 4294902567 1180998 4 ##(Smalltalk.CommandDescription)  8 #cleanErrorLog 8 'Clean Error Log' 1 1 0 0 32 0 0 0 706 202 208 98 3 770 800 98 2 834 931 41 834 191 81 3456 770 8 #isEnabled: 98 1 32 3456 770 2848 98 1 8 'Clean Error Log' 3456 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 209 1 0 0 20 0 0 0 48 2 0 0 60 0 0 0] 98 0 1280 0 29 410 3472 98 20 0 1376 98 2 8 1140924416 1 3872 0 0 0 5 0 0 0 3872 0 8 4294902567 3554 8 #cleanAll 8 'Clean All' 1 1 0 0 32 0 0 0 706 202 208 98 3 770 800 98 2 834 1171 41 834 161 81 3872 770 3744 98 1 32 3872 770 2848 98 1 8 'Clean All' 3872 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 73 2 0 0 20 0 0 0 153 2 0 0 60 0 0 0] 98 0 1280 0 29 410 3472 98 20 0 1376 98 2 8 1140924416 1 4240 0 0 0 5 0 0 0 4240 0 8 4294902567 3554 8 #cleanLog 8 'Clean Log' 1 1 0 0 32 0 0 0 706 202 208 98 3 770 800 98 2 834 711 41 834 161 81 4240 770 3744 98 1 32 4240 770 2848 98 1 8 'Clean Log' 4240 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 99 1 0 0 20 0 0 0 179 1 0 0 60 0 0 0] 98 0 1280 0 29 2208 1472 1872 410 3472 98 20 0 1376 98 2 8 1140924416 1 4608 0 0 0 5 0 0 0 4608 0 8 4294902567 3554 8 #refreshTransLog 8 'Refresh Trans Log' 1 1 0 0 32 0 0 0 706 202 208 98 3 770 800 98 2 834 391 61 834 231 81 4608 770 3744 98 1 32 4608 770 2848 98 1 8 'Refresh Trans Log' 4608 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 195 0 0 0 30 0 0 0 54 1 0 0 70 0 0 0] 98 0 1280 0 29 410 8 ##(Smalltalk.GroupBox)  98 14 0 1376 98 2 8 1140850695 65 4976 0 1026 8 4278190080 0 5 0 0 0 4976 0 8 4294902567 706 202 208 98 2 770 800 98 2 834 15 11 834 301 171 4976 770 2848 98 1 8 'Trans Log Activity' 4976 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 7 0 0 0 5 0 0 0 157 0 0 0 90 0 0 0] 98 0 1280 0 27 410 4992 98 14 0 1376 98 2 8 1140850695 65 5312 0 1026 8 4278190080 0 5 0 0 0 5312 0 8 4294902567 706 202 208 98 2 770 800 98 2 834 351 11 834 1041 171 5312 770 2848 98 1 8 'Trans Log Commands' 5312 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 175 0 0 0 5 0 0 0 183 2 0 0 90 0 0 0] 98 0 1280 0 27 1280 0 27 0 0 0 410 432 98 15 0 1296 98 2 8 1140850688 131073 5632 0 0 0 5 0 0 0 5632 626 234 240 672 32 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 201 834 1471 701 5632 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 100 0 0 0 223 2 0 0 194 1 0 0] 98 1 410 8 ##(Smalltalk.CardContainer)  98 16 0 5632 98 2 8 1409286144 131073 5904 0 1026 8 4278190080 0 5 0 0 0 5904 655878 ##(Smalltalk.CardLayout)  202 208 98 2 721414 ##(Smalltalk.Association)  8 'Log' 410 8 ##(Smalltalk.ListView)  98 30 0 5904 98 2 8 1409355853 1025 6128 590662 2 ##(Smalltalk.ListModel)  202 208 672 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  1026 8 4278190080 0 5 0 0 0 6128 0 8 4294903027 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 4 920646 5 ##(Smalltalk.ListViewColumn)  8 'Method' 401 8 #left 6338 8 #methodName 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] 6560 6608 7 513 0 0 0 6128 0 1 0 0 6482 8 'Stamp' 501 6528 6338 8 #stamp 6576 6594 0 0 6626 2 1 6592 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] 6800 6816 7 513 0 0 0 6128 0 1 0 0 6482 8 'Receiver' 201 6528 6338 8 #receiverName 6576 6594 0 0 6626 2 1 6592 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] 6944 6960 7 513 0 0 0 6128 0 1 0 0 6482 8 'Parameters' 201 6528 6338 6368 6576 6338 8 #<= 6576 0 0 6128 0 1 0 0 8 #report 672 0 131169 0 0 706 202 208 98 2 770 800 98 2 834 9 49 834 1455 645 6128 770 2848 98 1 8 'Method' 6128 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 219 2 0 0 90 1 0 0] 98 0 1280 0 27 6082 8 'Error Log' 410 6144 98 30 0 5904 98 2 8 1409355853 1025 7376 6210 202 208 672 0 6272 1026 6304 0 5 0 0 0 7376 0 8 4294903027 6338 6368 98 0 6400 6432 0 0 0 0 0 0 202 208 98 4 6482 8 'Method' 401 6528 6338 6560 98 0 6594 0 0 6626 2 1 6656 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] 6560 7632 7 513 0 0 0 7376 0 1 0 0 6482 8 'Stamp' 501 6528 6338 6800 7616 6594 0 0 6626 2 1 6592 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] 6800 7760 7 513 0 0 0 7376 0 1 0 0 6482 8 'Receiver' 201 6528 6338 6944 7616 6594 0 0 6626 2 1 6592 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] 6944 7888 7 513 0 0 0 7376 0 1 0 0 6482 8 'Parameters' 201 6528 6338 6368 7616 6338 7104 7616 0 0 7376 0 1 0 0 7120 672 0 131169 0 0 706 202 208 98 2 770 800 98 2 834 9 49 834 1455 645 7376 770 2848 98 1 8 'Method' 7376 882 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 219 2 0 0 90 1 0 0] 98 0 1280 0 27 6128 234 256 98 4 7376 8 'errorLogs' 6128 8 'logs' 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 5904 98 2 8 1140916736 1 8304 6210 202 208 98 2 6112 7360 0 6272 0 0 1 0 0 0 8304 0 8 4294903077 6594 0 0 918822 ##(Smalltalk.CompiledMethod)  2 3 8 ##(Smalltalk.ListControlView)  8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 6368 8448 7 257 0 6594 0 0 8466 2 3 6400 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 8544 7 257 0 6432 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 706 202 208 98 3 770 800 98 2 834 1 1 834 1471 701 8304 770 8 #basicSelectionsByIndex: 98 1 98 1 3 8304 770 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 8304 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 94 1 0 0] 98 0 1280 0 27 706 202 208 98 1 770 800 98 2 834 1 1 834 1471 701 5904 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 94 1 0 0] 98 3 6128 7376 8304 1280 0 27 1280 0 27 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 51 834 1471 901 1296 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 223 2 0 0 219 1 0 0] 98 2 1376 5632 1280 0 27 234 256 672 0 706 202 208 98 1 770 800 98 2 834 3199 21 834 1471 951 416 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 1 6 0 0 10 0 0 0 224 8 0 0 229 1 0 0] 98 2 560 1296 1280 0 27 )! !
!UMLVMTransLogComposite class categoriesFor: #defaultModel!public! !
!UMLVMTransLogComposite class categoriesFor: #resource_Default_view!public!resources-views! !

