"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BBMSExcelReport
	instanceVariableNames: 'excel range'
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
BBMSExcelReport guid: (GUID fromString: '{f16a22cc-c02f-4e11-bdf5-7e4f9171967e}')!
BBMSExcelReport comment: ''!
!BBMSExcelReport categoriesForClass!Unclassified! !
!BBMSExcelReport methodsFor!

autoFitColumn: column

	self setRange: (column, '1') cell2: (column, '1').
	range entireColumn autoFit.!

autoFitRow: row

	self setRange: ('A', row printString) cell2: ('A', row printString).
	range entireRow autoFit.!

beVisible
	excel visible: 0 rhs: true!

closeFile

	excel workbooks close: 0. 
	excel quit.
	range := nil.
	excel := nil.!

constantAt: stringKey

	^ExcelConstants at: stringKey!

createGridHeadFrom: cell to: cell2 

	self setRange: cell cell2: cell2.
	range borders lineStyle: 1.
	range borders weight: 2.
	range borders color: RGB black asParameter!

createNew

	excel := Excel_Application new.
	excel workbooks add: 0. 
	excel visible: 0 rhs: true.
	^self!

createReportFrom: cell1 head: cell2 body: cell3 to: cell4

	self createReportHeadFrom: cell1 to: cell2.
	self createGridHeadFrom: cell3 to: cell4.
	self setRange: cell1 cell2: cell4.
!

createReportHeadFrom: cell to: cell2

	self setRange: cell cell2: cell2 .
	range borders lineStyle: 1.
	range borders color: RGB black asParameter.
	range interior color: RGB gray asParameter
!

defaultProtectPassword

	^''!

excel
	^excel!

excel: anObject
	excel := anObject!

excelCaption: aString

	^excel caption: aString!

excelWorkbooks

	^excel workbooks!

next: anIntger of: stringCell

	^(Character value: (stringCell first asInteger + anIntger)) asString!

nextOf: stringCell

	^self next: 1 of: stringCell!

openFile: pathFile
	^self openFile: pathFile showApplication: false!

openFile: pathFile showApplication: aBoolean

	excel := Excel_Application new.
	excel workbooks open: pathFile lcid: 0. 
	aBoolean ifTrue: [excel visible: 0 rhs: true.].
!

openFileReadOnly: pathFile

	excel := Excel_Application new.
	excel workbooks  
		open: pathFile
		 updateLinks: VARIANT unspecified
		 readOnly: true asParameter
		 format: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 ignoreReadOnlyRecommended: false asParameter
		 origin: VARIANT unspecified
		 delimiter: VARIANT unspecified
		 editable: VARIANT unspecified
		 notify: VARIANT unspecified
		 converter: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 local: VARIANT unspecified
		 corruptLoad: VARIANT unspecified
		 lcid: 0.
	excel visible: 0 rhs: true.
	self protectActiveSheet.!

protectActiveSheet
	^excel activeSheet protect: self defaultProtectPassword
		drawingObjects: true asVariant
		contents: true asVariant
		scenarios: true asVariant
		userInterfaceOnly: true asVariant
		allowFormattingCells: true asVariant
		allowFormattingColumns: true asVariant
		allowFormattingRows: true asVariant
		allowInsertingColumns: true asVariant
		allowInsertingRows: true asVariant
		allowInsertingHyperlinks: true asVariant
		allowDeletingColumns: true asVariant
		allowDeletingRows: true asVariant
		allowSorting: true asVariant
		allowFiltering: true asVariant
		allowUsingPivotTables: true asVariant!

range
	^range!

range: anObject
	range := anObject!

rangeFontBold: beBold
	| font |

	font := range font.
	font bold: beBold!

rangeFontBold: beBold italic: beItalic size: aNumber
	| font |

	font := range font.
	font bold: beBold ; italic: beItalic; size: aNumber.!

rangeFormat: excelConstant cell: cell cell2: cell2

	self rangeFormat: excelConstant 
		cell: cell 
		cell2: cell2 
		number: VARIANT unspecified 
		font: VARIANT unspecified 
		alignment:  VARIANT unspecified 
		border: VARIANT unspecified 
		pattern: VARIANT unspecified 
		width: VARIANT unspecified!

rangeFormat: excelConstant cell: cell cell2: cell2 number: number font: font alignment:  alignment border: border pattern: pattern width: width

	self setRange: cell cell2: cell2.
	range autoFormat: excelConstant 
			number: number font: font
			alignment: alignment
			border: border 
			pattern: pattern
			width: width!

rangeValue

	^range value!

rangeValue: anObject

	^range value2: anObject printString!

reportColumnFrom: anArray startingAt: cellArray

	^self reportColumnFrom: anArray startingAt: cellArray caption: ''!

reportColumnFrom: anArray startingAt: cellArray caption: aString
	| ySize font |

	self setRange: (self xNext: 0 y: -1 of: cellArray) cell2: (self xNext: 0 y: -1 of: cellArray).
	font := range font.
	font bold: true.
	self rangeValue: aString.

	ySize := anArray size.
	self createGridHeadFrom: (self xNext: 0 of: cellArray)
		to: (self xNext: 1 y: (ySize - 1) of: cellArray).

	self createReportHeadFrom: (self xNext: 0 of: cellArray) to: (self xNext: 0 y: (ySize - 1) of: cellArray).

	anArray keysAndValuesDo: [:eachColumn :eachArray |  
		eachArray keysAndValuesDo: [:eachElement :eachValue | 
			self setRange: (self xNext: (eachElement - 1) y: (eachColumn - 1) of: cellArray) cell2: (self xNext: (eachElement - 1) y: (eachColumn - 1) of: cellArray).
			self rangeValue: eachValue.].].!

reportFrom: aListPresenter

	^self reportFrom: aListPresenter startingAt: #('B' 2)!

reportFrom: aListPresenter startingAt: cellArray
	| report values  |

	report := OrderedCollection new.
	values := OrderedCollection new.
	aListPresenter view columnsList do: [:column | values add: column text.].
	report add: values asArray.
	aListPresenter model do: [:each |
		values := OrderedCollection new.
		aListPresenter view columnsList do: [:column | 
			values add: (column getTextBlock value: each).].
		report add: values asArray.].

	^self reportRowFrom: report startingAt: (Array with: cellArray first with: cellArray second)!

reportInitialDataFrom: anArray startingAt: cellArray
	^self reportInitialDataFrom: anArray startingAt: cellArray caption: ''!

reportInitialDataFrom: anArray startingAt: cellArray caption: aString
	| font |

	self setRange: (self xNext: 0 y: -1 of: cellArray)
		cell2: (self xNext: 0 y: -1 of: cellArray).
	font := range font.
	font bold: true.
	self rangeValue: aString.
	self createReportFrom: (self xNext: 0 of: cellArray)
		head: (self xNext: anArray size - 1 of: cellArray)
		body: (self yNext: 1 of: cellArray)
		to: (self xNext: anArray size - 1 y: 1 of: cellArray).
	anArray keysAndValuesDo:
			[:eachKey :eachValue | 
			self setRange: (self xNext: eachKey - 1 of: cellArray)
				cell2: (self xNext: eachKey - 1 of: cellArray).
			self rangeValue: eachValue first.
			self setRange: (self xNext: eachKey - 1 y: 1 of: cellArray)
				cell2: (self xNext: eachKey - 1 y: 1 of: cellArray).
			self rangeValue: eachValue second]!

reportRowFrom: anArray startingAt: cellArray

	^self reportRowFrom: anArray startingAt: cellArray caption: ''!

reportRowFrom: anArray startingAt: cellArray caption: aString
	| xSize font |

	self setRange: (self xNext: 0 y: -1 of: cellArray) cell2: (self xNext: 0 y: -1 of: cellArray).
	font := range font.
	font bold: true.
	self rangeValue: aString.

	xSize := anArray first size.
	self createReportHeadFrom: (self xNext: 0 of: cellArray)
		to: (self xNext: (xSize - 1) of: cellArray).

	self createGridHeadFrom: (self xNext: 0 y: 1 of: cellArray)
		to: (self xNext: (xSize - 1) y: (anArray size - 1) of: cellArray).

	anArray keysAndValuesDo: [:eachColumn :eachArray |  
		eachArray keysAndValuesDo: [:eachRow :eachValue | 
			self setRange: (self xNext: (eachRow - 1) y: (eachColumn - 1) of: cellArray) cell2: (self xNext: (eachRow - 1) y: (eachColumn - 1) of: cellArray).
			self rangeValue: eachValue.].].!

reportRowFromNC: anArray startingAt: cellArray
	| xSize |

	xSize := anArray first size.

	self createGridHeadFrom: (cellArray first, cellArray second printString)
		to:(self xNext: (xSize - 1) y: (anArray size - 1) of: cellArray).

	anArray keysAndValuesDo: [:eachColumn :eachArray |  
		eachArray keysAndValuesDo: [:eachRow :eachValue | 
			self setRange: (self xNext: (eachRow - 1) y: (eachColumn - 1) of: cellArray) cell2: (self xNext: (eachRow - 1) y: (eachColumn - 1) of: cellArray).
			(anArray first == eachArray) ifTrue: [self rangeFontBold: true.].
			self rangeValue: eachValue.].].!

saveAs: pathFile
	| newFile |

	newFile := (File splitPathFrom: pathFile), (File splitStemFrom:  pathFile).
	excel activeWorkbook
		saveAs: newFile
		 fileFormat: xlExcel9795
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 accessMode: 1
		 conflictResolution: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 textCodepage: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 local: VARIANT unspecified
		 lcid: 0.
	^newFile!

saveAsHtml: pathFile
	" Saves the receiver in HTML file format "
	| newFile |

	newFile := (File splitPathFrom: pathFile), (File splitStemFrom:  pathFile).
	excel activeWorkbook
		saveAs: newFile
		 fileFormat: xlHtml
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 accessMode: 1
		 conflictResolution: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 textCodepage: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 local: VARIANT unspecified
		 lcid: 0.
	^newFile!

setRange: stringCell cell2: stringCell2

	range := excel range: stringCell cell2: stringCell2.
"	range rows autoFit.
	range columns autoFit."!

setRange: stringCell cell2: stringCell2 value: anObject

	self setRange: stringCell cell2: stringCell2.
"	range autoFit."
	^self rangeValue: anObject!

xNext: anInteger of: cellArray
	
	^(self next: anInteger of: cellArray first), cellArray second printString

	!

xNext: xInteger y: yInteger of: cellArray

	^(self next: xInteger of: cellArray first), (cellArray second + yInteger) printString!

yNext: anInteger of: cellArray
	
	^cellArray first, (cellArray second + anInteger) printString

	! !
!BBMSExcelReport categoriesFor: #autoFitColumn:!excel!public! !
!BBMSExcelReport categoriesFor: #autoFitRow:!excel!public! !
!BBMSExcelReport categoriesFor: #beVisible!excel!public! !
!BBMSExcelReport categoriesFor: #closeFile!public! !
!BBMSExcelReport categoriesFor: #constantAt:!excel!public! !
!BBMSExcelReport categoriesFor: #createGridHeadFrom:to:!public!reporting! !
!BBMSExcelReport categoriesFor: #createNew!excel!public! !
!BBMSExcelReport categoriesFor: #createReportFrom:head:body:to:!public!reporting! !
!BBMSExcelReport categoriesFor: #createReportHeadFrom:to:!public!reporting! !
!BBMSExcelReport categoriesFor: #defaultProtectPassword!excel!public! !
!BBMSExcelReport categoriesFor: #excel!accessing!private! !
!BBMSExcelReport categoriesFor: #excel:!accessing!private! !
!BBMSExcelReport categoriesFor: #excelCaption:!excel!public! !
!BBMSExcelReport categoriesFor: #excelWorkbooks!excel!public! !
!BBMSExcelReport categoriesFor: #next:of:!public! !
!BBMSExcelReport categoriesFor: #nextOf:!public! !
!BBMSExcelReport categoriesFor: #openFile:!public! !
!BBMSExcelReport categoriesFor: #openFile:showApplication:!excel!public! !
!BBMSExcelReport categoriesFor: #openFileReadOnly:!excel!public! !
!BBMSExcelReport categoriesFor: #protectActiveSheet!excel!public! !
!BBMSExcelReport categoriesFor: #range!accessing!private! !
!BBMSExcelReport categoriesFor: #range:!accessing!private! !
!BBMSExcelReport categoriesFor: #rangeFontBold:!public!reporting! !
!BBMSExcelReport categoriesFor: #rangeFontBold:italic:size:!excel!public! !
!BBMSExcelReport categoriesFor: #rangeFormat:cell:cell2:!excel!public! !
!BBMSExcelReport categoriesFor: #rangeFormat:cell:cell2:number:font:alignment:border:pattern:width:!excel!public! !
!BBMSExcelReport categoriesFor: #rangeValue!excel!public! !
!BBMSExcelReport categoriesFor: #rangeValue:!excel!public! !
!BBMSExcelReport categoriesFor: #reportColumnFrom:startingAt:!public!reporting! !
!BBMSExcelReport categoriesFor: #reportColumnFrom:startingAt:caption:!public!reporting! !
!BBMSExcelReport categoriesFor: #reportFrom:!public!reporting! !
!BBMSExcelReport categoriesFor: #reportFrom:startingAt:!public!reporting! !
!BBMSExcelReport categoriesFor: #reportInitialDataFrom:startingAt:!public!reporting! !
!BBMSExcelReport categoriesFor: #reportInitialDataFrom:startingAt:caption:!public!reporting! !
!BBMSExcelReport categoriesFor: #reportRowFrom:startingAt:!public!reporting! !
!BBMSExcelReport categoriesFor: #reportRowFrom:startingAt:caption:!public!reporting! !
!BBMSExcelReport categoriesFor: #reportRowFromNC:startingAt:!public!reporting! !
!BBMSExcelReport categoriesFor: #saveAs:!excel!public! !
!BBMSExcelReport categoriesFor: #saveAsHtml:!excel!public! !
!BBMSExcelReport categoriesFor: #setRange:cell2:!excel!public! !
!BBMSExcelReport categoriesFor: #setRange:cell2:value:!excel!public! !
!BBMSExcelReport categoriesFor: #xNext:of:!public! !
!BBMSExcelReport categoriesFor: #xNext:y:of:!public! !
!BBMSExcelReport categoriesFor: #yNext:of:!public! !

!BBMSExcelReport class methodsFor!

example1
	"self example1 "
	| reporte |

	reporte := self new createNew.
	reporte reportInitialDataFrom: #(#('Sector' 'Ventas')) startingAt: #('B' 2) caption: 'Empleados'.
	reporte reportRowFrom: #(#('Documento' 'Nombre'  'Apellido') #(1234 'Julio' 'Perez') #(4578 'Andres' 'Gonzalez'))  startingAt: #('B' 5) caption: ''.
!

example2
	"self example2 "
	| reporte |

	reporte := self new createNew.
	reporte reportInitialDataFrom: #(#('Sector' 'Ventas')) startingAt: #('B' 2) caption: 'Empleados'.
	reporte reportColumnFrom: #(#('Documento' 1234) #('Nombre'  'Julio') #('Apellido' 'Perez') #('' '') #('Documento' 987) #('Nombre'  'Andres') #('Apellido' 'Alvarez')) startingAt: #('B' 5) caption: ''.
!

exampleAsObjectReport

"Paciente
reportReposiciones"
	| array |

	array := OrderedCollection with: (Array with: 'Droga' with: 'Dosis' with: 'Vía' with: 'Saldo').

	(self reposicionesFromStock asSortedCollection: [:a :b | a nombreDroga <= b nombreDroga])
		do:[:each |  array add: (Array with: each nombreDroga with: each nombreDosis with: each nombreVia with: each unidades)].
	^array asArray! !
!BBMSExcelReport class categoriesFor: #example1!public! !
!BBMSExcelReport class categoriesFor: #example2!public! !
!BBMSExcelReport class categoriesFor: #exampleAsObjectReport!public! !

