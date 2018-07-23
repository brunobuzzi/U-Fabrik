"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIListObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIListObject guid: (IID fromString: '{00024471-0001-0000-C000-000000000046}')!
ExcelIListObject comment: '<ExcelIListObject> is a wrapper class for the COM interface ''Excel.IListObject'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024471-0001-0000-C000-000000000046), 
	helpcontext(0x00020107), 
	hidden
]
interface IListObject : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000767), helpcontext(0x00010767)]
	HRESULT __stdcall Publish(
		[in]VARIANT Target,
		[in]VARIANT_BOOL LinkSource,
		[out, retval]BSTR* RHS);
	[id(0x00000589), helpcontext(0x00010589)]
	HRESULT __stdcall Refresh();
	[id(0x00000904), helpcontext(0x00010904)]
	HRESULT __stdcall Unlink();
	[id(0x00000905), helpcontext(0x00010905)]
	HRESULT __stdcall Unlist();
	[id(0x00000906), hidden, helpcontext(0x00010906)]
	HRESULT __stdcall UpdateChanges(
		[in, defaultvalue(0)]XlListConflict iConflictType);
	[id(0x00000100), helpcontext(0x00010100)]
	HRESULT __stdcall Resize(
		[in]Range* Range);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x00000908), propget, helpcontext(0x00010908)]
	HRESULT __stdcall Active(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002c1), propget, helpcontext(0x000102c1)]
	HRESULT __stdcall DataBodyRange(
		[out, retval]Range** RHS);
	[id(0x000006ee), propget, helpcontext(0x000106ee)]
	HRESULT __stdcall DisplayRightToLeft(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000909), propget, helpcontext(0x00010909)]
	HRESULT __stdcall HeaderRowRange(
		[out, retval]Range** RHS);
	[id(0x0000090a), propget, helpcontext(0x0001090a)]
	HRESULT __stdcall InsertRowRange(
		[out, retval]Range** RHS);
	[id(0x0000090b), propget, helpcontext(0x0001090b)]
	HRESULT __stdcall ListColumns(
		[out, retval]ListColumns** RHS);
	[id(0x0000090c), propget, helpcontext(0x0001090c)]
	HRESULT __stdcall ListRows(
		[out, retval]ListRows** RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x0000056a), propget, helpcontext(0x0001056a)]
	HRESULT __stdcall QueryTable(
		[out, retval]QueryTable** RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[out, retval]Range** RHS);
	[id(0x0000090d), propget, helpcontext(0x0001090d)]
	HRESULT __stdcall ShowAutoFilter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000090d), propput, helpcontext(0x0001090d)]
	HRESULT __stdcall ShowAutoFilter(
		[in]VARIANT_BOOL RHS);
	[id(0x0000090e), propget, helpcontext(0x0001090e)]
	HRESULT __stdcall ShowTotals(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000090e), propput, helpcontext(0x0001090e)]
	HRESULT __stdcall ShowTotals(
		[in]VARIANT_BOOL RHS);
	[id(0x000002ad), propget, helpcontext(0x000102ad)]
	HRESULT __stdcall SourceType(
		[out, retval]XlListObjectSourceType* RHS);
	[id(0x0000090f), propget, helpcontext(0x0001090f)]
	HRESULT __stdcall TotalsRowRange(
		[out, retval]Range** RHS);
	[id(0x00000910), propget, helpcontext(0x00010910)]
	HRESULT __stdcall SharePointURL(
		[out, retval]BSTR* RHS);
	[id(0x000008cd), propget, helpcontext(0x000108cd)]
	HRESULT __stdcall XmlMap(
		[out, retval]XmlMap** RHS);
	[id(0x00000a75), propget, helpcontext(0x00010a75)]
	HRESULT __stdcall DisplayName(
		[out, retval]BSTR* RHS);
	[id(0x00000a75), propput, helpcontext(0x00010a75)]
	HRESULT __stdcall DisplayName(
		[in]BSTR RHS);
	[id(0x00000a76), propget, helpcontext(0x00010a76)]
	HRESULT __stdcall ShowHeaders(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a76), propput, helpcontext(0x00010a76)]
	HRESULT __stdcall ShowHeaders(
		[in]VARIANT_BOOL RHS);
	[id(0x00000319), propget, helpcontext(0x00010319)]
	HRESULT __stdcall AutoFilter(
		[out, retval]AutoFilter** RHS);
	[id(0x000005e0), propget, helpcontext(0x000105e0)]
	HRESULT __stdcall TableStyle(
		[out, retval]VARIANT* RHS);
	[id(0x000005e0), propput, helpcontext(0x000105e0)]
	HRESULT __stdcall TableStyle(
		[in]VARIANT RHS);
	[id(0x00000a77), propget, helpcontext(0x00010a77)]
	HRESULT __stdcall ShowTableStyleFirstColumn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a77), propput, helpcontext(0x00010a77)]
	HRESULT __stdcall ShowTableStyleFirstColumn(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a03), propget, helpcontext(0x00010a03)]
	HRESULT __stdcall ShowTableStyleLastColumn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a03), propput, helpcontext(0x00010a03)]
	HRESULT __stdcall ShowTableStyleLastColumn(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a04), propget, helpcontext(0x00010a04)]
	HRESULT __stdcall ShowTableStyleRowStripes(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a04), propput, helpcontext(0x00010a04)]
	HRESULT __stdcall ShowTableStyleRowStripes(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a05), propget, helpcontext(0x00010a05)]
	HRESULT __stdcall ShowTableStyleColumnStripes(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a05), propput, helpcontext(0x00010a05)]
	HRESULT __stdcall ShowTableStyleColumnStripes(
		[in]VARIANT_BOOL RHS);
	[id(0x00000370), propget, helpcontext(0x00010370)]
	HRESULT __stdcall Sort(
		[out, retval]Sort** RHS);
	[id(0x0000038e), propget, helpcontext(0x0001038e)]
	HRESULT __stdcall Comment(
		[out, retval]BSTR* RHS);
	[id(0x0000038e), propput, helpcontext(0x0001038e)]
	HRESULT __stdcall Comment(
		[in]BSTR RHS);
	[id(0x00000a78), helpcontext(0x00010a78)]
	HRESULT __stdcall ExportToVisio();
};
'!
!ExcelIListObject categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIListObject methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

active
	"Answer the <varbool> value of the 'Active' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Active: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoFilter
	"Answer the <ExcelAutoFilter> value of the 'AutoFilter' property of the receiver."

	| answer |
	answer := ExcelAutoFilter newPointer.
	self get_AutoFilter: answer.
	^answer asObject
!

comment
	"Answer the <bstr> value of the 'Comment' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Comment: answer.
	^answer asObject
!

comment: rhs
	"Set the 'Comment' property of the receiver to the <bstr> value of the argument."

	self put_Comment: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dataBodyRange
	"Answer the <ExcelRange> value of the 'DataBodyRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_DataBodyRange: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

displayName
	"Answer the <bstr> value of the 'DisplayName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_DisplayName: answer.
	^answer asObject
!

displayName: rhs
	"Set the 'DisplayName' property of the receiver to the <bstr> value of the argument."

	self put_DisplayName: rhs
!

displayRightToLeft
	"Answer the <varbool> value of the 'DisplayRightToLeft' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayRightToLeft: answer.
	^answer asObject
!

exportToVisio
	"Invoke the ExportToVisio() method of the COM object."

	^self ExportToVisio
!

ExportToVisio
	"Private - Invoke the ExportToVisio() method of the COM object.

		HRESULT __stdcall ExportToVisio();"

	<virtual stdcall: hresult 56>
	^self invalidCall!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 18 bstr*>
	^self invalidCall!

get_Active: rhs
	"Private - Get the value of the 'Active' property of the receiver.

		HRESULT __stdcall Active(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoFilter: rhs
	"Private - Get the value of the 'AutoFilter' property of the receiver.

		HRESULT __stdcall AutoFilter(
			[out, retval]AutoFilter** RHS);"

	<virtual stdcall: hresult 42 ExcelAutoFilter**>
	^self invalidCall!

get_Comment: rhs
	"Private - Get the value of the 'Comment' property of the receiver.

		HRESULT __stdcall Comment(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 54 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DataBodyRange: rhs
	"Private - Get the value of the 'DataBodyRange' property of the receiver.

		HRESULT __stdcall DataBodyRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 20 ExcelRange**>
	^self invalidCall!

get_DisplayName: rhs
	"Private - Get the value of the 'DisplayName' property of the receiver.

		HRESULT __stdcall DisplayName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 38 bstr*>
	^self invalidCall!

get_DisplayRightToLeft: rhs
	"Private - Get the value of the 'DisplayRightToLeft' property of the receiver.

		HRESULT __stdcall DisplayRightToLeft(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_HeaderRowRange: rhs
	"Private - Get the value of the 'HeaderRowRange' property of the receiver.

		HRESULT __stdcall HeaderRowRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 22 ExcelRange**>
	^self invalidCall!

get_InsertRowRange: rhs
	"Private - Get the value of the 'InsertRowRange' property of the receiver.

		HRESULT __stdcall InsertRowRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 23 ExcelRange**>
	^self invalidCall!

get_ListColumns: rhs
	"Private - Get the value of the 'ListColumns' property of the receiver.

		HRESULT __stdcall ListColumns(
			[out, retval]ListColumns** RHS);"

	<virtual stdcall: hresult 24 ExcelListColumns**>
	^self invalidCall!

get_ListRows: rhs
	"Private - Get the value of the 'ListRows' property of the receiver.

		HRESULT __stdcall ListRows(
			[out, retval]ListRows** RHS);"

	<virtual stdcall: hresult 25 ExcelListRows**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 26 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_QueryTable: rhs
	"Private - Get the value of the 'QueryTable' property of the receiver.

		HRESULT __stdcall QueryTable(
			[out, retval]QueryTable** RHS);"

	<virtual stdcall: hresult 28 Excel_QueryTable**>
	^self invalidCall!

get_Range: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 29 ExcelRange**>
	^self invalidCall!

get_SharePointURL: rhs
	"Private - Get the value of the 'SharePointURL' property of the receiver.

		HRESULT __stdcall SharePointURL(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 36 bstr*>
	^self invalidCall!

get_ShowAutoFilter: rhs
	"Private - Get the value of the 'ShowAutoFilter' property of the receiver.

		HRESULT __stdcall ShowAutoFilter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 30 varbool*>
	^self invalidCall!

get_ShowHeaders: rhs
	"Private - Get the value of the 'ShowHeaders' property of the receiver.

		HRESULT __stdcall ShowHeaders(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 40 varbool*>
	^self invalidCall!

get_ShowTableStyleColumnStripes: rhs
	"Private - Get the value of the 'ShowTableStyleColumnStripes' property of the receiver.

		HRESULT __stdcall ShowTableStyleColumnStripes(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 51 varbool*>
	^self invalidCall!

get_ShowTableStyleFirstColumn: rhs
	"Private - Get the value of the 'ShowTableStyleFirstColumn' property of the receiver.

		HRESULT __stdcall ShowTableStyleFirstColumn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 45 varbool*>
	^self invalidCall!

get_ShowTableStyleLastColumn: rhs
	"Private - Get the value of the 'ShowTableStyleLastColumn' property of the receiver.

		HRESULT __stdcall ShowTableStyleLastColumn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 47 varbool*>
	^self invalidCall!

get_ShowTableStyleRowStripes: rhs
	"Private - Get the value of the 'ShowTableStyleRowStripes' property of the receiver.

		HRESULT __stdcall ShowTableStyleRowStripes(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 49 varbool*>
	^self invalidCall!

get_ShowTotals: rhs
	"Private - Get the value of the 'ShowTotals' property of the receiver.

		HRESULT __stdcall ShowTotals(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_Sort: rhs
	"Private - Get the value of the 'Sort' property of the receiver.

		HRESULT __stdcall Sort(
			[out, retval]Sort** RHS);"

	<virtual stdcall: hresult 53 ExcelSort**>
	^self invalidCall!

get_SourceType: rhs
	"Private - Get the value of the 'SourceType' property of the receiver.

		HRESULT __stdcall SourceType(
			[out, retval]XlListObjectSourceType* RHS);"

	<virtual stdcall: hresult 34 sdword*>
	^self invalidCall!

get_TableStyle: rhs
	"Private - Get the value of the 'TableStyle' property of the receiver.

		HRESULT __stdcall TableStyle(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 43 variant*>
	^self invalidCall!

get_TotalsRowRange: rhs
	"Private - Get the value of the 'TotalsRowRange' property of the receiver.

		HRESULT __stdcall TotalsRowRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 35 ExcelRange**>
	^self invalidCall!

get_XmlMap: rhs
	"Private - Get the value of the 'XmlMap' property of the receiver.

		HRESULT __stdcall XmlMap(
			[out, retval]XmlMap** RHS);"

	<virtual stdcall: hresult 37 ExcelXmlMap**>
	^self invalidCall!

headerRowRange
	"Answer the <ExcelRange> value of the 'HeaderRowRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_HeaderRowRange: answer.
	^answer asObject
!

insertRowRange
	"Answer the <ExcelRange> value of the 'InsertRowRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_InsertRowRange: answer.
	^answer asObject
!

listColumns
	"Answer the <ExcelListColumns> value of the 'ListColumns' property of the receiver."

	| answer |
	answer := ExcelListColumns newPointer.
	self get_ListColumns: answer.
	^answer asObject
!

listRows
	"Answer the <ExcelListRows> value of the 'ListRows' property of the receiver."

	| answer |
	answer := ExcelListRows newPointer.
	self get_ListRows: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

publish: target linkSource: linkSource
	"Answer the <BSTR> result of invoking the Publish() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Publish: target asVariant
		linkSource: linkSource
		rhs: answer.
	^answer asObject
!

Publish: target linkSource: linkSource rhs: rhs
	"Private - Invoke the Publish() method of the COM object.

		HRESULT __stdcall Publish(
			[in]VARIANT Target,
			[in]VARIANT_BOOL LinkSource,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 variant varbool bstr*>
	^self invalidCall!

put_Comment: rhs
	"Private - Set the value of the 'Comment' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Comment(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 55 bstr>
	^self invalidCall!

put_DisplayName: rhs
	"Private - Set the value of the 'DisplayName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall DisplayName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 39 bstr>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 27 bstr>
	^self invalidCall!

put_ShowAutoFilter: rhs
	"Private - Set the value of the 'ShowAutoFilter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowAutoFilter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 31 varbool>
	^self invalidCall!

put_ShowHeaders: rhs
	"Private - Set the value of the 'ShowHeaders' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowHeaders(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 41 varbool>
	^self invalidCall!

put_ShowTableStyleColumnStripes: rhs
	"Private - Set the value of the 'ShowTableStyleColumnStripes' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleColumnStripes(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 52 varbool>
	^self invalidCall!

put_ShowTableStyleFirstColumn: rhs
	"Private - Set the value of the 'ShowTableStyleFirstColumn' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleFirstColumn(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 46 varbool>
	^self invalidCall!

put_ShowTableStyleLastColumn: rhs
	"Private - Set the value of the 'ShowTableStyleLastColumn' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleLastColumn(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 48 varbool>
	^self invalidCall!

put_ShowTableStyleRowStripes: rhs
	"Private - Set the value of the 'ShowTableStyleRowStripes' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleRowStripes(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 50 varbool>
	^self invalidCall!

put_ShowTotals: rhs
	"Private - Set the value of the 'ShowTotals' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTotals(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_TableStyle: rhs
	"Private - Set the value of the 'TableStyle' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TableStyle(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 44 variant>
	^self invalidCall!

queryTable
	"Answer the <Excel_QueryTable> value of the 'QueryTable' property of the receiver."

	| answer |
	answer := Excel_QueryTable newPointer.
	self get_QueryTable: answer.
	^answer asObject
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Range: answer.
	^answer asObject
!

refresh
	"Invoke the Refresh() method of the COM object."

	^self Refresh
!

Refresh
	"Private - Invoke the Refresh() method of the COM object.

		HRESULT __stdcall Refresh();"

	<virtual stdcall: hresult 13>
	^self invalidCall!

Resize: range
	"Private - Invoke the Resize() method of the COM object.

		HRESULT __stdcall Resize(
			[in]Range* Range);"

	<virtual stdcall: hresult 17 ExcelRange*>
	^self invalidCall!

resize_: range
	"Invoke the Resize() method of the COM object."

	^self Resize: range
!

sharePointURL
	"Answer the <bstr> value of the 'SharePointURL' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SharePointURL: answer.
	^answer asObject
!

showAutoFilter
	"Answer the <varbool> value of the 'ShowAutoFilter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowAutoFilter: answer.
	^answer asObject
!

showAutoFilter: rhs
	"Set the 'ShowAutoFilter' property of the receiver to the <varbool> value of the argument."

	self put_ShowAutoFilter: rhs
!

showHeaders
	"Answer the <varbool> value of the 'ShowHeaders' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowHeaders: answer.
	^answer asObject
!

showHeaders: rhs
	"Set the 'ShowHeaders' property of the receiver to the <varbool> value of the argument."

	self put_ShowHeaders: rhs
!

showTableStyleColumnStripes
	"Answer the <varbool> value of the 'ShowTableStyleColumnStripes' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowTableStyleColumnStripes: answer.
	^answer asObject
!

showTableStyleColumnStripes: rhs
	"Set the 'ShowTableStyleColumnStripes' property of the receiver to the <varbool> value of the argument."

	self put_ShowTableStyleColumnStripes: rhs
!

showTableStyleFirstColumn
	"Answer the <varbool> value of the 'ShowTableStyleFirstColumn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowTableStyleFirstColumn: answer.
	^answer asObject
!

showTableStyleFirstColumn: rhs
	"Set the 'ShowTableStyleFirstColumn' property of the receiver to the <varbool> value of the argument."

	self put_ShowTableStyleFirstColumn: rhs
!

showTableStyleLastColumn
	"Answer the <varbool> value of the 'ShowTableStyleLastColumn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowTableStyleLastColumn: answer.
	^answer asObject
!

showTableStyleLastColumn: rhs
	"Set the 'ShowTableStyleLastColumn' property of the receiver to the <varbool> value of the argument."

	self put_ShowTableStyleLastColumn: rhs
!

showTableStyleRowStripes
	"Answer the <varbool> value of the 'ShowTableStyleRowStripes' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowTableStyleRowStripes: answer.
	^answer asObject
!

showTableStyleRowStripes: rhs
	"Set the 'ShowTableStyleRowStripes' property of the receiver to the <varbool> value of the argument."

	self put_ShowTableStyleRowStripes: rhs
!

showTotals
	"Answer the <varbool> value of the 'ShowTotals' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowTotals: answer.
	^answer asObject
!

showTotals: rhs
	"Set the 'ShowTotals' property of the receiver to the <varbool> value of the argument."

	self put_ShowTotals: rhs
!

sort
	"Answer the <ExcelSort> value of the 'Sort' property of the receiver."

	| answer |
	answer := ExcelSort newPointer.
	self get_Sort: answer.
	^answer asObject
!

sourceType
	"Answer the <sdword> value of the 'SourceType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SourceType: answer.
	^answer asObject
!

tableStyle
	"Answer the <variant> value of the 'TableStyle' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_TableStyle: answer.
	^answer asObject
!

tableStyle: rhs
	"Set the 'TableStyle' property of the receiver to the <variant> value of the argument."

	self put_TableStyle: rhs asVariant
!

totalsRowRange
	"Answer the <ExcelRange> value of the 'TotalsRowRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_TotalsRowRange: answer.
	^answer asObject
!

unlink
	"Invoke the Unlink() method of the COM object."

	^self Unlink
!

Unlink
	"Private - Invoke the Unlink() method of the COM object.

		HRESULT __stdcall Unlink();"

	<virtual stdcall: hresult 14>
	^self invalidCall!

unlist
	"Invoke the Unlist() method of the COM object."

	^self Unlist
!

Unlist
	"Private - Invoke the Unlist() method of the COM object.

		HRESULT __stdcall Unlist();"

	<virtual stdcall: hresult 15>
	^self invalidCall!

updateChanges
	"Invoke the UpdateChanges() method of the COM object.
	Default values are passed for all optional parameters."

	^self updateChanges: 0!

updateChanges: iConflictType
	"Invoke the UpdateChanges() method of the COM object."

	^self UpdateChanges: iConflictType
!

UpdateChanges: iConflictType
	"Private - Invoke the UpdateChanges() method of the COM object.

		HRESULT __stdcall UpdateChanges(
			[in, defaultvalue(0)]XlListConflict iConflictType);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

xmlMap
	"Answer the <ExcelXmlMap> value of the 'XmlMap' property of the receiver."

	| answer |
	answer := ExcelXmlMap newPointer.
	self get_XmlMap: answer.
	^answer asObject
! !
!ExcelIListObject categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #active!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #autoFilter!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #comment!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #comment:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #dataBodyRange!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #Delete!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #displayName!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #displayName:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #displayRightToLeft!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #exportToVisio!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #ExportToVisio!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_Active:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_AutoFilter:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_Comment:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_DataBodyRange:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_DisplayName:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_DisplayRightToLeft:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_HeaderRowRange:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_InsertRowRange:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ListColumns:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ListRows:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_QueryTable:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_Range:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_SharePointURL:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ShowAutoFilter:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ShowHeaders:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ShowTableStyleColumnStripes:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ShowTableStyleFirstColumn:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ShowTableStyleLastColumn:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ShowTableStyleRowStripes:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_ShowTotals:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_Sort:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_SourceType:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_TableStyle:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_TotalsRowRange:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #get_XmlMap:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #headerRowRange!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #insertRowRange!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #listColumns!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #listRows!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #publish:linkSource:!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #Publish:linkSource:rhs:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_Comment:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_DisplayName:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_ShowAutoFilter:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_ShowHeaders:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_ShowTableStyleColumnStripes:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_ShowTableStyleFirstColumn:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_ShowTableStyleLastColumn:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_ShowTableStyleRowStripes:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_ShowTotals:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #put_TableStyle:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #queryTable!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #range!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #Refresh!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #Resize:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #resize_:!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #sharePointURL!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showAutoFilter!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showAutoFilter:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showHeaders!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showHeaders:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTableStyleColumnStripes!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTableStyleColumnStripes:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTableStyleFirstColumn!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTableStyleFirstColumn:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTableStyleLastColumn!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTableStyleLastColumn:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTableStyleRowStripes!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTableStyleRowStripes:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTotals!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #showTotals:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #sort!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #sourceType!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #tableStyle!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #tableStyle:!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #totalsRowRange!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #unlink!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #Unlink!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #unlist!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #Unlist!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #updateChanges!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #updateChanges:!**auto generated**!methods!public! !
!ExcelIListObject categoriesFor: #UpdateChanges:!**auto generated**!COM Interfaces-IListObject!private! !
!ExcelIListObject categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIListObject categoriesFor: #xmlMap!**auto generated**!properties!public! !

!ExcelIListObject class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IListObject'
		ExcelIListObject defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete;
		defineFunction: #Publish:linkSource:rhs:
			argumentTypes: 'variant varbool bstr*';
		defineFunction: #Refresh;
		defineFunction: #Unlink;
		defineFunction: #Unlist;
		defineFunction: #UpdateChanges:
			argumentTypes: 'sdword';
		defineFunction: #Resize:
			argumentTypes: 'ExcelRange*';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_Active:
			argumentTypes: 'varbool*';
		defineFunction: #get_DataBodyRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_DisplayRightToLeft:
			argumentTypes: 'varbool*';
		defineFunction: #get_HeaderRowRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_InsertRowRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_ListColumns:
			argumentTypes: 'ExcelListColumns**';
		defineFunction: #get_ListRows:
			argumentTypes: 'ExcelListRows**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_QueryTable:
			argumentTypes: 'Excel_QueryTable**';
		defineFunction: #get_Range:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_ShowAutoFilter:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowAutoFilter:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowTotals:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowTotals:
			argumentTypes: 'varbool';
		defineFunction: #get_SourceType:
			argumentTypes: 'sdword*';
		defineFunction: #get_TotalsRowRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_SharePointURL:
			argumentTypes: 'bstr*';
		defineFunction: #get_XmlMap:
			argumentTypes: 'ExcelXmlMap**';
		defineFunction: #get_DisplayName:
			argumentTypes: 'bstr*';
		defineFunction: #put_DisplayName:
			argumentTypes: 'bstr';
		defineFunction: #get_ShowHeaders:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowHeaders:
			argumentTypes: 'varbool';
		defineFunction: #get_AutoFilter:
			argumentTypes: 'ExcelAutoFilter**';
		defineFunction: #get_TableStyle:
			argumentTypes: 'variant*';
		defineFunction: #put_TableStyle:
			argumentTypes: 'variant';
		defineFunction: #get_ShowTableStyleFirstColumn:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowTableStyleFirstColumn:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowTableStyleLastColumn:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowTableStyleLastColumn:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowTableStyleRowStripes:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowTableStyleRowStripes:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowTableStyleColumnStripes:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowTableStyleColumnStripes:
			argumentTypes: 'varbool';
		defineFunction: #get_Sort:
			argumentTypes: 'ExcelSort**';
		defineFunction: #get_Comment:
			argumentTypes: 'bstr*';
		defineFunction: #put_Comment:
			argumentTypes: 'bstr';
		defineFunction: #ExportToVisio
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIListObject initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIListObject class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIListObject class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

