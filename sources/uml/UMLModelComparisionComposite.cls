"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #UMLModelComparisionComposite
	instanceVariableNames: 'firstNamePresenter secondNamePresenter differencesPresenter diffTypesPresenter detailPresenter totalDifferencePresenter colorPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLModelComparisionComposite guid: (GUID fromString: '{63b93338-52d5-4fef-bf8e-0b1f3cf13da6}')!
UMLModelComparisionComposite comment: ''!
!UMLModelComparisionComposite categoriesForClass!Unclassified! !
!UMLModelComparisionComposite methodsFor!

compare

	differencesPresenter model: model compareElements "aTreeModel".

	differencesPresenter expandAll: UMLModelComparision.

	self updateNumberOfElements.!

createComponents

	super createComponents.

	firstNamePresenter := self add: TextPresenter new name: 'firstName'.
	secondNamePresenter := self add: TextPresenter new name: 'secondName'.
	differencesPresenter := self add: ListTreePresenter new name: 'differences'.
	diffTypesPresenter := self add: ListPresenter new name: 'diffTypes'.
	detailPresenter := self add: RichTextPresenter new name: 'detail'.
	totalDifferencePresenter := self add: TextPresenter new name: 'numberOfElements'.
	colorPresenter := self add: TextPresenter new name: 'color'.!

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

model: anUMLModelComparision

	super model: anUMLModelComparision.

	firstNamePresenter value: anUMLModelComparision firstElement name.
	secondNamePresenter value: anUMLModelComparision secondElement name.

	diffTypesPresenter model: (ListModel on: (UMLElementDifference allSubclasses select: [:each | each isComboSelectable]) )!

onDifferenceChanged

	differencesPresenter hasSelection ifFalse: [^detailPresenter model: ''].

	
	detailPresenter model: (RichText fromRtf: differencesPresenter selection rtfDetail)!

onDiffTypeChange
	| treeModel collection |

	treeModel := TreeModel withRoots: (OrderedCollection with: UMLModelComparision).
	collection := model compareElements asOrderedCollection.
	collection remove: UMLModelComparision.
	(collection select: [:each | each class == diffTypesPresenter selection]) do: [:each | treeModel add: each asChildOf: UMLModelComparision].

	differencesPresenter model: treeModel.

	differencesPresenter expandAll: UMLModelComparision.

	self updateNumberOfElements.!

updateNumberOfElements
	| numberOfElements |

	numberOfElements := (differencesPresenter model asOrderedCollection select: [:each | each isKindOf: UMLElementDifference]) size.
	totalDifferencePresenter value: numberOfElements.

	colorPresenter view backcolor: ((numberOfElements > 30) ifTrue: [Color red] ifFalse: [Color darkGreen])! !
!UMLModelComparisionComposite categoriesFor: #compare!public! !
!UMLModelComparisionComposite categoriesFor: #createComponents!public! !
!UMLModelComparisionComposite categoriesFor: #createSchematicWiring!public! !
!UMLModelComparisionComposite categoriesFor: #fileInFirstModel!public! !
!UMLModelComparisionComposite categoriesFor: #fileInSecondModel!public! !
!UMLModelComparisionComposite categoriesFor: #model:!public! !
!UMLModelComparisionComposite categoriesFor: #onDifferenceChanged!public! !
!UMLModelComparisionComposite categoriesFor: #onDiffTypeChange!public! !
!UMLModelComparisionComposite categoriesFor: #updateNumberOfElements!public! !

!UMLModelComparisionComposite class methodsFor!

defaultModel

	^UMLModelComparision new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 8 ##(Smalltalk.ListTreeView)  98 44 0 560 98 2 8 1140920397 1025 688 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.SearchPolicy)  8 #identity 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 688 0 8 4294902633 8 ##(Smalltalk.BasicListAbstract)  8 ##(Smalltalk.IconicListAbstract)  842 8 ##(Smalltalk.IconImageManager)  8 #current 0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Change Type' 1923 8 #left 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin List Presenter' 8 'BasicListAbstract' 8 'doIt' 8 '[:e | e typeString]' 8 #[30 105 226 0 106] 8 #typeString 1152 7 257 0 1138 0 0 1170 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a typeString <= b typeString]' 8 #[30 105 226 0 226 32 130 106] 1296 1312 7 513 0 0 0 688 0 3 0 0 8 #report 816 0 133217 0 0 32 1050438 3 ##(Smalltalk.VirtualTreeModel)  0 848 202 208 816 459270 ##(Smalltalk.Message)  8 #children 98 0 1506 8 #parent 1552 0 1506 8 #notNil 1552 8 #unknown 202 8 ##(Smalltalk.IdentitySet)  816 202 8 ##(Smalltalk.WeakIdentitySet)  816 37 1 0 0 0 0 0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 103 1842 1931 849 688 1778 8 #text: 98 1 8 'Change Type' 688 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 51 0 0 0 197 3 0 0 219 1 0 0] 98 0 1842 193 193 0 27 21 16 234 256 98 4 410 8 ##(Smalltalk.RichTextEdit)  98 18 0 560 98 2 8 1140920644 1025 2064 0 898 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 10 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #chooseSelectionFont 8 '&Font...' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 2226 1 2258 8 #bePlain 8 '&Plain' 1 1 0 0 0 2226 1 2258 8 #toggleBold 8 '&Bold' 1 1 0 0 0 2226 1 2258 8 #toggleItalic 8 '&Italic' 1 1 0 0 0 2226 1 2258 8 #toggleUnderlined 8 '&Underlined' 1 1 0 0 0 2322 4097 2178 0 16 98 3 2226 1025 2258 8 #alignParagraphLeft 8 '&Left' 1 1 0 0 0 2226 1025 2258 8 #alignParagraphCenter 8 '&Centre' 1 1 0 0 0 2226 1025 2258 8 #alignParagraphRight 8 '&Right' 1 1 0 0 0 8 '&Align' 0 1 0 0 0 0 0 2322 4097 2226 1 2258 8 #chooseSelectionColor 8 '&Colour...' 1 1 0 0 0 8 '' 0 1 0 0 0 0 0 0 0 2064 0 8 1788549750 852486 ##(Smalltalk.NullConverter)  0 0 9 0 655622 ##(Smalltalk.EDITSTREAM)  8 #[0 0 0 0 0 0 0 0 80 0 21 2] 1714 202 208 98 6 1778 1808 98 2 1842 1 1 1842 1931 85 2064 1778 8 #contextMenu: 98 1 2192 2064 1778 1904 98 1 524550 ##(Smalltalk.RichText)  8 '{\rtf1\ansi\ansicpg1252\deff0\deflang2057{\fonttbl{\f0\froman Times New Roman;}}
\viewkind4\uc1\pard\f0\fs22 
\par }
' 2064 1778 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 2064 1778 8 #isTextModified: 98 1 32 2064 1778 8 #resetCharFormat 816 2064 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 3 0 0 42 0 0 0] 98 0 2016 0 27 8 'detail' 688 8 'differences' 0 1714 202 208 98 1 1778 1808 98 2 1842 1 121 1842 1931 951 560 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 60 0 0 0 197 3 0 0 23 2 0 0] 98 3 2064 410 8 ##(Smalltalk.Splitter)  98 12 0 560 98 2 8 1140850688 1 3696 0 898 8 4278190080 0 517 0 0 0 3696 1714 202 208 98 1 1778 1808 98 2 1842 1 85 1842 1931 19 3696 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 42 0 0 0 197 3 0 0 51 0 0 0] 98 0 2016 0 27 688 2016 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  842 8 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 842 4016 8 #fixedParentRight 1 842 4016 8 #fixedParentTop 121 842 4016 8 #fixedParentBottom 1 410 432 98 15 0 416 98 2 8 1140850688 131073 4144 0 0 0 5 0 0 0 4144 0 234 256 98 10 410 8 ##(Smalltalk.ComboBox)  98 17 0 4144 98 2 8 1144063491 1025 4240 770 202 208 816 0 848 898 8 4278190080 0 5 0 0 0 4240 0 8 4294902679 1506 8 #printComboName 98 0 816 401 1714 202 208 98 1 1778 1808 98 2 1842 421 71 1842 611 47 4240 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 210 0 0 0 35 0 0 0 3 2 0 0 58 0 0 0] 98 0 2016 0 27 8 'diffTypes' 410 8 ##(Smalltalk.StaticText)  98 16 0 4144 98 2 8 1140850944 262145 4624 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1842 193 193 0 4624 0 8 4294902665 2978 0 0 0 1714 202 208 98 1 1778 1808 98 2 1842 201 21 1842 611 41 4624 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 100 0 0 0 10 0 0 0 149 1 0 0 30 0 0 0] 98 0 2016 0 27 8 'firstName' 410 4640 98 16 0 4144 98 2 8 1140850944 262145 5008 0 0 0 5 0 4706 0 16 4738 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1842 193 193 0 5008 0 8 4294902665 2978 0 0 0 1714 202 208 98 1 1778 1808 98 2 1842 1121 71 1842 241 39 5008 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 48 2 0 0 35 0 0 0 168 2 0 0 54 0 0 0] 98 0 2016 0 27 8 'numberOfElements' 410 4640 98 16 0 4144 98 2 8 1140850944 1 5344 0 786694 ##(Smalltalk.IndexedColor)  33554437 0 5 0 0 0 5344 0 8 4294902665 2978 0 0 0 1714 202 208 98 1 1778 1808 98 2 1842 1381 71 1842 51 41 5344 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 178 2 0 0 35 0 0 0 203 2 0 0 55 0 0 0] 98 0 2016 0 27 8 'color' 410 4640 98 16 0 4144 98 2 8 1140850944 262145 5648 0 0 0 5 0 4706 0 16 4738 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1842 193 193 0 5648 0 8 4294902665 2978 0 0 0 1714 202 208 98 1 1778 1808 98 2 1842 1041 21 1842 601 41 5648 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 2 0 0 10 0 0 0 52 3 0 0 30 0 0 0] 98 0 2016 0 27 8 'secondName' 0 1714 202 208 98 1 1778 1808 98 2 1842 1 1 1842 1931 121 4144 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 3 0 0 60 0 0 0] 98 9 4624 5648 410 4640 98 16 0 4144 98 2 8 1140850944 1 6144 0 0 0 5 0 0 0 6144 0 8 4294902665 2978 0 0 0 1714 202 208 98 2 1778 1808 98 2 1842 851 21 1842 171 41 6144 1778 1904 98 1 8 'Second Model' 6144 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 169 1 0 0 10 0 0 0 254 1 0 0 30 0 0 0] 98 0 2016 0 27 410 4640 98 16 0 4144 98 2 8 1140850944 1 6448 0 0 0 5 0 0 0 6448 0 8 4294902665 2978 0 0 0 1714 202 208 98 2 1778 1808 98 2 1842 21 21 1842 171 41 6448 1778 1904 98 1 8 'First Model' 6448 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 95 0 0 0 30 0 0 0] 98 0 2016 0 27 410 8 ##(Smalltalk.PushButton)  98 17 0 4144 98 2 8 1140924416 1 6752 0 0 0 5 0 0 0 6752 0 8 4294902647 2258 8 #compare 8 'Compare' 1 1 0 0 32 1714 202 208 98 3 1778 1808 98 2 1842 21 71 1842 191 51 6752 1778 8 #isEnabled: 98 1 32 6752 1778 1904 98 1 8 'Compare' 6752 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 35 0 0 0 105 0 0 0 60 0 0 0] 98 0 2016 0 27 4240 410 4640 98 16 0 4144 98 2 8 1140850944 1 7152 0 0 0 5 0 0 0 7152 0 8 4294902665 2978 0 0 0 1714 202 208 98 2 1778 1808 98 2 1842 231 81 1842 181 41 7152 1778 1904 98 1 8 'Difference Type' 7152 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 115 0 0 0 40 0 0 0 205 0 0 0 60 0 0 0] 98 0 2016 0 27 5008 5344 2016 0 27 3970 4000 1 4048 1 4080 1 4080 121 234 256 816 0 1714 202 208 98 1 1778 1808 98 2 1842 2879 21 1842 1931 1071 416 1954 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 100 9 0 0 33 2 0 0] 98 2 4144 560 2016 0 27 )! !
!UMLModelComparisionComposite class categoriesFor: #defaultModel!public! !
!UMLModelComparisionComposite class categoriesFor: #resource_Default_view!public!resources-views! !

