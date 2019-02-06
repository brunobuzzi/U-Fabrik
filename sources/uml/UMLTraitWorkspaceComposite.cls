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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 852230 ##(Smalltalk.FramingLayout) 170 176 34 4 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 544 nil nil nil 5 nil nil nil 544 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 34 2 410 ##(Smalltalk.ScintillaView) 34 50 nil 544 34 2 8 1445007428 1025 704 721990 2 ##(Smalltalk.ValueHolder) nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil 196934 1 ##(Smalltalk.RGB) 22007275 nil 5 nil nil nil 704 nil 8 1711656553 852486 ##(Smalltalk.NullConverter) nil nil 9 nil 170 192 34 4 #callTip 1182790 1 ##(Smalltalk.ScintillaTextStyle) 77 786694 ##(Smalltalk.IndexedColor) 33554457 978 33554471 1 nil nil nil nil #callTip nil nil nil #normal 946 1 nil nil 1 nil nil nil nil #normal nil nil nil 34 40 1024 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 1377542 ##(Smalltalk.SmalltalkMethodStyler) 1 nil nil false 138 144 656 170 192 34 2 #default 1641542 1 ##(Smalltalk.ScintillaMarkerDefinition) 1 nil nil nil 704 #circle nil nil nil nil nil nil 138 ##(Smalltalk.IdentitySet) 656 nil 170 176 656 9215 nil nil nil nil 978 33554447 nil nil 65 nil nil 170 192 34 6 #literalBytes 8 '[]' #literalArray 8 '()' #specialCharacter 8 '()[]<>' 8 '' 3 170 192 34 2 #container 912 nil nil nil nil 1 nil 170 192 34 6 1 1510470 2 ##(Smalltalk.ScintillaIndicatorStyle) 1 704 65025 3 false 1 nil nil nil nil nil nil 3 1378 3 704 33423361 5 false 3 nil nil nil nil nil nil 5 1378 5 704 511 1 false 5 nil nil nil nil nil nil nil nil 170 192 34 6 #Warning 946 1027 834 60239 834 31326207 1 nil nil nil nil #Warning nil nil nil #Notification 946 1029 nil 834 31185883 1 nil nil nil nil #Notification nil nil nil #Error 946 1031 834 335 834 31317503 1 nil nil nil nil #Error nil nil nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 7 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 1714 1201 551 704 1666 #textLimit: 8 #(1073741823) 704 1666 #modificationEventMask: 8 #(4607) 704 1666 #caretPeriod: 8 #(530) 704 1666 #margins: 34 1 34 3 985158 2 ##(Smalltalk.ScintillaMargin) 1 704 1 3 nil nil nil nil 1906 3 704 33 nil 3 67108863 nil nil 1906 5 704 1 nil 3 -67108863 nil nil 704 1666 #tabWidth: 8 #(4) 704 1666 #maxCompletionListHeight: 8 #(9) 704 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 19 1 0 0] 8 #() 1714 193 193 nil 29 8 'workspace' nil 1602 138 144 34 1 1666 #createAt:extent: 34 2 1714 1 61 1714 1201 551 544 2034 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 88 2 0 0 49 1 0 0] 34 1 704 2096 nil 27 1181766 2 ##(Smalltalk.FramingConstraints) 1180678 ##(Smalltalk.FramingCalculation) #fixedParentLeft 1 2322 #fixedParentRight 1 2322 #fixedParentTop 61 2322 #fixedParentBottom 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 2400 nil nil nil 5 nil nil nil 2400 482 170 176 34 2 410 ##(Smalltalk.ContainerView) 34 15 nil 2400 34 2 8 1140850688 131073 2512 nil nil nil 5 nil nil nil 2512 788230 ##(Smalltalk.BorderLayout) 1 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 2512 34 2 8 1140850688 131073 2608 nil 786694 ##(Smalltalk.ColorDefault) 8 4278190080 nil 5 nil nil nil 2608 1180230 1 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 1602 138 144 34 1 1666 #createAt:extent: 34 2 1714 631 1 1714 571 61 2608 2034 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 59 1 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 656 2096 nil 27 410 ##(Smalltalk.Toolbar) 34 25 nil 2512 34 2 8 1409288972 131137 2896 nil 2688 nil 517 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1714 193 193 nil 2896 2688 8 1949831345 170 192 656 170 192 34 12 21439 1115206 1 ##(Smalltalk.ToolbarIconButton) 2896 1 1180998 4 ##(Smalltalk.CommandDescription) #saveUMLScript 8 'Save UML Script' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'FileSave.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr7.dll' nil 21439 21441 3122 2896 1 3154 #openUMLScript 8 'Open UML Script' 1 1 3202 nil true 3248 8 'FileOpen.ico' 3296 21441 21443 3122 2896 1 3154 #displayIt 8 'Display It' 1 1 3202 nil true 3248 8 'DisplayIt.ico' 3296 21443 21445 3122 2896 1 3154 #evaluateIt 8 'Evaluate It' 1 1 3202 nil true 3248 8 'EvaluateIt.ico' 3296 21445 21447 3122 2896 1 3154 #inspectIt 8 'Inspect It' 1 1 3202 nil true 3248 8 'InspectIt.ico' 3296 21447 21449 3122 2896 1 3154 #debugIt 8 'Deb&ug It' 1 1 3202 nil true 3248 8 'Debugger.ico' 3296 21449 34 7 3136 3328 1049158 1 ##(Smalltalk.ToolbarSeparator) 2896 1 3408 3488 3568 3648 nil nil 1 nil 1714 33 33 1714 45 45 nil 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 1602 138 144 34 2 1666 #createAt:extent: 34 2 1714 1 1 1714 301 61 2896 1666 #updateSizePosted 656 2896 2034 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 150 0 0 0 30 0 0 0] 8 #() 2096 nil 27 410 ##(Smalltalk.Toolbar) 34 25 nil 2512 34 2 8 1409288972 131137 4016 nil 2688 nil 517 nil 2962 nil true 2994 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1714 193 193 nil 4016 2688 8 1949831345 170 192 656 170 192 34 2 21451 3122 4016 1 3154 #addMessageToImplementation 8 'Add Implementation' 1 1 3202 nil true 3248 8 'CompiledCode.ico' 3296 21451 34 2 3746 4016 1 4208 nil nil 1 nil 1714 33 33 1714 45 45 nil 3810 1 1 1 1602 138 144 34 2 1666 #createAt:extent: 34 2 1714 301 1 1714 331 61 4016 1666 #updateSizePosted 656 4016 2034 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 150 0 0 0 0 0 0 0 59 1 0 0 30 0 0 0] 8 #() 2096 nil 27 170 192 656 nil 1602 138 144 34 1 1666 #createAt:extent: 34 2 1714 1 1 1714 1201 61 2512 2034 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 34 3 2896 4016 2608 2096 nil 27 2290 2336 1 2352 1 2368 1 2384 1 170 192 656 nil 1602 138 144 34 1 1666 #createAt:extent: 34 2 1714 1 1 1714 1201 61 2400 2034 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 34 1 2512 2096 nil 27 2290 2336 1 2352 1 2368 1 2368 61 170 192 656 nil 1602 138 144 34 1 1666 #createAt:extent: 34 2 1714 1521 21 1714 1201 611 416 2034 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 248 2 0 0 10 0 0 0 80 5 0 0 59 1 0 0] 34 2 2400 544 2096 nil 27 )! !
!UMLTraitWorkspaceComposite class categoriesFor: #resource_Default_view!public!resources-views! !

