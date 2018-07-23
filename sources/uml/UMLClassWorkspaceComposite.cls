"Filed out from Dolphin Smalltalk 7"!

UMLObjectWorkspaceComposite subclass: #UMLClassWorkspaceComposite
	instanceVariableNames: 'umlClass umlInstance'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLClassWorkspaceComposite guid: (GUID fromString: '{6bcde73a-f5d8-4d95-a697-795e9f1dfc30}')!
UMLClassWorkspaceComposite comment: ''!
!UMLClassWorkspaceComposite categoriesForClass!Unclassified! !
!UMLClassWorkspaceComposite methodsFor!

currentWord
	| caretPosition word |

	caretPosition := self caretPosition.
	self moveToStartOfWord.
	[self workspaceView basicSelectionStart: (self caretPosition - 1) end: caretPosition] on: Error do: [:ex | self workspaceView caretPosition: caretPosition.^''].
	word := self workspaceView selection.
	self workspaceView caretPosition: caretPosition.
	"self workspaceView basicSelectionStart: caretPosition end: caretPosition."
	^word reject: [:each | (each = Character cr) or: [each = Character nl or: [each = Character space] ]]!

getAllNamesForCurrentObject
	| caretPosition className element currentWord |

	caretPosition := self caretPosition.
	self moveToStartOfWord.
	currentWord := self currentWord.
	currentWord isEmpty ifTrue: [^SortedCollection new].
	className := currentWord allButLast.
	self editorView caretPosition: caretPosition.
	element := model at: className ifAbsent: [^SortedCollection new]. 

	^element getAllNames asSortedCollection

!

getAllNamesForEmptyString
	| parsedCode |

	parsedCode := self parser parseMethod: self getAllText.

	^(parsedCode allTemporaryVariables, parsedCode argumentNames,(self selectedClass allAttributes collect: [:each | each name]))
		asSortedCollection

!

getArgumentsMatchingCurrentWord
	|  currentWord |

	currentWord := self currentWord.
	currentWord isEmpty ifTrue: [^SortedCollection new].
	^((self parser parseMethod: self getAllText) argumentNames select: [:each | (currentWord, '*') match: each]) asSortedCollection.

!

getAttributesMatchingCurrentWord
	| objectName currentWord |

	currentWord := self currentWord.
	currentWord isEmpty ifTrue: [^SortedCollection new].
	objectName :=  (currentWord last = Character cr) ifTrue: [currentWord allButLast] ifFalse:[currentWord].
	^((self defaultVirtualMachine "selectedClass" allAttributes select: [:each | (objectName, '*') match: each name]) collect: [:each | each name]) asSortedCollection!

getClassesMatchingCurrentWord
	|  currentWord |

	currentWord := self currentWord.
	currentWord isEmpty ifTrue: [^self getInitialClassObjectNames].
	^(self getInitialClassObjectNames select: [:each | (currentWord, '*') match: each]) asSortedCollection!

getInitialClassObjectNames
	| allNames |
	allNames := self selectedClass getInitialClassObjectNames.
	self hasSelectedImplementation 
		ifTrue: [allNames addAll: self selectedImplementation getInitialClassObjectNames].
	^allNames , model getAllClassesNames!

getTemporariesMatchingCurrentWord
	|  currentWord |

	currentWord := self currentWord.
	currentWord isEmpty ifTrue: [^SortedCollection new].
	^((self parser parseMethod: self getAllText) allTemporaryVariables select: [:each | (currentWord, '*') match: each]) asSortedCollection.

!

hasSelectedClass
	^self topShell hasSelectedClass!

hasSelectedImplementation
	^self topShell hasSelectedImplementation!

onAutoComplete: aString startingAt: start accept: valueHolder
	| word stringToInsert |

	word := self currentWord.

	stringToInsert := (self isStartOfTheWord or: [word size >=  aString size])
		ifFalse: [aString rightString: (aString size - word size) ]
		ifTrue: [aString].

	((stringToInsert occurrencesOf: $:) > 0)
	ifFalse: [self workspaceView insertText: stringToInsert at: self caretPosition]
	ifTrue: [| str implementations |
		str := ''.
		implementations := self defaultVirtualMachine getAllImplementationsNamed: aString asSymbol.
		implementations isEmpty 
		ifTrue: [(stringToInsert subStrings: ':') keysAndValuesDo: [:eachKey :eachValue | str := str, eachValue, ': arg', eachKey printString , ' '.].] 
		ifFalse: [(stringToInsert subStrings: ':') keysAndValuesDo: [:eachKey :eachValue | str := str, eachValue, ': ', (implementations last argumentAt: eachKey), ' '.].].
		
		self workspaceView insertText: str at: self caretPosition].

	valueHolder value: false.

	self updateAutocompletationWith: aString.
	"self editorView hideSelection: true."

	self workspaceView moveToEndOfWord.!

openUMLScript
	| fileStream pathFile |

	pathFile := (FileOpenDialog new)
				caption: 'UML Script...';
				fileTypes: #(#('UML Script (*.ums)' '*.ums'));
				showModal.
	pathFile ifNil: [^self].
	fileStream := FileStream read: pathFile text: false.
	self setText: (Object binaryReadFrom: fileStream).
	fileStream close.!

showAllNamesFor: aString 
	"the user has inserted some incomplete text, so the receiver try to match the incomplete text with some of the autocompletation possibilities"
	| textCollection |

	aString isEmpty ifTrue: [^OrderedCollection new].
	textCollection := aString first isUpperCase
		ifTrue: [self defaultVirtualMachine getAllClassesNames select: [:each | (aString, '*') match: each asString] ] "if is uppercase then is an incomplete class name"
"if not then is: 1. incomplete instVar, 2. incomplete temp variable"
		ifFalse: [ | instVar |
			instVar := (self selectedClass allAttributesNames select: [:each | (aString, '*') match: each]) ,
				((SmalltalkParser parseMethod: self getAllText) allDefinedVariables select: [:each | (aString, '*') match: each]).
			instVar isEmpty 
			ifTrue: [(self defaultVirtualMachine hasClassNamed: aString capitalized) 
				ifTrue: [^self showImplementationsOfClassNamed: aString capitalized] 
				ifFalse: [^self showAutocompletationList: ((self selectedClass allImplementationsAsSortedCollection select: [:each | (aString, '*') match: each methodName]) collect: [:each | each methodName])] ] 
			ifFalse: [instVar, ((self selectedClass allImplementationsAsSortedCollection select: [:each | (aString, '*') match: each methodName]) collect: [:each | each methodName] )] ].

	self showAutocompletationList: textCollection!

showAutocompletationOn: aString
	| currentText |

	aString trimBlanks isEmpty ifTrue: [^self showVariables].
	self topShell hasSelectedClass ifFalse: [^aString].
	currentText := self currentWord trimBlanks.
	(currentText = 'self') ifTrue: [^self showImplementationsOfSelectedClass]."inserted text is -self- we show implementations of the selected class"
	(currentText = 'super') ifTrue: [^self showImplementationsOfSuperClassOfSelectedClass]."inserted text is -super- we show implementations of the selected class"
	(self startSentenceCollection includes: currentText) ifTrue: [^self showVariables].

	(self defaultVirtualMachine hasClassNamed: currentText) ifTrue: [^self showImplementationsOfWrittenClass: currentText]. "the inserted text is anUMLClass"

	(self selectedClass getAllAttributesNames anySatisfy: [:each | each asString = currentText]) "inserted text is an instance variable of the receiver"
	ifTrue: [^self showImplementationsOfInstanceVariable: currentText].

	^self isStartOfTheWord ifTrue: [self showAllImplementations] ifFalse: [self showAllNamesFor: currentText]
	!

showImplementationsOfClassNamed: className
	"the receiver shows the implementations and instances variables of class named <className>"
	| currentClass |

	currentClass := self defaultVirtualMachine getAnyClassNamed: className.

	^self showImplementationsOfClass: currentClass!

showImplementationsOfCurrentInstanceVariable: varName
	"the receiver shows all implementations of instances variables (of receiver class) named <varName>. To get the class of the inst var we use #getType"
	| implementationsNames |

	implementationsNames := ((self selectedClass allAttributes detect: [:each | each name asSymbol = varName asSymbol]) getType 
		allImplementations collect: [:each | each methodName]) asSortedCollection.

	self showAutocompletationList: implementationsNames!

showImplementationsOfInstanceVariable: aString 
	| instVar |

	instVar := self selectedClass atVariableName: aString ifAbsent: [^OrderedCollection new].

	^self showImplementationsOfClassNamed: instVar type name
!

showImplementationsOfSelectedClass
	"the receiber shows the implementations of the selected class in the browser"

	^self showImplementationsOfClass: self selectedClass!

showImplementationsOfSuperClassOfSelectedClass
	"the receiber shows the implementations of the super class of the selected class"

	(self selectedClass == self defaultVirtualMachine objectClass) ifTrue: [^self].

	^self showImplementationsOfClass: self selectedClass umlSuperclass!

showImplementationsOfWrittenClass: className
	"the receiver shows the implementations of the UMLClass named <className>"

	^self showImplementationsOfClass: (self defaultVirtualMachine getAnyClassNamed: className) getMetaclass!

showVariables
	| selectedClass temporaries parsedCode all |

	selectedClass := self topShell selectedClass.
	parsedCode := SmalltalkParser parseMethod: self getAllText.
	temporaries := parsedCode allTemporaryVariables asSortedCollection, parsedCode argumentNames asSortedCollection.

	all := (selectedClass ifNotNil: [:value | value getAllAttributesNames ] ifNil: ['']) , temporaries.

	(self currentWord trimBlanks notEmpty and: [(self startSentenceCollection includes: self currentWord) not])
	ifTrue: [all := all select: [:each | (self currentWord, '*') match: each ]].

	^self showAutocompletationList: all!

sourcePresenterView

	^workspacePresenter view!

updateAutocompletationWith: aString

	lastAutocompletation := UMLAutocompletation label: aString position: self caretPosition linkedTo: umlClass parent: lastAutocompletation.
	^aString
	!

value: aString 
	^workspacePresenter view value: aString ! !
!UMLClassWorkspaceComposite categoriesFor: #currentWord!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #getAllNamesForCurrentObject!public! !
!UMLClassWorkspaceComposite categoriesFor: #getAllNamesForEmptyString!public! !
!UMLClassWorkspaceComposite categoriesFor: #getArgumentsMatchingCurrentWord!public! !
!UMLClassWorkspaceComposite categoriesFor: #getAttributesMatchingCurrentWord!public! !
!UMLClassWorkspaceComposite categoriesFor: #getClassesMatchingCurrentWord!public! !
!UMLClassWorkspaceComposite categoriesFor: #getInitialClassObjectNames!public! !
!UMLClassWorkspaceComposite categoriesFor: #getTemporariesMatchingCurrentWord!public! !
!UMLClassWorkspaceComposite categoriesFor: #hasSelectedClass!public! !
!UMLClassWorkspaceComposite categoriesFor: #hasSelectedImplementation!public! !
!UMLClassWorkspaceComposite categoriesFor: #onAutoComplete:startingAt:accept:!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #openUMLScript!public! !
!UMLClassWorkspaceComposite categoriesFor: #showAllNamesFor:!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #showAutocompletationOn:!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #showImplementationsOfClassNamed:!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #showImplementationsOfCurrentInstanceVariable:!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #showImplementationsOfInstanceVariable:!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #showImplementationsOfSelectedClass!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #showImplementationsOfSuperClassOfSelectedClass!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #showImplementationsOfWrittenClass:!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #showVariables!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #sourcePresenterView!public! !
!UMLClassWorkspaceComposite categoriesFor: #updateAutocompletationWith:!autocompletion!public! !
!UMLClassWorkspaceComposite categoriesFor: #value:!public! !

!UMLClassWorkspaceComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ScintillaView)  98 46 0 560 98 2 8 1445007428 1025 720 721990 2 ##(Smalltalk.ValueHolder)  0 32 1310726 ##(Smalltalk.EqualitySearchPolicy)  0 196934 1 ##(Smalltalk.RGB)  22007275 0 5 0 0 0 720 0 8 4294904701 852486 ##(Smalltalk.NullConverter)  0 0 9 0 234 256 98 2 8 #normal 1182726 ##(Smalltalk.ScintillaTextStyle)  1 0 0 1 0 0 0 0 976 0 0 0 98 40 1008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1377542 ##(Smalltalk.SmalltalkMethodStyler)  1 0 0 32 202 208 672 234 256 98 2 8 #default 1639942 ##(Smalltalk.ScintillaMarkerDefinition)  1 1 786694 ##(Smalltalk.IndexedColor)  33554433 1170 33554471 720 8 #circle 202 208 672 0 63 9215 0 0 0 0 1170 33554447 0 0 0 0 0 234 256 98 6 8 #literalArray 8 '()' 8 #literalBytes 8 '[]' 8 #specialCharacter 8 '()[]<>' 8 '' 3 234 256 98 2 8 #container 944 0 0 0 0 1 0 234 256 98 6 1 1509190 1 ##(Smalltalk.ScintillaIndicatorStyle)  1 720 65025 3 32 1 0 3 1490 3 720 33423361 5 32 3 0 5 1490 5 720 511 1 32 5 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 8 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1682 1201 551 720 1618 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 720 1618 8 #isTextModified: 98 1 32 720 1618 8 #modificationEventMask: 98 1 9215 720 1618 8 #margins: 98 1 98 3 984582 ##(Smalltalk.ScintillaMargin)  1 720 1 3 32 1 1970 3 720 33 1 16 67108863 1970 5 720 1 1 16 -67108863 720 1618 8 #indentationGuides: 98 1 0 720 1618 8 #tabIndents: 98 1 16 720 1618 8 #tabWidth: 98 1 9 720 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 19 1 0 0] 98 0 1682 193 193 0 27 8 'workspace' 0 1554 202 208 98 1 1618 1648 98 2 1682 1 61 1682 1201 551 560 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 88 2 0 0 49 1 0 0] 98 1 720 2240 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 2466 8 #fixedParentRight 1 2466 8 #fixedParentTop 61 2466 8 #fixedParentBottom 1 410 432 98 15 0 416 98 2 8 1140850688 131073 2608 0 0 0 5 0 0 0 2608 498 234 240 98 2 410 432 98 15 0 2608 98 2 8 1140850688 131073 2720 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 2720 498 234 240 98 4 410 8 ##(Smalltalk.Toolbar)  98 25 0 2720 98 2 8 1409288972 131137 2864 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 517 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1682 193 193 0 2864 2946 2976 8 4294905085 234 256 672 234 256 98 12 42109 1115910 ##(Smalltalk.ToolbarIconButton)  42109 0 2864 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #displayIt 8 'Display It' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'DisplayIt.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 1682 33 33 1 42111 3170 42111 0 2864 1 3202 8 #evaluateIt 8 'Evaluate It' 1 1 3266 0 16 3312 8 'EvaluateIt.ico' 3360 3394 0 16 0 0 0 0 3 1682 33 33 1 42113 3170 42113 0 2864 1 3202 8 #inspectIt 8 'Inspect It' 1 1 3266 0 16 3312 8 'InspectIt.ico' 3360 3394 0 16 0 0 0 0 3 1682 33 33 1 42115 3170 42115 0 2864 1 3202 8 #debugIt 8 'Deb&ug It' 1 1 3266 0 16 3312 8 'Debugger.ico' 3360 3394 0 16 0 0 0 0 3 1682 33 33 1 42105 3170 42105 0 2864 1 3202 8 #saveUMLScript 8 'Save UML Script' 1 1 3266 0 16 3312 8 'FileSave.ico' 3360 3394 0 16 0 0 0 0 3 1682 33 33 1 42107 3170 42107 0 2864 1 3202 8 #openUMLScript 8 'Open UML Script' 1 1 3266 0 16 3312 8 'FileOpen.ico' 3360 3394 0 16 0 0 0 0 3 1682 33 33 1 98 7 3824 3952 1050118 ##(Smalltalk.ToolbarSeparator)  0 0 2864 3 0 1 3184 3440 3568 3696 234 240 98 12 3408 5 3920 1 4048 3 3536 7 3664 9 3792 11 0 1 0 1682 33 33 1682 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 1554 202 208 98 2 1618 1648 98 2 1682 1 1 1682 301 61 2864 1618 8 #updateSize 672 2864 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 150 0 0 0 30 0 0 0] 98 0 2240 0 27 2434 2480 1 2480 301 2544 1 2576 1 410 2880 98 25 0 2720 98 2 8 1409288972 131137 4432 0 2946 8 4278190080 0 517 0 2994 0 16 3026 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1682 193 193 0 4432 2946 4512 8 4294905085 234 256 672 234 256 98 2 42117 3170 42117 0 4432 1 3202 8 #addMessageToImplementation 8 'Add Implementation' 1 1 3266 0 16 3312 8 'CompiledMethod.ico' 3360 3394 0 16 0 0 0 0 3 1682 33 33 1 98 2 4098 0 0 4432 3 0 1 4672 234 240 98 2 4768 1 0 1 0 1682 33 33 1682 45 45 0 4194 1 1 1 1554 202 208 98 2 1618 1648 98 2 1682 301 1 1682 901 61 4432 1618 4352 672 4432 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 0 2240 0 27 2434 2480 301 2512 1 2544 1 2576 1 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 1 1 1682 1201 61 2720 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 2 2864 4432 2240 0 27 2434 2480 1 2512 1 2544 1 2576 1 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 1 1 1682 1201 61 2608 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 1 2720 2240 0 27 2434 2480 1 2512 1 2544 1 2544 61 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 2879 21 1682 1201 611 416 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 59 1 0 0] 98 2 2608 560 2240 0 27 )! !
!UMLClassWorkspaceComposite class categoriesFor: #resource_Default_view!public!resources-views! !

