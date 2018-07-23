"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotCell guid: (IID fromString: '{00024458-0000-0000-C000-000000000046}')!
ExcelPivotCell comment: '<ExcelPivotCell> is a wrapper class generated for the dispatch interface ''Excel.PivotCell'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024458-0000-0000-C000-000000000046), 
	helpcontext(0x000200ee)
]
dispinterface PivotCell {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000088d), propget, helpcontext(0x0001088d)]
		XlPivotCellType PivotCellType();
[id(0x000002cc), propget, helpcontext(0x000102cc)]
		PivotTable* PivotTable();
[id(0x0000082b), propget, helpcontext(0x0001082b)]
		PivotField* DataField();
[id(0x000002db), propget, helpcontext(0x000102db)]
		PivotField* PivotField();
[id(0x000002e4), propget, helpcontext(0x000102e4)]
		PivotItem* PivotItem();
[id(0x0000088e), propget, helpcontext(0x0001088e)]
		PivotItemList* RowItems();
[id(0x0000088f), propget, helpcontext(0x0001088f)]
		PivotItemList* ColumnItems();
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range();
[id(0x000008f7), hidden, propget, helpcontext(0x000108f7)]
		BSTR Dummy18();
[id(0x00000891), propget, helpcontext(0x00010891)]
		XlConsolidationFunction CustomSubtotalFunction();
[id(0x00000a71), propget, helpcontext(0x00010a71)]
		PivotLine* PivotRowLine();
[id(0x00000a72), propget, helpcontext(0x00010a72)]
		PivotLine* PivotColumnLine();
};
'!
!ExcelPivotCell categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotCell methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

columnItems
	"Answer the <ExcelPivotItemList> value of the 'ColumnItems' property of the receiver.
		PivotItemList* ColumnItems"

	^ExcelPivotItemList attachInterface: (self getPropertyId: 2191)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

customSubtotalFunction
	"Answer the <sdword> value of the 'CustomSubtotalFunction' property of the receiver.
		XlConsolidationFunction CustomSubtotalFunction"

	^(self getPropertyId: 2193)
!

dataField
	"Answer the <ExcelPivotField> value of the 'DataField' property of the receiver.
		PivotField* DataField"

	^ExcelPivotField attachInterface: (self getPropertyId: 2091)
!

dummy18
	"Answer the <bstr> value of the 'Dummy18' property of the receiver.
		BSTR Dummy18"

	^(self getPropertyId: 2295)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pivotCellType
	"Answer the <sdword> value of the 'PivotCellType' property of the receiver.
		XlPivotCellType PivotCellType"

	^(self getPropertyId: 2189)
!

pivotColumnLine
	"Answer the <ExcelPivotLine> value of the 'PivotColumnLine' property of the receiver.
		PivotLine* PivotColumnLine"

	^ExcelPivotLine attachInterface: (self getPropertyId: 2674)
!

pivotField
	"Answer the <ExcelPivotField> value of the 'PivotField' property of the receiver.
		PivotField* PivotField"

	^ExcelPivotField attachInterface: (self getPropertyId: 731)
!

pivotItem
	"Answer the <ExcelPivotItem> value of the 'PivotItem' property of the receiver.
		PivotItem* PivotItem"

	^ExcelPivotItem attachInterface: (self getPropertyId: 740)
!

pivotRowLine
	"Answer the <ExcelPivotLine> value of the 'PivotRowLine' property of the receiver.
		PivotLine* PivotRowLine"

	^ExcelPivotLine attachInterface: (self getPropertyId: 2673)
!

pivotTable
	"Answer the <ExcelPivotTable> value of the 'PivotTable' property of the receiver.
		PivotTable* PivotTable"

	^ExcelPivotTable attachInterface: (self getPropertyId: 716)
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver.
		Range* Range"

	^ExcelRange attachInterface: (self getPropertyId: 197)
!

rowItems
	"Answer the <ExcelPivotItemList> value of the 'RowItems' property of the receiver.
		PivotItemList* RowItems"

	^ExcelPivotItemList attachInterface: (self getPropertyId: 2190)
! !
!ExcelPivotCell categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #columnItems!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #customSubtotalFunction!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #dataField!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #dummy18!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #pivotCellType!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #pivotColumnLine!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #pivotField!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #pivotItem!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #pivotRowLine!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #pivotTable!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #range!**auto generated**!properties!public! !
!ExcelPivotCell categoriesFor: #rowItems!**auto generated**!properties!public! !

!ExcelPivotCell class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotCell initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotCell class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

