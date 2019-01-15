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

cleanTree

	treePresenter model: TreeModel new!

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
!UMLParsedCodeComposite categoriesFor: #cleanTree!public! !
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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 34 2 410 ##(Smalltalk.ScrollingDecorator) 34 18 nil 416 34 2 8 1143996416 131073 544 nil nil nil 5 nil nil nil 544 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout) true 170 192 34 2 410 ##(Smalltalk.MoenTreeView) 34 30 nil 544 34 2 8 1409286144 1 672 590918 3 ##(Smalltalk.TreeModel) nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 525062 ##(Smalltalk.TreeNode) nil nil nil 170 192 8 #() 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 517 nil nil nil 672 788998 ##(Smalltalk.MoenTreeNode) nil 721926 ##(Smalltalk.MoenContour) nil nil nil nil 328198 ##(Smalltalk.Point) 1 1 992 nil nil nil nil nil 7 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.MoenTreeView) 268435459 978 5 3 1049926 1 ##(Smalltalk.IconImageManager) 978 1 1 41 nil 197382 ##(Smalltalk.Pen) nil true 393478 ##(Smalltalk.LOGPEN) 8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 978 33 33 978 19999 19999 114721 1104 978 35 1 nil nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 978 1 1 978 701 367 672 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 94 1 0 0 183 0 0 0] 8 #() 978 193 193 nil 27 8 'treeView' nil 978 1 1 true 978 17 17 1250 138 144 34 1 1314 #createAt:extent: 34 2 978 1 1 978 701 367 544 1394 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 94 1 0 0 183 0 0 0] 34 1 672 1456 nil 27 7 true 170 192 34 2 410 ##(Smalltalk.ScintillaView) 34 50 nil 416 34 2 8 1445007428 1025 1712 721990 2 ##(Smalltalk.ValueHolder) nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil 866 8 4278190080 nil 5 nil nil nil 1712 nil 8 1805569641 852486 ##(Smalltalk.NullConverter) nil nil 9 nil 170 192 34 44 #specialSelector 1182790 1 ##(Smalltalk.ScintillaTextStyle) 33 196934 1 ##(Smalltalk.RGB) 16646145 nil 1 nil nil nil nil #specialSelector nil 1401 nil #number 1954 5 1986 16711169 nil 1 nil nil nil nil #number nil nil nil #symbol 1954 9 786694 ##(Smalltalk.IndexedColor) 33554443 nil 1 nil nil nil nil #symbol nil nil nil #nil 1954 19 2000 nil 1 nil nil nil nil #nil nil 1401 nil #return 1954 23 1986 321 nil 1 nil nil nil nil #return nil 1401 nil #binary 1954 11 2066 33554433 nil 1 nil nil nil nil #binary nil nil nil #self 1954 15 2000 nil 1 nil nil nil nil #self nil 1401 nil #super 1954 17 2000 nil 1 nil nil nil nil #super nil 1401 nil #string 1954 3 1986 16646399 nil 129 nil nil nil nil #string nil nil nil #normal 1954 1 nil nil 1 nil nil nil nil #normal nil nil nil #character 1954 31 1986 16646399 nil 1 nil nil nil nil #character nil 1401 nil #special 1954 25 nil nil 1 nil nil nil nil #special nil 1401 nil #braceMismatch 1954 71 2066 33554459 nil 1 nil nil nil nil #braceMismatch nil 1401 nil #global 1954 21 nil nil 1 nil nil nil nil #global nil 1401 nil #assignment 1954 29 nil nil 1 nil nil nil nil #assignment nil 1401 nil #keywordSend 1954 27 2066 33554437 nil 1 nil nil nil nil #keywordSend nil 1401 nil #braceHighlight 1954 69 2066 33554465 nil 1 nil nil nil nil #braceHighlight nil 1401 nil #indentGuide 1954 75 2066 33554447 nil 1 nil nil nil nil #indentGuide nil nil nil #callTip 1954 77 2066 33554457 2066 33554471 1 nil nil nil nil #callTip nil nil nil #lineNumber 1954 67 nil nil 1 nil nil nil nil #lineNumber nil nil nil #comment 1954 7 1986 65025 nil 1 nil nil nil nil #comment nil nil nil #boolean 1954 13 2000 nil 1 nil nil nil nil #boolean nil 1401 nil 34 256 2240 2208 2016 2528 2048 2144 2560 2176 2192 2096 2336 2112 2288 2368 2352 2256 1968 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 2512 2400 2304 nil 2432 2464 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 1245510 1 ##(Smalltalk.NullScintillaStyler) #normal 170 192 34 2 #default 1641542 1 ##(Smalltalk.ScintillaMarkerDefinition) 1 nil nil nil 1712 #circle nil nil nil nil nil nil 138 ##(Smalltalk.IdentitySet) 848 nil 170 176 848 9215 nil nil nil nil 2448 nil nil 65 nil nil nil 8 '' 3 170 192 34 2 #container 170 192 34 4 #normal 1954 1 nil nil 1 nil nil nil nil #normal nil nil nil #callTip 1954 77 2480 2496 1 nil nil nil nil #callTip nil nil nil nil nil nil nil 1 nil 170 192 34 6 1 1510470 2 ##(Smalltalk.ScintillaIndicatorStyle) 1 1712 65025 3 false 1 nil nil nil nil nil nil 3 2866 3 1712 33423361 5 false 3 nil nil nil nil nil nil 5 2866 5 1712 511 1 false 5 nil nil nil nil nil nil nil nil 170 192 34 6 #Warning 1954 1027 1986 60239 1986 31326207 1 nil nil nil nil #Warning nil nil nil #Error 1954 1031 1986 335 1986 31317503 1 nil nil nil nil #Error nil nil nil #Notification 1954 1029 nil 1986 31185883 1 nil nil nil nil #Notification nil nil nil nil 1250 138 144 34 8 1314 #createAt:extent: 34 2 978 1 377 978 701 125 1712 1314 #textLimit: 8 #(1073741823) 1712 1314 #modificationEventMask: 8 #(4607) 1712 1314 #caretPeriod: 8 #(530) 1712 1314 #margins: 34 1 34 3 985158 2 ##(Smalltalk.ScintillaMargin) 1 1712 1 3 nil nil nil nil 3346 3 1712 33 nil 3 67108863 nil nil 3346 5 1712 1 nil 3 -67108863 nil nil 1712 1314 #tabWidth: 8 #(4) 1712 1314 #maxCompletionListHeight: 8 #(9) 1712 1314 #setLexerLanguage: 8 #(#smalltalk) 1712 1394 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 188 0 0 0 94 1 0 0 250 0 0 0] 8 #() 1456 nil 29 8 'codeView' nil 1250 138 144 34 1 1314 #createAt:extent: 34 2 978 2719 21 978 701 501 416 1394 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 173 6 0 0 4 1 0 0] 34 3 544 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 3728 nil 866 8 4278190080 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 3728 nil 1 #left nil nil nil 978 1 1 978 9 9 nil 3856 nil 1250 138 144 34 1 1314 #createAt:extent: 34 2 978 1 367 978 701 11 3728 1394 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 183 0 0 0 94 1 0 0 188 0 0 0] 8 #() 1456 nil 27 1712 1456 nil 27 )! !
!UMLParsedCodeComposite class categoriesFor: #resource_Default_view!public!resources-views! !

