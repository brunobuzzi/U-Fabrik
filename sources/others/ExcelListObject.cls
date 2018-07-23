"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelListObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelListObject guid: (IID fromString: '{00024471-0000-0000-C000-000000000046}')!
ExcelListObject comment: '<ExcelListObject> is a wrapper class generated for the dispatch interface ''Excel.ListObject'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024471-0000-0000-C000-000000000046), 
	helpcontext(0x00020107)
]
dispinterface ListObject {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000767), helpcontext(0x00010767)]
		BSTR Publish(
			[in]VARIANT Target,
			[in]VARIANT_BOOL LinkSource);
[id(0x00000589), helpcontext(0x00010589)]
		void Refresh();
[id(0x00000904), helpcontext(0x00010904)]
		void Unlink();
[id(0x00000905), helpcontext(0x00010905)]
		void Unlist();
[id(0x00000906), hidden, helpcontext(0x00010906)]
		void UpdateChanges(
			[in, defaultvalue(0)]XlListConflict iConflictType);
[id(0x00000100), helpcontext(0x00010100)]
		void Resize(
			[in]Range* Range);
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x00000908), propget, helpcontext(0x00010908)]
		VARIANT_BOOL Active();
[id(0x000002c1), propget, helpcontext(0x000102c1)]
		Range* DataBodyRange();
[id(0x000006ee), propget, helpcontext(0x000106ee)]
		VARIANT_BOOL DisplayRightToLeft();
[id(0x00000909), propget, helpcontext(0x00010909)]
		Range* HeaderRowRange();
[id(0x0000090a), propget, helpcontext(0x0001090a)]
		Range* InsertRowRange();
[id(0x0000090b), propget, helpcontext(0x0001090b)]
		ListColumns* ListColumns();
[id(0x0000090c), propget, helpcontext(0x0001090c)]
		ListRows* ListRows();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x0000056a), propget, helpcontext(0x0001056a)]
		QueryTable* QueryTable();
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range();
[id(0x0000090d), propget, helpcontext(0x0001090d)]
		VARIANT_BOOL ShowAutoFilter();
[id(0x0000090d), propput, helpcontext(0x0001090d)]
		void ShowAutoFilter(
			[in]VARIANT_BOOL arg1);
[id(0x0000090e), propget, helpcontext(0x0001090e)]
		VARIANT_BOOL ShowTotals();
[id(0x0000090e), propput, helpcontext(0x0001090e)]
		void ShowTotals(
			[in]VARIANT_BOOL arg1);
[id(0x000002ad), propget, helpcontext(0x000102ad)]
		XlListObjectSourceType SourceType();
[id(0x0000090f), propget, helpcontext(0x0001090f)]
		Range* TotalsRowRange();
[id(0x00000910), propget, helpcontext(0x00010910)]
		BSTR SharePointURL();
[id(0x000008cd), propget, helpcontext(0x000108cd)]
		XmlMap* XmlMap();
[id(0x00000a75), propget, helpcontext(0x00010a75)]
		BSTR DisplayName();
[id(0x00000a75), propput, helpcontext(0x00010a75)]
		void DisplayName(
			[in]BSTR arg1);
[id(0x00000a76), propget, helpcontext(0x00010a76)]
		VARIANT_BOOL ShowHeaders();
[id(0x00000a76), propput, helpcontext(0x00010a76)]
		void ShowHeaders(
			[in]VARIANT_BOOL arg1);
[id(0x00000319), propget, helpcontext(0x00010319)]
		AutoFilter* AutoFilter();
[id(0x000005e0), propget, helpcontext(0x000105e0)]
		VARIANT TableStyle();
[id(0x000005e0), propput, helpcontext(0x000105e0)]
		void TableStyle(
			[in]VARIANT arg1);
[id(0x00000a77), propget, helpcontext(0x00010a77)]
		VARIANT_BOOL ShowTableStyleFirstColumn();
[id(0x00000a77), propput, helpcontext(0x00010a77)]
		void ShowTableStyleFirstColumn(
			[in]VARIANT_BOOL arg1);
[id(0x00000a03), propget, helpcontext(0x00010a03)]
		VARIANT_BOOL ShowTableStyleLastColumn();
[id(0x00000a03), propput, helpcontext(0x00010a03)]
		void ShowTableStyleLastColumn(
			[in]VARIANT_BOOL arg1);
[id(0x00000a04), propget, helpcontext(0x00010a04)]
		VARIANT_BOOL ShowTableStyleRowStripes();
[id(0x00000a04), propput, helpcontext(0x00010a04)]
		void ShowTableStyleRowStripes(
			[in]VARIANT_BOOL arg1);
[id(0x00000a05), propget, helpcontext(0x00010a05)]
		VARIANT_BOOL ShowTableStyleColumnStripes();
[id(0x00000a05), propput, helpcontext(0x00010a05)]
		void ShowTableStyleColumnStripes(
			[in]VARIANT_BOOL arg1);
[id(0x00000370), propget, helpcontext(0x00010370)]
		Sort* Sort();
[id(0x0000038e), propget, helpcontext(0x0001038e)]
		BSTR Comment();
[id(0x0000038e), propput, helpcontext(0x0001038e)]
		void Comment(
			[in]BSTR arg1);
[id(0x00000a78), helpcontext(0x00010a78)]
		void ExportToVisio();
};
'!
!ExcelListObject categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelListObject methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

active
	"Answer the <varbool> value of the 'Active' property of the receiver.
		VARIANT_BOOL Active"

	^(self getPropertyId: 2312)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoFilter
	"Answer the <ExcelAutoFilter> value of the 'AutoFilter' property of the receiver.
		AutoFilter* AutoFilter"

	^ExcelAutoFilter attachInterface: (self getPropertyId: 793)
!

comment
	"Answer the <bstr> value of the 'Comment' property of the receiver.
		BSTR Comment"

	^(self getPropertyId: 910)
!

comment: arg1
	"Set the 'Comment' property of the receiver to the <bstr> value of the argument.
		void Comment"

	self setPropertyId: 910 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

dataBodyRange
	"Answer the <ExcelRange> value of the 'DataBodyRange' property of the receiver.
		Range* DataBodyRange"

	^ExcelRange attachInterface: (self getPropertyId: 705)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

displayName
	"Answer the <bstr> value of the 'DisplayName' property of the receiver.
		BSTR DisplayName"

	^(self getPropertyId: 2677)
!

displayName: arg1
	"Set the 'DisplayName' property of the receiver to the <bstr> value of the argument.
		void DisplayName"

	self setPropertyId: 2677 value: arg1
!

displayRightToLeft
	"Answer the <varbool> value of the 'DisplayRightToLeft' property of the receiver.
		VARIANT_BOOL DisplayRightToLeft"

	^(self getPropertyId: 1774)
!

exportToVisio
	"Invoke the ExportToVisio() method of the COM object."

	(self invokeId: 2680)
!

headerRowRange
	"Answer the <ExcelRange> value of the 'HeaderRowRange' property of the receiver.
		Range* HeaderRowRange"

	^ExcelRange attachInterface: (self getPropertyId: 2313)
!

insertRowRange
	"Answer the <ExcelRange> value of the 'InsertRowRange' property of the receiver.
		Range* InsertRowRange"

	^ExcelRange attachInterface: (self getPropertyId: 2314)
!

listColumns
	"Answer the <ExcelListColumns> value of the 'ListColumns' property of the receiver.
		ListColumns* ListColumns"

	^ExcelListColumns attachInterface: (self getPropertyId: 2315)
!

listRows
	"Answer the <ExcelListRows> value of the 'ListRows' property of the receiver.
		ListRows* ListRows"

	^ExcelListRows attachInterface: (self getPropertyId: 2316)
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
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

publish: target linkSource: linkSource
	"Answer the <BSTR> result of invoking the Publish() method of the COM object."

	^(self invokeId: 1895 with: target with: linkSource)
!

queryTable
	"Answer the <Excel_QueryTable> value of the 'QueryTable' property of the receiver.
		QueryTable* QueryTable"

	^Excel_QueryTable attachInterface: (self getPropertyId: 1386)
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver.
		Range* Range"

	^ExcelRange attachInterface: (self getPropertyId: 197)
!

refresh
	"Invoke the Refresh() method of the COM object."

	(self invokeId: 1417)
!

resize_: range
	"Invoke the Resize() method of the COM object."

	(self invokeId: 256 with: range)
!

sharePointURL
	"Answer the <bstr> value of the 'SharePointURL' property of the receiver.
		BSTR SharePointURL"

	^(self getPropertyId: 2320)
!

showAutoFilter
	"Answer the <varbool> value of the 'ShowAutoFilter' property of the receiver.
		VARIANT_BOOL ShowAutoFilter"

	^(self getPropertyId: 2317)
!

showAutoFilter: arg1
	"Set the 'ShowAutoFilter' property of the receiver to the <varbool> value of the argument.
		void ShowAutoFilter"

	self setPropertyId: 2317 value: arg1
!

showHeaders
	"Answer the <varbool> value of the 'ShowHeaders' property of the receiver.
		VARIANT_BOOL ShowHeaders"

	^(self getPropertyId: 2678)
!

showHeaders: arg1
	"Set the 'ShowHeaders' property of the receiver to the <varbool> value of the argument.
		void ShowHeaders"

	self setPropertyId: 2678 value: arg1
!

showTableStyleColumnStripes
	"Answer the <varbool> value of the 'ShowTableStyleColumnStripes' property of the receiver.
		VARIANT_BOOL ShowTableStyleColumnStripes"

	^(self getPropertyId: 2565)
!

showTableStyleColumnStripes: arg1
	"Set the 'ShowTableStyleColumnStripes' property of the receiver to the <varbool> value of the argument.
		void ShowTableStyleColumnStripes"

	self setPropertyId: 2565 value: arg1
!

showTableStyleFirstColumn
	"Answer the <varbool> value of the 'ShowTableStyleFirstColumn' property of the receiver.
		VARIANT_BOOL ShowTableStyleFirstColumn"

	^(self getPropertyId: 2679)
!

showTableStyleFirstColumn: arg1
	"Set the 'ShowTableStyleFirstColumn' property of the receiver to the <varbool> value of the argument.
		void ShowTableStyleFirstColumn"

	self setPropertyId: 2679 value: arg1
!

showTableStyleLastColumn
	"Answer the <varbool> value of the 'ShowTableStyleLastColumn' property of the receiver.
		VARIANT_BOOL ShowTableStyleLastColumn"

	^(self getPropertyId: 2563)
!

showTableStyleLastColumn: arg1
	"Set the 'ShowTableStyleLastColumn' property of the receiver to the <varbool> value of the argument.
		void ShowTableStyleLastColumn"

	self setPropertyId: 2563 value: arg1
!

showTableStyleRowStripes
	"Answer the <varbool> value of the 'ShowTableStyleRowStripes' property of the receiver.
		VARIANT_BOOL ShowTableStyleRowStripes"

	^(self getPropertyId: 2564)
!

showTableStyleRowStripes: arg1
	"Set the 'ShowTableStyleRowStripes' property of the receiver to the <varbool> value of the argument.
		void ShowTableStyleRowStripes"

	self setPropertyId: 2564 value: arg1
!

showTotals
	"Answer the <varbool> value of the 'ShowTotals' property of the receiver.
		VARIANT_BOOL ShowTotals"

	^(self getPropertyId: 2318)
!

showTotals: arg1
	"Set the 'ShowTotals' property of the receiver to the <varbool> value of the argument.
		void ShowTotals"

	self setPropertyId: 2318 value: arg1
!

sort
	"Answer the <ExcelSort> value of the 'Sort' property of the receiver.
		Sort* Sort"

	^ExcelSort attachInterface: (self getPropertyId: 880)
!

sourceType
	"Answer the <sdword> value of the 'SourceType' property of the receiver.
		XlListObjectSourceType SourceType"

	^(self getPropertyId: 685)
!

tableStyle
	"Answer the <variant> value of the 'TableStyle' property of the receiver.
		VARIANT TableStyle"

	^(self getPropertyId: 1504)
!

tableStyle: arg1
	"Set the 'TableStyle' property of the receiver to the <variant> value of the argument.
		void TableStyle"

	self setPropertyId: 1504 value: arg1
!

totalsRowRange
	"Answer the <ExcelRange> value of the 'TotalsRowRange' property of the receiver.
		Range* TotalsRowRange"

	^ExcelRange attachInterface: (self getPropertyId: 2319)
!

unlink
	"Invoke the Unlink() method of the COM object."

	(self invokeId: 2308)
!

unlist
	"Invoke the Unlist() method of the COM object."

	(self invokeId: 2309)
!

updateChanges
	"Invoke the UpdateChanges() method of the COM object.
	Default values are passed for all optional parameters."

	self updateChanges: 0!

updateChanges: iConflictType
	"Invoke the UpdateChanges() method of the COM object."

	(self invokeId: 2310 with: iConflictType)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

xmlMap
	"Answer the <ExcelXmlMap> value of the 'XmlMap' property of the receiver.
		XmlMap* XmlMap"

	^ExcelXmlMap attachInterface: (self getPropertyId: 2253)
! !
!ExcelListObject categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #active!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #application!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #autoFilter!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #comment!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #comment:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #dataBodyRange!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #displayName!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #displayName:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #displayRightToLeft!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #exportToVisio!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #headerRowRange!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #insertRowRange!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #listColumns!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #listRows!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #name!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #publish:linkSource:!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #queryTable!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #range!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #resize_:!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #sharePointURL!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showAutoFilter!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showAutoFilter:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showHeaders!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showHeaders:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTableStyleColumnStripes!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTableStyleColumnStripes:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTableStyleFirstColumn!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTableStyleFirstColumn:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTableStyleLastColumn!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTableStyleLastColumn:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTableStyleRowStripes!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTableStyleRowStripes:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTotals!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #showTotals:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #sort!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #sourceType!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #tableStyle!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #tableStyle:!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #totalsRowRange!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #unlink!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #unlist!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #updateChanges!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #updateChanges:!**auto generated**!methods!public! !
!ExcelListObject categoriesFor: #value!**auto generated**!properties!public! !
!ExcelListObject categoriesFor: #xmlMap!**auto generated**!properties!public! !

!ExcelListObject class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelListObject initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelListObject class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

