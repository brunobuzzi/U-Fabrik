"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLImplementationComposite
	instanceVariableNames: 'commentsPresenter sourceComposite sanityPresenter referencesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLImplementationComposite guid: (GUID fromString: '{c20599f8-1a70-42b9-817b-740a6b12e77f}')!
UMLImplementationComposite comment: ''!
!UMLImplementationComposite categoriesForClass!Unclassified! !
!UMLImplementationComposite methodsFor!

backcolorFor: anUMLImplementation

	anUMLImplementation isTrait ifTrue: [^Color gray].

	^self defaultBackcolor!

createComponents

	super createComponents.

	commentsPresenter := self add: RichTextComposite new name: 'comments'.
	sourceComposite := self add: UMLClassWorkspaceComposite new name: 'sourceComposite'.
	sanityPresenter := self add: TreePresenter new name: 'sanityPresenter'.
	referencesPresenter := self add: ListPresenter new name: 'referencesPresenter'.!

createSchematicWiring

	super createSchematicWiring.

	sanityPresenter when: #selectionChanged send: #onSanityCheckChanged to: self.

	referencesPresenter when: #selectionChanged send: #onReferenceSelectionChanged to: self;
		when: #leftButtonDoubleClicked: send: #onReferenceDoubleClicked: to: self.!

currentCard

	(view viewNamed: 'card') currentCard !

defaultBackcolor

	^(RGB red: 245 green: 230 blue: 167)!

definitionsOf
	| browser methodDefinitions selector classesWithAttributeSelector selectedClass shellBrowser |

	referencesPresenter hasSelection ifFalse: [^self].

	selector := referencesPresenter selection selector.
	methodDefinitions := self defaultVirtualMachine allDefinitionsOf: selector.

	methodDefinitions notEmpty 
	ifTrue: [browser := UMLMethodBrowserShell showOn: methodDefinitions .
		^browser view caption: (browser view caption, '  on <', referencesPresenter selection selector, '>')].

	classesWithAttributeSelector := self defaultVirtualMachine getUMLClasses select: [:each | (each hasVariableNamed: selector asString) or: [each hasVariableNamed: selector allButLast asString]].

	selectedClass := (DetalleDeOpciones listaCon: classesWithAttributeSelector para: 'UMLClasses view' titulo: 'UML Classes with attribute named <', selector, '>') ifNil: [^self] ifNotNil: [:selectedCollection | selectedCollection last].

	shellBrowser := UMLModelShell show.
	shellBrowser selectUMLClass: selectedClass ifAbsent: [].
!

getAllText

	^sourceComposite getAllText!

hasSelectedImplementation
	^true!

model: anUMLImplementation

	super model: anUMLImplementation.

	commentsPresenter model: (anUMLImplementation aspectValue: #comments). 
	sourceComposite setText: anUMLImplementation printMessage.

	sourceComposite enable: anUMLImplementation isTrait not.
	sourceComposite backcolor: (self backcolorFor: anUMLImplementation).

	referencesPresenter model: (ListModel on: anUMLImplementation allMessageNodes)!

onReferenceDoubleClicked: aMouseEvent

	^self definitionsOf!

onReferenceSelectionChanged

	referencesPresenter hasSelection ifFalse: [^self].

	sourceComposite selectionRange: referencesPresenter selection sourceInterval!

onSanityCheckChanged

	sanityPresenter hasSelection ifFalse: [^self].

	sanityPresenter selection hasNode ifFalse: [^self].

	sourceComposite selectionRange: sanityPresenter selection sourceInterval!

referencesTo
	| browser methodReferences selector classesWithAttributeSelector selectedClass shellBrowser |

	referencesPresenter hasSelection ifFalse: [^self].

	selector := referencesPresenter selection selector.
	methodReferences := self defaultVirtualMachine getReferencesTo: selector.

	methodReferences notEmpty 
	ifTrue: [browser := UMLMethodBrowserShell showOn: methodReferences .
		^browser view caption: (browser view caption, '  on <', referencesPresenter selection selector, '>')].

	classesWithAttributeSelector := self defaultVirtualMachine getUMLClasses select: [:each | (each hasVariableNamed: selector asString) or: [each hasVariableNamed: selector allButLast asString]].

	selectedClass := (DetalleDeOpciones listaCon: classesWithAttributeSelector para: 'UMLClasses view' titulo: 'UML Classes with attribute named <', selector, '>') ifNil: [^self] ifNotNil: [:selectedCollection | selectedCollection last].

	shellBrowser := UMLModelShell show.
	shellBrowser selectUMLClass: selectedClass ifAbsent: [].
!

resetSanityCheck

	self setSanityCheckWith: TreeModel new!

selectedClass
	^model!

selectedImplementation
	^model!

selectSanityCard
	| index |

	index := 0.
	[(view viewNamed: 'card') currentCard name = 'sanityPresenter' and: [index < 5]] whileFalse: [
		(view viewNamed: 'card') cycleNextCard.
		index := index + 1.
	].

	[
	(view viewNamed: 'card') currentCard backcolor: Color red.
	(Delay forMilliseconds: 900) wait.
	(view viewNamed: 'card') currentCard backcolor: Color white.] forkAt: 4.
!

setSanityCheckWith: aTreeModel

	sanityPresenter model: aTreeModel.
	sanityPresenter view expandAll.!

setText: aString

	^sourceComposite setText: aString
! !
!UMLImplementationComposite categoriesFor: #backcolorFor:!public! !
!UMLImplementationComposite categoriesFor: #createComponents!public! !
!UMLImplementationComposite categoriesFor: #createSchematicWiring!public! !
!UMLImplementationComposite categoriesFor: #currentCard!public! !
!UMLImplementationComposite categoriesFor: #defaultBackcolor!public! !
!UMLImplementationComposite categoriesFor: #definitionsOf!public! !
!UMLImplementationComposite categoriesFor: #getAllText!public! !
!UMLImplementationComposite categoriesFor: #hasSelectedImplementation!public! !
!UMLImplementationComposite categoriesFor: #model:!public! !
!UMLImplementationComposite categoriesFor: #onReferenceDoubleClicked:!public! !
!UMLImplementationComposite categoriesFor: #onReferenceSelectionChanged!public! !
!UMLImplementationComposite categoriesFor: #onSanityCheckChanged!public! !
!UMLImplementationComposite categoriesFor: #referencesTo!public! !
!UMLImplementationComposite categoriesFor: #resetSanityCheck!public! !
!UMLImplementationComposite categoriesFor: #selectedClass!public! !
!UMLImplementationComposite categoriesFor: #selectedImplementation!public! !
!UMLImplementationComposite categoriesFor: #selectSanityCard!public! !
!UMLImplementationComposite categoriesFor: #setSanityCheckWith:!public! !
!UMLImplementationComposite categoriesFor: #setText:!public! !

!UMLImplementationComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 560 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLClassWorkspaceComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 882 1189 871 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 82 2 0 0 179 1 0 0] 98 0 882 193 193 0 27 5 32 234 256 98 2 560 8 'sourceComposite' 0 754 202 208 98 1 818 848 98 2 882 3199 21 882 1801 871 416 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 195 9 0 0 189 1 0 0] 98 3 560 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 1216 0 642 8 4278190080 0 517 0 0 0 1216 754 202 208 98 1 818 848 98 2 882 1189 1 882 19 871 1216 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 82 2 0 0 0 0 0 0 91 2 0 0 179 1 0 0] 98 0 992 0 27 410 8 ##(Smalltalk.SlideyInneyOuteyThing)  98 23 0 416 98 2 8 1409286144 131073 1488 0 642 8 4278190080 0 517 0 0 0 1488 655878 ##(Smalltalk.CardLayout)  202 208 98 3 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Comments' 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  6 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Comments'' iconBlock: [String icon]' 8 #[29 30 34 112 31 161 106 194 105] 1696 1728 80 8 #icon 8 #text:iconBlock: 1760 11 1 0 0 410 576 98 14 0 410 8 ##(Smalltalk.SlidingCardTray)  98 22 0 1488 98 2 8 1140850688 131073 1936 0 642 1584 0 5 0 0 0 1936 1616 234 256 98 6 410 8 ##(Smalltalk.ListView)  98 30 0 1936 98 2 8 1409388621 1025 2064 590662 2 ##(Smalltalk.ListModel)  202 208 976 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  642 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 2 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #definitionsOf 8 'Definitions Of' 1 1 0 0 0 2306 1 2338 8 #referencesTo 8 'References To' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 2064 0 8 4294903069 459270 ##(Smalltalk.Message)  8 #printMessage 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Messages' 501 8 #left 2498 2528 98 0 8 ##(Smalltalk.SortedCollection)  0 0 2064 0 1 0 0 8 #report 976 0 131171 0 0 754 202 208 98 3 818 848 98 2 882 1 37 882 533 819 2064 818 8 #contextMenu: 98 1 2272 2064 818 8 #text: 98 1 8 'Messages' 2064 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 10 1 0 0 171 1 0 0] 98 0 992 0 27 8 'referencesPresenter' 410 8 ##(Smalltalk.TreeView)  98 27 0 1936 98 2 8 1409352231 1025 3056 590918 3 ##(Smalltalk.TreeModel)  0 2208 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 976 642 8 4278190080 0 5 0 0 0 3056 0 8 4294904693 2498 8 #name 98 0 2560 2592 0 0 0 0 0 234 240 976 17 8 #smallIcons 1 0 754 202 208 98 1 818 848 98 2 882 1 37 882 533 819 3056 930 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 10 1 0 0 171 1 0 0] 98 0 992 0 27 8 'sanityPresenter' 1904 8 'comments' 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 1488 98 2 8 1140916866 1 3536 2146 202 208 98 3 1712 1698 8 'References' 1746 0 0 1778 6 1 1808 8 'doIt' 8 '(CardLabel text: ''References'' iconBlock: [InputState icon])' 8 #[29 30 34 112 31 161 106 194 105] 1696 3680 8 ##(Smalltalk.InputState)  1872 1888 3696 11 1 0 0 1698 8 'Sanity Check' 1746 0 0 1778 6 1 1808 8 'doIt' 8 'CardLabel text: ''Sanity Check'' iconBlock: [Exception icon]' 8 #[29 30 34 112 31 161 106 194 105] 1696 3808 8 ##(Smalltalk.Exception)  1872 1888 3824 11 1 0 0 0 2208 642 1584 0 1 0 0 0 3536 0 8 4294903129 8 ##(Smalltalk.BasicListAbstract)  2560 2592 0 0 0 0 0 3328 0 0 0 0 0 754 202 208 98 3 818 848 98 2 882 1 1 882 595 871 3536 818 8 #basicSelectionsByIndex: 98 1 98 1 5 3536 818 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 3536 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 41 1 0 0 179 1 0 0] 98 0 992 0 27 0 1488 882 33 33 1049862 ##(Smalltalk.ButtonInteractor)  1936 0 590342 ##(Smalltalk.Rectangle)  882 5 3 882 37 35 1 2338 8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 754 202 208 98 1 818 848 98 2 882 9 9 882 533 855 1936 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 4 0 0 0 14 1 0 0 175 1 0 0] 98 3 1904 2064 3056 992 0 27 98 2 8 1140850688 131073 1904 0 642 8 4278190080 0 5 0 0 0 1904 690 8 ##(Smalltalk.RichTextComposite)  736 0 754 202 208 98 1 818 848 98 2 882 1 37 882 533 819 1904 930 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 10 1 0 0 171 1 0 0] 976 992 0 27 1666 3664 2064 1666 3792 3056 2064 234 256 98 2 1936 8 'card' 0 3536 1936 882 201 201 401 1 31 0 0 754 202 208 98 1 818 848 98 2 882 1207 1 882 595 871 1488 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 91 2 0 0 0 0 0 0 132 3 0 0 179 1 0 0] 98 2 1936 3536 992 0 27 992 0 27 )! !
!UMLImplementationComposite class categoriesFor: #resource_Default_view!public!resources-views! !

