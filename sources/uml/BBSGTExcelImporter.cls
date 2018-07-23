"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BBSGTExcelImporter
	instanceVariableNames: 'excel pathFile umlClass initialNumber endNumber initialColumn endColumn methods allResults'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBSGTExcelImporter guid: (GUID fromString: '{c9fb207e-5ec1-480e-b0a3-099aa3a960ca}')!
BBSGTExcelImporter comment: ''!
!BBSGTExcelImporter categoriesForClass!Unclassified! !
!BBSGTExcelImporter methodsFor!

allResults
	^allResults!

allResults: anObject
	allResults := anObject!

defaultVM

	^UMLVirtualMachine default!

endColumn
	^endColumn!

endColumn: anObject
	endColumn := anObject!

endNumber
	^endNumber!

endNumber: anObject
	endNumber := anObject!

excel
	^excel!

excel: anObject
	excel := anObject!

getInterval
	| interval firstColumn |

	interval := OrderedCollection new.
	firstColumn := initialColumn first asciiValue.

	1 to: (endColumn first asciiValue - initialColumn first asciiValue + 1) do: [:index | | value |
		value := Character value: (firstColumn + index - 1).
		value := value asString.
		interval add: value.].

	^interval!

initialColumn
	^initialColumn!

initialColumn: anObject
	initialColumn := anObject!

initialize

	super initialize.

	pathFile := ''.
	initialNumber := 1.
	endNumber := 1.
	initialColumn := 'A'.
	endColumn := 'A'.
	methods := OrderedCollection new.
	allResults := LookupTable new.!

initialNumber
	^initialNumber!

initialNumber: anObject
	initialNumber := anObject!

methods
	^methods!

methods: anObject
	methods := anObject!

openExcel

	excel := BBMSExcelReport new openFile: pathFile.
	excel beVisible.
!

pathFile
	^pathFile!

pathFile: anObject
	pathFile := anObject!

relacionarNaN: sourceClass con: targetClass keys: accesorKeys
	"We vinculate <sourceClass> and <targetClass> in a N-N relation using <accesorKey>.
	We add anUMLInstace of <sourceClass> to <targetClass> and viceversa"
	| umlModel sourceInstance targetInstance |

	umlModel := sourceClass umlModel.

	initialNumber to: endNumber do: [:index | | sourceValue targetValue |
		excel setRange: (initialColumn, index printString) cell2: (initialColumn, index printString).
		sourceValue := excel rangeValue trimBlanks.
		sourceInstance := (umlModel getSetupObjectsOf: sourceClass) detect: [:each | (each vmPerform: accesorKeys first asSymbol) smalltalkObject = sourceValue].

		excel setRange: (endColumn, index printString) cell2: (endColumn, index printString).
		targetValue := excel rangeValue trimBlanks.
		targetInstance := (umlModel getSetupObjectsOf: targetClass) detect: [:each | (each vmPerform: accesorKeys second asSymbol) smalltalkObject = targetValue].
		sourceInstance vmPerform: #add: withArguments: (Array with: targetInstance).
		targetInstance vmPerform: #add: withArguments: (Array with: sourceInstance).].
!

runImport
	| objects columnsWithValues |

	objects := OrderedCollection new.

	columnsWithValues := self getInterval.
	initialNumber to: endNumber do: [:index | | newObject |
		newObject := self defaultVM send: #newInstance to: umlClass withAll: #().
		self defaultVM send: #initialize to: newObject withAll: #().
		columnsWithValues keysAndValuesDo: [:eachKey :eachCol |  | value attributeName |
			excel setRange: (eachCol, index printString) cell2: (eachCol, index printString).
			value := excel rangeValue.
			attributeName := ((methods at: eachKey), ':') asSymbol.
			self defaultVM send: attributeName to: newObject withAll: (Array with: (value asUMLObject: self defaultVM)).].
		objects add: newObject].

	allResults at: umlClass name put: objects.

	^objects!

storeAllIn: anUMLModel

	allResults do: [:eachCollection | 
		eachCollection do: [:eachInsntace | anUMLModel storeSetupObject: eachInsntace]]!

umlClass
	^umlClass!

umlClass: anObject
	umlClass := anObject! !
!BBSGTExcelImporter categoriesFor: #allResults!accessing!private! !
!BBSGTExcelImporter categoriesFor: #allResults:!accessing!private! !
!BBSGTExcelImporter categoriesFor: #defaultVM!public! !
!BBSGTExcelImporter categoriesFor: #endColumn!accessing!private! !
!BBSGTExcelImporter categoriesFor: #endColumn:!accessing!private! !
!BBSGTExcelImporter categoriesFor: #endNumber!accessing!private! !
!BBSGTExcelImporter categoriesFor: #endNumber:!accessing!private! !
!BBSGTExcelImporter categoriesFor: #excel!accessing!private! !
!BBSGTExcelImporter categoriesFor: #excel:!accessing!private! !
!BBSGTExcelImporter categoriesFor: #getInterval!basic parametrics!public! !
!BBSGTExcelImporter categoriesFor: #initialColumn!accessing!private! !
!BBSGTExcelImporter categoriesFor: #initialColumn:!accessing!private! !
!BBSGTExcelImporter categoriesFor: #initialize!public! !
!BBSGTExcelImporter categoriesFor: #initialNumber!accessing!private! !
!BBSGTExcelImporter categoriesFor: #initialNumber:!accessing!private! !
!BBSGTExcelImporter categoriesFor: #methods!accessing!private! !
!BBSGTExcelImporter categoriesFor: #methods:!accessing!private! !
!BBSGTExcelImporter categoriesFor: #openExcel!basic parametrics!public! !
!BBSGTExcelImporter categoriesFor: #pathFile!accessing!private! !
!BBSGTExcelImporter categoriesFor: #pathFile:!accessing!private! !
!BBSGTExcelImporter categoriesFor: #relacionarNaN:con:keys:!composed parametrics!public!uml import! !
!BBSGTExcelImporter categoriesFor: #runImport!basic parametrics!public!uml import! !
!BBSGTExcelImporter categoriesFor: #storeAllIn:!public!uml import! !
!BBSGTExcelImporter categoriesFor: #umlClass!accessing!private! !
!BBSGTExcelImporter categoriesFor: #umlClass:!accessing!private! !

!BBSGTExcelImporter class methodsFor!

path: path initNumber: initNumber endNumber: endNumber initCol: initCol endCol: endCol

	^super new initialize
		pathFile: path;
		initialNumber: initNumber;
		endNumber: endNumber;
		initialColumn: initCol;
		endColumn: endCol;
		yourself.!

path: path umlClass: anUMLClass initNumber: initNumber endNumber: endNumber initCol: initCol endCol: endCol methods: anArrayOfString

	^super new initialize
		pathFile: path;
		umlClass: anUMLClass;
		initialNumber: initNumber;
		endNumber: endNumber;
		initialColumn: initCol;
		endColumn: endCol;
		methods: anArrayOfString;
		yourself.! !
!BBSGTExcelImporter class categoriesFor: #path:initNumber:endNumber:initCol:endCol:!public! !
!BBSGTExcelImporter class categoriesFor: #path:umlClass:initNumber:endNumber:initCol:endCol:methods:!public! !

