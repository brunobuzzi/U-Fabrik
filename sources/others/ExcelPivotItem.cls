"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotItem guid: (IID fromString: '{00020876-0000-0000-C000-000000000046}')!
ExcelPivotItem comment: '<ExcelPivotItem> is a wrapper class generated for the dispatch interface ''Excel.PivotItem'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020876-0000-0000-C000-000000000046), 
	helpcontext(0x00020036)
]
dispinterface PivotItem {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		PivotField* Parent();
[id(0x000002da), propget, helpcontext(0x000102da)]
		VARIANT ChildItems(
			[in, optional]VARIANT Index);
[id(0x000002d0), propget, helpcontext(0x000102d0)]
		Range* DataRange();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]BSTR arg1);
[id(0x000002cf), propget, helpcontext(0x000102cf)]
		Range* LabelRange();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000002e5), propget, helpcontext(0x000102e5)]
		PivotItem* ParentItem();
[id(0x000002e3), propget, helpcontext(0x000102e3)]
		VARIANT_BOOL ParentShowDetail();
[id(0x00000085), propget, helpcontext(0x00010085)]
		long Position();
[id(0x00000085), propput, helpcontext(0x00010085)]
		void Position(
			[in]long arg1);
[id(0x00000249), propget, helpcontext(0x00010249)]
		VARIANT_BOOL ShowDetail();
[id(0x00000249), propput, helpcontext(0x00010249)]
		void ShowDetail(
			[in]VARIANT_BOOL arg1);
[id(0x000002d1), propget, helpcontext(0x000102d1)]
		VARIANT SourceName();
[id(0x00000006), propget, helpcontext(0x00010006)]
		BSTR Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]BSTR arg1);
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000005e8), propget, helpcontext(0x000105e8)]
		VARIANT_BOOL IsCalculated();
[id(0x000005c6), propget, helpcontext(0x000105c6)]
		long RecordCount();
[id(0x00000105), propget, helpcontext(0x00010105)]
		BSTR Formula();
[id(0x00000105), propput, helpcontext(0x00010105)]
		void Formula(
			[in]BSTR arg1);
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x0000073a), propget, helpcontext(0x0001073a)]
		VARIANT_BOOL DrilledDown();
[id(0x0000073a), propput, helpcontext(0x0001073a)]
		void DrilledDown(
			[in]VARIANT_BOOL arg1);
[id(0x00000824), propget, helpcontext(0x00010824)]
		BSTR StandardFormula();
[id(0x00000824), propput, helpcontext(0x00010824)]
		void StandardFormula(
			[in]BSTR arg1);
[id(0x00000864), propget, helpcontext(0x00010864)]
		BSTR SourceNameStandard();
[id(0x00000a14), helpcontext(0x00010a14)]
		void DrillTo(
			[in]BSTR Field);
};
'!
!ExcelPivotItem categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotItem methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

_default: arg1
	"Set the '_Default' property of the receiver to the <bstr> value of the argument.
		void _Default"

	self setPropertyId: 0 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver.
		BSTR Caption"

	^(self getPropertyId: 139)
!

caption: arg1
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument.
		void Caption"

	self setPropertyId: 139 value: arg1
!

childItems
	"Answer the <variant> value of the 'ChildItems' property of the receiver.
		VARIANT ChildItems"

	^self childItems: VARIANT unspecified!

childItems: index
	"Answer the <variant> value of the 'ChildItems' property of the receiver.
		VARIANT ChildItems"

	^(self getPropertyId: 730 item: index)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

dataRange
	"Answer the <ExcelRange> value of the 'DataRange' property of the receiver.
		Range* DataRange"

	^ExcelRange attachInterface: (self getPropertyId: 720)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

drilledDown
	"Answer the <varbool> value of the 'DrilledDown' property of the receiver.
		VARIANT_BOOL DrilledDown"

	^(self getPropertyId: 1850)
!

drilledDown: arg1
	"Set the 'DrilledDown' property of the receiver to the <varbool> value of the argument.
		void DrilledDown"

	self setPropertyId: 1850 value: arg1
!

drillTo: field
	"Invoke the DrillTo() method of the COM object."

	(self invokeId: 2580 with: field)
!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver.
		BSTR Formula"

	^(self getPropertyId: 261)
!

formula: arg1
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument.
		void Formula"

	self setPropertyId: 261 value: arg1
!

isCalculated
	"Answer the <varbool> value of the 'IsCalculated' property of the receiver.
		VARIANT_BOOL IsCalculated"

	^(self getPropertyId: 1512)
!

labelRange
	"Answer the <ExcelRange> value of the 'LabelRange' property of the receiver.
		Range* LabelRange"

	^ExcelRange attachInterface: (self getPropertyId: 719)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

parent
	"Answer the <ExcelPivotField> value of the 'Parent' property of the receiver.
		PivotField* Parent"

	^ExcelPivotField attachInterface: (self getPropertyId: 150)
!

parentItem
	"Answer the <ExcelPivotItem> value of the 'ParentItem' property of the receiver.
		PivotItem* ParentItem"

	^ExcelPivotItem attachInterface: (self getPropertyId: 741)
!

parentShowDetail
	"Answer the <varbool> value of the 'ParentShowDetail' property of the receiver.
		VARIANT_BOOL ParentShowDetail"

	^(self getPropertyId: 739)
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver.
		long Position"

	^(self getPropertyId: 133)
!

position: arg1
	"Set the 'Position' property of the receiver to the <sdword> value of the argument.
		void Position"

	self setPropertyId: 133 value: arg1
!

recordCount
	"Answer the <sdword> value of the 'RecordCount' property of the receiver.
		long RecordCount"

	^(self getPropertyId: 1478)
!

showDetail
	"Answer the <varbool> value of the 'ShowDetail' property of the receiver.
		VARIANT_BOOL ShowDetail"

	^(self getPropertyId: 585)
!

showDetail: arg1
	"Set the 'ShowDetail' property of the receiver to the <varbool> value of the argument.
		void ShowDetail"

	self setPropertyId: 585 value: arg1
!

sourceName
	"Answer the <variant> value of the 'SourceName' property of the receiver.
		VARIANT SourceName"

	^(self getPropertyId: 721)
!

sourceNameStandard
	"Answer the <bstr> value of the 'SourceNameStandard' property of the receiver.
		BSTR SourceNameStandard"

	^(self getPropertyId: 2148)
!

standardFormula
	"Answer the <bstr> value of the 'StandardFormula' property of the receiver.
		BSTR StandardFormula"

	^(self getPropertyId: 2084)
!

standardFormula: arg1
	"Set the 'StandardFormula' property of the receiver to the <bstr> value of the argument.
		void StandardFormula"

	self setPropertyId: 2084 value: arg1
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver.
		BSTR Value"

	^(self getPropertyId: 6)
!

value: arg1
	"Set the 'Value' property of the receiver to the <bstr> value of the argument.
		void Value"

	self setPropertyId: 6 value: arg1
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver.
		VARIANT_BOOL Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
! !
!ExcelPivotItem categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #childItems!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #childItems:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #dataRange!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPivotItem categoriesFor: #drilledDown!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #drilledDown:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #drillTo:!**auto generated**!methods!public! !
!ExcelPivotItem categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #isCalculated!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #labelRange!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #name!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #parentItem!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #parentShowDetail!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #position!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #recordCount!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #showDetail!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #showDetail:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #sourceName!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #sourceNameStandard!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #standardFormula!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #standardFormula:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #value!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelPivotItem categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelPivotItem class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotItem initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotItem class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

