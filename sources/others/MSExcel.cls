"Filed out from Dolphin Smalltalk 7"!

MSOffice subclass: #MSExcel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MSExcel guid: (GUID fromString: '{85bc536b-02f3-4e1f-9a4f-d889b8e8e22a}')!
MSExcel comment: 'Esta clase representa una archivo Microsoft Excel.'!
!MSExcel categoriesForClass!Unclassified! !
!MSExcel methodsFor!

activeDocument

	" Private -  Answer aString that is the property name of an Active Document "

	^'ActiveWorkbook'!

activeSheetName

	^'ActiveSheet'!

applicationName

	" Answer aString that represent the application name for the OS "

	^'Excel.Application'
!

atCell: aString put: anInteger 

	"document invoke: methodName with: arg1"!

changeDirectoryTo: aPath

	" Change the directory of the receiver to aPath "

	document setProperty: 'DefaultFilePath' value: aPath!

completePaste

	self getActiveSheet invoke: 'Paste'.!

extension

	^'xls'!

getActiveSheet

	^self getActiveWorkbook getProperty: self activeSheetName!

getActiveWorkbook

	^document getProperty: self activeDocument!

getSelection

	^document getProperty: self selectionName!

getWorksheets

	^document getProperty: self worksheetsName!

isOpen
	" Answer whether the application of the receiver is Open or not "

	^document getProperty: 'Visible'
!

selectionName

	^'Selection'!

setRangeTo: aString 

	^self getActiveSheet invoke: 'Range' with: aString!

workbooks

	" Answer aString with the property name of MS-Excel work books "

	^'Workbooks'!

worksheetsName
	^'Worksheets'! !
!MSExcel categoriesFor: #activeDocument!public! !
!MSExcel categoriesFor: #activeSheetName!COM accessors!public! !
!MSExcel categoriesFor: #applicationName!public! !
!MSExcel categoriesFor: #atCell:put:!public! !
!MSExcel categoriesFor: #changeDirectoryTo:!public! !
!MSExcel categoriesFor: #completePaste!COM accessors!public! !
!MSExcel categoriesFor: #extension!public! !
!MSExcel categoriesFor: #getActiveSheet!public! !
!MSExcel categoriesFor: #getActiveWorkbook!public! !
!MSExcel categoriesFor: #getSelection!public! !
!MSExcel categoriesFor: #getWorksheets!public! !
!MSExcel categoriesFor: #isOpen!public! !
!MSExcel categoriesFor: #selectionName!COM accessors!public! !
!MSExcel categoriesFor: #setRangeTo:!public! !
!MSExcel categoriesFor: #workbooks!public! !
!MSExcel categoriesFor: #worksheetsName!COM accessors!public! !

!MSExcel class methodsFor!

extension

	^'xls'! !
!MSExcel class categoriesFor: #extension!public! !

