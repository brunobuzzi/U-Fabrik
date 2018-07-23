"Filed out from Dolphin Smalltalk 7"!

DBComposite subclass: #DBModelComparisionComposite
	instanceVariableNames: 'firstNamePresenter secondNamePresenter differencesPresenter diffTypesPresenter detailPresenter totalDifferencePresenter colorPresenter firstElementComposite secondElementComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DBModelComparisionComposite guid: (GUID fromString: '{9426b500-beca-4997-b8ce-04d3eaebe6f5}')!
DBModelComparisionComposite comment: ''!
!DBModelComparisionComposite categoriesForClass!Unclassified! !
!DBModelComparisionComposite methodsFor!

clearElementsComposite

	firstElementComposite subPresenters do: [:each | each view close].
	secondElementComposite subPresenters do: [:each | each view close].!

compare

	differencesPresenter model: model compareElements "aTreeModel".

	differencesPresenter expandAll: model.

	self updateNumberOfElements.!

createComponents

	super createComponents.

	firstNamePresenter := self add: TextPresenter new name: 'firstName'.
	secondNamePresenter := self add: TextPresenter new name: 'secondName'.
	differencesPresenter := self add: ListTreePresenter new name: 'differences'.
	diffTypesPresenter := self add: ListPresenter new name: 'diffTypes'.
	detailPresenter := self add: RichTextPresenter new name: 'detail'.
	totalDifferencePresenter := self add: TextPresenter new name: 'numberOfElements'.
	colorPresenter := self add: TextPresenter new name: 'color'.
	firstElementComposite := self add: Presenter new name: 'firstElementComposite'.
	secondElementComposite := self add: Presenter new name: 'secondElementComposite'.
!

createSchematicWiring

	super createSchematicWiring.

	diffTypesPresenter when: #selectionChanged send: #onDiffTypeChange to: self.

	differencesPresenter when: #selectionChanged send: #onDifferenceChanged to: self.!

fileInFirstModel
	| pathFile |

	pathFile := ((FileOpenDialog new)
				fileTypes: #(#('UML Model (*.xml)' '*.xml') #('XMI Model (*.xmi)' '*.xmi'));
				caption: 'Select UML Model';
				showModal) ifNil: [^self].
	
	self model fileInFirstModelFrom: pathFile.

	firstNamePresenter value: self model secondElement name!

fileInSecondModel
	| pathFile |

	pathFile := ((FileOpenDialog new)
				fileTypes: #(#('UML Model (*.xml)' '*.xml') #('XMI Model (*.xmi)' '*.xmi'));
				caption: 'Select UML Model';
				showModal) ifNil: [^self].
	
	self model fileInSecondModelFrom: pathFile.

	secondNamePresenter value: self model firstElement name
!

model: aDBModelComparision

	super model: aDBModelComparision.

	firstNamePresenter value: aDBModelComparision firstElement name.
	secondNamePresenter value: aDBModelComparision secondElement name.

	diffTypesPresenter model: (ListModel on: (DBElementDifference allSubclasses select: [:each | each isComboSelectable]) )!

onDifferenceChanged
	| selectedDiff |

	self clearElementsComposite.

	differencesPresenter hasSelection ifFalse: [^detailPresenter model: ''].

	selectedDiff := differencesPresenter selection.
	detailPresenter model: (RichText fromRtf: selectedDiff rtfDetail).

	selectedDiff hasIndividualComposite ifFalse: [^self].

	"selectedDiff firstElement"
	selectedDiff comparedElement defaultComposite createIn: firstElementComposite on: selectedDiff comparedElement.
	selectedDiff comparedElement defaultComposite createIn: secondElementComposite on: selectedDiff oppositeComparedElement.
!

onDiffTypeChange
	| treeModel collection |

	treeModel := TreeModel withRoots: (OrderedCollection with: model).
	collection := model compareElements asOrderedCollection.
	collection remove: model.
	(collection select: [:each | each class == diffTypesPresenter selection]) do: [:each | treeModel add: each asChildOf: model].

	differencesPresenter model: treeModel.

	differencesPresenter expandAll: model.

	self updateNumberOfElements.!

updateNumberOfElements
	| numberOfElements |

	numberOfElements := (differencesPresenter model asOrderedCollection select: [:each | each isKindOf: DBElementDifference]) size.
	totalDifferencePresenter value: numberOfElements.

	colorPresenter view backcolor: ((numberOfElements > 30) ifTrue: [Color red] ifFalse: [Color darkGreen])! !
!DBModelComparisionComposite categoriesFor: #clearElementsComposite!public! !
!DBModelComparisionComposite categoriesFor: #compare!public! !
!DBModelComparisionComposite categoriesFor: #createComponents!public! !
!DBModelComparisionComposite categoriesFor: #createSchematicWiring!public! !
!DBModelComparisionComposite categoriesFor: #fileInFirstModel!public! !
!DBModelComparisionComposite categoriesFor: #fileInSecondModel!public! !
!DBModelComparisionComposite categoriesFor: #model:!public! !
!DBModelComparisionComposite categoriesFor: #onDifferenceChanged!public! !
!DBModelComparisionComposite categoriesFor: #onDiffTypeChange!public! !
!DBModelComparisionComposite categoriesFor: #updateNumberOfElements!public! !

!DBModelComparisionComposite class methodsFor!

defaultModel

	^DBModelComparision new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 0 234 256 98 10 410 8 ##(Smalltalk.ComboBox)  98 17 0 560 98 2 8 1144063491 1025 656 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.SearchPolicy)  8 #identity 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 656 0 8 4294902473 459270 ##(Smalltalk.Message)  8 #printComboName 98 0 784 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  421 71 1122 611 47 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 210 0 0 0 35 0 0 0 3 2 0 0 58 0 0 0] 98 0 1122 193 193 0 27 8 'diffTypes' 410 8 ##(Smalltalk.StaticText)  98 16 0 560 98 2 8 1140850944 262145 1264 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1122 193 193 0 1264 0 8 4294902187 852486 ##(Smalltalk.NullConverter)  0 0 0 994 202 208 98 1 1058 1088 98 2 1122 201 21 1122 611 41 1264 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 100 0 0 0 10 0 0 0 149 1 0 0 30 0 0 0] 98 0 1232 0 27 8 'firstName' 410 1280 98 16 0 560 98 2 8 1140850944 262145 1664 0 0 0 5 0 1346 0 16 1378 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1122 193 193 0 1664 0 8 4294902187 1458 0 0 0 994 202 208 98 1 1058 1088 98 2 1122 1041 21 1122 601 41 1664 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 2 0 0 10 0 0 0 52 3 0 0 30 0 0 0] 98 0 1232 0 27 8 'secondName' 410 1280 98 16 0 560 98 2 8 1140850944 262145 2000 0 0 0 5 0 1346 0 16 1378 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1122 193 193 0 2000 0 8 4294902187 1458 0 0 0 994 202 208 98 1 1058 1088 98 2 1122 1121 71 1122 241 39 2000 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 48 2 0 0 35 0 0 0 168 2 0 0 54 0 0 0] 98 0 1232 0 27 8 'numberOfElements' 410 1280 98 16 0 560 98 2 8 1140850944 1 2336 0 786694 ##(Smalltalk.IndexedColor)  33554437 0 5 0 0 0 2336 0 8 4294902187 1458 0 0 0 994 202 208 98 1 1058 1088 98 2 1122 1381 71 1122 51 41 2336 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 178 2 0 0 35 0 0 0 203 2 0 0 55 0 0 0] 98 0 1232 0 27 8 'color' 0 994 202 208 98 1 1058 1088 98 2 1122 1 1 1122 1931 121 560 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 3 0 0 60 0 0 0] 98 9 1264 1664 410 1280 98 16 0 560 98 2 8 1140850944 1 2800 0 0 0 5 0 0 0 2800 0 8 4294902187 1458 0 0 0 994 202 208 98 2 1058 1088 98 2 1122 851 21 1122 171 41 2800 1058 8 #text: 98 1 8 'Second Model' 2800 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 169 1 0 0 10 0 0 0 254 1 0 0 30 0 0 0] 98 0 1232 0 27 410 1280 98 16 0 560 98 2 8 1140850944 1 3120 0 0 0 5 0 0 0 3120 0 8 4294902187 1458 0 0 0 994 202 208 98 2 1058 1088 98 2 1122 21 21 1122 171 41 3120 1058 3024 98 1 8 'First Model' 3120 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 95 0 0 0 30 0 0 0] 98 0 1232 0 27 410 8 ##(Smalltalk.PushButton)  98 17 0 560 98 2 8 1140924416 1 3424 0 0 0 5 0 0 0 3424 0 8 4294902465 1180998 4 ##(Smalltalk.CommandDescription)  8 #compare 8 'Compare' 1 1 0 0 32 994 202 208 98 3 1058 1088 98 2 1122 21 71 1122 191 51 3424 1058 8 #isEnabled: 98 1 32 3424 1058 3024 98 1 8 'Compare' 3424 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 35 0 0 0 105 0 0 0 60 0 0 0] 98 0 1232 0 27 656 410 1280 98 16 0 560 98 2 8 1140850944 1 3840 0 0 0 5 0 0 0 3840 0 8 4294902187 1458 0 0 0 994 202 208 98 2 1058 1088 98 2 1122 231 81 1122 181 41 3840 1058 3024 98 1 8 'Difference Type' 3840 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 115 0 0 0 40 0 0 0 205 0 0 0 60 0 0 0] 98 0 1232 0 27 2000 2336 1232 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  810 8 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 810 4192 8 #fixedParentRight 1 810 4192 8 #fixedParentTop 1 4256 121 410 432 98 15 0 416 98 2 8 1140850688 131073 4288 0 0 0 5 0 0 0 4288 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 4288 98 2 8 1140850688 131073 4416 0 0 0 5 0 0 0 4416 4354 234 240 98 2 410 432 98 15 0 4416 98 2 8 1140850688 131073 4528 0 0 0 5 0 0 0 4528 4354 234 240 784 32 234 256 98 2 410 8 ##(Smalltalk.ListTreeView)  98 44 0 4528 98 2 8 1140920397 1025 4656 738 202 208 784 0 816 866 8 4278190080 0 5 0 0 0 4656 0 8 4294902419 8 ##(Smalltalk.BasicListAbstract)  8 ##(Smalltalk.IconicListAbstract)  810 8 ##(Smalltalk.IconImageManager)  8 #current 0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Change Type' 1267 8 #left 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin List Presenter' 8 'BasicListAbstract' 8 'doIt' 8 '[:e | e typeString]' 8 #[30 105 226 0 106] 8 #typeString 5008 7 257 0 4994 0 0 5026 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a typeString <= b typeString]' 8 #[30 105 226 0 226 32 130 106] 5152 5168 7 513 0 0 0 4656 0 3 0 0 8 #report 784 0 133217 0 0 32 1050438 3 ##(Smalltalk.VirtualTreeModel)  0 816 202 208 784 930 8 #children 98 0 930 8 #parent 5392 0 930 8 #notNil 5392 8 #unknown 202 8 ##(Smalltalk.IdentitySet)  784 202 8 ##(Smalltalk.WeakIdentitySet)  784 37 1 0 0 0 0 0 0 0 994 202 208 98 2 1058 1088 98 2 1122 1 1 1122 1275 849 4656 1058 3024 98 1 8 'Change Type' 4656 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 125 2 0 0 168 1 0 0] 98 0 1232 0 27 8 'differences' 0 994 202 208 98 1 1058 1088 98 2 1122 1 1 1122 1275 849 4528 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 125 2 0 0 168 1 0 0] 98 1 4656 1232 0 27 5 32 234 256 784 0 994 202 208 98 1 1058 1088 98 2 1122 1 103 1122 1931 849 4416 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 51 0 0 0 197 3 0 0 219 1 0 0] 98 3 4528 410 8 ##(Smalltalk.Splitter)  98 12 0 4416 98 2 8 1140850688 1 6112 0 866 8 4278190080 0 517 0 0 0 6112 994 202 208 98 1 1058 1088 98 2 1122 1275 1 1122 19 849 6112 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 125 2 0 0 0 0 0 0 134 2 0 0 168 1 0 0] 98 0 1232 0 27 410 432 98 15 0 4416 98 2 8 1140850688 131073 6384 0 0 0 5 0 0 0 6384 4354 234 240 784 16 234 256 98 4 410 432 98 15 0 6384 98 2 8 1140850688 131073 6512 0 0 0 5 0 0 0 6512 4354 234 240 784 32 234 256 784 0 994 202 208 98 1 1058 1088 98 2 1122 1 1 1122 639 415 6512 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 207 0 0 0] 98 0 1232 0 27 8 'firstElementComposite' 410 432 98 15 0 6384 98 2 8 1140850688 131073 6800 0 0 0 5 0 0 0 6800 4354 234 240 784 32 234 256 784 0 994 202 208 98 1 1058 1088 98 2 1122 1 433 1122 639 417 6800 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 216 0 0 0 63 1 0 0 168 1 0 0] 98 0 1232 0 27 8 'secondElementComposite' 0 994 202 208 98 1 1058 1088 98 2 1122 1293 1 1122 639 849 6384 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 134 2 0 0 0 0 0 0 197 3 0 0 168 1 0 0] 98 3 6512 410 6128 98 12 0 6384 98 2 8 1140850688 1 7248 0 866 8 4278190080 0 517 0 0 0 7248 994 202 208 98 1 1058 1088 98 2 1122 1 415 1122 639 19 7248 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 207 0 0 0 63 1 0 0 216 0 0 0] 98 0 1232 0 27 6800 1232 0 27 1232 0 27 21 16 234 256 98 2 410 8 ##(Smalltalk.RichTextEdit)  98 18 0 4288 98 2 8 1140920644 1025 7536 0 866 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 10 984134 2 ##(Smalltalk.CommandMenuItem)  1 3522 8 #chooseSelectionFont 8 '&Font...' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 7698 1 3522 8 #bePlain 8 '&Plain' 1 1 0 0 0 7698 1 3522 8 #toggleBold 8 '&Bold' 1 1 0 0 0 7698 1 3522 8 #toggleItalic 8 '&Italic' 1 1 0 0 0 7698 1 3522 8 #toggleUnderlined 8 '&Underlined' 1 1 0 0 0 7778 4097 7650 0 16 98 3 7698 1025 3522 8 #alignParagraphLeft 8 '&Left' 1 1 0 0 0 7698 1025 3522 8 #alignParagraphCenter 8 '&Centre' 1 1 0 0 0 7698 1025 3522 8 #alignParagraphRight 8 '&Right' 1 1 0 0 0 8 '&Align' 0 1 0 0 0 0 0 7778 4097 7698 1 3522 8 #chooseSelectionColor 8 '&Colour...' 1 1 0 0 0 8 '' 0 1 0 0 0 0 0 0 0 7536 0 8 1783437942 1458 0 0 9 0 655622 ##(Smalltalk.EDITSTREAM)  8 #[0 0 0 0 0 0 0 0 64 0 17 2] 994 202 208 98 6 1058 1088 98 2 1122 1 1 1122 1931 85 7536 1058 8 #contextMenu: 98 1 7664 7536 1058 3024 98 1 524550 ##(Smalltalk.RichText)  8 '{\rtf1\ansi\ansicpg1252\deff0\deflang2057{\fonttbl{\f0\froman Times New Roman;}}
\viewkind4\uc1\pard\f0\fs22 
\par }
' 7536 1058 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 7536 1058 8 #isTextModified: 98 1 32 7536 1058 8 #resetCharFormat 784 7536 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 3 0 0 42 0 0 0] 98 0 1232 0 27 8 'detail' 0 994 202 208 98 1 1058 1088 98 2 1122 1 121 1122 1931 951 4288 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 60 0 0 0 197 3 0 0 23 2 0 0] 98 3 7536 410 6128 98 12 0 4288 98 2 8 1140850688 1 9120 0 866 8 4278190080 0 517 0 0 0 9120 994 202 208 98 1 1058 1088 98 2 1122 1 85 1122 1931 19 9120 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 42 0 0 0 197 3 0 0 51 0 0 0] 98 0 1232 0 27 4416 1232 0 27 4146 4176 1 4224 1 4256 121 810 4192 8 #fixedParentBottom 1 234 256 784 0 994 202 208 98 1 1058 1088 98 2 1122 2879 21 1122 1931 1071 416 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 100 9 0 0 33 2 0 0] 98 2 560 4288 1232 0 27 )! !
!DBModelComparisionComposite class categoriesFor: #defaultModel!public! !
!DBModelComparisionComposite class categoriesFor: #resource_Default_view!public!resources-views! !

