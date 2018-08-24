"Filed out from Dolphin Smalltalk 7"!

UMLEnvironmentTool subclass: #UMLParsedCodeComposite
	instanceVariableNames: 'treePresenter codePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLParsedCodeComposite guid: (GUID fromString: '{5a7e40d9-8aa7-4d98-ac0d-c79e811bafe1}')!
UMLParsedCodeComposite comment: ''!
!UMLParsedCodeComposite categoriesForClass!Unclassified! !
!UMLParsedCodeComposite methodsFor!

createComponents

	super createComponents.

	treePresenter := self add: TreePresenter new name: 'treeView'.
	codePresenter := self add: TextPresenter new name: 'codeView'.!

createSchematicWiring

	super createSchematicWiring.

	treePresenter when: #selectionChanged send: #onNodeSelectionChanged to: self!

model: aStMethodNode

	super model: aStMethodNode.

	treePresenter model: (UMLTreeVisitor new visitMethodNode: aStMethodNode) treeModel!

onNodeSelectionChanged

	treePresenter hasSelection ifFalse: [^self].

	codePresenter model: treePresenter selection printString asValue! !
!UMLParsedCodeComposite categoriesFor: #createComponents!public! !
!UMLParsedCodeComposite categoriesFor: #createSchematicWiring!public! !
!UMLParsedCodeComposite categoriesFor: #model:!public! !
!UMLParsedCodeComposite categoriesFor: #onNodeSelectionChanged!public! !

!UMLParsedCodeComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 34 2 410 ##(Smalltalk.MoenTreeView) 34 30 nil 416 34 2 8 1409286144 1 544 590918 3 ##(Smalltalk.TreeModel) nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 525062 ##(Smalltalk.TreeNode) nil nil nil 170 192 8 #() 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 517 nil nil nil 544 788998 ##(Smalltalk.MoenTreeNode) nil 721926 ##(Smalltalk.MoenContour) nil nil nil nil 328198 ##(Smalltalk.Point) 1 1 864 nil nil nil nil nil 7 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.MoenTreeView) 268435459 850 5 3 1049926 1 ##(Smalltalk.IconImageManager) 850 1 1 41 nil 197382 ##(Smalltalk.Pen) nil true 393478 ##(Smalltalk.LOGPEN) 8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 850 33 33 850 19999 19999 114721 976 850 35 1 nil nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 850 1 1 850 701 367 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 94 1 0 0 183 0 0 0] 8 #() 850 193 193 nil 27 7 true 170 192 34 4 410 ##(Smalltalk.ScintillaView) 34 50 nil 416 34 2 8 1445007428 1025 1376 721990 2 ##(Smalltalk.ValueHolder) nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil 738 8 4278190080 nil 5 nil nil nil 1376 nil 8 1760874089 852486 ##(Smalltalk.NullConverter) nil nil 9 nil 170 192 34 44 #specialSelector 1182790 1 ##(Smalltalk.ScintillaTextStyle) 33 196934 1 ##(Smalltalk.RGB) 16646145 nil 1 nil nil nil nil #specialSelector nil 1401 nil #number 1618 5 1650 16711169 nil 1 nil nil nil nil #number nil nil nil #symbol 1618 9 786694 ##(Smalltalk.IndexedColor) 33554443 nil 1 nil nil nil nil #symbol nil nil nil #nil 1618 19 1664 nil 1 nil nil nil nil #nil nil 1401 nil #return 1618 23 1650 321 nil 1 nil nil nil nil #return nil 1401 nil #binary 1618 11 1730 33554433 nil 1 nil nil nil nil #binary nil nil nil #self 1618 15 1664 nil 1 nil nil nil nil #self nil 1401 nil #super 1618 17 1664 nil 1 nil nil nil nil #super nil 1401 nil #string 1618 3 1650 16646399 nil 129 nil nil nil nil #string nil nil nil #normal 1618 1 nil nil 1 nil nil nil nil #normal nil nil nil #character 1618 31 1650 16646399 nil 1 nil nil nil nil #character nil 1401 nil #special 1618 25 nil nil 1 nil nil nil nil #special nil 1401 nil #braceMismatch 1618 71 1730 33554459 nil 1 nil nil nil nil #braceMismatch nil 1401 nil #global 1618 21 nil nil 1 nil nil nil nil #global nil 1401 nil #assignment 1618 29 nil nil 1 nil nil nil nil #assignment nil 1401 nil #keywordSend 1618 27 1730 33554437 nil 1 nil nil nil nil #keywordSend nil 1401 nil #braceHighlight 1618 69 1730 33554465 nil 1 nil nil nil nil #braceHighlight nil 1401 nil #indentGuide 1618 75 1730 33554447 nil 1 nil nil nil nil #indentGuide nil nil nil #callTip 1618 77 1730 33554457 1730 33554471 1 nil nil nil nil #callTip nil nil nil #lineNumber 1618 67 nil nil 1 nil nil nil nil #lineNumber nil nil nil #comment 1618 7 1650 65025 nil 1 nil nil nil nil #comment nil nil nil #boolean 1618 13 1664 nil 1 nil nil nil nil #boolean nil 1401 nil 34 256 1904 1872 1680 2192 1712 1808 2224 1840 1856 1760 2000 1776 1952 2032 2016 1920 1632 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 2176 2064 1968 nil 2096 2128 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 1245510 1 ##(Smalltalk.NullScintillaStyler) #normal 170 192 34 2 #default 1641542 1 ##(Smalltalk.ScintillaMarkerDefinition) 1 nil nil nil 1376 #circle nil nil nil nil nil nil 138 ##(Smalltalk.IdentitySet) 720 nil 170 176 720 9215 nil nil nil nil 2112 nil nil 65 nil nil nil 8 '' 3 170 192 34 2 #container 170 192 34 4 #normal 1618 1 nil nil 1 nil nil nil nil #normal nil nil nil #callTip 1618 77 2144 2160 1 nil nil nil nil #callTip nil nil nil nil nil nil nil 1 nil 170 192 34 6 1 1510470 2 ##(Smalltalk.ScintillaIndicatorStyle) 1 1376 65025 3 false 1 nil nil nil nil nil nil 3 2530 3 1376 33423361 5 false 3 nil nil nil nil nil nil 5 2530 5 1376 511 1 false 5 nil nil nil nil nil nil nil nil 170 192 34 6 #Warning 1618 1027 1650 60239 1650 31326207 1 nil nil nil nil #Warning nil nil nil #Error 1618 1031 1650 335 1650 31317503 1 nil nil nil nil #Error nil nil nil #Notification 1618 1029 nil 1650 31185883 1 nil nil nil nil #Notification nil nil nil nil 1122 138 144 34 8 1186 #createAt:extent: 34 2 850 1 377 850 701 125 1376 1186 #textLimit: 8 #(1073741823) 1376 1186 #modificationEventMask: 8 #(4607) 1376 1186 #caretPeriod: 8 #(530) 1376 1186 #margins: 34 1 34 3 985158 2 ##(Smalltalk.ScintillaMargin) 1 1376 1 3 nil nil nil nil 3010 3 1376 33 nil 3 67108863 nil nil 3010 5 1376 1 nil 3 -67108863 nil nil 1376 1186 #tabWidth: 8 #(4) 1376 1186 #maxCompletionListHeight: 8 #(9) 1376 1186 #setLexerLanguage: 8 #(#smalltalk) 1376 1266 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 188 0 0 0 94 1 0 0 250 0 0 0] 8 #() 1328 nil 29 8 'codeView' 544 8 'treeView' nil 1122 138 144 34 1 1186 #createAt:extent: 34 2 850 2719 21 850 701 501 416 1266 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 173 6 0 0 4 1 0 0] 34 3 544 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 3408 nil 738 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 3408 nil 1 #left nil nil nil 850 1 1 850 9 9 nil 3536 nil 1122 138 144 34 1 1186 #createAt:extent: 34 2 850 1 367 850 701 11 3408 1266 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 183 0 0 0 94 1 0 0 188 0 0 0] 8 #() 1328 nil 27 1376 1328 nil 27 )! !
!UMLParsedCodeComposite class categoriesFor: #resource_Default_view!public!resources-views! !

