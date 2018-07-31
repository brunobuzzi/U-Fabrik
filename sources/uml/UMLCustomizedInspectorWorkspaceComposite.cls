"Filed out from Dolphin Smalltalk 7"!

UMLObjectWorkspaceComposite subclass: #UMLCustomizedInspectorWorkspaceComposite
	instanceVariableNames: 'aspectName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLCustomizedInspectorWorkspaceComposite guid: (GUID fromString: '{01f41af7-e4d6-4091-9794-e51604c76ec1}')!
UMLCustomizedInspectorWorkspaceComposite comment: ''!
!UMLCustomizedInspectorWorkspaceComposite categoriesForClass!Unclassified! !
!UMLCustomizedInspectorWorkspaceComposite methodsFor!

evaluate: aString 
	| parsedCode |

	executionSnapshot clearExecutedImplementations;
		exception: nil;
		hasDNU: false;
		hasOnErrorDo: false;
		isCurtailed: false.
	parsedCode := self parser parseExpression: aString.
	executionSnapshot activateSnaphotWith: parsedCode.
	executionSnapshot addTemporary: self topShell getUMLObject named: 'self'.
	^self defaultVirtualMachine executeSequenceNodeReturningAll: parsedCode in: executionSnapshot
!

evaluateIt

	self evaluate: self getSelectedText.

	!

inspectIt
	| result |

	result := self evaluate: self getSelectedText.

	^UMLBasicInspectorShell showOn: result last!

registerUMLObjectAspect: name

	aspectName := name.

	self setText: ('self ', aspectName, ': ().')!

updateAutocompletationWith: aString
! !
!UMLCustomizedInspectorWorkspaceComposite categoriesFor: #evaluate:!evaluations!public!smalltalk parser! !
!UMLCustomizedInspectorWorkspaceComposite categoriesFor: #evaluateIt!evaluations!public! !
!UMLCustomizedInspectorWorkspaceComposite categoriesFor: #inspectIt!evaluations!public! !
!UMLCustomizedInspectorWorkspaceComposite categoriesFor: #registerUMLObjectAspect:!public! !
!UMLCustomizedInspectorWorkspaceComposite categoriesFor: #updateAutocompletationWith:!autocompletion!public! !

!UMLCustomizedInspectorWorkspaceComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ScintillaView)  98 46 0 560 98 2 8 1445007428 1025 720 721990 2 ##(Smalltalk.ValueHolder)  0 32 1310726 ##(Smalltalk.EqualitySearchPolicy)  0 196934 1 ##(Smalltalk.RGB)  22007275 0 5 0 0 0 720 0 8 4294902263 852486 ##(Smalltalk.NullConverter)  0 0 9 0 234 256 98 2 8 #normal 1182726 ##(Smalltalk.ScintillaTextStyle)  1 0 0 1 0 0 0 0 976 0 0 0 98 40 1008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1639686 ##(Smalltalk.SmalltalkExpressionStyler)  1 0 0 32 202 208 672 234 256 98 2 8 #default 1639942 ##(Smalltalk.ScintillaMarkerDefinition)  1 1 786694 ##(Smalltalk.IndexedColor)  33554433 1170 33554471 720 8 #circle 202 208 672 0 63 9215 0 0 0 0 1170 33554447 0 0 0 0 0 234 256 98 6 8 #literalArray 8 '()' 8 #literalBytes 8 '[]' 8 #specialCharacter 8 '()[]<>' 8 '' 3 234 256 98 2 8 #container 944 0 0 0 0 1 0 234 256 98 6 1 1509190 1 ##(Smalltalk.ScintillaIndicatorStyle)  1 720 65025 3 32 1 0 3 1490 3 720 33423361 5 32 3 0 5 1490 5 720 511 1 32 5 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 8 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1682 1201 551 720 1618 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 720 1618 8 #isTextModified: 98 1 32 720 1618 8 #modificationEventMask: 98 1 9215 720 1618 8 #margins: 98 1 98 3 984582 ##(Smalltalk.ScintillaMargin)  1 720 1 3 32 1 1970 3 720 33 1 16 67108863 1970 5 720 1 1 16 -67108863 720 1618 8 #indentationGuides: 98 1 0 720 1618 8 #tabIndents: 98 1 16 720 1618 8 #tabWidth: 98 1 9 720 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 19 1 0 0] 98 0 1682 193 193 0 27 8 'workspace' 0 1554 202 208 98 1 1618 1648 98 2 1682 1 61 1682 1201 551 560 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 88 2 0 0 49 1 0 0] 98 1 720 2240 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 2466 8 #fixedParentRight 1 2466 8 #fixedParentTop 61 2466 8 #fixedParentBottom 1 410 432 98 15 0 416 98 2 8 1140850688 131073 2608 0 0 0 5 0 0 0 2608 498 234 240 98 2 410 432 98 15 0 2608 98 2 8 1140850688 131073 2720 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 2720 788230 ##(Smalltalk.BorderLayout)  1 1 0 0 0 410 8 ##(Smalltalk.Toolbar)  98 25 0 2720 98 2 8 1409288972 131137 2848 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 517 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1682 193 193 0 2848 2930 2960 8 4294902643 234 256 672 234 256 98 4 29461 1115910 ##(Smalltalk.ToolbarIconButton)  29461 0 2848 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #evaluateIt 8 'Evaluate It' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'EvaluateIt.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 1682 33 33 1 29463 3154 29463 0 2848 1 3186 8 #inspectIt 8 'Inspect It' 1 1 3250 0 16 3296 8 'InspectIt.ico' 3344 3378 0 16 0 0 0 0 3 1682 33 33 1 98 2 3168 3424 234 240 98 4 3392 1 3520 3 0 1 0 1682 33 33 1682 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 1554 202 208 98 2 1618 1648 98 2 1682 1 1 1682 301 61 2848 1618 8 #updateSize 672 2848 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 150 0 0 0 30 0 0 0] 98 0 2240 0 27 0 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 1 1 1682 1201 61 2720 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 1 2848 2240 0 27 2434 2480 1 2512 1 2544 1 2576 1 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 1 1 1682 1201 61 2608 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 30 0 0 0] 98 1 2720 2240 0 27 2434 2480 1 2512 1 2544 1 2544 61 234 256 672 0 1554 202 208 98 1 1618 1648 98 2 1682 2879 21 1682 1201 611 416 2178 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 59 1 0 0] 98 2 2608 560 2240 0 27 )! !
!UMLCustomizedInspectorWorkspaceComposite class categoriesFor: #resource_Default_view!public!resources-views! !

