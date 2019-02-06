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

	^((self umlCompiler getArgumentsNamesAndTemporariesFrom: self getAllText),(self selectedClass allAttributes collect: [:each | each name]))
		asSortedCollection

!

getArgumentsMatchingCurrentWord
	|  currentWord |

	currentWord := self currentWord.
	currentWord isEmpty ifTrue: [^SortedCollection new].
	^self umlCompiler getArgumentsNamesFrom: self getAllText satisfying: [:each | (currentWord, '*') match: each].

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
	^self umlCompiler getAllTemporariesIn: self getAllText satisfyng: [:each | (currentWord, '*') match: each].

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
				(self umlCompiler getAllDefinedVariablesFrom: self getAllText satisfying: [:each | (aString, '*') match: each]).
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
	| selectedClass temporaries all |

	selectedClass := self topShell selectedClass.

	temporaries := self umlCompiler getArgumentsNamesAndTemporariesFrom: self getAllText.

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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 852230 ##(Smalltalk.FramingLayout) 170 176 34 4 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 544 nil nil nil 5 nil nil nil 544 482 170 176 34 2 410 ##(Smalltalk.ContainerView) 34 15 nil 544 34 2 8 1140850688 131073 656 nil 721158 ##(Smalltalk.SystemColor) 31 nil 5 nil nil nil 656 482 170 176 34 4 410 ##(Smalltalk.Toolbar) 34 25 nil 656 34 2 8 1409288972 131137 800 nil 786694 ##(Smalltalk.ColorDefault) 8 4278190080 nil 517 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point) 193 193 nil 800 880 8 1949831345 170 192 8 #() 170 192 34 12 23431 1115206 1 ##(Smalltalk.ToolbarIconButton) 800 1 1180998 4 ##(Smalltalk.CommandDescription) #evaluateIt 8 'Evaluate It' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'EvaluateIt.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr7.dll' nil 23431 23433 1106 800 1 1138 #inspectIt 8 'Inspect It' 1 1 1186 nil true 1232 8 'InspectIt.ico' 1280 23433 23435 1106 800 1 1138 #debugIt 8 'Deb&ug It' 1 1 1186 nil true 1232 8 'Debugger.ico' 1280 23435 23425 1106 800 1 1138 #saveUMLScript 8 'Save UML Script' 1 1 1186 nil true 1232 8 'FileSave.ico' 1280 23425 23427 1106 800 1 1138 #openUMLScript 8 'Open UML Script' 1 1 1186 nil true 1232 8 'FileOpen.ico' 1280 23427 23429 1106 800 1 1138 #displayIt 8 'Display It' 1 1 1186 nil true 1232 8 'DisplayIt.ico' 1280 23429 34 7 1472 1552 1049158 1 ##(Smalltalk.ToolbarSeparator) 800 1 1632 1120 1312 1392 nil nil 1 nil 994 33 33 994 45 45 nil 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 994 1 1 994 301 61 800 1890 #updateSizePosted 1056 800 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 150 0 0 0 30 0 0 0] 8 #() 994 193 193 nil 27 1181766 2 ##(Smalltalk.FramingConstraints) 1180678 ##(Smalltalk.FramingCalculation) #fixedParentLeft 1 2112 301 2098 #fixedParentTop 1 2098 #fixedParentBottom 1 410 ##(Smalltalk.Toolbar) 34 25 nil 656 34 2 8 1409288972 131137 2160 nil 880 nil 517 nil 914 nil true 946 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 994 193 193 nil 2160 880 8 1949831345 170 192 1056 170 192 34 2 23437 1106 2160 1 1138 #addMessageToImplementation 8 'Add Implementation' 1 1 1186 nil true 1232 8 'CompiledCode.ico' 1280 23437 34 2 1730 2160 1 2352 nil nil 1 nil 994 33 33 994 45 45 nil 1794 1 1 1 1826 138 144 34 2 1890 #createAt:extent: 34 2 994 301 1 994 901 61 2160 1890 #updateSizePosted 1056 2160 1986 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 8 #() 2048 nil 27 2066 2112 301 2098 #fixedParentRight 1 2128 1 2144 1 170 192 1056 nil 1826 138 144 34 1 1890 #createAt:extent: 34 2 994 1 1 994 1201 61 656 1986 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 34 2 800 2160 2048 nil 27 2066 2112 1 2704 1 2128 1 2144 1 170 192 1056 nil 1826 138 144 34 1 1890 #createAt:extent: 34 2 994 1 1 994 1201 61 544 1986 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 34 1 656 2048 nil 27 2066 2112 1 2704 1 2128 1 2128 61 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 3104 nil nil nil 5 nil nil nil 3104 1180166 ##(Smalltalk.ProportionalLayout) 170 176 1056 false 170 192 34 2 410 ##(Smalltalk.ScintillaView) 34 50 nil 3104 34 2 8 1445007428 1025 3248 721990 2 ##(Smalltalk.ValueHolder) nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil 196934 1 ##(Smalltalk.RGB) 22007275 nil 5 nil nil nil 3248 nil 8 1711656553 852486 ##(Smalltalk.NullConverter) nil nil 9 nil 170 192 34 4 #callTip 1182790 1 ##(Smalltalk.ScintillaTextStyle) 77 786694 ##(Smalltalk.IndexedColor) 33554457 3522 33554471 1 nil nil nil nil #callTip nil nil nil #normal 3490 1 nil nil 1 nil nil nil nil #normal nil nil nil 34 40 3568 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 1377542 ##(Smalltalk.SmalltalkMethodStyler) 1 nil nil false 138 144 1056 170 192 34 2 #default 1641542 1 ##(Smalltalk.ScintillaMarkerDefinition) 1 nil nil nil 3248 #circle nil nil nil nil nil nil 138 ##(Smalltalk.IdentitySet) 1056 nil 170 176 1056 9215 nil nil nil nil 3522 33554447 nil nil 65 nil nil 170 192 34 6 #literalBytes 8 '[]' #literalArray 8 '()' #specialCharacter 8 '()[]<>' 8 '' 3 170 192 34 2 #container 3456 nil nil nil nil 1 nil 170 192 34 6 1 1510470 2 ##(Smalltalk.ScintillaIndicatorStyle) 1 3248 65025 3 false 1 nil nil nil nil nil nil 3 3922 3 3248 33423361 5 false 3 nil nil nil nil nil nil 5 3922 5 3248 511 1 false 5 nil nil nil nil nil nil nil nil 170 192 34 6 #Warning 3490 1027 3378 60239 3378 31326207 1 nil nil nil nil #Warning nil nil nil #Notification 3490 1029 nil 3378 31185883 1 nil nil nil nil #Notification nil nil nil #Error 3490 1031 3378 335 3378 31317503 1 nil nil nil nil #Error nil nil nil nil 1826 138 144 34 7 1890 #createAt:extent: 34 2 994 1 1 994 1201 551 3248 1890 #textLimit: 8 #(1073741823) 3248 1890 #modificationEventMask: 8 #(4607) 3248 1890 #caretPeriod: 8 #(530) 3248 1890 #margins: 34 1 34 3 985158 2 ##(Smalltalk.ScintillaMargin) 1 3248 1 3 nil nil nil nil 4402 3 3248 33 nil 3 67108863 nil nil 4402 5 3248 1 nil 3 -67108863 nil nil 3248 1890 #tabWidth: 8 #(4) 3248 1890 #maxCompletionListHeight: 8 #(9) 3248 1986 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 19 1 0 0] 8 #() 2048 nil 29 8 'workspace' nil 1826 138 144 34 1 1890 #createAt:extent: 34 2 994 1 61 994 1201 551 3104 1986 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 88 2 0 0 49 1 0 0] 34 1 3248 2048 nil 27 2066 2112 1 2704 1 2128 61 2144 1 170 192 1056 nil 1826 138 144 34 1 1890 #createAt:extent: 34 2 994 1521 21 994 1201 611 416 1986 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 248 2 0 0 10 0 0 0 80 5 0 0 59 1 0 0] 34 2 544 3104 2048 nil 27 )! !
!UMLClassWorkspaceComposite class categoriesFor: #resource_Default_view!public!resources-views! !

