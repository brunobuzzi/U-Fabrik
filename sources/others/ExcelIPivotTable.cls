"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotTable guid: (IID fromString: '{00020872-0001-0000-C000-000000000046}')!
ExcelIPivotTable comment: '<ExcelIPivotTable> is a wrapper class for the COM interface ''Excel.IPivotTable'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020872-0001-0000-C000-000000000046), 
	helpcontext(0x00020032), 
	hidden
]
interface IPivotTable : IDispatch
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
	[id(0x000002c4), helpcontext(0x000102c4)]
	HRESULT __stdcall AddFields(
		[in, optional]VARIANT RowFields,
		[in, optional]VARIANT ColumnFields,
		[in, optional]VARIANT PageFields,
		[in, optional]VARIANT AddToTable,
		[out, retval]VARIANT* RHS);
	[id(0x000002c9), propget, helpcontext(0x000102c9)]
	HRESULT __stdcall ColumnFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002b6), propget, helpcontext(0x000102b6)]
	HRESULT __stdcall ColumnGrand(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002b6), propput, helpcontext(0x000102b6)]
	HRESULT __stdcall ColumnGrand(
		[in]VARIANT_BOOL RHS);
	[id(0x000002be), propget, helpcontext(0x000102be)]
	HRESULT __stdcall ColumnRange(
		[out, retval]Range** RHS);
	[id(0x000002c2), helpcontext(0x000102c2)]
	HRESULT __stdcall ShowPages(
		[in, optional]VARIANT PageField,
		[out, retval]VARIANT* RHS);
	[id(0x000002c1), propget, helpcontext(0x000102c1)]
	HRESULT __stdcall DataBodyRange(
		[out, retval]Range** RHS);
	[id(0x000002cb), propget, helpcontext(0x000102cb)]
	HRESULT __stdcall DataFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002c0), propget, helpcontext(0x000102c0)]
	HRESULT __stdcall DataLabelRange(
		[out, retval]Range** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]BSTR RHS);
	[id(0x000002b7), propget, helpcontext(0x000102b7)]
	HRESULT __stdcall HasAutoFormat(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002b7), propput, helpcontext(0x000102b7)]
	HRESULT __stdcall HasAutoFormat(
		[in]VARIANT_BOOL RHS);
	[id(0x000002c7), propget, helpcontext(0x000102c7)]
	HRESULT __stdcall HiddenFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002ba), propget, helpcontext(0x000102ba)]
	HRESULT __stdcall InnerDetail(
		[out, retval]BSTR* RHS);
	[id(0x000002ba), propput, helpcontext(0x000102ba)]
	HRESULT __stdcall InnerDetail(
		[in]BSTR RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000002ca), propget, helpcontext(0x000102ca)]
	HRESULT __stdcall PageFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002bf), propget, helpcontext(0x000102bf)]
	HRESULT __stdcall PageRange(
		[out, retval]Range** RHS);
	[id(0x000005ca), propget, helpcontext(0x000105ca)]
	HRESULT __stdcall PageRangeCells(
		[out, retval]Range** RHS);
	[id(0x000002ce), helpcontext(0x000102ce)]
	HRESULT __stdcall PivotFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002b8), propget, helpcontext(0x000102b8)]
	HRESULT __stdcall RefreshDate(
		[out, retval]DATE* RHS);
	[id(0x000002b9), propget, helpcontext(0x000102b9)]
	HRESULT __stdcall RefreshName(
		[out, retval]BSTR* RHS);
	[id(0x000002cd), helpcontext(0x000102cd)]
	HRESULT __stdcall RefreshTable(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002c8), propget, helpcontext(0x000102c8)]
	HRESULT __stdcall RowFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002b5), propget, helpcontext(0x000102b5)]
	HRESULT __stdcall RowGrand(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002b5), propput, helpcontext(0x000102b5)]
	HRESULT __stdcall RowGrand(
		[in]VARIANT_BOOL RHS);
	[id(0x000002bd), propget, helpcontext(0x000102bd)]
	HRESULT __stdcall RowRange(
		[out, retval]Range** RHS);
	[id(0x000002b4), propget, helpcontext(0x000102b4)]
	HRESULT __stdcall SaveData(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002b4), propput, helpcontext(0x000102b4)]
	HRESULT __stdcall SaveData(
		[in]VARIANT_BOOL RHS);
	[id(0x000002ae), propget, helpcontext(0x000102ae)]
	HRESULT __stdcall SourceData(
		[out, retval]VARIANT* RHS);
	[id(0x000002ae), propput, helpcontext(0x000102ae)]
	HRESULT __stdcall SourceData(
		[in]VARIANT RHS);
	[id(0x000002bb), propget, helpcontext(0x000102bb)]
	HRESULT __stdcall TableRange1(
		[out, retval]Range** RHS);
	[id(0x000002bc), propget, helpcontext(0x000102bc)]
	HRESULT __stdcall TableRange2(
		[out, retval]Range** RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]BSTR RHS);
	[id(0x000002c6), propget, helpcontext(0x000102c6)]
	HRESULT __stdcall VisibleFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000005cb), propget, helpcontext(0x000105cb)]
	HRESULT __stdcall CacheIndex(
		[out, retval]long* RHS);
	[id(0x000005cb), propput, helpcontext(0x000105cb)]
	HRESULT __stdcall CacheIndex(
		[in]long RHS);
	[id(0x000005cc), helpcontext(0x000105cc)]
	HRESULT __stdcall CalculatedFields(
		[out, retval]CalculatedFields** RHS);
	[id(0x000005cd), propget, helpcontext(0x000105cd)]
	HRESULT __stdcall DisplayErrorString(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005cd), propput, helpcontext(0x000105cd)]
	HRESULT __stdcall DisplayErrorString(
		[in]VARIANT_BOOL RHS);
	[id(0x000005ce), propget, helpcontext(0x000105ce)]
	HRESULT __stdcall DisplayNullString(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005ce), propput, helpcontext(0x000105ce)]
	HRESULT __stdcall DisplayNullString(
		[in]VARIANT_BOOL RHS);
	[id(0x000005cf), propget, helpcontext(0x000105cf)]
	HRESULT __stdcall EnableDrilldown(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005cf), propput, helpcontext(0x000105cf)]
	HRESULT __stdcall EnableDrilldown(
		[in]VARIANT_BOOL RHS);
	[id(0x000005d0), propget, helpcontext(0x000105d0)]
	HRESULT __stdcall EnableFieldDialog(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005d0), propput, helpcontext(0x000105d0)]
	HRESULT __stdcall EnableFieldDialog(
		[in]VARIANT_BOOL RHS);
	[id(0x000005d1), propget, helpcontext(0x000105d1)]
	HRESULT __stdcall EnableWizard(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005d1), propput, helpcontext(0x000105d1)]
	HRESULT __stdcall EnableWizard(
		[in]VARIANT_BOOL RHS);
	[id(0x000005d2), propget, helpcontext(0x000105d2)]
	HRESULT __stdcall ErrorString(
		[out, retval]BSTR* RHS);
	[id(0x000005d2), propput, helpcontext(0x000105d2)]
	HRESULT __stdcall ErrorString(
		[in]BSTR RHS);
	[id(0x000005d3), helpcontext(0x000105d3)]
	HRESULT __stdcall GetData(
		[in]BSTR Name,
		[out, retval]double* RHS);
	[id(0x000005d4), helpcontext(0x000105d4)]
	HRESULT __stdcall ListFormulas();
	[id(0x000005d5), propget, helpcontext(0x000105d5)]
	HRESULT __stdcall ManualUpdate(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005d5), propput, helpcontext(0x000105d5)]
	HRESULT __stdcall ManualUpdate(
		[in]VARIANT_BOOL RHS);
	[id(0x000005d6), propget, helpcontext(0x000105d6)]
	HRESULT __stdcall MergeLabels(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005d6), propput, helpcontext(0x000105d6)]
	HRESULT __stdcall MergeLabels(
		[in]VARIANT_BOOL RHS);
	[id(0x000005d7), propget, helpcontext(0x000105d7)]
	HRESULT __stdcall NullString(
		[out, retval]BSTR* RHS);
	[id(0x000005d7), propput, helpcontext(0x000105d7)]
	HRESULT __stdcall NullString(
		[in]BSTR RHS);
	[id(0x000005d8), helpcontext(0x000105d8)]
	HRESULT __stdcall PivotCache(
		[out, retval]PivotCache** RHS);
	[id(0x000005d9), propget, helpcontext(0x000105d9)]
	HRESULT __stdcall PivotFormulas(
		[out, retval]PivotFormulas** RHS);
	[id(0x000002ac), helpcontext(0x000102ac)]
	HRESULT __stdcall PivotTableWizard(
		[in, optional]VARIANT SourceType,
		[in, optional]VARIANT SourceData,
		[in, optional]VARIANT TableDestination,
		[in, optional]VARIANT TableName,
		[in, optional]VARIANT RowGrand,
		[in, optional]VARIANT ColumnGrand,
		[in, optional]VARIANT SaveData,
		[in, optional]VARIANT HasAutoFormat,
		[in, optional]VARIANT AutoPage,
		[in, optional]VARIANT Reserved,
		[in, optional]VARIANT BackgroundQuery,
		[in, optional]VARIANT OptimizeCache,
		[in, optional]VARIANT PageFieldOrder,
		[in, optional]VARIANT PageFieldWrapCount,
		[in, optional]VARIANT ReadData,
		[in, optional]VARIANT Connection);
	[id(0x000005da), propget, helpcontext(0x000105da)]
	HRESULT __stdcall SubtotalHiddenPageItems(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005da), propput, helpcontext(0x000105da)]
	HRESULT __stdcall SubtotalHiddenPageItems(
		[in]VARIANT_BOOL RHS);
	[id(0x00000595), propget, helpcontext(0x00010595)]
	HRESULT __stdcall PageFieldOrder(
		[out, retval]long* RHS);
	[id(0x00000595), propput, helpcontext(0x00010595)]
	HRESULT __stdcall PageFieldOrder(
		[in]long RHS);
	[id(0x000005db), propget, helpcontext(0x000105db)]
	HRESULT __stdcall PageFieldStyle(
		[out, retval]BSTR* RHS);
	[id(0x000005db), propput, helpcontext(0x000105db)]
	HRESULT __stdcall PageFieldStyle(
		[in]BSTR RHS);
	[id(0x00000596), propget, helpcontext(0x00010596)]
	HRESULT __stdcall PageFieldWrapCount(
		[out, retval]long* RHS);
	[id(0x00000596), propput, helpcontext(0x00010596)]
	HRESULT __stdcall PageFieldWrapCount(
		[in]long RHS);
	[id(0x000005dc), propget, helpcontext(0x000105dc)]
	HRESULT __stdcall PreserveFormatting(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005dc), propput, helpcontext(0x000105dc)]
	HRESULT __stdcall PreserveFormatting(
		[in]VARIANT_BOOL RHS);
	[id(0x00000827), hidden, helpcontext(0x00010827)]
	HRESULT __stdcall _PivotSelect(
		[in]BSTR Name,
		[in, defaultvalue(0)]XlPTSelectionMode Mode);
	[id(0x000005de), propget, helpcontext(0x000105de)]
	HRESULT __stdcall PivotSelection(
		[out, retval]BSTR* RHS);
	[id(0x000005de), propput, helpcontext(0x000105de)]
	HRESULT __stdcall PivotSelection(
		[in]BSTR RHS);
	[id(0x000005df), propget, helpcontext(0x000105df)]
	HRESULT __stdcall SelectionMode(
		[out, retval]XlPTSelectionMode* RHS);
	[id(0x000005df), propput, helpcontext(0x000105df)]
	HRESULT __stdcall SelectionMode(
		[in]XlPTSelectionMode RHS);
	[id(0x000005e0), hidden, propget, helpcontext(0x000105e0)]
	HRESULT __stdcall TableStyle(
		[out, retval]BSTR* RHS);
	[id(0x000005e0), hidden, propput, helpcontext(0x000105e0)]
	HRESULT __stdcall TableStyle(
		[in]BSTR RHS);
	[id(0x000005e1), propget, helpcontext(0x000105e1)]
	HRESULT __stdcall Tag(
		[out, retval]BSTR* RHS);
	[id(0x000005e1), propput, helpcontext(0x000105e1)]
	HRESULT __stdcall Tag(
		[in]BSTR RHS);
	[id(0x000002a8), helpcontext(0x000102a8)]
	HRESULT __stdcall Update();
	[id(0x000005e2), propget, helpcontext(0x000105e2)]
	HRESULT __stdcall VacatedStyle(
		[out, retval]BSTR* RHS);
	[id(0x000005e2), propput, helpcontext(0x000105e2)]
	HRESULT __stdcall VacatedStyle(
		[in]BSTR RHS);
	[id(0x00000074), hidden, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[in]XlPivotFormatType Format);
	[id(0x0000072e), propget, helpcontext(0x0001072e)]
	HRESULT __stdcall PrintTitles(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000072e), propput, helpcontext(0x0001072e)]
	HRESULT __stdcall PrintTitles(
		[in]VARIANT_BOOL RHS);
	[id(0x0000072f), propget, helpcontext(0x0001072f)]
	HRESULT __stdcall CubeFields(
		[out, retval]CubeFields** RHS);
	[id(0x00000730), propget, helpcontext(0x00010730)]
	HRESULT __stdcall GrandTotalName(
		[out, retval]BSTR* RHS);
	[id(0x00000730), propput, helpcontext(0x00010730)]
	HRESULT __stdcall GrandTotalName(
		[in]BSTR RHS);
	[id(0x00000731), propget, helpcontext(0x00010731)]
	HRESULT __stdcall SmallGrid(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000731), propput, helpcontext(0x00010731)]
	HRESULT __stdcall SmallGrid(
		[in]VARIANT_BOOL RHS);
	[id(0x00000732), propget, helpcontext(0x00010732)]
	HRESULT __stdcall RepeatItemsOnEachPrintedPage(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000732), propput, helpcontext(0x00010732)]
	HRESULT __stdcall RepeatItemsOnEachPrintedPage(
		[in]VARIANT_BOOL RHS);
	[id(0x00000733), propget, helpcontext(0x00010733)]
	HRESULT __stdcall TotalsAnnotation(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000733), propput, helpcontext(0x00010733)]
	HRESULT __stdcall TotalsAnnotation(
		[in]VARIANT_BOOL RHS);
	[id(0x000005dd), helpcontext(0x000105dd)]
	HRESULT __stdcall PivotSelect(
		[in]BSTR Name,
		[in, defaultvalue(0)]XlPTSelectionMode Mode,
		[in, optional]VARIANT UseStandardName);
	[id(0x00000829), propget, helpcontext(0x00010829)]
	HRESULT __stdcall PivotSelectionStandard(
		[out, retval]BSTR* RHS);
	[id(0x00000829), propput, helpcontext(0x00010829)]
	HRESULT __stdcall PivotSelectionStandard(
		[in]BSTR RHS);
	[id(0x0000082a), helpcontext(0x0001082a)]
	HRESULT __stdcall GetPivotData(
		[in, optional]VARIANT DataField,
		[in, optional]VARIANT Field1,
		[in, optional]VARIANT Item1,
		[in, optional]VARIANT Field2,
		[in, optional]VARIANT Item2,
		[in, optional]VARIANT Field3,
		[in, optional]VARIANT Item3,
		[in, optional]VARIANT Field4,
		[in, optional]VARIANT Item4,
		[in, optional]VARIANT Field5,
		[in, optional]VARIANT Item5,
		[in, optional]VARIANT Field6,
		[in, optional]VARIANT Item6,
		[in, optional]VARIANT Field7,
		[in, optional]VARIANT Item7,
		[in, optional]VARIANT Field8,
		[in, optional]VARIANT Item8,
		[in, optional]VARIANT Field9,
		[in, optional]VARIANT Item9,
		[in, optional]VARIANT Field10,
		[in, optional]VARIANT Item10,
		[in, optional]VARIANT Field11,
		[in, optional]VARIANT Item11,
		[in, optional]VARIANT Field12,
		[in, optional]VARIANT Item12,
		[in, optional]VARIANT Field13,
		[in, optional]VARIANT Item13,
		[in, optional]VARIANT Field14,
		[in, optional]VARIANT Item14,
		[out, retval]Range** RHS);
	[id(0x00000848), propget, helpcontext(0x00010848)]
	HRESULT __stdcall DataPivotField(
		[out, retval]PivotField** RHS);
	[id(0x00000849), propget, helpcontext(0x00010849)]
	HRESULT __stdcall EnableDataValueEditing(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000849), propput, helpcontext(0x00010849)]
	HRESULT __stdcall EnableDataValueEditing(
		[in]VARIANT_BOOL RHS);
	[id(0x0000084a), helpcontext(0x0001084a)]
	HRESULT __stdcall AddDataField(
		[in]IDispatch* Field,
		[in, optional]VARIANT Caption,
		[in, optional]VARIANT Function,
		[out, retval]PivotField** RHS);
	[id(0x0000084b), propget, helpcontext(0x0001084b)]
	HRESULT __stdcall MDX(
		[out, retval]BSTR* RHS);
	[id(0x0000084c), propget, helpcontext(0x0001084c)]
	HRESULT __stdcall ViewCalculatedMembers(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000084c), propput, helpcontext(0x0001084c)]
	HRESULT __stdcall ViewCalculatedMembers(
		[in]VARIANT_BOOL RHS);
	[id(0x0000084d), propget, helpcontext(0x0001084d)]
	HRESULT __stdcall CalculatedMembers(
		[out, retval]CalculatedMembers** RHS);
	[id(0x0000084e), propget, helpcontext(0x0001084e)]
	HRESULT __stdcall DisplayImmediateItems(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000084e), propput, helpcontext(0x0001084e)]
	HRESULT __stdcall DisplayImmediateItems(
		[in]VARIANT_BOOL RHS);
	[id(0x0000084f), hidden, helpcontext(0x0001084f)]
	HRESULT __stdcall Dummy15(
		[in]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[in, optional]VARIANT Arg9,
		[in, optional]VARIANT Arg10,
		[in, optional]VARIANT Arg11,
		[in, optional]VARIANT Arg12,
		[in, optional]VARIANT Arg13,
		[in, optional]VARIANT Arg14,
		[in, optional]VARIANT Arg15,
		[in, optional]VARIANT Arg16,
		[in, optional]VARIANT Arg17,
		[in, optional]VARIANT Arg18,
		[in, optional]VARIANT Arg19,
		[in, optional]VARIANT Arg20,
		[in, optional]VARIANT Arg21,
		[in, optional]VARIANT Arg22,
		[in, optional]VARIANT Arg23,
		[in, optional]VARIANT Arg24,
		[in, optional]VARIANT Arg25,
		[in, optional]VARIANT Arg26,
		[in, optional]VARIANT Arg27,
		[in, optional]VARIANT Arg28,
		[in, optional]VARIANT Arg29,
		[in, optional]VARIANT Arg30,
		[out, retval]VARIANT* RHS);
	[id(0x00000850), propget, helpcontext(0x00010850)]
	HRESULT __stdcall EnableFieldList(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000850), propput, helpcontext(0x00010850)]
	HRESULT __stdcall EnableFieldList(
		[in]VARIANT_BOOL RHS);
	[id(0x00000851), propget, helpcontext(0x00010851)]
	HRESULT __stdcall VisualTotals(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000851), propput, helpcontext(0x00010851)]
	HRESULT __stdcall VisualTotals(
		[in]VARIANT_BOOL RHS);
	[id(0x00000852), propget, helpcontext(0x00010852)]
	HRESULT __stdcall ShowPageMultipleItemLabel(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000852), propput, helpcontext(0x00010852)]
	HRESULT __stdcall ShowPageMultipleItemLabel(
		[in]VARIANT_BOOL RHS);
	[id(0x00000188), propget, helpcontext(0x00010188)]
	HRESULT __stdcall Version(
		[out, retval]XlPivotTableVersionList* RHS);
	[id(0x00000853), helpcontext(0x00010853)]
	HRESULT __stdcall CreateCubeFile(
		[in]BSTR File,
		[in, optional]VARIANT Measures,
		[in, optional]VARIANT Levels,
		[in, optional]VARIANT Members,
		[in, optional]VARIANT Properties,
		[out, retval]BSTR* RHS);
	[id(0x00000858), propget, helpcontext(0x00010858)]
	HRESULT __stdcall DisplayEmptyRow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000858), propput, helpcontext(0x00010858)]
	HRESULT __stdcall DisplayEmptyRow(
		[in]VARIANT_BOOL RHS);
	[id(0x00000859), propget, helpcontext(0x00010859)]
	HRESULT __stdcall DisplayEmptyColumn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000859), propput, helpcontext(0x00010859)]
	HRESULT __stdcall DisplayEmptyColumn(
		[in]VARIANT_BOOL RHS);
	[id(0x0000085a), hidden, propget, helpcontext(0x0001085a)]
	HRESULT __stdcall ShowCellBackgroundFromOLAP(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000085a), hidden, propput, helpcontext(0x0001085a)]
	HRESULT __stdcall ShowCellBackgroundFromOLAP(
		[in]VARIANT_BOOL RHS);
	[id(0x000009f2), propget, helpcontext(0x000109f2)]
	HRESULT __stdcall PivotColumnAxis(
		[out, retval]PivotAxis** RHS);
	[id(0x000009f3), propget, helpcontext(0x000109f3)]
	HRESULT __stdcall PivotRowAxis(
		[out, retval]PivotAxis** RHS);
	[id(0x000009f4), propget, helpcontext(0x000109f4)]
	HRESULT __stdcall ShowDrillIndicators(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009f4), propput, helpcontext(0x000109f4)]
	HRESULT __stdcall ShowDrillIndicators(
		[in]VARIANT_BOOL RHS);
	[id(0x000009f5), propget, helpcontext(0x000109f5)]
	HRESULT __stdcall PrintDrillIndicators(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009f5), propput, helpcontext(0x000109f5)]
	HRESULT __stdcall PrintDrillIndicators(
		[in]VARIANT_BOOL RHS);
	[id(0x000009f6), propget, helpcontext(0x000109f6)]
	HRESULT __stdcall DisplayMemberPropertyTooltips(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009f6), propput, helpcontext(0x000109f6)]
	HRESULT __stdcall DisplayMemberPropertyTooltips(
		[in]VARIANT_BOOL RHS);
	[id(0x000009f7), propget, helpcontext(0x000109f7)]
	HRESULT __stdcall DisplayContextTooltips(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009f7), propput, helpcontext(0x000109f7)]
	HRESULT __stdcall DisplayContextTooltips(
		[in]VARIANT_BOOL RHS);
	[id(0x000009f8), helpcontext(0x000109f8)]
	HRESULT __stdcall ClearTable();
	[id(0x000009f9), propget, helpcontext(0x000109f9)]
	HRESULT __stdcall CompactRowIndent(
		[out, retval]long* RHS);
	[id(0x000009f9), propput, helpcontext(0x000109f9)]
	HRESULT __stdcall CompactRowIndent(
		[in]long RHS);
	[id(0x000009fa), propget, helpcontext(0x000109fa)]
	HRESULT __stdcall LayoutRowDefault(
		[out, retval]XlLayoutRowType* RHS);
	[id(0x000009fa), propput, helpcontext(0x000109fa)]
	HRESULT __stdcall LayoutRowDefault(
		[in]XlLayoutRowType RHS);
	[id(0x000009fb), propget, helpcontext(0x000109fb)]
	HRESULT __stdcall DisplayFieldCaptions(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009fb), propput, helpcontext(0x000109fb)]
	HRESULT __stdcall DisplayFieldCaptions(
		[in]VARIANT_BOOL RHS);
	[id(0x000009fc), helpcontext(0x000109fc)]
	HRESULT __stdcall RowAxisLayout(
		[in]XlLayoutRowType RowLayout);
	[id(0x000009fe), helpcontext(0x000109fe)]
	HRESULT __stdcall SubtotalLocation(
		[in]XlSubtototalLocationType Location);
	[id(0x000009ff), propget, helpcontext(0x000109ff)]
	HRESULT __stdcall ActiveFilters(
		[out, retval]PivotFilters** RHS);
	[id(0x00000a00), propget, helpcontext(0x00010a00)]
	HRESULT __stdcall InGridDropZones(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a00), propput, helpcontext(0x00010a00)]
	HRESULT __stdcall InGridDropZones(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a01), helpcontext(0x00010a01)]
	HRESULT __stdcall ClearAllFilters();
	[id(0x00000a02), propget, helpcontext(0x00010a02)]
	HRESULT __stdcall TableStyle2(
		[out, retval]VARIANT* RHS);
	[id(0x00000a02), propput, helpcontext(0x00010a02)]
	HRESULT __stdcall TableStyle2(
		[in]VARIANT RHS);
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
	[id(0x00000a06), propget, helpcontext(0x00010a06)]
	HRESULT __stdcall ShowTableStyleRowHeaders(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a06), propput, helpcontext(0x00010a06)]
	HRESULT __stdcall ShowTableStyleRowHeaders(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a07), propget, helpcontext(0x00010a07)]
	HRESULT __stdcall ShowTableStyleColumnHeaders(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a07), propput, helpcontext(0x00010a07)]
	HRESULT __stdcall ShowTableStyleColumnHeaders(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a08), helpcontext(0x00010a08)]
	HRESULT __stdcall ConvertToFormulas(
		[in]VARIANT_BOOL ConvertFilters);
	[id(0x00000a0a), propget, helpcontext(0x00010a0a)]
	HRESULT __stdcall AllowMultipleFilters(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a0a), propput, helpcontext(0x00010a0a)]
	HRESULT __stdcall AllowMultipleFilters(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a0b), propget, helpcontext(0x00010a0b)]
	HRESULT __stdcall CompactLayoutRowHeader(
		[out, retval]BSTR* RHS);
	[id(0x00000a0b), propput, helpcontext(0x00010a0b)]
	HRESULT __stdcall CompactLayoutRowHeader(
		[in]BSTR RHS);
	[id(0x00000a0c), propget, helpcontext(0x00010a0c)]
	HRESULT __stdcall CompactLayoutColumnHeader(
		[out, retval]BSTR* RHS);
	[id(0x00000a0c), propput, helpcontext(0x00010a0c)]
	HRESULT __stdcall CompactLayoutColumnHeader(
		[in]BSTR RHS);
	[id(0x00000a0d), propget, helpcontext(0x00010a0d)]
	HRESULT __stdcall FieldListSortAscending(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a0d), propput, helpcontext(0x00010a0d)]
	HRESULT __stdcall FieldListSortAscending(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a0e), propget, helpcontext(0x00010a0e)]
	HRESULT __stdcall SortUsingCustomLists(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a0e), propput, helpcontext(0x00010a0e)]
	HRESULT __stdcall SortUsingCustomLists(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a0f), helpcontext(0x00010a0f)]
	HRESULT __stdcall ChangeConnection(
		[in]WorkbookConnection* conn);
	[id(0x00000a11), helpcontext(0x00010a11)]
	HRESULT __stdcall ChangePivotCache(
		[in]VARIANT PivotCache);
	[id(0x00000575), propget, helpcontext(0x00010575)]
	HRESULT __stdcall Location(
		[out, retval]BSTR* RHS);
	[id(0x00000575), propput, helpcontext(0x00010575)]
	HRESULT __stdcall Location(
		[in]BSTR RHS);
};
'!
!ExcelIPivotTable categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotTable methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

_default: rhs
	"Set the '_Default' property of the receiver to the <bstr> value of the argument."

	self put__Default: rhs
!

_pivotSelect: name
	"Invoke the _PivotSelect() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _pivotSelect: name
		 mode: 0!

_pivotSelect: name mode: mode
	"Invoke the _PivotSelect() method of the COM object."

	^self
		_PivotSelect: name
		mode: mode
!

_PivotSelect: name mode: mode
	"Private - Invoke the _PivotSelect() method of the COM object.

		HRESULT __stdcall _PivotSelect(
			[in]BSTR Name,
			[in, defaultvalue(0)]XlPTSelectionMode Mode);"

	<virtual stdcall: hresult 85 bstr sdword>
	^self invalidCall!

activeFilters
	"Answer the <ExcelPivotFilters> value of the 'ActiveFilters' property of the receiver."

	| answer |
	answer := ExcelPivotFilters newPointer.
	self get_ActiveFilters: answer.
	^answer asObject
!

addDataField: field
	"Answer the <ExcelPivotField> result of invoking the AddDataField() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addDataField: field
		 caption: VARIANT unspecified
		 function: VARIANT unspecified!

addDataField: field caption: caption function: function
	"Answer the <ExcelPivotField> result of invoking the AddDataField() method of the COM object."

	| answer |
	answer := ExcelPivotField newPointer.
	self
		AddDataField: field
		caption: caption asVariant
		function: function asVariant
		rhs: answer.
	^answer asObject
!

AddDataField: field caption: caption function: function rhs: rhs
	"Private - Invoke the AddDataField() method of the COM object.

		HRESULT __stdcall AddDataField(
			[in]IDispatch* Field,
			[in, optional]VARIANT Caption,
			[in, optional]VARIANT Function,
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 116 IDispatch* variant variant ExcelPivotField**>
	^self invalidCall!

addFields
	"Answer the <VARIANT> result of invoking the AddFields() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addFields: VARIANT unspecified
		 columnFields: VARIANT unspecified
		 pageFields: VARIANT unspecified
		 addToTable: VARIANT unspecified!

addFields: rowFields columnFields: columnFields pageFields: pageFields addToTable: addToTable
	"Answer the <VARIANT> result of invoking the AddFields() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		AddFields: rowFields asVariant
		columnFields: columnFields asVariant
		pageFields: pageFields asVariant
		addToTable: addToTable asVariant
		rhs: answer.
	^answer asObject
!

AddFields: rowFields columnFields: columnFields pageFields: pageFields addToTable: addToTable rhs: rhs
	"Private - Invoke the AddFields() method of the COM object.

		HRESULT __stdcall AddFields(
			[in, optional]VARIANT RowFields,
			[in, optional]VARIANT ColumnFields,
			[in, optional]VARIANT PageFields,
			[in, optional]VARIANT AddToTable,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant variant variant variant variant*>
	^self invalidCall!

allowMultipleFilters
	"Answer the <varbool> value of the 'AllowMultipleFilters' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowMultipleFilters: answer.
	^answer asObject
!

allowMultipleFilters: rhs
	"Set the 'AllowMultipleFilters' property of the receiver to the <varbool> value of the argument."

	self put_AllowMultipleFilters: rhs
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

cacheIndex
	"Answer the <sdword> value of the 'CacheIndex' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CacheIndex: answer.
	^answer asObject
!

cacheIndex: rhs
	"Set the 'CacheIndex' property of the receiver to the <sdword> value of the argument."

	self put_CacheIndex: rhs
!

calculatedFields
	"Answer the <ExcelCalculatedFields> result of invoking the CalculatedFields() method of the COM object."

	| answer |
	answer := ExcelCalculatedFields newPointer.
	self CalculatedFields: answer.
	^answer asObject
!

CalculatedFields: rhs
	"Private - Invoke the CalculatedFields() method of the COM object.

		HRESULT __stdcall CalculatedFields(
			[out, retval]CalculatedFields** RHS);"

	<virtual stdcall: hresult 51 ExcelCalculatedFields**>
	^self invalidCall!

calculatedMembers
	"Answer the <ExcelCalculatedMembers> value of the 'CalculatedMembers' property of the receiver."

	| answer |
	answer := ExcelCalculatedMembers newPointer.
	self get_CalculatedMembers: answer.
	^answer asObject
!

changeConnection: conn
	"Invoke the ChangeConnection() method of the COM object."

	^self ChangeConnection: conn
!

ChangeConnection: conn
	"Private - Invoke the ChangeConnection() method of the COM object.

		HRESULT __stdcall ChangeConnection(
			[in]WorkbookConnection* conn);"

	<virtual stdcall: hresult 184 ExcelWorkbookConnection*>
	^self invalidCall!

changePivotCache: pivotCache
	"Invoke the ChangePivotCache() method of the COM object."

	^self ChangePivotCache: pivotCache asVariant
!

ChangePivotCache: pivotCache
	"Private - Invoke the ChangePivotCache() method of the COM object.

		HRESULT __stdcall ChangePivotCache(
			[in]VARIANT PivotCache);"

	<virtual stdcall: hresult 185 variant>
	^self invalidCall!

clearAllFilters
	"Invoke the ClearAllFilters() method of the COM object."

	^self ClearAllFilters
!

ClearAllFilters
	"Private - Invoke the ClearAllFilters() method of the COM object.

		HRESULT __stdcall ClearAllFilters();"

	<virtual stdcall: hresult 160>
	^self invalidCall!

clearTable
	"Invoke the ClearTable() method of the COM object."

	^self ClearTable
!

ClearTable
	"Private - Invoke the ClearTable() method of the COM object.

		HRESULT __stdcall ClearTable();"

	<virtual stdcall: hresult 148>
	^self invalidCall!

columnFields
	"Answer the <IDispatch> value of the 'ColumnFields' property of the receiver."

	^self columnFields: VARIANT unspecified!

columnFields: index
	"Answer the <IDispatch> value of the 'ColumnFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_ColumnFields: index asVariant
		rhs: answer.
	^answer asObject
!

columnGrand
	"Answer the <varbool> value of the 'ColumnGrand' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ColumnGrand: answer.
	^answer asObject
!

columnGrand: rhs
	"Set the 'ColumnGrand' property of the receiver to the <varbool> value of the argument."

	self put_ColumnGrand: rhs
!

columnRange
	"Answer the <ExcelRange> value of the 'ColumnRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_ColumnRange: answer.
	^answer asObject
!

compactLayoutColumnHeader
	"Answer the <bstr> value of the 'CompactLayoutColumnHeader' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CompactLayoutColumnHeader: answer.
	^answer asObject
!

compactLayoutColumnHeader: rhs
	"Set the 'CompactLayoutColumnHeader' property of the receiver to the <bstr> value of the argument."

	self put_CompactLayoutColumnHeader: rhs
!

compactLayoutRowHeader
	"Answer the <bstr> value of the 'CompactLayoutRowHeader' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CompactLayoutRowHeader: answer.
	^answer asObject
!

compactLayoutRowHeader: rhs
	"Set the 'CompactLayoutRowHeader' property of the receiver to the <bstr> value of the argument."

	self put_CompactLayoutRowHeader: rhs
!

compactRowIndent
	"Answer the <sdword> value of the 'CompactRowIndent' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CompactRowIndent: answer.
	^answer asObject
!

compactRowIndent: rhs
	"Set the 'CompactRowIndent' property of the receiver to the <sdword> value of the argument."

	self put_CompactRowIndent: rhs
!

convertToFormulas: convertFilters
	"Invoke the ConvertToFormulas() method of the COM object."

	^self ConvertToFormulas: convertFilters
!

ConvertToFormulas: convertFilters
	"Private - Invoke the ConvertToFormulas() method of the COM object.

		HRESULT __stdcall ConvertToFormulas(
			[in]VARIANT_BOOL ConvertFilters);"

	<virtual stdcall: hresult 173 varbool>
	^self invalidCall!

createCubeFile: file
	"Answer the <BSTR> result of invoking the CreateCubeFile() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createCubeFile: file
		 measures: VARIANT unspecified
		 levels: VARIANT unspecified
		 members: VARIANT unspecified
		 properties: VARIANT unspecified!

createCubeFile: file measures: measures levels: levels members: members properties: properties
	"Answer the <BSTR> result of invoking the CreateCubeFile() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		CreateCubeFile: file
		measures: measures asVariant
		levels: levels asVariant
		members: members asVariant
		properties: properties asVariant
		rhs: answer.
	^answer asObject
!

CreateCubeFile: file measures: measures levels: levels members: members properties: properties rhs: rhs
	"Private - Invoke the CreateCubeFile() method of the COM object.

		HRESULT __stdcall CreateCubeFile(
			[in]BSTR File,
			[in, optional]VARIANT Measures,
			[in, optional]VARIANT Levels,
			[in, optional]VARIANT Members,
			[in, optional]VARIANT Properties,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 131 bstr variant variant variant variant bstr*>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

cubeFields
	"Answer the <ExcelCubeFields> value of the 'CubeFields' property of the receiver."

	| answer |
	answer := ExcelCubeFields newPointer.
	self get_CubeFields: answer.
	^answer asObject
!

dataBodyRange
	"Answer the <ExcelRange> value of the 'DataBodyRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_DataBodyRange: answer.
	^answer asObject
!

dataFields
	"Answer the <IDispatch> value of the 'DataFields' property of the receiver."

	^self dataFields: VARIANT unspecified!

dataFields: index
	"Answer the <IDispatch> value of the 'DataFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_DataFields: index asVariant
		rhs: answer.
	^answer asObject
!

dataLabelRange
	"Answer the <ExcelRange> value of the 'DataLabelRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_DataLabelRange: answer.
	^answer asObject
!

dataPivotField
	"Answer the <ExcelPivotField> value of the 'DataPivotField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_DataPivotField: answer.
	^answer asObject
!

displayContextTooltips
	"Answer the <varbool> value of the 'DisplayContextTooltips' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayContextTooltips: answer.
	^answer asObject
!

displayContextTooltips: rhs
	"Set the 'DisplayContextTooltips' property of the receiver to the <varbool> value of the argument."

	self put_DisplayContextTooltips: rhs
!

displayEmptyColumn
	"Answer the <varbool> value of the 'DisplayEmptyColumn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayEmptyColumn: answer.
	^answer asObject
!

displayEmptyColumn: rhs
	"Set the 'DisplayEmptyColumn' property of the receiver to the <varbool> value of the argument."

	self put_DisplayEmptyColumn: rhs
!

displayEmptyRow
	"Answer the <varbool> value of the 'DisplayEmptyRow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayEmptyRow: answer.
	^answer asObject
!

displayEmptyRow: rhs
	"Set the 'DisplayEmptyRow' property of the receiver to the <varbool> value of the argument."

	self put_DisplayEmptyRow: rhs
!

displayErrorString
	"Answer the <varbool> value of the 'DisplayErrorString' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayErrorString: answer.
	^answer asObject
!

displayErrorString: rhs
	"Set the 'DisplayErrorString' property of the receiver to the <varbool> value of the argument."

	self put_DisplayErrorString: rhs
!

displayFieldCaptions
	"Answer the <varbool> value of the 'DisplayFieldCaptions' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayFieldCaptions: answer.
	^answer asObject
!

displayFieldCaptions: rhs
	"Set the 'DisplayFieldCaptions' property of the receiver to the <varbool> value of the argument."

	self put_DisplayFieldCaptions: rhs
!

displayImmediateItems
	"Answer the <varbool> value of the 'DisplayImmediateItems' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayImmediateItems: answer.
	^answer asObject
!

displayImmediateItems: rhs
	"Set the 'DisplayImmediateItems' property of the receiver to the <varbool> value of the argument."

	self put_DisplayImmediateItems: rhs
!

displayMemberPropertyTooltips
	"Answer the <varbool> value of the 'DisplayMemberPropertyTooltips' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayMemberPropertyTooltips: answer.
	^answer asObject
!

displayMemberPropertyTooltips: rhs
	"Set the 'DisplayMemberPropertyTooltips' property of the receiver to the <varbool> value of the argument."

	self put_DisplayMemberPropertyTooltips: rhs
!

displayNullString
	"Answer the <varbool> value of the 'DisplayNullString' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayNullString: answer.
	^answer asObject
!

displayNullString: rhs
	"Set the 'DisplayNullString' property of the receiver to the <varbool> value of the argument."

	self put_DisplayNullString: rhs
!

dummy15: arg1
	"Answer the <VARIANT> result of invoking the Dummy15() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dummy15: arg1
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

dummy15: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT> result of invoking the Dummy15() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Dummy15: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		arg9: arg9 asVariant
		arg10: arg10 asVariant
		arg11: arg11 asVariant
		arg12: arg12 asVariant
		arg13: arg13 asVariant
		arg14: arg14 asVariant
		arg15: arg15 asVariant
		arg16: arg16 asVariant
		arg17: arg17 asVariant
		arg18: arg18 asVariant
		arg19: arg19 asVariant
		arg20: arg20 asVariant
		arg21: arg21 asVariant
		arg22: arg22 asVariant
		arg23: arg23 asVariant
		arg24: arg24 asVariant
		arg25: arg25 asVariant
		arg26: arg26 asVariant
		arg27: arg27 asVariant
		arg28: arg28 asVariant
		arg29: arg29 asVariant
		arg30: arg30 asVariant
		rhs: answer.
	^answer asObject
!

Dummy15: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Dummy15() method of the COM object.

		HRESULT __stdcall Dummy15(
			[in]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 123 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

enableDataValueEditing
	"Answer the <varbool> value of the 'EnableDataValueEditing' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableDataValueEditing: answer.
	^answer asObject
!

enableDataValueEditing: rhs
	"Set the 'EnableDataValueEditing' property of the receiver to the <varbool> value of the argument."

	self put_EnableDataValueEditing: rhs
!

enableDrilldown
	"Answer the <varbool> value of the 'EnableDrilldown' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableDrilldown: answer.
	^answer asObject
!

enableDrilldown: rhs
	"Set the 'EnableDrilldown' property of the receiver to the <varbool> value of the argument."

	self put_EnableDrilldown: rhs
!

enableFieldDialog
	"Answer the <varbool> value of the 'EnableFieldDialog' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableFieldDialog: answer.
	^answer asObject
!

enableFieldDialog: rhs
	"Set the 'EnableFieldDialog' property of the receiver to the <varbool> value of the argument."

	self put_EnableFieldDialog: rhs
!

enableFieldList
	"Answer the <varbool> value of the 'EnableFieldList' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableFieldList: answer.
	^answer asObject
!

enableFieldList: rhs
	"Set the 'EnableFieldList' property of the receiver to the <varbool> value of the argument."

	self put_EnableFieldList: rhs
!

enableWizard
	"Answer the <varbool> value of the 'EnableWizard' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableWizard: answer.
	^answer asObject
!

enableWizard: rhs
	"Set the 'EnableWizard' property of the receiver to the <varbool> value of the argument."

	self put_EnableWizard: rhs
!

errorString
	"Answer the <bstr> value of the 'ErrorString' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ErrorString: answer.
	^answer asObject
!

errorString: rhs
	"Set the 'ErrorString' property of the receiver to the <bstr> value of the argument."

	self put_ErrorString: rhs
!

fieldListSortAscending
	"Answer the <varbool> value of the 'FieldListSortAscending' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_FieldListSortAscending: answer.
	^answer asObject
!

fieldListSortAscending: rhs
	"Set the 'FieldListSortAscending' property of the receiver to the <varbool> value of the argument."

	self put_FieldListSortAscending: rhs
!

format: format
	"Invoke the Format() method of the COM object."

	^self Format: format
!

Format: format
	"Private - Invoke the Format() method of the COM object.

		HRESULT __stdcall Format(
			[in]XlPivotFormatType Format);"

	<virtual stdcall: hresult 97 sdword>
	^self invalidCall!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr*>
	^self invalidCall!

get_ActiveFilters: rhs
	"Private - Get the value of the 'ActiveFilters' property of the receiver.

		HRESULT __stdcall ActiveFilters(
			[out, retval]PivotFilters** RHS);"

	<virtual stdcall: hresult 157 ExcelPivotFilters**>
	^self invalidCall!

get_AllowMultipleFilters: rhs
	"Private - Get the value of the 'AllowMultipleFilters' property of the receiver.

		HRESULT __stdcall AllowMultipleFilters(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 174 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_CacheIndex: rhs
	"Private - Get the value of the 'CacheIndex' property of the receiver.

		HRESULT __stdcall CacheIndex(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 49 sdword*>
	^self invalidCall!

get_CalculatedMembers: rhs
	"Private - Get the value of the 'CalculatedMembers' property of the receiver.

		HRESULT __stdcall CalculatedMembers(
			[out, retval]CalculatedMembers** RHS);"

	<virtual stdcall: hresult 120 ExcelCalculatedMembers**>
	^self invalidCall!

get_ColumnFields: index rhs: rhs
	"Private - Get the value of the 'ColumnFields' property of the receiver.

		HRESULT __stdcall ColumnFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 12 variant IDispatch**>
	^self invalidCall!

get_ColumnGrand: rhs
	"Private - Get the value of the 'ColumnGrand' property of the receiver.

		HRESULT __stdcall ColumnGrand(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_ColumnRange: rhs
	"Private - Get the value of the 'ColumnRange' property of the receiver.

		HRESULT __stdcall ColumnRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 15 ExcelRange**>
	^self invalidCall!

get_CompactLayoutColumnHeader: rhs
	"Private - Get the value of the 'CompactLayoutColumnHeader' property of the receiver.

		HRESULT __stdcall CompactLayoutColumnHeader(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 178 bstr*>
	^self invalidCall!

get_CompactLayoutRowHeader: rhs
	"Private - Get the value of the 'CompactLayoutRowHeader' property of the receiver.

		HRESULT __stdcall CompactLayoutRowHeader(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 176 bstr*>
	^self invalidCall!

get_CompactRowIndent: rhs
	"Private - Get the value of the 'CompactRowIndent' property of the receiver.

		HRESULT __stdcall CompactRowIndent(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 149 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CubeFields: rhs
	"Private - Get the value of the 'CubeFields' property of the receiver.

		HRESULT __stdcall CubeFields(
			[out, retval]CubeFields** RHS);"

	<virtual stdcall: hresult 100 ExcelCubeFields**>
	^self invalidCall!

get_DataBodyRange: rhs
	"Private - Get the value of the 'DataBodyRange' property of the receiver.

		HRESULT __stdcall DataBodyRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 17 ExcelRange**>
	^self invalidCall!

get_DataFields: index rhs: rhs
	"Private - Get the value of the 'DataFields' property of the receiver.

		HRESULT __stdcall DataFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 18 variant IDispatch**>
	^self invalidCall!

get_DataLabelRange: rhs
	"Private - Get the value of the 'DataLabelRange' property of the receiver.

		HRESULT __stdcall DataLabelRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 19 ExcelRange**>
	^self invalidCall!

get_DataPivotField: rhs
	"Private - Get the value of the 'DataPivotField' property of the receiver.

		HRESULT __stdcall DataPivotField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 113 ExcelPivotField**>
	^self invalidCall!

get_DisplayContextTooltips: rhs
	"Private - Get the value of the 'DisplayContextTooltips' property of the receiver.

		HRESULT __stdcall DisplayContextTooltips(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 146 varbool*>
	^self invalidCall!

get_DisplayEmptyColumn: rhs
	"Private - Get the value of the 'DisplayEmptyColumn' property of the receiver.

		HRESULT __stdcall DisplayEmptyColumn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 134 varbool*>
	^self invalidCall!

get_DisplayEmptyRow: rhs
	"Private - Get the value of the 'DisplayEmptyRow' property of the receiver.

		HRESULT __stdcall DisplayEmptyRow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 132 varbool*>
	^self invalidCall!

get_DisplayErrorString: rhs
	"Private - Get the value of the 'DisplayErrorString' property of the receiver.

		HRESULT __stdcall DisplayErrorString(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 52 varbool*>
	^self invalidCall!

get_DisplayFieldCaptions: rhs
	"Private - Get the value of the 'DisplayFieldCaptions' property of the receiver.

		HRESULT __stdcall DisplayFieldCaptions(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 153 varbool*>
	^self invalidCall!

get_DisplayImmediateItems: rhs
	"Private - Get the value of the 'DisplayImmediateItems' property of the receiver.

		HRESULT __stdcall DisplayImmediateItems(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 121 varbool*>
	^self invalidCall!

get_DisplayMemberPropertyTooltips: rhs
	"Private - Get the value of the 'DisplayMemberPropertyTooltips' property of the receiver.

		HRESULT __stdcall DisplayMemberPropertyTooltips(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 144 varbool*>
	^self invalidCall!

get_DisplayNullString: rhs
	"Private - Get the value of the 'DisplayNullString' property of the receiver.

		HRESULT __stdcall DisplayNullString(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 54 varbool*>
	^self invalidCall!

get_EnableDataValueEditing: rhs
	"Private - Get the value of the 'EnableDataValueEditing' property of the receiver.

		HRESULT __stdcall EnableDataValueEditing(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 114 varbool*>
	^self invalidCall!

get_EnableDrilldown: rhs
	"Private - Get the value of the 'EnableDrilldown' property of the receiver.

		HRESULT __stdcall EnableDrilldown(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 56 varbool*>
	^self invalidCall!

get_EnableFieldDialog: rhs
	"Private - Get the value of the 'EnableFieldDialog' property of the receiver.

		HRESULT __stdcall EnableFieldDialog(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 58 varbool*>
	^self invalidCall!

get_EnableFieldList: rhs
	"Private - Get the value of the 'EnableFieldList' property of the receiver.

		HRESULT __stdcall EnableFieldList(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 124 varbool*>
	^self invalidCall!

get_EnableWizard: rhs
	"Private - Get the value of the 'EnableWizard' property of the receiver.

		HRESULT __stdcall EnableWizard(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 60 varbool*>
	^self invalidCall!

get_ErrorString: rhs
	"Private - Get the value of the 'ErrorString' property of the receiver.

		HRESULT __stdcall ErrorString(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 62 bstr*>
	^self invalidCall!

get_FieldListSortAscending: rhs
	"Private - Get the value of the 'FieldListSortAscending' property of the receiver.

		HRESULT __stdcall FieldListSortAscending(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 180 varbool*>
	^self invalidCall!

get_GrandTotalName: rhs
	"Private - Get the value of the 'GrandTotalName' property of the receiver.

		HRESULT __stdcall GrandTotalName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 101 bstr*>
	^self invalidCall!

get_HasAutoFormat: rhs
	"Private - Get the value of the 'HasAutoFormat' property of the receiver.

		HRESULT __stdcall HasAutoFormat(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 22 varbool*>
	^self invalidCall!

get_HiddenFields: index rhs: rhs
	"Private - Get the value of the 'HiddenFields' property of the receiver.

		HRESULT __stdcall HiddenFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 24 variant IDispatch**>
	^self invalidCall!

get_InGridDropZones: rhs
	"Private - Get the value of the 'InGridDropZones' property of the receiver.

		HRESULT __stdcall InGridDropZones(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 158 varbool*>
	^self invalidCall!

get_InnerDetail: rhs
	"Private - Get the value of the 'InnerDetail' property of the receiver.

		HRESULT __stdcall InnerDetail(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 25 bstr*>
	^self invalidCall!

get_LayoutRowDefault: rhs
	"Private - Get the value of the 'LayoutRowDefault' property of the receiver.

		HRESULT __stdcall LayoutRowDefault(
			[out, retval]XlLayoutRowType* RHS);"

	<virtual stdcall: hresult 151 sdword*>
	^self invalidCall!

get_Location: rhs
	"Private - Get the value of the 'Location' property of the receiver.

		HRESULT __stdcall Location(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 186 bstr*>
	^self invalidCall!

get_ManualUpdate: rhs
	"Private - Get the value of the 'ManualUpdate' property of the receiver.

		HRESULT __stdcall ManualUpdate(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 66 varbool*>
	^self invalidCall!

get_MDX: rhs
	"Private - Get the value of the 'MDX' property of the receiver.

		HRESULT __stdcall MDX(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 117 bstr*>
	^self invalidCall!

get_MergeLabels: rhs
	"Private - Get the value of the 'MergeLabels' property of the receiver.

		HRESULT __stdcall MergeLabels(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 68 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 27 bstr*>
	^self invalidCall!

get_NullString: rhs
	"Private - Get the value of the 'NullString' property of the receiver.

		HRESULT __stdcall NullString(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 70 bstr*>
	^self invalidCall!

get_PageFieldOrder: rhs
	"Private - Get the value of the 'PageFieldOrder' property of the receiver.

		HRESULT __stdcall PageFieldOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 77 sdword*>
	^self invalidCall!

get_PageFields: index rhs: rhs
	"Private - Get the value of the 'PageFields' property of the receiver.

		HRESULT __stdcall PageFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 29 variant IDispatch**>
	^self invalidCall!

get_PageFieldStyle: rhs
	"Private - Get the value of the 'PageFieldStyle' property of the receiver.

		HRESULT __stdcall PageFieldStyle(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 79 bstr*>
	^self invalidCall!

get_PageFieldWrapCount: rhs
	"Private - Get the value of the 'PageFieldWrapCount' property of the receiver.

		HRESULT __stdcall PageFieldWrapCount(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 81 sdword*>
	^self invalidCall!

get_PageRange: rhs
	"Private - Get the value of the 'PageRange' property of the receiver.

		HRESULT __stdcall PageRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 30 ExcelRange**>
	^self invalidCall!

get_PageRangeCells: rhs
	"Private - Get the value of the 'PageRangeCells' property of the receiver.

		HRESULT __stdcall PageRangeCells(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 31 ExcelRange**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PivotColumnAxis: rhs
	"Private - Get the value of the 'PivotColumnAxis' property of the receiver.

		HRESULT __stdcall PivotColumnAxis(
			[out, retval]PivotAxis** RHS);"

	<virtual stdcall: hresult 138 ExcelPivotAxis**>
	^self invalidCall!

get_PivotFormulas: rhs
	"Private - Get the value of the 'PivotFormulas' property of the receiver.

		HRESULT __stdcall PivotFormulas(
			[out, retval]PivotFormulas** RHS);"

	<virtual stdcall: hresult 73 ExcelPivotFormulas**>
	^self invalidCall!

get_PivotRowAxis: rhs
	"Private - Get the value of the 'PivotRowAxis' property of the receiver.

		HRESULT __stdcall PivotRowAxis(
			[out, retval]PivotAxis** RHS);"

	<virtual stdcall: hresult 139 ExcelPivotAxis**>
	^self invalidCall!

get_PivotSelection: rhs
	"Private - Get the value of the 'PivotSelection' property of the receiver.

		HRESULT __stdcall PivotSelection(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 86 bstr*>
	^self invalidCall!

get_PivotSelectionStandard: rhs
	"Private - Get the value of the 'PivotSelectionStandard' property of the receiver.

		HRESULT __stdcall PivotSelectionStandard(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 110 bstr*>
	^self invalidCall!

get_PreserveFormatting: rhs
	"Private - Get the value of the 'PreserveFormatting' property of the receiver.

		HRESULT __stdcall PreserveFormatting(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 83 varbool*>
	^self invalidCall!

get_PrintDrillIndicators: rhs
	"Private - Get the value of the 'PrintDrillIndicators' property of the receiver.

		HRESULT __stdcall PrintDrillIndicators(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 142 varbool*>
	^self invalidCall!

get_PrintTitles: rhs
	"Private - Get the value of the 'PrintTitles' property of the receiver.

		HRESULT __stdcall PrintTitles(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 98 varbool*>
	^self invalidCall!

get_RefreshDate: rhs
	"Private - Get the value of the 'RefreshDate' property of the receiver.

		HRESULT __stdcall RefreshDate(
			[out, retval]DATE* RHS);"

	<virtual stdcall: hresult 33 date*>
	^self invalidCall!

get_RefreshName: rhs
	"Private - Get the value of the 'RefreshName' property of the receiver.

		HRESULT __stdcall RefreshName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 34 bstr*>
	^self invalidCall!

get_RepeatItemsOnEachPrintedPage: rhs
	"Private - Get the value of the 'RepeatItemsOnEachPrintedPage' property of the receiver.

		HRESULT __stdcall RepeatItemsOnEachPrintedPage(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 105 varbool*>
	^self invalidCall!

get_RowFields: index rhs: rhs
	"Private - Get the value of the 'RowFields' property of the receiver.

		HRESULT __stdcall RowFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 36 variant IDispatch**>
	^self invalidCall!

get_RowGrand: rhs
	"Private - Get the value of the 'RowGrand' property of the receiver.

		HRESULT __stdcall RowGrand(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 37 varbool*>
	^self invalidCall!

get_RowRange: rhs
	"Private - Get the value of the 'RowRange' property of the receiver.

		HRESULT __stdcall RowRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 39 ExcelRange**>
	^self invalidCall!

get_SaveData: rhs
	"Private - Get the value of the 'SaveData' property of the receiver.

		HRESULT __stdcall SaveData(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 40 varbool*>
	^self invalidCall!

get_SelectionMode: rhs
	"Private - Get the value of the 'SelectionMode' property of the receiver.

		HRESULT __stdcall SelectionMode(
			[out, retval]XlPTSelectionMode* RHS);"

	<virtual stdcall: hresult 88 sdword*>
	^self invalidCall!

get_ShowCellBackgroundFromOLAP: rhs
	"Private - Get the value of the 'ShowCellBackgroundFromOLAP' property of the receiver.

		HRESULT __stdcall ShowCellBackgroundFromOLAP(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 136 varbool*>
	^self invalidCall!

get_ShowDrillIndicators: rhs
	"Private - Get the value of the 'ShowDrillIndicators' property of the receiver.

		HRESULT __stdcall ShowDrillIndicators(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 140 varbool*>
	^self invalidCall!

get_ShowPageMultipleItemLabel: rhs
	"Private - Get the value of the 'ShowPageMultipleItemLabel' property of the receiver.

		HRESULT __stdcall ShowPageMultipleItemLabel(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 128 varbool*>
	^self invalidCall!

get_ShowTableStyleColumnHeaders: rhs
	"Private - Get the value of the 'ShowTableStyleColumnHeaders' property of the receiver.

		HRESULT __stdcall ShowTableStyleColumnHeaders(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 171 varbool*>
	^self invalidCall!

get_ShowTableStyleColumnStripes: rhs
	"Private - Get the value of the 'ShowTableStyleColumnStripes' property of the receiver.

		HRESULT __stdcall ShowTableStyleColumnStripes(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 167 varbool*>
	^self invalidCall!

get_ShowTableStyleLastColumn: rhs
	"Private - Get the value of the 'ShowTableStyleLastColumn' property of the receiver.

		HRESULT __stdcall ShowTableStyleLastColumn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 163 varbool*>
	^self invalidCall!

get_ShowTableStyleRowHeaders: rhs
	"Private - Get the value of the 'ShowTableStyleRowHeaders' property of the receiver.

		HRESULT __stdcall ShowTableStyleRowHeaders(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 169 varbool*>
	^self invalidCall!

get_ShowTableStyleRowStripes: rhs
	"Private - Get the value of the 'ShowTableStyleRowStripes' property of the receiver.

		HRESULT __stdcall ShowTableStyleRowStripes(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 165 varbool*>
	^self invalidCall!

get_SmallGrid: rhs
	"Private - Get the value of the 'SmallGrid' property of the receiver.

		HRESULT __stdcall SmallGrid(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 103 varbool*>
	^self invalidCall!

get_SortUsingCustomLists: rhs
	"Private - Get the value of the 'SortUsingCustomLists' property of the receiver.

		HRESULT __stdcall SortUsingCustomLists(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 182 varbool*>
	^self invalidCall!

get_SourceData: rhs
	"Private - Get the value of the 'SourceData' property of the receiver.

		HRESULT __stdcall SourceData(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 42 variant*>
	^self invalidCall!

get_SubtotalHiddenPageItems: rhs
	"Private - Get the value of the 'SubtotalHiddenPageItems' property of the receiver.

		HRESULT __stdcall SubtotalHiddenPageItems(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 75 varbool*>
	^self invalidCall!

get_TableRange1: rhs
	"Private - Get the value of the 'TableRange1' property of the receiver.

		HRESULT __stdcall TableRange1(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 44 ExcelRange**>
	^self invalidCall!

get_TableRange2: rhs
	"Private - Get the value of the 'TableRange2' property of the receiver.

		HRESULT __stdcall TableRange2(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 45 ExcelRange**>
	^self invalidCall!

get_TableStyle: rhs
	"Private - Get the value of the 'TableStyle' property of the receiver.

		HRESULT __stdcall TableStyle(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 90 bstr*>
	^self invalidCall!

get_TableStyle2: rhs
	"Private - Get the value of the 'TableStyle2' property of the receiver.

		HRESULT __stdcall TableStyle2(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 161 variant*>
	^self invalidCall!

get_Tag: rhs
	"Private - Get the value of the 'Tag' property of the receiver.

		HRESULT __stdcall Tag(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 92 bstr*>
	^self invalidCall!

get_TotalsAnnotation: rhs
	"Private - Get the value of the 'TotalsAnnotation' property of the receiver.

		HRESULT __stdcall TotalsAnnotation(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 107 varbool*>
	^self invalidCall!

get_VacatedStyle: rhs
	"Private - Get the value of the 'VacatedStyle' property of the receiver.

		HRESULT __stdcall VacatedStyle(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 95 bstr*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 46 bstr*>
	^self invalidCall!

get_Version: rhs
	"Private - Get the value of the 'Version' property of the receiver.

		HRESULT __stdcall Version(
			[out, retval]XlPivotTableVersionList* RHS);"

	<virtual stdcall: hresult 130 sdword*>
	^self invalidCall!

get_ViewCalculatedMembers: rhs
	"Private - Get the value of the 'ViewCalculatedMembers' property of the receiver.

		HRESULT __stdcall ViewCalculatedMembers(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 118 varbool*>
	^self invalidCall!

get_VisibleFields: index rhs: rhs
	"Private - Get the value of the 'VisibleFields' property of the receiver.

		HRESULT __stdcall VisibleFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 48 variant IDispatch**>
	^self invalidCall!

get_VisualTotals: rhs
	"Private - Get the value of the 'VisualTotals' property of the receiver.

		HRESULT __stdcall VisualTotals(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 126 varbool*>
	^self invalidCall!

getData: name
	"Answer the <DOUBLE> result of invoking the GetData() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		GetData: name
		rhs: answer.
	^answer asObject
!

GetData: name rhs: rhs
	"Private - Invoke the GetData() method of the COM object.

		HRESULT __stdcall GetData(
			[in]BSTR Name,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 64 bstr double*>
	^self invalidCall!

getPivotData
	"Answer the <ExcelRange> result of invoking the GetPivotData() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 getPivotData: VARIANT unspecified
		 field1: VARIANT unspecified
		 item1: VARIANT unspecified
		 field2: VARIANT unspecified
		 item2: VARIANT unspecified
		 field3: VARIANT unspecified
		 item3: VARIANT unspecified
		 field4: VARIANT unspecified
		 item4: VARIANT unspecified
		 field5: VARIANT unspecified
		 item5: VARIANT unspecified
		 field6: VARIANT unspecified
		 item6: VARIANT unspecified
		 field7: VARIANT unspecified
		 item7: VARIANT unspecified
		 field8: VARIANT unspecified
		 item8: VARIANT unspecified
		 field9: VARIANT unspecified
		 item9: VARIANT unspecified
		 field10: VARIANT unspecified
		 item10: VARIANT unspecified
		 field11: VARIANT unspecified
		 item11: VARIANT unspecified
		 field12: VARIANT unspecified
		 item12: VARIANT unspecified
		 field13: VARIANT unspecified
		 item13: VARIANT unspecified
		 field14: VARIANT unspecified
		 item14: VARIANT unspecified!

getPivotData: dataField field1: field1 item1: item1 field2: field2 item2: item2 field3: field3 item3: item3 field4: field4 item4: item4 field5: field5 item5: item5 field6: field6 item6: item6 field7: field7 item7: item7 field8: field8 item8: item8 field9: field9 item9: item9 field10: field10 item10: item10 field11: field11 item11: item11 field12: field12 item12: item12 field13: field13 item13: item13 field14: field14 item14: item14
	"Answer the <ExcelRange> result of invoking the GetPivotData() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		GetPivotData: dataField asVariant
		field1: field1 asVariant
		item1: item1 asVariant
		field2: field2 asVariant
		item2: item2 asVariant
		field3: field3 asVariant
		item3: item3 asVariant
		field4: field4 asVariant
		item4: item4 asVariant
		field5: field5 asVariant
		item5: item5 asVariant
		field6: field6 asVariant
		item6: item6 asVariant
		field7: field7 asVariant
		item7: item7 asVariant
		field8: field8 asVariant
		item8: item8 asVariant
		field9: field9 asVariant
		item9: item9 asVariant
		field10: field10 asVariant
		item10: item10 asVariant
		field11: field11 asVariant
		item11: item11 asVariant
		field12: field12 asVariant
		item12: item12 asVariant
		field13: field13 asVariant
		item13: item13 asVariant
		field14: field14 asVariant
		item14: item14 asVariant
		rhs: answer.
	^answer asObject
!

GetPivotData: dataField field1: field1 item1: item1 field2: field2 item2: item2 field3: field3 item3: item3 field4: field4 item4: item4 field5: field5 item5: item5 field6: field6 item6: item6 field7: field7 item7: item7 field8: field8 item8: item8 field9: field9 item9: item9 field10: field10 item10: item10 field11: field11 item11: item11 field12: field12 item12: item12 field13: field13 item13: item13 field14: field14 item14: item14 rhs: rhs
	"Private - Invoke the GetPivotData() method of the COM object.

		HRESULT __stdcall GetPivotData(
			[in, optional]VARIANT DataField,
			[in, optional]VARIANT Field1,
			[in, optional]VARIANT Item1,
			[in, optional]VARIANT Field2,
			[in, optional]VARIANT Item2,
			[in, optional]VARIANT Field3,
			[in, optional]VARIANT Item3,
			[in, optional]VARIANT Field4,
			[in, optional]VARIANT Item4,
			[in, optional]VARIANT Field5,
			[in, optional]VARIANT Item5,
			[in, optional]VARIANT Field6,
			[in, optional]VARIANT Item6,
			[in, optional]VARIANT Field7,
			[in, optional]VARIANT Item7,
			[in, optional]VARIANT Field8,
			[in, optional]VARIANT Item8,
			[in, optional]VARIANT Field9,
			[in, optional]VARIANT Item9,
			[in, optional]VARIANT Field10,
			[in, optional]VARIANT Item10,
			[in, optional]VARIANT Field11,
			[in, optional]VARIANT Item11,
			[in, optional]VARIANT Field12,
			[in, optional]VARIANT Item12,
			[in, optional]VARIANT Field13,
			[in, optional]VARIANT Item13,
			[in, optional]VARIANT Field14,
			[in, optional]VARIANT Item14,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 112 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant ExcelRange**>
	^self invalidCall!

grandTotalName
	"Answer the <bstr> value of the 'GrandTotalName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_GrandTotalName: answer.
	^answer asObject
!

grandTotalName: rhs
	"Set the 'GrandTotalName' property of the receiver to the <bstr> value of the argument."

	self put_GrandTotalName: rhs
!

hasAutoFormat
	"Answer the <varbool> value of the 'HasAutoFormat' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasAutoFormat: answer.
	^answer asObject
!

hasAutoFormat: rhs
	"Set the 'HasAutoFormat' property of the receiver to the <varbool> value of the argument."

	self put_HasAutoFormat: rhs
!

hiddenFields
	"Answer the <IDispatch> value of the 'HiddenFields' property of the receiver."

	^self hiddenFields: VARIANT unspecified!

hiddenFields: index
	"Answer the <IDispatch> value of the 'HiddenFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_HiddenFields: index asVariant
		rhs: answer.
	^answer asObject
!

inGridDropZones
	"Answer the <varbool> value of the 'InGridDropZones' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_InGridDropZones: answer.
	^answer asObject
!

inGridDropZones: rhs
	"Set the 'InGridDropZones' property of the receiver to the <varbool> value of the argument."

	self put_InGridDropZones: rhs
!

innerDetail
	"Answer the <bstr> value of the 'InnerDetail' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_InnerDetail: answer.
	^answer asObject
!

innerDetail: rhs
	"Set the 'InnerDetail' property of the receiver to the <bstr> value of the argument."

	self put_InnerDetail: rhs
!

layoutRowDefault
	"Answer the <sdword> value of the 'LayoutRowDefault' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LayoutRowDefault: answer.
	^answer asObject
!

layoutRowDefault: rhs
	"Set the 'LayoutRowDefault' property of the receiver to the <sdword> value of the argument."

	self put_LayoutRowDefault: rhs
!

listFormulas
	"Invoke the ListFormulas() method of the COM object."

	^self ListFormulas
!

ListFormulas
	"Private - Invoke the ListFormulas() method of the COM object.

		HRESULT __stdcall ListFormulas();"

	<virtual stdcall: hresult 65>
	^self invalidCall!

location
	"Answer the <bstr> value of the 'Location' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Location: answer.
	^answer asObject
!

location: rhs
	"Set the 'Location' property of the receiver to the <bstr> value of the argument."

	self put_Location: rhs
!

manualUpdate
	"Answer the <varbool> value of the 'ManualUpdate' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ManualUpdate: answer.
	^answer asObject
!

manualUpdate: rhs
	"Set the 'ManualUpdate' property of the receiver to the <varbool> value of the argument."

	self put_ManualUpdate: rhs
!

mdx
	"Answer the <bstr> value of the 'MDX' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_MDX: answer.
	^answer asObject
!

mergeLabels
	"Answer the <varbool> value of the 'MergeLabels' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MergeLabels: answer.
	^answer asObject
!

mergeLabels: rhs
	"Set the 'MergeLabels' property of the receiver to the <varbool> value of the argument."

	self put_MergeLabels: rhs
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

nullString
	"Answer the <bstr> value of the 'NullString' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_NullString: answer.
	^answer asObject
!

nullString: rhs
	"Set the 'NullString' property of the receiver to the <bstr> value of the argument."

	self put_NullString: rhs
!

pageFieldOrder
	"Answer the <sdword> value of the 'PageFieldOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PageFieldOrder: answer.
	^answer asObject
!

pageFieldOrder: rhs
	"Set the 'PageFieldOrder' property of the receiver to the <sdword> value of the argument."

	self put_PageFieldOrder: rhs
!

pageFields
	"Answer the <IDispatch> value of the 'PageFields' property of the receiver."

	^self pageFields: VARIANT unspecified!

pageFields: index
	"Answer the <IDispatch> value of the 'PageFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_PageFields: index asVariant
		rhs: answer.
	^answer asObject
!

pageFieldStyle
	"Answer the <bstr> value of the 'PageFieldStyle' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PageFieldStyle: answer.
	^answer asObject
!

pageFieldStyle: rhs
	"Set the 'PageFieldStyle' property of the receiver to the <bstr> value of the argument."

	self put_PageFieldStyle: rhs
!

pageFieldWrapCount
	"Answer the <sdword> value of the 'PageFieldWrapCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PageFieldWrapCount: answer.
	^answer asObject
!

pageFieldWrapCount: rhs
	"Set the 'PageFieldWrapCount' property of the receiver to the <sdword> value of the argument."

	self put_PageFieldWrapCount: rhs
!

pageRange
	"Answer the <ExcelRange> value of the 'PageRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_PageRange: answer.
	^answer asObject
!

pageRangeCells
	"Answer the <ExcelRange> value of the 'PageRangeCells' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_PageRangeCells: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pivotCache
	"Answer the <ExcelPivotCache> result of invoking the PivotCache() method of the COM object."

	| answer |
	answer := ExcelPivotCache newPointer.
	self PivotCache: answer.
	^answer asObject
!

PivotCache: rhs
	"Private - Invoke the PivotCache() method of the COM object.

		HRESULT __stdcall PivotCache(
			[out, retval]PivotCache** RHS);"

	<virtual stdcall: hresult 72 ExcelPivotCache**>
	^self invalidCall!

pivotColumnAxis
	"Answer the <ExcelPivotAxis> value of the 'PivotColumnAxis' property of the receiver."

	| answer |
	answer := ExcelPivotAxis newPointer.
	self get_PivotColumnAxis: answer.
	^answer asObject
!

pivotFields
	"Answer the <IDispatch> result of invoking the PivotFields() method of the COM object.
	Default values are passed for all optional parameters."

	^self pivotFields: VARIANT unspecified!

pivotFields: index
	"Answer the <IDispatch> result of invoking the PivotFields() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		PivotFields: index asVariant
		rhs: answer.
	^answer asObject
!

PivotFields: index rhs: rhs
	"Private - Invoke the PivotFields() method of the COM object.

		HRESULT __stdcall PivotFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 32 variant IDispatch**>
	^self invalidCall!

pivotFormulas
	"Answer the <ExcelPivotFormulas> value of the 'PivotFormulas' property of the receiver."

	| answer |
	answer := ExcelPivotFormulas newPointer.
	self get_PivotFormulas: answer.
	^answer asObject
!

pivotRowAxis
	"Answer the <ExcelPivotAxis> value of the 'PivotRowAxis' property of the receiver."

	| answer |
	answer := ExcelPivotAxis newPointer.
	self get_PivotRowAxis: answer.
	^answer asObject
!

pivotSelect: name
	"Invoke the PivotSelect() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pivotSelect: name
		 mode: 0
		 useStandardName: VARIANT unspecified!

pivotSelect: name mode: mode useStandardName: useStandardName
	"Invoke the PivotSelect() method of the COM object."

	^self
		PivotSelect: name
		mode: mode
		useStandardName: useStandardName asVariant
!

PivotSelect: name mode: mode useStandardName: useStandardName
	"Private - Invoke the PivotSelect() method of the COM object.

		HRESULT __stdcall PivotSelect(
			[in]BSTR Name,
			[in, defaultvalue(0)]XlPTSelectionMode Mode,
			[in, optional]VARIANT UseStandardName);"

	<virtual stdcall: hresult 109 bstr sdword variant>
	^self invalidCall!

pivotSelection
	"Answer the <bstr> value of the 'PivotSelection' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PivotSelection: answer.
	^answer asObject
!

pivotSelection: rhs
	"Set the 'PivotSelection' property of the receiver to the <bstr> value of the argument."

	self put_PivotSelection: rhs
!

pivotSelectionStandard
	"Answer the <bstr> value of the 'PivotSelectionStandard' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PivotSelectionStandard: answer.
	^answer asObject
!

pivotSelectionStandard: rhs
	"Set the 'PivotSelectionStandard' property of the receiver to the <bstr> value of the argument."

	self put_PivotSelectionStandard: rhs
!

pivotTableWizard
	"Invoke the PivotTableWizard() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pivotTableWizard: VARIANT unspecified
		 sourceData: VARIANT unspecified
		 tableDestination: VARIANT unspecified
		 tableName: VARIANT unspecified
		 rowGrand: VARIANT unspecified
		 columnGrand: VARIANT unspecified
		 saveData: VARIANT unspecified
		 hasAutoFormat: VARIANT unspecified
		 autoPage: VARIANT unspecified
		 reserved: VARIANT unspecified
		 backgroundQuery: VARIANT unspecified
		 optimizeCache: VARIANT unspecified
		 pageFieldOrder: VARIANT unspecified
		 pageFieldWrapCount: VARIANT unspecified
		 readData: VARIANT unspecified
		 connection: VARIANT unspecified!

pivotTableWizard: sourceType sourceData: sourceData tableDestination: tableDestination tableName: tableName rowGrand: rowGrand columnGrand: columnGrand saveData: saveData hasAutoFormat: hasAutoFormat autoPage: autoPage reserved: reserved backgroundQuery: backgroundQuery optimizeCache: optimizeCache pageFieldOrder: pageFieldOrder pageFieldWrapCount: pageFieldWrapCount readData: readData connection: connection
	"Invoke the PivotTableWizard() method of the COM object."

	^self
		PivotTableWizard: sourceType asVariant
		sourceData: sourceData asVariant
		tableDestination: tableDestination asVariant
		tableName: tableName asVariant
		rowGrand: rowGrand asVariant
		columnGrand: columnGrand asVariant
		saveData: saveData asVariant
		hasAutoFormat: hasAutoFormat asVariant
		autoPage: autoPage asVariant
		reserved: reserved asVariant
		backgroundQuery: backgroundQuery asVariant
		optimizeCache: optimizeCache asVariant
		pageFieldOrder: pageFieldOrder asVariant
		pageFieldWrapCount: pageFieldWrapCount asVariant
		readData: readData asVariant
		connection: connection asVariant
!

PivotTableWizard: sourceType sourceData: sourceData tableDestination: tableDestination tableName: tableName rowGrand: rowGrand columnGrand: columnGrand saveData: saveData hasAutoFormat: hasAutoFormat autoPage: autoPage reserved: reserved backgroundQuery: backgroundQuery optimizeCache: optimizeCache pageFieldOrder: pageFieldOrder pageFieldWrapCount: pageFieldWrapCount readData: readData connection: connection
	"Private - Invoke the PivotTableWizard() method of the COM object.

		HRESULT __stdcall PivotTableWizard(
			[in, optional]VARIANT SourceType,
			[in, optional]VARIANT SourceData,
			[in, optional]VARIANT TableDestination,
			[in, optional]VARIANT TableName,
			[in, optional]VARIANT RowGrand,
			[in, optional]VARIANT ColumnGrand,
			[in, optional]VARIANT SaveData,
			[in, optional]VARIANT HasAutoFormat,
			[in, optional]VARIANT AutoPage,
			[in, optional]VARIANT Reserved,
			[in, optional]VARIANT BackgroundQuery,
			[in, optional]VARIANT OptimizeCache,
			[in, optional]VARIANT PageFieldOrder,
			[in, optional]VARIANT PageFieldWrapCount,
			[in, optional]VARIANT ReadData,
			[in, optional]VARIANT Connection);"

	<virtual stdcall: hresult 74 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant>
	^self invalidCall!

preserveFormatting
	"Answer the <varbool> value of the 'PreserveFormatting' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PreserveFormatting: answer.
	^answer asObject
!

preserveFormatting: rhs
	"Set the 'PreserveFormatting' property of the receiver to the <varbool> value of the argument."

	self put_PreserveFormatting: rhs
!

printDrillIndicators
	"Answer the <varbool> value of the 'PrintDrillIndicators' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PrintDrillIndicators: answer.
	^answer asObject
!

printDrillIndicators: rhs
	"Set the 'PrintDrillIndicators' property of the receiver to the <varbool> value of the argument."

	self put_PrintDrillIndicators: rhs
!

printTitles
	"Answer the <varbool> value of the 'PrintTitles' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PrintTitles: answer.
	^answer asObject
!

printTitles: rhs
	"Set the 'PrintTitles' property of the receiver to the <varbool> value of the argument."

	self put_PrintTitles: rhs
!

put__Default: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall _Default(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 21 bstr>
	^self invalidCall!

put_AllowMultipleFilters: rhs
	"Private - Set the value of the 'AllowMultipleFilters' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AllowMultipleFilters(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 175 varbool>
	^self invalidCall!

put_CacheIndex: rhs
	"Private - Set the value of the 'CacheIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CacheIndex(
			[in]long RHS);"

	<virtual stdcall: hresult 50 sdword>
	^self invalidCall!

put_ColumnGrand: rhs
	"Private - Set the value of the 'ColumnGrand' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ColumnGrand(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

put_CompactLayoutColumnHeader: rhs
	"Private - Set the value of the 'CompactLayoutColumnHeader' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall CompactLayoutColumnHeader(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 179 bstr>
	^self invalidCall!

put_CompactLayoutRowHeader: rhs
	"Private - Set the value of the 'CompactLayoutRowHeader' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall CompactLayoutRowHeader(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 177 bstr>
	^self invalidCall!

put_CompactRowIndent: rhs
	"Private - Set the value of the 'CompactRowIndent' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CompactRowIndent(
			[in]long RHS);"

	<virtual stdcall: hresult 150 sdword>
	^self invalidCall!

put_DisplayContextTooltips: rhs
	"Private - Set the value of the 'DisplayContextTooltips' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayContextTooltips(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 147 varbool>
	^self invalidCall!

put_DisplayEmptyColumn: rhs
	"Private - Set the value of the 'DisplayEmptyColumn' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayEmptyColumn(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 135 varbool>
	^self invalidCall!

put_DisplayEmptyRow: rhs
	"Private - Set the value of the 'DisplayEmptyRow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayEmptyRow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 133 varbool>
	^self invalidCall!

put_DisplayErrorString: rhs
	"Private - Set the value of the 'DisplayErrorString' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayErrorString(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 53 varbool>
	^self invalidCall!

put_DisplayFieldCaptions: rhs
	"Private - Set the value of the 'DisplayFieldCaptions' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayFieldCaptions(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 154 varbool>
	^self invalidCall!

put_DisplayImmediateItems: rhs
	"Private - Set the value of the 'DisplayImmediateItems' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayImmediateItems(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 122 varbool>
	^self invalidCall!

put_DisplayMemberPropertyTooltips: rhs
	"Private - Set the value of the 'DisplayMemberPropertyTooltips' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayMemberPropertyTooltips(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 145 varbool>
	^self invalidCall!

put_DisplayNullString: rhs
	"Private - Set the value of the 'DisplayNullString' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayNullString(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 55 varbool>
	^self invalidCall!

put_EnableDataValueEditing: rhs
	"Private - Set the value of the 'EnableDataValueEditing' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableDataValueEditing(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 115 varbool>
	^self invalidCall!

put_EnableDrilldown: rhs
	"Private - Set the value of the 'EnableDrilldown' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableDrilldown(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 57 varbool>
	^self invalidCall!

put_EnableFieldDialog: rhs
	"Private - Set the value of the 'EnableFieldDialog' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableFieldDialog(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 59 varbool>
	^self invalidCall!

put_EnableFieldList: rhs
	"Private - Set the value of the 'EnableFieldList' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableFieldList(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 125 varbool>
	^self invalidCall!

put_EnableWizard: rhs
	"Private - Set the value of the 'EnableWizard' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableWizard(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 61 varbool>
	^self invalidCall!

put_ErrorString: rhs
	"Private - Set the value of the 'ErrorString' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ErrorString(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 63 bstr>
	^self invalidCall!

put_FieldListSortAscending: rhs
	"Private - Set the value of the 'FieldListSortAscending' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall FieldListSortAscending(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 181 varbool>
	^self invalidCall!

put_GrandTotalName: rhs
	"Private - Set the value of the 'GrandTotalName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall GrandTotalName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 102 bstr>
	^self invalidCall!

put_HasAutoFormat: rhs
	"Private - Set the value of the 'HasAutoFormat' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasAutoFormat(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 23 varbool>
	^self invalidCall!

put_InGridDropZones: rhs
	"Private - Set the value of the 'InGridDropZones' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InGridDropZones(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 159 varbool>
	^self invalidCall!

put_InnerDetail: rhs
	"Private - Set the value of the 'InnerDetail' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall InnerDetail(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 26 bstr>
	^self invalidCall!

put_LayoutRowDefault: rhs
	"Private - Set the value of the 'LayoutRowDefault' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LayoutRowDefault(
			[in]XlLayoutRowType RHS);"

	<virtual stdcall: hresult 152 sdword>
	^self invalidCall!

put_Location: rhs
	"Private - Set the value of the 'Location' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Location(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 187 bstr>
	^self invalidCall!

put_ManualUpdate: rhs
	"Private - Set the value of the 'ManualUpdate' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ManualUpdate(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 67 varbool>
	^self invalidCall!

put_MergeLabels: rhs
	"Private - Set the value of the 'MergeLabels' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MergeLabels(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 69 varbool>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 28 bstr>
	^self invalidCall!

put_NullString: rhs
	"Private - Set the value of the 'NullString' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall NullString(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 71 bstr>
	^self invalidCall!

put_PageFieldOrder: rhs
	"Private - Set the value of the 'PageFieldOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PageFieldOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 78 sdword>
	^self invalidCall!

put_PageFieldStyle: rhs
	"Private - Set the value of the 'PageFieldStyle' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall PageFieldStyle(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 80 bstr>
	^self invalidCall!

put_PageFieldWrapCount: rhs
	"Private - Set the value of the 'PageFieldWrapCount' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PageFieldWrapCount(
			[in]long RHS);"

	<virtual stdcall: hresult 82 sdword>
	^self invalidCall!

put_PivotSelection: rhs
	"Private - Set the value of the 'PivotSelection' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall PivotSelection(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 87 bstr>
	^self invalidCall!

put_PivotSelectionStandard: rhs
	"Private - Set the value of the 'PivotSelectionStandard' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall PivotSelectionStandard(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 111 bstr>
	^self invalidCall!

put_PreserveFormatting: rhs
	"Private - Set the value of the 'PreserveFormatting' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PreserveFormatting(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 84 varbool>
	^self invalidCall!

put_PrintDrillIndicators: rhs
	"Private - Set the value of the 'PrintDrillIndicators' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintDrillIndicators(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 143 varbool>
	^self invalidCall!

put_PrintTitles: rhs
	"Private - Set the value of the 'PrintTitles' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintTitles(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 99 varbool>
	^self invalidCall!

put_RepeatItemsOnEachPrintedPage: rhs
	"Private - Set the value of the 'RepeatItemsOnEachPrintedPage' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RepeatItemsOnEachPrintedPage(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 106 varbool>
	^self invalidCall!

put_RowGrand: rhs
	"Private - Set the value of the 'RowGrand' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RowGrand(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 38 varbool>
	^self invalidCall!

put_SaveData: rhs
	"Private - Set the value of the 'SaveData' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SaveData(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 41 varbool>
	^self invalidCall!

put_SelectionMode: rhs
	"Private - Set the value of the 'SelectionMode' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SelectionMode(
			[in]XlPTSelectionMode RHS);"

	<virtual stdcall: hresult 89 sdword>
	^self invalidCall!

put_ShowCellBackgroundFromOLAP: rhs
	"Private - Set the value of the 'ShowCellBackgroundFromOLAP' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowCellBackgroundFromOLAP(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 137 varbool>
	^self invalidCall!

put_ShowDrillIndicators: rhs
	"Private - Set the value of the 'ShowDrillIndicators' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowDrillIndicators(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 141 varbool>
	^self invalidCall!

put_ShowPageMultipleItemLabel: rhs
	"Private - Set the value of the 'ShowPageMultipleItemLabel' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowPageMultipleItemLabel(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 129 varbool>
	^self invalidCall!

put_ShowTableStyleColumnHeaders: rhs
	"Private - Set the value of the 'ShowTableStyleColumnHeaders' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleColumnHeaders(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 172 varbool>
	^self invalidCall!

put_ShowTableStyleColumnStripes: rhs
	"Private - Set the value of the 'ShowTableStyleColumnStripes' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleColumnStripes(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 168 varbool>
	^self invalidCall!

put_ShowTableStyleLastColumn: rhs
	"Private - Set the value of the 'ShowTableStyleLastColumn' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleLastColumn(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 164 varbool>
	^self invalidCall!

put_ShowTableStyleRowHeaders: rhs
	"Private - Set the value of the 'ShowTableStyleRowHeaders' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleRowHeaders(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 170 varbool>
	^self invalidCall!

put_ShowTableStyleRowStripes: rhs
	"Private - Set the value of the 'ShowTableStyleRowStripes' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowTableStyleRowStripes(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 166 varbool>
	^self invalidCall!

put_SmallGrid: rhs
	"Private - Set the value of the 'SmallGrid' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SmallGrid(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 104 varbool>
	^self invalidCall!

put_SortUsingCustomLists: rhs
	"Private - Set the value of the 'SortUsingCustomLists' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SortUsingCustomLists(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 183 varbool>
	^self invalidCall!

put_SourceData: rhs
	"Private - Set the value of the 'SourceData' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall SourceData(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 43 variant>
	^self invalidCall!

put_SubtotalHiddenPageItems: rhs
	"Private - Set the value of the 'SubtotalHiddenPageItems' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SubtotalHiddenPageItems(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 76 varbool>
	^self invalidCall!

put_TableStyle: rhs
	"Private - Set the value of the 'TableStyle' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall TableStyle(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 91 bstr>
	^self invalidCall!

put_TableStyle2: rhs
	"Private - Set the value of the 'TableStyle2' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TableStyle2(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 162 variant>
	^self invalidCall!

put_Tag: rhs
	"Private - Set the value of the 'Tag' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Tag(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 93 bstr>
	^self invalidCall!

put_TotalsAnnotation: rhs
	"Private - Set the value of the 'TotalsAnnotation' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TotalsAnnotation(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 108 varbool>
	^self invalidCall!

put_VacatedStyle: rhs
	"Private - Set the value of the 'VacatedStyle' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall VacatedStyle(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 96 bstr>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Value(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 47 bstr>
	^self invalidCall!

put_ViewCalculatedMembers: rhs
	"Private - Set the value of the 'ViewCalculatedMembers' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ViewCalculatedMembers(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 119 varbool>
	^self invalidCall!

put_VisualTotals: rhs
	"Private - Set the value of the 'VisualTotals' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall VisualTotals(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 127 varbool>
	^self invalidCall!

refreshDate
	"Answer the <date> value of the 'RefreshDate' property of the receiver."

	| answer |
	answer := (DATE new).
	self get_RefreshDate: answer.
	^answer asObject
!

refreshName
	"Answer the <bstr> value of the 'RefreshName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_RefreshName: answer.
	^answer asObject
!

refreshTable
	"Answer the <VARIANT_BOOL> result of invoking the RefreshTable() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self RefreshTable: answer.
	^answer asObject
!

RefreshTable: rhs
	"Private - Invoke the RefreshTable() method of the COM object.

		HRESULT __stdcall RefreshTable(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 35 varbool*>
	^self invalidCall!

repeatItemsOnEachPrintedPage
	"Answer the <varbool> value of the 'RepeatItemsOnEachPrintedPage' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RepeatItemsOnEachPrintedPage: answer.
	^answer asObject
!

repeatItemsOnEachPrintedPage: rhs
	"Set the 'RepeatItemsOnEachPrintedPage' property of the receiver to the <varbool> value of the argument."

	self put_RepeatItemsOnEachPrintedPage: rhs
!

rowAxisLayout: rowLayout
	"Invoke the RowAxisLayout() method of the COM object."

	^self RowAxisLayout: rowLayout
!

RowAxisLayout: rowLayout
	"Private - Invoke the RowAxisLayout() method of the COM object.

		HRESULT __stdcall RowAxisLayout(
			[in]XlLayoutRowType RowLayout);"

	<virtual stdcall: hresult 155 sdword>
	^self invalidCall!

rowFields
	"Answer the <IDispatch> value of the 'RowFields' property of the receiver."

	^self rowFields: VARIANT unspecified!

rowFields: index
	"Answer the <IDispatch> value of the 'RowFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_RowFields: index asVariant
		rhs: answer.
	^answer asObject
!

rowGrand
	"Answer the <varbool> value of the 'RowGrand' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RowGrand: answer.
	^answer asObject
!

rowGrand: rhs
	"Set the 'RowGrand' property of the receiver to the <varbool> value of the argument."

	self put_RowGrand: rhs
!

rowRange
	"Answer the <ExcelRange> value of the 'RowRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_RowRange: answer.
	^answer asObject
!

saveData
	"Answer the <varbool> value of the 'SaveData' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SaveData: answer.
	^answer asObject
!

saveData: rhs
	"Set the 'SaveData' property of the receiver to the <varbool> value of the argument."

	self put_SaveData: rhs
!

selectionMode
	"Answer the <sdword> value of the 'SelectionMode' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SelectionMode: answer.
	^answer asObject
!

selectionMode: rhs
	"Set the 'SelectionMode' property of the receiver to the <sdword> value of the argument."

	self put_SelectionMode: rhs
!

showCellBackgroundFromOLAP
	"Answer the <varbool> value of the 'ShowCellBackgroundFromOLAP' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowCellBackgroundFromOLAP: answer.
	^answer asObject
!

showCellBackgroundFromOLAP: rhs
	"Set the 'ShowCellBackgroundFromOLAP' property of the receiver to the <varbool> value of the argument."

	self put_ShowCellBackgroundFromOLAP: rhs
!

showDrillIndicators
	"Answer the <varbool> value of the 'ShowDrillIndicators' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowDrillIndicators: answer.
	^answer asObject
!

showDrillIndicators: rhs
	"Set the 'ShowDrillIndicators' property of the receiver to the <varbool> value of the argument."

	self put_ShowDrillIndicators: rhs
!

showPageMultipleItemLabel
	"Answer the <varbool> value of the 'ShowPageMultipleItemLabel' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowPageMultipleItemLabel: answer.
	^answer asObject
!

showPageMultipleItemLabel: rhs
	"Set the 'ShowPageMultipleItemLabel' property of the receiver to the <varbool> value of the argument."

	self put_ShowPageMultipleItemLabel: rhs
!

showPages
	"Answer the <VARIANT> result of invoking the ShowPages() method of the COM object.
	Default values are passed for all optional parameters."

	^self showPages: VARIANT unspecified!

showPages: pageField
	"Answer the <VARIANT> result of invoking the ShowPages() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ShowPages: pageField asVariant
		rhs: answer.
	^answer asObject
!

ShowPages: pageField rhs: rhs
	"Private - Invoke the ShowPages() method of the COM object.

		HRESULT __stdcall ShowPages(
			[in, optional]VARIANT PageField,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 variant variant*>
	^self invalidCall!

showTableStyleColumnHeaders
	"Answer the <varbool> value of the 'ShowTableStyleColumnHeaders' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowTableStyleColumnHeaders: answer.
	^answer asObject
!

showTableStyleColumnHeaders: rhs
	"Set the 'ShowTableStyleColumnHeaders' property of the receiver to the <varbool> value of the argument."

	self put_ShowTableStyleColumnHeaders: rhs
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

showTableStyleRowHeaders
	"Answer the <varbool> value of the 'ShowTableStyleRowHeaders' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowTableStyleRowHeaders: answer.
	^answer asObject
!

showTableStyleRowHeaders: rhs
	"Set the 'ShowTableStyleRowHeaders' property of the receiver to the <varbool> value of the argument."

	self put_ShowTableStyleRowHeaders: rhs
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

smallGrid
	"Answer the <varbool> value of the 'SmallGrid' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SmallGrid: answer.
	^answer asObject
!

smallGrid: rhs
	"Set the 'SmallGrid' property of the receiver to the <varbool> value of the argument."

	self put_SmallGrid: rhs
!

sortUsingCustomLists
	"Answer the <varbool> value of the 'SortUsingCustomLists' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SortUsingCustomLists: answer.
	^answer asObject
!

sortUsingCustomLists: rhs
	"Set the 'SortUsingCustomLists' property of the receiver to the <varbool> value of the argument."

	self put_SortUsingCustomLists: rhs
!

sourceData
	"Answer the <variant> value of the 'SourceData' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_SourceData: answer.
	^answer asObject
!

sourceData: rhs
	"Set the 'SourceData' property of the receiver to the <variant> value of the argument."

	self put_SourceData: rhs asVariant
!

subtotalHiddenPageItems
	"Answer the <varbool> value of the 'SubtotalHiddenPageItems' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SubtotalHiddenPageItems: answer.
	^answer asObject
!

subtotalHiddenPageItems: rhs
	"Set the 'SubtotalHiddenPageItems' property of the receiver to the <varbool> value of the argument."

	self put_SubtotalHiddenPageItems: rhs
!

subtotalLocation: location
	"Invoke the SubtotalLocation() method of the COM object."

	^self SubtotalLocation: location
!

SubtotalLocation: location
	"Private - Invoke the SubtotalLocation() method of the COM object.

		HRESULT __stdcall SubtotalLocation(
			[in]XlSubtototalLocationType Location);"

	<virtual stdcall: hresult 156 sdword>
	^self invalidCall!

tableRange1
	"Answer the <ExcelRange> value of the 'TableRange1' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_TableRange1: answer.
	^answer asObject
!

tableRange2
	"Answer the <ExcelRange> value of the 'TableRange2' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_TableRange2: answer.
	^answer asObject
!

tableStyle
	"Answer the <bstr> value of the 'TableStyle' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_TableStyle: answer.
	^answer asObject
!

tableStyle: rhs
	"Set the 'TableStyle' property of the receiver to the <bstr> value of the argument."

	self put_TableStyle: rhs
!

tableStyle2
	"Answer the <variant> value of the 'TableStyle2' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_TableStyle2: answer.
	^answer asObject
!

tableStyle2: rhs
	"Set the 'TableStyle2' property of the receiver to the <variant> value of the argument."

	self put_TableStyle2: rhs asVariant
!

tag
	"Answer the <bstr> value of the 'Tag' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Tag: answer.
	^answer asObject
!

tag: rhs
	"Set the 'Tag' property of the receiver to the <bstr> value of the argument."

	self put_Tag: rhs
!

totalsAnnotation
	"Answer the <varbool> value of the 'TotalsAnnotation' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TotalsAnnotation: answer.
	^answer asObject
!

totalsAnnotation: rhs
	"Set the 'TotalsAnnotation' property of the receiver to the <varbool> value of the argument."

	self put_TotalsAnnotation: rhs
!

update
	"Invoke the Update() method of the COM object."

	^self Update
!

Update
	"Private - Invoke the Update() method of the COM object.

		HRESULT __stdcall Update();"

	<virtual stdcall: hresult 94>
	^self invalidCall!

vacatedStyle
	"Answer the <bstr> value of the 'VacatedStyle' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_VacatedStyle: answer.
	^answer asObject
!

vacatedStyle: rhs
	"Set the 'VacatedStyle' property of the receiver to the <bstr> value of the argument."

	self put_VacatedStyle: rhs
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <bstr> value of the argument."

	self put_Value: rhs
!

version
	"Answer the <sdword> value of the 'Version' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Version: answer.
	^answer asObject
!

viewCalculatedMembers
	"Answer the <varbool> value of the 'ViewCalculatedMembers' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ViewCalculatedMembers: answer.
	^answer asObject
!

viewCalculatedMembers: rhs
	"Set the 'ViewCalculatedMembers' property of the receiver to the <varbool> value of the argument."

	self put_ViewCalculatedMembers: rhs
!

visibleFields
	"Answer the <IDispatch> value of the 'VisibleFields' property of the receiver."

	^self visibleFields: VARIANT unspecified!

visibleFields: index
	"Answer the <IDispatch> value of the 'VisibleFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_VisibleFields: index asVariant
		rhs: answer.
	^answer asObject
!

visualTotals
	"Answer the <varbool> value of the 'VisualTotals' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_VisualTotals: answer.
	^answer asObject
!

visualTotals: rhs
	"Set the 'VisualTotals' property of the receiver to the <varbool> value of the argument."

	self put_VisualTotals: rhs
! !
!ExcelIPivotTable categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #_pivotSelect:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #_pivotSelect:mode:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #_PivotSelect:mode:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #activeFilters!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #addDataField:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #addDataField:caption:function:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #AddDataField:caption:function:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #addFields!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #addFields:columnFields:pageFields:addToTable:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #AddFields:columnFields:pageFields:addToTable:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #allowMultipleFilters!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #allowMultipleFilters:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #cacheIndex!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #cacheIndex:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #calculatedFields!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #CalculatedFields:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #calculatedMembers!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #changeConnection:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #ChangeConnection:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #changePivotCache:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #ChangePivotCache:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #clearAllFilters!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #ClearAllFilters!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #clearTable!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #ClearTable!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #columnFields!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #columnFields:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #columnGrand!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #columnGrand:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #columnRange!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #compactLayoutColumnHeader!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #compactLayoutColumnHeader:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #compactLayoutRowHeader!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #compactLayoutRowHeader:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #compactRowIndent!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #compactRowIndent:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #convertToFormulas:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #ConvertToFormulas:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #createCubeFile:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #createCubeFile:measures:levels:members:properties:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #CreateCubeFile:measures:levels:members:properties:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #cubeFields!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #dataBodyRange!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #dataFields!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #dataFields:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #dataLabelRange!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #dataPivotField!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayContextTooltips!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayContextTooltips:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayEmptyColumn!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayEmptyColumn:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayEmptyRow!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayEmptyRow:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayErrorString!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayErrorString:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayFieldCaptions!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayFieldCaptions:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayImmediateItems!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayImmediateItems:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayMemberPropertyTooltips!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayMemberPropertyTooltips:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayNullString!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #displayNullString:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #dummy15:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #dummy15:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #Dummy15:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #enableDataValueEditing!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableDataValueEditing:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableDrilldown!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableDrilldown:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableFieldDialog!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableFieldDialog:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableFieldList!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableFieldList:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableWizard!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #enableWizard:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #errorString!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #errorString:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #fieldListSortAscending!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #fieldListSortAscending:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #format:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #Format:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ActiveFilters:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_AllowMultipleFilters:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_CacheIndex:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_CalculatedMembers:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ColumnFields:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ColumnGrand:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ColumnRange:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_CompactLayoutColumnHeader:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_CompactLayoutRowHeader:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_CompactRowIndent:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_CubeFields:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DataBodyRange:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DataFields:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DataLabelRange:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DataPivotField:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DisplayContextTooltips:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DisplayEmptyColumn:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DisplayEmptyRow:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DisplayErrorString:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DisplayFieldCaptions:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DisplayImmediateItems:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DisplayMemberPropertyTooltips:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_DisplayNullString:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_EnableDataValueEditing:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_EnableDrilldown:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_EnableFieldDialog:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_EnableFieldList:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_EnableWizard:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ErrorString:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_FieldListSortAscending:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_GrandTotalName:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_HasAutoFormat:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_HiddenFields:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_InGridDropZones:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_InnerDetail:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_LayoutRowDefault:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_Location:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ManualUpdate:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_MDX:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_MergeLabels:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_NullString:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PageFieldOrder:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PageFields:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PageFieldStyle:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PageFieldWrapCount:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PageRange:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PageRangeCells:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PivotColumnAxis:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PivotFormulas:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PivotRowAxis:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PivotSelection:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PivotSelectionStandard:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PreserveFormatting:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PrintDrillIndicators:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_PrintTitles:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_RefreshDate:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_RefreshName:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_RepeatItemsOnEachPrintedPage:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_RowFields:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_RowGrand:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_RowRange:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_SaveData:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_SelectionMode:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ShowCellBackgroundFromOLAP:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ShowDrillIndicators:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ShowPageMultipleItemLabel:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ShowTableStyleColumnHeaders:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ShowTableStyleColumnStripes:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ShowTableStyleLastColumn:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ShowTableStyleRowHeaders:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ShowTableStyleRowStripes:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_SmallGrid:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_SortUsingCustomLists:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_SourceData:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_SubtotalHiddenPageItems:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_TableRange1:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_TableRange2:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_TableStyle:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_TableStyle2:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_Tag:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_TotalsAnnotation:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_VacatedStyle:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_Version:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_ViewCalculatedMembers:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_VisibleFields:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #get_VisualTotals:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #getData:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #GetData:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #getPivotData!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #getPivotData:field1:item1:field2:item2:field3:item3:field4:item4:field5:item5:field6:item6:field7:item7:field8:item8:field9:item9:field10:item10:field11:item11:field12:item12:field13:item13:field14:item14:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #GetPivotData:field1:item1:field2:item2:field3:item3:field4:item4:field5:item5:field6:item6:field7:item7:field8:item8:field9:item9:field10:item10:field11:item11:field12:item12:field13:item13:field14:item14:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #grandTotalName!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #grandTotalName:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #hasAutoFormat!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #hasAutoFormat:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #hiddenFields!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #hiddenFields:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #inGridDropZones!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #inGridDropZones:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #innerDetail!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #innerDetail:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #layoutRowDefault!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #layoutRowDefault:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #listFormulas!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #ListFormulas!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #location!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #location:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #manualUpdate!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #manualUpdate:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #mdx!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #mergeLabels!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #mergeLabels:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #nullString!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #nullString:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageFieldOrder!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageFieldOrder:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageFields!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageFields:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageFieldStyle!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageFieldStyle:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageFieldWrapCount!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageFieldWrapCount:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageRange!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pageRangeCells!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pivotCache!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #PivotCache:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #pivotColumnAxis!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pivotFields!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #pivotFields:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #PivotFields:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #pivotFormulas!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pivotRowAxis!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pivotSelect:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #pivotSelect:mode:useStandardName:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #PivotSelect:mode:useStandardName:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #pivotSelection!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pivotSelection:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pivotSelectionStandard!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pivotSelectionStandard:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #pivotTableWizard!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #pivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #PivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #preserveFormatting!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #preserveFormatting:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #printDrillIndicators!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #printDrillIndicators:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #printTitles!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #printTitles:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_AllowMultipleFilters:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_CacheIndex:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ColumnGrand:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_CompactLayoutColumnHeader:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_CompactLayoutRowHeader:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_CompactRowIndent:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_DisplayContextTooltips:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_DisplayEmptyColumn:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_DisplayEmptyRow:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_DisplayErrorString:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_DisplayFieldCaptions:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_DisplayImmediateItems:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_DisplayMemberPropertyTooltips:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_DisplayNullString:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_EnableDataValueEditing:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_EnableDrilldown:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_EnableFieldDialog:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_EnableFieldList:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_EnableWizard:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ErrorString:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_FieldListSortAscending:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_GrandTotalName:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_HasAutoFormat:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_InGridDropZones:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_InnerDetail:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_LayoutRowDefault:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_Location:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ManualUpdate:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_MergeLabels:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_NullString:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_PageFieldOrder:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_PageFieldStyle:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_PageFieldWrapCount:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_PivotSelection:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_PivotSelectionStandard:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_PreserveFormatting:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_PrintDrillIndicators:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_PrintTitles:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_RepeatItemsOnEachPrintedPage:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_RowGrand:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_SaveData:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_SelectionMode:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ShowCellBackgroundFromOLAP:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ShowDrillIndicators:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ShowPageMultipleItemLabel:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ShowTableStyleColumnHeaders:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ShowTableStyleColumnStripes:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ShowTableStyleLastColumn:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ShowTableStyleRowHeaders:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ShowTableStyleRowStripes:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_SmallGrid:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_SortUsingCustomLists:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_SourceData:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_SubtotalHiddenPageItems:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_TableStyle:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_TableStyle2:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_Tag:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_TotalsAnnotation:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_VacatedStyle:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_ViewCalculatedMembers:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #put_VisualTotals:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #refreshDate!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #refreshName!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #refreshTable!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #RefreshTable:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #repeatItemsOnEachPrintedPage!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #repeatItemsOnEachPrintedPage:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #rowAxisLayout:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #RowAxisLayout:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #rowFields!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #rowFields:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #rowGrand!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #rowGrand:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #rowRange!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #saveData!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #saveData:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #selectionMode!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #selectionMode:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showCellBackgroundFromOLAP!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showCellBackgroundFromOLAP:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showDrillIndicators!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showDrillIndicators:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showPageMultipleItemLabel!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showPageMultipleItemLabel:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showPages!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #showPages:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #ShowPages:rhs:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #showTableStyleColumnHeaders!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleColumnHeaders:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleColumnStripes!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleColumnStripes:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleLastColumn!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleLastColumn:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleRowHeaders!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleRowHeaders:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleRowStripes!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #showTableStyleRowStripes:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #smallGrid!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #smallGrid:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #sortUsingCustomLists!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #sortUsingCustomLists:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #sourceData!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #sourceData:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #subtotalHiddenPageItems!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #subtotalHiddenPageItems:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #subtotalLocation:!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #SubtotalLocation:!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #tableRange1!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #tableRange2!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #tableStyle!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #tableStyle:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #tableStyle2!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #tableStyle2:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #tag!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #tag:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #totalsAnnotation!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #totalsAnnotation:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #update!**auto generated**!methods!public! !
!ExcelIPivotTable categoriesFor: #Update!**auto generated**!COM Interfaces-IPivotTable!private! !
!ExcelIPivotTable categoriesFor: #vacatedStyle!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #vacatedStyle:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #version!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #viewCalculatedMembers!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #viewCalculatedMembers:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #visibleFields!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #visibleFields:!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #visualTotals!**auto generated**!properties!public! !
!ExcelIPivotTable categoriesFor: #visualTotals:!**auto generated**!properties!public! !

!ExcelIPivotTable class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotTable'
		ExcelIPivotTable defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #AddFields:columnFields:pageFields:addToTable:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get_ColumnFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_ColumnGrand:
			argumentTypes: 'varbool*';
		defineFunction: #put_ColumnGrand:
			argumentTypes: 'varbool';
		defineFunction: #get_ColumnRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #ShowPages:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_DataBodyRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_DataFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_DataLabelRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #put__Default:
			argumentTypes: 'bstr';
		defineFunction: #get_HasAutoFormat:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasAutoFormat:
			argumentTypes: 'varbool';
		defineFunction: #get_HiddenFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_InnerDetail:
			argumentTypes: 'bstr*';
		defineFunction: #put_InnerDetail:
			argumentTypes: 'bstr';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_PageFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_PageRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_PageRangeCells:
			argumentTypes: 'ExcelRange**';
		defineFunction: #PivotFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_RefreshDate:
			argumentTypes: 'date*';
		defineFunction: #get_RefreshName:
			argumentTypes: 'bstr*';
		defineFunction: #RefreshTable:
			argumentTypes: 'varbool*';
		defineFunction: #get_RowFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_RowGrand:
			argumentTypes: 'varbool*';
		defineFunction: #put_RowGrand:
			argumentTypes: 'varbool';
		defineFunction: #get_RowRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_SaveData:
			argumentTypes: 'varbool*';
		defineFunction: #put_SaveData:
			argumentTypes: 'varbool';
		defineFunction: #get_SourceData:
			argumentTypes: 'variant*';
		defineFunction: #put_SourceData:
			argumentTypes: 'variant';
		defineFunction: #get_TableRange1:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_TableRange2:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #put_Value:
			argumentTypes: 'bstr';
		defineFunction: #get_VisibleFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_CacheIndex:
			argumentTypes: 'sdword*';
		defineFunction: #put_CacheIndex:
			argumentTypes: 'sdword';
		defineFunction: #CalculatedFields:
			argumentTypes: 'ExcelCalculatedFields**';
		defineFunction: #get_DisplayErrorString:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayErrorString:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayNullString:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayNullString:
			argumentTypes: 'varbool';
		defineFunction: #get_EnableDrilldown:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableDrilldown:
			argumentTypes: 'varbool';
		defineFunction: #get_EnableFieldDialog:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableFieldDialog:
			argumentTypes: 'varbool';
		defineFunction: #get_EnableWizard:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableWizard:
			argumentTypes: 'varbool';
		defineFunction: #get_ErrorString:
			argumentTypes: 'bstr*';
		defineFunction: #put_ErrorString:
			argumentTypes: 'bstr';
		defineFunction: #GetData:rhs:
			argumentTypes: 'bstr double*';
		defineFunction: #ListFormulas;
		defineFunction: #get_ManualUpdate:
			argumentTypes: 'varbool*';
		defineFunction: #put_ManualUpdate:
			argumentTypes: 'varbool';
		defineFunction: #get_MergeLabels:
			argumentTypes: 'varbool*';
		defineFunction: #put_MergeLabels:
			argumentTypes: 'varbool';
		defineFunction: #get_NullString:
			argumentTypes: 'bstr*';
		defineFunction: #put_NullString:
			argumentTypes: 'bstr';
		defineFunction: #PivotCache:
			argumentTypes: 'ExcelPivotCache**';
		defineFunction: #get_PivotFormulas:
			argumentTypes: 'ExcelPivotFormulas**';
		defineFunction: #PivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant';
		defineFunction: #get_SubtotalHiddenPageItems:
			argumentTypes: 'varbool*';
		defineFunction: #put_SubtotalHiddenPageItems:
			argumentTypes: 'varbool';
		defineFunction: #get_PageFieldOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_PageFieldOrder:
			argumentTypes: 'sdword';
		defineFunction: #get_PageFieldStyle:
			argumentTypes: 'bstr*';
		defineFunction: #put_PageFieldStyle:
			argumentTypes: 'bstr';
		defineFunction: #get_PageFieldWrapCount:
			argumentTypes: 'sdword*';
		defineFunction: #put_PageFieldWrapCount:
			argumentTypes: 'sdword';
		defineFunction: #get_PreserveFormatting:
			argumentTypes: 'varbool*';
		defineFunction: #put_PreserveFormatting:
			argumentTypes: 'varbool';
		defineFunction: #_PivotSelect:mode:
			argumentTypes: 'bstr sdword';
		defineFunction: #get_PivotSelection:
			argumentTypes: 'bstr*';
		defineFunction: #put_PivotSelection:
			argumentTypes: 'bstr';
		defineFunction: #get_SelectionMode:
			argumentTypes: 'sdword*';
		defineFunction: #put_SelectionMode:
			argumentTypes: 'sdword';
		defineFunction: #get_TableStyle:
			argumentTypes: 'bstr*';
		defineFunction: #put_TableStyle:
			argumentTypes: 'bstr';
		defineFunction: #get_Tag:
			argumentTypes: 'bstr*';
		defineFunction: #put_Tag:
			argumentTypes: 'bstr';
		defineFunction: #Update;
		defineFunction: #get_VacatedStyle:
			argumentTypes: 'bstr*';
		defineFunction: #put_VacatedStyle:
			argumentTypes: 'bstr';
		defineFunction: #Format:
			argumentTypes: 'sdword';
		defineFunction: #get_PrintTitles:
			argumentTypes: 'varbool*';
		defineFunction: #put_PrintTitles:
			argumentTypes: 'varbool';
		defineFunction: #get_CubeFields:
			argumentTypes: 'ExcelCubeFields**';
		defineFunction: #get_GrandTotalName:
			argumentTypes: 'bstr*';
		defineFunction: #put_GrandTotalName:
			argumentTypes: 'bstr';
		defineFunction: #get_SmallGrid:
			argumentTypes: 'varbool*';
		defineFunction: #put_SmallGrid:
			argumentTypes: 'varbool';
		defineFunction: #get_RepeatItemsOnEachPrintedPage:
			argumentTypes: 'varbool*';
		defineFunction: #put_RepeatItemsOnEachPrintedPage:
			argumentTypes: 'varbool';
		defineFunction: #get_TotalsAnnotation:
			argumentTypes: 'varbool*';
		defineFunction: #put_TotalsAnnotation:
			argumentTypes: 'varbool';
		defineFunction: #PivotSelect:mode:useStandardName:
			argumentTypes: 'bstr sdword variant';
		defineFunction: #get_PivotSelectionStandard:
			argumentTypes: 'bstr*';
		defineFunction: #put_PivotSelectionStandard:
			argumentTypes: 'bstr';
		defineFunction: #GetPivotData:field1:item1:field2:item2:field3:item3:field4:item4:field5:item5:field6:item6:field7:item7:field8:item8:field9:item9:field10:item10:field11:item11:field12:item12:field13:item13:field14:item14:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant ExcelRange**';
		defineFunction: #get_DataPivotField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_EnableDataValueEditing:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableDataValueEditing:
			argumentTypes: 'varbool';
		defineFunction: #AddDataField:caption:function:rhs:
			argumentTypes: 'IDispatch* variant variant ExcelPivotField**';
		defineFunction: #get_MDX:
			argumentTypes: 'bstr*';
		defineFunction: #get_ViewCalculatedMembers:
			argumentTypes: 'varbool*';
		defineFunction: #put_ViewCalculatedMembers:
			argumentTypes: 'varbool';
		defineFunction: #get_CalculatedMembers:
			argumentTypes: 'ExcelCalculatedMembers**';
		defineFunction: #get_DisplayImmediateItems:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayImmediateItems:
			argumentTypes: 'varbool';
		defineFunction: #Dummy15:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #get_EnableFieldList:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableFieldList:
			argumentTypes: 'varbool';
		defineFunction: #get_VisualTotals:
			argumentTypes: 'varbool*';
		defineFunction: #put_VisualTotals:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowPageMultipleItemLabel:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowPageMultipleItemLabel:
			argumentTypes: 'varbool';
		defineFunction: #get_Version:
			argumentTypes: 'sdword*';
		defineFunction: #CreateCubeFile:measures:levels:members:properties:rhs:
			argumentTypes: 'bstr variant variant variant variant bstr*';
		defineFunction: #get_DisplayEmptyRow:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayEmptyRow:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayEmptyColumn:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayEmptyColumn:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowCellBackgroundFromOLAP:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowCellBackgroundFromOLAP:
			argumentTypes: 'varbool';
		defineFunction: #get_PivotColumnAxis:
			argumentTypes: 'ExcelPivotAxis**';
		defineFunction: #get_PivotRowAxis:
			argumentTypes: 'ExcelPivotAxis**';
		defineFunction: #get_ShowDrillIndicators:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowDrillIndicators:
			argumentTypes: 'varbool';
		defineFunction: #get_PrintDrillIndicators:
			argumentTypes: 'varbool*';
		defineFunction: #put_PrintDrillIndicators:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayMemberPropertyTooltips:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayMemberPropertyTooltips:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayContextTooltips:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayContextTooltips:
			argumentTypes: 'varbool';
		defineFunction: #ClearTable;
		defineFunction: #get_CompactRowIndent:
			argumentTypes: 'sdword*';
		defineFunction: #put_CompactRowIndent:
			argumentTypes: 'sdword';
		defineFunction: #get_LayoutRowDefault:
			argumentTypes: 'sdword*';
		defineFunction: #put_LayoutRowDefault:
			argumentTypes: 'sdword';
		defineFunction: #get_DisplayFieldCaptions:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayFieldCaptions:
			argumentTypes: 'varbool';
		defineFunction: #RowAxisLayout:
			argumentTypes: 'sdword';
		defineFunction: #SubtotalLocation:
			argumentTypes: 'sdword';
		defineFunction: #get_ActiveFilters:
			argumentTypes: 'ExcelPivotFilters**';
		defineFunction: #get_InGridDropZones:
			argumentTypes: 'varbool*';
		defineFunction: #put_InGridDropZones:
			argumentTypes: 'varbool';
		defineFunction: #ClearAllFilters;
		defineFunction: #get_TableStyle2:
			argumentTypes: 'variant*';
		defineFunction: #put_TableStyle2:
			argumentTypes: 'variant';
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
		defineFunction: #get_ShowTableStyleRowHeaders:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowTableStyleRowHeaders:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowTableStyleColumnHeaders:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowTableStyleColumnHeaders:
			argumentTypes: 'varbool';
		defineFunction: #ConvertToFormulas:
			argumentTypes: 'varbool';
		defineFunction: #get_AllowMultipleFilters:
			argumentTypes: 'varbool*';
		defineFunction: #put_AllowMultipleFilters:
			argumentTypes: 'varbool';
		defineFunction: #get_CompactLayoutRowHeader:
			argumentTypes: 'bstr*';
		defineFunction: #put_CompactLayoutRowHeader:
			argumentTypes: 'bstr';
		defineFunction: #get_CompactLayoutColumnHeader:
			argumentTypes: 'bstr*';
		defineFunction: #put_CompactLayoutColumnHeader:
			argumentTypes: 'bstr';
		defineFunction: #get_FieldListSortAscending:
			argumentTypes: 'varbool*';
		defineFunction: #put_FieldListSortAscending:
			argumentTypes: 'varbool';
		defineFunction: #get_SortUsingCustomLists:
			argumentTypes: 'varbool*';
		defineFunction: #put_SortUsingCustomLists:
			argumentTypes: 'varbool';
		defineFunction: #ChangeConnection:
			argumentTypes: 'ExcelWorkbookConnection*';
		defineFunction: #ChangePivotCache:
			argumentTypes: 'variant';
		defineFunction: #get_Location:
			argumentTypes: 'bstr*';
		defineFunction: #put_Location:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotTable initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotTable class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotTable class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

