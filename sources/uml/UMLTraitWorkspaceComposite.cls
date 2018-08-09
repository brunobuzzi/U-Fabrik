"Filed out from Dolphin Smalltalk 7"!

UMLBasicWorkspaceComposite subclass: #UMLTraitWorkspaceComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLTraitWorkspaceComposite guid: (GUID fromString: '{c6fc87e7-3951-469c-9c25-f7b3e18af2f2}')!
UMLTraitWorkspaceComposite comment: ''!
!UMLTraitWorkspaceComposite categoriesForClass!Unclassified! !
!UMLTraitWorkspaceComposite methodsFor!

currentWord
	| caretPosition word |

	caretPosition := self caretPosition.
	self moveToStartOfWord.
	[self workspaceView basicSelectionStart: (self caretPosition - 1) end: caretPosition] on: Error do: [:ex | self workspaceView caretPosition: caretPosition.^''].
	word := self workspaceView selection.
	self workspaceView caretPosition: caretPosition.
	"self workspaceView basicSelectionStart: caretPosition end: caretPosition."
	^word reject: [:each | (each = Character cr) or: [each = Character nl or: [each = Character space] ]]!

hasSelectedClass
	^self topShell hasSelectedClass!

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

showAllNamesFor: aString 
	"the user has inserted some incomplete text, so the receiver try to match the incomplete text with some of the autocompletation possibilities"
	| textCollection |

	aString isEmpty ifTrue: [^OrderedCollection new].
	textCollection := aString first isUpperCase
		ifTrue: [self defaultVirtualMachine getAllClassesNames select: [:each | (aString, '*') match: each asString] ] "if is uppercase then is an incomplete class name"
"if not then is: 1. incomplete instVar, 2. incomplete temp variable"
		ifFalse: [ | instVar |
			instVar := self umlCompiler getAllDefinedVariablesFrom: self getAllText satisfying: [:each | (aString, '*') match: each].
			instVar isEmpty 
			ifTrue: [(self defaultVirtualMachine hasClassNamed: aString capitalized) 
				ifTrue: [^self showImplementationsOfClassNamed: aString capitalized] 
				ifFalse: [^self showAutocompletationList: ((self selectedClass allImplementationsAsSortedCollection select: [:each | (aString, '*') match: each methodName]) collect: [:each | each methodName])] ] 
			ifFalse: [instVar, ((self selectedClass allImplementationsAsSortedCollection select: [:each | (aString, '*') match: each methodName]) collect: [:each | each methodName] )] ].

	self showAutocompletationList: textCollection!

showAutocompletationOn: aString
	| currentText |

	aString trimBlanks isEmpty ifTrue: [^self showVariables].
	parentPresenter hasSelectedTrait ifFalse: [^aString].
	currentText := self currentWord trimBlanks.
	(currentText = 'self') ifTrue: [^self showImplementationsOfSelectedClass]."inserted text is -self- we show implementations of the selected class"
	(currentText = 'super') ifTrue: [^self showRequiredImplementations]."inserted text is -super- we show implementations of the selected class"
	(self startSentenceCollection includes: currentText) ifTrue: [^self showVariables].

	(self defaultVirtualMachine hasClassNamed: currentText) ifTrue: [^self showImplementationsOfWrittenClass: currentText]. "the inserted text is anUMLClass"

	(self selectedClass getAllAttributesNames anySatisfy: [:each | each asString = currentText]) "inserted text is an instance variable of the receiver"
	ifTrue: [^self showImplementationsOfInstanceVariable: currentText].

	^self isStartOfTheWord ifTrue: [self showAllImplementations] ifFalse: [self showAllNamesFor: currentText]
	!

showRequiredImplementations

	^self showAutocompletationList: parentPresenter requirementsNames!

showVariables
	| selectedClass temporaries all |

	selectedClass := self topShell selectedClass.
	temporaries := self umlCompiler getArgumentsNamesAndTemporariesFrom: self getAllText.

	all := selectedClass getAllAttributesNames, temporaries.

	(self currentWord trimBlanks notEmpty and: [(self startSentenceCollection includes: self currentWord) not])
	ifTrue: [all := all select: [:each | (self currentWord, '*') match: each ]].

	^self showAutocompletationList: all asSortedCollection! !
!UMLTraitWorkspaceComposite categoriesFor: #currentWord!autocompletion!public! !
!UMLTraitWorkspaceComposite categoriesFor: #hasSelectedClass!public! !
!UMLTraitWorkspaceComposite categoriesFor: #onAutoComplete:startingAt:accept:!autocompletion!public! !
!UMLTraitWorkspaceComposite categoriesFor: #showAllNamesFor:!autocompletion!public! !
!UMLTraitWorkspaceComposite categoriesFor: #showAutocompletationOn:!autocompletion!public! !
!UMLTraitWorkspaceComposite categoriesFor: #showRequiredImplementations!autocompletion!public! !
!UMLTraitWorkspaceComposite categoriesFor: #showVariables!autocompletion!public! !

!UMLTraitWorkspaceComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 2 410 432 98 15 0 560 98 2 8 1140850688 131073 672 0 0 0 5 0 0 0 672 788230 ##(Smalltalk.BorderLayout)  1 1 0 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 672 98 2 8 1140850688 131073 768 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 768 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  739 1 1090 463 61 768 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 113 1 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 0 1090 193 193 0 27 410 928 98 25 0 672 98 2 8 1409288972 131137 1216 0 850 8 4278190080 0 517 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1090 193 193 0 1216 850 1296 8 4294906121 234 256 1184 234 256 98 12 60745 1115910 ##(Smalltalk.ToolbarIconButton)  60745 0 1216 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #evaluateIt 8 'Evaluate It' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'EvaluateIt.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 1090 33 33 1 60749 1490 60749 0 1216 1 1522 8 #inspectIt 8 'Inspect It' 1 1 1586 0 16 1632 8 'InspectIt.ico' 1680 1714 0 16 0 0 0 0 3 1090 33 33 1 60729 1490 60729 0 1216 1 1522 8 #saveUMLScript 8 'Save UML Script' 1 1 1586 0 16 1632 8 'FileSave.ico' 1680 1714 0 16 0 0 0 0 3 1090 33 33 1 60731 1490 60731 0 1216 1 1522 8 #openUMLScript 8 'Open UML Script' 1 1 1586 0 16 1632 8 'FileOpen.ico' 1680 1714 0 16 0 0 0 0 3 1090 33 33 1 60733 1490 60733 0 1216 1 1522 8 #displayIt 8 'Display It' 1 1 1586 0 16 1632 8 'DisplayIt.ico' 1680 1714 0 16 0 0 0 0 3 1090 33 33 1 60751 1490 60751 0 1216 1 1522 8 #debugIt 8 'Deb&ug It' 1 1 1586 0 16 1632 8 'Debugger.ico' 1680 1714 0 16 0 0 0 0 3 1090 33 33 1 98 7 1888 2016 1050118 ##(Smalltalk.ToolbarSeparator)  0 0 1216 3 0 1 2144 1504 1760 2272 234 240 98 12 2240 5 1984 1 2112 3 1728 7 1856 9 2368 11 0 1 0 1090 33 33 1090 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 962 202 208 98 2 1026 1056 98 2 1090 1 1 1090 301 61 1216 1026 8 #updateSize 1184 1216 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 150 0 0 0 30 0 0 0] 98 0 1200 0 27 410 928 98 25 0 672 98 2 8 1409288972 131137 2736 0 850 8 4278190080 0 517 0 1314 0 16 1346 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1090 193 193 0 2736 850 2816 8 4294906121 234 256 1184 234 256 98 2 61403 1490 61403 0 2736 1 1522 8 #addMessageToImplementation 8 'Add Implementation' 1 1 1586 0 16 1632 8 'CompiledMethod.ico' 1680 1714 0 16 0 0 0 0 3 1090 33 33 1 98 2 2418 0 0 2736 3 0 1 2976 234 240 98 2 3072 1 0 1 0 1090 33 33 1090 45 45 0 2514 1 1 1 962 202 208 98 2 1026 1056 98 2 1090 301 1 1090 439 61 2736 1026 2672 1184 2736 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 0 0 0 0 113 1 0 0 30 0 0 0] 98 0 1200 0 27 234 256 1184 0 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 1201 61 672 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 3 1216 2736 768 1200 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 3602 8 #fixedParentRight 1 3602 8 #fixedParentTop 1 3602 8 #fixedParentBottom 1 234 256 1184 0 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 1201 61 560 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 1 672 1200 0 27 3570 3616 1 3648 1 3680 1 3680 61 410 432 98 15 0 416 98 2 8 1140850688 131073 3936 0 0 0 5 0 0 0 3936 1180166 ##(Smalltalk.ProportionalLayout)  234 240 1184 32 234 256 98 2 410 8 ##(Smalltalk.ScintillaView)  98 46 0 3936 98 2 8 1445007428 1025 4080 721990 2 ##(Smalltalk.ValueHolder)  0 32 1310726 ##(Smalltalk.EqualitySearchPolicy)  0 196934 1 ##(Smalltalk.RGB)  22007275 0 5 0 0 0 4080 0 8 4294906217 852486 ##(Smalltalk.NullConverter)  0 0 9 0 234 256 98 2 8 #normal 1182726 ##(Smalltalk.ScintillaTextStyle)  1 0 0 1 0 0 0 0 4336 0 0 0 98 40 4368 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1377542 ##(Smalltalk.SmalltalkMethodStyler)  1 0 0 32 202 208 1184 234 256 98 2 8 #default 1639942 ##(Smalltalk.ScintillaMarkerDefinition)  1 1 786694 ##(Smalltalk.IndexedColor)  33554433 4530 33554471 4080 8 #circle 202 208 1184 0 63 9215 0 0 0 0 4530 33554447 0 0 0 0 0 234 256 98 6 8 #literalArray 8 '()' 8 #literalBytes 8 '[]' 8 #specialCharacter 8 '()[]<>' 8 '' 3 234 256 98 2 8 #container 4304 0 0 0 0 1 0 234 256 98 6 1 1509190 1 ##(Smalltalk.ScintillaIndicatorStyle)  1 4080 65025 3 32 1 0 3 4850 3 4080 33423361 5 32 3 0 5 4850 5 4080 511 1 32 5 0 962 202 208 98 8 1026 1056 98 2 1090 1 1 1090 1201 551 4080 1026 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 4080 1026 8 #isTextModified: 98 1 32 4080 1026 8 #modificationEventMask: 98 1 9215 4080 1026 8 #margins: 98 1 98 3 984582 ##(Smalltalk.ScintillaMargin)  1 4080 1 3 32 1 5266 3 4080 33 1 16 67108863 5266 5 4080 1 1 16 -67108863 4080 1026 8 #indentationGuides: 98 1 0 4080 1026 8 #tabIndents: 98 1 16 4080 1026 8 #tabWidth: 98 1 9 4080 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 19 1 0 0] 98 0 1200 0 27 8 'workspace' 0 962 202 208 98 1 1026 1056 98 2 1090 1 61 1090 1201 551 3936 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 88 2 0 0 49 1 0 0] 98 1 4080 1200 0 27 3570 3616 1 3648 1 3680 61 3712 1 234 256 1184 0 962 202 208 98 1 1026 1056 98 2 1090 2879 21 1090 1201 611 416 1138 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 59 1 0 0] 98 2 560 3936 1200 0 27 )! !
!UMLTraitWorkspaceComposite class categoriesFor: #resource_Default_view!public!resources-views! !

