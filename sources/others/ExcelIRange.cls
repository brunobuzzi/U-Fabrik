"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRange
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRange guid: (IID fromString: '{00020846-0001-0000-C000-000000000046}')!
ExcelIRange comment: '<ExcelIRange> is a wrapper class for the COM interface ''Excel.IRange'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020846-0001-0000-C000-000000000046), 
	helpcontext(0x00020006), 
	hidden
]
interface IRange : IDispatch
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
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate(
		[out, retval]VARIANT* RHS);
	[id(0x00000427), propget, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[out, retval]VARIANT* RHS);
	[id(0x00000427), propput, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[in]VARIANT RHS);
	[id(0x000000ec), propget, helpcontext(0x000100ec)]
	HRESULT __stdcall Address(
		[in, optional]VARIANT RowAbsolute,
		[in, optional]VARIANT ColumnAbsolute,
		[in, defaultvalue(1)]XlReferenceStyle ReferenceStyle,
		[in, optional]VARIANT External,
		[in, optional]VARIANT RelativeTo,
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x000001b5), propget, helpcontext(0x000101b5)]
	HRESULT __stdcall AddressLocal(
		[in, optional]VARIANT RowAbsolute,
		[in, optional]VARIANT ColumnAbsolute,
		[in, defaultvalue(1)]XlReferenceStyle ReferenceStyle,
		[in, optional]VARIANT External,
		[in, optional]VARIANT RelativeTo,
		[out, retval]BSTR* RHS);
	[id(0x0000036c), helpcontext(0x0001036c)]
	HRESULT __stdcall AdvancedFilter(
		[in]XlFilterAction Action,
		[in, optional]VARIANT CriteriaRange,
		[in, optional]VARIANT CopyToRange,
		[in, optional]VARIANT Unique,
		[out, retval]VARIANT* RHS);
	[id(0x000001b9), helpcontext(0x000101b9)]
	HRESULT __stdcall ApplyNames(
		[in, optional]VARIANT Names,
		[in, optional]VARIANT IgnoreRelativeAbsolute,
		[in, optional]VARIANT UseRowColumnNames,
		[in, optional]VARIANT OmitColumn,
		[in, optional]VARIANT OmitRow,
		[in, defaultvalue(1)]XlApplyNamesOrder Order,
		[in, optional]VARIANT AppendLast,
		[out, retval]VARIANT* RHS);
	[id(0x000001c0), helpcontext(0x000101c0)]
	HRESULT __stdcall ApplyOutlineStyles(
		[out, retval]VARIANT* RHS);
	[id(0x00000238), propget, helpcontext(0x00010238)]
	HRESULT __stdcall Areas(
		[out, retval]Areas** RHS);
	[id(0x000004a1), helpcontext(0x000104a1)]
	HRESULT __stdcall AutoComplete(
		[in]BSTR String,
		[out, retval]BSTR* RHS);
	[id(0x000001c1), helpcontext(0x000101c1)]
	HRESULT __stdcall AutoFill(
		[in]Range* Destination,
		[in, defaultvalue(0)]XlAutoFillType Type,
		[out, retval]VARIANT* RHS);
	[id(0x00000319), helpcontext(0x00010319)]
	HRESULT __stdcall AutoFilter(
		[in, optional]VARIANT Field,
		[in, optional]VARIANT Criteria1,
		[in, defaultvalue(1)]XlAutoFilterOperator Operator,
		[in, optional]VARIANT Criteria2,
		[in, optional]VARIANT VisibleDropDown,
		[out, retval]VARIANT* RHS);
	[id(0x000000ed), helpcontext(0x000100ed)]
	HRESULT __stdcall AutoFit(
		[out, retval]VARIANT* RHS);
	[id(0x00000072), hidden, helpcontext(0x00010072)]
	HRESULT __stdcall AutoFormat(
		[in, defaultvalue(1)]XlRangeAutoFormat Format,
		[in, optional]VARIANT Number,
		[in, optional]VARIANT Font,
		[in, optional]VARIANT Alignment,
		[in, optional]VARIANT Border,
		[in, optional]VARIANT Pattern,
		[in, optional]VARIANT Width,
		[out, retval]VARIANT* RHS);
	[id(0x0000040c), helpcontext(0x0001040c)]
	HRESULT __stdcall AutoOutline(
		[out, retval]VARIANT* RHS);
	[id(0x0000042b), helpcontext(0x0001042b)]
	HRESULT __stdcall BorderAround(
		[in, optional]VARIANT LineStyle,
		[in, defaultvalue(2)]XlBorderWeight Weight,
		[in, defaultvalue(-4105)]XlColorIndex ColorIndex,
		[in, optional]VARIANT Color,
		[out, retval]VARIANT* RHS);
	[id(0x000001b3), propget, helpcontext(0x000101b3)]
	HRESULT __stdcall Borders(
		[out, retval]Borders** RHS);
	[id(0x00000117), helpcontext(0x00010117)]
	HRESULT __stdcall Calculate(
		[out, retval]VARIANT* RHS);
	[id(0x000000ee), propget, helpcontext(0x000100ee)]
	HRESULT __stdcall Cells(
		[out, retval]Range** RHS);
	[id(0x0000025b), propget, helpcontext(0x0001025b)]
	HRESULT __stdcall Characters(
		[in, optional]VARIANT Start,
		[in, optional]VARIANT Length,
		[out, retval]Characters** RHS);
	[id(0x000001f9), helpcontext(0x000101f9)]
	HRESULT __stdcall CheckSpelling(
		[in, optional]VARIANT CustomDictionary,
		[in, optional]VARIANT IgnoreUppercase,
		[in, optional]VARIANT AlwaysSuggest,
		[in, optional]VARIANT SpellLang,
		[out, retval]VARIANT* RHS);
	[id(0x0000006f), helpcontext(0x0001006f)]
	HRESULT __stdcall Clear(
		[out, retval]VARIANT* RHS);
	[id(0x00000071), helpcontext(0x00010071)]
	HRESULT __stdcall ClearContents(
		[out, retval]VARIANT* RHS);
	[id(0x00000070), helpcontext(0x00010070)]
	HRESULT __stdcall ClearFormats(
		[out, retval]VARIANT* RHS);
	[id(0x000000ef), helpcontext(0x000100ef)]
	HRESULT __stdcall ClearNotes(
		[out, retval]VARIANT* RHS);
	[id(0x0000040d), helpcontext(0x0001040d)]
	HRESULT __stdcall ClearOutline(
		[out, retval]VARIANT* RHS);
	[id(0x000000f0), propget, helpcontext(0x000100f0)]
	HRESULT __stdcall Column(
		[out, retval]long* RHS);
	[id(0x000001fe), helpcontext(0x000101fe)]
	HRESULT __stdcall ColumnDifferences(
		[in]VARIANT Comparison,
		[out, retval]Range** RHS);
	[id(0x000000f1), propget, helpcontext(0x000100f1)]
	HRESULT __stdcall Columns(
		[out, retval]Range** RHS);
	[id(0x000000f2), propget, helpcontext(0x000100f2)]
	HRESULT __stdcall ColumnWidth(
		[out, retval]VARIANT* RHS);
	[id(0x000000f2), propput, helpcontext(0x000100f2)]
	HRESULT __stdcall ColumnWidth(
		[in]VARIANT RHS);
	[id(0x000001e2), helpcontext(0x000101e2)]
	HRESULT __stdcall Consolidate(
		[in, optional]VARIANT Sources,
		[in, optional]VARIANT Function,
		[in, optional]VARIANT TopRow,
		[in, optional]VARIANT LeftColumn,
		[in, optional]VARIANT CreateLinks,
		[out, retval]VARIANT* RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[in, optional]VARIANT Destination,
		[out, retval]VARIANT* RHS);
	[id(0x00000480), helpcontext(0x00010480)]
	HRESULT __stdcall CopyFromRecordset(
		[in]IUnknown* Data,
		[in, optional]VARIANT MaxRows,
		[in, optional]VARIANT MaxColumns,
		[out, retval]long* RHS);
	[id(0x000000d5), helpcontext(0x000100d5)]
	HRESULT __stdcall CopyPicture(
		[in, defaultvalue(1)]XlPictureAppearance Appearance,
		[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
		[out, retval]VARIANT* RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000001c9), helpcontext(0x000101c9)]
	HRESULT __stdcall CreateNames(
		[in, optional]VARIANT Top,
		[in, optional]VARIANT Left,
		[in, optional]VARIANT Bottom,
		[in, optional]VARIANT Right,
		[out, retval]VARIANT* RHS);
	[id(0x000001ca), hidden, helpcontext(0x000101ca)]
	HRESULT __stdcall CreatePublisher(
		[in, optional]VARIANT Edition,
		[in, defaultvalue(1)]XlPictureAppearance Appearance,
		[in, optional]VARIANT ContainsPICT,
		[in, optional]VARIANT ContainsBIFF,
		[in, optional]VARIANT ContainsRTF,
		[in, optional]VARIANT ContainsVALU,
		[out, retval]VARIANT* RHS);
	[id(0x000001f5), propget, helpcontext(0x000101f5)]
	HRESULT __stdcall CurrentArray(
		[out, retval]Range** RHS);
	[id(0x000000f3), propget, helpcontext(0x000100f3)]
	HRESULT __stdcall CurrentRegion(
		[out, retval]Range** RHS);
	[id(0x00000235), helpcontext(0x00010235)]
	HRESULT __stdcall Cut(
		[in, optional]VARIANT Destination,
		[out, retval]VARIANT* RHS);
	[id(0x000001d0), helpcontext(0x000101d0)]
	HRESULT __stdcall DataSeries(
		[in, optional]VARIANT Rowcol,
		[in, defaultvalue(-4132)]XlDataSeriesType Type,
		[in, defaultvalue(1)]XlDataSeriesDate Date,
		[in, optional]VARIANT Step,
		[in, optional]VARIANT Stop,
		[in, optional]VARIANT Trend,
		[out, retval]VARIANT* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in, optional]VARIANT RowIndex,
		[in, optional]VARIANT ColumnIndex,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in, optional]VARIANT RowIndex,
		[in, optional]VARIANT ColumnIndex,
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[in, optional]VARIANT Shift,
		[out, retval]VARIANT* RHS);
	[id(0x0000021f), propget, helpcontext(0x0001021f)]
	HRESULT __stdcall Dependents(
		[out, retval]Range** RHS);
	[id(0x000000f5), helpcontext(0x000100f5)]
	HRESULT __stdcall DialogBox(
		[out, retval]VARIANT* RHS);
	[id(0x00000221), propget, helpcontext(0x00010221)]
	HRESULT __stdcall DirectDependents(
		[out, retval]Range** RHS);
	[id(0x00000222), propget, helpcontext(0x00010222)]
	HRESULT __stdcall DirectPrecedents(
		[out, retval]Range** RHS);
	[id(0x0000046b), helpcontext(0x0001046b)]
	HRESULT __stdcall EditionOptions(
		[in]XlEditionType Type,
		[in]XlEditionOptionsOption Option,
		[in, optional]VARIANT Name,
		[in, optional]VARIANT Reference,
		[in, defaultvalue(1)]XlPictureAppearance Appearance,
		[in, defaultvalue(1)]XlPictureAppearance ChartSize,
		[in, optional]VARIANT Format,
		[out, retval]VARIANT* RHS);
	[id(0x000001f4), propget, helpcontext(0x000101f4)]
	HRESULT __stdcall End(
		[in]XlDirection Direction,
		[out, retval]Range** RHS);
	[id(0x000000f6), propget, helpcontext(0x000100f6)]
	HRESULT __stdcall EntireColumn(
		[out, retval]Range** RHS);
	[id(0x000000f7), propget, helpcontext(0x000100f7)]
	HRESULT __stdcall EntireRow(
		[out, retval]Range** RHS);
	[id(0x000000f8), helpcontext(0x000100f8)]
	HRESULT __stdcall FillDown(
		[out, retval]VARIANT* RHS);
	[id(0x000000f9), helpcontext(0x000100f9)]
	HRESULT __stdcall FillLeft(
		[out, retval]VARIANT* RHS);
	[id(0x000000fa), helpcontext(0x000100fa)]
	HRESULT __stdcall FillRight(
		[out, retval]VARIANT* RHS);
	[id(0x000000fb), helpcontext(0x000100fb)]
	HRESULT __stdcall FillUp(
		[out, retval]VARIANT* RHS);
	[id(0x0000018e), helpcontext(0x0001018e)]
	HRESULT __stdcall Find(
		[in]VARIANT What,
		[in, optional]VARIANT After,
		[in, optional]VARIANT LookIn,
		[in, optional]VARIANT LookAt,
		[in, optional]VARIANT SearchOrder,
		[in, defaultvalue(1)]XlSearchDirection SearchDirection,
		[in, optional]VARIANT MatchCase,
		[in, optional]VARIANT MatchByte,
		[in, optional]VARIANT SearchFormat,
		[out, retval]Range** RHS);
	[id(0x0000018f), helpcontext(0x0001018f)]
	HRESULT __stdcall FindNext(
		[in, optional]VARIANT After,
		[out, retval]Range** RHS);
	[id(0x00000190), helpcontext(0x00010190)]
	HRESULT __stdcall FindPrevious(
		[in, optional]VARIANT After,
		[out, retval]Range** RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x00000105), propget, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000105), propput, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x0000024a), propget, helpcontext(0x0001024a)]
	HRESULT __stdcall FormulaArray(
		[out, retval]VARIANT* RHS);
	[id(0x0000024a), propput, helpcontext(0x0001024a)]
	HRESULT __stdcall FormulaArray(
		[in]VARIANT RHS);
	[id(0x00000564), hidden, propget, helpcontext(0x00010564)]
	HRESULT __stdcall FormulaLabel(
		[out, retval]XlFormulaLabel* RHS);
	[id(0x00000564), hidden, propput, helpcontext(0x00010564)]
	HRESULT __stdcall FormulaLabel(
		[in]XlFormulaLabel RHS);
	[id(0x00000106), propget, helpcontext(0x00010106)]
	HRESULT __stdcall FormulaHidden(
		[out, retval]VARIANT* RHS);
	[id(0x00000106), propput, helpcontext(0x00010106)]
	HRESULT __stdcall FormulaHidden(
		[in]VARIANT RHS);
	[id(0x00000107), propget, helpcontext(0x00010107)]
	HRESULT __stdcall FormulaLocal(
		[out, retval]VARIANT* RHS);
	[id(0x00000107), propput, helpcontext(0x00010107)]
	HRESULT __stdcall FormulaLocal(
		[in]VARIANT RHS);
	[id(0x00000108), propget, helpcontext(0x00010108)]
	HRESULT __stdcall FormulaR1C1(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000108), propput, helpcontext(0x00010108)]
	HRESULT __stdcall FormulaR1C1(
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x00000109), propget, helpcontext(0x00010109)]
	HRESULT __stdcall FormulaR1C1Local(
		[out, retval]VARIANT* RHS);
	[id(0x00000109), propput, helpcontext(0x00010109)]
	HRESULT __stdcall FormulaR1C1Local(
		[in]VARIANT RHS);
	[id(0x0000023b), helpcontext(0x0001023b)]
	HRESULT __stdcall FunctionWizard(
		[out, retval]VARIANT* RHS);
	[id(0x000001d8), hidden, helpcontext(0x000101d8)]
	HRESULT __stdcall GoalSeek(
		[in]VARIANT Goal,
		[in]Range* ChangingCell,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000002e), helpcontext(0x0001002e)]
	HRESULT __stdcall Group(
		[in, optional]VARIANT Start,
		[in, optional]VARIANT End,
		[in, optional]VARIANT By,
		[in, optional]VARIANT Periods,
		[out, retval]VARIANT* RHS);
	[id(0x0000010a), propget, helpcontext(0x0001010a)]
	HRESULT __stdcall HasArray(
		[out, retval]VARIANT* RHS);
	[id(0x0000010b), propget, helpcontext(0x0001010b)]
	HRESULT __stdcall HasFormula(
		[out, retval]VARIANT* RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]VARIANT* RHS);
	[id(0x0000010c), propget, helpcontext(0x0001010c)]
	HRESULT __stdcall Hidden(
		[out, retval]VARIANT* RHS);
	[id(0x0000010c), propput, helpcontext(0x0001010c)]
	HRESULT __stdcall Hidden(
		[in]VARIANT RHS);
	[id(0x00000088), propget, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000088), propput, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[in]VARIANT RHS);
	[id(0x000000c9), propget, helpcontext(0x000100c9)]
	HRESULT __stdcall IndentLevel(
		[out, retval]VARIANT* RHS);
	[id(0x000000c9), propput, helpcontext(0x000100c9)]
	HRESULT __stdcall IndentLevel(
		[in]VARIANT RHS);
	[id(0x00000565), helpcontext(0x00010565)]
	HRESULT __stdcall InsertIndent(
		[in]long InsertAmount);
	[id(0x000000fc), helpcontext(0x000100fc)]
	HRESULT __stdcall Insert(
		[in, optional]VARIANT Shift,
		[in, optional]VARIANT CopyOrigin,
		[out, retval]VARIANT* RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT RowIndex,
		[in, optional]VARIANT ColumnIndex,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000000aa), propput, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT RowIndex,
		[in, optional]VARIANT ColumnIndex,
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x000001ef), helpcontext(0x000101ef)]
	HRESULT __stdcall Justify(
		[out, retval]VARIANT* RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]VARIANT* RHS);
	[id(0x000004a3), propget, helpcontext(0x000104a3)]
	HRESULT __stdcall ListHeaderRows(
		[out, retval]long* RHS);
	[id(0x000000fd), helpcontext(0x000100fd)]
	HRESULT __stdcall ListNames(
		[out, retval]VARIANT* RHS);
	[id(0x000002b3), propget, helpcontext(0x000102b3)]
	HRESULT __stdcall LocationInTable(
		[out, retval]XlLocationInTable* RHS);
	[id(0x0000010d), propget, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[out, retval]VARIANT* RHS);
	[id(0x0000010d), propput, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[in]VARIANT RHS);
	[id(0x00000234), helpcontext(0x00010234)]
	HRESULT __stdcall Merge(
		[in, optional]VARIANT Across);
	[id(0x00000568), helpcontext(0x00010568)]
	HRESULT __stdcall UnMerge();
	[id(0x00000569), propget, helpcontext(0x00010569)]
	HRESULT __stdcall MergeArea(
		[out, retval]Range** RHS);
	[id(0x000000d0), propget, helpcontext(0x000100d0)]
	HRESULT __stdcall MergeCells(
		[out, retval]VARIANT* RHS);
	[id(0x000000d0), propput, helpcontext(0x000100d0)]
	HRESULT __stdcall MergeCells(
		[in]VARIANT RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]VARIANT* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]VARIANT RHS);
	[id(0x00000408), helpcontext(0x00010408)]
	HRESULT __stdcall NavigateArrow(
		[in, optional]VARIANT TowardPrecedent,
		[in, optional]VARIANT ArrowNumber,
		[in, optional]VARIANT LinkNumber,
		[out, retval]VARIANT* RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000001f6), propget, helpcontext(0x000101f6)]
	HRESULT __stdcall Next(
		[out, retval]Range** RHS);
	[id(0x00000467), helpcontext(0x00010467)]
	HRESULT __stdcall NoteText(
		[in, optional]VARIANT Text,
		[in, optional]VARIANT Start,
		[in, optional]VARIANT Length,
		[out, retval]BSTR* RHS);
	[id(0x000000c1), propget, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[out, retval]VARIANT* RHS);
	[id(0x000000c1), propput, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]VARIANT RHS);
	[id(0x00000449), propget, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[out, retval]VARIANT* RHS);
	[id(0x00000449), propput, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[in]VARIANT RHS);
	[id(0x000000fe), propget, helpcontext(0x000100fe)]
	HRESULT __stdcall Offset(
		[in, optional]VARIANT RowOffset,
		[in, optional]VARIANT ColumnOffset,
		[out, retval]Range** RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]VARIANT* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]VARIANT RHS);
	[id(0x0000010f), propget, helpcontext(0x0001010f)]
	HRESULT __stdcall OutlineLevel(
		[out, retval]VARIANT* RHS);
	[id(0x0000010f), propput, helpcontext(0x0001010f)]
	HRESULT __stdcall OutlineLevel(
		[in]VARIANT RHS);
	[id(0x000000ff), propget, helpcontext(0x000100ff)]
	HRESULT __stdcall PageBreak(
		[out, retval]long* RHS);
	[id(0x000000ff), propput, helpcontext(0x000100ff)]
	HRESULT __stdcall PageBreak(
		[in]long RHS);
	[id(0x000001dd), helpcontext(0x000101dd)]
	HRESULT __stdcall Parse(
		[in, optional]VARIANT ParseLine,
		[in, optional]VARIANT Destination,
		[out, retval]VARIANT* RHS);
	[id(0x00000403), hidden, helpcontext(0x00010403)]
	HRESULT __stdcall _PasteSpecial(
		[in, defaultvalue(-4104)]XlPasteType Paste,
		[in, defaultvalue(-4142)]XlPasteSpecialOperation Operation,
		[in, optional]VARIANT SkipBlanks,
		[in, optional]VARIANT Transpose,
		[out, retval]VARIANT* RHS);
	[id(0x000002db), propget, helpcontext(0x000102db)]
	HRESULT __stdcall PivotField(
		[out, retval]PivotField** RHS);
	[id(0x000002e4), propget, helpcontext(0x000102e4)]
	HRESULT __stdcall PivotItem(
		[out, retval]PivotItem** RHS);
	[id(0x000002cc), propget, helpcontext(0x000102cc)]
	HRESULT __stdcall PivotTable(
		[out, retval]PivotTable** RHS);
	[id(0x00000220), propget, helpcontext(0x00010220)]
	HRESULT __stdcall Precedents(
		[out, retval]Range** RHS);
	[id(0x000001f8), propget, helpcontext(0x000101f8)]
	HRESULT __stdcall PrefixCharacter(
		[out, retval]VARIANT* RHS);
	[id(0x000001f7), propget, helpcontext(0x000101f7)]
	HRESULT __stdcall Previous(
		[out, retval]Range** RHS);
	[id(0x00000389), hidden, helpcontext(0x00010389)]
	HRESULT __stdcall __PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate,
		[out, retval]VARIANT* RHS);
	[id(0x00000119), helpcontext(0x00010119)]
	HRESULT __stdcall PrintPreview(
		[in, optional]VARIANT EnableChanges,
		[out, retval]VARIANT* RHS);
	[id(0x0000056a), propget, helpcontext(0x0001056a)]
	HRESULT __stdcall QueryTable(
		[out, retval]QueryTable** RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[in]VARIANT Cell1,
		[in, optional]VARIANT Cell2,
		[out, retval]Range** RHS);
	[id(0x00000373), helpcontext(0x00010373)]
	HRESULT __stdcall RemoveSubtotal(
		[out, retval]VARIANT* RHS);
	[id(0x000000e2), helpcontext(0x000100e2)]
	HRESULT __stdcall Replace(
		[in]VARIANT What,
		[in]VARIANT Replacement,
		[in, optional]VARIANT LookAt,
		[in, optional]VARIANT SearchOrder,
		[in, optional]VARIANT MatchCase,
		[in, optional]VARIANT MatchByte,
		[in, optional]VARIANT SearchFormat,
		[in, optional]VARIANT ReplaceFormat,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000100), propget, helpcontext(0x00010100)]
	HRESULT __stdcall Resize(
		[in, optional]VARIANT RowSize,
		[in, optional]VARIANT ColumnSize,
		[out, retval]Range** RHS);
	[id(0x00000101), propget, helpcontext(0x00010101)]
	HRESULT __stdcall Row(
		[out, retval]long* RHS);
	[id(0x000001ff), helpcontext(0x000101ff)]
	HRESULT __stdcall RowDifferences(
		[in]VARIANT Comparison,
		[out, retval]Range** RHS);
	[id(0x00000110), propget, helpcontext(0x00010110)]
	HRESULT __stdcall RowHeight(
		[out, retval]VARIANT* RHS);
	[id(0x00000110), propput, helpcontext(0x00010110)]
	HRESULT __stdcall RowHeight(
		[in]VARIANT RHS);
	[id(0x00000102), propget, helpcontext(0x00010102)]
	HRESULT __stdcall Rows(
		[out, retval]Range** RHS);
	[id(0x00000103), helpcontext(0x00010103)]
	HRESULT __stdcall Run(
		[in, optional]VARIANT Arg1,
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
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x000001f0), helpcontext(0x000101f0)]
	HRESULT __stdcall Show(
		[out, retval]VARIANT* RHS);
	[id(0x0000036d), helpcontext(0x0001036d)]
	HRESULT __stdcall ShowDependents(
		[in, optional]VARIANT Remove,
		[out, retval]VARIANT* RHS);
	[id(0x00000249), propget, helpcontext(0x00010249)]
	HRESULT __stdcall ShowDetail(
		[out, retval]VARIANT* RHS);
	[id(0x00000249), propput, helpcontext(0x00010249)]
	HRESULT __stdcall ShowDetail(
		[in]VARIANT RHS);
	[id(0x0000036e), helpcontext(0x0001036e)]
	HRESULT __stdcall ShowErrors(
		[out, retval]VARIANT* RHS);
	[id(0x0000036f), helpcontext(0x0001036f)]
	HRESULT __stdcall ShowPrecedents(
		[in, optional]VARIANT Remove,
		[out, retval]VARIANT* RHS);
	[id(0x000000d1), propget, helpcontext(0x000100d1)]
	HRESULT __stdcall ShrinkToFit(
		[out, retval]VARIANT* RHS);
	[id(0x000000d1), propput, helpcontext(0x000100d1)]
	HRESULT __stdcall ShrinkToFit(
		[in]VARIANT RHS);
	[id(0x00000370), helpcontext(0x00010370)]
	HRESULT __stdcall Sort(
		[in, optional]VARIANT Key1,
		[in, defaultvalue(1)]XlSortOrder Order1,
		[in, optional]VARIANT Key2,
		[in, optional]VARIANT Type,
		[in, defaultvalue(1)]XlSortOrder Order2,
		[in, optional]VARIANT Key3,
		[in, defaultvalue(1)]XlSortOrder Order3,
		[in, defaultvalue(2)]XlYesNoGuess Header,
		[in, optional]VARIANT OrderCustom,
		[in, optional]VARIANT MatchCase,
		[in, defaultvalue(2)]XlSortOrientation Orientation,
		[in, defaultvalue(1)]XlSortMethod SortMethod,
		[in, defaultvalue(0)]XlSortDataOption DataOption1,
		[in, defaultvalue(0)]XlSortDataOption DataOption2,
		[in, defaultvalue(0)]XlSortDataOption DataOption3,
		[out, retval]VARIANT* RHS);
	[id(0x00000371), helpcontext(0x00010371)]
	HRESULT __stdcall SortSpecial(
		[in, defaultvalue(1)]XlSortMethod SortMethod,
		[in, optional]VARIANT Key1,
		[in, defaultvalue(1)]XlSortOrder Order1,
		[in, optional]VARIANT Type,
		[in, optional]VARIANT Key2,
		[in, defaultvalue(1)]XlSortOrder Order2,
		[in, optional]VARIANT Key3,
		[in, defaultvalue(1)]XlSortOrder Order3,
		[in, defaultvalue(2)]XlYesNoGuess Header,
		[in, optional]VARIANT OrderCustom,
		[in, optional]VARIANT MatchCase,
		[in, defaultvalue(2)]XlSortOrientation Orientation,
		[in, defaultvalue(0)]XlSortDataOption DataOption1,
		[in, defaultvalue(0)]XlSortDataOption DataOption2,
		[in, defaultvalue(0)]XlSortDataOption DataOption3,
		[out, retval]VARIANT* RHS);
	[id(0x00000394), propget, helpcontext(0x00010394)]
	HRESULT __stdcall SoundNote(
		[out, retval]SoundNote** RHS);
	[id(0x0000019a), helpcontext(0x0001019a)]
	HRESULT __stdcall SpecialCells(
		[in]XlCellType Type,
		[in, optional]VARIANT Value,
		[out, retval]Range** RHS);
	[id(0x00000104), propget, helpcontext(0x00010104)]
	HRESULT __stdcall Style(
		[out, retval]VARIANT* RHS);
	[id(0x00000104), propput, helpcontext(0x00010104)]
	HRESULT __stdcall Style(
		[in]VARIANT RHS);
	[id(0x000001e1), helpcontext(0x000101e1)]
	HRESULT __stdcall SubscribeTo(
		[in]BSTR Edition,
		[in, defaultvalue(-4158)]XlSubscribeToFormat Format,
		[out, retval]VARIANT* RHS);
	[id(0x00000372), helpcontext(0x00010372)]
	HRESULT __stdcall Subtotal(
		[in]long GroupBy,
		[in]XlConsolidationFunction Function,
		[in]VARIANT TotalList,
		[in, optional]VARIANT Replace,
		[in, optional]VARIANT PageBreaks,
		[in, defaultvalue(1)]XlSummaryRow SummaryBelowData,
		[out, retval]VARIANT* RHS);
	[id(0x00000111), propget, helpcontext(0x00010111)]
	HRESULT __stdcall Summary(
		[out, retval]VARIANT* RHS);
	[id(0x000001f1), helpcontext(0x000101f1)]
	HRESULT __stdcall Table(
		[in, optional]VARIANT RowInput,
		[in, optional]VARIANT ColumnInput,
		[out, retval]VARIANT* RHS);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]VARIANT* RHS);
	[id(0x00000410), helpcontext(0x00010410)]
	HRESULT __stdcall TextToColumns(
		[in, optional]VARIANT Destination,
		[in, defaultvalue(1)]XlTextParsingType DataType,
		[in, defaultvalue(1)]XlTextQualifier TextQualifier,
		[in, optional]VARIANT ConsecutiveDelimiter,
		[in, optional]VARIANT Tab,
		[in, optional]VARIANT Semicolon,
		[in, optional]VARIANT Comma,
		[in, optional]VARIANT Space,
		[in, optional]VARIANT Other,
		[in, optional]VARIANT OtherChar,
		[in, optional]VARIANT FieldInfo,
		[in, optional]VARIANT DecimalSeparator,
		[in, optional]VARIANT ThousandsSeparator,
		[in, optional]VARIANT TrailingMinusNumbers,
		[out, retval]VARIANT* RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]VARIANT* RHS);
	[id(0x000000f4), helpcontext(0x000100f4)]
	HRESULT __stdcall Ungroup(
		[out, retval]VARIANT* RHS);
	[id(0x00000112), propget, helpcontext(0x00010112)]
	HRESULT __stdcall UseStandardHeight(
		[out, retval]VARIANT* RHS);
	[id(0x00000112), propput, helpcontext(0x00010112)]
	HRESULT __stdcall UseStandardHeight(
		[in]VARIANT RHS);
	[id(0x00000113), propget, helpcontext(0x00010113)]
	HRESULT __stdcall UseStandardWidth(
		[out, retval]VARIANT* RHS);
	[id(0x00000113), propput, helpcontext(0x00010113)]
	HRESULT __stdcall UseStandardWidth(
		[in]VARIANT RHS);
	[id(0x0000056b), propget, helpcontext(0x0001056b)]
	HRESULT __stdcall Validation(
		[out, retval]Validation** RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in, optional]VARIANT RangeValueDataType,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in, optional]VARIANT RangeValueDataType,
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x0000056c), propget, helpcontext(0x0001056c)]
	HRESULT __stdcall Value2(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000056c), propput, helpcontext(0x0001056c)]
	HRESULT __stdcall Value2(
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x00000089), propget, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000089), propput, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[in]VARIANT RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]VARIANT* RHS);
	[id(0x0000015c), propget, helpcontext(0x0001015c)]
	HRESULT __stdcall Worksheet(
		[out, retval]Worksheet** RHS);
	[id(0x00000114), propget, helpcontext(0x00010114)]
	HRESULT __stdcall WrapText(
		[out, retval]VARIANT* RHS);
	[id(0x00000114), propput, helpcontext(0x00010114)]
	HRESULT __stdcall WrapText(
		[in]VARIANT RHS);
	[id(0x0000056d), helpcontext(0x0001056d)]
	HRESULT __stdcall AddComment(
		[in, optional]VARIANT Text,
		[out, retval]Comment** RHS);
	[id(0x0000038e), propget, helpcontext(0x0001038e)]
	HRESULT __stdcall Comment(
		[out, retval]Comment** RHS);
	[id(0x0000056e), helpcontext(0x0001056e)]
	HRESULT __stdcall ClearComments();
	[id(0x0000056f), propget, helpcontext(0x0001056f)]
	HRESULT __stdcall Phonetic(
		[out, retval]Phonetic** RHS);
	[id(0x00000570), propget, helpcontext(0x00010570)]
	HRESULT __stdcall FormatConditions(
		[out, retval]FormatConditions** RHS);
	[id(0x000003cf), propget, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[out, retval]long* RHS);
	[id(0x000003cf), propput, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[in]long RHS);
	[id(0x00000571), propget, helpcontext(0x00010571)]
	HRESULT __stdcall Hyperlinks(
		[out, retval]Hyperlinks** RHS);
	[id(0x00000713), propget, helpcontext(0x00010713)]
	HRESULT __stdcall Phonetics(
		[out, retval]Phonetics** RHS);
	[id(0x00000714), helpcontext(0x00010714)]
	HRESULT __stdcall SetPhonetic();
	[id(0x00000715), propget, helpcontext(0x00010715)]
	HRESULT __stdcall ID(
		[out, retval]BSTR* RHS);
	[id(0x00000715), propput, helpcontext(0x00010715)]
	HRESULT __stdcall ID(
		[in]BSTR RHS);
	[id(0x000006ec), hidden, helpcontext(0x000106ec)]
	HRESULT __stdcall _PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate,
		[in, optional]VARIANT PrToFileName,
		[out, retval]VARIANT* RHS);
	[id(0x000007dd), propget, helpcontext(0x000107dd)]
	HRESULT __stdcall PivotCell(
		[out, retval]PivotCell** RHS);
	[id(0x000007de), helpcontext(0x000107de)]
	HRESULT __stdcall Dirty();
	[id(0x000007df), propget, helpcontext(0x000107df)]
	HRESULT __stdcall Errors(
		[out, retval]Errors** RHS);
	[id(0x000007e0), propget, helpcontext(0x000107e0)]
	HRESULT __stdcall SmartTags(
		[out, retval]SmartTags** RHS);
	[id(0x000007e1), helpcontext(0x000107e1)]
	HRESULT __stdcall Speak(
		[in, optional]VARIANT SpeakDirection,
		[in, optional]VARIANT SpeakFormulas);
	[id(0x00000788), helpcontext(0x00010788)]
	HRESULT __stdcall PasteSpecial(
		[in, defaultvalue(-4104)]XlPasteType Paste,
		[in, defaultvalue(-4142)]XlPasteSpecialOperation Operation,
		[in, optional]VARIANT SkipBlanks,
		[in, optional]VARIANT Transpose,
		[out, retval]VARIANT* RHS);
	[id(0x000007e4), propget, helpcontext(0x000107e4)]
	HRESULT __stdcall AllowEdit(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008d1), propget, helpcontext(0x000108d1)]
	HRESULT __stdcall ListObject(
		[out, retval]ListObject** RHS);
	[id(0x000008d2), propget, helpcontext(0x000108d2)]
	HRESULT __stdcall XPath(
		[out, retval]XPath** RHS);
	[id(0x000009bb), propget, helpcontext(0x000109bb)]
	HRESULT __stdcall ServerActions(
		[out, retval]Actions** RHS);
	[id(0x000009bc), helpcontext(0x000109bc)]
	HRESULT __stdcall RemoveDuplicates(
		[in, optional]VARIANT Columns,
		[in, defaultvalue(2)]XlYesNoGuess Header);
	[id(0x00000939), helpcontext(0x00010939)]
	HRESULT __stdcall PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate,
		[in, optional]VARIANT PrToFileName,
		[out, retval]VARIANT* RHS);
	[id(0x0000084b), propget, helpcontext(0x0001084b)]
	HRESULT __stdcall MDX(
		[out, retval]BSTR* RHS);
	[id(0x000009bd), helpcontext(0x000109bd)]
	HRESULT __stdcall ExportAsFixedFormat(
		[in]XlFixedFormatType Type,
		[in, optional]VARIANT Filename,
		[in, optional]VARIANT Quality,
		[in, optional]VARIANT IncludeDocProperties,
		[in, optional]VARIANT IgnorePrintAreas,
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT OpenAfterPublish,
		[in, optional]VARIANT FixedFormatExtClassPtr);
	[id(0x000009c3), propget, helpcontext(0x000109c3)]
	HRESULT __stdcall CountLarge(
		[out, retval]VARIANT* RHS);
	[id(0x0000093c), helpcontext(0x0001093c)]
	HRESULT __stdcall CalculateRowMajorOrder(
		[out, retval]VARIANT* RHS);
};
'!
!ExcelIRange categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRange methodsFor!

__printOut
	"Answer the <VARIANT> result of invoking the __PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 __printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified!

__printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Answer the <VARIANT> result of invoking the __PrintOut() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		__PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		rhs: answer.
	^answer asObject
!

__PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate rhs: rhs
	"Private - Invoke the __PrintOut() method of the COM object.

		HRESULT __stdcall __PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 140 variant variant variant variant variant variant variant variant*>
	^self invalidCall!

_default: lcid
	"Answer the <variant> value of the '_Default' property of the receiver."

	^self
		 _default: VARIANT unspecified
		 columnIndex: VARIANT unspecified
		 lcid: lcid!

_default: rowIndex columnIndex: columnIndex lcid: lcid
	"Answer the <variant> value of the '_Default' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get__Default: rowIndex asVariant
		columnIndex: columnIndex asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

_default: rowIndex columnIndex: columnIndex lcid: lcid rhs: rhs
	"Set the '_Default' property of the receiver to the <variant> value of the argument."

	self
		put__Default: rowIndex asVariant
		columnIndex: columnIndex asVariant
		lcid: lcid
		rhs: rhs asVariant
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

_pasteSpecial
	"Answer the <VARIANT> result of invoking the _PasteSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _pasteSpecial: -4104
		 operation: -4142
		 skipBlanks: VARIANT unspecified
		 transpose: VARIANT unspecified!

_pasteSpecial: paste operation: operation skipBlanks: skipBlanks transpose: transpose
	"Answer the <VARIANT> result of invoking the _PasteSpecial() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		_PasteSpecial: paste
		operation: operation
		skipBlanks: skipBlanks asVariant
		transpose: transpose asVariant
		rhs: answer.
	^answer asObject
!

_PasteSpecial: paste operation: operation skipBlanks: skipBlanks transpose: transpose rhs: rhs
	"Private - Invoke the _PasteSpecial() method of the COM object.

		HRESULT __stdcall _PasteSpecial(
			[in, defaultvalue(-4104)]XlPasteType Paste,
			[in, defaultvalue(-4142)]XlPasteSpecialOperation Operation,
			[in, optional]VARIANT SkipBlanks,
			[in, optional]VARIANT Transpose,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 133 sdword sdword variant variant variant*>
	^self invalidCall!

_printOut
	"Answer the <VARIANT> result of invoking the _PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified!

_printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName
	"Answer the <VARIANT> result of invoking the _PrintOut() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		_PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		prToFileName: prToFileName asVariant
		rhs: answer.
	^answer asObject
!

_PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName rhs: rhs
	"Private - Invoke the _PrintOut() method of the COM object.

		HRESULT __stdcall _PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 203 variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

activate
	"Answer the <VARIANT> result of invoking the Activate() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Activate: answer.
	^answer asObject
!

Activate: rhs
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant*>
	^self invalidCall!

addComment
	"Answer the <ExcelComment> result of invoking the AddComment() method of the COM object.
	Default values are passed for all optional parameters."

	^self addComment: VARIANT unspecified!

addComment: text
	"Answer the <ExcelComment> result of invoking the AddComment() method of the COM object."

	| answer |
	answer := ExcelComment newPointer.
	self
		AddComment: text asVariant
		rhs: answer.
	^answer asObject
!

AddComment: text rhs: rhs
	"Private - Invoke the AddComment() method of the COM object.

		HRESULT __stdcall AddComment(
			[in, optional]VARIANT Text,
			[out, retval]Comment** RHS);"

	<virtual stdcall: hresult 191 variant ExcelComment**>
	^self invalidCall!

addIndent
	"Answer the <variant> value of the 'AddIndent' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_AddIndent: answer.
	^answer asObject
!

addIndent: rhs
	"Set the 'AddIndent' property of the receiver to the <variant> value of the argument."

	self put_AddIndent: rhs asVariant
!

address: lcid
	"Answer the <bstr> value of the 'Address' property of the receiver."

	^self
		 address: VARIANT unspecified
		 columnAbsolute: VARIANT unspecified
		 referenceStyle: 1
		 external: VARIANT unspecified
		 relativeTo: VARIANT unspecified
		 lcid: lcid!

address: rowAbsolute columnAbsolute: columnAbsolute referenceStyle: referenceStyle external: external relativeTo: relativeTo lcid: lcid
	"Answer the <bstr> value of the 'Address' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Address: rowAbsolute asVariant
		columnAbsolute: columnAbsolute asVariant
		referenceStyle: referenceStyle
		external: external asVariant
		relativeTo: relativeTo asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

addressLocal
	"Answer the <bstr> value of the 'AddressLocal' property of the receiver."

	^self
		 addressLocal: VARIANT unspecified
		 columnAbsolute: VARIANT unspecified
		 referenceStyle: 1
		 external: VARIANT unspecified
		 relativeTo: VARIANT unspecified!

addressLocal: rowAbsolute columnAbsolute: columnAbsolute referenceStyle: referenceStyle external: external relativeTo: relativeTo
	"Answer the <bstr> value of the 'AddressLocal' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_AddressLocal: rowAbsolute asVariant
		columnAbsolute: columnAbsolute asVariant
		referenceStyle: referenceStyle
		external: external asVariant
		relativeTo: relativeTo asVariant
		rhs: answer.
	^answer asObject
!

advancedFilter: action
	"Answer the <VARIANT> result of invoking the AdvancedFilter() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 advancedFilter: action
		 criteriaRange: VARIANT unspecified
		 copyToRange: VARIANT unspecified
		 unique: VARIANT unspecified!

advancedFilter: action criteriaRange: criteriaRange copyToRange: copyToRange unique: unique
	"Answer the <VARIANT> result of invoking the AdvancedFilter() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		AdvancedFilter: action
		criteriaRange: criteriaRange asVariant
		copyToRange: copyToRange asVariant
		unique: unique asVariant
		rhs: answer.
	^answer asObject
!

AdvancedFilter: action criteriaRange: criteriaRange copyToRange: copyToRange unique: unique rhs: rhs
	"Private - Invoke the AdvancedFilter() method of the COM object.

		HRESULT __stdcall AdvancedFilter(
			[in]XlFilterAction Action,
			[in, optional]VARIANT CriteriaRange,
			[in, optional]VARIANT CopyToRange,
			[in, optional]VARIANT Unique,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 sdword variant variant variant variant*>
	^self invalidCall!

allowEdit
	"Answer the <varbool> value of the 'AllowEdit' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowEdit: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

applyNames
	"Answer the <VARIANT> result of invoking the ApplyNames() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 applyNames: VARIANT unspecified
		 ignoreRelativeAbsolute: VARIANT unspecified
		 useRowColumnNames: VARIANT unspecified
		 omitColumn: VARIANT unspecified
		 omitRow: VARIANT unspecified
		 order: 1
		 appendLast: VARIANT unspecified!

applyNames: names ignoreRelativeAbsolute: ignoreRelativeAbsolute useRowColumnNames: useRowColumnNames omitColumn: omitColumn omitRow: omitRow order: order appendLast: appendLast
	"Answer the <VARIANT> result of invoking the ApplyNames() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ApplyNames: names asVariant
		ignoreRelativeAbsolute: ignoreRelativeAbsolute asVariant
		useRowColumnNames: useRowColumnNames asVariant
		omitColumn: omitColumn asVariant
		omitRow: omitRow asVariant
		order: order
		appendLast: appendLast asVariant
		rhs: answer.
	^answer asObject
!

ApplyNames: names ignoreRelativeAbsolute: ignoreRelativeAbsolute useRowColumnNames: useRowColumnNames omitColumn: omitColumn omitRow: omitRow order: order appendLast: appendLast rhs: rhs
	"Private - Invoke the ApplyNames() method of the COM object.

		HRESULT __stdcall ApplyNames(
			[in, optional]VARIANT Names,
			[in, optional]VARIANT IgnoreRelativeAbsolute,
			[in, optional]VARIANT UseRowColumnNames,
			[in, optional]VARIANT OmitColumn,
			[in, optional]VARIANT OmitRow,
			[in, defaultvalue(1)]XlApplyNamesOrder Order,
			[in, optional]VARIANT AppendLast,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 variant variant variant variant variant sdword variant variant*>
	^self invalidCall!

applyOutlineStyles
	"Answer the <VARIANT> result of invoking the ApplyOutlineStyles() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ApplyOutlineStyles: answer.
	^answer asObject
!

ApplyOutlineStyles: rhs
	"Private - Invoke the ApplyOutlineStyles() method of the COM object.

		HRESULT __stdcall ApplyOutlineStyles(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 18 variant*>
	^self invalidCall!

areas
	"Answer the <ExcelAreas> value of the 'Areas' property of the receiver."

	| answer |
	answer := ExcelAreas newPointer.
	self get_Areas: answer.
	^answer asObject
!

autoComplete: string
	"Answer the <BSTR> result of invoking the AutoComplete() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		AutoComplete: string
		rhs: answer.
	^answer asObject
!

AutoComplete: string rhs: rhs
	"Private - Invoke the AutoComplete() method of the COM object.

		HRESULT __stdcall AutoComplete(
			[in]BSTR String,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr bstr*>
	^self invalidCall!

autoFill: destination
	"Answer the <VARIANT> result of invoking the AutoFill() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 autoFill: destination
		 type: 0!

autoFill: destination type: type
	"Answer the <VARIANT> result of invoking the AutoFill() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		AutoFill: destination
		type: type
		rhs: answer.
	^answer asObject
!

AutoFill: destination type: type rhs: rhs
	"Private - Invoke the AutoFill() method of the COM object.

		HRESULT __stdcall AutoFill(
			[in]Range* Destination,
			[in, defaultvalue(0)]XlAutoFillType Type,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 21 ExcelRange* sdword variant*>
	^self invalidCall!

autoFilter
	"Answer the <VARIANT> result of invoking the AutoFilter() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 autoFilter: VARIANT unspecified
		 criteria1: VARIANT unspecified
		 operator: 1
		 criteria2: VARIANT unspecified
		 visibleDropDown: VARIANT unspecified!

autoFilter: field criteria1: criteria1 operator: operator criteria2: criteria2 visibleDropDown: visibleDropDown
	"Answer the <VARIANT> result of invoking the AutoFilter() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		AutoFilter: field asVariant
		criteria1: criteria1 asVariant
		operator: operator
		criteria2: criteria2 asVariant
		visibleDropDown: visibleDropDown asVariant
		rhs: answer.
	^answer asObject
!

AutoFilter: field criteria1: criteria1 operator: operator criteria2: criteria2 visibleDropDown: visibleDropDown rhs: rhs
	"Private - Invoke the AutoFilter() method of the COM object.

		HRESULT __stdcall AutoFilter(
			[in, optional]VARIANT Field,
			[in, optional]VARIANT Criteria1,
			[in, defaultvalue(1)]XlAutoFilterOperator Operator,
			[in, optional]VARIANT Criteria2,
			[in, optional]VARIANT VisibleDropDown,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 22 variant variant sdword variant variant variant*>
	^self invalidCall!

autoFit
	"Answer the <VARIANT> result of invoking the AutoFit() method of the COM object."

	| answer |
	answer := VARIANT new.
	self AutoFit: answer.
	^answer asObject
!

AutoFit: rhs
	"Private - Invoke the AutoFit() method of the COM object.

		HRESULT __stdcall AutoFit(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 23 variant*>
	^self invalidCall!

autoFormat
	"Answer the <VARIANT> result of invoking the AutoFormat() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 autoFormat: 1
		 number: VARIANT unspecified
		 font: VARIANT unspecified
		 alignment: VARIANT unspecified
		 border: VARIANT unspecified
		 pattern: VARIANT unspecified
		 width: VARIANT unspecified!

autoFormat: format number: number font: font alignment: alignment border: border pattern: pattern width: width
	"Answer the <VARIANT> result of invoking the AutoFormat() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		AutoFormat: format
		number: number asVariant
		font: font asVariant
		alignment: alignment asVariant
		border: border asVariant
		pattern: pattern asVariant
		width: width asVariant
		rhs: answer.
	^answer asObject
!

AutoFormat: format number: number font: font alignment: alignment border: border pattern: pattern width: width rhs: rhs
	"Private - Invoke the AutoFormat() method of the COM object.

		HRESULT __stdcall AutoFormat(
			[in, defaultvalue(1)]XlRangeAutoFormat Format,
			[in, optional]VARIANT Number,
			[in, optional]VARIANT Font,
			[in, optional]VARIANT Alignment,
			[in, optional]VARIANT Border,
			[in, optional]VARIANT Pattern,
			[in, optional]VARIANT Width,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 24 sdword variant variant variant variant variant variant variant*>
	^self invalidCall!

autoOutline
	"Answer the <VARIANT> result of invoking the AutoOutline() method of the COM object."

	| answer |
	answer := VARIANT new.
	self AutoOutline: answer.
	^answer asObject
!

AutoOutline: rhs
	"Private - Invoke the AutoOutline() method of the COM object.

		HRESULT __stdcall AutoOutline(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 25 variant*>
	^self invalidCall!

borderAround
	"Answer the <VARIANT> result of invoking the BorderAround() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 borderAround: VARIANT unspecified
		 weight: 2
		 colorIndex: -4105
		 color: VARIANT unspecified!

borderAround: lineStyle weight: weight colorIndex: colorIndex color: color
	"Answer the <VARIANT> result of invoking the BorderAround() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		BorderAround: lineStyle asVariant
		weight: weight
		colorIndex: colorIndex
		color: color asVariant
		rhs: answer.
	^answer asObject
!

BorderAround: lineStyle weight: weight colorIndex: colorIndex color: color rhs: rhs
	"Private - Invoke the BorderAround() method of the COM object.

		HRESULT __stdcall BorderAround(
			[in, optional]VARIANT LineStyle,
			[in, defaultvalue(2)]XlBorderWeight Weight,
			[in, defaultvalue(-4105)]XlColorIndex ColorIndex,
			[in, optional]VARIANT Color,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 26 variant sdword sdword variant variant*>
	^self invalidCall!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver."

	| answer |
	answer := ExcelBorders newPointer.
	self get_Borders: answer.
	^answer asObject
!

calculate
	"Answer the <VARIANT> result of invoking the Calculate() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Calculate: answer.
	^answer asObject
!

Calculate: rhs
	"Private - Invoke the Calculate() method of the COM object.

		HRESULT __stdcall Calculate(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 28 variant*>
	^self invalidCall!

calculateRowMajorOrder
	"Answer the <VARIANT> result of invoking the CalculateRowMajorOrder() method of the COM object."

	| answer |
	answer := VARIANT new.
	self CalculateRowMajorOrder: answer.
	^answer asObject
!

CalculateRowMajorOrder: rhs
	"Private - Invoke the CalculateRowMajorOrder() method of the COM object.

		HRESULT __stdcall CalculateRowMajorOrder(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 219 variant*>
	^self invalidCall!

cells
	"Answer the <ExcelRange> value of the 'Cells' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Cells: answer.
	^answer asObject
!

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver."

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver."

	| answer |
	answer := ExcelCharacters newPointer.
	self
		get_Characters: start asVariant
		length: length asVariant
		rhs: answer.
	^answer asObject
!

checkSpelling
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified!

checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		CheckSpelling: customDictionary asVariant
		ignoreUppercase: ignoreUppercase asVariant
		alwaysSuggest: alwaysSuggest asVariant
		spellLang: spellLang asVariant
		rhs: answer.
	^answer asObject
!

CheckSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang rhs: rhs
	"Private - Invoke the CheckSpelling() method of the COM object.

		HRESULT __stdcall CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 31 variant variant variant variant variant*>
	^self invalidCall!

clear
	"Answer the <VARIANT> result of invoking the Clear() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Clear: answer.
	^answer asObject
!

Clear: rhs
	"Private - Invoke the Clear() method of the COM object.

		HRESULT __stdcall Clear(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 32 variant*>
	^self invalidCall!

clearComments
	"Invoke the ClearComments() method of the COM object."

	^self ClearComments
!

ClearComments
	"Private - Invoke the ClearComments() method of the COM object.

		HRESULT __stdcall ClearComments();"

	<virtual stdcall: hresult 193>
	^self invalidCall!

clearContents
	"Answer the <VARIANT> result of invoking the ClearContents() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ClearContents: answer.
	^answer asObject
!

ClearContents: rhs
	"Private - Invoke the ClearContents() method of the COM object.

		HRESULT __stdcall ClearContents(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 33 variant*>
	^self invalidCall!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ClearFormats: answer.
	^answer asObject
!

ClearFormats: rhs
	"Private - Invoke the ClearFormats() method of the COM object.

		HRESULT __stdcall ClearFormats(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 34 variant*>
	^self invalidCall!

clearNotes
	"Answer the <VARIANT> result of invoking the ClearNotes() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ClearNotes: answer.
	^answer asObject
!

ClearNotes: rhs
	"Private - Invoke the ClearNotes() method of the COM object.

		HRESULT __stdcall ClearNotes(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 35 variant*>
	^self invalidCall!

clearOutline
	"Answer the <VARIANT> result of invoking the ClearOutline() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ClearOutline: answer.
	^answer asObject
!

ClearOutline: rhs
	"Private - Invoke the ClearOutline() method of the COM object.

		HRESULT __stdcall ClearOutline(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 36 variant*>
	^self invalidCall!

column
	"Answer the <sdword> value of the 'Column' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Column: answer.
	^answer asObject
!

columnDifferences: comparison
	"Answer the <ExcelRange> result of invoking the ColumnDifferences() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		ColumnDifferences: comparison asVariant
		rhs: answer.
	^answer asObject
!

ColumnDifferences: comparison rhs: rhs
	"Private - Invoke the ColumnDifferences() method of the COM object.

		HRESULT __stdcall ColumnDifferences(
			[in]VARIANT Comparison,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 38 variant ExcelRange**>
	^self invalidCall!

columns
	"Answer the <ExcelRange> value of the 'Columns' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Columns: answer.
	^answer asObject
!

columnWidth
	"Answer the <variant> value of the 'ColumnWidth' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ColumnWidth: answer.
	^answer asObject
!

columnWidth: rhs
	"Set the 'ColumnWidth' property of the receiver to the <variant> value of the argument."

	self put_ColumnWidth: rhs asVariant
!

comment
	"Answer the <ExcelComment> value of the 'Comment' property of the receiver."

	| answer |
	answer := ExcelComment newPointer.
	self get_Comment: answer.
	^answer asObject
!

consolidate
	"Answer the <VARIANT> result of invoking the Consolidate() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 consolidate: VARIANT unspecified
		 function: VARIANT unspecified
		 topRow: VARIANT unspecified
		 leftColumn: VARIANT unspecified
		 createLinks: VARIANT unspecified!

consolidate: sources function: function topRow: topRow leftColumn: leftColumn createLinks: createLinks
	"Answer the <VARIANT> result of invoking the Consolidate() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Consolidate: sources asVariant
		function: function asVariant
		topRow: topRow asVariant
		leftColumn: leftColumn asVariant
		createLinks: createLinks asVariant
		rhs: answer.
	^answer asObject
!

Consolidate: sources function: function topRow: topRow leftColumn: leftColumn createLinks: createLinks rhs: rhs
	"Private - Invoke the Consolidate() method of the COM object.

		HRESULT __stdcall Consolidate(
			[in, optional]VARIANT Sources,
			[in, optional]VARIANT Function,
			[in, optional]VARIANT TopRow,
			[in, optional]VARIANT LeftColumn,
			[in, optional]VARIANT CreateLinks,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 42 variant variant variant variant variant variant*>
	^self invalidCall!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object.
	Default values are passed for all optional parameters."

	^self copy: VARIANT unspecified!

copy: destination
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Copy: destination asVariant
		rhs: answer.
	^answer asObject
!

Copy: destination rhs: rhs
	"Private - Invoke the Copy() method of the COM object.

		HRESULT __stdcall Copy(
			[in, optional]VARIANT Destination,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 43 variant variant*>
	^self invalidCall!

copyFromRecordset: data
	"Answer the <SDWORD> result of invoking the CopyFromRecordset() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyFromRecordset: data
		 maxRows: VARIANT unspecified
		 maxColumns: VARIANT unspecified!

copyFromRecordset: data maxRows: maxRows maxColumns: maxColumns
	"Answer the <SDWORD> result of invoking the CopyFromRecordset() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		CopyFromRecordset: data
		maxRows: maxRows asVariant
		maxColumns: maxColumns asVariant
		rhs: answer.
	^answer asObject
!

CopyFromRecordset: data maxRows: maxRows maxColumns: maxColumns rhs: rhs
	"Private - Invoke the CopyFromRecordset() method of the COM object.

		HRESULT __stdcall CopyFromRecordset(
			[in]IUnknown* Data,
			[in, optional]VARIANT MaxRows,
			[in, optional]VARIANT MaxColumns,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 44 IUnknown* variant variant sdword*>
	^self invalidCall!

copyPicture
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 1
		 format: -4147!

copyPicture: appearance format: format
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		CopyPicture: appearance
		format: format
		rhs: answer.
	^answer asObject
!

CopyPicture: appearance format: format rhs: rhs
	"Private - Invoke the CopyPicture() method of the COM object.

		HRESULT __stdcall CopyPicture(
			[in, defaultvalue(1)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 45 sdword sdword variant*>
	^self invalidCall!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

countLarge
	"Answer the <variant> value of the 'CountLarge' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_CountLarge: answer.
	^answer asObject
!

createNames
	"Answer the <VARIANT> result of invoking the CreateNames() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createNames: VARIANT unspecified
		 left: VARIANT unspecified
		 bottom: VARIANT unspecified
		 right: VARIANT unspecified!

createNames: top left: left bottom: bottom right: right
	"Answer the <VARIANT> result of invoking the CreateNames() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		CreateNames: top asVariant
		left: left asVariant
		bottom: bottom asVariant
		right: right asVariant
		rhs: answer.
	^answer asObject
!

CreateNames: top left: left bottom: bottom right: right rhs: rhs
	"Private - Invoke the CreateNames() method of the COM object.

		HRESULT __stdcall CreateNames(
			[in, optional]VARIANT Top,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Bottom,
			[in, optional]VARIANT Right,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 47 variant variant variant variant variant*>
	^self invalidCall!

createPublisher
	"Answer the <VARIANT> result of invoking the CreatePublisher() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createPublisher: VARIANT unspecified
		 appearance: 1
		 containsPICT: VARIANT unspecified
		 containsBIFF: VARIANT unspecified
		 containsRTF: VARIANT unspecified
		 containsVALU: VARIANT unspecified!

createPublisher: edition appearance: appearance containsPICT: containsPICT containsBIFF: containsBIFF containsRTF: containsRTF containsVALU: containsVALU
	"Answer the <VARIANT> result of invoking the CreatePublisher() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		CreatePublisher: edition asVariant
		appearance: appearance
		containsPICT: containsPICT asVariant
		containsBIFF: containsBIFF asVariant
		containsRTF: containsRTF asVariant
		containsVALU: containsVALU asVariant
		rhs: answer.
	^answer asObject
!

CreatePublisher: edition appearance: appearance containsPICT: containsPICT containsBIFF: containsBIFF containsRTF: containsRTF containsVALU: containsVALU rhs: rhs
	"Private - Invoke the CreatePublisher() method of the COM object.

		HRESULT __stdcall CreatePublisher(
			[in, optional]VARIANT Edition,
			[in, defaultvalue(1)]XlPictureAppearance Appearance,
			[in, optional]VARIANT ContainsPICT,
			[in, optional]VARIANT ContainsBIFF,
			[in, optional]VARIANT ContainsRTF,
			[in, optional]VARIANT ContainsVALU,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 48 variant sdword variant variant variant variant variant*>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

currentArray
	"Answer the <ExcelRange> value of the 'CurrentArray' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_CurrentArray: answer.
	^answer asObject
!

currentRegion
	"Answer the <ExcelRange> value of the 'CurrentRegion' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_CurrentRegion: answer.
	^answer asObject
!

cut
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object.
	Default values are passed for all optional parameters."

	^self cut: VARIANT unspecified!

cut: destination
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Cut: destination asVariant
		rhs: answer.
	^answer asObject
!

Cut: destination rhs: rhs
	"Private - Invoke the Cut() method of the COM object.

		HRESULT __stdcall Cut(
			[in, optional]VARIANT Destination,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 51 variant variant*>
	^self invalidCall!

dataSeries
	"Answer the <VARIANT> result of invoking the DataSeries() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dataSeries: VARIANT unspecified
		 type: -4132
		 date: 1
		 step: VARIANT unspecified
		 stop: VARIANT unspecified
		 trend: VARIANT unspecified!

dataSeries: rowcol type: type date: date step: step stop: stop trend: trend
	"Answer the <VARIANT> result of invoking the DataSeries() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		DataSeries: rowcol asVariant
		type: type
		date: date
		step: step asVariant
		stop: stop asVariant
		trend: trend asVariant
		rhs: answer.
	^answer asObject
!

DataSeries: rowcol type: type date: date step: step stop: stop trend: trend rhs: rhs
	"Private - Invoke the DataSeries() method of the COM object.

		HRESULT __stdcall DataSeries(
			[in, optional]VARIANT Rowcol,
			[in, defaultvalue(-4132)]XlDataSeriesType Type,
			[in, defaultvalue(1)]XlDataSeriesDate Date,
			[in, optional]VARIANT Step,
			[in, optional]VARIANT Stop,
			[in, optional]VARIANT Trend,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 52 variant sdword sdword variant variant variant variant*>
	^self invalidCall!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object.
	Default values are passed for all optional parameters."

	^self delete: VARIANT unspecified!

delete: shift
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Delete: shift asVariant
		rhs: answer.
	^answer asObject
!

Delete: shift rhs: rhs
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[in, optional]VARIANT Shift,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 55 variant variant*>
	^self invalidCall!

dependents_
	"Answer the <ExcelRange> value of the 'Dependents' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Dependents: answer.
	^answer asObject
!

dialogBox
	"Answer the <VARIANT> result of invoking the DialogBox() method of the COM object."

	| answer |
	answer := VARIANT new.
	self DialogBox: answer.
	^answer asObject
!

DialogBox: rhs
	"Private - Invoke the DialogBox() method of the COM object.

		HRESULT __stdcall DialogBox(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 57 variant*>
	^self invalidCall!

directDependents
	"Answer the <ExcelRange> value of the 'DirectDependents' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_DirectDependents: answer.
	^answer asObject
!

directPrecedents
	"Answer the <ExcelRange> value of the 'DirectPrecedents' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_DirectPrecedents: answer.
	^answer asObject
!

dirty
	"Invoke the Dirty() method of the COM object."

	^self Dirty
!

Dirty
	"Private - Invoke the Dirty() method of the COM object.

		HRESULT __stdcall Dirty();"

	<virtual stdcall: hresult 205>
	^self invalidCall!

editionOptions: type option: option
	"Answer the <VARIANT> result of invoking the EditionOptions() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 editionOptions: type
		 option: option
		 name: VARIANT unspecified
		 reference: VARIANT unspecified
		 appearance: 1
		 chartSize: 1
		 format: VARIANT unspecified!

editionOptions: type option: option name: name reference: reference appearance: appearance chartSize: chartSize format: format
	"Answer the <VARIANT> result of invoking the EditionOptions() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		EditionOptions: type
		option: option
		name: name asVariant
		reference: reference asVariant
		appearance: appearance
		chartSize: chartSize
		format: format asVariant
		rhs: answer.
	^answer asObject
!

EditionOptions: type option: option name: name reference: reference appearance: appearance chartSize: chartSize format: format rhs: rhs
	"Private - Invoke the EditionOptions() method of the COM object.

		HRESULT __stdcall EditionOptions(
			[in]XlEditionType Type,
			[in]XlEditionOptionsOption Option,
			[in, optional]VARIANT Name,
			[in, optional]VARIANT Reference,
			[in, defaultvalue(1)]XlPictureAppearance Appearance,
			[in, defaultvalue(1)]XlPictureAppearance ChartSize,
			[in, optional]VARIANT Format,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 60 sdword sdword variant variant sdword sdword variant variant*>
	^self invalidCall!

end: direction
	"Answer the <ExcelRange> value of the 'End' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self
		get_End: direction
		rhs: answer.
	^answer asObject
!

entireColumn
	"Answer the <ExcelRange> value of the 'EntireColumn' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_EntireColumn: answer.
	^answer asObject
!

entireRow
	"Answer the <ExcelRange> value of the 'EntireRow' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_EntireRow: answer.
	^answer asObject
!

errors
	"Answer the <ExcelErrors> value of the 'Errors' property of the receiver."

	| answer |
	answer := ExcelErrors newPointer.
	self get_Errors: answer.
	^answer asObject
!

exportAsFixedFormat: type
	"Invoke the ExportAsFixedFormat() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 exportAsFixedFormat: type
		 filename: VARIANT unspecified
		 quality: VARIANT unspecified
		 includeDocProperties: VARIANT unspecified
		 ignorePrintAreas: VARIANT unspecified
		 from: VARIANT unspecified
		 to: VARIANT unspecified
		 openAfterPublish: VARIANT unspecified
		 fixedFormatExtClassPtr: VARIANT unspecified!

exportAsFixedFormat: type filename: filename quality: quality includeDocProperties: includeDocProperties ignorePrintAreas: ignorePrintAreas from: from to: to openAfterPublish: openAfterPublish fixedFormatExtClassPtr: fixedFormatExtClassPtr
	"Invoke the ExportAsFixedFormat() method of the COM object."

	^self
		ExportAsFixedFormat: type
		filename: filename asVariant
		quality: quality asVariant
		includeDocProperties: includeDocProperties asVariant
		ignorePrintAreas: ignorePrintAreas asVariant
		from: from asVariant
		to: to asVariant
		openAfterPublish: openAfterPublish asVariant
		fixedFormatExtClassPtr: fixedFormatExtClassPtr asVariant
!

ExportAsFixedFormat: type filename: filename quality: quality includeDocProperties: includeDocProperties ignorePrintAreas: ignorePrintAreas from: from to: to openAfterPublish: openAfterPublish fixedFormatExtClassPtr: fixedFormatExtClassPtr
	"Private - Invoke the ExportAsFixedFormat() method of the COM object.

		HRESULT __stdcall ExportAsFixedFormat(
			[in]XlFixedFormatType Type,
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT Quality,
			[in, optional]VARIANT IncludeDocProperties,
			[in, optional]VARIANT IgnorePrintAreas,
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT OpenAfterPublish,
			[in, optional]VARIANT FixedFormatExtClassPtr);"

	<virtual stdcall: hresult 217 sdword variant variant variant variant variant variant variant variant>
	^self invalidCall!

fillDown
	"Answer the <VARIANT> result of invoking the FillDown() method of the COM object."

	| answer |
	answer := VARIANT new.
	self FillDown: answer.
	^answer asObject
!

FillDown: rhs
	"Private - Invoke the FillDown() method of the COM object.

		HRESULT __stdcall FillDown(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 64 variant*>
	^self invalidCall!

fillLeft
	"Answer the <VARIANT> result of invoking the FillLeft() method of the COM object."

	| answer |
	answer := VARIANT new.
	self FillLeft: answer.
	^answer asObject
!

FillLeft: rhs
	"Private - Invoke the FillLeft() method of the COM object.

		HRESULT __stdcall FillLeft(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 65 variant*>
	^self invalidCall!

fillRight
	"Answer the <VARIANT> result of invoking the FillRight() method of the COM object."

	| answer |
	answer := VARIANT new.
	self FillRight: answer.
	^answer asObject
!

FillRight: rhs
	"Private - Invoke the FillRight() method of the COM object.

		HRESULT __stdcall FillRight(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 66 variant*>
	^self invalidCall!

fillUp
	"Answer the <VARIANT> result of invoking the FillUp() method of the COM object."

	| answer |
	answer := VARIANT new.
	self FillUp: answer.
	^answer asObject
!

FillUp: rhs
	"Private - Invoke the FillUp() method of the COM object.

		HRESULT __stdcall FillUp(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 67 variant*>
	^self invalidCall!

find: what
	"Answer the <ExcelRange> result of invoking the Find() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 find: what
		 after: VARIANT unspecified
		 lookIn: VARIANT unspecified
		 lookAt: VARIANT unspecified
		 searchOrder: VARIANT unspecified
		 searchDirection: 1
		 matchCase: VARIANT unspecified
		 matchByte: VARIANT unspecified
		 searchFormat: VARIANT unspecified!

find: what after: after lookIn: lookIn lookAt: lookAt searchOrder: searchOrder searchDirection: searchDirection matchCase: matchCase matchByte: matchByte searchFormat: searchFormat
	"Answer the <ExcelRange> result of invoking the Find() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		Find: what asVariant
		after: after asVariant
		lookIn: lookIn asVariant
		lookAt: lookAt asVariant
		searchOrder: searchOrder asVariant
		searchDirection: searchDirection
		matchCase: matchCase asVariant
		matchByte: matchByte asVariant
		searchFormat: searchFormat asVariant
		rhs: answer.
	^answer asObject
!

Find: what after: after lookIn: lookIn lookAt: lookAt searchOrder: searchOrder searchDirection: searchDirection matchCase: matchCase matchByte: matchByte searchFormat: searchFormat rhs: rhs
	"Private - Invoke the Find() method of the COM object.

		HRESULT __stdcall Find(
			[in]VARIANT What,
			[in, optional]VARIANT After,
			[in, optional]VARIANT LookIn,
			[in, optional]VARIANT LookAt,
			[in, optional]VARIANT SearchOrder,
			[in, defaultvalue(1)]XlSearchDirection SearchDirection,
			[in, optional]VARIANT MatchCase,
			[in, optional]VARIANT MatchByte,
			[in, optional]VARIANT SearchFormat,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 68 variant variant variant variant variant sdword variant variant variant ExcelRange**>
	^self invalidCall!

findNext
	"Answer the <ExcelRange> result of invoking the FindNext() method of the COM object.
	Default values are passed for all optional parameters."

	^self findNext: VARIANT unspecified!

findNext: after
	"Answer the <ExcelRange> result of invoking the FindNext() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		FindNext: after asVariant
		rhs: answer.
	^answer asObject
!

FindNext: after rhs: rhs
	"Private - Invoke the FindNext() method of the COM object.

		HRESULT __stdcall FindNext(
			[in, optional]VARIANT After,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 69 variant ExcelRange**>
	^self invalidCall!

findPrevious
	"Answer the <ExcelRange> result of invoking the FindPrevious() method of the COM object.
	Default values are passed for all optional parameters."

	^self findPrevious: VARIANT unspecified!

findPrevious: after
	"Answer the <ExcelRange> result of invoking the FindPrevious() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		FindPrevious: after asVariant
		rhs: answer.
	^answer asObject
!

FindPrevious: after rhs: rhs
	"Private - Invoke the FindPrevious() method of the COM object.

		HRESULT __stdcall FindPrevious(
			[in, optional]VARIANT After,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 70 variant ExcelRange**>
	^self invalidCall!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

formatConditions
	"Answer the <ExcelFormatConditions> value of the 'FormatConditions' property of the receiver."

	| answer |
	answer := ExcelFormatConditions newPointer.
	self get_FormatConditions: answer.
	^answer asObject
!

formula: lcid
	"Answer the <variant> value of the 'Formula' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Formula: lcid
		rhs: answer.
	^answer asObject
!

formula: lcid rhs: rhs
	"Set the 'Formula' property of the receiver to the <variant> value of the argument."

	self
		put_Formula: lcid
		rhs: rhs asVariant
!

formulaArray
	"Answer the <variant> value of the 'FormulaArray' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_FormulaArray: answer.
	^answer asObject
!

formulaArray: rhs
	"Set the 'FormulaArray' property of the receiver to the <variant> value of the argument."

	self put_FormulaArray: rhs asVariant
!

formulaHidden
	"Answer the <variant> value of the 'FormulaHidden' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_FormulaHidden: answer.
	^answer asObject
!

formulaHidden: rhs
	"Set the 'FormulaHidden' property of the receiver to the <variant> value of the argument."

	self put_FormulaHidden: rhs asVariant
!

formulaLabel
	"Answer the <sdword> value of the 'FormulaLabel' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FormulaLabel: answer.
	^answer asObject
!

formulaLabel: rhs
	"Set the 'FormulaLabel' property of the receiver to the <sdword> value of the argument."

	self put_FormulaLabel: rhs
!

formulaLocal
	"Answer the <variant> value of the 'FormulaLocal' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_FormulaLocal: answer.
	^answer asObject
!

formulaLocal: rhs
	"Set the 'FormulaLocal' property of the receiver to the <variant> value of the argument."

	self put_FormulaLocal: rhs asVariant
!

formulaR1C1: lcid
	"Answer the <variant> value of the 'FormulaR1C1' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_FormulaR1C1: lcid
		rhs: answer.
	^answer asObject
!

formulaR1C1: lcid rhs: rhs
	"Set the 'FormulaR1C1' property of the receiver to the <variant> value of the argument."

	self
		put_FormulaR1C1: lcid
		rhs: rhs asVariant
!

formulaR1C1Local
	"Answer the <variant> value of the 'FormulaR1C1Local' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_FormulaR1C1Local: answer.
	^answer asObject
!

formulaR1C1Local: rhs
	"Set the 'FormulaR1C1Local' property of the receiver to the <variant> value of the argument."

	self put_FormulaR1C1Local: rhs asVariant
!

functionWizard
	"Answer the <VARIANT> result of invoking the FunctionWizard() method of the COM object."

	| answer |
	answer := VARIANT new.
	self FunctionWizard: answer.
	^answer asObject
!

FunctionWizard: rhs
	"Private - Invoke the FunctionWizard() method of the COM object.

		HRESULT __stdcall FunctionWizard(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 86 variant*>
	^self invalidCall!

get__Default: rowIndex columnIndex: columnIndex lcid: lcid rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in, optional]VARIANT RowIndex,
			[in, optional]VARIANT ColumnIndex,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 53 variant variant sdword variant*>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 118 IUnknown**>
	^self invalidCall!

get_AddIndent: rhs
	"Private - Get the value of the 'AddIndent' property of the receiver.

		HRESULT __stdcall AddIndent(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

get_Address: rowAbsolute columnAbsolute: columnAbsolute referenceStyle: referenceStyle external: external relativeTo: relativeTo lcid: lcid rhs: rhs
	"Private - Get the value of the 'Address' property of the receiver.

		HRESULT __stdcall Address(
			[in, optional]VARIANT RowAbsolute,
			[in, optional]VARIANT ColumnAbsolute,
			[in, defaultvalue(1)]XlReferenceStyle ReferenceStyle,
			[in, optional]VARIANT External,
			[in, optional]VARIANT RelativeTo,
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 variant variant sdword variant variant sdword bstr*>
	^self invalidCall!

get_AddressLocal: rowAbsolute columnAbsolute: columnAbsolute referenceStyle: referenceStyle external: external relativeTo: relativeTo rhs: rhs
	"Private - Get the value of the 'AddressLocal' property of the receiver.

		HRESULT __stdcall AddressLocal(
			[in, optional]VARIANT RowAbsolute,
			[in, optional]VARIANT ColumnAbsolute,
			[in, defaultvalue(1)]XlReferenceStyle ReferenceStyle,
			[in, optional]VARIANT External,
			[in, optional]VARIANT RelativeTo,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 variant variant sdword variant variant bstr*>
	^self invalidCall!

get_AllowEdit: rhs
	"Private - Get the value of the 'AllowEdit' property of the receiver.

		HRESULT __stdcall AllowEdit(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 210 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Areas: rhs
	"Private - Get the value of the 'Areas' property of the receiver.

		HRESULT __stdcall Areas(
			[out, retval]Areas** RHS);"

	<virtual stdcall: hresult 19 ExcelAreas**>
	^self invalidCall!

get_Borders: rhs
	"Private - Get the value of the 'Borders' property of the receiver.

		HRESULT __stdcall Borders(
			[out, retval]Borders** RHS);"

	<virtual stdcall: hresult 27 ExcelBorders**>
	^self invalidCall!

get_Cells: rhs
	"Private - Get the value of the 'Cells' property of the receiver.

		HRESULT __stdcall Cells(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 29 ExcelRange**>
	^self invalidCall!

get_Characters: start length: length rhs: rhs
	"Private - Get the value of the 'Characters' property of the receiver.

		HRESULT __stdcall Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length,
			[out, retval]Characters** RHS);"

	<virtual stdcall: hresult 30 variant variant ExcelCharacters**>
	^self invalidCall!

get_Column: rhs
	"Private - Get the value of the 'Column' property of the receiver.

		HRESULT __stdcall Column(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 37 sdword*>
	^self invalidCall!

get_Columns: rhs
	"Private - Get the value of the 'Columns' property of the receiver.

		HRESULT __stdcall Columns(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 39 ExcelRange**>
	^self invalidCall!

get_ColumnWidth: rhs
	"Private - Get the value of the 'ColumnWidth' property of the receiver.

		HRESULT __stdcall ColumnWidth(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 40 variant*>
	^self invalidCall!

get_Comment: rhs
	"Private - Get the value of the 'Comment' property of the receiver.

		HRESULT __stdcall Comment(
			[out, retval]Comment** RHS);"

	<virtual stdcall: hresult 192 ExcelComment**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 46 sdword*>
	^self invalidCall!

get_CountLarge: rhs
	"Private - Get the value of the 'CountLarge' property of the receiver.

		HRESULT __stdcall CountLarge(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 218 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CurrentArray: rhs
	"Private - Get the value of the 'CurrentArray' property of the receiver.

		HRESULT __stdcall CurrentArray(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 49 ExcelRange**>
	^self invalidCall!

get_CurrentRegion: rhs
	"Private - Get the value of the 'CurrentRegion' property of the receiver.

		HRESULT __stdcall CurrentRegion(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 50 ExcelRange**>
	^self invalidCall!

get_Dependents: rhs
	"Private - Get the value of the 'Dependents' property of the receiver.

		HRESULT __stdcall Dependents(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 56 ExcelRange**>
	^self invalidCall!

get_DirectDependents: rhs
	"Private - Get the value of the 'DirectDependents' property of the receiver.

		HRESULT __stdcall DirectDependents(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 58 ExcelRange**>
	^self invalidCall!

get_DirectPrecedents: rhs
	"Private - Get the value of the 'DirectPrecedents' property of the receiver.

		HRESULT __stdcall DirectPrecedents(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 59 ExcelRange**>
	^self invalidCall!

get_End: direction rhs: rhs
	"Private - Get the value of the 'End' property of the receiver.

		HRESULT __stdcall End(
			[in]XlDirection Direction,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 61 sdword ExcelRange**>
	^self invalidCall!

get_EntireColumn: rhs
	"Private - Get the value of the 'EntireColumn' property of the receiver.

		HRESULT __stdcall EntireColumn(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 62 ExcelRange**>
	^self invalidCall!

get_EntireRow: rhs
	"Private - Get the value of the 'EntireRow' property of the receiver.

		HRESULT __stdcall EntireRow(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 63 ExcelRange**>
	^self invalidCall!

get_Errors: rhs
	"Private - Get the value of the 'Errors' property of the receiver.

		HRESULT __stdcall Errors(
			[out, retval]Errors** RHS);"

	<virtual stdcall: hresult 206 ExcelErrors**>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 71 ExcelFont**>
	^self invalidCall!

get_FormatConditions: rhs
	"Private - Get the value of the 'FormatConditions' property of the receiver.

		HRESULT __stdcall FormatConditions(
			[out, retval]FormatConditions** RHS);"

	<virtual stdcall: hresult 195 ExcelFormatConditions**>
	^self invalidCall!

get_Formula: lcid rhs: rhs
	"Private - Get the value of the 'Formula' property of the receiver.

		HRESULT __stdcall Formula(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 72 sdword variant*>
	^self invalidCall!

get_FormulaArray: rhs
	"Private - Get the value of the 'FormulaArray' property of the receiver.

		HRESULT __stdcall FormulaArray(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 74 variant*>
	^self invalidCall!

get_FormulaHidden: rhs
	"Private - Get the value of the 'FormulaHidden' property of the receiver.

		HRESULT __stdcall FormulaHidden(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 78 variant*>
	^self invalidCall!

get_FormulaLabel: rhs
	"Private - Get the value of the 'FormulaLabel' property of the receiver.

		HRESULT __stdcall FormulaLabel(
			[out, retval]XlFormulaLabel* RHS);"

	<virtual stdcall: hresult 76 sdword*>
	^self invalidCall!

get_FormulaLocal: rhs
	"Private - Get the value of the 'FormulaLocal' property of the receiver.

		HRESULT __stdcall FormulaLocal(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 80 variant*>
	^self invalidCall!

get_FormulaR1C1: lcid rhs: rhs
	"Private - Get the value of the 'FormulaR1C1' property of the receiver.

		HRESULT __stdcall FormulaR1C1(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 82 sdword variant*>
	^self invalidCall!

get_FormulaR1C1Local: rhs
	"Private - Get the value of the 'FormulaR1C1Local' property of the receiver.

		HRESULT __stdcall FormulaR1C1Local(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 84 variant*>
	^self invalidCall!

get_HasArray: rhs
	"Private - Get the value of the 'HasArray' property of the receiver.

		HRESULT __stdcall HasArray(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 89 variant*>
	^self invalidCall!

get_HasFormula: rhs
	"Private - Get the value of the 'HasFormula' property of the receiver.

		HRESULT __stdcall HasFormula(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 90 variant*>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 91 variant*>
	^self invalidCall!

get_Hidden: rhs
	"Private - Get the value of the 'Hidden' property of the receiver.

		HRESULT __stdcall Hidden(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 92 variant*>
	^self invalidCall!

get_HorizontalAlignment: rhs
	"Private - Get the value of the 'HorizontalAlignment' property of the receiver.

		HRESULT __stdcall HorizontalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 94 variant*>
	^self invalidCall!

get_Hyperlinks: rhs
	"Private - Get the value of the 'Hyperlinks' property of the receiver.

		HRESULT __stdcall Hyperlinks(
			[out, retval]Hyperlinks** RHS);"

	<virtual stdcall: hresult 198 ExcelHyperlinks**>
	^self invalidCall!

get_ID: rhs
	"Private - Get the value of the 'ID' property of the receiver.

		HRESULT __stdcall ID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 201 bstr*>
	^self invalidCall!

get_IndentLevel: rhs
	"Private - Get the value of the 'IndentLevel' property of the receiver.

		HRESULT __stdcall IndentLevel(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 96 variant*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 100 ExcelInterior**>
	^self invalidCall!

get_Item: rowIndex columnIndex: columnIndex lcid: lcid rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT RowIndex,
			[in, optional]VARIANT ColumnIndex,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 101 variant variant sdword variant*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 104 variant*>
	^self invalidCall!

get_ListHeaderRows: rhs
	"Private - Get the value of the 'ListHeaderRows' property of the receiver.

		HRESULT __stdcall ListHeaderRows(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 105 sdword*>
	^self invalidCall!

get_ListObject: rhs
	"Private - Get the value of the 'ListObject' property of the receiver.

		HRESULT __stdcall ListObject(
			[out, retval]ListObject** RHS);"

	<virtual stdcall: hresult 211 ExcelListObject**>
	^self invalidCall!

get_LocationInTable: rhs
	"Private - Get the value of the 'LocationInTable' property of the receiver.

		HRESULT __stdcall LocationInTable(
			[out, retval]XlLocationInTable* RHS);"

	<virtual stdcall: hresult 107 sdword*>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 108 variant*>
	^self invalidCall!

get_MDX: rhs
	"Private - Get the value of the 'MDX' property of the receiver.

		HRESULT __stdcall MDX(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 216 bstr*>
	^self invalidCall!

get_MergeArea: rhs
	"Private - Get the value of the 'MergeArea' property of the receiver.

		HRESULT __stdcall MergeArea(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 112 ExcelRange**>
	^self invalidCall!

get_MergeCells: rhs
	"Private - Get the value of the 'MergeCells' property of the receiver.

		HRESULT __stdcall MergeCells(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 113 variant*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 115 variant*>
	^self invalidCall!

get_Next: rhs
	"Private - Get the value of the 'Next' property of the receiver.

		HRESULT __stdcall Next(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 119 ExcelRange**>
	^self invalidCall!

get_NumberFormat: rhs
	"Private - Get the value of the 'NumberFormat' property of the receiver.

		HRESULT __stdcall NumberFormat(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 121 variant*>
	^self invalidCall!

get_NumberFormatLocal: rhs
	"Private - Get the value of the 'NumberFormatLocal' property of the receiver.

		HRESULT __stdcall NumberFormatLocal(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 123 variant*>
	^self invalidCall!

get_Offset: rowOffset columnOffset: columnOffset rhs: rhs
	"Private - Get the value of the 'Offset' property of the receiver.

		HRESULT __stdcall Offset(
			[in, optional]VARIANT RowOffset,
			[in, optional]VARIANT ColumnOffset,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 125 variant variant ExcelRange**>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 126 variant*>
	^self invalidCall!

get_OutlineLevel: rhs
	"Private - Get the value of the 'OutlineLevel' property of the receiver.

		HRESULT __stdcall OutlineLevel(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 128 variant*>
	^self invalidCall!

get_PageBreak: rhs
	"Private - Get the value of the 'PageBreak' property of the receiver.

		HRESULT __stdcall PageBreak(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 130 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Phonetic: rhs
	"Private - Get the value of the 'Phonetic' property of the receiver.

		HRESULT __stdcall Phonetic(
			[out, retval]Phonetic** RHS);"

	<virtual stdcall: hresult 194 ExcelPhonetic**>
	^self invalidCall!

get_Phonetics: rhs
	"Private - Get the value of the 'Phonetics' property of the receiver.

		HRESULT __stdcall Phonetics(
			[out, retval]Phonetics** RHS);"

	<virtual stdcall: hresult 199 ExcelPhonetics**>
	^self invalidCall!

get_PivotCell: rhs
	"Private - Get the value of the 'PivotCell' property of the receiver.

		HRESULT __stdcall PivotCell(
			[out, retval]PivotCell** RHS);"

	<virtual stdcall: hresult 204 ExcelPivotCell**>
	^self invalidCall!

get_PivotField: rhs
	"Private - Get the value of the 'PivotField' property of the receiver.

		HRESULT __stdcall PivotField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 134 ExcelPivotField**>
	^self invalidCall!

get_PivotItem: rhs
	"Private - Get the value of the 'PivotItem' property of the receiver.

		HRESULT __stdcall PivotItem(
			[out, retval]PivotItem** RHS);"

	<virtual stdcall: hresult 135 ExcelPivotItem**>
	^self invalidCall!

get_PivotTable: rhs
	"Private - Get the value of the 'PivotTable' property of the receiver.

		HRESULT __stdcall PivotTable(
			[out, retval]PivotTable** RHS);"

	<virtual stdcall: hresult 136 ExcelPivotTable**>
	^self invalidCall!

get_Precedents: rhs
	"Private - Get the value of the 'Precedents' property of the receiver.

		HRESULT __stdcall Precedents(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 137 ExcelRange**>
	^self invalidCall!

get_PrefixCharacter: rhs
	"Private - Get the value of the 'PrefixCharacter' property of the receiver.

		HRESULT __stdcall PrefixCharacter(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 138 variant*>
	^self invalidCall!

get_Previous: rhs
	"Private - Get the value of the 'Previous' property of the receiver.

		HRESULT __stdcall Previous(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 139 ExcelRange**>
	^self invalidCall!

get_QueryTable: rhs
	"Private - Get the value of the 'QueryTable' property of the receiver.

		HRESULT __stdcall QueryTable(
			[out, retval]QueryTable** RHS);"

	<virtual stdcall: hresult 142 Excel_QueryTable**>
	^self invalidCall!

get_Range: cell1 cell2: cell2 rhs: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[in]VARIANT Cell1,
			[in, optional]VARIANT Cell2,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 143 variant variant ExcelRange**>
	^self invalidCall!

get_ReadingOrder: rhs
	"Private - Get the value of the 'ReadingOrder' property of the receiver.

		HRESULT __stdcall ReadingOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 196 sdword*>
	^self invalidCall!

get_Resize: rowSize columnSize: columnSize rhs: rhs
	"Private - Get the value of the 'Resize' property of the receiver.

		HRESULT __stdcall Resize(
			[in, optional]VARIANT RowSize,
			[in, optional]VARIANT ColumnSize,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 146 variant variant ExcelRange**>
	^self invalidCall!

get_Row: rhs
	"Private - Get the value of the 'Row' property of the receiver.

		HRESULT __stdcall Row(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 147 sdword*>
	^self invalidCall!

get_RowHeight: rhs
	"Private - Get the value of the 'RowHeight' property of the receiver.

		HRESULT __stdcall RowHeight(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 149 variant*>
	^self invalidCall!

get_Rows: rhs
	"Private - Get the value of the 'Rows' property of the receiver.

		HRESULT __stdcall Rows(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 151 ExcelRange**>
	^self invalidCall!

get_ServerActions: rhs
	"Private - Get the value of the 'ServerActions' property of the receiver.

		HRESULT __stdcall ServerActions(
			[out, retval]Actions** RHS);"

	<virtual stdcall: hresult 213 ExcelActions**>
	^self invalidCall!

get_ShowDetail: rhs
	"Private - Get the value of the 'ShowDetail' property of the receiver.

		HRESULT __stdcall ShowDetail(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 156 variant*>
	^self invalidCall!

get_ShrinkToFit: rhs
	"Private - Get the value of the 'ShrinkToFit' property of the receiver.

		HRESULT __stdcall ShrinkToFit(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 160 variant*>
	^self invalidCall!

get_SmartTags: rhs
	"Private - Get the value of the 'SmartTags' property of the receiver.

		HRESULT __stdcall SmartTags(
			[out, retval]SmartTags** RHS);"

	<virtual stdcall: hresult 207 ExcelSmartTags**>
	^self invalidCall!

get_SoundNote: rhs
	"Private - Get the value of the 'SoundNote' property of the receiver.

		HRESULT __stdcall SoundNote(
			[out, retval]SoundNote** RHS);"

	<virtual stdcall: hresult 164 ExcelSoundNote**>
	^self invalidCall!

get_Style: rhs
	"Private - Get the value of the 'Style' property of the receiver.

		HRESULT __stdcall Style(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 166 variant*>
	^self invalidCall!

get_Summary: rhs
	"Private - Get the value of the 'Summary' property of the receiver.

		HRESULT __stdcall Summary(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 170 variant*>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 172 variant*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 174 variant*>
	^self invalidCall!

get_UseStandardHeight: rhs
	"Private - Get the value of the 'UseStandardHeight' property of the receiver.

		HRESULT __stdcall UseStandardHeight(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 176 variant*>
	^self invalidCall!

get_UseStandardWidth: rhs
	"Private - Get the value of the 'UseStandardWidth' property of the receiver.

		HRESULT __stdcall UseStandardWidth(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 178 variant*>
	^self invalidCall!

get_Validation: rhs
	"Private - Get the value of the 'Validation' property of the receiver.

		HRESULT __stdcall Validation(
			[out, retval]Validation** RHS);"

	<virtual stdcall: hresult 180 ExcelValidation**>
	^self invalidCall!

get_Value: rangeValueDataType lcid: lcid rhs: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[in, optional]VARIANT RangeValueDataType,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 181 variant sdword variant*>
	^self invalidCall!

get_Value2: lcid rhs: rhs
	"Private - Get the value of the 'Value2' property of the receiver.

		HRESULT __stdcall Value2(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 183 sdword variant*>
	^self invalidCall!

get_VerticalAlignment: rhs
	"Private - Get the value of the 'VerticalAlignment' property of the receiver.

		HRESULT __stdcall VerticalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 185 variant*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 187 variant*>
	^self invalidCall!

get_Worksheet: rhs
	"Private - Get the value of the 'Worksheet' property of the receiver.

		HRESULT __stdcall Worksheet(
			[out, retval]Worksheet** RHS);"

	<virtual stdcall: hresult 188 Excel_Worksheet**>
	^self invalidCall!

get_WrapText: rhs
	"Private - Get the value of the 'WrapText' property of the receiver.

		HRESULT __stdcall WrapText(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 189 variant*>
	^self invalidCall!

get_XPath: rhs
	"Private - Get the value of the 'XPath' property of the receiver.

		HRESULT __stdcall XPath(
			[out, retval]XPath** RHS);"

	<virtual stdcall: hresult 212 ExcelXPath**>
	^self invalidCall!

goalSeek: goal changingCell: changingCell
	"Answer the <VARIANT_BOOL> result of invoking the GoalSeek() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		GoalSeek: goal asVariant
		changingCell: changingCell
		rhs: answer.
	^answer asObject
!

GoalSeek: goal changingCell: changingCell rhs: rhs
	"Private - Invoke the GoalSeek() method of the COM object.

		HRESULT __stdcall GoalSeek(
			[in]VARIANT Goal,
			[in]Range* ChangingCell,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 87 variant ExcelRange* varbool*>
	^self invalidCall!

group
	"Answer the <VARIANT> result of invoking the Group() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 group: VARIANT unspecified
		 end: VARIANT unspecified
		 by: VARIANT unspecified
		 periods: VARIANT unspecified!

group: start end: end by: by periods: periods
	"Answer the <VARIANT> result of invoking the Group() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Group: start asVariant
		end: end asVariant
		by: by asVariant
		periods: periods asVariant
		rhs: answer.
	^answer asObject
!

Group: start end: end by: by periods: periods rhs: rhs
	"Private - Invoke the Group() method of the COM object.

		HRESULT __stdcall Group(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT End,
			[in, optional]VARIANT By,
			[in, optional]VARIANT Periods,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 88 variant variant variant variant variant*>
	^self invalidCall!

hasArray
	"Answer the <variant> value of the 'HasArray' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_HasArray: answer.
	^answer asObject
!

hasFormula
	"Answer the <variant> value of the 'HasFormula' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_HasFormula: answer.
	^answer asObject
!

height
	"Answer the <variant> value of the 'Height' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Height: answer.
	^answer asObject
!

hidden
	"Answer the <variant> value of the 'Hidden' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Hidden: answer.
	^answer asObject
!

hidden: rhs
	"Set the 'Hidden' property of the receiver to the <variant> value of the argument."

	self put_Hidden: rhs asVariant
!

horizontalAlignment
	"Answer the <variant> value of the 'HorizontalAlignment' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_HorizontalAlignment: answer.
	^answer asObject
!

horizontalAlignment: rhs
	"Set the 'HorizontalAlignment' property of the receiver to the <variant> value of the argument."

	self put_HorizontalAlignment: rhs asVariant
!

hyperlinks
	"Answer the <ExcelHyperlinks> value of the 'Hyperlinks' property of the receiver."

	| answer |
	answer := ExcelHyperlinks newPointer.
	self get_Hyperlinks: answer.
	^answer asObject
!

id
	"Answer the <bstr> value of the 'ID' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ID: answer.
	^answer asObject
!

id: rhs
	"Set the 'ID' property of the receiver to the <bstr> value of the argument."

	self put_ID: rhs
!

indentLevel
	"Answer the <variant> value of the 'IndentLevel' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_IndentLevel: answer.
	^answer asObject
!

indentLevel: rhs
	"Set the 'IndentLevel' property of the receiver to the <variant> value of the argument."

	self put_IndentLevel: rhs asVariant
!

insert
	"Answer the <VARIANT> result of invoking the Insert() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 insert: VARIANT unspecified
		 copyOrigin: VARIANT unspecified!

insert: shift copyOrigin: copyOrigin
	"Answer the <VARIANT> result of invoking the Insert() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Insert: shift asVariant
		copyOrigin: copyOrigin asVariant
		rhs: answer.
	^answer asObject
!

Insert: shift copyOrigin: copyOrigin rhs: rhs
	"Private - Invoke the Insert() method of the COM object.

		HRESULT __stdcall Insert(
			[in, optional]VARIANT Shift,
			[in, optional]VARIANT CopyOrigin,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 99 variant variant variant*>
	^self invalidCall!

insertIndent: insertAmount
	"Invoke the InsertIndent() method of the COM object."

	^self InsertIndent: insertAmount
!

InsertIndent: insertAmount
	"Private - Invoke the InsertIndent() method of the COM object.

		HRESULT __stdcall InsertIndent(
			[in]long InsertAmount);"

	<virtual stdcall: hresult 98 sdword>
	^self invalidCall!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: rowIndex columnIndex: columnIndex lcid: lcid
	"Answer the <variant> value of the 'Item' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Item: rowIndex asVariant
		columnIndex: columnIndex asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

item: rowIndex columnIndex: columnIndex lcid: lcid rhs: rhs
	"Set the 'Item' property of the receiver to the <variant> value of the argument."

	self
		put_Item: rowIndex asVariant
		columnIndex: columnIndex asVariant
		lcid: lcid
		rhs: rhs asVariant
!

item: rowIndex lcid: lcid
	"Answer the <variant> value of the 'Item' property of the receiver."

	^self
		 item: rowIndex
		 columnIndex: VARIANT unspecified
		 lcid: lcid!

justify
	"Answer the <VARIANT> result of invoking the Justify() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Justify: answer.
	^answer asObject
!

Justify: rhs
	"Private - Invoke the Justify() method of the COM object.

		HRESULT __stdcall Justify(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 103 variant*>
	^self invalidCall!

left
	"Answer the <variant> value of the 'Left' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Left: answer.
	^answer asObject
!

listHeaderRows
	"Answer the <sdword> value of the 'ListHeaderRows' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ListHeaderRows: answer.
	^answer asObject
!

listNames
	"Answer the <VARIANT> result of invoking the ListNames() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ListNames: answer.
	^answer asObject
!

ListNames: rhs
	"Private - Invoke the ListNames() method of the COM object.

		HRESULT __stdcall ListNames(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 106 variant*>
	^self invalidCall!

listObject
	"Answer the <ExcelListObject> value of the 'ListObject' property of the receiver."

	| answer |
	answer := ExcelListObject newPointer.
	self get_ListObject: answer.
	^answer asObject
!

locationInTable
	"Answer the <sdword> value of the 'LocationInTable' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LocationInTable: answer.
	^answer asObject
!

locked
	"Answer the <variant> value of the 'Locked' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Locked: answer.
	^answer asObject
!

locked: rhs
	"Set the 'Locked' property of the receiver to the <variant> value of the argument."

	self put_Locked: rhs asVariant
!

mdx
	"Answer the <bstr> value of the 'MDX' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_MDX: answer.
	^answer asObject
!

merge
	"Invoke the Merge() method of the COM object.
	Default values are passed for all optional parameters."

	^self merge: VARIANT unspecified!

merge: across
	"Invoke the Merge() method of the COM object."

	^self Merge: across asVariant
!

Merge: across
	"Private - Invoke the Merge() method of the COM object.

		HRESULT __stdcall Merge(
			[in, optional]VARIANT Across);"

	<virtual stdcall: hresult 110 variant>
	^self invalidCall!

mergeArea
	"Answer the <ExcelRange> value of the 'MergeArea' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_MergeArea: answer.
	^answer asObject
!

mergeCells
	"Answer the <variant> value of the 'MergeCells' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_MergeCells: answer.
	^answer asObject
!

mergeCells: rhs
	"Set the 'MergeCells' property of the receiver to the <variant> value of the argument."

	self put_MergeCells: rhs asVariant
!

name
	"Answer the <variant> value of the 'Name' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <variant> value of the argument."

	self put_Name: rhs asVariant
!

navigateArrow
	"Answer the <VARIANT> result of invoking the NavigateArrow() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 navigateArrow: VARIANT unspecified
		 arrowNumber: VARIANT unspecified
		 linkNumber: VARIANT unspecified!

navigateArrow: towardPrecedent arrowNumber: arrowNumber linkNumber: linkNumber
	"Answer the <VARIANT> result of invoking the NavigateArrow() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		NavigateArrow: towardPrecedent asVariant
		arrowNumber: arrowNumber asVariant
		linkNumber: linkNumber asVariant
		rhs: answer.
	^answer asObject
!

NavigateArrow: towardPrecedent arrowNumber: arrowNumber linkNumber: linkNumber rhs: rhs
	"Private - Invoke the NavigateArrow() method of the COM object.

		HRESULT __stdcall NavigateArrow(
			[in, optional]VARIANT TowardPrecedent,
			[in, optional]VARIANT ArrowNumber,
			[in, optional]VARIANT LinkNumber,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 117 variant variant variant variant*>
	^self invalidCall!

next
	"Answer the <ExcelRange> value of the 'Next' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Next: answer.
	^answer asObject
!

noteText
	"Answer the <BSTR> result of invoking the NoteText() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 noteText: VARIANT unspecified
		 start: VARIANT unspecified
		 length: VARIANT unspecified!

noteText: text start: start length: length
	"Answer the <BSTR> result of invoking the NoteText() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		NoteText: text asVariant
		start: start asVariant
		length: length asVariant
		rhs: answer.
	^answer asObject
!

NoteText: text start: start length: length rhs: rhs
	"Private - Invoke the NoteText() method of the COM object.

		HRESULT __stdcall NoteText(
			[in, optional]VARIANT Text,
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 120 variant variant variant bstr*>
	^self invalidCall!

numberFormat
	"Answer the <variant> value of the 'NumberFormat' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_NumberFormat: answer.
	^answer asObject
!

numberFormat: rhs
	"Set the 'NumberFormat' property of the receiver to the <variant> value of the argument."

	self put_NumberFormat: rhs asVariant
!

numberFormatLocal
	"Answer the <variant> value of the 'NumberFormatLocal' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_NumberFormatLocal: answer.
	^answer asObject
!

numberFormatLocal: rhs
	"Set the 'NumberFormatLocal' property of the receiver to the <variant> value of the argument."

	self put_NumberFormatLocal: rhs asVariant
!

offset
	"Answer the <ExcelRange> value of the 'Offset' property of the receiver."

	^self
		 offset: VARIANT unspecified
		 columnOffset: VARIANT unspecified!

offset: rowOffset columnOffset: columnOffset
	"Answer the <ExcelRange> value of the 'Offset' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self
		get_Offset: rowOffset asVariant
		columnOffset: columnOffset asVariant
		rhs: answer.
	^answer asObject
!

orientation
	"Answer the <variant> value of the 'Orientation' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <variant> value of the argument."

	self put_Orientation: rhs asVariant
!

outlineLevel
	"Answer the <variant> value of the 'OutlineLevel' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_OutlineLevel: answer.
	^answer asObject
!

outlineLevel: rhs
	"Set the 'OutlineLevel' property of the receiver to the <variant> value of the argument."

	self put_OutlineLevel: rhs asVariant
!

pageBreak
	"Answer the <sdword> value of the 'PageBreak' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PageBreak: answer.
	^answer asObject
!

pageBreak: rhs
	"Set the 'PageBreak' property of the receiver to the <sdword> value of the argument."

	self put_PageBreak: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

parse
	"Answer the <VARIANT> result of invoking the Parse() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 parse: VARIANT unspecified
		 destination: VARIANT unspecified!

parse: parseLine destination: destination
	"Answer the <VARIANT> result of invoking the Parse() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Parse: parseLine asVariant
		destination: destination asVariant
		rhs: answer.
	^answer asObject
!

Parse: parseLine destination: destination rhs: rhs
	"Private - Invoke the Parse() method of the COM object.

		HRESULT __stdcall Parse(
			[in, optional]VARIANT ParseLine,
			[in, optional]VARIANT Destination,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 132 variant variant variant*>
	^self invalidCall!

pasteSpecial
	"Answer the <VARIANT> result of invoking the PasteSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pasteSpecial: -4104
		 operation: -4142
		 skipBlanks: VARIANT unspecified
		 transpose: VARIANT unspecified!

pasteSpecial: paste operation: operation skipBlanks: skipBlanks transpose: transpose
	"Answer the <VARIANT> result of invoking the PasteSpecial() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		PasteSpecial: paste
		operation: operation
		skipBlanks: skipBlanks asVariant
		transpose: transpose asVariant
		rhs: answer.
	^answer asObject
!

PasteSpecial: paste operation: operation skipBlanks: skipBlanks transpose: transpose rhs: rhs
	"Private - Invoke the PasteSpecial() method of the COM object.

		HRESULT __stdcall PasteSpecial(
			[in, defaultvalue(-4104)]XlPasteType Paste,
			[in, defaultvalue(-4142)]XlPasteSpecialOperation Operation,
			[in, optional]VARIANT SkipBlanks,
			[in, optional]VARIANT Transpose,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 209 sdword sdword variant variant variant*>
	^self invalidCall!

phonetic
	"Answer the <ExcelPhonetic> value of the 'Phonetic' property of the receiver."

	| answer |
	answer := ExcelPhonetic newPointer.
	self get_Phonetic: answer.
	^answer asObject
!

phonetics
	"Answer the <ExcelPhonetics> value of the 'Phonetics' property of the receiver."

	| answer |
	answer := ExcelPhonetics newPointer.
	self get_Phonetics: answer.
	^answer asObject
!

pivotCell
	"Answer the <ExcelPivotCell> value of the 'PivotCell' property of the receiver."

	| answer |
	answer := ExcelPivotCell newPointer.
	self get_PivotCell: answer.
	^answer asObject
!

pivotField
	"Answer the <ExcelPivotField> value of the 'PivotField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_PivotField: answer.
	^answer asObject
!

pivotItem
	"Answer the <ExcelPivotItem> value of the 'PivotItem' property of the receiver."

	| answer |
	answer := ExcelPivotItem newPointer.
	self get_PivotItem: answer.
	^answer asObject
!

pivotTable
	"Answer the <ExcelPivotTable> value of the 'PivotTable' property of the receiver."

	| answer |
	answer := ExcelPivotTable newPointer.
	self get_PivotTable: answer.
	^answer asObject
!

precedents
	"Answer the <ExcelRange> value of the 'Precedents' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Precedents: answer.
	^answer asObject
!

prefixCharacter
	"Answer the <variant> value of the 'PrefixCharacter' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_PrefixCharacter: answer.
	^answer asObject
!

previous
	"Answer the <ExcelRange> value of the 'Previous' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Previous: answer.
	^answer asObject
!

printOut
	"Answer the <VARIANT> result of invoking the PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName
	"Answer the <VARIANT> result of invoking the PrintOut() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		prToFileName: prToFileName asVariant
		rhs: answer.
	^answer asObject
!

PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName rhs: rhs
	"Private - Invoke the PrintOut() method of the COM object.

		HRESULT __stdcall PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 215 variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

printPreview
	"Answer the <VARIANT> result of invoking the PrintPreview() method of the COM object.
	Default values are passed for all optional parameters."

	^self printPreview: VARIANT unspecified!

printPreview: enableChanges
	"Answer the <VARIANT> result of invoking the PrintPreview() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		PrintPreview: enableChanges asVariant
		rhs: answer.
	^answer asObject
!

PrintPreview: enableChanges rhs: rhs
	"Private - Invoke the PrintPreview() method of the COM object.

		HRESULT __stdcall PrintPreview(
			[in, optional]VARIANT EnableChanges,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 141 variant variant*>
	^self invalidCall!

put__Default: rowIndex columnIndex: columnIndex lcid: lcid rhs: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall _Default(
			[in, optional]VARIANT RowIndex,
			[in, optional]VARIANT ColumnIndex,
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 54 variant variant sdword variant>
	^self invalidCall!

put_AddIndent: rhs
	"Private - Set the value of the 'AddIndent' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall AddIndent(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 13 variant>
	^self invalidCall!

put_ColumnWidth: rhs
	"Private - Set the value of the 'ColumnWidth' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ColumnWidth(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 41 variant>
	^self invalidCall!

put_Formula: lcid rhs: rhs
	"Private - Set the value of the 'Formula' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Formula(
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 73 sdword variant>
	^self invalidCall!

put_FormulaArray: rhs
	"Private - Set the value of the 'FormulaArray' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FormulaArray(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 75 variant>
	^self invalidCall!

put_FormulaHidden: rhs
	"Private - Set the value of the 'FormulaHidden' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FormulaHidden(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 79 variant>
	^self invalidCall!

put_FormulaLabel: rhs
	"Private - Set the value of the 'FormulaLabel' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall FormulaLabel(
			[in]XlFormulaLabel RHS);"

	<virtual stdcall: hresult 77 sdword>
	^self invalidCall!

put_FormulaLocal: rhs
	"Private - Set the value of the 'FormulaLocal' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FormulaLocal(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 81 variant>
	^self invalidCall!

put_FormulaR1C1: lcid rhs: rhs
	"Private - Set the value of the 'FormulaR1C1' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FormulaR1C1(
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 83 sdword variant>
	^self invalidCall!

put_FormulaR1C1Local: rhs
	"Private - Set the value of the 'FormulaR1C1Local' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FormulaR1C1Local(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 85 variant>
	^self invalidCall!

put_Hidden: rhs
	"Private - Set the value of the 'Hidden' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Hidden(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 93 variant>
	^self invalidCall!

put_HorizontalAlignment: rhs
	"Private - Set the value of the 'HorizontalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall HorizontalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 95 variant>
	^self invalidCall!

put_ID: rhs
	"Private - Set the value of the 'ID' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ID(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 202 bstr>
	^self invalidCall!

put_IndentLevel: rhs
	"Private - Set the value of the 'IndentLevel' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall IndentLevel(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 97 variant>
	^self invalidCall!

put_Item: rowIndex columnIndex: columnIndex lcid: lcid rhs: rhs
	"Private - Set the value of the 'Item' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Item(
			[in]VARIANT RowIndex,
			[in, optional]VARIANT ColumnIndex,
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 102 variant variant sdword variant>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 109 variant>
	^self invalidCall!

put_MergeCells: rhs
	"Private - Set the value of the 'MergeCells' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall MergeCells(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 114 variant>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Name(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 116 variant>
	^self invalidCall!

put_NumberFormat: rhs
	"Private - Set the value of the 'NumberFormat' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall NumberFormat(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 122 variant>
	^self invalidCall!

put_NumberFormatLocal: rhs
	"Private - Set the value of the 'NumberFormatLocal' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall NumberFormatLocal(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 124 variant>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 127 variant>
	^self invalidCall!

put_OutlineLevel: rhs
	"Private - Set the value of the 'OutlineLevel' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall OutlineLevel(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 129 variant>
	^self invalidCall!

put_PageBreak: rhs
	"Private - Set the value of the 'PageBreak' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PageBreak(
			[in]long RHS);"

	<virtual stdcall: hresult 131 sdword>
	^self invalidCall!

put_ReadingOrder: rhs
	"Private - Set the value of the 'ReadingOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ReadingOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 197 sdword>
	^self invalidCall!

put_RowHeight: rhs
	"Private - Set the value of the 'RowHeight' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall RowHeight(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 150 variant>
	^self invalidCall!

put_ShowDetail: rhs
	"Private - Set the value of the 'ShowDetail' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ShowDetail(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 157 variant>
	^self invalidCall!

put_ShrinkToFit: rhs
	"Private - Set the value of the 'ShrinkToFit' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ShrinkToFit(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 161 variant>
	^self invalidCall!

put_Style: rhs
	"Private - Set the value of the 'Style' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Style(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 167 variant>
	^self invalidCall!

put_UseStandardHeight: rhs
	"Private - Set the value of the 'UseStandardHeight' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall UseStandardHeight(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 177 variant>
	^self invalidCall!

put_UseStandardWidth: rhs
	"Private - Set the value of the 'UseStandardWidth' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall UseStandardWidth(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 179 variant>
	^self invalidCall!

put_Value: rangeValueDataType lcid: lcid rhs: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Value(
			[in, optional]VARIANT RangeValueDataType,
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 182 variant sdword variant>
	^self invalidCall!

put_Value2: lcid rhs: rhs
	"Private - Set the value of the 'Value2' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Value2(
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 184 sdword variant>
	^self invalidCall!

put_VerticalAlignment: rhs
	"Private - Set the value of the 'VerticalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall VerticalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 186 variant>
	^self invalidCall!

put_WrapText: rhs
	"Private - Set the value of the 'WrapText' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall WrapText(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 190 variant>
	^self invalidCall!

queryTable
	"Answer the <Excel_QueryTable> value of the 'QueryTable' property of the receiver."

	| answer |
	answer := Excel_QueryTable newPointer.
	self get_QueryTable: answer.
	^answer asObject
!

range: cell1
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	^self
		 range: cell1
		 cell2: VARIANT unspecified!

range: cell1 cell2: cell2
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self
		get_Range: cell1 asVariant
		cell2: cell2 asVariant
		rhs: answer.
	^answer asObject
!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ReadingOrder: answer.
	^answer asObject
!

readingOrder: rhs
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument."

	self put_ReadingOrder: rhs
!

removeDuplicates
	"Invoke the RemoveDuplicates() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 removeDuplicates: VARIANT unspecified
		 header: 2!

removeDuplicates: columns header: header
	"Invoke the RemoveDuplicates() method of the COM object."

	^self
		RemoveDuplicates: columns asVariant
		header: header
!

RemoveDuplicates: columns header: header
	"Private - Invoke the RemoveDuplicates() method of the COM object.

		HRESULT __stdcall RemoveDuplicates(
			[in, optional]VARIANT Columns,
			[in, defaultvalue(2)]XlYesNoGuess Header);"

	<virtual stdcall: hresult 214 variant sdword>
	^self invalidCall!

removeSubtotal
	"Answer the <VARIANT> result of invoking the RemoveSubtotal() method of the COM object."

	| answer |
	answer := VARIANT new.
	self RemoveSubtotal: answer.
	^answer asObject
!

RemoveSubtotal: rhs
	"Private - Invoke the RemoveSubtotal() method of the COM object.

		HRESULT __stdcall RemoveSubtotal(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 144 variant*>
	^self invalidCall!

replace: what replacement: replacement
	"Answer the <VARIANT_BOOL> result of invoking the Replace() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 replace: what
		 replacement: replacement
		 lookAt: VARIANT unspecified
		 searchOrder: VARIANT unspecified
		 matchCase: VARIANT unspecified
		 matchByte: VARIANT unspecified
		 searchFormat: VARIANT unspecified
		 replaceFormat: VARIANT unspecified!

replace: what replacement: replacement lookAt: lookAt searchOrder: searchOrder matchCase: matchCase matchByte: matchByte searchFormat: searchFormat replaceFormat: replaceFormat
	"Answer the <VARIANT_BOOL> result of invoking the Replace() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		Replace: what asVariant
		replacement: replacement asVariant
		lookAt: lookAt asVariant
		searchOrder: searchOrder asVariant
		matchCase: matchCase asVariant
		matchByte: matchByte asVariant
		searchFormat: searchFormat asVariant
		replaceFormat: replaceFormat asVariant
		rhs: answer.
	^answer asObject
!

Replace: what replacement: replacement lookAt: lookAt searchOrder: searchOrder matchCase: matchCase matchByte: matchByte searchFormat: searchFormat replaceFormat: replaceFormat rhs: rhs
	"Private - Invoke the Replace() method of the COM object.

		HRESULT __stdcall Replace(
			[in]VARIANT What,
			[in]VARIANT Replacement,
			[in, optional]VARIANT LookAt,
			[in, optional]VARIANT SearchOrder,
			[in, optional]VARIANT MatchCase,
			[in, optional]VARIANT MatchByte,
			[in, optional]VARIANT SearchFormat,
			[in, optional]VARIANT ReplaceFormat,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 145 variant variant variant variant variant variant variant variant varbool*>
	^self invalidCall!

resize
	"Answer the <ExcelRange> value of the 'Resize' property of the receiver."

	^self
		 resize: VARIANT unspecified
		 columnSize: VARIANT unspecified!

resize: rowSize columnSize: columnSize
	"Answer the <ExcelRange> value of the 'Resize' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self
		get_Resize: rowSize asVariant
		columnSize: columnSize asVariant
		rhs: answer.
	^answer asObject
!

row
	"Answer the <sdword> value of the 'Row' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Row: answer.
	^answer asObject
!

rowDifferences: comparison
	"Answer the <ExcelRange> result of invoking the RowDifferences() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		RowDifferences: comparison asVariant
		rhs: answer.
	^answer asObject
!

RowDifferences: comparison rhs: rhs
	"Private - Invoke the RowDifferences() method of the COM object.

		HRESULT __stdcall RowDifferences(
			[in]VARIANT Comparison,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 148 variant ExcelRange**>
	^self invalidCall!

rowHeight
	"Answer the <variant> value of the 'RowHeight' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_RowHeight: answer.
	^answer asObject
!

rowHeight: rhs
	"Set the 'RowHeight' property of the receiver to the <variant> value of the argument."

	self put_RowHeight: rhs asVariant
!

rows
	"Answer the <ExcelRange> value of the 'Rows' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Rows: answer.
	^answer asObject
!

run
	"Answer the <VARIANT> result of invoking the Run() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 run: VARIANT unspecified
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

run: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT> result of invoking the Run() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Run: arg1 asVariant
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

Run: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Run() method of the COM object.

		HRESULT __stdcall Run(
			[in, optional]VARIANT Arg1,
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

	<virtual stdcall: hresult 152 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Select: answer.
	^answer asObject
!

Select: rhs
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 153 variant*>
	^self invalidCall!

serverActions
	"Answer the <ExcelActions> value of the 'ServerActions' property of the receiver."

	| answer |
	answer := ExcelActions newPointer.
	self get_ServerActions: answer.
	^answer asObject
!

setPhonetic
	"Invoke the SetPhonetic() method of the COM object."

	^self SetPhonetic
!

SetPhonetic
	"Private - Invoke the SetPhonetic() method of the COM object.

		HRESULT __stdcall SetPhonetic();"

	<virtual stdcall: hresult 200>
	^self invalidCall!

show
	"Answer the <VARIANT> result of invoking the Show() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Show: answer.
	^answer asObject
!

Show: rhs
	"Private - Invoke the Show() method of the COM object.

		HRESULT __stdcall Show(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 154 variant*>
	^self invalidCall!

showDependents
	"Answer the <VARIANT> result of invoking the ShowDependents() method of the COM object.
	Default values are passed for all optional parameters."

	^self showDependents: VARIANT unspecified!

showDependents: remove
	"Answer the <VARIANT> result of invoking the ShowDependents() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ShowDependents: remove asVariant
		rhs: answer.
	^answer asObject
!

ShowDependents: remove rhs: rhs
	"Private - Invoke the ShowDependents() method of the COM object.

		HRESULT __stdcall ShowDependents(
			[in, optional]VARIANT Remove,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 155 variant variant*>
	^self invalidCall!

showDetail
	"Answer the <variant> value of the 'ShowDetail' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ShowDetail: answer.
	^answer asObject
!

showDetail: rhs
	"Set the 'ShowDetail' property of the receiver to the <variant> value of the argument."

	self put_ShowDetail: rhs asVariant
!

showErrors
	"Answer the <VARIANT> result of invoking the ShowErrors() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ShowErrors: answer.
	^answer asObject
!

ShowErrors: rhs
	"Private - Invoke the ShowErrors() method of the COM object.

		HRESULT __stdcall ShowErrors(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 158 variant*>
	^self invalidCall!

showPrecedents
	"Answer the <VARIANT> result of invoking the ShowPrecedents() method of the COM object.
	Default values are passed for all optional parameters."

	^self showPrecedents: VARIANT unspecified!

showPrecedents: remove
	"Answer the <VARIANT> result of invoking the ShowPrecedents() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ShowPrecedents: remove asVariant
		rhs: answer.
	^answer asObject
!

ShowPrecedents: remove rhs: rhs
	"Private - Invoke the ShowPrecedents() method of the COM object.

		HRESULT __stdcall ShowPrecedents(
			[in, optional]VARIANT Remove,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 159 variant variant*>
	^self invalidCall!

shrinkToFit
	"Answer the <variant> value of the 'ShrinkToFit' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ShrinkToFit: answer.
	^answer asObject
!

shrinkToFit: rhs
	"Set the 'ShrinkToFit' property of the receiver to the <variant> value of the argument."

	self put_ShrinkToFit: rhs asVariant
!

smartTags
	"Answer the <ExcelSmartTags> value of the 'SmartTags' property of the receiver."

	| answer |
	answer := ExcelSmartTags newPointer.
	self get_SmartTags: answer.
	^answer asObject
!

sort
	"Answer the <VARIANT> result of invoking the Sort() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sort: VARIANT unspecified
		 order1: 1
		 key2: VARIANT unspecified
		 type: VARIANT unspecified
		 order2: 1
		 key3: VARIANT unspecified
		 order3: 1
		 header: 2
		 orderCustom: VARIANT unspecified
		 matchCase: VARIANT unspecified
		 orientation: 2
		 sortMethod: 1
		 dataOption1: 0
		 dataOption2: 0
		 dataOption3: 0!

sort: key1 order1: order1 key2: key2 type: type order2: order2 key3: key3 order3: order3 header: header orderCustom: orderCustom matchCase: matchCase orientation: orientation sortMethod: sortMethod dataOption1: dataOption1 dataOption2: dataOption2 dataOption3: dataOption3
	"Answer the <VARIANT> result of invoking the Sort() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Sort: key1 asVariant
		order1: order1
		key2: key2 asVariant
		type: type asVariant
		order2: order2
		key3: key3 asVariant
		order3: order3
		header: header
		orderCustom: orderCustom asVariant
		matchCase: matchCase asVariant
		orientation: orientation
		sortMethod: sortMethod
		dataOption1: dataOption1
		dataOption2: dataOption2
		dataOption3: dataOption3
		rhs: answer.
	^answer asObject
!

Sort: key1 order1: order1 key2: key2 type: type order2: order2 key3: key3 order3: order3 header: header orderCustom: orderCustom matchCase: matchCase orientation: orientation sortMethod: sortMethod dataOption1: dataOption1 dataOption2: dataOption2 dataOption3: dataOption3 rhs: rhs
	"Private - Invoke the Sort() method of the COM object.

		HRESULT __stdcall Sort(
			[in, optional]VARIANT Key1,
			[in, defaultvalue(1)]XlSortOrder Order1,
			[in, optional]VARIANT Key2,
			[in, optional]VARIANT Type,
			[in, defaultvalue(1)]XlSortOrder Order2,
			[in, optional]VARIANT Key3,
			[in, defaultvalue(1)]XlSortOrder Order3,
			[in, defaultvalue(2)]XlYesNoGuess Header,
			[in, optional]VARIANT OrderCustom,
			[in, optional]VARIANT MatchCase,
			[in, defaultvalue(2)]XlSortOrientation Orientation,
			[in, defaultvalue(1)]XlSortMethod SortMethod,
			[in, defaultvalue(0)]XlSortDataOption DataOption1,
			[in, defaultvalue(0)]XlSortDataOption DataOption2,
			[in, defaultvalue(0)]XlSortDataOption DataOption3,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 162 variant sdword variant variant sdword variant sdword sdword variant variant sdword sdword sdword sdword sdword variant*>
	^self invalidCall!

sortSpecial
	"Answer the <VARIANT> result of invoking the SortSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sortSpecial: 1
		 key1: VARIANT unspecified
		 order1: 1
		 type: VARIANT unspecified
		 key2: VARIANT unspecified
		 order2: 1
		 key3: VARIANT unspecified
		 order3: 1
		 header: 2
		 orderCustom: VARIANT unspecified
		 matchCase: VARIANT unspecified
		 orientation: 2
		 dataOption1: 0
		 dataOption2: 0
		 dataOption3: 0!

sortSpecial: sortMethod key1: key1 order1: order1 type: type key2: key2 order2: order2 key3: key3 order3: order3 header: header orderCustom: orderCustom matchCase: matchCase orientation: orientation dataOption1: dataOption1 dataOption2: dataOption2 dataOption3: dataOption3
	"Answer the <VARIANT> result of invoking the SortSpecial() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		SortSpecial: sortMethod
		key1: key1 asVariant
		order1: order1
		type: type asVariant
		key2: key2 asVariant
		order2: order2
		key3: key3 asVariant
		order3: order3
		header: header
		orderCustom: orderCustom asVariant
		matchCase: matchCase asVariant
		orientation: orientation
		dataOption1: dataOption1
		dataOption2: dataOption2
		dataOption3: dataOption3
		rhs: answer.
	^answer asObject
!

SortSpecial: sortMethod key1: key1 order1: order1 type: type key2: key2 order2: order2 key3: key3 order3: order3 header: header orderCustom: orderCustom matchCase: matchCase orientation: orientation dataOption1: dataOption1 dataOption2: dataOption2 dataOption3: dataOption3 rhs: rhs
	"Private - Invoke the SortSpecial() method of the COM object.

		HRESULT __stdcall SortSpecial(
			[in, defaultvalue(1)]XlSortMethod SortMethod,
			[in, optional]VARIANT Key1,
			[in, defaultvalue(1)]XlSortOrder Order1,
			[in, optional]VARIANT Type,
			[in, optional]VARIANT Key2,
			[in, defaultvalue(1)]XlSortOrder Order2,
			[in, optional]VARIANT Key3,
			[in, defaultvalue(1)]XlSortOrder Order3,
			[in, defaultvalue(2)]XlYesNoGuess Header,
			[in, optional]VARIANT OrderCustom,
			[in, optional]VARIANT MatchCase,
			[in, defaultvalue(2)]XlSortOrientation Orientation,
			[in, defaultvalue(0)]XlSortDataOption DataOption1,
			[in, defaultvalue(0)]XlSortDataOption DataOption2,
			[in, defaultvalue(0)]XlSortDataOption DataOption3,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 163 sdword variant sdword variant variant sdword variant sdword sdword variant variant sdword sdword sdword sdword variant*>
	^self invalidCall!

soundNote
	"Answer the <ExcelSoundNote> value of the 'SoundNote' property of the receiver."

	| answer |
	answer := ExcelSoundNote newPointer.
	self get_SoundNote: answer.
	^answer asObject
!

speak
	"Invoke the Speak() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 speak: VARIANT unspecified
		 speakFormulas: VARIANT unspecified!

speak: speakDirection speakFormulas: speakFormulas
	"Invoke the Speak() method of the COM object."

	^self
		Speak: speakDirection asVariant
		speakFormulas: speakFormulas asVariant
!

Speak: speakDirection speakFormulas: speakFormulas
	"Private - Invoke the Speak() method of the COM object.

		HRESULT __stdcall Speak(
			[in, optional]VARIANT SpeakDirection,
			[in, optional]VARIANT SpeakFormulas);"

	<virtual stdcall: hresult 208 variant variant>
	^self invalidCall!

specialCells: type
	"Answer the <ExcelRange> result of invoking the SpecialCells() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 specialCells: type
		 value: VARIANT unspecified!

specialCells: type value: value
	"Answer the <ExcelRange> result of invoking the SpecialCells() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		SpecialCells: type
		value: value asVariant
		rhs: answer.
	^answer asObject
!

SpecialCells: type value: value rhs: rhs
	"Private - Invoke the SpecialCells() method of the COM object.

		HRESULT __stdcall SpecialCells(
			[in]XlCellType Type,
			[in, optional]VARIANT Value,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 165 sdword variant ExcelRange**>
	^self invalidCall!

style
	"Answer the <variant> value of the 'Style' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Style: answer.
	^answer asObject
!

style: rhs
	"Set the 'Style' property of the receiver to the <variant> value of the argument."

	self put_Style: rhs asVariant
!

subscribeTo: edition
	"Answer the <VARIANT> result of invoking the SubscribeTo() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 subscribeTo: edition
		 format: -4158!

subscribeTo: edition format: format
	"Answer the <VARIANT> result of invoking the SubscribeTo() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		SubscribeTo: edition
		format: format
		rhs: answer.
	^answer asObject
!

SubscribeTo: edition format: format rhs: rhs
	"Private - Invoke the SubscribeTo() method of the COM object.

		HRESULT __stdcall SubscribeTo(
			[in]BSTR Edition,
			[in, defaultvalue(-4158)]XlSubscribeToFormat Format,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 168 bstr sdword variant*>
	^self invalidCall!

subtotal: groupBy function: function totalList: totalList
	"Answer the <VARIANT> result of invoking the Subtotal() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 subtotal: groupBy
		 function: function
		 totalList: totalList
		 replace: VARIANT unspecified
		 pageBreaks: VARIANT unspecified
		 summaryBelowData: 1!

subtotal: groupBy function: function totalList: totalList replace: replace pageBreaks: pageBreaks summaryBelowData: summaryBelowData
	"Answer the <VARIANT> result of invoking the Subtotal() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Subtotal: groupBy
		function: function
		totalList: totalList asVariant
		replace: replace asVariant
		pageBreaks: pageBreaks asVariant
		summaryBelowData: summaryBelowData
		rhs: answer.
	^answer asObject
!

Subtotal: groupBy function: function totalList: totalList replace: replace pageBreaks: pageBreaks summaryBelowData: summaryBelowData rhs: rhs
	"Private - Invoke the Subtotal() method of the COM object.

		HRESULT __stdcall Subtotal(
			[in]long GroupBy,
			[in]XlConsolidationFunction Function,
			[in]VARIANT TotalList,
			[in, optional]VARIANT Replace,
			[in, optional]VARIANT PageBreaks,
			[in, defaultvalue(1)]XlSummaryRow SummaryBelowData,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 169 sdword sdword variant variant variant sdword variant*>
	^self invalidCall!

summary
	"Answer the <variant> value of the 'Summary' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Summary: answer.
	^answer asObject
!

table
	"Answer the <VARIANT> result of invoking the Table() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 table: VARIANT unspecified
		 columnInput: VARIANT unspecified!

table: rowInput columnInput: columnInput
	"Answer the <VARIANT> result of invoking the Table() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Table: rowInput asVariant
		columnInput: columnInput asVariant
		rhs: answer.
	^answer asObject
!

Table: rowInput columnInput: columnInput rhs: rhs
	"Private - Invoke the Table() method of the COM object.

		HRESULT __stdcall Table(
			[in, optional]VARIANT RowInput,
			[in, optional]VARIANT ColumnInput,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 171 variant variant variant*>
	^self invalidCall!

text
	"Answer the <variant> value of the 'Text' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Text: answer.
	^answer asObject
!

textToColumns
	"Answer the <VARIANT> result of invoking the TextToColumns() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 textToColumns: VARIANT unspecified
		 dataType: 1
		 textQualifier: 1
		 consecutiveDelimiter: VARIANT unspecified
		 tab: VARIANT unspecified
		 semicolon: VARIANT unspecified
		 comma: VARIANT unspecified
		 space: VARIANT unspecified
		 other: VARIANT unspecified
		 otherChar: VARIANT unspecified
		 fieldInfo: VARIANT unspecified
		 decimalSeparator: VARIANT unspecified
		 thousandsSeparator: VARIANT unspecified
		 trailingMinusNumbers: VARIANT unspecified!

textToColumns: destination dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo decimalSeparator: decimalSeparator thousandsSeparator: thousandsSeparator trailingMinusNumbers: trailingMinusNumbers
	"Answer the <VARIANT> result of invoking the TextToColumns() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		TextToColumns: destination asVariant
		dataType: dataType
		textQualifier: textQualifier
		consecutiveDelimiter: consecutiveDelimiter asVariant
		tab: tab asVariant
		semicolon: semicolon asVariant
		comma: comma asVariant
		space: space asVariant
		other: other asVariant
		otherChar: otherChar asVariant
		fieldInfo: fieldInfo asVariant
		decimalSeparator: decimalSeparator asVariant
		thousandsSeparator: thousandsSeparator asVariant
		trailingMinusNumbers: trailingMinusNumbers asVariant
		rhs: answer.
	^answer asObject
!

TextToColumns: destination dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo decimalSeparator: decimalSeparator thousandsSeparator: thousandsSeparator trailingMinusNumbers: trailingMinusNumbers rhs: rhs
	"Private - Invoke the TextToColumns() method of the COM object.

		HRESULT __stdcall TextToColumns(
			[in, optional]VARIANT Destination,
			[in, defaultvalue(1)]XlTextParsingType DataType,
			[in, defaultvalue(1)]XlTextQualifier TextQualifier,
			[in, optional]VARIANT ConsecutiveDelimiter,
			[in, optional]VARIANT Tab,
			[in, optional]VARIANT Semicolon,
			[in, optional]VARIANT Comma,
			[in, optional]VARIANT Space,
			[in, optional]VARIANT Other,
			[in, optional]VARIANT OtherChar,
			[in, optional]VARIANT FieldInfo,
			[in, optional]VARIANT DecimalSeparator,
			[in, optional]VARIANT ThousandsSeparator,
			[in, optional]VARIANT TrailingMinusNumbers,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 173 variant sdword sdword variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

top
	"Answer the <variant> value of the 'Top' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Top: answer.
	^answer asObject
!

ungroup
	"Answer the <VARIANT> result of invoking the Ungroup() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Ungroup: answer.
	^answer asObject
!

Ungroup: rhs
	"Private - Invoke the Ungroup() method of the COM object.

		HRESULT __stdcall Ungroup(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 175 variant*>
	^self invalidCall!

unMerge
	"Invoke the UnMerge() method of the COM object."

	^self UnMerge
!

UnMerge
	"Private - Invoke the UnMerge() method of the COM object.

		HRESULT __stdcall UnMerge();"

	<virtual stdcall: hresult 111>
	^self invalidCall!

useStandardHeight
	"Answer the <variant> value of the 'UseStandardHeight' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_UseStandardHeight: answer.
	^answer asObject
!

useStandardHeight: rhs
	"Set the 'UseStandardHeight' property of the receiver to the <variant> value of the argument."

	self put_UseStandardHeight: rhs asVariant
!

useStandardWidth
	"Answer the <variant> value of the 'UseStandardWidth' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_UseStandardWidth: answer.
	^answer asObject
!

useStandardWidth: rhs
	"Set the 'UseStandardWidth' property of the receiver to the <variant> value of the argument."

	self put_UseStandardWidth: rhs asVariant
!

validation
	"Answer the <ExcelValidation> value of the 'Validation' property of the receiver."

	| answer |
	answer := ExcelValidation newPointer.
	self get_Validation: answer.
	^answer asObject
!

value: lcid
	"Answer the <variant> value of the 'Value' property of the receiver."

	^self
		 value: VARIANT unspecified
		 lcid: lcid!

value: rangeValueDataType lcid: lcid
	"Answer the <variant> value of the 'Value' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Value: rangeValueDataType asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

value: rangeValueDataType lcid: lcid rhs: rhs
	"Set the 'Value' property of the receiver to the <variant> value of the argument."

	self
		put_Value: rangeValueDataType asVariant
		lcid: lcid
		rhs: rhs asVariant
!

value2: lcid
	"Answer the <variant> value of the 'Value2' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Value2: lcid
		rhs: answer.
	^answer asObject
!

value2: lcid rhs: rhs
	"Set the 'Value2' property of the receiver to the <variant> value of the argument."

	self
		put_Value2: lcid
		rhs: rhs asVariant
!

verticalAlignment
	"Answer the <variant> value of the 'VerticalAlignment' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_VerticalAlignment: answer.
	^answer asObject
!

verticalAlignment: rhs
	"Set the 'VerticalAlignment' property of the receiver to the <variant> value of the argument."

	self put_VerticalAlignment: rhs asVariant
!

width
	"Answer the <variant> value of the 'Width' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Width: answer.
	^answer asObject
!

worksheet
	"Answer the <Excel_Worksheet> value of the 'Worksheet' property of the receiver."

	| answer |
	answer := Excel_Worksheet newPointer.
	self get_Worksheet: answer.
	^answer asObject
!

wrapText
	"Answer the <variant> value of the 'WrapText' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_WrapText: answer.
	^answer asObject
!

wrapText: rhs
	"Set the 'WrapText' property of the receiver to the <variant> value of the argument."

	self put_WrapText: rhs asVariant
!

xPath
	"Answer the <ExcelXPath> value of the 'XPath' property of the receiver."

	| answer |
	answer := ExcelXPath newPointer.
	self get_XPath: answer.
	^answer asObject
! !
!ExcelIRange categoriesFor: #__printOut!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #_default:columnIndex:lcid:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #_default:columnIndex:lcid:rhs:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #_pasteSpecial!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #_pasteSpecial:operation:skipBlanks:transpose:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #_PasteSpecial:operation:skipBlanks:transpose:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #_printOut!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Activate:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #addComment!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #addComment:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #AddComment:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #address:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #address:columnAbsolute:referenceStyle:external:relativeTo:lcid:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #addressLocal!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #addressLocal:columnAbsolute:referenceStyle:external:relativeTo:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #advancedFilter:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #advancedFilter:criteriaRange:copyToRange:unique:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #AdvancedFilter:criteriaRange:copyToRange:unique:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #allowEdit!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #applyNames!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #applyNames:ignoreRelativeAbsolute:useRowColumnNames:omitColumn:omitRow:order:appendLast:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ApplyNames:ignoreRelativeAbsolute:useRowColumnNames:omitColumn:omitRow:order:appendLast:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #applyOutlineStyles!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ApplyOutlineStyles:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #areas!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #autoComplete:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #AutoComplete:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #autoFill:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #autoFill:type:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #AutoFill:type:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #autoFilter!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #autoFilter:criteria1:operator:criteria2:visibleDropDown:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #AutoFilter:criteria1:operator:criteria2:visibleDropDown:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #autoFit!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #AutoFit:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #autoFormat!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #autoFormat:number:font:alignment:border:pattern:width:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #AutoFormat:number:font:alignment:border:pattern:width:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #autoOutline!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #AutoOutline:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #borderAround!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #borderAround:weight:colorIndex:color:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #BorderAround:weight:colorIndex:color:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #calculate!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Calculate:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #calculateRowMajorOrder!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #CalculateRowMajorOrder:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #cells!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Clear:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #clearComments!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ClearComments!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #clearContents!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ClearContents:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ClearFormats:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #clearNotes!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ClearNotes:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #clearOutline!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ClearOutline:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #column!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #columnDifferences:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ColumnDifferences:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #columns!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #columnWidth!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #columnWidth:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #comment!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #consolidate!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #consolidate:function:topRow:leftColumn:createLinks:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Consolidate:function:topRow:leftColumn:createLinks:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #copy:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Copy:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #copyFromRecordset:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #copyFromRecordset:maxRows:maxColumns:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #CopyFromRecordset:maxRows:maxColumns:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #CopyPicture:format:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #countLarge!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #createNames!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #createNames:left:bottom:right:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #CreateNames:left:bottom:right:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #createPublisher!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #createPublisher:appearance:containsPICT:containsBIFF:containsRTF:containsVALU:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #CreatePublisher:appearance:containsPICT:containsBIFF:containsRTF:containsVALU:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #currentArray!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #currentRegion!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #cut:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Cut:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #dataSeries!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #dataSeries:type:date:step:stop:trend:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #DataSeries:type:date:step:stop:trend:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #delete:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Delete:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #dependents_!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #dialogBox!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #DialogBox:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #directDependents!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #directPrecedents!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #dirty!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Dirty!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #editionOptions:option:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #editionOptions:option:name:reference:appearance:chartSize:format:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #EditionOptions:option:name:reference:appearance:chartSize:format:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #end:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #entireColumn!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #entireRow!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #errors!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #exportAsFixedFormat:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #exportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ExportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #fillDown!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #FillDown:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #fillLeft!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #FillLeft:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #fillRight!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #FillRight:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #fillUp!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #FillUp:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #find:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #find:after:lookIn:lookAt:searchOrder:searchDirection:matchCase:matchByte:searchFormat:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Find:after:lookIn:lookAt:searchOrder:searchDirection:matchCase:matchByte:searchFormat:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #findNext!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #findNext:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #FindNext:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #findPrevious!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #findPrevious:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #FindPrevious:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formatConditions!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formula:rhs:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaArray!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaArray:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaHidden!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaHidden:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaLabel!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaLabel:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaLocal!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaLocal:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaR1C1:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaR1C1:rhs:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaR1C1Local!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #formulaR1C1Local:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #functionWizard!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #FunctionWizard:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get__Default:columnIndex:lcid:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_AddIndent:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Address:columnAbsolute:referenceStyle:external:relativeTo:lcid:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_AddressLocal:columnAbsolute:referenceStyle:external:relativeTo:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_AllowEdit:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Areas:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Borders:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Cells:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Characters:length:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Column:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Columns:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_ColumnWidth:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Comment:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_CountLarge:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_CurrentArray:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_CurrentRegion:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Dependents:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_DirectDependents:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_DirectPrecedents:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_End:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_EntireColumn:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_EntireRow:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Errors:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_FormatConditions:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Formula:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_FormulaArray:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_FormulaHidden:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_FormulaLabel:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_FormulaLocal:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_FormulaR1C1:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_FormulaR1C1Local:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_HasArray:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_HasFormula:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Hidden:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_HorizontalAlignment:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Hyperlinks:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_ID:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_IndentLevel:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Item:columnIndex:lcid:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_ListHeaderRows:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_ListObject:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_LocationInTable:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_MDX:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_MergeArea:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_MergeCells:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Next:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_NumberFormat:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_NumberFormatLocal:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Offset:columnOffset:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_OutlineLevel:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_PageBreak:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Phonetic:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Phonetics:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_PivotCell:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_PivotField:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_PivotItem:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_PivotTable:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Precedents:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_PrefixCharacter:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Previous:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_QueryTable:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Range:cell2:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_ReadingOrder:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Resize:columnSize:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Row:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_RowHeight:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Rows:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_ServerActions:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_ShowDetail:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_ShrinkToFit:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_SmartTags:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_SoundNote:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Style:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Summary:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_UseStandardHeight:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_UseStandardWidth:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Validation:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Value:lcid:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Value2:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_VerticalAlignment:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_Worksheet:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_WrapText:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #get_XPath:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #goalSeek:changingCell:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #GoalSeek:changingCell:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #group!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #group:end:by:periods:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Group:end:by:periods:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #hasArray!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #hasFormula!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #hidden!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #hidden:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #hyperlinks!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #id!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #id:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #indentLevel!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #indentLevel:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #insert!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #insert:copyOrigin:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Insert:copyOrigin:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #insertIndent:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #InsertIndent:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIRange categoriesFor: #item:columnIndex:lcid:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #item:columnIndex:lcid:rhs:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #item:lcid:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #justify!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Justify:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #listHeaderRows!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #listNames!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ListNames:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #listObject!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #locationInTable!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #mdx!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #merge!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #merge:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Merge:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #mergeArea!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #mergeCells!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #mergeCells:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #navigateArrow!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #navigateArrow:arrowNumber:linkNumber:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #NavigateArrow:arrowNumber:linkNumber:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #next!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #noteText!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #noteText:start:length:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #NoteText:start:length:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #offset!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #offset:columnOffset:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #outlineLevel!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #outlineLevel:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #pageBreak!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #pageBreak:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #parse!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #parse:destination:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Parse:destination:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #pasteSpecial!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #pasteSpecial:operation:skipBlanks:transpose:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #PasteSpecial:operation:skipBlanks:transpose:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #phonetic!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #phonetics!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #pivotCell!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #pivotField!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #pivotItem!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #pivotTable!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #precedents!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #prefixCharacter!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #previous!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #printOut!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #printPreview!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #printPreview:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #PrintPreview:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put__Default:columnIndex:lcid:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_AddIndent:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_ColumnWidth:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Formula:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_FormulaArray:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_FormulaHidden:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_FormulaLabel:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_FormulaLocal:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_FormulaR1C1:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_FormulaR1C1Local:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Hidden:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_HorizontalAlignment:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_ID:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_IndentLevel:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Item:columnIndex:lcid:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_MergeCells:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_NumberFormat:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_NumberFormatLocal:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_OutlineLevel:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_PageBreak:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_ReadingOrder:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_RowHeight:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_ShowDetail:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_ShrinkToFit:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Style:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_UseStandardHeight:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_UseStandardWidth:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Value:lcid:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_Value2:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_VerticalAlignment:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #put_WrapText:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #queryTable!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #range:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #range:cell2:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #removeDuplicates!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #removeDuplicates:header:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #RemoveDuplicates:header:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #removeSubtotal!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #RemoveSubtotal:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #replace:replacement:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #replace:replacement:lookAt:searchOrder:matchCase:matchByte:searchFormat:replaceFormat:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Replace:replacement:lookAt:searchOrder:matchCase:matchByte:searchFormat:replaceFormat:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #resize!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #resize:columnSize:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #row!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #rowDifferences:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #RowDifferences:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #rowHeight!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #rowHeight:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #rows!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #run!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #run:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Run:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Select:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #serverActions!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #setPhonetic!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #SetPhonetic!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #show!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Show:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #showDependents!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #showDependents:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ShowDependents:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #showDetail!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #showDetail:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #showErrors!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ShowErrors:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #showPrecedents!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #showPrecedents:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #ShowPrecedents:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #shrinkToFit!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #shrinkToFit:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #smartTags!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #sort!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #sort:order1:key2:type:order2:key3:order3:header:orderCustom:matchCase:orientation:sortMethod:dataOption1:dataOption2:dataOption3:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Sort:order1:key2:type:order2:key3:order3:header:orderCustom:matchCase:orientation:sortMethod:dataOption1:dataOption2:dataOption3:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #sortSpecial!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #sortSpecial:key1:order1:type:key2:order2:key3:order3:header:orderCustom:matchCase:orientation:dataOption1:dataOption2:dataOption3:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #SortSpecial:key1:order1:type:key2:order2:key3:order3:header:orderCustom:matchCase:orientation:dataOption1:dataOption2:dataOption3:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #soundNote!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #speak!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #speak:speakFormulas:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Speak:speakFormulas:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #specialCells:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #specialCells:value:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #SpecialCells:value:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #style!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #style:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #subscribeTo:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #subscribeTo:format:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #SubscribeTo:format:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #subtotal:function:totalList:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #subtotal:function:totalList:replace:pageBreaks:summaryBelowData:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Subtotal:function:totalList:replace:pageBreaks:summaryBelowData:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #summary!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #table!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #table:columnInput:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Table:columnInput:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #textToColumns!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #textToColumns:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:decimalSeparator:thousandsSeparator:trailingMinusNumbers:!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #TextToColumns:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:decimalSeparator:thousandsSeparator:trailingMinusNumbers:rhs:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #ungroup!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #Ungroup:!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #unMerge!**auto generated**!methods!public! !
!ExcelIRange categoriesFor: #UnMerge!**auto generated**!COM Interfaces-IRange!private! !
!ExcelIRange categoriesFor: #useStandardHeight!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #useStandardHeight:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #useStandardWidth!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #useStandardWidth:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #validation!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #value:lcid:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #value:lcid:rhs:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #value2:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #value2:rhs:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #worksheet!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #wrapText!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #wrapText:!**auto generated**!properties!public! !
!ExcelIRange categoriesFor: #xPath!**auto generated**!properties!public! !

!ExcelIRange class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRange'
		ExcelIRange defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Activate:
			argumentTypes: 'variant*';
		defineFunction: #get_AddIndent:
			argumentTypes: 'variant*';
		defineFunction: #put_AddIndent:
			argumentTypes: 'variant';
		defineFunction: #get_Address:columnAbsolute:referenceStyle:external:relativeTo:lcid:rhs:
			argumentTypes: 'variant variant sdword variant variant sdword bstr*';
		defineFunction: #get_AddressLocal:columnAbsolute:referenceStyle:external:relativeTo:rhs:
			argumentTypes: 'variant variant sdword variant variant bstr*';
		defineFunction: #AdvancedFilter:criteriaRange:copyToRange:unique:rhs:
			argumentTypes: 'sdword variant variant variant variant*';
		defineFunction: #ApplyNames:ignoreRelativeAbsolute:useRowColumnNames:omitColumn:omitRow:order:appendLast:rhs:
			argumentTypes: 'variant variant variant variant variant sdword variant variant*';
		defineFunction: #ApplyOutlineStyles:
			argumentTypes: 'variant*';
		defineFunction: #get_Areas:
			argumentTypes: 'ExcelAreas**';
		defineFunction: #AutoComplete:rhs:
			argumentTypes: 'bstr bstr*';
		defineFunction: #AutoFill:type:rhs:
			argumentTypes: 'ExcelRange* sdword variant*';
		defineFunction: #AutoFilter:criteria1:operator:criteria2:visibleDropDown:rhs:
			argumentTypes: 'variant variant sdword variant variant variant*';
		defineFunction: #AutoFit:
			argumentTypes: 'variant*';
		defineFunction: #AutoFormat:number:font:alignment:border:pattern:width:rhs:
			argumentTypes: 'sdword variant variant variant variant variant variant variant*';
		defineFunction: #AutoOutline:
			argumentTypes: 'variant*';
		defineFunction: #BorderAround:weight:colorIndex:color:rhs:
			argumentTypes: 'variant sdword sdword variant variant*';
		defineFunction: #get_Borders:
			argumentTypes: 'ExcelBorders**';
		defineFunction: #Calculate:
			argumentTypes: 'variant*';
		defineFunction: #get_Cells:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Characters:length:rhs:
			argumentTypes: 'variant variant ExcelCharacters**';
		defineFunction: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #Clear:
			argumentTypes: 'variant*';
		defineFunction: #ClearContents:
			argumentTypes: 'variant*';
		defineFunction: #ClearFormats:
			argumentTypes: 'variant*';
		defineFunction: #ClearNotes:
			argumentTypes: 'variant*';
		defineFunction: #ClearOutline:
			argumentTypes: 'variant*';
		defineFunction: #get_Column:
			argumentTypes: 'sdword*';
		defineFunction: #ColumnDifferences:rhs:
			argumentTypes: 'variant ExcelRange**';
		defineFunction: #get_Columns:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_ColumnWidth:
			argumentTypes: 'variant*';
		defineFunction: #put_ColumnWidth:
			argumentTypes: 'variant';
		defineFunction: #Consolidate:function:topRow:leftColumn:createLinks:rhs:
			argumentTypes: 'variant variant variant variant variant variant*';
		defineFunction: #Copy:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #CopyFromRecordset:maxRows:maxColumns:rhs:
			argumentTypes: 'IUnknown* variant variant sdword*';
		defineFunction: #CopyPicture:format:rhs:
			argumentTypes: 'sdword sdword variant*';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #CreateNames:left:bottom:right:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #CreatePublisher:appearance:containsPICT:containsBIFF:containsRTF:containsVALU:rhs:
			argumentTypes: 'variant sdword variant variant variant variant variant*';
		defineFunction: #get_CurrentArray:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_CurrentRegion:
			argumentTypes: 'ExcelRange**';
		defineFunction: #Cut:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #DataSeries:type:date:step:stop:trend:rhs:
			argumentTypes: 'variant sdword sdword variant variant variant variant*';
		defineFunction: #get__Default:columnIndex:lcid:rhs:
			argumentTypes: 'variant variant sdword variant*';
		defineFunction: #put__Default:columnIndex:lcid:rhs:
			argumentTypes: 'variant variant sdword variant';
		defineFunction: #Delete:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_Dependents:
			argumentTypes: 'ExcelRange**';
		defineFunction: #DialogBox:
			argumentTypes: 'variant*';
		defineFunction: #get_DirectDependents:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_DirectPrecedents:
			argumentTypes: 'ExcelRange**';
		defineFunction: #EditionOptions:option:name:reference:appearance:chartSize:format:rhs:
			argumentTypes: 'sdword sdword variant variant sdword sdword variant variant*';
		defineFunction: #get_End:rhs:
			argumentTypes: 'sdword ExcelRange**';
		defineFunction: #get_EntireColumn:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_EntireRow:
			argumentTypes: 'ExcelRange**';
		defineFunction: #FillDown:
			argumentTypes: 'variant*';
		defineFunction: #FillLeft:
			argumentTypes: 'variant*';
		defineFunction: #FillRight:
			argumentTypes: 'variant*';
		defineFunction: #FillUp:
			argumentTypes: 'variant*';
		defineFunction: #Find:after:lookIn:lookAt:searchOrder:searchDirection:matchCase:matchByte:searchFormat:rhs:
			argumentTypes: 'variant variant variant variant variant sdword variant variant variant ExcelRange**';
		defineFunction: #FindNext:rhs:
			argumentTypes: 'variant ExcelRange**';
		defineFunction: #FindPrevious:rhs:
			argumentTypes: 'variant ExcelRange**';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #get_Formula:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_Formula:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get_FormulaArray:
			argumentTypes: 'variant*';
		defineFunction: #put_FormulaArray:
			argumentTypes: 'variant';
		defineFunction: #get_FormulaLabel:
			argumentTypes: 'sdword*';
		defineFunction: #put_FormulaLabel:
			argumentTypes: 'sdword';
		defineFunction: #get_FormulaHidden:
			argumentTypes: 'variant*';
		defineFunction: #put_FormulaHidden:
			argumentTypes: 'variant';
		defineFunction: #get_FormulaLocal:
			argumentTypes: 'variant*';
		defineFunction: #put_FormulaLocal:
			argumentTypes: 'variant';
		defineFunction: #get_FormulaR1C1:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_FormulaR1C1:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get_FormulaR1C1Local:
			argumentTypes: 'variant*';
		defineFunction: #put_FormulaR1C1Local:
			argumentTypes: 'variant';
		defineFunction: #FunctionWizard:
			argumentTypes: 'variant*';
		defineFunction: #GoalSeek:changingCell:rhs:
			argumentTypes: 'variant ExcelRange* varbool*';
		defineFunction: #Group:end:by:periods:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get_HasArray:
			argumentTypes: 'variant*';
		defineFunction: #get_HasFormula:
			argumentTypes: 'variant*';
		defineFunction: #get_Height:
			argumentTypes: 'variant*';
		defineFunction: #get_Hidden:
			argumentTypes: 'variant*';
		defineFunction: #put_Hidden:
			argumentTypes: 'variant';
		defineFunction: #get_HorizontalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_HorizontalAlignment:
			argumentTypes: 'variant';
		defineFunction: #get_IndentLevel:
			argumentTypes: 'variant*';
		defineFunction: #put_IndentLevel:
			argumentTypes: 'variant';
		defineFunction: #InsertIndent:
			argumentTypes: 'sdword';
		defineFunction: #Insert:copyOrigin:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Item:columnIndex:lcid:rhs:
			argumentTypes: 'variant variant sdword variant*';
		defineFunction: #put_Item:columnIndex:lcid:rhs:
			argumentTypes: 'variant variant sdword variant';
		defineFunction: #Justify:
			argumentTypes: 'variant*';
		defineFunction: #get_Left:
			argumentTypes: 'variant*';
		defineFunction: #get_ListHeaderRows:
			argumentTypes: 'sdword*';
		defineFunction: #ListNames:
			argumentTypes: 'variant*';
		defineFunction: #get_LocationInTable:
			argumentTypes: 'sdword*';
		defineFunction: #get_Locked:
			argumentTypes: 'variant*';
		defineFunction: #put_Locked:
			argumentTypes: 'variant';
		defineFunction: #Merge:
			argumentTypes: 'variant';
		defineFunction: #UnMerge;
		defineFunction: #get_MergeArea:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_MergeCells:
			argumentTypes: 'variant*';
		defineFunction: #put_MergeCells:
			argumentTypes: 'variant';
		defineFunction: #get_Name:
			argumentTypes: 'variant*';
		defineFunction: #put_Name:
			argumentTypes: 'variant';
		defineFunction: #NavigateArrow:arrowNumber:linkNumber:rhs:
			argumentTypes: 'variant variant variant variant*';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Next:
			argumentTypes: 'ExcelRange**';
		defineFunction: #NoteText:start:length:rhs:
			argumentTypes: 'variant variant variant bstr*';
		defineFunction: #get_NumberFormat:
			argumentTypes: 'variant*';
		defineFunction: #put_NumberFormat:
			argumentTypes: 'variant';
		defineFunction: #get_NumberFormatLocal:
			argumentTypes: 'variant*';
		defineFunction: #put_NumberFormatLocal:
			argumentTypes: 'variant';
		defineFunction: #get_Offset:columnOffset:rhs:
			argumentTypes: 'variant variant ExcelRange**';
		defineFunction: #get_Orientation:
			argumentTypes: 'variant*';
		defineFunction: #put_Orientation:
			argumentTypes: 'variant';
		defineFunction: #get_OutlineLevel:
			argumentTypes: 'variant*';
		defineFunction: #put_OutlineLevel:
			argumentTypes: 'variant';
		defineFunction: #get_PageBreak:
			argumentTypes: 'sdword*';
		defineFunction: #put_PageBreak:
			argumentTypes: 'sdword';
		defineFunction: #Parse:destination:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #_PasteSpecial:operation:skipBlanks:transpose:rhs:
			argumentTypes: 'sdword sdword variant variant variant*';
		defineFunction: #get_PivotField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_PivotItem:
			argumentTypes: 'ExcelPivotItem**';
		defineFunction: #get_PivotTable:
			argumentTypes: 'ExcelPivotTable**';
		defineFunction: #get_Precedents:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_PrefixCharacter:
			argumentTypes: 'variant*';
		defineFunction: #get_Previous:
			argumentTypes: 'ExcelRange**';
		defineFunction: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant*';
		defineFunction: #PrintPreview:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_QueryTable:
			argumentTypes: 'Excel_QueryTable**';
		defineFunction: #get_Range:cell2:rhs:
			argumentTypes: 'variant variant ExcelRange**';
		defineFunction: #RemoveSubtotal:
			argumentTypes: 'variant*';
		defineFunction: #Replace:replacement:lookAt:searchOrder:matchCase:matchByte:searchFormat:replaceFormat:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant varbool*';
		defineFunction: #get_Resize:columnSize:rhs:
			argumentTypes: 'variant variant ExcelRange**';
		defineFunction: #get_Row:
			argumentTypes: 'sdword*';
		defineFunction: #RowDifferences:rhs:
			argumentTypes: 'variant ExcelRange**';
		defineFunction: #get_RowHeight:
			argumentTypes: 'variant*';
		defineFunction: #put_RowHeight:
			argumentTypes: 'variant';
		defineFunction: #get_Rows:
			argumentTypes: 'ExcelRange**';
		defineFunction: #Run:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #Show:
			argumentTypes: 'variant*';
		defineFunction: #ShowDependents:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_ShowDetail:
			argumentTypes: 'variant*';
		defineFunction: #put_ShowDetail:
			argumentTypes: 'variant';
		defineFunction: #ShowErrors:
			argumentTypes: 'variant*';
		defineFunction: #ShowPrecedents:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_ShrinkToFit:
			argumentTypes: 'variant*';
		defineFunction: #put_ShrinkToFit:
			argumentTypes: 'variant';
		defineFunction: #Sort:order1:key2:type:order2:key3:order3:header:orderCustom:matchCase:orientation:sortMethod:dataOption1:dataOption2:dataOption3:rhs:
			argumentTypes: 'variant sdword variant variant sdword variant sdword sdword variant variant sdword sdword sdword sdword sdword variant*';
		defineFunction: #SortSpecial:key1:order1:type:key2:order2:key3:order3:header:orderCustom:matchCase:orientation:dataOption1:dataOption2:dataOption3:rhs:
			argumentTypes: 'sdword variant sdword variant variant sdword variant sdword sdword variant variant sdword sdword sdword sdword variant*';
		defineFunction: #get_SoundNote:
			argumentTypes: 'ExcelSoundNote**';
		defineFunction: #SpecialCells:value:rhs:
			argumentTypes: 'sdword variant ExcelRange**';
		defineFunction: #get_Style:
			argumentTypes: 'variant*';
		defineFunction: #put_Style:
			argumentTypes: 'variant';
		defineFunction: #SubscribeTo:format:rhs:
			argumentTypes: 'bstr sdword variant*';
		defineFunction: #Subtotal:function:totalList:replace:pageBreaks:summaryBelowData:rhs:
			argumentTypes: 'sdword sdword variant variant variant sdword variant*';
		defineFunction: #get_Summary:
			argumentTypes: 'variant*';
		defineFunction: #Table:columnInput:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #get_Text:
			argumentTypes: 'variant*';
		defineFunction: #TextToColumns:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:decimalSeparator:thousandsSeparator:trailingMinusNumbers:rhs:
			argumentTypes: 'variant sdword sdword variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #get_Top:
			argumentTypes: 'variant*';
		defineFunction: #Ungroup:
			argumentTypes: 'variant*';
		defineFunction: #get_UseStandardHeight:
			argumentTypes: 'variant*';
		defineFunction: #put_UseStandardHeight:
			argumentTypes: 'variant';
		defineFunction: #get_UseStandardWidth:
			argumentTypes: 'variant*';
		defineFunction: #put_UseStandardWidth:
			argumentTypes: 'variant';
		defineFunction: #get_Validation:
			argumentTypes: 'ExcelValidation**';
		defineFunction: #get_Value:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #put_Value:lcid:rhs:
			argumentTypes: 'variant sdword variant';
		defineFunction: #get_Value2:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_Value2:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get_VerticalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_VerticalAlignment:
			argumentTypes: 'variant';
		defineFunction: #get_Width:
			argumentTypes: 'variant*';
		defineFunction: #get_Worksheet:
			argumentTypes: 'Excel_Worksheet**';
		defineFunction: #get_WrapText:
			argumentTypes: 'variant*';
		defineFunction: #put_WrapText:
			argumentTypes: 'variant';
		defineFunction: #AddComment:rhs:
			argumentTypes: 'variant ExcelComment**';
		defineFunction: #get_Comment:
			argumentTypes: 'ExcelComment**';
		defineFunction: #ClearComments;
		defineFunction: #get_Phonetic:
			argumentTypes: 'ExcelPhonetic**';
		defineFunction: #get_FormatConditions:
			argumentTypes: 'ExcelFormatConditions**';
		defineFunction: #get_ReadingOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_ReadingOrder:
			argumentTypes: 'sdword';
		defineFunction: #get_Hyperlinks:
			argumentTypes: 'ExcelHyperlinks**';
		defineFunction: #get_Phonetics:
			argumentTypes: 'ExcelPhonetics**';
		defineFunction: #SetPhonetic;
		defineFunction: #get_ID:
			argumentTypes: 'bstr*';
		defineFunction: #put_ID:
			argumentTypes: 'bstr';
		defineFunction: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant*';
		defineFunction: #get_PivotCell:
			argumentTypes: 'ExcelPivotCell**';
		defineFunction: #Dirty;
		defineFunction: #get_Errors:
			argumentTypes: 'ExcelErrors**';
		defineFunction: #get_SmartTags:
			argumentTypes: 'ExcelSmartTags**';
		defineFunction: #Speak:speakFormulas:
			argumentTypes: 'variant variant';
		defineFunction: #PasteSpecial:operation:skipBlanks:transpose:rhs:
			argumentTypes: 'sdword sdword variant variant variant*';
		defineFunction: #get_AllowEdit:
			argumentTypes: 'varbool*';
		defineFunction: #get_ListObject:
			argumentTypes: 'ExcelListObject**';
		defineFunction: #get_XPath:
			argumentTypes: 'ExcelXPath**';
		defineFunction: #get_ServerActions:
			argumentTypes: 'ExcelActions**';
		defineFunction: #RemoveDuplicates:header:
			argumentTypes: 'variant sdword';
		defineFunction: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant*';
		defineFunction: #get_MDX:
			argumentTypes: 'bstr*';
		defineFunction: #ExportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:
			argumentTypes: 'sdword variant variant variant variant variant variant variant variant';
		defineFunction: #get_CountLarge:
			argumentTypes: 'variant*';
		defineFunction: #CalculateRowMajorOrder:
			argumentTypes: 'variant*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRange initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRange class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRange class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

