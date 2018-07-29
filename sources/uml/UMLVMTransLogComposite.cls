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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 544 nil nil nil 5 nil nil nil 544 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 656 nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 802 1471 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 34 1 410 ##(Smalltalk.ReferenceView) 34 14 nil 544 34 2 8 1140850688 131073 912 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 5 nil nil nil 912 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 51 912 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 25 0 0 0] 656 802 193 193 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 1216 nil nil nil 5 nil nil nil 1216 514 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 1216 34 2 8 1140850688 131073 1296 nil nil nil 5 nil nil nil 1296 nil 170 192 34 10 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 1392 nil nil nil 5 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 1392 nil 8 1819028818 852486 ##(Smalltalk.NullConverter) nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 941 131 802 161 41 1392 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 214 1 0 0 65 0 0 0 38 2 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'errorLogSize' 410 ##(Smalltalk.CheckBox) 34 16 nil 1296 34 2 8 1409363203 1 1776 721990 2 ##(Smalltalk.ValueHolder) nil nil 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 5 nil nil nil 1776 nil 8 1819115916 1570 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 41 61 802 227 43 1776 754 #text: 34 1 8 'Log Is Active' 1776 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 30 0 0 0 133 0 0 0 51 0 0 0] 8 #() 1200 nil 27 8 'logIsActive' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 2160 nil nil nil 5 nil 1458 nil true 1490 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 2160 nil 8 1819028818 1570 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1171 131 802 161 41 2160 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 73 2 0 0 65 0 0 0 153 2 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'totalSize' 410 ##(Smalltalk.CheckBox) 34 16 nil 1296 34 2 8 1409363203 1 2496 1842 nil nil 1888 false nil nil 5 nil nil nil 2496 nil 8 1819115916 1570 nil nil nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 41 131 802 227 43 2496 754 #text: 34 1 8 'Error Log Is Active' 2496 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 65 0 0 0 133 0 0 0 86 0 0 0] 8 #() 1200 nil 27 8 'errorLogIsActive' 410 ##(Smalltalk.StaticText) 34 16 nil 1296 34 2 8 1140855040 1 2832 nil nil nil 5 nil 1458 nil true 1490 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 nil 2832 nil 8 1819028818 1570 nil nil nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 711 131 802 161 41 2832 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 99 1 0 0 65 0 0 0 179 1 0 0 85 0 0 0] 8 #() 1200 nil 27 8 'logSize' nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 201 1296 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 100 0 0 0] 34 11 2496 1776 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 3328 nil nil nil 5 nil nil nil 3328 nil 8 1819115916 1180998 4 ##(Smalltalk.CommandDescription) #cleanErrorLog 8 'Clean Error Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 931 41 802 191 81 3328 754 #isEnabled: 8 #(false) 3328 754 #text: 34 1 8 'Clean Error Log' 3328 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 209 1 0 0 20 0 0 0 48 2 0 0 60 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 3696 nil nil nil 5 nil nil nil 3696 nil 8 1819115916 3410 #cleanAll 8 'Clean All' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1171 41 802 161 81 3696 754 #isEnabled: 8 #(false) 3696 754 #text: 34 1 8 'Clean All' 3696 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 73 2 0 0 20 0 0 0 153 2 0 0 60 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 4048 nil nil nil 5 nil nil nil 4048 nil 8 1819115916 3410 #cleanLog 8 'Clean Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 711 41 802 161 81 4048 754 #isEnabled: 8 #(false) 4048 754 #text: 34 1 8 'Clean Log' 4048 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 99 1 0 0 20 0 0 0 179 1 0 0 60 0 0 0] 8 #() 1200 nil 29 2832 1392 2160 410 ##(Smalltalk.PushButton) 34 20 nil 1296 34 2 8 1140924416 1 4400 nil nil nil 5 nil nil nil 4400 nil 8 1819115916 3410 #refreshTransLog 8 'Refresh Trans Log' 1 1 nil nil false nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 391 61 802 231 81 4400 754 #isEnabled: 8 #(false) 4400 754 #text: 34 1 8 'Refresh Trans Log' 4400 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 195 0 0 0 30 0 0 0 54 1 0 0 70 0 0 0] 8 #() 1200 nil 29 410 ##(Smalltalk.GroupBox) 34 14 nil 1296 34 2 8 1140850695 65 4752 nil 978 8 4278190080 nil 5 nil nil nil 4752 nil 8 1819115916 690 138 144 34 2 754 #createAt:extent: 34 2 802 15 11 802 301 171 4752 754 #text: 34 1 8 'Trans Log Activity' 4752 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 7 0 0 0 5 0 0 0 157 0 0 0 90 0 0 0] 8 #() 1200 nil 27 410 ##(Smalltalk.GroupBox) 34 14 nil 1296 34 2 8 1140850695 65 5072 nil 978 8 4278190080 nil 5 nil nil nil 5072 nil 8 1819115916 690 138 144 34 2 754 #createAt:extent: 34 2 802 351 11 802 1041 171 5072 754 #text: 34 1 8 'Trans Log Commands' 5072 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 175 0 0 0 5 0 0 0 183 2 0 0 90 0 0 0] 8 #() 1200 nil 27 1200 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 1216 34 2 8 1140850688 131073 5392 nil nil nil 5 nil nil nil 5392 610 170 176 656 false 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 201 802 1471 701 5392 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 100 0 0 0 223 2 0 0 194 1 0 0] 34 1 410 ##(Smalltalk.CardContainer) 34 16 nil 5392 34 2 8 1409286144 131073 5664 nil 978 8 4278190080 nil 5 nil nil nil 5664 655878 ##(Smalltalk.CardLayout) 138 144 34 2 721414 ##(Smalltalk.Association) 8 'Log' 410 ##(Smalltalk.ListView) 34 30 nil 5664 34 2 8 1409355853 1025 5872 590662 2 ##(Smalltalk.ListModel) 138 144 656 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 978 8 4278190080 nil 5 nil nil nil 5872 nil 8 1819272559 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil nil 138 144 34 8 920646 5 ##(Smalltalk.ListViewColumn) 8 'Method' 401 #left 6066 #methodName 8 #() 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 2 1 106 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] #methodName 6272 7 513 nil nil nil 5872 nil 1 nil nil 6178 8 'Stamp' 501 #left 6066 #stamp 6240 6258 0 nil 6290 2 1 6256 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] #stamp 6464 7 513 nil nil nil 5872 nil 1 nil nil 6178 8 'Receiver' 201 #left 6066 #receiverName 6240 6258 0 nil 6290 2 1 6256 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] #receiverName 6592 7 513 nil nil nil 5872 nil 1 nil nil 6178 8 'Parameters' 201 #left 6066 #displayString 6240 6066 #<= 6240 nil nil 5872 nil 1 nil nil 6178 8 'hasDNU' 201 #left 6066 #hasDNU 656 6066 #<= 656 nil nil 5872 nil 1 nil nil 6178 8 'hasInfiniteLoop' 201 #left 6066 #hasInfiniteLoop 656 6066 #<= 656 nil nil 5872 nil 1 nil nil 6178 8 'hasOnErrorDo' 201 #left 6066 #hasOnErrorDo 656 6066 #<= 656 nil nil 5872 nil 1 nil nil 6178 8 'isCurtailed' 201 #left 6066 #isCurtailed 656 6066 #<= 656 nil nil 5872 nil 1 nil nil #report 656 nil 131169 nil 34 4 nil nil 802 1 1 nil 690 138 144 34 2 754 #createAt:extent: 34 2 802 9 53 802 1455 641 5872 754 #text: 34 1 8 'Method' 5872 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 219 2 0 0 90 1 0 0] 8 #() 1200 nil 27 5826 8 'Error Log' 410 ##(Smalltalk.ListView) 34 30 nil 5664 34 2 8 1409355853 1025 7264 5938 138 144 656 nil 6000 978 6032 nil 5 nil nil nil 7264 nil 8 1819272559 6066 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6128 nil nil nil nil nil nil 138 144 34 4 6178 8 'Method' 401 #left 6066 #methodName 8 #() 6258 0 nil 6290 2 1 6320 8 'doIt' 8 '[:a :b | a methodName <= b methodName]' 8 #[30 105 226 0 226 32 130 106] #methodName 7520 7 513 nil nil nil 7264 nil 1 nil nil 6178 8 'Stamp' 501 #left 6066 #stamp 7504 6258 0 nil 6290 2 1 6256 8 'doIt' 8 '[:a :b | a stamp <= b stamp]' 8 #[30 105 226 0 226 32 130 106] #stamp 7648 7 513 nil nil nil 7264 nil 1 nil nil 6178 8 'Receiver' 201 #left 6066 #receiverName 7504 6258 0 nil 6290 2 1 6256 8 'doIt' 8 '[:a :b | a receiverName <= b receiverName]' 8 #[30 105 226 0 226 32 130 106] #receiverName 7776 7 513 nil nil nil 7264 nil 1 nil nil 6178 8 'Parameters' 201 #left 6066 #displayString 7504 6066 #<= 7504 nil nil 7264 nil 1 nil nil #report 656 nil 131169 nil 8 #(nil) 690 138 144 34 2 754 #createAt:extent: 34 2 802 9 53 802 1455 641 7264 754 #text: 34 1 8 'Method' 7264 850 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 219 2 0 0 90 1 0 0] 8 #() 1200 nil 27 5872 170 192 34 4 5872 8 'logs' 7264 8 'errorLogs' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 5664 34 2 8 1140916736 1 8208 5938 138 144 34 2 5856 7248 nil 6000 nil nil 1 nil nil nil 8208 nil 8 1818943198 6258 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 8336 7 257 nil 6258 0 nil 8354 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 8400 7 257 nil 6128 nil nil nil nil nil #smallIcons nil nil nil nil nil 690 138 144 34 3 754 #createAt:extent: 34 2 802 1 1 802 1471 701 8208 754 #basicSelectionsByIndex: 34 1 8 #(1) 8208 754 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 8208 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 94 1 0 0] 8 #() 1200 nil 27 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 1 802 1471 701 5664 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 223 2 0 0 94 1 0 0] 34 3 5872 7264 8208 1200 nil 27 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1 51 802 1471 901 1216 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 223 2 0 0 219 1 0 0] 34 2 1296 5392 1200 nil 27 170 192 656 nil 690 138 144 34 1 754 #createAt:extent: 34 2 802 1251 21 802 1471 951 416 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 113 2 0 0 10 0 0 0 80 5 0 0 229 1 0 0] 34 2 544 1216 1200 nil 27 )! !
!UMLVMTransLogComposite class categoriesFor: #defaultModel!public! !
!UMLVMTransLogComposite class categoriesFor: #resource_Default_view!public!resources-views! !

