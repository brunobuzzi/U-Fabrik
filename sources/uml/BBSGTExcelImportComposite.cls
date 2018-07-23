"Filed out from Dolphin Smalltalk 7"!

Presenter subclass: #BBSGTExcelImportComposite
	instanceVariableNames: 'excel pathFilePresenter umlClassPresenter initialNumberPresenter endNumberPresenter initialColumnPresenter endColumnPresenter methodsPresenter allResults'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBSGTExcelImportComposite guid: (GUID fromString: '{dc70006b-a7a7-42ab-abe1-192390ef7cb5}')!
BBSGTExcelImportComposite comment: ''!
!BBSGTExcelImportComposite categoriesForClass!Unclassified! !
!BBSGTExcelImportComposite methodsFor!

abrirPlanillaExcel
	|  planilla |

	planilla := FileOpenDialog showModal ifNil: [^self].

	excel := BBMSExcelReport new openFile: planilla.

	pathFilePresenter value: planilla.

	excel beVisible.
!

addMethod
	| instVarNames attributes |

	instVarNames := umlClassPresenter selection allAttributes.
	attributes:= DetalleDeOpciones listaCon: instVarNames para: 'UMLAttributes view' titulo: 'Select instance variable to -Set-'.
	attributes ifNil: [^self].
	methodsPresenter model add: attributes last.


	!

createComponents

	super createComponents.

	pathFilePresenter := self add: TextPresenter new name: 'pathFilePresenter'.
	umlClassPresenter := self add: ListPresenter new name: 'umlClassPresenter'.
	initialNumberPresenter := self add: NumberPresenter new name: 'initialNumberPresenter'.
	endNumberPresenter := self add: NumberPresenter new name: 'endNumberPresenter'.
	initialColumnPresenter := self add: TextPresenter new name: 'initialColumnPresenter'.
	endColumnPresenter := self add: TextPresenter new name: 'endColumnPresenter'.
	methodsPresenter := self add: ListPresenter new name: 'methodsPresenter'.!

defaultVM

	^UMLVirtualMachine default!

getInterval
	| interval firstColumn |

	interval := OrderedCollection new.
	firstColumn := initialColumnPresenter value first asciiValue.

	1 to: (endColumnPresenter value first asciiValue - initialColumnPresenter value first asciiValue + 1) do: [:index | | value |
		value := Character value: (firstColumn + index - 1).
		value := value asString.
		interval add: value.].

	^interval!

onViewClosed

	super onViewClosed.

	^(allResults asUMLObject: self defaultVM) inspectUMLInstance!

onViewOpened

	super onViewOpened.

	umlClassPresenter model: (ListModel on: (self defaultVM getUMLClasses asSortedCollection: [:a :b | a name <= b name])).

	allResults := LookupTable new.!

removeMethod

	methodsPresenter model remove: methodsPresenter selection ifAbsent: []!

runImport
	| objects initialNumber endNumber columnsWithValues |

	objects := OrderedCollection new.
	initialNumber := initialNumberPresenter value.
	endNumber := endNumberPresenter value.

	columnsWithValues := self getInterval.
	initialNumber to: endNumber do: [:index | | newObject |
		newObject := self defaultVM send: #newInstance to: umlClassPresenter selection withAll: #().
		self defaultVM send: #initialize to: newObject withAll: #().
		columnsWithValues keysAndValuesDo: [:eachKey :eachCol |  | value attributeName |
			excel setRange: (eachCol, index printString) cell2: (eachCol, index printString).
			value := excel rangeValue.
			attributeName := ((methodsPresenter model at: eachKey) name, ':') asSymbol.
			self defaultVM send: attributeName to: newObject withAll: (Array with: (value asUMLObject: self defaultVM)).].
		objects add: newObject].

	allResults at: umlClassPresenter selection name put: objects.

	objects inspect! !
!BBSGTExcelImportComposite categoriesFor: #abrirPlanillaExcel!public! !
!BBSGTExcelImportComposite categoriesFor: #addMethod!public! !
!BBSGTExcelImportComposite categoriesFor: #createComponents!public! !
!BBSGTExcelImportComposite categoriesFor: #defaultVM!public! !
!BBSGTExcelImportComposite categoriesFor: #getInterval!public! !
!BBSGTExcelImportComposite categoriesFor: #onViewClosed!public! !
!BBSGTExcelImportComposite categoriesFor: #onViewOpened!public! !
!BBSGTExcelImportComposite categoriesFor: #removeMethod!public! !
!BBSGTExcelImportComposite categoriesFor: #runImport!public! !

!BBSGTExcelImportComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 328198 ##(Smalltalk.Point)  1111 751 517 0 0 0 416 0 234 256 98 14 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916224 1025 592 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 592 0 8 4294902635 787206 ##(Smalltalk.NumberToText)  0 8 '' 0 5 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 291 321 530 111 41 592 850 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 592 850 8 #isTextModified: 98 1 32 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 160 0 0 0 200 0 0 0 180 0 0 0] 98 0 530 193 193 0 27 8 'endNumberPresenter' 410 608 98 16 0 416 98 2 8 1140916224 1025 1168 0 674 704 0 7 0 0 0 1168 0 8 4294902635 738 0 8 '' 0 5 786 202 208 98 3 850 880 98 2 530 291 261 530 109 41 1168 850 960 98 1 994 3 1 3 1168 850 1040 98 1 32 1168 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 130 0 0 0 199 0 0 0 150 0 0 0] 98 0 1136 0 27 8 'initialNumberPresenter' 410 8 ##(Smalltalk.ListView)  98 30 0 416 98 2 8 1409355853 1025 1552 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  674 8 4278190080 0 5 0 0 0 1552 0 8 4294902595 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 2 920646 5 ##(Smalltalk.ListViewColumn)  8 'Attribute Name' 501 8 #left 1778 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 2032 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 2000 2048 7 513 0 0 0 1552 0 1 0 2034 0 0 2066 4 1 2032 8 'doIt' 8 '[:ctx | 
ctx forecolor: ctx item gxColor
]' 8 #[32 105 17 226 0 159 178 106] 8 #item 8 #gxColor 8 #forecolor: 2144 7 257 0 1922 8 'Type' 301 1968 1778 8 #type 98 0 2034 0 0 2066 2 1 1776 8 'doIt' 8 '[:a :b | a type <= b type]' 8 #[30 105 226 0 226 32 130 106] 2320 2352 7 513 0 0 0 1552 0 1 0 0 8 #report 1680 0 131169 0 0 786 202 208 98 2 850 880 98 2 530 411 261 530 621 381 1552 850 8 #text: 98 1 8 'Attribute Name' 1552 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 205 0 0 0 130 0 0 0 3 2 0 0 64 1 0 0] 98 0 1136 0 27 8 'methodsPresenter' 410 608 98 16 0 416 98 2 8 1140916352 1025 2688 0 674 8 4278190080 0 5 0 0 0 2688 0 8 4294902635 852486 ##(Smalltalk.NullConverter)  0 0 5 786 202 208 98 3 850 880 98 2 530 291 451 530 111 41 2688 850 960 98 1 994 3 1 3 2688 850 1040 98 1 32 2688 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 225 0 0 0 200 0 0 0 245 0 0 0] 98 0 1136 0 27 8 'endColumnPresenter' 410 608 98 16 0 416 98 2 8 1140916352 1025 3088 0 674 2768 0 5 0 0 0 3088 0 8 4294902635 2802 0 0 5 786 202 208 98 3 850 880 98 2 530 291 401 530 111 41 3088 850 960 98 1 994 3 1 3 3088 850 1040 98 1 32 3088 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 200 0 0 0 200 0 0 0 220 0 0 0] 98 0 1136 0 27 8 'initialColumnPresenter' 410 8 ##(Smalltalk.ComboBox)  98 17 0 416 98 2 8 1412498947 1025 3456 1634 202 208 1680 0 1712 674 8 4278190080 0 5 0 0 0 3456 0 8 4294902555 1778 2000 98 0 1680 401 786 202 208 98 1 850 880 98 2 530 281 161 530 591 47 3456 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 140 0 0 0 80 0 0 0 179 1 0 0 103 0 0 0] 98 0 1136 0 27 8 'umlClassPresenter' 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 262145 3824 0 0 0 7 0 0 0 3824 0 8 4294902813 2802 0 0 0 786 202 208 98 2 850 880 98 2 530 31 61 530 1051 81 3824 850 2576 98 1 8 'FILE' 3824 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 30 0 0 0 28 2 0 0 70 0 0 0] 98 0 1136 0 27 8 'pathFilePresenter' 0 786 202 208 98 1 850 880 98 2 530 2879 21 530 1111 751 416 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 202 7 0 0 129 1 0 0] 98 16 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 4320 0 0 0 7 0 0 0 4320 0 8 4294902661 1180998 4 ##(Smalltalk.CommandDescription)  8 #abrirPlanillaExcel 8 'Open Excel' 1 1 0 0 32 0 0 0 786 202 208 98 3 850 880 98 2 530 21 1 530 211 51 4320 850 8 #isEnabled: 98 1 32 4320 850 2576 98 1 8 'Open Excel' 4320 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 115 0 0 0 25 0 0 0] 98 0 1136 0 29 3824 410 3840 98 16 0 416 98 2 8 1140850944 1 4736 0 0 0 7 0 0 0 4736 0 8 4294902813 2802 0 0 0 786 202 208 98 2 850 880 98 2 530 31 261 530 241 39 4736 850 2576 98 1 8 'Initial Number' 4736 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 130 0 0 0 135 0 0 0 149 0 0 0] 98 0 1136 0 27 410 3840 98 16 0 416 98 2 8 1140850944 1 5040 0 0 0 7 0 0 0 5040 0 8 4294902813 2802 0 0 0 786 202 208 98 2 850 880 98 2 530 31 321 530 241 39 5040 850 2576 98 1 8 'End Number' 5040 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 160 0 0 0 135 0 0 0 179 0 0 0] 98 0 1136 0 27 1168 592 410 3840 98 16 0 416 98 2 8 1140850944 1 5344 0 0 0 7 0 0 0 5344 0 8 4294902813 2802 0 0 0 786 202 208 98 2 850 880 98 2 530 31 171 530 241 39 5344 850 2576 98 1 8 'UML Class' 5344 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 85 0 0 0 135 0 0 0 104 0 0 0] 98 0 1136 0 27 3456 410 3840 98 16 0 416 98 2 8 1140850944 1 5648 0 0 0 5 0 0 0 5648 0 8 4294902813 2802 0 0 0 786 202 208 98 2 850 880 98 2 530 31 401 530 241 39 5648 850 2576 98 1 8 'Initial Column' 5648 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 200 0 0 0 135 0 0 0 219 0 0 0] 98 0 1136 0 27 410 3840 98 16 0 416 98 2 8 1140850944 1 5952 0 0 0 5 0 0 0 5952 0 8 4294902813 2802 0 0 0 786 202 208 98 2 850 880 98 2 530 31 451 530 241 39 5952 850 2576 98 1 8 'End Column' 5952 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 225 0 0 0 135 0 0 0 244 0 0 0] 98 0 1136 0 27 3088 2688 410 4336 98 20 0 416 98 2 8 1140924416 1 6256 0 0 0 5 0 0 0 6256 0 8 4294902661 4418 8 #runImport 8 'Run Import' 1 1 0 0 32 0 0 0 786 202 208 98 3 850 880 98 2 530 851 681 530 171 71 6256 850 4608 98 1 32 6256 850 2576 98 1 8 'Run Import' 6256 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 169 1 0 0 84 1 0 0 254 1 0 0 119 1 0 0] 98 0 1136 0 29 410 4336 98 20 0 416 98 2 8 1140924416 1 6624 0 0 0 5 0 0 0 6624 0 8 4294902661 4418 8 #addMethod 8 '++' 1 1 0 0 32 0 0 0 786 202 208 98 3 850 880 98 2 530 1041 291 530 61 51 6624 850 4608 98 1 32 6624 850 2576 98 1 8 '++' 6624 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 2 0 0 145 0 0 0 38 2 0 0 170 0 0 0] 98 0 1136 0 29 410 4336 98 20 0 416 98 2 8 1140924416 1 6992 0 0 0 5 0 0 0 6992 0 8 4294902661 4418 8 #removeMethod 8 '--' 1 1 0 0 32 0 0 0 786 202 208 98 3 850 880 98 2 530 1041 351 530 61 51 6992 850 4608 98 1 32 6992 850 2576 98 1 8 '--' 6992 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 2 0 0 175 0 0 0 38 2 0 0 200 0 0 0] 98 0 1136 0 29 1552 1136 0 27 )! !
!BBSGTExcelImportComposite class categoriesFor: #resource_Default_view!public!resources-views! !

