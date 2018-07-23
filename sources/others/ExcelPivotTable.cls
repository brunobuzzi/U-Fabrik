"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotTable guid: (IID fromString: '{00020872-0000-0000-C000-000000000046}')!
ExcelPivotTable comment: '<ExcelPivotTable> is a wrapper class generated for the dispatch interface ''Excel.PivotTable'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020872-0000-0000-C000-000000000046), 
	helpcontext(0x00020032)
]
dispinterface PivotTable {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000002c4), helpcontext(0x000102c4)]
		VARIANT AddFields(
			[in, optional]VARIANT RowFields,
			[in, optional]VARIANT ColumnFields,
			[in, optional]VARIANT PageFields,
			[in, optional]VARIANT AddToTable);
[id(0x000002c9), propget, helpcontext(0x000102c9)]
		IDispatch* ColumnFields(
			[in, optional]VARIANT Index);
[id(0x000002b6), propget, helpcontext(0x000102b6)]
		VARIANT_BOOL ColumnGrand();
[id(0x000002b6), propput, helpcontext(0x000102b6)]
		void ColumnGrand(
			[in]VARIANT_BOOL arg1);
[id(0x000002be), propget, helpcontext(0x000102be)]
		Range* ColumnRange();
[id(0x000002c2), helpcontext(0x000102c2)]
		VARIANT ShowPages(
			[in, optional]VARIANT PageField);
[id(0x000002c1), propget, helpcontext(0x000102c1)]
		Range* DataBodyRange();
[id(0x000002cb), propget, helpcontext(0x000102cb)]
		IDispatch* DataFields(
			[in, optional]VARIANT Index);
[id(0x000002c0), propget, helpcontext(0x000102c0)]
		Range* DataLabelRange();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]BSTR arg1);
[id(0x000002b7), propget, helpcontext(0x000102b7)]
		VARIANT_BOOL HasAutoFormat();
[id(0x000002b7), propput, helpcontext(0x000102b7)]
		void HasAutoFormat(
			[in]VARIANT_BOOL arg1);
[id(0x000002c7), propget, helpcontext(0x000102c7)]
		IDispatch* HiddenFields(
			[in, optional]VARIANT Index);
[id(0x000002ba), propget, helpcontext(0x000102ba)]
		BSTR InnerDetail();
[id(0x000002ba), propput, helpcontext(0x000102ba)]
		void InnerDetail(
			[in]BSTR arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000002ca), propget, helpcontext(0x000102ca)]
		IDispatch* PageFields(
			[in, optional]VARIANT Index);
[id(0x000002bf), propget, helpcontext(0x000102bf)]
		Range* PageRange();
[id(0x000005ca), propget, helpcontext(0x000105ca)]
		Range* PageRangeCells();
[id(0x000002ce), helpcontext(0x000102ce)]
		IDispatch* PivotFields(
			[in, optional]VARIANT Index);
[id(0x000002b8), propget, helpcontext(0x000102b8)]
		DATE RefreshDate();
[id(0x000002b9), propget, helpcontext(0x000102b9)]
		BSTR RefreshName();
[id(0x000002cd), helpcontext(0x000102cd)]
		VARIANT_BOOL RefreshTable();
[id(0x000002c8), propget, helpcontext(0x000102c8)]
		IDispatch* RowFields(
			[in, optional]VARIANT Index);
[id(0x000002b5), propget, helpcontext(0x000102b5)]
		VARIANT_BOOL RowGrand();
[id(0x000002b5), propput, helpcontext(0x000102b5)]
		void RowGrand(
			[in]VARIANT_BOOL arg1);
[id(0x000002bd), propget, helpcontext(0x000102bd)]
		Range* RowRange();
[id(0x000002b4), propget, helpcontext(0x000102b4)]
		VARIANT_BOOL SaveData();
[id(0x000002b4), propput, helpcontext(0x000102b4)]
		void SaveData(
			[in]VARIANT_BOOL arg1);
[id(0x000002ae), propget, helpcontext(0x000102ae)]
		VARIANT SourceData();
[id(0x000002ae), propput, helpcontext(0x000102ae)]
		void SourceData(
			[in]VARIANT arg1);
[id(0x000002bb), propget, helpcontext(0x000102bb)]
		Range* TableRange1();
[id(0x000002bc), propget, helpcontext(0x000102bc)]
		Range* TableRange2();
[id(0x00000006), propget, helpcontext(0x00010006)]
		BSTR Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]BSTR arg1);
[id(0x000002c6), propget, helpcontext(0x000102c6)]
		IDispatch* VisibleFields(
			[in, optional]VARIANT Index);
[id(0x000005cb), propget, helpcontext(0x000105cb)]
		long CacheIndex();
[id(0x000005cb), propput, helpcontext(0x000105cb)]
		void CacheIndex(
			[in]long arg1);
[id(0x000005cc), helpcontext(0x000105cc)]
		CalculatedFields* CalculatedFields();
[id(0x000005cd), propget, helpcontext(0x000105cd)]
		VARIANT_BOOL DisplayErrorString();
[id(0x000005cd), propput, helpcontext(0x000105cd)]
		void DisplayErrorString(
			[in]VARIANT_BOOL arg1);
[id(0x000005ce), propget, helpcontext(0x000105ce)]
		VARIANT_BOOL DisplayNullString();
[id(0x000005ce), propput, helpcontext(0x000105ce)]
		void DisplayNullString(
			[in]VARIANT_BOOL arg1);
[id(0x000005cf), propget, helpcontext(0x000105cf)]
		VARIANT_BOOL EnableDrilldown();
[id(0x000005cf), propput, helpcontext(0x000105cf)]
		void EnableDrilldown(
			[in]VARIANT_BOOL arg1);
[id(0x000005d0), propget, helpcontext(0x000105d0)]
		VARIANT_BOOL EnableFieldDialog();
[id(0x000005d0), propput, helpcontext(0x000105d0)]
		void EnableFieldDialog(
			[in]VARIANT_BOOL arg1);
[id(0x000005d1), propget, helpcontext(0x000105d1)]
		VARIANT_BOOL EnableWizard();
[id(0x000005d1), propput, helpcontext(0x000105d1)]
		void EnableWizard(
			[in]VARIANT_BOOL arg1);
[id(0x000005d2), propget, helpcontext(0x000105d2)]
		BSTR ErrorString();
[id(0x000005d2), propput, helpcontext(0x000105d2)]
		void ErrorString(
			[in]BSTR arg1);
[id(0x000005d3), helpcontext(0x000105d3)]
		double GetData(
			[in]BSTR Name);
[id(0x000005d4), helpcontext(0x000105d4)]
		void ListFormulas();
[id(0x000005d5), propget, helpcontext(0x000105d5)]
		VARIANT_BOOL ManualUpdate();
[id(0x000005d5), propput, helpcontext(0x000105d5)]
		void ManualUpdate(
			[in]VARIANT_BOOL arg1);
[id(0x000005d6), propget, helpcontext(0x000105d6)]
		VARIANT_BOOL MergeLabels();
[id(0x000005d6), propput, helpcontext(0x000105d6)]
		void MergeLabels(
			[in]VARIANT_BOOL arg1);
[id(0x000005d7), propget, helpcontext(0x000105d7)]
		BSTR NullString();
[id(0x000005d7), propput, helpcontext(0x000105d7)]
		void NullString(
			[in]BSTR arg1);
[id(0x000005d8), helpcontext(0x000105d8)]
		PivotCache* PivotCache();
[id(0x000005d9), propget, helpcontext(0x000105d9)]
		PivotFormulas* PivotFormulas();
[id(0x000002ac), helpcontext(0x000102ac)]
		void PivotTableWizard(
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
		VARIANT_BOOL SubtotalHiddenPageItems();
[id(0x000005da), propput, helpcontext(0x000105da)]
		void SubtotalHiddenPageItems(
			[in]VARIANT_BOOL arg1);
[id(0x00000595), propget, helpcontext(0x00010595)]
		long PageFieldOrder();
[id(0x00000595), propput, helpcontext(0x00010595)]
		void PageFieldOrder(
			[in]long arg1);
[id(0x000005db), propget, helpcontext(0x000105db)]
		BSTR PageFieldStyle();
[id(0x000005db), propput, helpcontext(0x000105db)]
		void PageFieldStyle(
			[in]BSTR arg1);
[id(0x00000596), propget, helpcontext(0x00010596)]
		long PageFieldWrapCount();
[id(0x00000596), propput, helpcontext(0x00010596)]
		void PageFieldWrapCount(
			[in]long arg1);
[id(0x000005dc), propget, helpcontext(0x000105dc)]
		VARIANT_BOOL PreserveFormatting();
[id(0x000005dc), propput, helpcontext(0x000105dc)]
		void PreserveFormatting(
			[in]VARIANT_BOOL arg1);
[id(0x00000827), hidden, helpcontext(0x00010827)]
		void _PivotSelect(
			[in]BSTR Name,
			[in, defaultvalue(0)]XlPTSelectionMode Mode);
[id(0x000005de), propget, helpcontext(0x000105de)]
		BSTR PivotSelection();
[id(0x000005de), propput, helpcontext(0x000105de)]
		void PivotSelection(
			[in]BSTR arg1);
[id(0x000005df), propget, helpcontext(0x000105df)]
		XlPTSelectionMode SelectionMode();
[id(0x000005df), propput, helpcontext(0x000105df)]
		void SelectionMode(
			[in]XlPTSelectionMode arg1);
[id(0x000005e0), hidden, propget, helpcontext(0x000105e0)]
		BSTR TableStyle();
[id(0x000005e0), hidden, propput, helpcontext(0x000105e0)]
		void TableStyle(
			[in]BSTR arg1);
[id(0x000005e1), propget, helpcontext(0x000105e1)]
		BSTR Tag();
[id(0x000005e1), propput, helpcontext(0x000105e1)]
		void Tag(
			[in]BSTR arg1);
[id(0x000002a8), helpcontext(0x000102a8)]
		void Update();
[id(0x000005e2), propget, helpcontext(0x000105e2)]
		BSTR VacatedStyle();
[id(0x000005e2), propput, helpcontext(0x000105e2)]
		void VacatedStyle(
			[in]BSTR arg1);
[id(0x00000074), hidden, helpcontext(0x00010074)]
		void Format(
			[in]XlPivotFormatType Format);
[id(0x0000072e), propget, helpcontext(0x0001072e)]
		VARIANT_BOOL PrintTitles();
[id(0x0000072e), propput, helpcontext(0x0001072e)]
		void PrintTitles(
			[in]VARIANT_BOOL arg1);
[id(0x0000072f), propget, helpcontext(0x0001072f)]
		CubeFields* CubeFields();
[id(0x00000730), propget, helpcontext(0x00010730)]
		BSTR GrandTotalName();
[id(0x00000730), propput, helpcontext(0x00010730)]
		void GrandTotalName(
			[in]BSTR arg1);
[id(0x00000731), propget, helpcontext(0x00010731)]
		VARIANT_BOOL SmallGrid();
[id(0x00000731), propput, helpcontext(0x00010731)]
		void SmallGrid(
			[in]VARIANT_BOOL arg1);
[id(0x00000732), propget, helpcontext(0x00010732)]
		VARIANT_BOOL RepeatItemsOnEachPrintedPage();
[id(0x00000732), propput, helpcontext(0x00010732)]
		void RepeatItemsOnEachPrintedPage(
			[in]VARIANT_BOOL arg1);
[id(0x00000733), propget, helpcontext(0x00010733)]
		VARIANT_BOOL TotalsAnnotation();
[id(0x00000733), propput, helpcontext(0x00010733)]
		void TotalsAnnotation(
			[in]VARIANT_BOOL arg1);
[id(0x000005dd), helpcontext(0x000105dd)]
		void PivotSelect(
			[in]BSTR Name,
			[in, defaultvalue(0)]XlPTSelectionMode Mode,
			[in, optional]VARIANT UseStandardName);
[id(0x00000829), propget, helpcontext(0x00010829)]
		BSTR PivotSelectionStandard();
[id(0x00000829), propput, helpcontext(0x00010829)]
		void PivotSelectionStandard(
			[in]BSTR arg1);
[id(0x0000082a), helpcontext(0x0001082a)]
		Range* GetPivotData(
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
			[in, optional]VARIANT Item14);
[id(0x00000848), propget, helpcontext(0x00010848)]
		PivotField* DataPivotField();
[id(0x00000849), propget, helpcontext(0x00010849)]
		VARIANT_BOOL EnableDataValueEditing();
[id(0x00000849), propput, helpcontext(0x00010849)]
		void EnableDataValueEditing(
			[in]VARIANT_BOOL arg1);
[id(0x0000084a), helpcontext(0x0001084a)]
		PivotField* AddDataField(
			[in]IDispatch* Field,
			[in, optional]VARIANT Caption,
			[in, optional]VARIANT Function);
[id(0x0000084b), propget, helpcontext(0x0001084b)]
		BSTR MDX();
[id(0x0000084c), propget, helpcontext(0x0001084c)]
		VARIANT_BOOL ViewCalculatedMembers();
[id(0x0000084c), propput, helpcontext(0x0001084c)]
		void ViewCalculatedMembers(
			[in]VARIANT_BOOL arg1);
[id(0x0000084d), propget, helpcontext(0x0001084d)]
		CalculatedMembers* CalculatedMembers();
[id(0x0000084e), propget, helpcontext(0x0001084e)]
		VARIANT_BOOL DisplayImmediateItems();
[id(0x0000084e), propput, helpcontext(0x0001084e)]
		void DisplayImmediateItems(
			[in]VARIANT_BOOL arg1);
[id(0x0000084f), hidden, helpcontext(0x0001084f)]
		VARIANT Dummy15(
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
			[in, optional]VARIANT Arg30);
[id(0x00000850), propget, helpcontext(0x00010850)]
		VARIANT_BOOL EnableFieldList();
[id(0x00000850), propput, helpcontext(0x00010850)]
		void EnableFieldList(
			[in]VARIANT_BOOL arg1);
[id(0x00000851), propget, helpcontext(0x00010851)]
		VARIANT_BOOL VisualTotals();
[id(0x00000851), propput, helpcontext(0x00010851)]
		void VisualTotals(
			[in]VARIANT_BOOL arg1);
[id(0x00000852), propget, helpcontext(0x00010852)]
		VARIANT_BOOL ShowPageMultipleItemLabel();
[id(0x00000852), propput, helpcontext(0x00010852)]
		void ShowPageMultipleItemLabel(
			[in]VARIANT_BOOL arg1);
[id(0x00000188), propget, helpcontext(0x00010188)]
		XlPivotTableVersionList Version();
[id(0x00000853), helpcontext(0x00010853)]
		BSTR CreateCubeFile(
			[in]BSTR File,
			[in, optional]VARIANT Measures,
			[in, optional]VARIANT Levels,
			[in, optional]VARIANT Members,
			[in, optional]VARIANT Properties);
[id(0x00000858), propget, helpcontext(0x00010858)]
		VARIANT_BOOL DisplayEmptyRow();
[id(0x00000858), propput, helpcontext(0x00010858)]
		void DisplayEmptyRow(
			[in]VARIANT_BOOL arg1);
[id(0x00000859), propget, helpcontext(0x00010859)]
		VARIANT_BOOL DisplayEmptyColumn();
[id(0x00000859), propput, helpcontext(0x00010859)]
		void DisplayEmptyColumn(
			[in]VARIANT_BOOL arg1);
[id(0x0000085a), hidden, propget, helpcontext(0x0001085a)]
		VARIANT_BOOL ShowCellBackgroundFromOLAP();
[id(0x0000085a), hidden, propput, helpcontext(0x0001085a)]
		void ShowCellBackgroundFromOLAP(
			[in]VARIANT_BOOL arg1);
[id(0x000009f2), propget, helpcontext(0x000109f2)]
		PivotAxis* PivotColumnAxis();
[id(0x000009f3), propget, helpcontext(0x000109f3)]
		PivotAxis* PivotRowAxis();
[id(0x000009f4), propget, helpcontext(0x000109f4)]
		VARIANT_BOOL ShowDrillIndicators();
[id(0x000009f4), propput, helpcontext(0x000109f4)]
		void ShowDrillIndicators(
			[in]VARIANT_BOOL arg1);
[id(0x000009f5), propget, helpcontext(0x000109f5)]
		VARIANT_BOOL PrintDrillIndicators();
[id(0x000009f5), propput, helpcontext(0x000109f5)]
		void PrintDrillIndicators(
			[in]VARIANT_BOOL arg1);
[id(0x000009f6), propget, helpcontext(0x000109f6)]
		VARIANT_BOOL DisplayMemberPropertyTooltips();
[id(0x000009f6), propput, helpcontext(0x000109f6)]
		void DisplayMemberPropertyTooltips(
			[in]VARIANT_BOOL arg1);
[id(0x000009f7), propget, helpcontext(0x000109f7)]
		VARIANT_BOOL DisplayContextTooltips();
[id(0x000009f7), propput, helpcontext(0x000109f7)]
		void DisplayContextTooltips(
			[in]VARIANT_BOOL arg1);
[id(0x000009f8), helpcontext(0x000109f8)]
		void ClearTable();
[id(0x000009f9), propget, helpcontext(0x000109f9)]
		long CompactRowIndent();
[id(0x000009f9), propput, helpcontext(0x000109f9)]
		void CompactRowIndent(
			[in]long arg1);
[id(0x000009fa), propget, helpcontext(0x000109fa)]
		XlLayoutRowType LayoutRowDefault();
[id(0x000009fa), propput, helpcontext(0x000109fa)]
		void LayoutRowDefault(
			[in]XlLayoutRowType arg1);
[id(0x000009fb), propget, helpcontext(0x000109fb)]
		VARIANT_BOOL DisplayFieldCaptions();
[id(0x000009fb), propput, helpcontext(0x000109fb)]
		void DisplayFieldCaptions(
			[in]VARIANT_BOOL arg1);
[id(0x000009fc), helpcontext(0x000109fc)]
		void RowAxisLayout(
			[in]XlLayoutRowType RowLayout);
[id(0x000009fe), helpcontext(0x000109fe)]
		void SubtotalLocation(
			[in]XlSubtototalLocationType Location);
[id(0x000009ff), propget, helpcontext(0x000109ff)]
		PivotFilters* ActiveFilters();
[id(0x00000a00), propget, helpcontext(0x00010a00)]
		VARIANT_BOOL InGridDropZones();
[id(0x00000a00), propput, helpcontext(0x00010a00)]
		void InGridDropZones(
			[in]VARIANT_BOOL arg1);
[id(0x00000a01), helpcontext(0x00010a01)]
		void ClearAllFilters();
[id(0x00000a02), propget, helpcontext(0x00010a02)]
		VARIANT TableStyle2();
[id(0x00000a02), propput, helpcontext(0x00010a02)]
		void TableStyle2(
			[in]VARIANT arg1);
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
[id(0x00000a06), propget, helpcontext(0x00010a06)]
		VARIANT_BOOL ShowTableStyleRowHeaders();
[id(0x00000a06), propput, helpcontext(0x00010a06)]
		void ShowTableStyleRowHeaders(
			[in]VARIANT_BOOL arg1);
[id(0x00000a07), propget, helpcontext(0x00010a07)]
		VARIANT_BOOL ShowTableStyleColumnHeaders();
[id(0x00000a07), propput, helpcontext(0x00010a07)]
		void ShowTableStyleColumnHeaders(
			[in]VARIANT_BOOL arg1);
[id(0x00000a08), helpcontext(0x00010a08)]
		void ConvertToFormulas(
			[in]VARIANT_BOOL ConvertFilters);
[id(0x00000a0a), propget, helpcontext(0x00010a0a)]
		VARIANT_BOOL AllowMultipleFilters();
[id(0x00000a0a), propput, helpcontext(0x00010a0a)]
		void AllowMultipleFilters(
			[in]VARIANT_BOOL arg1);
[id(0x00000a0b), propget, helpcontext(0x00010a0b)]
		BSTR CompactLayoutRowHeader();
[id(0x00000a0b), propput, helpcontext(0x00010a0b)]
		void CompactLayoutRowHeader(
			[in]BSTR arg1);
[id(0x00000a0c), propget, helpcontext(0x00010a0c)]
		BSTR CompactLayoutColumnHeader();
[id(0x00000a0c), propput, helpcontext(0x00010a0c)]
		void CompactLayoutColumnHeader(
			[in]BSTR arg1);
[id(0x00000a0d), propget, helpcontext(0x00010a0d)]
		VARIANT_BOOL FieldListSortAscending();
[id(0x00000a0d), propput, helpcontext(0x00010a0d)]
		void FieldListSortAscending(
			[in]VARIANT_BOOL arg1);
[id(0x00000a0e), propget, helpcontext(0x00010a0e)]
		VARIANT_BOOL SortUsingCustomLists();
[id(0x00000a0e), propput, helpcontext(0x00010a0e)]
		void SortUsingCustomLists(
			[in]VARIANT_BOOL arg1);
[id(0x00000a0f), helpcontext(0x00010a0f)]
		void ChangeConnection(
			[in]WorkbookConnection* conn);
[id(0x00000a11), helpcontext(0x00010a11)]
		void ChangePivotCache(
			[in]VARIANT PivotCache);
[id(0x00000575), propget, helpcontext(0x00010575)]
		BSTR Location();
[id(0x00000575), propput, helpcontext(0x00010575)]
		void Location(
			[in]BSTR arg1);
};
'!
!ExcelPivotTable categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotTable methodsFor!

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

_pivotSelect: name
	"Invoke the _PivotSelect() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 _pivotSelect: name
		 mode: 0!

_pivotSelect: name mode: mode
	"Invoke the _PivotSelect() method of the COM object."

	(self invokeId: 2087 with: name with: mode)
!

activeFilters
	"Answer the <ExcelPivotFilters> value of the 'ActiveFilters' property of the receiver.
		PivotFilters* ActiveFilters"

	^ExcelPivotFilters attachInterface: (self getPropertyId: 2559)
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

	^ExcelPivotField attachInterface: (self invokeId: 2122 withArguments:
			((Array new: 3)
				basicAt: 1 put: field;
				basicAt: 2 put: caption;
				basicAt: 3 put: function;
				yourself))
!

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

	^(self invokeId: 708 withArguments:
			((Array new: 4)
				basicAt: 1 put: rowFields;
				basicAt: 2 put: columnFields;
				basicAt: 3 put: pageFields;
				basicAt: 4 put: addToTable;
				yourself))
!

allowMultipleFilters
	"Answer the <varbool> value of the 'AllowMultipleFilters' property of the receiver.
		VARIANT_BOOL AllowMultipleFilters"

	^(self getPropertyId: 2570)
!

allowMultipleFilters: arg1
	"Set the 'AllowMultipleFilters' property of the receiver to the <varbool> value of the argument.
		void AllowMultipleFilters"

	self setPropertyId: 2570 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

cacheIndex
	"Answer the <sdword> value of the 'CacheIndex' property of the receiver.
		long CacheIndex"

	^(self getPropertyId: 1483)
!

cacheIndex: arg1
	"Set the 'CacheIndex' property of the receiver to the <sdword> value of the argument.
		void CacheIndex"

	self setPropertyId: 1483 value: arg1
!

calculatedFields
	"Answer the <ExcelCalculatedFields> result of invoking the CalculatedFields() method of the COM object."

	^ExcelCalculatedFields attachInterface: (self invokeId: 1484)
!

calculatedMembers
	"Answer the <ExcelCalculatedMembers> value of the 'CalculatedMembers' property of the receiver.
		CalculatedMembers* CalculatedMembers"

	^ExcelCalculatedMembers attachInterface: (self getPropertyId: 2125)
!

changeConnection: conn
	"Invoke the ChangeConnection() method of the COM object."

	(self invokeId: 2575 with: conn)
!

changePivotCache: pivotCache
	"Invoke the ChangePivotCache() method of the COM object."

	(self invokeId: 2577 with: pivotCache)
!

clearAllFilters
	"Invoke the ClearAllFilters() method of the COM object."

	(self invokeId: 2561)
!

clearTable
	"Invoke the ClearTable() method of the COM object."

	(self invokeId: 2552)
!

columnFields
	"Answer the <IDispatch> value of the 'ColumnFields' property of the receiver.
		IDispatch* ColumnFields"

	^self columnFields: VARIANT unspecified!

columnFields: index
	"Answer the <IDispatch> value of the 'ColumnFields' property of the receiver.
		IDispatch* ColumnFields"

	^IDispatch attachInterface: (self getPropertyId: 713 item: index)
!

columnGrand
	"Answer the <varbool> value of the 'ColumnGrand' property of the receiver.
		VARIANT_BOOL ColumnGrand"

	^(self getPropertyId: 694)
!

columnGrand: arg1
	"Set the 'ColumnGrand' property of the receiver to the <varbool> value of the argument.
		void ColumnGrand"

	self setPropertyId: 694 value: arg1
!

columnRange
	"Answer the <ExcelRange> value of the 'ColumnRange' property of the receiver.
		Range* ColumnRange"

	^ExcelRange attachInterface: (self getPropertyId: 702)
!

compactLayoutColumnHeader
	"Answer the <bstr> value of the 'CompactLayoutColumnHeader' property of the receiver.
		BSTR CompactLayoutColumnHeader"

	^(self getPropertyId: 2572)
!

compactLayoutColumnHeader: arg1
	"Set the 'CompactLayoutColumnHeader' property of the receiver to the <bstr> value of the argument.
		void CompactLayoutColumnHeader"

	self setPropertyId: 2572 value: arg1
!

compactLayoutRowHeader
	"Answer the <bstr> value of the 'CompactLayoutRowHeader' property of the receiver.
		BSTR CompactLayoutRowHeader"

	^(self getPropertyId: 2571)
!

compactLayoutRowHeader: arg1
	"Set the 'CompactLayoutRowHeader' property of the receiver to the <bstr> value of the argument.
		void CompactLayoutRowHeader"

	self setPropertyId: 2571 value: arg1
!

compactRowIndent
	"Answer the <sdword> value of the 'CompactRowIndent' property of the receiver.
		long CompactRowIndent"

	^(self getPropertyId: 2553)
!

compactRowIndent: arg1
	"Set the 'CompactRowIndent' property of the receiver to the <sdword> value of the argument.
		void CompactRowIndent"

	self setPropertyId: 2553 value: arg1
!

convertToFormulas: convertFilters
	"Invoke the ConvertToFormulas() method of the COM object."

	(self invokeId: 2568 with: convertFilters)
!

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

	^(self invokeId: 2131 withArguments:
			((Array new: 5)
				basicAt: 1 put: file;
				basicAt: 2 put: measures;
				basicAt: 3 put: levels;
				basicAt: 4 put: members;
				basicAt: 5 put: properties;
				yourself))
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

cubeFields
	"Answer the <ExcelCubeFields> value of the 'CubeFields' property of the receiver.
		CubeFields* CubeFields"

	^ExcelCubeFields attachInterface: (self getPropertyId: 1839)
!

dataBodyRange
	"Answer the <ExcelRange> value of the 'DataBodyRange' property of the receiver.
		Range* DataBodyRange"

	^ExcelRange attachInterface: (self getPropertyId: 705)
!

dataFields
	"Answer the <IDispatch> value of the 'DataFields' property of the receiver.
		IDispatch* DataFields"

	^self dataFields: VARIANT unspecified!

dataFields: index
	"Answer the <IDispatch> value of the 'DataFields' property of the receiver.
		IDispatch* DataFields"

	^IDispatch attachInterface: (self getPropertyId: 715 item: index)
!

dataLabelRange
	"Answer the <ExcelRange> value of the 'DataLabelRange' property of the receiver.
		Range* DataLabelRange"

	^ExcelRange attachInterface: (self getPropertyId: 704)
!

dataPivotField
	"Answer the <ExcelPivotField> value of the 'DataPivotField' property of the receiver.
		PivotField* DataPivotField"

	^ExcelPivotField attachInterface: (self getPropertyId: 2120)
!

displayContextTooltips
	"Answer the <varbool> value of the 'DisplayContextTooltips' property of the receiver.
		VARIANT_BOOL DisplayContextTooltips"

	^(self getPropertyId: 2551)
!

displayContextTooltips: arg1
	"Set the 'DisplayContextTooltips' property of the receiver to the <varbool> value of the argument.
		void DisplayContextTooltips"

	self setPropertyId: 2551 value: arg1
!

displayEmptyColumn
	"Answer the <varbool> value of the 'DisplayEmptyColumn' property of the receiver.
		VARIANT_BOOL DisplayEmptyColumn"

	^(self getPropertyId: 2137)
!

displayEmptyColumn: arg1
	"Set the 'DisplayEmptyColumn' property of the receiver to the <varbool> value of the argument.
		void DisplayEmptyColumn"

	self setPropertyId: 2137 value: arg1
!

displayEmptyRow
	"Answer the <varbool> value of the 'DisplayEmptyRow' property of the receiver.
		VARIANT_BOOL DisplayEmptyRow"

	^(self getPropertyId: 2136)
!

displayEmptyRow: arg1
	"Set the 'DisplayEmptyRow' property of the receiver to the <varbool> value of the argument.
		void DisplayEmptyRow"

	self setPropertyId: 2136 value: arg1
!

displayErrorString
	"Answer the <varbool> value of the 'DisplayErrorString' property of the receiver.
		VARIANT_BOOL DisplayErrorString"

	^(self getPropertyId: 1485)
!

displayErrorString: arg1
	"Set the 'DisplayErrorString' property of the receiver to the <varbool> value of the argument.
		void DisplayErrorString"

	self setPropertyId: 1485 value: arg1
!

displayFieldCaptions
	"Answer the <varbool> value of the 'DisplayFieldCaptions' property of the receiver.
		VARIANT_BOOL DisplayFieldCaptions"

	^(self getPropertyId: 2555)
!

displayFieldCaptions: arg1
	"Set the 'DisplayFieldCaptions' property of the receiver to the <varbool> value of the argument.
		void DisplayFieldCaptions"

	self setPropertyId: 2555 value: arg1
!

displayImmediateItems
	"Answer the <varbool> value of the 'DisplayImmediateItems' property of the receiver.
		VARIANT_BOOL DisplayImmediateItems"

	^(self getPropertyId: 2126)
!

displayImmediateItems: arg1
	"Set the 'DisplayImmediateItems' property of the receiver to the <varbool> value of the argument.
		void DisplayImmediateItems"

	self setPropertyId: 2126 value: arg1
!

displayMemberPropertyTooltips
	"Answer the <varbool> value of the 'DisplayMemberPropertyTooltips' property of the receiver.
		VARIANT_BOOL DisplayMemberPropertyTooltips"

	^(self getPropertyId: 2550)
!

displayMemberPropertyTooltips: arg1
	"Set the 'DisplayMemberPropertyTooltips' property of the receiver to the <varbool> value of the argument.
		void DisplayMemberPropertyTooltips"

	self setPropertyId: 2550 value: arg1
!

displayNullString
	"Answer the <varbool> value of the 'DisplayNullString' property of the receiver.
		VARIANT_BOOL DisplayNullString"

	^(self getPropertyId: 1486)
!

displayNullString: arg1
	"Set the 'DisplayNullString' property of the receiver to the <varbool> value of the argument.
		void DisplayNullString"

	self setPropertyId: 1486 value: arg1
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

	^(self invokeId: 2127 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

enableDataValueEditing
	"Answer the <varbool> value of the 'EnableDataValueEditing' property of the receiver.
		VARIANT_BOOL EnableDataValueEditing"

	^(self getPropertyId: 2121)
!

enableDataValueEditing: arg1
	"Set the 'EnableDataValueEditing' property of the receiver to the <varbool> value of the argument.
		void EnableDataValueEditing"

	self setPropertyId: 2121 value: arg1
!

enableDrilldown
	"Answer the <varbool> value of the 'EnableDrilldown' property of the receiver.
		VARIANT_BOOL EnableDrilldown"

	^(self getPropertyId: 1487)
!

enableDrilldown: arg1
	"Set the 'EnableDrilldown' property of the receiver to the <varbool> value of the argument.
		void EnableDrilldown"

	self setPropertyId: 1487 value: arg1
!

enableFieldDialog
	"Answer the <varbool> value of the 'EnableFieldDialog' property of the receiver.
		VARIANT_BOOL EnableFieldDialog"

	^(self getPropertyId: 1488)
!

enableFieldDialog: arg1
	"Set the 'EnableFieldDialog' property of the receiver to the <varbool> value of the argument.
		void EnableFieldDialog"

	self setPropertyId: 1488 value: arg1
!

enableFieldList
	"Answer the <varbool> value of the 'EnableFieldList' property of the receiver.
		VARIANT_BOOL EnableFieldList"

	^(self getPropertyId: 2128)
!

enableFieldList: arg1
	"Set the 'EnableFieldList' property of the receiver to the <varbool> value of the argument.
		void EnableFieldList"

	self setPropertyId: 2128 value: arg1
!

enableWizard
	"Answer the <varbool> value of the 'EnableWizard' property of the receiver.
		VARIANT_BOOL EnableWizard"

	^(self getPropertyId: 1489)
!

enableWizard: arg1
	"Set the 'EnableWizard' property of the receiver to the <varbool> value of the argument.
		void EnableWizard"

	self setPropertyId: 1489 value: arg1
!

errorString
	"Answer the <bstr> value of the 'ErrorString' property of the receiver.
		BSTR ErrorString"

	^(self getPropertyId: 1490)
!

errorString: arg1
	"Set the 'ErrorString' property of the receiver to the <bstr> value of the argument.
		void ErrorString"

	self setPropertyId: 1490 value: arg1
!

fieldListSortAscending
	"Answer the <varbool> value of the 'FieldListSortAscending' property of the receiver.
		VARIANT_BOOL FieldListSortAscending"

	^(self getPropertyId: 2573)
!

fieldListSortAscending: arg1
	"Set the 'FieldListSortAscending' property of the receiver to the <varbool> value of the argument.
		void FieldListSortAscending"

	self setPropertyId: 2573 value: arg1
!

format: format
	"Invoke the Format() method of the COM object."

	(self invokeId: 116 with: format)
!

getData: name
	"Answer the <DOUBLE> result of invoking the GetData() method of the COM object."

	^(self invokeId: 1491 with: name)
!

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

	^ExcelRange attachInterface: (self invokeId: 2090 withArguments:
			((Array new: 29)
				basicAt: 1 put: dataField;
				basicAt: 2 put: field1;
				basicAt: 3 put: item1;
				basicAt: 4 put: field2;
				basicAt: 5 put: item2;
				basicAt: 6 put: field3;
				basicAt: 7 put: item3;
				basicAt: 8 put: field4;
				basicAt: 9 put: item4;
				basicAt: 10 put: field5;
				basicAt: 11 put: item5;
				basicAt: 12 put: field6;
				basicAt: 13 put: item6;
				basicAt: 14 put: field7;
				basicAt: 15 put: item7;
				basicAt: 16 put: field8;
				basicAt: 17 put: item8;
				basicAt: 18 put: field9;
				basicAt: 19 put: item9;
				basicAt: 20 put: field10;
				basicAt: 21 put: item10;
				basicAt: 22 put: field11;
				basicAt: 23 put: item11;
				basicAt: 24 put: field12;
				basicAt: 25 put: item12;
				basicAt: 26 put: field13;
				basicAt: 27 put: item13;
				basicAt: 28 put: field14;
				basicAt: 29 put: item14;
				yourself))
!

grandTotalName
	"Answer the <bstr> value of the 'GrandTotalName' property of the receiver.
		BSTR GrandTotalName"

	^(self getPropertyId: 1840)
!

grandTotalName: arg1
	"Set the 'GrandTotalName' property of the receiver to the <bstr> value of the argument.
		void GrandTotalName"

	self setPropertyId: 1840 value: arg1
!

hasAutoFormat
	"Answer the <varbool> value of the 'HasAutoFormat' property of the receiver.
		VARIANT_BOOL HasAutoFormat"

	^(self getPropertyId: 695)
!

hasAutoFormat: arg1
	"Set the 'HasAutoFormat' property of the receiver to the <varbool> value of the argument.
		void HasAutoFormat"

	self setPropertyId: 695 value: arg1
!

hiddenFields
	"Answer the <IDispatch> value of the 'HiddenFields' property of the receiver.
		IDispatch* HiddenFields"

	^self hiddenFields: VARIANT unspecified!

hiddenFields: index
	"Answer the <IDispatch> value of the 'HiddenFields' property of the receiver.
		IDispatch* HiddenFields"

	^IDispatch attachInterface: (self getPropertyId: 711 item: index)
!

inGridDropZones
	"Answer the <varbool> value of the 'InGridDropZones' property of the receiver.
		VARIANT_BOOL InGridDropZones"

	^(self getPropertyId: 2560)
!

inGridDropZones: arg1
	"Set the 'InGridDropZones' property of the receiver to the <varbool> value of the argument.
		void InGridDropZones"

	self setPropertyId: 2560 value: arg1
!

innerDetail
	"Answer the <bstr> value of the 'InnerDetail' property of the receiver.
		BSTR InnerDetail"

	^(self getPropertyId: 698)
!

innerDetail: arg1
	"Set the 'InnerDetail' property of the receiver to the <bstr> value of the argument.
		void InnerDetail"

	self setPropertyId: 698 value: arg1
!

layoutRowDefault
	"Answer the <sdword> value of the 'LayoutRowDefault' property of the receiver.
		XlLayoutRowType LayoutRowDefault"

	^(self getPropertyId: 2554)
!

layoutRowDefault: arg1
	"Set the 'LayoutRowDefault' property of the receiver to the <sdword> value of the argument.
		void LayoutRowDefault"

	self setPropertyId: 2554 value: arg1
!

listFormulas
	"Invoke the ListFormulas() method of the COM object."

	(self invokeId: 1492)
!

location
	"Answer the <bstr> value of the 'Location' property of the receiver.
		BSTR Location"

	^(self getPropertyId: 1397)
!

location: arg1
	"Set the 'Location' property of the receiver to the <bstr> value of the argument.
		void Location"

	self setPropertyId: 1397 value: arg1
!

manualUpdate
	"Answer the <varbool> value of the 'ManualUpdate' property of the receiver.
		VARIANT_BOOL ManualUpdate"

	^(self getPropertyId: 1493)
!

manualUpdate: arg1
	"Set the 'ManualUpdate' property of the receiver to the <varbool> value of the argument.
		void ManualUpdate"

	self setPropertyId: 1493 value: arg1
!

mdx
	"Answer the <bstr> value of the 'MDX' property of the receiver.
		BSTR MDX"

	^(self getPropertyId: 2123)
!

mergeLabels
	"Answer the <varbool> value of the 'MergeLabels' property of the receiver.
		VARIANT_BOOL MergeLabels"

	^(self getPropertyId: 1494)
!

mergeLabels: arg1
	"Set the 'MergeLabels' property of the receiver to the <varbool> value of the argument.
		void MergeLabels"

	self setPropertyId: 1494 value: arg1
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

nullString
	"Answer the <bstr> value of the 'NullString' property of the receiver.
		BSTR NullString"

	^(self getPropertyId: 1495)
!

nullString: arg1
	"Set the 'NullString' property of the receiver to the <bstr> value of the argument.
		void NullString"

	self setPropertyId: 1495 value: arg1
!

pageFieldOrder
	"Answer the <sdword> value of the 'PageFieldOrder' property of the receiver.
		long PageFieldOrder"

	^(self getPropertyId: 1429)
!

pageFieldOrder: arg1
	"Set the 'PageFieldOrder' property of the receiver to the <sdword> value of the argument.
		void PageFieldOrder"

	self setPropertyId: 1429 value: arg1
!

pageFields
	"Answer the <IDispatch> value of the 'PageFields' property of the receiver.
		IDispatch* PageFields"

	^self pageFields: VARIANT unspecified!

pageFields: index
	"Answer the <IDispatch> value of the 'PageFields' property of the receiver.
		IDispatch* PageFields"

	^IDispatch attachInterface: (self getPropertyId: 714 item: index)
!

pageFieldStyle
	"Answer the <bstr> value of the 'PageFieldStyle' property of the receiver.
		BSTR PageFieldStyle"

	^(self getPropertyId: 1499)
!

pageFieldStyle: arg1
	"Set the 'PageFieldStyle' property of the receiver to the <bstr> value of the argument.
		void PageFieldStyle"

	self setPropertyId: 1499 value: arg1
!

pageFieldWrapCount
	"Answer the <sdword> value of the 'PageFieldWrapCount' property of the receiver.
		long PageFieldWrapCount"

	^(self getPropertyId: 1430)
!

pageFieldWrapCount: arg1
	"Set the 'PageFieldWrapCount' property of the receiver to the <sdword> value of the argument.
		void PageFieldWrapCount"

	self setPropertyId: 1430 value: arg1
!

pageRange
	"Answer the <ExcelRange> value of the 'PageRange' property of the receiver.
		Range* PageRange"

	^ExcelRange attachInterface: (self getPropertyId: 703)
!

pageRangeCells
	"Answer the <ExcelRange> value of the 'PageRangeCells' property of the receiver.
		Range* PageRangeCells"

	^ExcelRange attachInterface: (self getPropertyId: 1482)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pivotCache
	"Answer the <ExcelPivotCache> result of invoking the PivotCache() method of the COM object."

	^ExcelPivotCache attachInterface: (self invokeId: 1496)
!

pivotColumnAxis
	"Answer the <ExcelPivotAxis> value of the 'PivotColumnAxis' property of the receiver.
		PivotAxis* PivotColumnAxis"

	^ExcelPivotAxis attachInterface: (self getPropertyId: 2546)
!

pivotFields
	"Answer the <IDispatch> result of invoking the PivotFields() method of the COM object.
	Default values are passed for all optional parameters."

	^self pivotFields: VARIANT unspecified!

pivotFields: index
	"Answer the <IDispatch> result of invoking the PivotFields() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 718 with: index)
!

pivotFormulas
	"Answer the <ExcelPivotFormulas> value of the 'PivotFormulas' property of the receiver.
		PivotFormulas* PivotFormulas"

	^ExcelPivotFormulas attachInterface: (self getPropertyId: 1497)
!

pivotRowAxis
	"Answer the <ExcelPivotAxis> value of the 'PivotRowAxis' property of the receiver.
		PivotAxis* PivotRowAxis"

	^ExcelPivotAxis attachInterface: (self getPropertyId: 2547)
!

pivotSelect: name
	"Invoke the PivotSelect() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 pivotSelect: name
		 mode: 0
		 useStandardName: VARIANT unspecified!

pivotSelect: name mode: mode useStandardName: useStandardName
	"Invoke the PivotSelect() method of the COM object."

	(self invokeId: 1501 withArguments:
			((Array new: 3)
				basicAt: 1 put: name;
				basicAt: 2 put: mode;
				basicAt: 3 put: useStandardName;
				yourself))
!

pivotSelection
	"Answer the <bstr> value of the 'PivotSelection' property of the receiver.
		BSTR PivotSelection"

	^(self getPropertyId: 1502)
!

pivotSelection: arg1
	"Set the 'PivotSelection' property of the receiver to the <bstr> value of the argument.
		void PivotSelection"

	self setPropertyId: 1502 value: arg1
!

pivotSelectionStandard
	"Answer the <bstr> value of the 'PivotSelectionStandard' property of the receiver.
		BSTR PivotSelectionStandard"

	^(self getPropertyId: 2089)
!

pivotSelectionStandard: arg1
	"Set the 'PivotSelectionStandard' property of the receiver to the <bstr> value of the argument.
		void PivotSelectionStandard"

	self setPropertyId: 2089 value: arg1
!

pivotTableWizard
	"Invoke the PivotTableWizard() method of the COM object.
	Default values are passed for all optional parameters."

	self
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

	(self invokeId: 684 withArguments:
			((Array new: 16)
				basicAt: 1 put: sourceType;
				basicAt: 2 put: sourceData;
				basicAt: 3 put: tableDestination;
				basicAt: 4 put: tableName;
				basicAt: 5 put: rowGrand;
				basicAt: 6 put: columnGrand;
				basicAt: 7 put: saveData;
				basicAt: 8 put: hasAutoFormat;
				basicAt: 9 put: autoPage;
				basicAt: 10 put: reserved;
				basicAt: 11 put: backgroundQuery;
				basicAt: 12 put: optimizeCache;
				basicAt: 13 put: pageFieldOrder;
				basicAt: 14 put: pageFieldWrapCount;
				basicAt: 15 put: readData;
				basicAt: 16 put: connection;
				yourself))
!

preserveFormatting
	"Answer the <varbool> value of the 'PreserveFormatting' property of the receiver.
		VARIANT_BOOL PreserveFormatting"

	^(self getPropertyId: 1500)
!

preserveFormatting: arg1
	"Set the 'PreserveFormatting' property of the receiver to the <varbool> value of the argument.
		void PreserveFormatting"

	self setPropertyId: 1500 value: arg1
!

printDrillIndicators
	"Answer the <varbool> value of the 'PrintDrillIndicators' property of the receiver.
		VARIANT_BOOL PrintDrillIndicators"

	^(self getPropertyId: 2549)
!

printDrillIndicators: arg1
	"Set the 'PrintDrillIndicators' property of the receiver to the <varbool> value of the argument.
		void PrintDrillIndicators"

	self setPropertyId: 2549 value: arg1
!

printTitles
	"Answer the <varbool> value of the 'PrintTitles' property of the receiver.
		VARIANT_BOOL PrintTitles"

	^(self getPropertyId: 1838)
!

printTitles: arg1
	"Set the 'PrintTitles' property of the receiver to the <varbool> value of the argument.
		void PrintTitles"

	self setPropertyId: 1838 value: arg1
!

refreshDate
	"Answer the <date> value of the 'RefreshDate' property of the receiver.
		DATE RefreshDate"

	^(self getPropertyId: 696)
!

refreshName
	"Answer the <bstr> value of the 'RefreshName' property of the receiver.
		BSTR RefreshName"

	^(self getPropertyId: 697)
!

refreshTable
	"Answer the <VARIANT_BOOL> result of invoking the RefreshTable() method of the COM object."

	^(self invokeId: 717)
!

repeatItemsOnEachPrintedPage
	"Answer the <varbool> value of the 'RepeatItemsOnEachPrintedPage' property of the receiver.
		VARIANT_BOOL RepeatItemsOnEachPrintedPage"

	^(self getPropertyId: 1842)
!

repeatItemsOnEachPrintedPage: arg1
	"Set the 'RepeatItemsOnEachPrintedPage' property of the receiver to the <varbool> value of the argument.
		void RepeatItemsOnEachPrintedPage"

	self setPropertyId: 1842 value: arg1
!

rowAxisLayout: rowLayout
	"Invoke the RowAxisLayout() method of the COM object."

	(self invokeId: 2556 with: rowLayout)
!

rowFields
	"Answer the <IDispatch> value of the 'RowFields' property of the receiver.
		IDispatch* RowFields"

	^self rowFields: VARIANT unspecified!

rowFields: index
	"Answer the <IDispatch> value of the 'RowFields' property of the receiver.
		IDispatch* RowFields"

	^IDispatch attachInterface: (self getPropertyId: 712 item: index)
!

rowGrand
	"Answer the <varbool> value of the 'RowGrand' property of the receiver.
		VARIANT_BOOL RowGrand"

	^(self getPropertyId: 693)
!

rowGrand: arg1
	"Set the 'RowGrand' property of the receiver to the <varbool> value of the argument.
		void RowGrand"

	self setPropertyId: 693 value: arg1
!

rowRange
	"Answer the <ExcelRange> value of the 'RowRange' property of the receiver.
		Range* RowRange"

	^ExcelRange attachInterface: (self getPropertyId: 701)
!

saveData
	"Answer the <varbool> value of the 'SaveData' property of the receiver.
		VARIANT_BOOL SaveData"

	^(self getPropertyId: 692)
!

saveData: arg1
	"Set the 'SaveData' property of the receiver to the <varbool> value of the argument.
		void SaveData"

	self setPropertyId: 692 value: arg1
!

selectionMode
	"Answer the <sdword> value of the 'SelectionMode' property of the receiver.
		XlPTSelectionMode SelectionMode"

	^(self getPropertyId: 1503)
!

selectionMode: arg1
	"Set the 'SelectionMode' property of the receiver to the <sdword> value of the argument.
		void SelectionMode"

	self setPropertyId: 1503 value: arg1
!

showCellBackgroundFromOLAP
	"Answer the <varbool> value of the 'ShowCellBackgroundFromOLAP' property of the receiver.
		VARIANT_BOOL ShowCellBackgroundFromOLAP"

	^(self getPropertyId: 2138)
!

showCellBackgroundFromOLAP: arg1
	"Set the 'ShowCellBackgroundFromOLAP' property of the receiver to the <varbool> value of the argument.
		void ShowCellBackgroundFromOLAP"

	self setPropertyId: 2138 value: arg1
!

showDrillIndicators
	"Answer the <varbool> value of the 'ShowDrillIndicators' property of the receiver.
		VARIANT_BOOL ShowDrillIndicators"

	^(self getPropertyId: 2548)
!

showDrillIndicators: arg1
	"Set the 'ShowDrillIndicators' property of the receiver to the <varbool> value of the argument.
		void ShowDrillIndicators"

	self setPropertyId: 2548 value: arg1
!

showPageMultipleItemLabel
	"Answer the <varbool> value of the 'ShowPageMultipleItemLabel' property of the receiver.
		VARIANT_BOOL ShowPageMultipleItemLabel"

	^(self getPropertyId: 2130)
!

showPageMultipleItemLabel: arg1
	"Set the 'ShowPageMultipleItemLabel' property of the receiver to the <varbool> value of the argument.
		void ShowPageMultipleItemLabel"

	self setPropertyId: 2130 value: arg1
!

showPages
	"Answer the <VARIANT> result of invoking the ShowPages() method of the COM object.
	Default values are passed for all optional parameters."

	^self showPages: VARIANT unspecified!

showPages: pageField
	"Answer the <VARIANT> result of invoking the ShowPages() method of the COM object."

	^(self invokeId: 706 with: pageField)
!

showTableStyleColumnHeaders
	"Answer the <varbool> value of the 'ShowTableStyleColumnHeaders' property of the receiver.
		VARIANT_BOOL ShowTableStyleColumnHeaders"

	^(self getPropertyId: 2567)
!

showTableStyleColumnHeaders: arg1
	"Set the 'ShowTableStyleColumnHeaders' property of the receiver to the <varbool> value of the argument.
		void ShowTableStyleColumnHeaders"

	self setPropertyId: 2567 value: arg1
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

showTableStyleRowHeaders
	"Answer the <varbool> value of the 'ShowTableStyleRowHeaders' property of the receiver.
		VARIANT_BOOL ShowTableStyleRowHeaders"

	^(self getPropertyId: 2566)
!

showTableStyleRowHeaders: arg1
	"Set the 'ShowTableStyleRowHeaders' property of the receiver to the <varbool> value of the argument.
		void ShowTableStyleRowHeaders"

	self setPropertyId: 2566 value: arg1
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

smallGrid
	"Answer the <varbool> value of the 'SmallGrid' property of the receiver.
		VARIANT_BOOL SmallGrid"

	^(self getPropertyId: 1841)
!

smallGrid: arg1
	"Set the 'SmallGrid' property of the receiver to the <varbool> value of the argument.
		void SmallGrid"

	self setPropertyId: 1841 value: arg1
!

sortUsingCustomLists
	"Answer the <varbool> value of the 'SortUsingCustomLists' property of the receiver.
		VARIANT_BOOL SortUsingCustomLists"

	^(self getPropertyId: 2574)
!

sortUsingCustomLists: arg1
	"Set the 'SortUsingCustomLists' property of the receiver to the <varbool> value of the argument.
		void SortUsingCustomLists"

	self setPropertyId: 2574 value: arg1
!

sourceData
	"Answer the <variant> value of the 'SourceData' property of the receiver.
		VARIANT SourceData"

	^(self getPropertyId: 686)
!

sourceData: arg1
	"Set the 'SourceData' property of the receiver to the <variant> value of the argument.
		void SourceData"

	self setPropertyId: 686 value: arg1
!

subtotalHiddenPageItems
	"Answer the <varbool> value of the 'SubtotalHiddenPageItems' property of the receiver.
		VARIANT_BOOL SubtotalHiddenPageItems"

	^(self getPropertyId: 1498)
!

subtotalHiddenPageItems: arg1
	"Set the 'SubtotalHiddenPageItems' property of the receiver to the <varbool> value of the argument.
		void SubtotalHiddenPageItems"

	self setPropertyId: 1498 value: arg1
!

subtotalLocation: location
	"Invoke the SubtotalLocation() method of the COM object."

	(self invokeId: 2558 with: location)
!

tableRange1
	"Answer the <ExcelRange> value of the 'TableRange1' property of the receiver.
		Range* TableRange1"

	^ExcelRange attachInterface: (self getPropertyId: 699)
!

tableRange2
	"Answer the <ExcelRange> value of the 'TableRange2' property of the receiver.
		Range* TableRange2"

	^ExcelRange attachInterface: (self getPropertyId: 700)
!

tableStyle
	"Answer the <bstr> value of the 'TableStyle' property of the receiver.
		BSTR TableStyle"

	^(self getPropertyId: 1504)
!

tableStyle: arg1
	"Set the 'TableStyle' property of the receiver to the <bstr> value of the argument.
		void TableStyle"

	self setPropertyId: 1504 value: arg1
!

tableStyle2
	"Answer the <variant> value of the 'TableStyle2' property of the receiver.
		VARIANT TableStyle2"

	^(self getPropertyId: 2562)
!

tableStyle2: arg1
	"Set the 'TableStyle2' property of the receiver to the <variant> value of the argument.
		void TableStyle2"

	self setPropertyId: 2562 value: arg1
!

tag
	"Answer the <bstr> value of the 'Tag' property of the receiver.
		BSTR Tag"

	^(self getPropertyId: 1505)
!

tag: arg1
	"Set the 'Tag' property of the receiver to the <bstr> value of the argument.
		void Tag"

	self setPropertyId: 1505 value: arg1
!

totalsAnnotation
	"Answer the <varbool> value of the 'TotalsAnnotation' property of the receiver.
		VARIANT_BOOL TotalsAnnotation"

	^(self getPropertyId: 1843)
!

totalsAnnotation: arg1
	"Set the 'TotalsAnnotation' property of the receiver to the <varbool> value of the argument.
		void TotalsAnnotation"

	self setPropertyId: 1843 value: arg1
!

update
	"Invoke the Update() method of the COM object."

	(self invokeId: 680)
!

vacatedStyle
	"Answer the <bstr> value of the 'VacatedStyle' property of the receiver.
		BSTR VacatedStyle"

	^(self getPropertyId: 1506)
!

vacatedStyle: arg1
	"Set the 'VacatedStyle' property of the receiver to the <bstr> value of the argument.
		void VacatedStyle"

	self setPropertyId: 1506 value: arg1
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

version
	"Answer the <sdword> value of the 'Version' property of the receiver.
		XlPivotTableVersionList Version"

	^(self getPropertyId: 392)
!

viewCalculatedMembers
	"Answer the <varbool> value of the 'ViewCalculatedMembers' property of the receiver.
		VARIANT_BOOL ViewCalculatedMembers"

	^(self getPropertyId: 2124)
!

viewCalculatedMembers: arg1
	"Set the 'ViewCalculatedMembers' property of the receiver to the <varbool> value of the argument.
		void ViewCalculatedMembers"

	self setPropertyId: 2124 value: arg1
!

visibleFields
	"Answer the <IDispatch> value of the 'VisibleFields' property of the receiver.
		IDispatch* VisibleFields"

	^self visibleFields: VARIANT unspecified!

visibleFields: index
	"Answer the <IDispatch> value of the 'VisibleFields' property of the receiver.
		IDispatch* VisibleFields"

	^IDispatch attachInterface: (self getPropertyId: 710 item: index)
!

visualTotals
	"Answer the <varbool> value of the 'VisualTotals' property of the receiver.
		VARIANT_BOOL VisualTotals"

	^(self getPropertyId: 2129)
!

visualTotals: arg1
	"Set the 'VisualTotals' property of the receiver to the <varbool> value of the argument.
		void VisualTotals"

	self setPropertyId: 2129 value: arg1
! !
!ExcelPivotTable categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #_pivotSelect:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #_pivotSelect:mode:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #activeFilters!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #addDataField:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #addDataField:caption:function:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #addFields!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #addFields:columnFields:pageFields:addToTable:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #allowMultipleFilters!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #allowMultipleFilters:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #cacheIndex!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #cacheIndex:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #calculatedFields!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #calculatedMembers!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #changeConnection:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #changePivotCache:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #clearAllFilters!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #clearTable!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #columnFields!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #columnFields:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #columnGrand!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #columnGrand:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #columnRange!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #compactLayoutColumnHeader!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #compactLayoutColumnHeader:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #compactLayoutRowHeader!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #compactLayoutRowHeader:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #compactRowIndent!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #compactRowIndent:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #convertToFormulas:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #createCubeFile:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #createCubeFile:measures:levels:members:properties:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #cubeFields!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #dataBodyRange!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #dataFields!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #dataFields:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #dataLabelRange!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #dataPivotField!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayContextTooltips!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayContextTooltips:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayEmptyColumn!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayEmptyColumn:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayEmptyRow!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayEmptyRow:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayErrorString!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayErrorString:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayFieldCaptions!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayFieldCaptions:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayImmediateItems!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayImmediateItems:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayMemberPropertyTooltips!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayMemberPropertyTooltips:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayNullString!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #displayNullString:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #dummy15:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #dummy15:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #enableDataValueEditing!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableDataValueEditing:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableDrilldown!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableDrilldown:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableFieldDialog!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableFieldDialog:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableFieldList!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableFieldList:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableWizard!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #enableWizard:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #errorString!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #errorString:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #fieldListSortAscending!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #fieldListSortAscending:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #format:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #getData:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #getPivotData!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #getPivotData:field1:item1:field2:item2:field3:item3:field4:item4:field5:item5:field6:item6:field7:item7:field8:item8:field9:item9:field10:item10:field11:item11:field12:item12:field13:item13:field14:item14:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #grandTotalName!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #grandTotalName:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #hasAutoFormat!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #hasAutoFormat:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #hiddenFields!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #hiddenFields:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #inGridDropZones!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #inGridDropZones:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #innerDetail!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #innerDetail:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #layoutRowDefault!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #layoutRowDefault:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #listFormulas!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #location!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #location:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #manualUpdate!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #manualUpdate:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #mdx!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #mergeLabels!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #mergeLabels:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #name!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #nullString!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #nullString:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageFieldOrder!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageFieldOrder:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageFields!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageFields:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageFieldStyle!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageFieldStyle:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageFieldWrapCount!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageFieldWrapCount:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageRange!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pageRangeCells!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pivotCache!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #pivotColumnAxis!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pivotFields!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #pivotFields:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #pivotFormulas!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pivotRowAxis!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pivotSelect:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #pivotSelect:mode:useStandardName:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #pivotSelection!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pivotSelection:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pivotSelectionStandard!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pivotSelectionStandard:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #pivotTableWizard!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #pivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #preserveFormatting!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #preserveFormatting:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #printDrillIndicators!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #printDrillIndicators:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #printTitles!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #printTitles:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #refreshDate!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #refreshName!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #refreshTable!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #repeatItemsOnEachPrintedPage!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #repeatItemsOnEachPrintedPage:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #rowAxisLayout:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #rowFields!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #rowFields:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #rowGrand!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #rowGrand:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #rowRange!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #saveData!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #saveData:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #selectionMode!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #selectionMode:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showCellBackgroundFromOLAP!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showCellBackgroundFromOLAP:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showDrillIndicators!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showDrillIndicators:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showPageMultipleItemLabel!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showPageMultipleItemLabel:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showPages!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #showPages:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #showTableStyleColumnHeaders!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleColumnHeaders:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleColumnStripes!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleColumnStripes:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleLastColumn!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleLastColumn:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleRowHeaders!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleRowHeaders:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleRowStripes!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #showTableStyleRowStripes:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #smallGrid!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #smallGrid:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #sortUsingCustomLists!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #sortUsingCustomLists:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #sourceData!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #sourceData:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #subtotalHiddenPageItems!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #subtotalHiddenPageItems:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #subtotalLocation:!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #tableRange1!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #tableRange2!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #tableStyle!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #tableStyle:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #tableStyle2!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #tableStyle2:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #tag!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #tag:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #totalsAnnotation!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #totalsAnnotation:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #update!**auto generated**!methods!public! !
!ExcelPivotTable categoriesFor: #vacatedStyle!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #vacatedStyle:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #value!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #version!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #viewCalculatedMembers!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #viewCalculatedMembers:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #visibleFields!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #visibleFields:!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #visualTotals!**auto generated**!properties!public! !
!ExcelPivotTable categoriesFor: #visualTotals:!**auto generated**!properties!public! !

!ExcelPivotTable class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotTable initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotTable class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

