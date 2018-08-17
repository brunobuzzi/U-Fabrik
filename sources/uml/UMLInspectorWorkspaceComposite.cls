"Filed out from Dolphin Smalltalk 7"!

UMLObjectWorkspaceComposite subclass: #UMLInspectorWorkspaceComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLInspectorWorkspaceComposite guid: (GUID fromString: '{08e6ff17-b801-482e-8486-d7c557cae052}')!
UMLInspectorWorkspaceComposite comment: ''!
!UMLInspectorWorkspaceComposite categoriesForClass!Unclassified! !
!UMLInspectorWorkspaceComposite methodsFor!

currentWord
	| caretPosition word |

	caretPosition := self caretPosition.
	self moveToStartOfWord.
	[self workspaceView basicSelectionStart: (self caretPosition - 1) end: caretPosition] on: Error do: [:ex | self workspaceView caretPosition: caretPosition.^''].
	word := self workspaceView selection.
	self workspaceView caretPosition: caretPosition.
	"self workspaceView basicSelectionStart: caretPosition end: caretPosition."
	^word reject: [:each | (each = Character cr) or: [each = Character nl or: [each = Character space] ]]!

evaluate: aString 
	| parsedCode |

	parsedCode := self umlCompiler parseExpression: aString.

	^self defaultVirtualMachine executeSequenceNode: parsedCode forReceiver: (self topShell selectedObject ifNil: [^nil]) in: nil
!

onAutoComplete: aString startingAt: start accept: valueHolder
	| word stringToInsert |

	word := self currentWord.

	stringToInsert := self isStartOfTheWord 
		ifFalse: [aString rightString: (aString size - word size)]
		ifTrue: [aString].

	((stringToInsert occurrencesOf: $:) > 0)
	ifFalse: [self workspaceView insertText: stringToInsert at: self caretPosition]
	ifTrue: [| str implementations |
		str := ''.
		implementations := self defaultVirtualMachine getAllImplementationsNamed: aString asSymbol.
		implementations isEmpty 
		ifTrue: [(stringToInsert subStrings: ':') keysAndValuesDo: [:eachKey :eachValue | str := str, eachValue, ': arg', eachKey printString , ' '.].] 
		ifFalse: [(stringToInsert subStrings: ':') keysAndValuesDo: [:eachKey :eachValue | str := str, eachValue, ': ', (implementations last argumentAt: eachKey) , ' '.].].
		
		self workspaceView insertText: str at: self caretPosition].

	valueHolder value: false.

	self updateAutocompletationWith: aString.
	"self editorView hideSelection: true."

	self workspaceView moveToEndOfWord.!

selectedObject

	^parentPresenter selectedObject!

showAllNamesFor: aString 
	"the user has inserted some incomplete text, so the receiver try to match the incomplete text with some of the autocompletation possibilities"
	| instVar |

	aString first isUpperCase 
	ifTrue: [^self showAutocompletationList: (self defaultVirtualMachine getAllClassesNames select: [:each | (aString, '*') match: each asString]). ]. "if is uppercase then is an incomplete class name"
"if not then is: 1. incomplete instVar, 2. incomplete temp variable"
	(aString = 'self') ifTrue: [^self showImplementationsOfClass: self selectedClass].

	self selectedObject ifNil: [^self showAutocompletationList: OrderedCollection new].
	(self selectedObject allAttributes keys includes: aString asSymbol) 
	ifTrue: [^self showImplementationsOfClass: (self selectedObject atVariableName: aString asSymbol) umlClass].

	(self selectedObject allAttributes keys anySatisfy: [:each | (aString, '*') match: each])
	ifTrue: [^self showAutocompletationList: (self selectedObject allAttributes keys select: [:each | (aString, '*') match: each]) asOrderedCollection]. 

	(self defaultVirtualMachine hasClassNamed: aString capitalized) ifTrue: [^self showImplementationsOfClassNamed: aString capitalized].

	self showAutocompletationList: OrderedCollection new!

showAutocompletationOn: aString
	| currentText |

	aString isEmpty ifTrue: [^self showVariables].

	currentText := self currentWord trimBlanks.
	currentText isEmpty ifTrue: [^self showVariables].
	(self startSentenceCollection includes: currentText) ifTrue: [^self showVariables].

	(self defaultVirtualMachine hasClassNamed: currentText) ifTrue: [^self showImplementationsOfWrittenClass: currentText]. "the inserted text is anUMLClass"

	^self isStartOfTheWord ifTrue: [self showAllImplementations] ifFalse: [self showAllNamesFor: currentText]
	!

showVariables
	| selectedClass temporaries all |

	selectedClass := self topShell selectedClass.

	temporaries := self umlCompiler getArgumentsNamesAndTemporariesFrom: self getAllText.

	all := selectedClass getAllAttributesNames, temporaries.

	(self currentWord trimBlanks notEmpty and: [(self startSentenceCollection includes: self currentWord) not])
	ifTrue: [all := all select: [:each | (self currentWord, '*') match: each ]].

	^self showAutocompletationList: all! !
!UMLInspectorWorkspaceComposite categoriesFor: #currentWord!autocompletion!public! !
!UMLInspectorWorkspaceComposite categoriesFor: #evaluate:!evaluations!public!smalltalk parser! !
!UMLInspectorWorkspaceComposite categoriesFor: #onAutoComplete:startingAt:accept:!autocompletion!public! !
!UMLInspectorWorkspaceComposite categoriesFor: #selectedObject!public! !
!UMLInspectorWorkspaceComposite categoriesFor: #showAllNamesFor:!autocompletion!public! !
!UMLInspectorWorkspaceComposite categoriesFor: #showAutocompletationOn:!autocompletion!public! !
!UMLInspectorWorkspaceComposite categoriesFor: #showVariables!autocompletion!public! !

!UMLInspectorWorkspaceComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 2 410 432 98 15 0 560 98 2 8 1140850688 131073 672 0 0 0 5 0 0 0 672 788230 ##(Smalltalk.BorderLayout)  1 1 0 0 0 410 8 ##(Smalltalk.Toolbar)  98 25 0 672 98 2 8 1409288972 131137 768 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 517 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 768 850 880 8 4294905085 234 256 98 0 234 256 98 12 10737 1115910 ##(Smalltalk.ToolbarIconButton)  10737 0 768 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #saveUMLScript 8 'Save UML Script' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'FileSave.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 978 33 33 1 10739 1106 10739 0 768 1 1138 8 #openUMLScript 8 'Open UML Script' 1 1 1202 0 16 1248 8 'FileOpen.ico' 1296 1330 0 16 0 0 0 0 3 978 33 33 1 10741 1106 10741 0 768 1 1138 8 #displayIt 8 'Display It' 1 1 1202 0 16 1248 8 'DisplayIt.ico' 1296 1330 0 16 0 0 0 0 3 978 33 33 1 10743 1106 10743 0 768 1 1138 8 #evaluateIt 8 'Evaluate It' 1 1 1202 0 16 1248 8 'EvaluateIt.ico' 1296 1330 0 16 0 0 0 0 3 978 33 33 1 10745 1106 10745 0 768 1 1138 8 #inspectIt 8 'Inspect It' 1 1 1202 0 16 1248 8 'InspectIt.ico' 1296 1330 0 16 0 0 0 0 3 978 33 33 1 10747 1106 10747 0 768 1 1138 8 #debugIt 8 'Deb&ug It' 1 1 1202 0 16 1248 8 'Debugger.ico' 1296 1330 0 16 0 0 0 0 3 978 33 33 1 98 7 1120 1376 1050118 ##(Smalltalk.ToolbarSeparator)  0 0 768 3 0 1 1504 1632 1760 1888 234 240 98 12 1600 5 1344 1 1472 3 1728 7 1856 9 1984 11 0 1 0 978 33 33 978 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 978 1 1 978 301 61 768 2226 8 #updateSize 1056 768 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 150 0 0 0 30 0 0 0] 98 0 978 193 193 0 27 410 8 ##(Smalltalk.ReferenceView)  98 14 0 672 98 2 8 1140850688 131073 2432 0 850 8 4278190080 0 5 0 0 0 2432 1180166 ##(Smalltalk.ResourceIdentifier)  784 8 #resource_UML_Common 0 2162 202 208 98 1 2226 2256 98 2 978 301 1 978 901 61 2432 2354 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 1056 2416 0 27 234 256 1056 0 2162 202 208 98 1 2226 2256 98 2 978 1 1 978 1201 61 672 2354 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 2 768 2432 2416 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 2946 8 #fixedParentRight 1 2946 8 #fixedParentTop 1 2946 8 #fixedParentBottom 1 234 256 1056 0 2162 202 208 98 1 2226 2256 98 2 978 1 1 978 1201 61 560 2354 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 1 672 2416 0 27 2914 2960 1 2992 1 3024 1 3024 61 410 432 98 15 0 416 98 2 8 1140850688 131073 3280 0 0 0 5 0 0 0 3280 1180166 ##(Smalltalk.ProportionalLayout)  234 240 1056 32 234 256 98 2 410 8 ##(Smalltalk.ScintillaView)  98 46 0 3280 98 2 8 1445007428 1025 3424 721990 2 ##(Smalltalk.ValueHolder)  0 32 1310726 ##(Smalltalk.EqualitySearchPolicy)  0 196934 1 ##(Smalltalk.RGB)  22007275 0 5 0 0 0 3424 0 8 4294904701 852486 ##(Smalltalk.NullConverter)  0 0 9 0 234 256 98 2 8 #normal 1182726 ##(Smalltalk.ScintillaTextStyle)  1 0 0 1 0 0 0 0 3680 0 0 0 98 40 3712 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1639686 ##(Smalltalk.SmalltalkExpressionStyler)  1 0 0 32 202 208 1056 234 256 98 2 8 #default 1639942 ##(Smalltalk.ScintillaMarkerDefinition)  1 1 786694 ##(Smalltalk.IndexedColor)  33554433 3874 33554471 3424 8 #circle 202 208 1056 0 63 9215 0 0 0 0 3874 33554447 0 0 0 0 0 234 256 98 6 8 #literalArray 8 '()' 8 #literalBytes 8 '[]' 8 #specialCharacter 8 '()[]<>' 8 '' 3 234 256 98 2 8 #container 3648 0 0 0 0 1 0 234 256 98 6 1 1509190 1 ##(Smalltalk.ScintillaIndicatorStyle)  1 3424 65025 3 32 1 0 3 4194 3 3424 33423361 5 32 3 0 5 4194 5 3424 511 1 32 5 0 2162 202 208 98 8 2226 2256 98 2 978 1 1 978 1201 551 3424 2226 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 3424 2226 8 #isTextModified: 98 1 32 3424 2226 8 #modificationEventMask: 98 1 9215 3424 2226 8 #margins: 98 1 98 3 984582 ##(Smalltalk.ScintillaMargin)  1 3424 1 3 32 1 4610 3 3424 33 1 16 67108863 4610 5 3424 1 1 16 -67108863 3424 2226 8 #indentationGuides: 98 1 0 3424 2226 8 #tabIndents: 98 1 16 3424 2226 8 #tabWidth: 98 1 9 3424 2354 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 19 1 0 0] 98 0 2416 0 27 8 'workspace' 0 2162 202 208 98 1 2226 2256 98 2 978 1 61 978 1201 551 3280 2354 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 88 2 0 0 49 1 0 0] 98 1 3424 2416 0 27 2914 2960 1 2992 1 3024 61 3056 1 234 256 1056 0 2162 202 208 98 1 2226 2256 98 2 978 2879 21 978 1201 611 416 2354 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 59 1 0 0] 98 2 560 3280 2416 0 27 )! !
!UMLInspectorWorkspaceComposite class categoriesFor: #resource_Default_view!public!resources-views! !

