"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_Application
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_Application guid: (IID fromString: '{000208D5-0000-0000-C000-000000000046}')!
Excel_Application comment: '<Excel_Application> is a wrapper class for the COM interface ''Excel._Application'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208D5-0000-0000-C000-000000000046), 
	helpcontext(0x00020001), 
	dual
]
interface _Application : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]Application** RHS);
	[id(0x00000131), propget, helpcontext(0x00010131)]
	HRESULT __stdcall ActiveCell(
		[out, retval]Range** RHS);
	[id(0x000000b7), propget, helpcontext(0x000100b7)]
	HRESULT __stdcall ActiveChart(
		[out, retval]Chart** RHS);
	[id(0x0000032f), hidden, propget, helpcontext(0x0001032f)]
	HRESULT __stdcall ActiveDialog(
		[out, retval]DialogSheet** RHS);
	[id(0x000002f6), hidden, propget, helpcontext(0x000102f6)]
	HRESULT __stdcall ActiveMenuBar(
		[out, retval]MenuBar** RHS);
	[id(0x00000132), propget, helpcontext(0x00010132)]
	HRESULT __stdcall ActivePrinter(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000132), propput, helpcontext(0x00010132)]
	HRESULT __stdcall ActivePrinter(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000133), propget, helpcontext(0x00010133)]
	HRESULT __stdcall ActiveSheet(
		[out, retval]IDispatch** RHS);
	[id(0x000002f7), propget, helpcontext(0x000102f7)]
	HRESULT __stdcall ActiveWindow(
		[out, retval]Window** RHS);
	[id(0x00000134), propget, helpcontext(0x00010134)]
	HRESULT __stdcall ActiveWorkbook(
		[out, retval]Workbook** RHS);
	[id(0x00000225), propget, helpcontext(0x00010225)]
	HRESULT __stdcall AddIns(
		[out, retval]AddIns** RHS);
	[id(0x0000059e), propget, helpcontext(0x0001059e)]
	HRESULT __stdcall Assistant(
		[out, retval]Assistant** RHS);
	[id(0x00000117), helpcontext(0x00010117)]
	HRESULT __stdcall Calculate(
		[in]long lcid);
	[id(0x000000ee), propget, helpcontext(0x000100ee)]
	HRESULT __stdcall Cells(
		[out, retval]Range** RHS);
	[id(0x00000079), propget, helpcontext(0x00010079)]
	HRESULT __stdcall Charts(
		[out, retval]Sheets** RHS);
	[id(0x000000f1), propget, helpcontext(0x000100f1)]
	HRESULT __stdcall Columns(
		[out, retval]Range** RHS);
	[id(0x0000059f), propget, helpcontext(0x0001059f)]
	HRESULT __stdcall CommandBars(
		[out, retval]CommandBars** RHS);
	[id(0x0000014c), propget, helpcontext(0x0001014c)]
	HRESULT __stdcall DDEAppReturnCode(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x0000014d), helpcontext(0x0001014d)]
	HRESULT __stdcall DDEExecute(
		[in]long Channel,
		[in]BSTR String,
		[in]long lcid);
	[id(0x0000014e), helpcontext(0x0001014e)]
	HRESULT __stdcall DDEInitiate(
		[in]BSTR App,
		[in]BSTR Topic,
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x0000014f), helpcontext(0x0001014f)]
	HRESULT __stdcall DDEPoke(
		[in]long Channel,
		[in]VARIANT Item,
		[in]VARIANT Data,
		[in]long lcid);
	[id(0x00000150), helpcontext(0x00010150)]
	HRESULT __stdcall DDERequest(
		[in]long Channel,
		[in]BSTR Item,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000151), helpcontext(0x00010151)]
	HRESULT __stdcall DDETerminate(
		[in]long Channel,
		[in]long lcid);
	[id(0x000002fc), hidden, propget, helpcontext(0x000102fc)]
	HRESULT __stdcall DialogSheets(
		[out, retval]Sheets** RHS);
	[id(0x00000001), helpcontext(0x00010001)]
	HRESULT __stdcall Evaluate(
		[in]VARIANT Name,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0xfffffffb), helpcontext(0x0000fffb)]
	HRESULT __stdcall _Evaluate(
		[in]VARIANT Name,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000015e), helpcontext(0x0001015e)]
	HRESULT __stdcall ExecuteExcel4Macro(
		[in]BSTR String,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000002fe), helpcontext(0x000102fe)]
	HRESULT __stdcall Intersect(
		[in]Range* Arg1,
		[in]Range* Arg2,
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
		[in]long lcid,
		[out, retval]Range** RHS);
	[id(0x0000024d), hidden, propget, helpcontext(0x0001024d)]
	HRESULT __stdcall MenuBars(
		[out, retval]MenuBars** RHS);
	[id(0x00000246), hidden, propget, helpcontext(0x00010246)]
	HRESULT __stdcall Modules(
		[out, retval]Modules** RHS);
	[id(0x000001ba), propget, helpcontext(0x000101ba)]
	HRESULT __stdcall Names(
		[out, retval]Names** RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[in]VARIANT Cell1,
		[in, optional]VARIANT Cell2,
		[out, retval]Range** RHS);
	[id(0x00000102), propget, helpcontext(0x00010102)]
	HRESULT __stdcall Rows(
		[out, retval]Range** RHS);
	[id(0x00000103), helpcontext(0x00010103)]
	HRESULT __stdcall Run(
		[in, optional]VARIANT Macro,
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
	[id(0x00000326), helpcontext(0x00010326)]
	HRESULT __stdcall _Run2(
		[in, optional]VARIANT Macro,
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
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000093), propget, helpcontext(0x00010093)]
	HRESULT __stdcall Selection(
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000017f), helpcontext(0x0001017f)]
	HRESULT __stdcall SendKeys(
		[in]VARIANT Keys,
		[in, optional]VARIANT Wait,
		[in]long lcid);
	[id(0x000001e5), propget, helpcontext(0x000101e5)]
	HRESULT __stdcall Sheets(
		[out, retval]Sheets** RHS);
	[id(0x00000308), hidden, propget, helpcontext(0x00010308)]
	HRESULT __stdcall ShortcutMenus(
		[in]long Index,
		[out, retval]Menu** RHS);
	[id(0x0000030a), propget, helpcontext(0x0001030a)]
	HRESULT __stdcall ThisWorkbook(
		[in]long lcid,
		[out, retval]Workbook** RHS);
	[id(0x00000228), hidden, propget, helpcontext(0x00010228)]
	HRESULT __stdcall Toolbars(
		[out, retval]Toolbars** RHS);
	[id(0x0000030b), helpcontext(0x0001030b)]
	HRESULT __stdcall Union(
		[in]Range* Arg1,
		[in]Range* Arg2,
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
		[in]long lcid,
		[out, retval]Range** RHS);
	[id(0x000001ae), propget, helpcontext(0x000101ae)]
	HRESULT __stdcall Windows(
		[out, retval]Windows** RHS);
	[id(0x0000023c), propget, helpcontext(0x0001023c)]
	HRESULT __stdcall Workbooks(
		[out, retval]Workbooks** RHS);
	[id(0x000005a0), propget, helpcontext(0x000105a0)]
	HRESULT __stdcall WorksheetFunction(
		[out, retval]WorksheetFunction** RHS);
	[id(0x000001ee), propget, helpcontext(0x000101ee)]
	HRESULT __stdcall Worksheets(
		[out, retval]Sheets** RHS);
	[id(0x00000245), propget, helpcontext(0x00010245)]
	HRESULT __stdcall Excel4IntlMacroSheets(
		[out, retval]Sheets** RHS);
	[id(0x00000243), propget, helpcontext(0x00010243)]
	HRESULT __stdcall Excel4MacroSheets(
		[out, retval]Sheets** RHS);
	[id(0x00000447), helpcontext(0x00010447)]
	HRESULT __stdcall ActivateMicrosoftApp(
		[in]XlMSApplication Index,
		[in]long lcid);
	[id(0x000000d8), hidden, helpcontext(0x000100d8)]
	HRESULT __stdcall AddChartAutoFormat(
		[in]VARIANT Chart,
		[in]BSTR Name,
		[in, optional]VARIANT Description,
		[in]long lcid);
	[id(0x0000030c), helpcontext(0x0001030c)]
	HRESULT __stdcall AddCustomList(
		[in]VARIANT ListArray,
		[in, optional]VARIANT ByRow,
		[in]long lcid);
	[id(0x000003a2), propget, helpcontext(0x000103a2)]
	HRESULT __stdcall AlertBeforeOverwriting(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003a2), propput, helpcontext(0x000103a2)]
	HRESULT __stdcall AlertBeforeOverwriting(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000139), propget, helpcontext(0x00010139)]
	HRESULT __stdcall AltStartupPath(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000139), propput, helpcontext(0x00010139)]
	HRESULT __stdcall AltStartupPath(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x000003e0), propget, helpcontext(0x000103e0)]
	HRESULT __stdcall AskToUpdateLinks(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003e0), propput, helpcontext(0x000103e0)]
	HRESULT __stdcall AskToUpdateLinks(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000049c), propget, helpcontext(0x0001049c)]
	HRESULT __stdcall EnableAnimations(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000049c), propput, helpcontext(0x0001049c)]
	HRESULT __stdcall EnableAnimations(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000479), propget, helpcontext(0x00010479)]
	HRESULT __stdcall AutoCorrect(
		[out, retval]AutoCorrect** RHS);
	[id(0x0000013a), propget, helpcontext(0x0001013a)]
	HRESULT __stdcall Build(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x0000013b), propget, helpcontext(0x0001013b)]
	HRESULT __stdcall CalculateBeforeSave(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000013b), propput, helpcontext(0x0001013b)]
	HRESULT __stdcall CalculateBeforeSave(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000013c), propget, helpcontext(0x0001013c)]
	HRESULT __stdcall Calculation(
		[in]long lcid,
		[out, retval]XlCalculation* RHS);
	[id(0x0000013c), propput, helpcontext(0x0001013c)]
	HRESULT __stdcall Calculation(
		[in]long lcid,
		[in]XlCalculation RHS);
	[id(0x0000013d), propget, helpcontext(0x0001013d)]
	HRESULT __stdcall Caller(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000013e), propget, helpcontext(0x0001013e)]
	HRESULT __stdcall CanPlaySounds(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000013f), propget, helpcontext(0x0001013f)]
	HRESULT __stdcall CanRecordSounds(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x00000140), propget, helpcontext(0x00010140)]
	HRESULT __stdcall CellDragAndDrop(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000140), propput, helpcontext(0x00010140)]
	HRESULT __stdcall CellDragAndDrop(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000043e), helpcontext(0x0001043e)]
	HRESULT __stdcall CentimetersToPoints(
		[in]double Centimeters,
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x000001f9), helpcontext(0x000101f9)]
	HRESULT __stdcall CheckSpelling(
		[in]BSTR Word,
		[in, optional]VARIANT CustomDictionary,
		[in, optional]VARIANT IgnoreUppercase,
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000141), propget, helpcontext(0x00010141)]
	HRESULT __stdcall ClipboardFormats(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000142), propget, helpcontext(0x00010142)]
	HRESULT __stdcall DisplayClipboardWindow(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000142), propput, helpcontext(0x00010142)]
	HRESULT __stdcall DisplayClipboardWindow(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000016d), hidden, propget, helpcontext(0x0001016d)]
	HRESULT __stdcall ColorButtons(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000016d), hidden, propput, helpcontext(0x0001016d)]
	HRESULT __stdcall ColorButtons(
		[in]VARIANT_BOOL RHS);
	[id(0x00000143), propget, helpcontext(0x00010143)]
	HRESULT __stdcall CommandUnderlines(
		[in]long lcid,
		[out, retval]XlCommandUnderlines* RHS);
	[id(0x00000143), propput, helpcontext(0x00010143)]
	HRESULT __stdcall CommandUnderlines(
		[in]long lcid,
		[in]XlCommandUnderlines RHS);
	[id(0x00000144), propget, helpcontext(0x00010144)]
	HRESULT __stdcall ConstrainNumeric(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000144), propput, helpcontext(0x00010144)]
	HRESULT __stdcall ConstrainNumeric(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000145), helpcontext(0x00010145)]
	HRESULT __stdcall ConvertFormula(
		[in]VARIANT Formula,
		[in]XlReferenceStyle FromReferenceStyle,
		[in, optional]VARIANT ToReferenceStyle,
		[in, optional]VARIANT ToAbsolute,
		[in, optional]VARIANT RelativeTo,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000003df), propget, helpcontext(0x000103df)]
	HRESULT __stdcall CopyObjectsWithCells(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003df), propput, helpcontext(0x000103df)]
	HRESULT __stdcall CopyObjectsWithCells(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000489), propget, helpcontext(0x00010489)]
	HRESULT __stdcall Cursor(
		[in]long lcid,
		[out, retval]XlMousePointer* RHS);
	[id(0x00000489), propput, helpcontext(0x00010489)]
	HRESULT __stdcall Cursor(
		[in]long lcid,
		[in]XlMousePointer RHS);
	[id(0x00000313), propget, helpcontext(0x00010313)]
	HRESULT __stdcall CustomListCount(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x0000014a), propget, helpcontext(0x0001014a)]
	HRESULT __stdcall CutCopyMode(
		[in]long lcid,
		[out, retval]XlCutCopyMode* RHS);
	[id(0x0000014a), propput, helpcontext(0x0001014a)]
	HRESULT __stdcall CutCopyMode(
		[in]long lcid,
		[in]XlCutCopyMode RHS);
	[id(0x0000014b), propget, helpcontext(0x0001014b)]
	HRESULT __stdcall DataEntryMode(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x0000014b), propput, helpcontext(0x0001014b)]
	HRESULT __stdcall DataEntryMode(
		[in]long lcid,
		[in]long RHS);
	[id(0x000006f6), hidden, helpcontext(0x000106f6)]
	HRESULT __stdcall Dummy1(
		[in, optional]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[out, retval]VARIANT* RHS);
	[id(0x000006f7), hidden, helpcontext(0x000106f7)]
	HRESULT __stdcall Dummy2(
		[in, optional]VARIANT Arg1,
		[in, optional]VARIANT Arg2,
		[in, optional]VARIANT Arg3,
		[in, optional]VARIANT Arg4,
		[in, optional]VARIANT Arg5,
		[in, optional]VARIANT Arg6,
		[in, optional]VARIANT Arg7,
		[in, optional]VARIANT Arg8,
		[out, retval]VARIANT* RHS);
	[id(0x000006f8), hidden, helpcontext(0x000106f8)]
	HRESULT __stdcall Dummy3(
		[out, retval]VARIANT* RHS);
	[id(0x000006f9), hidden, helpcontext(0x000106f9)]
	HRESULT __stdcall Dummy4(
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
		[out, retval]VARIANT* RHS);
	[id(0x000006fa), hidden, helpcontext(0x000106fa)]
	HRESULT __stdcall Dummy5(
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
		[out, retval]VARIANT* RHS);
	[id(0x000006fb), hidden, helpcontext(0x000106fb)]
	HRESULT __stdcall Dummy6(
		[out, retval]VARIANT* RHS);
	[id(0x000006fc), hidden, helpcontext(0x000106fc)]
	HRESULT __stdcall Dummy7(
		[out, retval]VARIANT* RHS);
	[id(0x000006fd), hidden, helpcontext(0x000106fd)]
	HRESULT __stdcall Dummy8(
		[in, optional]VARIANT Arg1,
		[out, retval]VARIANT* RHS);
	[id(0x000006fe), hidden, helpcontext(0x000106fe)]
	HRESULT __stdcall Dummy9(
		[out, retval]VARIANT* RHS);
	[id(0x000006ff), hidden, helpcontext(0x000106ff)]
	HRESULT __stdcall Dummy10(
		[in, optional]VARIANT arg,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000700), hidden, helpcontext(0x00010700)]
	HRESULT __stdcall Dummy11();
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x0000040e), propget, helpcontext(0x0001040e)]
	HRESULT __stdcall DefaultFilePath(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000040e), propput, helpcontext(0x0001040e)]
	HRESULT __stdcall DefaultFilePath(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x000000d9), hidden, helpcontext(0x000100d9)]
	HRESULT __stdcall DeleteChartAutoFormat(
		[in]BSTR Name,
		[in]long lcid);
	[id(0x0000030f), helpcontext(0x0001030f)]
	HRESULT __stdcall DeleteCustomList(
		[in]long ListNum,
		[in]long lcid);
	[id(0x000002f9), propget, helpcontext(0x000102f9)]
	HRESULT __stdcall Dialogs(
		[out, retval]Dialogs** RHS);
	[id(0x00000157), propget, helpcontext(0x00010157)]
	HRESULT __stdcall DisplayAlerts(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000157), propput, helpcontext(0x00010157)]
	HRESULT __stdcall DisplayAlerts(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000158), propget, helpcontext(0x00010158)]
	HRESULT __stdcall DisplayFormulaBar(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000158), propput, helpcontext(0x00010158)]
	HRESULT __stdcall DisplayFormulaBar(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000425), propget, helpcontext(0x00010425)]
	HRESULT __stdcall DisplayFullScreen(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000425), propput, helpcontext(0x00010425)]
	HRESULT __stdcall DisplayFullScreen(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000159), propget, helpcontext(0x00010159)]
	HRESULT __stdcall DisplayNoteIndicator(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000159), propput, helpcontext(0x00010159)]
	HRESULT __stdcall DisplayNoteIndicator(
		[in]VARIANT_BOOL RHS);
	[id(0x000004ac), propget, helpcontext(0x000104ac)]
	HRESULT __stdcall DisplayCommentIndicator(
		[out, retval]XlCommentDisplayMode* RHS);
	[id(0x000004ac), propput, helpcontext(0x000104ac)]
	HRESULT __stdcall DisplayCommentIndicator(
		[in]XlCommentDisplayMode RHS);
	[id(0x0000039f), propget, helpcontext(0x0001039f)]
	HRESULT __stdcall DisplayExcel4Menus(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000039f), propput, helpcontext(0x0001039f)]
	HRESULT __stdcall DisplayExcel4Menus(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000039e), propget, helpcontext(0x0001039e)]
	HRESULT __stdcall DisplayRecentFiles(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000039e), propput, helpcontext(0x0001039e)]
	HRESULT __stdcall DisplayRecentFiles(
		[in]VARIANT_BOOL RHS);
	[id(0x0000015a), propget, helpcontext(0x0001015a)]
	HRESULT __stdcall DisplayScrollBars(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000015a), propput, helpcontext(0x0001015a)]
	HRESULT __stdcall DisplayScrollBars(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000015b), propget, helpcontext(0x0001015b)]
	HRESULT __stdcall DisplayStatusBar(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000015b), propput, helpcontext(0x0001015b)]
	HRESULT __stdcall DisplayStatusBar(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000015d), helpcontext(0x0001015d)]
	HRESULT __stdcall DoubleClick(
		[in]long lcid);
	[id(0x000003a1), propget, helpcontext(0x000103a1)]
	HRESULT __stdcall EditDirectlyInCell(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003a1), propput, helpcontext(0x000103a1)]
	HRESULT __stdcall EditDirectlyInCell(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000049b), propget, helpcontext(0x0001049b)]
	HRESULT __stdcall EnableAutoComplete(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000049b), propput, helpcontext(0x0001049b)]
	HRESULT __stdcall EnableAutoComplete(
		[in]VARIANT_BOOL RHS);
	[id(0x00000448), propget, helpcontext(0x00010448)]
	HRESULT __stdcall EnableCancelKey(
		[in]long lcid,
		[out, retval]XlEnableCancelKey* RHS);
	[id(0x00000448), propput, helpcontext(0x00010448)]
	HRESULT __stdcall EnableCancelKey(
		[in]long lcid,
		[in]XlEnableCancelKey RHS);
	[id(0x000004ad), propget, helpcontext(0x000104ad)]
	HRESULT __stdcall EnableSound(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004ad), propput, helpcontext(0x000104ad)]
	HRESULT __stdcall EnableSound(
		[in]VARIANT_BOOL RHS);
	[id(0x00000428), hidden, propget, helpcontext(0x00010428)]
	HRESULT __stdcall EnableTipWizard(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000428), hidden, propput, helpcontext(0x00010428)]
	HRESULT __stdcall EnableTipWizard(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000003a3), propget, helpcontext(0x000103a3)]
	HRESULT __stdcall FileConverters(
		[in, optional]VARIANT Index1,
		[in, optional]VARIANT Index2,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000004b0), hidden, propget, helpcontext(0x000104b0)]
	HRESULT __stdcall FileSearch(
		[out, retval]FileSearch** RHS);
	[id(0x000004b1), hidden, propget, helpcontext(0x000104b1)]
	HRESULT __stdcall FileFind(
		[out, retval]IFind** RHS);
	[id(0x0000042c), hidden, helpcontext(0x0001042c)]
	HRESULT __stdcall _FindFile(
		[in]long lcid);
	[id(0x0000015f), propget, helpcontext(0x0001015f)]
	HRESULT __stdcall FixedDecimal(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000015f), propput, helpcontext(0x0001015f)]
	HRESULT __stdcall FixedDecimal(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000160), propget, helpcontext(0x00010160)]
	HRESULT __stdcall FixedDecimalPlaces(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000160), propput, helpcontext(0x00010160)]
	HRESULT __stdcall FixedDecimalPlaces(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000312), helpcontext(0x00010312)]
	HRESULT __stdcall GetCustomListContents(
		[in]long ListNum,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000311), helpcontext(0x00010311)]
	HRESULT __stdcall GetCustomListNum(
		[in]VARIANT ListArray,
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000433), helpcontext(0x00010433)]
	HRESULT __stdcall GetOpenFilename(
		[in, optional]VARIANT FileFilter,
		[in, optional]VARIANT FilterIndex,
		[in, optional]VARIANT Title,
		[in, optional]VARIANT ButtonText,
		[in, optional]VARIANT MultiSelect,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000434), helpcontext(0x00010434)]
	HRESULT __stdcall GetSaveAsFilename(
		[in, optional]VARIANT InitialFilename,
		[in, optional]VARIANT FileFilter,
		[in, optional]VARIANT FilterIndex,
		[in, optional]VARIANT Title,
		[in, optional]VARIANT ButtonText,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000001db), helpcontext(0x000101db)]
	HRESULT __stdcall Goto(
		[in, optional]VARIANT Reference,
		[in, optional]VARIANT Scroll,
		[in]long lcid);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x0000007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]long lcid,
		[in]double RHS);
	[id(0x00000162), helpcontext(0x00010162)]
	HRESULT __stdcall Help(
		[in, optional]VARIANT HelpFile,
		[in, optional]VARIANT HelpContextID,
		[in]long lcid);
	[id(0x00000164), propget, helpcontext(0x00010164)]
	HRESULT __stdcall IgnoreRemoteRequests(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000164), propput, helpcontext(0x00010164)]
	HRESULT __stdcall IgnoreRemoteRequests(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000043f), helpcontext(0x0001043f)]
	HRESULT __stdcall InchesToPoints(
		[in]double Inches,
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x00000165), helpcontext(0x00010165)]
	HRESULT __stdcall InputBox(
		[in]BSTR Prompt,
		[in, optional]VARIANT Title,
		[in, optional]VARIANT Default,
		[in, optional]VARIANT Left,
		[in, optional]VARIANT Top,
		[in, optional]VARIANT HelpFile,
		[in, optional]VARIANT HelpContextID,
		[in, optional]VARIANT Type,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000169), propget, helpcontext(0x00010169)]
	HRESULT __stdcall Interactive(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000169), propput, helpcontext(0x00010169)]
	HRESULT __stdcall Interactive(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000016a), propget, helpcontext(0x0001016a)]
	HRESULT __stdcall International(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000016b), propget, helpcontext(0x0001016b)]
	HRESULT __stdcall Iteration(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000016b), propput, helpcontext(0x0001016b)]
	HRESULT __stdcall Iteration(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000016c), hidden, propget, helpcontext(0x0001016c)]
	HRESULT __stdcall LargeButtons(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000016c), hidden, propput, helpcontext(0x0001016c)]
	HRESULT __stdcall LargeButtons(
		[in]VARIANT_BOOL RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x0000007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]long lcid,
		[in]double RHS);
	[id(0x0000016e), propget, helpcontext(0x0001016e)]
	HRESULT __stdcall LibraryPath(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000046f), helpcontext(0x0001046f)]
	HRESULT __stdcall MacroOptions(
		[in, optional]VARIANT Macro,
		[in, optional]VARIANT Description,
		[in, optional]VARIANT HasMenu,
		[in, optional]VARIANT MenuText,
		[in, optional]VARIANT HasShortcutKey,
		[in, optional]VARIANT ShortcutKey,
		[in, optional]VARIANT Category,
		[in, optional]VARIANT StatusBar,
		[in, optional]VARIANT HelpContextID,
		[in, optional]VARIANT HelpFile,
		[in]long lcid);
	[id(0x000003b1), helpcontext(0x000103b1)]
	HRESULT __stdcall MailLogoff(
		[in]long lcid);
	[id(0x000003af), helpcontext(0x000103af)]
	HRESULT __stdcall MailLogon(
		[in, optional]VARIANT Name,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT DownloadNewMail,
		[in]long lcid);
	[id(0x000003ae), propget, helpcontext(0x000103ae)]
	HRESULT __stdcall MailSession(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000003cb), propget, helpcontext(0x000103cb)]
	HRESULT __stdcall MailSystem(
		[in]long lcid,
		[out, retval]XlMailSystem* RHS);
	[id(0x0000016f), propget, helpcontext(0x0001016f)]
	HRESULT __stdcall MathCoprocessorAvailable(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000170), propget, helpcontext(0x00010170)]
	HRESULT __stdcall MaxChange(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x00000170), propput, helpcontext(0x00010170)]
	HRESULT __stdcall MaxChange(
		[in]long lcid,
		[in]double RHS);
	[id(0x00000171), propget, helpcontext(0x00010171)]
	HRESULT __stdcall MaxIterations(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000171), propput, helpcontext(0x00010171)]
	HRESULT __stdcall MaxIterations(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000172), hidden, propget, helpcontext(0x00010172)]
	HRESULT __stdcall MemoryFree(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000173), hidden, propget, helpcontext(0x00010173)]
	HRESULT __stdcall MemoryTotal(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000174), hidden, propget, helpcontext(0x00010174)]
	HRESULT __stdcall MemoryUsed(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000175), propget, helpcontext(0x00010175)]
	HRESULT __stdcall MouseAvailable(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000176), propget, helpcontext(0x00010176)]
	HRESULT __stdcall MoveAfterReturn(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000176), propput, helpcontext(0x00010176)]
	HRESULT __stdcall MoveAfterReturn(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000478), propget, helpcontext(0x00010478)]
	HRESULT __stdcall MoveAfterReturnDirection(
		[in]long lcid,
		[out, retval]XlDirection* RHS);
	[id(0x00000478), propput, helpcontext(0x00010478)]
	HRESULT __stdcall MoveAfterReturnDirection(
		[in]long lcid,
		[in]XlDirection RHS);
	[id(0x000004b2), propget, helpcontext(0x000104b2)]
	HRESULT __stdcall RecentFiles(
		[out, retval]RecentFiles** RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000003cc), helpcontext(0x000103cc)]
	HRESULT __stdcall NextLetter(
		[in]long lcid,
		[out, retval]Workbook** RHS);
	[id(0x00000184), propget, helpcontext(0x00010184)]
	HRESULT __stdcall NetworkTemplatesPath(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x000004b3), propget, helpcontext(0x000104b3)]
	HRESULT __stdcall ODBCErrors(
		[out, retval]ODBCErrors** RHS);
	[id(0x000004b4), propget, helpcontext(0x000104b4)]
	HRESULT __stdcall ODBCTimeout(
		[out, retval]long* RHS);
	[id(0x000004b4), propput, helpcontext(0x000104b4)]
	HRESULT __stdcall ODBCTimeout(
		[in]long RHS);
	[id(0x00000271), hidden, propget, helpcontext(0x00010271)]
	HRESULT __stdcall OnCalculate(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000271), hidden, propput, helpcontext(0x00010271)]
	HRESULT __stdcall OnCalculate(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000275), hidden, propget, helpcontext(0x00010275)]
	HRESULT __stdcall OnData(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000275), hidden, propput, helpcontext(0x00010275)]
	HRESULT __stdcall OnData(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000274), hidden, propget, helpcontext(0x00010274)]
	HRESULT __stdcall OnDoubleClick(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000274), hidden, propput, helpcontext(0x00010274)]
	HRESULT __stdcall OnDoubleClick(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000273), hidden, propget, helpcontext(0x00010273)]
	HRESULT __stdcall OnEntry(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000273), hidden, propput, helpcontext(0x00010273)]
	HRESULT __stdcall OnEntry(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000272), helpcontext(0x00010272)]
	HRESULT __stdcall OnKey(
		[in]BSTR Key,
		[in, optional]VARIANT Procedure,
		[in]long lcid);
	[id(0x00000301), helpcontext(0x00010301)]
	HRESULT __stdcall OnRepeat(
		[in]BSTR Text,
		[in]BSTR Procedure,
		[in]long lcid);
	[id(0x00000407), hidden, propget, helpcontext(0x00010407)]
	HRESULT __stdcall OnSheetActivate(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000407), hidden, propput, helpcontext(0x00010407)]
	HRESULT __stdcall OnSheetActivate(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000439), hidden, propget, helpcontext(0x00010439)]
	HRESULT __stdcall OnSheetDeactivate(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000439), hidden, propput, helpcontext(0x00010439)]
	HRESULT __stdcall OnSheetDeactivate(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000270), helpcontext(0x00010270)]
	HRESULT __stdcall OnTime(
		[in]VARIANT EarliestTime,
		[in]BSTR Procedure,
		[in, optional]VARIANT LatestTime,
		[in, optional]VARIANT Schedule,
		[in]long lcid);
	[id(0x00000302), helpcontext(0x00010302)]
	HRESULT __stdcall OnUndo(
		[in]BSTR Text,
		[in]BSTR Procedure,
		[in]long lcid);
	[id(0x0000026f), propget, helpcontext(0x0001026f)]
	HRESULT __stdcall OnWindow(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000026f), propput, helpcontext(0x0001026f)]
	HRESULT __stdcall OnWindow(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000177), propget, helpcontext(0x00010177)]
	HRESULT __stdcall OperatingSystem(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000178), propget, helpcontext(0x00010178)]
	HRESULT __stdcall OrganizationName(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000123), propget, helpcontext(0x00010123)]
	HRESULT __stdcall Path(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000179), propget, helpcontext(0x00010179)]
	HRESULT __stdcall PathSeparator(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000017a), propget, helpcontext(0x0001017a)]
	HRESULT __stdcall PreviousSelections(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000004b5), propget, helpcontext(0x000104b5)]
	HRESULT __stdcall PivotTableSelection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004b5), propput, helpcontext(0x000104b5)]
	HRESULT __stdcall PivotTableSelection(
		[in]VARIANT_BOOL RHS);
	[id(0x00000426), propget, helpcontext(0x00010426)]
	HRESULT __stdcall PromptForSummaryInfo(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000426), propput, helpcontext(0x00010426)]
	HRESULT __stdcall PromptForSummaryInfo(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000012e), helpcontext(0x0001012e)]
	HRESULT __stdcall Quit();
	[id(0x00000305), helpcontext(0x00010305)]
	HRESULT __stdcall RecordMacro(
		[in, optional]VARIANT BasicCode,
		[in, optional]VARIANT XlmCode,
		[in]long lcid);
	[id(0x0000017b), propget, helpcontext(0x0001017b)]
	HRESULT __stdcall RecordRelative(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000017c), propget, helpcontext(0x0001017c)]
	HRESULT __stdcall ReferenceStyle(
		[in]long lcid,
		[out, retval]XlReferenceStyle* RHS);
	[id(0x0000017c), propput, helpcontext(0x0001017c)]
	HRESULT __stdcall ReferenceStyle(
		[in]long lcid,
		[in]XlReferenceStyle RHS);
	[id(0x00000307), propget, helpcontext(0x00010307)]
	HRESULT __stdcall RegisteredFunctions(
		[in, optional]VARIANT Index1,
		[in, optional]VARIANT Index2,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000001e), helpcontext(0x0001001e)]
	HRESULT __stdcall RegisterXLL(
		[in]BSTR Filename,
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000012d), helpcontext(0x0001012d)]
	HRESULT __stdcall Repeat(
		[in]long lcid);
	[id(0x000003a0), hidden, helpcontext(0x000103a0)]
	HRESULT __stdcall ResetTipWizard(
		[in]long lcid);
	[id(0x000004b6), propget, helpcontext(0x000104b6)]
	HRESULT __stdcall RollZoom(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004b6), propput, helpcontext(0x000104b6)]
	HRESULT __stdcall RollZoom(
		[in]VARIANT_BOOL RHS);
	[id(0x0000011b), hidden, helpcontext(0x0001011b)]
	HRESULT __stdcall Save(
		[in, optional]VARIANT Filename,
		[in]long lcid);
	[id(0x000000d4), helpcontext(0x000100d4)]
	HRESULT __stdcall SaveWorkspace(
		[in, optional]VARIANT Filename,
		[in]long lcid);
	[id(0x0000017e), propget, helpcontext(0x0001017e)]
	HRESULT __stdcall ScreenUpdating(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000017e), propput, helpcontext(0x0001017e)]
	HRESULT __stdcall ScreenUpdating(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000000db), hidden, helpcontext(0x000100db)]
	HRESULT __stdcall SetDefaultChart(
		[in, optional]VARIANT FormatName,
		[in, optional]VARIANT Gallery);
	[id(0x000003e1), propget, helpcontext(0x000103e1)]
	HRESULT __stdcall SheetsInNewWorkbook(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x000003e1), propput, helpcontext(0x000103e1)]
	HRESULT __stdcall SheetsInNewWorkbook(
		[in]long lcid,
		[in]long RHS);
	[id(0x000004b7), propget, helpcontext(0x000104b7)]
	HRESULT __stdcall ShowChartTipNames(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004b7), propput, helpcontext(0x000104b7)]
	HRESULT __stdcall ShowChartTipNames(
		[in]VARIANT_BOOL RHS);
	[id(0x000004b8), propget, helpcontext(0x000104b8)]
	HRESULT __stdcall ShowChartTipValues(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004b8), propput, helpcontext(0x000104b8)]
	HRESULT __stdcall ShowChartTipValues(
		[in]VARIANT_BOOL RHS);
	[id(0x0000039c), propget, helpcontext(0x0001039c)]
	HRESULT __stdcall StandardFont(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000039c), propput, helpcontext(0x0001039c)]
	HRESULT __stdcall StandardFont(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x0000039d), propget, helpcontext(0x0001039d)]
	HRESULT __stdcall StandardFontSize(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x0000039d), propput, helpcontext(0x0001039d)]
	HRESULT __stdcall StandardFontSize(
		[in]long lcid,
		[in]double RHS);
	[id(0x00000181), propget, helpcontext(0x00010181)]
	HRESULT __stdcall StartupPath(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000182), propget, helpcontext(0x00010182)]
	HRESULT __stdcall StatusBar(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000182), propput, helpcontext(0x00010182)]
	HRESULT __stdcall StatusBar(
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x0000017d), propget, helpcontext(0x0001017d)]
	HRESULT __stdcall TemplatesPath(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000183), propget, helpcontext(0x00010183)]
	HRESULT __stdcall ShowToolTips(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000183), propput, helpcontext(0x00010183)]
	HRESULT __stdcall ShowToolTips(
		[in]VARIANT_BOOL RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]long lcid,
		[in]double RHS);
	[id(0x000004b9), propget, helpcontext(0x000104b9)]
	HRESULT __stdcall DefaultSaveFormat(
		[out, retval]XlFileFormat* RHS);
	[id(0x000004b9), propput, helpcontext(0x000104b9)]
	HRESULT __stdcall DefaultSaveFormat(
		[in]XlFileFormat RHS);
	[id(0x00000136), propget, helpcontext(0x00010136)]
	HRESULT __stdcall TransitionMenuKey(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000136), propput, helpcontext(0x00010136)]
	HRESULT __stdcall TransitionMenuKey(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000137), propget, helpcontext(0x00010137)]
	HRESULT __stdcall TransitionMenuKeyAction(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000137), propput, helpcontext(0x00010137)]
	HRESULT __stdcall TransitionMenuKeyAction(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000138), propget, helpcontext(0x00010138)]
	HRESULT __stdcall TransitionNavigKeys(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000138), propput, helpcontext(0x00010138)]
	HRESULT __stdcall TransitionNavigKeys(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000012f), helpcontext(0x0001012f)]
	HRESULT __stdcall Undo(
		[in]long lcid);
	[id(0x00000185), propget, helpcontext(0x00010185)]
	HRESULT __stdcall UsableHeight(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x00000186), propget, helpcontext(0x00010186)]
	HRESULT __stdcall UsableWidth(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x000004ba), propget, helpcontext(0x000104ba)]
	HRESULT __stdcall UserControl(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004ba), propput, helpcontext(0x000104ba)]
	HRESULT __stdcall UserControl(
		[in]VARIANT_BOOL RHS);
	[id(0x00000187), propget, helpcontext(0x00010187)]
	HRESULT __stdcall UserName(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000187), propput, helpcontext(0x00010187)]
	HRESULT __stdcall UserName(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0x000004bb), propget, helpcontext(0x000104bb)]
	HRESULT __stdcall VBE(
		[out, retval]VBE** RHS);
	[id(0x00000188), propget, helpcontext(0x00010188)]
	HRESULT __stdcall Version(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000314), helpcontext(0x00010314)]
	HRESULT __stdcall Volatile(
		[in, optional]VARIANT Volatile,
		[in]long lcid);
	[id(0x00000189), hidden, helpcontext(0x00010189)]
	HRESULT __stdcall _Wait(
		[in]VARIANT Time,
		[in]long lcid);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]long lcid,
		[in]double RHS);
	[id(0x0000018b), propget, helpcontext(0x0001018b)]
	HRESULT __stdcall WindowsForPens(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000018c), propget, helpcontext(0x0001018c)]
	HRESULT __stdcall WindowState(
		[in]long lcid,
		[out, retval]XlWindowState* RHS);
	[id(0x0000018c), propput, helpcontext(0x0001018c)]
	HRESULT __stdcall WindowState(
		[in]long lcid,
		[in]XlWindowState RHS);
	[id(0x00000002), hidden, propget, helpcontext(0x00010002)]
	HRESULT __stdcall UILanguage(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000002), hidden, propput, helpcontext(0x00010002)]
	HRESULT __stdcall UILanguage(
		[in]long lcid,
		[in]long RHS);
	[id(0x000000e5), propget, helpcontext(0x000100e5)]
	HRESULT __stdcall DefaultSheetDirection(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x000000e5), propput, helpcontext(0x000100e5)]
	HRESULT __stdcall DefaultSheetDirection(
		[in]long lcid,
		[in]long RHS);
	[id(0x000000e8), propget, helpcontext(0x000100e8)]
	HRESULT __stdcall CursorMovement(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x000000e8), propput, helpcontext(0x000100e8)]
	HRESULT __stdcall CursorMovement(
		[in]long lcid,
		[in]long RHS);
	[id(0x000000e9), propget, helpcontext(0x000100e9)]
	HRESULT __stdcall ControlCharacters(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000e9), propput, helpcontext(0x000100e9)]
	HRESULT __stdcall ControlCharacters(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000000a9), hidden, helpcontext(0x000100a9)]
	HRESULT __stdcall _WSFunction(
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
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000004bc), propget, helpcontext(0x000104bc)]
	HRESULT __stdcall EnableEvents(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004bc), propput, helpcontext(0x000104bc)]
	HRESULT __stdcall EnableEvents(
		[in]VARIANT_BOOL RHS);
	[id(0x000004bd), hidden, propget, helpcontext(0x000104bd)]
	HRESULT __stdcall DisplayInfoWindow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004bd), hidden, propput, helpcontext(0x000104bd)]
	HRESULT __stdcall DisplayInfoWindow(
		[in]VARIANT_BOOL RHS);
	[id(0x000006ea), helpcontext(0x000106ea)]
	HRESULT __stdcall Wait(
		[in]VARIANT Time,
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000701), propget, helpcontext(0x00010701)]
	HRESULT __stdcall ExtendList(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000701), propput, helpcontext(0x00010701)]
	HRESULT __stdcall ExtendList(
		[in]VARIANT_BOOL RHS);
	[id(0x00000702), propget, helpcontext(0x00010702)]
	HRESULT __stdcall OLEDBErrors(
		[out, retval]OLEDBErrors** RHS);
	[id(0x00000703), helpcontext(0x00010703)]
	HRESULT __stdcall GetPhonetic(
		[in, optional]VARIANT Text,
		[out, retval]BSTR* RHS);
	[id(0x00000704), propget, helpcontext(0x00010704)]
	HRESULT __stdcall COMAddIns(
		[out, retval]COMAddIns** RHS);
	[id(0x00000705), propget, helpcontext(0x00010705)]
	HRESULT __stdcall DefaultWebOptions(
		[out, retval]DefaultWebOptions** RHS);
	[id(0x00000706), propget, helpcontext(0x00010706)]
	HRESULT __stdcall ProductCode(
		[out, retval]BSTR* RHS);
	[id(0x00000707), propget, helpcontext(0x00010707)]
	HRESULT __stdcall UserLibraryPath(
		[out, retval]BSTR* RHS);
	[id(0x00000708), propget, helpcontext(0x00010708)]
	HRESULT __stdcall AutoPercentEntry(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000708), propput, helpcontext(0x00010708)]
	HRESULT __stdcall AutoPercentEntry(
		[in]VARIANT_BOOL RHS);
	[id(0x00000709), propget, helpcontext(0x00010709)]
	HRESULT __stdcall LanguageSettings(
		[out, retval]LanguageSettings** RHS);
	[id(0x0000070a), hidden, propget, helpcontext(0x0001070a)]
	HRESULT __stdcall Dummy101(
		[out, retval]IDispatch** RHS);
	[id(0x0000070b), hidden, helpcontext(0x0001070b)]
	HRESULT __stdcall Dummy12(
		[in]PivotTable* p1,
		[in]PivotTable* p2);
	[id(0x0000070c), propget, helpcontext(0x0001070c)]
	HRESULT __stdcall AnswerWizard(
		[out, retval]AnswerWizard** RHS);
	[id(0x0000070d), helpcontext(0x0001070d)]
	HRESULT __stdcall CalculateFull();
	[id(0x000006eb), helpcontext(0x000106eb)]
	HRESULT __stdcall FindFile(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000070e), propget, helpcontext(0x0001070e)]
	HRESULT __stdcall CalculationVersion(
		[out, retval]long* RHS);
	[id(0x0000070f), propget, helpcontext(0x0001070f)]
	HRESULT __stdcall ShowWindowsInTaskbar(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000070f), propput, helpcontext(0x0001070f)]
	HRESULT __stdcall ShowWindowsInTaskbar(
		[in]VARIANT_BOOL RHS);
	[id(0x00000710), propget, helpcontext(0x00010710)]
	HRESULT __stdcall FeatureInstall(
		[out, retval]MsoFeatureInstall* RHS);
	[id(0x00000710), propput, helpcontext(0x00010710)]
	HRESULT __stdcall FeatureInstall(
		[in]MsoFeatureInstall RHS);
	[id(0x0000078c), propget, helpcontext(0x0001078c)]
	HRESULT __stdcall Ready(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000078d), hidden, helpcontext(0x0001078d)]
	HRESULT __stdcall Dummy13(
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
	[id(0x0000078e), propget, helpcontext(0x0001078e)]
	HRESULT __stdcall FindFormat(
		[out, retval]CellFormat** RHS);
	[id(0x0000078e), propputref, helpcontext(0x0001078e)]
	HRESULT __stdcall FindFormat(
		[in]CellFormat* RHS);
	[id(0x0000078f), propget, helpcontext(0x0001078f)]
	HRESULT __stdcall ReplaceFormat(
		[out, retval]CellFormat** RHS);
	[id(0x0000078f), propputref, helpcontext(0x0001078f)]
	HRESULT __stdcall ReplaceFormat(
		[in]CellFormat* RHS);
	[id(0x00000790), propget, helpcontext(0x00010790)]
	HRESULT __stdcall UsedObjects(
		[out, retval]UsedObjects** RHS);
	[id(0x00000791), propget, helpcontext(0x00010791)]
	HRESULT __stdcall CalculationState(
		[out, retval]XlCalculationState* RHS);
	[id(0x00000792), propget, helpcontext(0x00010792)]
	HRESULT __stdcall CalculationInterruptKey(
		[out, retval]XlCalculationInterruptKey* RHS);
	[id(0x00000792), propput, helpcontext(0x00010792)]
	HRESULT __stdcall CalculationInterruptKey(
		[in]XlCalculationInterruptKey RHS);
	[id(0x00000793), propget, helpcontext(0x00010793)]
	HRESULT __stdcall Watches(
		[out, retval]Watches** RHS);
	[id(0x00000794), propget, helpcontext(0x00010794)]
	HRESULT __stdcall DisplayFunctionToolTips(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000794), propput, helpcontext(0x00010794)]
	HRESULT __stdcall DisplayFunctionToolTips(
		[in]VARIANT_BOOL RHS);
	[id(0x00000795), propget, helpcontext(0x00010795)]
	HRESULT __stdcall AutomationSecurity(
		[out, retval]MsoAutomationSecurity* RHS);
	[id(0x00000795), propput, helpcontext(0x00010795)]
	HRESULT __stdcall AutomationSecurity(
		[in]MsoAutomationSecurity RHS);
	[id(0x00000796), propget, helpcontext(0x00010796)]
	HRESULT __stdcall FileDialog(
		[in]MsoFileDialogType fileDialogType,
		[out, retval]FileDialog** RHS);
	[id(0x00000798), hidden, helpcontext(0x00010798)]
	HRESULT __stdcall Dummy14();
	[id(0x00000799), helpcontext(0x00010799)]
	HRESULT __stdcall CalculateFullRebuild();
	[id(0x0000079a), propget, helpcontext(0x0001079a)]
	HRESULT __stdcall DisplayPasteOptions(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000079a), propput, helpcontext(0x0001079a)]
	HRESULT __stdcall DisplayPasteOptions(
		[in]VARIANT_BOOL RHS);
	[id(0x0000079b), propget, helpcontext(0x0001079b)]
	HRESULT __stdcall DisplayInsertOptions(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000079b), propput, helpcontext(0x0001079b)]
	HRESULT __stdcall DisplayInsertOptions(
		[in]VARIANT_BOOL RHS);
	[id(0x0000079c), propget, helpcontext(0x0001079c)]
	HRESULT __stdcall GenerateGetPivotData(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000079c), propput, helpcontext(0x0001079c)]
	HRESULT __stdcall GenerateGetPivotData(
		[in]VARIANT_BOOL RHS);
	[id(0x0000079d), propget, helpcontext(0x0001079d)]
	HRESULT __stdcall AutoRecover(
		[out, retval]AutoRecover** RHS);
	[id(0x0000079e), propget, helpcontext(0x0001079e)]
	HRESULT __stdcall Hwnd(
		[out, retval]long* RHS);
	[id(0x0000079f), propget, helpcontext(0x0001079f)]
	HRESULT __stdcall Hinstance(
		[out, retval]long* RHS);
	[id(0x000007a0), helpcontext(0x000107a0)]
	HRESULT __stdcall CheckAbort(
		[in, optional]VARIANT KeepAbort);
	[id(0x000007a2), propget, helpcontext(0x000107a2)]
	HRESULT __stdcall ErrorCheckingOptions(
		[out, retval]ErrorCheckingOptions** RHS);
	[id(0x000007a3), propget, helpcontext(0x000107a3)]
	HRESULT __stdcall AutoFormatAsYouTypeReplaceHyperlinks(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007a3), propput, helpcontext(0x000107a3)]
	HRESULT __stdcall AutoFormatAsYouTypeReplaceHyperlinks(
		[in]VARIANT_BOOL RHS);
	[id(0x000007a4), propget, helpcontext(0x000107a4)]
	HRESULT __stdcall SmartTagRecognizers(
		[out, retval]SmartTagRecognizers** RHS);
	[id(0x0000061d), propget, helpcontext(0x0001061d)]
	HRESULT __stdcall NewWorkbook(
		[out, retval]NewFile** RHS);
	[id(0x000007a5), propget, helpcontext(0x000107a5)]
	HRESULT __stdcall SpellingOptions(
		[out, retval]SpellingOptions** RHS);
	[id(0x000007a6), propget, helpcontext(0x000107a6)]
	HRESULT __stdcall Speech(
		[out, retval]Speech** RHS);
	[id(0x000007a7), propget, helpcontext(0x000107a7)]
	HRESULT __stdcall MapPaperSize(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007a7), propput, helpcontext(0x000107a7)]
	HRESULT __stdcall MapPaperSize(
		[in]VARIANT_BOOL RHS);
	[id(0x000007a8), propget, helpcontext(0x000107a8)]
	HRESULT __stdcall ShowStartupDialog(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007a8), propput, helpcontext(0x000107a8)]
	HRESULT __stdcall ShowStartupDialog(
		[in]VARIANT_BOOL RHS);
	[id(0x00000711), propget, helpcontext(0x00010711)]
	HRESULT __stdcall DecimalSeparator(
		[out, retval]BSTR* RHS);
	[id(0x00000711), propput, helpcontext(0x00010711)]
	HRESULT __stdcall DecimalSeparator(
		[in]BSTR RHS);
	[id(0x00000712), propget, helpcontext(0x00010712)]
	HRESULT __stdcall ThousandsSeparator(
		[out, retval]BSTR* RHS);
	[id(0x00000712), propput, helpcontext(0x00010712)]
	HRESULT __stdcall ThousandsSeparator(
		[in]BSTR RHS);
	[id(0x000007a9), propget, helpcontext(0x000107a9)]
	HRESULT __stdcall UseSystemSeparators(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007a9), propput, helpcontext(0x000107a9)]
	HRESULT __stdcall UseSystemSeparators(
		[in]VARIANT_BOOL RHS);
	[id(0x000007aa), propget, helpcontext(0x000107aa)]
	HRESULT __stdcall ThisCell(
		[out, retval]Range** RHS);
	[id(0x000007ab), propget, helpcontext(0x000107ab)]
	HRESULT __stdcall RTD(
		[out, retval]RTD** RHS);
	[id(0x000008cb), propget, helpcontext(0x000108cb)]
	HRESULT __stdcall DisplayDocumentActionTaskPane(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008cb), propput, helpcontext(0x000108cb)]
	HRESULT __stdcall DisplayDocumentActionTaskPane(
		[in]VARIANT_BOOL RHS);
	[id(0x000008cc), helpcontext(0x000108cc)]
	HRESULT __stdcall DisplayXMLSourcePane(
		[in, optional]VARIANT XmlMap);
	[id(0x000008ce), propget, helpcontext(0x000108ce)]
	HRESULT __stdcall ArbitraryXMLSupportAvailable(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008cf), hidden, helpcontext(0x000108cf)]
	HRESULT __stdcall Support(
		[in]IDispatch* Object,
		[in]long ID,
		[in, optional]VARIANT arg,
		[out, retval]VARIANT* RHS);
	[id(0x00000945), hidden, helpcontext(0x00010945)]
	HRESULT __stdcall Dummy20(
		[in]long grfCompareFunctions,
		[out, retval]VARIANT* RHS);
	[id(0x00000947), propget, helpcontext(0x00010947)]
	HRESULT __stdcall MeasurementUnit(
		[out, retval]long* RHS);
	[id(0x00000947), propput, helpcontext(0x00010947)]
	HRESULT __stdcall MeasurementUnit(
		[in]long RHS);
	[id(0x00000948), propget, helpcontext(0x00010948)]
	HRESULT __stdcall ShowSelectionFloaties(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000948), propput, helpcontext(0x00010948)]
	HRESULT __stdcall ShowSelectionFloaties(
		[in]VARIANT_BOOL RHS);
	[id(0x00000949), propget, helpcontext(0x00010949)]
	HRESULT __stdcall ShowMenuFloaties(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000949), propput, helpcontext(0x00010949)]
	HRESULT __stdcall ShowMenuFloaties(
		[in]VARIANT_BOOL RHS);
	[id(0x0000094a), propget, helpcontext(0x0001094a)]
	HRESULT __stdcall ShowDevTools(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000094a), propput, helpcontext(0x0001094a)]
	HRESULT __stdcall ShowDevTools(
		[in]VARIANT_BOOL RHS);
	[id(0x0000094b), propget, helpcontext(0x0001094b)]
	HRESULT __stdcall EnableLivePreview(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000094b), propput, helpcontext(0x0001094b)]
	HRESULT __stdcall EnableLivePreview(
		[in]VARIANT_BOOL RHS);
	[id(0x0000094c), propget, helpcontext(0x0001094c)]
	HRESULT __stdcall DisplayDocumentInformationPanel(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000094c), propput, helpcontext(0x0001094c)]
	HRESULT __stdcall DisplayDocumentInformationPanel(
		[in]VARIANT_BOOL RHS);
	[id(0x0000094d), propget, helpcontext(0x0001094d)]
	HRESULT __stdcall AlwaysUseClearType(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000094d), propput, helpcontext(0x0001094d)]
	HRESULT __stdcall AlwaysUseClearType(
		[in]VARIANT_BOOL RHS);
	[id(0x0000094e), propget, helpcontext(0x0001094e)]
	HRESULT __stdcall WarnOnFunctionNameConflict(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000094e), propput, helpcontext(0x0001094e)]
	HRESULT __stdcall WarnOnFunctionNameConflict(
		[in]VARIANT_BOOL RHS);
	[id(0x0000094f), propget, helpcontext(0x0001094f)]
	HRESULT __stdcall FormulaBarHeight(
		[out, retval]long* RHS);
	[id(0x0000094f), propput, helpcontext(0x0001094f)]
	HRESULT __stdcall FormulaBarHeight(
		[in]long RHS);
	[id(0x00000950), propget, helpcontext(0x00010950)]
	HRESULT __stdcall DisplayFormulaAutoComplete(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000950), propput, helpcontext(0x00010950)]
	HRESULT __stdcall DisplayFormulaAutoComplete(
		[in]VARIANT_BOOL RHS);
	[id(0x00000951), propget, helpcontext(0x00010951)]
	HRESULT __stdcall GenerateTableRefs(
		[in]long lcid,
		[out, retval]XlGenerateTableRefs* RHS);
	[id(0x00000951), propput, helpcontext(0x00010951)]
	HRESULT __stdcall GenerateTableRefs(
		[in]long lcid,
		[in]XlGenerateTableRefs RHS);
	[id(0x00000952), propget, helpcontext(0x00010952)]
	HRESULT __stdcall Assistance(
		[out, retval]IAssistance** RHS);
	[id(0x00000953), helpcontext(0x00010953)]
	HRESULT __stdcall CalculateUntilAsyncQueriesDone();
	[id(0x00000954), propget, helpcontext(0x00010954)]
	HRESULT __stdcall EnableLargeOperationAlert(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000954), propput, helpcontext(0x00010954)]
	HRESULT __stdcall EnableLargeOperationAlert(
		[in]VARIANT_BOOL RHS);
	[id(0x00000955), propget, helpcontext(0x00010955)]
	HRESULT __stdcall LargeOperationCellThousandCount(
		[out, retval]long* RHS);
	[id(0x00000955), propput, helpcontext(0x00010955)]
	HRESULT __stdcall LargeOperationCellThousandCount(
		[in]long RHS);
	[id(0x00000956), propget, helpcontext(0x00010956)]
	HRESULT __stdcall DeferAsyncQueries(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000956), propput, helpcontext(0x00010956)]
	HRESULT __stdcall DeferAsyncQueries(
		[in]VARIANT_BOOL RHS);
	[id(0x00000957), propget, helpcontext(0x00010957)]
	HRESULT __stdcall MultiThreadedCalculation(
		[out, retval]MultiThreadedCalculation** RHS);
	[id(0x00000958), helpcontext(0x00010958)]
	HRESULT __stdcall SharePointVersion(
		[in]BSTR bstrUrl,
		[out, retval]long* RHS);
	[id(0x0000095a), propget, helpcontext(0x0001095a)]
	HRESULT __stdcall ActiveEncryptionSession(
		[out, retval]long* RHS);
	[id(0x0000095b), propget, helpcontext(0x0001095b)]
	HRESULT __stdcall HighQualityModeForGraphics(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000095b), propput, helpcontext(0x0001095b)]
	HRESULT __stdcall HighQualityModeForGraphics(
		[in]VARIANT_BOOL RHS);
	[id(0x00000ad0), propget, helpcontext(0x00010ad0)]
	HRESULT __stdcall FileExportConverters(
		[out, retval]FileExportConverters** RHS);
};
'!
!Excel_Application categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!Excel_Application methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

_evaluate: name lcid: lcid
	"Answer the <VARIANT> result of invoking the _Evaluate() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		_Evaluate: name asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

_Evaluate: name lcid: lcid rhs: rhs
	"Private - Invoke the _Evaluate() method of the COM object.

		HRESULT __stdcall _Evaluate(
			[in]VARIANT Name,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 35 variant sdword variant*>
	^self invalidCall!

_findFile: lcid
	"Invoke the _FindFile() method of the COM object."

	^self _FindFile: lcid
!

_FindFile: lcid
	"Private - Invoke the _FindFile() method of the COM object.

		HRESULT __stdcall _FindFile(
			[in]long lcid);"

	<virtual stdcall: hresult 152 sdword>
	^self invalidCall!

_run2: lcid
	"Answer the <VARIANT> result of invoking the _Run2() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _run2: VARIANT unspecified
		 arg1: VARIANT unspecified
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
		 arg30: VARIANT unspecified
		 lcid: lcid!

_run2: macro arg1: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 lcid: lcid
	"Answer the <VARIANT> result of invoking the _Run2() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		_Run2: macro asVariant
		arg1: arg1 asVariant
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
		lcid: lcid
		rhs: answer.
	^answer asObject
!

_Run2: macro arg1: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 lcid: lcid rhs: rhs
	"Private - Invoke the _Run2() method of the COM object.

		HRESULT __stdcall _Run2(
			[in, optional]VARIANT Macro,
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
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 44 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword variant*>
	^self invalidCall!

_wait: time lcid: lcid
	"Invoke the _Wait() method of the COM object."

	^self
		_Wait: time asVariant
		lcid: lcid
!

_Wait: time lcid: lcid
	"Private - Invoke the _Wait() method of the COM object.

		HRESULT __stdcall _Wait(
			[in]VARIANT Time,
			[in]long lcid);"

	<virtual stdcall: hresult 286 variant sdword>
	^self invalidCall!

_wsFunction: lcid
	"Answer the <VARIANT> result of invoking the _WSFunction() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _wsFunction: VARIANT unspecified
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
		 arg30: VARIANT unspecified
		 lcid: lcid!

_wsFunction: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 lcid: lcid
	"Answer the <VARIANT> result of invoking the _WSFunction() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		_WSFunction: arg1 asVariant
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
		lcid: lcid
		rhs: answer.
	^answer asObject
!

_WSFunction: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 lcid: lcid rhs: rhs
	"Private - Invoke the _WSFunction() method of the COM object.

		HRESULT __stdcall _WSFunction(
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
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 300 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword variant*>
	^self invalidCall!

activateMicrosoftApp: index lcid: lcid
	"Invoke the ActivateMicrosoftApp() method of the COM object."

	^self
		ActivateMicrosoftApp: index
		lcid: lcid
!

ActivateMicrosoftApp: index lcid: lcid
	"Private - Invoke the ActivateMicrosoftApp() method of the COM object.

		HRESULT __stdcall ActivateMicrosoftApp(
			[in]XlMSApplication Index,
			[in]long lcid);"

	<virtual stdcall: hresult 58 sdword sdword>
	^self invalidCall!

activeCell
	"Answer the <ExcelRange> value of the 'ActiveCell' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_ActiveCell: answer.
	^answer asObject
!

activeChart
	"Answer the <Excel_Chart> value of the 'ActiveChart' property of the receiver."

	| answer |
	answer := Excel_Chart newPointer.
	self get_ActiveChart: answer.
	^answer asObject
!

activeDialog
	"Answer the <ExcelDialogSheet> value of the 'ActiveDialog' property of the receiver."

	| answer |
	answer := ExcelDialogSheet newPointer.
	self get_ActiveDialog: answer.
	^answer asObject
!

activeEncryptionSession
	"Answer the <sdword> value of the 'ActiveEncryptionSession' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ActiveEncryptionSession: answer.
	^answer asObject
!

activeMenuBar
	"Answer the <ExcelMenuBar> value of the 'ActiveMenuBar' property of the receiver."

	| answer |
	answer := ExcelMenuBar newPointer.
	self get_ActiveMenuBar: answer.
	^answer asObject
!

activePrinter: lcid
	"Answer the <bstr> value of the 'ActivePrinter' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_ActivePrinter: lcid
		rhs: answer.
	^answer asObject
!

activePrinter: lcid rhs: rhs
	"Set the 'ActivePrinter' property of the receiver to the <bstr> value of the argument."

	self
		put_ActivePrinter: lcid
		rhs: rhs
!

activeSheet
	"Answer the <IDispatch> value of the 'ActiveSheet' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_ActiveSheet: answer.
	^answer asObject
!

activeWindow
	"Answer the <ExcelWindow> value of the 'ActiveWindow' property of the receiver."

	| answer |
	answer := ExcelWindow newPointer.
	self get_ActiveWindow: answer.
	^answer asObject
!

activeWorkbook
	"Answer the <Excel_Workbook> value of the 'ActiveWorkbook' property of the receiver."

	| answer |
	answer := Excel_Workbook newPointer.
	self get_ActiveWorkbook: answer.
	^answer asObject
!

addChartAutoFormat: chart name: name description: description lcid: lcid
	"Invoke the AddChartAutoFormat() method of the COM object."

	^self
		AddChartAutoFormat: chart asVariant
		name: name
		description: description asVariant
		lcid: lcid
!

AddChartAutoFormat: chart name: name description: description lcid: lcid
	"Private - Invoke the AddChartAutoFormat() method of the COM object.

		HRESULT __stdcall AddChartAutoFormat(
			[in]VARIANT Chart,
			[in]BSTR Name,
			[in, optional]VARIANT Description,
			[in]long lcid);"

	<virtual stdcall: hresult 59 variant bstr variant sdword>
	^self invalidCall!

addChartAutoFormat: chart name: name lcid: lcid
	"Invoke the AddChartAutoFormat() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addChartAutoFormat: chart
		 name: name
		 description: VARIANT unspecified
		 lcid: lcid!

addCustomList: listArray byRow: byRow lcid: lcid
	"Invoke the AddCustomList() method of the COM object."

	^self
		AddCustomList: listArray asVariant
		byRow: byRow asVariant
		lcid: lcid
!

AddCustomList: listArray byRow: byRow lcid: lcid
	"Private - Invoke the AddCustomList() method of the COM object.

		HRESULT __stdcall AddCustomList(
			[in]VARIANT ListArray,
			[in, optional]VARIANT ByRow,
			[in]long lcid);"

	<virtual stdcall: hresult 60 variant variant sdword>
	^self invalidCall!

addCustomList: listArray lcid: lcid
	"Invoke the AddCustomList() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addCustomList: listArray
		 byRow: VARIANT unspecified
		 lcid: lcid!

addIns
	"Answer the <ExcelAddIns> value of the 'AddIns' property of the receiver."

	| answer |
	answer := ExcelAddIns newPointer.
	self get_AddIns: answer.
	^answer asObject
!

alertBeforeOverwriting: lcid
	"Answer the <varbool> value of the 'AlertBeforeOverwriting' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_AlertBeforeOverwriting: lcid
		rhs: answer.
	^answer asObject
!

alertBeforeOverwriting: lcid rhs: rhs
	"Set the 'AlertBeforeOverwriting' property of the receiver to the <varbool> value of the argument."

	self
		put_AlertBeforeOverwriting: lcid
		rhs: rhs
!

altStartupPath: lcid
	"Answer the <bstr> value of the 'AltStartupPath' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_AltStartupPath: lcid
		rhs: answer.
	^answer asObject
!

altStartupPath: lcid rhs: rhs
	"Set the 'AltStartupPath' property of the receiver to the <bstr> value of the argument."

	self
		put_AltStartupPath: lcid
		rhs: rhs
!

alwaysUseClearType
	"Answer the <varbool> value of the 'AlwaysUseClearType' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AlwaysUseClearType: answer.
	^answer asObject
!

alwaysUseClearType: rhs
	"Set the 'AlwaysUseClearType' property of the receiver to the <varbool> value of the argument."

	self put_AlwaysUseClearType: rhs
!

answerWizard
	"Answer the <OfficeAnswerWizard> value of the 'AnswerWizard' property of the receiver."

	| answer |
	answer := OfficeAnswerWizard newPointer.
	self get_AnswerWizard: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

arbitraryXMLSupportAvailable
	"Answer the <varbool> value of the 'ArbitraryXMLSupportAvailable' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ArbitraryXMLSupportAvailable: answer.
	^answer asObject
!

askToUpdateLinks: lcid
	"Answer the <varbool> value of the 'AskToUpdateLinks' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_AskToUpdateLinks: lcid
		rhs: answer.
	^answer asObject
!

askToUpdateLinks: lcid rhs: rhs
	"Set the 'AskToUpdateLinks' property of the receiver to the <varbool> value of the argument."

	self
		put_AskToUpdateLinks: lcid
		rhs: rhs
!

assistance
	"Answer the <OfficeIAssistance> value of the 'Assistance' property of the receiver."

	| answer |
	answer := OfficeIAssistance newPointer.
	self get_Assistance: answer.
	^answer asObject
!

assistant
	"Answer the <OfficeAssistant> value of the 'Assistant' property of the receiver."

	| answer |
	answer := OfficeAssistant newPointer.
	self get_Assistant: answer.
	^answer asObject
!

autoCorrect
	"Answer the <ExcelAutoCorrect> value of the 'AutoCorrect' property of the receiver."

	| answer |
	answer := ExcelAutoCorrect newPointer.
	self get_AutoCorrect: answer.
	^answer asObject
!

autoFormatAsYouTypeReplaceHyperlinks
	"Answer the <varbool> value of the 'AutoFormatAsYouTypeReplaceHyperlinks' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoFormatAsYouTypeReplaceHyperlinks: answer.
	^answer asObject
!

autoFormatAsYouTypeReplaceHyperlinks: rhs
	"Set the 'AutoFormatAsYouTypeReplaceHyperlinks' property of the receiver to the <varbool> value of the argument."

	self put_AutoFormatAsYouTypeReplaceHyperlinks: rhs
!

automationSecurity
	"Answer the <sdword> value of the 'AutomationSecurity' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutomationSecurity: answer.
	^answer asObject
!

automationSecurity: rhs
	"Set the 'AutomationSecurity' property of the receiver to the <sdword> value of the argument."

	self put_AutomationSecurity: rhs
!

autoPercentEntry
	"Answer the <varbool> value of the 'AutoPercentEntry' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoPercentEntry: answer.
	^answer asObject
!

autoPercentEntry: rhs
	"Set the 'AutoPercentEntry' property of the receiver to the <varbool> value of the argument."

	self put_AutoPercentEntry: rhs
!

autoRecover
	"Answer the <ExcelAutoRecover> value of the 'AutoRecover' property of the receiver."

	| answer |
	answer := ExcelAutoRecover newPointer.
	self get_AutoRecover: answer.
	^answer asObject
!

build: lcid
	"Answer the <sdword> value of the 'Build' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Build: lcid
		rhs: answer.
	^answer asObject
!

calculate: lcid
	"Invoke the Calculate() method of the COM object."

	^self Calculate: lcid
!

Calculate: lcid
	"Private - Invoke the Calculate() method of the COM object.

		HRESULT __stdcall Calculate(
			[in]long lcid);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

calculateBeforeSave: lcid
	"Answer the <varbool> value of the 'CalculateBeforeSave' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_CalculateBeforeSave: lcid
		rhs: answer.
	^answer asObject
!

calculateBeforeSave: lcid rhs: rhs
	"Set the 'CalculateBeforeSave' property of the receiver to the <varbool> value of the argument."

	self
		put_CalculateBeforeSave: lcid
		rhs: rhs
!

calculateFull
	"Invoke the CalculateFull() method of the COM object."

	^self CalculateFull
!

CalculateFull
	"Private - Invoke the CalculateFull() method of the COM object.

		HRESULT __stdcall CalculateFull();"

	<virtual stdcall: hresult 320>
	^self invalidCall!

calculateFullRebuild
	"Invoke the CalculateFullRebuild() method of the COM object."

	^self CalculateFullRebuild
!

CalculateFullRebuild
	"Private - Invoke the CalculateFullRebuild() method of the COM object.

		HRESULT __stdcall CalculateFullRebuild();"

	<virtual stdcall: hresult 344>
	^self invalidCall!

calculateUntilAsyncQueriesDone
	"Invoke the CalculateUntilAsyncQueriesDone() method of the COM object."

	^self CalculateUntilAsyncQueriesDone
!

CalculateUntilAsyncQueriesDone
	"Private - Invoke the CalculateUntilAsyncQueriesDone() method of the COM object.

		HRESULT __stdcall CalculateUntilAsyncQueriesDone();"

	<virtual stdcall: hresult 403>
	^self invalidCall!

calculation: lcid
	"Answer the <sdword> value of the 'Calculation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Calculation: lcid
		rhs: answer.
	^answer asObject
!

calculation: lcid rhs: rhs
	"Set the 'Calculation' property of the receiver to the <sdword> value of the argument."

	self
		put_Calculation: lcid
		rhs: rhs
!

calculationInterruptKey
	"Answer the <sdword> value of the 'CalculationInterruptKey' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CalculationInterruptKey: answer.
	^answer asObject
!

calculationInterruptKey: rhs
	"Set the 'CalculationInterruptKey' property of the receiver to the <sdword> value of the argument."

	self put_CalculationInterruptKey: rhs
!

calculationState
	"Answer the <sdword> value of the 'CalculationState' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CalculationState: answer.
	^answer asObject
!

calculationVersion
	"Answer the <sdword> value of the 'CalculationVersion' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CalculationVersion: answer.
	^answer asObject
!

caller: lcid
	"Answer the <variant> value of the 'Caller' property of the receiver."

	^self
		 caller: VARIANT unspecified
		 lcid: lcid!

caller: index lcid: lcid
	"Answer the <variant> value of the 'Caller' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Caller: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

canPlaySounds: lcid
	"Answer the <varbool> value of the 'CanPlaySounds' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_CanPlaySounds: lcid
		rhs: answer.
	^answer asObject
!

canRecordSounds: lcid
	"Answer the <varbool> value of the 'CanRecordSounds' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_CanRecordSounds: lcid
		rhs: answer.
	^answer asObject
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument."

	self put_Caption: rhs
!

cellDragAndDrop: lcid
	"Answer the <varbool> value of the 'CellDragAndDrop' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_CellDragAndDrop: lcid
		rhs: answer.
	^answer asObject
!

cellDragAndDrop: lcid rhs: rhs
	"Set the 'CellDragAndDrop' property of the receiver to the <varbool> value of the argument."

	self
		put_CellDragAndDrop: lcid
		rhs: rhs
!

cells
	"Answer the <ExcelRange> value of the 'Cells' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Cells: answer.
	^answer asObject
!

centimetersToPoints: centimeters lcid: lcid
	"Answer the <DOUBLE> result of invoking the CentimetersToPoints() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		CentimetersToPoints: centimeters
		lcid: lcid
		rhs: answer.
	^answer asObject
!

CentimetersToPoints: centimeters lcid: lcid rhs: rhs
	"Private - Invoke the CentimetersToPoints() method of the COM object.

		HRESULT __stdcall CentimetersToPoints(
			[in]double Centimeters,
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 82 double sdword double*>
	^self invalidCall!

charts
	"Answer the <ExcelSheets> value of the 'Charts' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Charts: answer.
	^answer asObject
!

checkAbort
	"Invoke the CheckAbort() method of the COM object.
	Default values are passed for all optional parameters."

	^self checkAbort: VARIANT unspecified!

checkAbort: keepAbort
	"Invoke the CheckAbort() method of the COM object."

	^self CheckAbort: keepAbort asVariant
!

CheckAbort: keepAbort
	"Private - Invoke the CheckAbort() method of the COM object.

		HRESULT __stdcall CheckAbort(
			[in, optional]VARIANT KeepAbort);"

	<virtual stdcall: hresult 354 variant>
	^self invalidCall!

checkSpelling: word customDictionary: customDictionary ignoreUppercase: ignoreUppercase lcid: lcid
	"Answer the <VARIANT_BOOL> result of invoking the CheckSpelling() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		CheckSpelling: word
		customDictionary: customDictionary asVariant
		ignoreUppercase: ignoreUppercase asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

CheckSpelling: word customDictionary: customDictionary ignoreUppercase: ignoreUppercase lcid: lcid rhs: rhs
	"Private - Invoke the CheckSpelling() method of the COM object.

		HRESULT __stdcall CheckSpelling(
			[in]BSTR Word,
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 83 bstr variant variant sdword varbool*>
	^self invalidCall!

checkSpelling: word lcid: lcid
	"Answer the <VARIANT_BOOL> result of invoking the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkSpelling: word
		 customDictionary: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 lcid: lcid!

clipboardFormats: lcid
	"Answer the <variant> value of the 'ClipboardFormats' property of the receiver."

	^self
		 clipboardFormats: VARIANT unspecified
		 lcid: lcid!

clipboardFormats: index lcid: lcid
	"Answer the <variant> value of the 'ClipboardFormats' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_ClipboardFormats: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

colorButtons
	"Answer the <varbool> value of the 'ColorButtons' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ColorButtons: answer.
	^answer asObject
!

colorButtons: rhs
	"Set the 'ColorButtons' property of the receiver to the <varbool> value of the argument."

	self put_ColorButtons: rhs
!

columns
	"Answer the <ExcelRange> value of the 'Columns' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Columns: answer.
	^answer asObject
!

comAddIns
	"Answer the <OfficeCOMAddIns> value of the 'COMAddIns' property of the receiver."

	| answer |
	answer := OfficeCOMAddIns newPointer.
	self get_COMAddIns: answer.
	^answer asObject
!

commandBars
	"Answer the <Office_CommandBars> value of the 'CommandBars' property of the receiver."

	| answer |
	answer := Office_CommandBars newPointer.
	self get_CommandBars: answer.
	^answer asObject
!

commandUnderlines: lcid
	"Answer the <sdword> value of the 'CommandUnderlines' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_CommandUnderlines: lcid
		rhs: answer.
	^answer asObject
!

commandUnderlines: lcid rhs: rhs
	"Set the 'CommandUnderlines' property of the receiver to the <sdword> value of the argument."

	self
		put_CommandUnderlines: lcid
		rhs: rhs
!

constrainNumeric: lcid
	"Answer the <varbool> value of the 'ConstrainNumeric' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ConstrainNumeric: lcid
		rhs: answer.
	^answer asObject
!

constrainNumeric: lcid rhs: rhs
	"Set the 'ConstrainNumeric' property of the receiver to the <varbool> value of the argument."

	self
		put_ConstrainNumeric: lcid
		rhs: rhs
!

controlCharacters: lcid
	"Answer the <varbool> value of the 'ControlCharacters' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ControlCharacters: lcid
		rhs: answer.
	^answer asObject
!

controlCharacters: lcid rhs: rhs
	"Set the 'ControlCharacters' property of the receiver to the <varbool> value of the argument."

	self
		put_ControlCharacters: lcid
		rhs: rhs
!

convertFormula: formula fromReferenceStyle: fromReferenceStyle lcid: lcid
	"Answer the <VARIANT> result of invoking the ConvertFormula() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 convertFormula: formula
		 fromReferenceStyle: fromReferenceStyle
		 toReferenceStyle: VARIANT unspecified
		 toAbsolute: VARIANT unspecified
		 relativeTo: VARIANT unspecified
		 lcid: lcid!

convertFormula: formula fromReferenceStyle: fromReferenceStyle toReferenceStyle: toReferenceStyle toAbsolute: toAbsolute relativeTo: relativeTo lcid: lcid
	"Answer the <VARIANT> result of invoking the ConvertFormula() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ConvertFormula: formula asVariant
		fromReferenceStyle: fromReferenceStyle
		toReferenceStyle: toReferenceStyle asVariant
		toAbsolute: toAbsolute asVariant
		relativeTo: relativeTo asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

ConvertFormula: formula fromReferenceStyle: fromReferenceStyle toReferenceStyle: toReferenceStyle toAbsolute: toAbsolute relativeTo: relativeTo lcid: lcid rhs: rhs
	"Private - Invoke the ConvertFormula() method of the COM object.

		HRESULT __stdcall ConvertFormula(
			[in]VARIANT Formula,
			[in]XlReferenceStyle FromReferenceStyle,
			[in, optional]VARIANT ToReferenceStyle,
			[in, optional]VARIANT ToAbsolute,
			[in, optional]VARIANT RelativeTo,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 93 variant sdword variant variant variant sdword variant*>
	^self invalidCall!

copyObjectsWithCells: lcid
	"Answer the <varbool> value of the 'CopyObjectsWithCells' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_CopyObjectsWithCells: lcid
		rhs: answer.
	^answer asObject
!

copyObjectsWithCells: lcid rhs: rhs
	"Set the 'CopyObjectsWithCells' property of the receiver to the <varbool> value of the argument."

	self
		put_CopyObjectsWithCells: lcid
		rhs: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

cursor: lcid
	"Answer the <sdword> value of the 'Cursor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Cursor: lcid
		rhs: answer.
	^answer asObject
!

cursor: lcid rhs: rhs
	"Set the 'Cursor' property of the receiver to the <sdword> value of the argument."

	self
		put_Cursor: lcid
		rhs: rhs
!

cursorMovement: lcid
	"Answer the <sdword> value of the 'CursorMovement' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_CursorMovement: lcid
		rhs: answer.
	^answer asObject
!

cursorMovement: lcid rhs: rhs
	"Set the 'CursorMovement' property of the receiver to the <sdword> value of the argument."

	self
		put_CursorMovement: lcid
		rhs: rhs
!

customListCount: lcid
	"Answer the <sdword> value of the 'CustomListCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_CustomListCount: lcid
		rhs: answer.
	^answer asObject
!

cutCopyMode: lcid
	"Answer the <sdword> value of the 'CutCopyMode' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_CutCopyMode: lcid
		rhs: answer.
	^answer asObject
!

cutCopyMode: lcid rhs: rhs
	"Set the 'CutCopyMode' property of the receiver to the <sdword> value of the argument."

	self
		put_CutCopyMode: lcid
		rhs: rhs
!

dataEntryMode: lcid
	"Answer the <sdword> value of the 'DataEntryMode' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_DataEntryMode: lcid
		rhs: answer.
	^answer asObject
!

dataEntryMode: lcid rhs: rhs
	"Set the 'DataEntryMode' property of the receiver to the <sdword> value of the argument."

	self
		put_DataEntryMode: lcid
		rhs: rhs
!

ddeAppReturnCode: lcid
	"Answer the <sdword> value of the 'DDEAppReturnCode' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_DDEAppReturnCode: lcid
		rhs: answer.
	^answer asObject
!

ddeExecute: channel string: string lcid: lcid
	"Invoke the DDEExecute() method of the COM object."

	^self
		DDEExecute: channel
		string: string
		lcid: lcid
!

DDEExecute: channel string: string lcid: lcid
	"Private - Invoke the DDEExecute() method of the COM object.

		HRESULT __stdcall DDEExecute(
			[in]long Channel,
			[in]BSTR String,
			[in]long lcid);"

	<virtual stdcall: hresult 28 sdword bstr sdword>
	^self invalidCall!

ddeInitiate: app topic: topic lcid: lcid
	"Answer the <SDWORD> result of invoking the DDEInitiate() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		DDEInitiate: app
		topic: topic
		lcid: lcid
		rhs: answer.
	^answer asObject
!

DDEInitiate: app topic: topic lcid: lcid rhs: rhs
	"Private - Invoke the DDEInitiate() method of the COM object.

		HRESULT __stdcall DDEInitiate(
			[in]BSTR App,
			[in]BSTR Topic,
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 29 bstr bstr sdword sdword*>
	^self invalidCall!

ddePoke: channel item: item data: data lcid: lcid
	"Invoke the DDEPoke() method of the COM object."

	^self
		DDEPoke: channel
		item: item asVariant
		data: data asVariant
		lcid: lcid
!

DDEPoke: channel item: item data: data lcid: lcid
	"Private - Invoke the DDEPoke() method of the COM object.

		HRESULT __stdcall DDEPoke(
			[in]long Channel,
			[in]VARIANT Item,
			[in]VARIANT Data,
			[in]long lcid);"

	<virtual stdcall: hresult 30 sdword variant variant sdword>
	^self invalidCall!

ddeRequest: channel item: item lcid: lcid
	"Answer the <VARIANT> result of invoking the DDERequest() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		DDERequest: channel
		item: item
		lcid: lcid
		rhs: answer.
	^answer asObject
!

DDERequest: channel item: item lcid: lcid rhs: rhs
	"Private - Invoke the DDERequest() method of the COM object.

		HRESULT __stdcall DDERequest(
			[in]long Channel,
			[in]BSTR Item,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 31 sdword bstr sdword variant*>
	^self invalidCall!

ddeTerminate: channel lcid: lcid
	"Invoke the DDETerminate() method of the COM object."

	^self
		DDETerminate: channel
		lcid: lcid
!

DDETerminate: channel lcid: lcid
	"Private - Invoke the DDETerminate() method of the COM object.

		HRESULT __stdcall DDETerminate(
			[in]long Channel,
			[in]long lcid);"

	<virtual stdcall: hresult 32 sdword sdword>
	^self invalidCall!

decimalSeparator
	"Answer the <bstr> value of the 'DecimalSeparator' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_DecimalSeparator: answer.
	^answer asObject
!

decimalSeparator: rhs
	"Set the 'DecimalSeparator' property of the receiver to the <bstr> value of the argument."

	self put_DecimalSeparator: rhs
!

defaultFilePath: lcid
	"Answer the <bstr> value of the 'DefaultFilePath' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_DefaultFilePath: lcid
		rhs: answer.
	^answer asObject
!

defaultFilePath: lcid rhs: rhs
	"Set the 'DefaultFilePath' property of the receiver to the <bstr> value of the argument."

	self
		put_DefaultFilePath: lcid
		rhs: rhs
!

defaultSaveFormat
	"Answer the <sdword> value of the 'DefaultSaveFormat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DefaultSaveFormat: answer.
	^answer asObject
!

defaultSaveFormat: rhs
	"Set the 'DefaultSaveFormat' property of the receiver to the <sdword> value of the argument."

	self put_DefaultSaveFormat: rhs
!

defaultSheetDirection: lcid
	"Answer the <sdword> value of the 'DefaultSheetDirection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_DefaultSheetDirection: lcid
		rhs: answer.
	^answer asObject
!

defaultSheetDirection: lcid rhs: rhs
	"Set the 'DefaultSheetDirection' property of the receiver to the <sdword> value of the argument."

	self
		put_DefaultSheetDirection: lcid
		rhs: rhs
!

defaultWebOptions
	"Answer the <ExcelDefaultWebOptions> value of the 'DefaultWebOptions' property of the receiver."

	| answer |
	answer := ExcelDefaultWebOptions newPointer.
	self get_DefaultWebOptions: answer.
	^answer asObject
!

deferAsyncQueries
	"Answer the <varbool> value of the 'DeferAsyncQueries' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DeferAsyncQueries: answer.
	^answer asObject
!

deferAsyncQueries: rhs
	"Set the 'DeferAsyncQueries' property of the receiver to the <varbool> value of the argument."

	self put_DeferAsyncQueries: rhs
!

deleteChartAutoFormat: name lcid: lcid
	"Invoke the DeleteChartAutoFormat() method of the COM object."

	^self
		DeleteChartAutoFormat: name
		lcid: lcid
!

DeleteChartAutoFormat: name lcid: lcid
	"Private - Invoke the DeleteChartAutoFormat() method of the COM object.

		HRESULT __stdcall DeleteChartAutoFormat(
			[in]BSTR Name,
			[in]long lcid);"

	<virtual stdcall: hresult 117 bstr sdword>
	^self invalidCall!

deleteCustomList: listNum lcid: lcid
	"Invoke the DeleteCustomList() method of the COM object."

	^self
		DeleteCustomList: listNum
		lcid: lcid
!

DeleteCustomList: listNum lcid: lcid
	"Private - Invoke the DeleteCustomList() method of the COM object.

		HRESULT __stdcall DeleteCustomList(
			[in]long ListNum,
			[in]long lcid);"

	<virtual stdcall: hresult 118 sdword sdword>
	^self invalidCall!

dialogs
	"Answer the <ExcelDialogs> value of the 'Dialogs' property of the receiver."

	| answer |
	answer := ExcelDialogs newPointer.
	self get_Dialogs: answer.
	^answer asObject
!

dialogSheets
	"Answer the <ExcelSheets> value of the 'DialogSheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_DialogSheets: answer.
	^answer asObject
!

displayAlerts: lcid
	"Answer the <varbool> value of the 'DisplayAlerts' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayAlerts: lcid
		rhs: answer.
	^answer asObject
!

displayAlerts: lcid rhs: rhs
	"Set the 'DisplayAlerts' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayAlerts: lcid
		rhs: rhs
!

displayClipboardWindow: lcid
	"Answer the <varbool> value of the 'DisplayClipboardWindow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayClipboardWindow: lcid
		rhs: answer.
	^answer asObject
!

displayClipboardWindow: lcid rhs: rhs
	"Set the 'DisplayClipboardWindow' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayClipboardWindow: lcid
		rhs: rhs
!

displayCommentIndicator
	"Answer the <sdword> value of the 'DisplayCommentIndicator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DisplayCommentIndicator: answer.
	^answer asObject
!

displayCommentIndicator: rhs
	"Set the 'DisplayCommentIndicator' property of the receiver to the <sdword> value of the argument."

	self put_DisplayCommentIndicator: rhs
!

displayDocumentActionTaskPane
	"Answer the <varbool> value of the 'DisplayDocumentActionTaskPane' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayDocumentActionTaskPane: answer.
	^answer asObject
!

displayDocumentActionTaskPane: rhs
	"Set the 'DisplayDocumentActionTaskPane' property of the receiver to the <varbool> value of the argument."

	self put_DisplayDocumentActionTaskPane: rhs
!

displayDocumentInformationPanel
	"Answer the <varbool> value of the 'DisplayDocumentInformationPanel' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayDocumentInformationPanel: answer.
	^answer asObject
!

displayDocumentInformationPanel: rhs
	"Set the 'DisplayDocumentInformationPanel' property of the receiver to the <varbool> value of the argument."

	self put_DisplayDocumentInformationPanel: rhs
!

displayExcel4Menus: lcid
	"Answer the <varbool> value of the 'DisplayExcel4Menus' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayExcel4Menus: lcid
		rhs: answer.
	^answer asObject
!

displayExcel4Menus: lcid rhs: rhs
	"Set the 'DisplayExcel4Menus' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayExcel4Menus: lcid
		rhs: rhs
!

displayFormulaAutoComplete
	"Answer the <varbool> value of the 'DisplayFormulaAutoComplete' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayFormulaAutoComplete: answer.
	^answer asObject
!

displayFormulaAutoComplete: rhs
	"Set the 'DisplayFormulaAutoComplete' property of the receiver to the <varbool> value of the argument."

	self put_DisplayFormulaAutoComplete: rhs
!

displayFormulaBar: lcid
	"Answer the <varbool> value of the 'DisplayFormulaBar' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayFormulaBar: lcid
		rhs: answer.
	^answer asObject
!

displayFormulaBar: lcid rhs: rhs
	"Set the 'DisplayFormulaBar' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayFormulaBar: lcid
		rhs: rhs
!

displayFullScreen: lcid
	"Answer the <varbool> value of the 'DisplayFullScreen' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayFullScreen: lcid
		rhs: answer.
	^answer asObject
!

displayFullScreen: lcid rhs: rhs
	"Set the 'DisplayFullScreen' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayFullScreen: lcid
		rhs: rhs
!

displayFunctionToolTips
	"Answer the <varbool> value of the 'DisplayFunctionToolTips' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayFunctionToolTips: answer.
	^answer asObject
!

displayFunctionToolTips: rhs
	"Set the 'DisplayFunctionToolTips' property of the receiver to the <varbool> value of the argument."

	self put_DisplayFunctionToolTips: rhs
!

displayInfoWindow
	"Answer the <varbool> value of the 'DisplayInfoWindow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayInfoWindow: answer.
	^answer asObject
!

displayInfoWindow: rhs
	"Set the 'DisplayInfoWindow' property of the receiver to the <varbool> value of the argument."

	self put_DisplayInfoWindow: rhs
!

displayInsertOptions
	"Answer the <varbool> value of the 'DisplayInsertOptions' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayInsertOptions: answer.
	^answer asObject
!

displayInsertOptions: rhs
	"Set the 'DisplayInsertOptions' property of the receiver to the <varbool> value of the argument."

	self put_DisplayInsertOptions: rhs
!

displayNoteIndicator
	"Answer the <varbool> value of the 'DisplayNoteIndicator' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayNoteIndicator: answer.
	^answer asObject
!

displayNoteIndicator: rhs
	"Set the 'DisplayNoteIndicator' property of the receiver to the <varbool> value of the argument."

	self put_DisplayNoteIndicator: rhs
!

displayPasteOptions
	"Answer the <varbool> value of the 'DisplayPasteOptions' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayPasteOptions: answer.
	^answer asObject
!

displayPasteOptions: rhs
	"Set the 'DisplayPasteOptions' property of the receiver to the <varbool> value of the argument."

	self put_DisplayPasteOptions: rhs
!

displayRecentFiles
	"Answer the <varbool> value of the 'DisplayRecentFiles' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayRecentFiles: answer.
	^answer asObject
!

displayRecentFiles: rhs
	"Set the 'DisplayRecentFiles' property of the receiver to the <varbool> value of the argument."

	self put_DisplayRecentFiles: rhs
!

displayScrollBars: lcid
	"Answer the <varbool> value of the 'DisplayScrollBars' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayScrollBars: lcid
		rhs: answer.
	^answer asObject
!

displayScrollBars: lcid rhs: rhs
	"Set the 'DisplayScrollBars' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayScrollBars: lcid
		rhs: rhs
!

displayStatusBar: lcid
	"Answer the <varbool> value of the 'DisplayStatusBar' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayStatusBar: lcid
		rhs: answer.
	^answer asObject
!

displayStatusBar: lcid rhs: rhs
	"Set the 'DisplayStatusBar' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayStatusBar: lcid
		rhs: rhs
!

displayXMLSourcePane
	"Invoke the DisplayXMLSourcePane() method of the COM object.
	Default values are passed for all optional parameters."

	^self displayXMLSourcePane: VARIANT unspecified!

displayXMLSourcePane: xmlMap
	"Invoke the DisplayXMLSourcePane() method of the COM object."

	^self DisplayXMLSourcePane: xmlMap asVariant
!

DisplayXMLSourcePane: xmlMap
	"Private - Invoke the DisplayXMLSourcePane() method of the COM object.

		HRESULT __stdcall DisplayXMLSourcePane(
			[in, optional]VARIANT XmlMap);"

	<virtual stdcall: hresult 376 variant>
	^self invalidCall!

doubleClick: lcid
	"Invoke the DoubleClick() method of the COM object."

	^self DoubleClick: lcid
!

DoubleClick: lcid
	"Private - Invoke the DoubleClick() method of the COM object.

		HRESULT __stdcall DoubleClick(
			[in]long lcid);"

	<virtual stdcall: hresult 138 sdword>
	^self invalidCall!

dummy1
	"Answer the <VARIANT> result of invoking the Dummy1() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dummy1: VARIANT unspecified
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified!

dummy1: arg1 arg2: arg2 arg3: arg3 arg4: arg4
	"Answer the <VARIANT> result of invoking the Dummy1() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Dummy1: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		rhs: answer.
	^answer asObject
!

Dummy1: arg1 arg2: arg2 arg3: arg3 arg4: arg4 rhs: rhs
	"Private - Invoke the Dummy1() method of the COM object.

		HRESULT __stdcall Dummy1(
			[in, optional]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 103 variant variant variant variant variant*>
	^self invalidCall!

dummy10
	"Answer the <VARIANT_BOOL> result of invoking the Dummy10() method of the COM object.
	Default values are passed for all optional parameters."

	^self dummy10: VARIANT unspecified!

dummy10: arg
	"Answer the <VARIANT_BOOL> result of invoking the Dummy10() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		Dummy10: arg asVariant
		rhs: answer.
	^answer asObject
!

Dummy10: arg rhs: rhs
	"Private - Invoke the Dummy10() method of the COM object.

		HRESULT __stdcall Dummy10(
			[in, optional]VARIANT arg,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 112 variant varbool*>
	^self invalidCall!

dummy101
	"Answer the <IDispatch> value of the 'Dummy101' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Dummy101: answer.
	^answer asObject
!

dummy11
	"Invoke the Dummy11() method of the COM object."

	^self Dummy11
!

Dummy11
	"Private - Invoke the Dummy11() method of the COM object.

		HRESULT __stdcall Dummy11();"

	<virtual stdcall: hresult 113>
	^self invalidCall!

dummy12: p1 p2: p2
	"Invoke the Dummy12() method of the COM object."

	^self
		Dummy12: p1
		p2: p2
!

Dummy12: p1 p2: p2
	"Private - Invoke the Dummy12() method of the COM object.

		HRESULT __stdcall Dummy12(
			[in]PivotTable* p1,
			[in]PivotTable* p2);"

	<virtual stdcall: hresult 318 ExcelPivotTable* ExcelPivotTable*>
	^self invalidCall!

dummy13: arg1
	"Answer the <VARIANT> result of invoking the Dummy13() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dummy13: arg1
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

dummy13: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT> result of invoking the Dummy13() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Dummy13: arg1 asVariant
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

Dummy13: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Dummy13() method of the COM object.

		HRESULT __stdcall Dummy13(
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

	<virtual stdcall: hresult 328 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

dummy14
	"Invoke the Dummy14() method of the COM object."

	^self Dummy14
!

Dummy14
	"Private - Invoke the Dummy14() method of the COM object.

		HRESULT __stdcall Dummy14();"

	<virtual stdcall: hresult 343>
	^self invalidCall!

dummy2
	"Answer the <VARIANT> result of invoking the Dummy2() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dummy2: VARIANT unspecified
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified!

dummy2: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8
	"Answer the <VARIANT> result of invoking the Dummy2() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Dummy2: arg1 asVariant
		arg2: arg2 asVariant
		arg3: arg3 asVariant
		arg4: arg4 asVariant
		arg5: arg5 asVariant
		arg6: arg6 asVariant
		arg7: arg7 asVariant
		arg8: arg8 asVariant
		rhs: answer.
	^answer asObject
!

Dummy2: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 rhs: rhs
	"Private - Invoke the Dummy2() method of the COM object.

		HRESULT __stdcall Dummy2(
			[in, optional]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 104 variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

dummy20: grfCompareFunctions
	"Answer the <VARIANT> result of invoking the Dummy20() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Dummy20: grfCompareFunctions
		rhs: answer.
	^answer asObject
!

Dummy20: grfCompareFunctions rhs: rhs
	"Private - Invoke the Dummy20() method of the COM object.

		HRESULT __stdcall Dummy20(
			[in]long grfCompareFunctions,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 379 sdword variant*>
	^self invalidCall!

dummy3
	"Answer the <VARIANT> result of invoking the Dummy3() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Dummy3: answer.
	^answer asObject
!

Dummy3: rhs
	"Private - Invoke the Dummy3() method of the COM object.

		HRESULT __stdcall Dummy3(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 105 variant*>
	^self invalidCall!

dummy4
	"Answer the <VARIANT> result of invoking the Dummy4() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dummy4: VARIANT unspecified
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
		 arg15: VARIANT unspecified!

dummy4: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15
	"Answer the <VARIANT> result of invoking the Dummy4() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Dummy4: arg1 asVariant
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
		rhs: answer.
	^answer asObject
!

Dummy4: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 rhs: rhs
	"Private - Invoke the Dummy4() method of the COM object.

		HRESULT __stdcall Dummy4(
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
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 106 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

dummy5
	"Answer the <VARIANT> result of invoking the Dummy5() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dummy5: VARIANT unspecified
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
		 arg13: VARIANT unspecified!

dummy5: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13
	"Answer the <VARIANT> result of invoking the Dummy5() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Dummy5: arg1 asVariant
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
		rhs: answer.
	^answer asObject
!

Dummy5: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 rhs: rhs
	"Private - Invoke the Dummy5() method of the COM object.

		HRESULT __stdcall Dummy5(
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
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 107 variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

dummy6
	"Answer the <VARIANT> result of invoking the Dummy6() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Dummy6: answer.
	^answer asObject
!

Dummy6: rhs
	"Private - Invoke the Dummy6() method of the COM object.

		HRESULT __stdcall Dummy6(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 108 variant*>
	^self invalidCall!

dummy7
	"Answer the <VARIANT> result of invoking the Dummy7() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Dummy7: answer.
	^answer asObject
!

Dummy7: rhs
	"Private - Invoke the Dummy7() method of the COM object.

		HRESULT __stdcall Dummy7(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 109 variant*>
	^self invalidCall!

dummy8
	"Answer the <VARIANT> result of invoking the Dummy8() method of the COM object.
	Default values are passed for all optional parameters."

	^self dummy8: VARIANT unspecified!

dummy8: arg1
	"Answer the <VARIANT> result of invoking the Dummy8() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Dummy8: arg1 asVariant
		rhs: answer.
	^answer asObject
!

Dummy8: arg1 rhs: rhs
	"Private - Invoke the Dummy8() method of the COM object.

		HRESULT __stdcall Dummy8(
			[in, optional]VARIANT Arg1,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 110 variant variant*>
	^self invalidCall!

dummy9
	"Answer the <VARIANT> result of invoking the Dummy9() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Dummy9: answer.
	^answer asObject
!

Dummy9: rhs
	"Private - Invoke the Dummy9() method of the COM object.

		HRESULT __stdcall Dummy9(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 111 variant*>
	^self invalidCall!

editDirectlyInCell: lcid
	"Answer the <varbool> value of the 'EditDirectlyInCell' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_EditDirectlyInCell: lcid
		rhs: answer.
	^answer asObject
!

editDirectlyInCell: lcid rhs: rhs
	"Set the 'EditDirectlyInCell' property of the receiver to the <varbool> value of the argument."

	self
		put_EditDirectlyInCell: lcid
		rhs: rhs
!

enableAnimations: lcid
	"Answer the <varbool> value of the 'EnableAnimations' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_EnableAnimations: lcid
		rhs: answer.
	^answer asObject
!

enableAnimations: lcid rhs: rhs
	"Set the 'EnableAnimations' property of the receiver to the <varbool> value of the argument."

	self
		put_EnableAnimations: lcid
		rhs: rhs
!

enableAutoComplete
	"Answer the <varbool> value of the 'EnableAutoComplete' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableAutoComplete: answer.
	^answer asObject
!

enableAutoComplete: rhs
	"Set the 'EnableAutoComplete' property of the receiver to the <varbool> value of the argument."

	self put_EnableAutoComplete: rhs
!

enableCancelKey: lcid
	"Answer the <sdword> value of the 'EnableCancelKey' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_EnableCancelKey: lcid
		rhs: answer.
	^answer asObject
!

enableCancelKey: lcid rhs: rhs
	"Set the 'EnableCancelKey' property of the receiver to the <sdword> value of the argument."

	self
		put_EnableCancelKey: lcid
		rhs: rhs
!

enableEvents
	"Answer the <varbool> value of the 'EnableEvents' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableEvents: answer.
	^answer asObject
!

enableEvents: rhs
	"Set the 'EnableEvents' property of the receiver to the <varbool> value of the argument."

	self put_EnableEvents: rhs
!

enableLargeOperationAlert
	"Answer the <varbool> value of the 'EnableLargeOperationAlert' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableLargeOperationAlert: answer.
	^answer asObject
!

enableLargeOperationAlert: rhs
	"Set the 'EnableLargeOperationAlert' property of the receiver to the <varbool> value of the argument."

	self put_EnableLargeOperationAlert: rhs
!

enableLivePreview
	"Answer the <varbool> value of the 'EnableLivePreview' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableLivePreview: answer.
	^answer asObject
!

enableLivePreview: rhs
	"Set the 'EnableLivePreview' property of the receiver to the <varbool> value of the argument."

	self put_EnableLivePreview: rhs
!

enableSound
	"Answer the <varbool> value of the 'EnableSound' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableSound: answer.
	^answer asObject
!

enableSound: rhs
	"Set the 'EnableSound' property of the receiver to the <varbool> value of the argument."

	self put_EnableSound: rhs
!

enableTipWizard: lcid
	"Answer the <varbool> value of the 'EnableTipWizard' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_EnableTipWizard: lcid
		rhs: answer.
	^answer asObject
!

enableTipWizard: lcid rhs: rhs
	"Set the 'EnableTipWizard' property of the receiver to the <varbool> value of the argument."

	self
		put_EnableTipWizard: lcid
		rhs: rhs
!

errorCheckingOptions
	"Answer the <ExcelErrorCheckingOptions> value of the 'ErrorCheckingOptions' property of the receiver."

	| answer |
	answer := ExcelErrorCheckingOptions newPointer.
	self get_ErrorCheckingOptions: answer.
	^answer asObject
!

evaluate: name lcid: lcid
	"Answer the <VARIANT> result of invoking the Evaluate() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Evaluate: name asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Evaluate: name lcid: lcid rhs: rhs
	"Private - Invoke the Evaluate() method of the COM object.

		HRESULT __stdcall Evaluate(
			[in]VARIANT Name,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 34 variant sdword variant*>
	^self invalidCall!

excel4IntlMacroSheets
	"Answer the <ExcelSheets> value of the 'Excel4IntlMacroSheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Excel4IntlMacroSheets: answer.
	^answer asObject
!

excel4MacroSheets
	"Answer the <ExcelSheets> value of the 'Excel4MacroSheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Excel4MacroSheets: answer.
	^answer asObject
!

executeExcel4Macro: string lcid: lcid
	"Answer the <VARIANT> result of invoking the ExecuteExcel4Macro() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ExecuteExcel4Macro: string
		lcid: lcid
		rhs: answer.
	^answer asObject
!

ExecuteExcel4Macro: string lcid: lcid rhs: rhs
	"Private - Invoke the ExecuteExcel4Macro() method of the COM object.

		HRESULT __stdcall ExecuteExcel4Macro(
			[in]BSTR String,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 36 bstr sdword variant*>
	^self invalidCall!

extendList
	"Answer the <varbool> value of the 'ExtendList' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ExtendList: answer.
	^answer asObject
!

extendList: rhs
	"Set the 'ExtendList' property of the receiver to the <varbool> value of the argument."

	self put_ExtendList: rhs
!

featureInstall
	"Answer the <sdword> value of the 'FeatureInstall' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FeatureInstall: answer.
	^answer asObject
!

featureInstall: rhs
	"Set the 'FeatureInstall' property of the receiver to the <sdword> value of the argument."

	self put_FeatureInstall: rhs
!

fileConverters: lcid
	"Answer the <variant> value of the 'FileConverters' property of the receiver."

	^self
		 fileConverters: VARIANT unspecified
		 index2: VARIANT unspecified
		 lcid: lcid!

fileConverters: index1 index2: index2 lcid: lcid
	"Answer the <variant> value of the 'FileConverters' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_FileConverters: index1 asVariant
		index2: index2 asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

fileDialog: fileDialogType
	"Answer the <OfficeFileDialog> value of the 'FileDialog' property of the receiver."

	| answer |
	answer := OfficeFileDialog newPointer.
	self
		get_FileDialog: fileDialogType
		rhs: answer.
	^answer asObject
!

fileExportConverters
	"Answer the <ExcelFileExportConverters> value of the 'FileExportConverters' property of the receiver."

	| answer |
	answer := ExcelFileExportConverters newPointer.
	self get_FileExportConverters: answer.
	^answer asObject
!

fileFind
	"Answer the <OfficeIFind> value of the 'FileFind' property of the receiver."

	| answer |
	answer := OfficeIFind newPointer.
	self get_FileFind: answer.
	^answer asObject
!

fileSearch
	"Answer the <OfficeFileSearch> value of the 'FileSearch' property of the receiver."

	| answer |
	answer := OfficeFileSearch newPointer.
	self get_FileSearch: answer.
	^answer asObject
!

findFile: lcid
	"Answer the <VARIANT_BOOL> result of invoking the FindFile() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		FindFile: lcid
		rhs: answer.
	^answer asObject
!

FindFile: lcid rhs: rhs
	"Private - Invoke the FindFile() method of the COM object.

		HRESULT __stdcall FindFile(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 321 sdword varbool*>
	^self invalidCall!

findFormat
	"Answer the <ExcelCellFormat> value of the 'FindFormat' property of the receiver."

	| answer |
	answer := ExcelCellFormat newPointer.
	self get_FindFormat: answer.
	^answer asObject
!

fixedDecimal: lcid
	"Answer the <varbool> value of the 'FixedDecimal' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_FixedDecimal: lcid
		rhs: answer.
	^answer asObject
!

fixedDecimal: lcid rhs: rhs
	"Set the 'FixedDecimal' property of the receiver to the <varbool> value of the argument."

	self
		put_FixedDecimal: lcid
		rhs: rhs
!

fixedDecimalPlaces: lcid
	"Answer the <sdword> value of the 'FixedDecimalPlaces' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_FixedDecimalPlaces: lcid
		rhs: answer.
	^answer asObject
!

fixedDecimalPlaces: lcid rhs: rhs
	"Set the 'FixedDecimalPlaces' property of the receiver to the <sdword> value of the argument."

	self
		put_FixedDecimalPlaces: lcid
		rhs: rhs
!

formulaBarHeight
	"Answer the <sdword> value of the 'FormulaBarHeight' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FormulaBarHeight: answer.
	^answer asObject
!

formulaBarHeight: rhs
	"Set the 'FormulaBarHeight' property of the receiver to the <sdword> value of the argument."

	self put_FormulaBarHeight: rhs
!

generateGetPivotData
	"Answer the <varbool> value of the 'GenerateGetPivotData' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_GenerateGetPivotData: answer.
	^answer asObject
!

generateGetPivotData: rhs
	"Set the 'GenerateGetPivotData' property of the receiver to the <varbool> value of the argument."

	self put_GenerateGetPivotData: rhs
!

generateTableRefs: lcid
	"Answer the <sdword> value of the 'GenerateTableRefs' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_GenerateTableRefs: lcid
		rhs: answer.
	^answer asObject
!

generateTableRefs: lcid rhs: rhs
	"Set the 'GenerateTableRefs' property of the receiver to the <sdword> value of the argument."

	self
		put_GenerateTableRefs: lcid
		rhs: rhs
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 114 bstr*>
	^self invalidCall!

get_ActiveCell: rhs
	"Private - Get the value of the 'ActiveCell' property of the receiver.

		HRESULT __stdcall ActiveCell(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 11 ExcelRange**>
	^self invalidCall!

get_ActiveChart: rhs
	"Private - Get the value of the 'ActiveChart' property of the receiver.

		HRESULT __stdcall ActiveChart(
			[out, retval]Chart** RHS);"

	<virtual stdcall: hresult 12 Excel_Chart**>
	^self invalidCall!

get_ActiveDialog: rhs
	"Private - Get the value of the 'ActiveDialog' property of the receiver.

		HRESULT __stdcall ActiveDialog(
			[out, retval]DialogSheet** RHS);"

	<virtual stdcall: hresult 13 ExcelDialogSheet**>
	^self invalidCall!

get_ActiveEncryptionSession: rhs
	"Private - Get the value of the 'ActiveEncryptionSession' property of the receiver.

		HRESULT __stdcall ActiveEncryptionSession(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 412 sdword*>
	^self invalidCall!

get_ActiveMenuBar: rhs
	"Private - Get the value of the 'ActiveMenuBar' property of the receiver.

		HRESULT __stdcall ActiveMenuBar(
			[out, retval]MenuBar** RHS);"

	<virtual stdcall: hresult 14 ExcelMenuBar**>
	^self invalidCall!

get_ActivePrinter: lcid rhs: rhs
	"Private - Get the value of the 'ActivePrinter' property of the receiver.

		HRESULT __stdcall ActivePrinter(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 sdword bstr*>
	^self invalidCall!

get_ActiveSheet: rhs
	"Private - Get the value of the 'ActiveSheet' property of the receiver.

		HRESULT __stdcall ActiveSheet(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 17 IDispatch**>
	^self invalidCall!

get_ActiveWindow: rhs
	"Private - Get the value of the 'ActiveWindow' property of the receiver.

		HRESULT __stdcall ActiveWindow(
			[out, retval]Window** RHS);"

	<virtual stdcall: hresult 18 ExcelWindow**>
	^self invalidCall!

get_ActiveWorkbook: rhs
	"Private - Get the value of the 'ActiveWorkbook' property of the receiver.

		HRESULT __stdcall ActiveWorkbook(
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 19 Excel_Workbook**>
	^self invalidCall!

get_AddIns: rhs
	"Private - Get the value of the 'AddIns' property of the receiver.

		HRESULT __stdcall AddIns(
			[out, retval]AddIns** RHS);"

	<virtual stdcall: hresult 20 ExcelAddIns**>
	^self invalidCall!

get_AlertBeforeOverwriting: lcid rhs: rhs
	"Private - Get the value of the 'AlertBeforeOverwriting' property of the receiver.

		HRESULT __stdcall AlertBeforeOverwriting(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 61 sdword varbool*>
	^self invalidCall!

get_AltStartupPath: lcid rhs: rhs
	"Private - Get the value of the 'AltStartupPath' property of the receiver.

		HRESULT __stdcall AltStartupPath(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 63 sdword bstr*>
	^self invalidCall!

get_AlwaysUseClearType: rhs
	"Private - Get the value of the 'AlwaysUseClearType' property of the receiver.

		HRESULT __stdcall AlwaysUseClearType(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 392 varbool*>
	^self invalidCall!

get_AnswerWizard: rhs
	"Private - Get the value of the 'AnswerWizard' property of the receiver.

		HRESULT __stdcall AnswerWizard(
			[out, retval]AnswerWizard** RHS);"

	<virtual stdcall: hresult 319 OfficeAnswerWizard**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_ArbitraryXMLSupportAvailable: rhs
	"Private - Get the value of the 'ArbitraryXMLSupportAvailable' property of the receiver.

		HRESULT __stdcall ArbitraryXMLSupportAvailable(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 377 varbool*>
	^self invalidCall!

get_AskToUpdateLinks: lcid rhs: rhs
	"Private - Get the value of the 'AskToUpdateLinks' property of the receiver.

		HRESULT __stdcall AskToUpdateLinks(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 65 sdword varbool*>
	^self invalidCall!

get_Assistance: rhs
	"Private - Get the value of the 'Assistance' property of the receiver.

		HRESULT __stdcall Assistance(
			[out, retval]IAssistance** RHS);"

	<virtual stdcall: hresult 402 OfficeIAssistance**>
	^self invalidCall!

get_Assistant: rhs
	"Private - Get the value of the 'Assistant' property of the receiver.

		HRESULT __stdcall Assistant(
			[out, retval]Assistant** RHS);"

	<virtual stdcall: hresult 21 OfficeAssistant**>
	^self invalidCall!

get_AutoCorrect: rhs
	"Private - Get the value of the 'AutoCorrect' property of the receiver.

		HRESULT __stdcall AutoCorrect(
			[out, retval]AutoCorrect** RHS);"

	<virtual stdcall: hresult 69 ExcelAutoCorrect**>
	^self invalidCall!

get_AutoFormatAsYouTypeReplaceHyperlinks: rhs
	"Private - Get the value of the 'AutoFormatAsYouTypeReplaceHyperlinks' property of the receiver.

		HRESULT __stdcall AutoFormatAsYouTypeReplaceHyperlinks(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 356 varbool*>
	^self invalidCall!

get_AutomationSecurity: rhs
	"Private - Get the value of the 'AutomationSecurity' property of the receiver.

		HRESULT __stdcall AutomationSecurity(
			[out, retval]MsoAutomationSecurity* RHS);"

	<virtual stdcall: hresult 340 sdword*>
	^self invalidCall!

get_AutoPercentEntry: rhs
	"Private - Get the value of the 'AutoPercentEntry' property of the receiver.

		HRESULT __stdcall AutoPercentEntry(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 314 varbool*>
	^self invalidCall!

get_AutoRecover: rhs
	"Private - Get the value of the 'AutoRecover' property of the receiver.

		HRESULT __stdcall AutoRecover(
			[out, retval]AutoRecover** RHS);"

	<virtual stdcall: hresult 351 ExcelAutoRecover**>
	^self invalidCall!

get_Build: lcid rhs: rhs
	"Private - Get the value of the 'Build' property of the receiver.

		HRESULT __stdcall Build(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 70 sdword sdword*>
	^self invalidCall!

get_CalculateBeforeSave: lcid rhs: rhs
	"Private - Get the value of the 'CalculateBeforeSave' property of the receiver.

		HRESULT __stdcall CalculateBeforeSave(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 71 sdword varbool*>
	^self invalidCall!

get_Calculation: lcid rhs: rhs
	"Private - Get the value of the 'Calculation' property of the receiver.

		HRESULT __stdcall Calculation(
			[in]long lcid,
			[out, retval]XlCalculation* RHS);"

	<virtual stdcall: hresult 73 sdword sdword*>
	^self invalidCall!

get_CalculationInterruptKey: rhs
	"Private - Get the value of the 'CalculationInterruptKey' property of the receiver.

		HRESULT __stdcall CalculationInterruptKey(
			[out, retval]XlCalculationInterruptKey* RHS);"

	<virtual stdcall: hresult 335 sdword*>
	^self invalidCall!

get_CalculationState: rhs
	"Private - Get the value of the 'CalculationState' property of the receiver.

		HRESULT __stdcall CalculationState(
			[out, retval]XlCalculationState* RHS);"

	<virtual stdcall: hresult 334 sdword*>
	^self invalidCall!

get_CalculationVersion: rhs
	"Private - Get the value of the 'CalculationVersion' property of the receiver.

		HRESULT __stdcall CalculationVersion(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 322 sdword*>
	^self invalidCall!

get_Caller: index lcid: lcid rhs: rhs
	"Private - Get the value of the 'Caller' property of the receiver.

		HRESULT __stdcall Caller(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 75 variant sdword variant*>
	^self invalidCall!

get_CanPlaySounds: lcid rhs: rhs
	"Private - Get the value of the 'CanPlaySounds' property of the receiver.

		HRESULT __stdcall CanPlaySounds(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 76 sdword varbool*>
	^self invalidCall!

get_CanRecordSounds: lcid rhs: rhs
	"Private - Get the value of the 'CanRecordSounds' property of the receiver.

		HRESULT __stdcall CanRecordSounds(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 77 sdword varbool*>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 78 bstr*>
	^self invalidCall!

get_CellDragAndDrop: lcid rhs: rhs
	"Private - Get the value of the 'CellDragAndDrop' property of the receiver.

		HRESULT __stdcall CellDragAndDrop(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 80 sdword varbool*>
	^self invalidCall!

get_Cells: rhs
	"Private - Get the value of the 'Cells' property of the receiver.

		HRESULT __stdcall Cells(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 23 ExcelRange**>
	^self invalidCall!

get_Charts: rhs
	"Private - Get the value of the 'Charts' property of the receiver.

		HRESULT __stdcall Charts(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 24 ExcelSheets**>
	^self invalidCall!

get_ClipboardFormats: index lcid: lcid rhs: rhs
	"Private - Get the value of the 'ClipboardFormats' property of the receiver.

		HRESULT __stdcall ClipboardFormats(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 84 variant sdword variant*>
	^self invalidCall!

get_ColorButtons: rhs
	"Private - Get the value of the 'ColorButtons' property of the receiver.

		HRESULT __stdcall ColorButtons(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 87 varbool*>
	^self invalidCall!

get_Columns: rhs
	"Private - Get the value of the 'Columns' property of the receiver.

		HRESULT __stdcall Columns(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 25 ExcelRange**>
	^self invalidCall!

get_COMAddIns: rhs
	"Private - Get the value of the 'COMAddIns' property of the receiver.

		HRESULT __stdcall COMAddIns(
			[out, retval]COMAddIns** RHS);"

	<virtual stdcall: hresult 310 OfficeCOMAddIns**>
	^self invalidCall!

get_CommandBars: rhs
	"Private - Get the value of the 'CommandBars' property of the receiver.

		HRESULT __stdcall CommandBars(
			[out, retval]CommandBars** RHS);"

	<virtual stdcall: hresult 26 Office_CommandBars**>
	^self invalidCall!

get_CommandUnderlines: lcid rhs: rhs
	"Private - Get the value of the 'CommandUnderlines' property of the receiver.

		HRESULT __stdcall CommandUnderlines(
			[in]long lcid,
			[out, retval]XlCommandUnderlines* RHS);"

	<virtual stdcall: hresult 89 sdword sdword*>
	^self invalidCall!

get_ConstrainNumeric: lcid rhs: rhs
	"Private - Get the value of the 'ConstrainNumeric' property of the receiver.

		HRESULT __stdcall ConstrainNumeric(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 91 sdword varbool*>
	^self invalidCall!

get_ControlCharacters: lcid rhs: rhs
	"Private - Get the value of the 'ControlCharacters' property of the receiver.

		HRESULT __stdcall ControlCharacters(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 298 sdword varbool*>
	^self invalidCall!

get_CopyObjectsWithCells: lcid rhs: rhs
	"Private - Get the value of the 'CopyObjectsWithCells' property of the receiver.

		HRESULT __stdcall CopyObjectsWithCells(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 94 sdword varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Cursor: lcid rhs: rhs
	"Private - Get the value of the 'Cursor' property of the receiver.

		HRESULT __stdcall Cursor(
			[in]long lcid,
			[out, retval]XlMousePointer* RHS);"

	<virtual stdcall: hresult 96 sdword sdword*>
	^self invalidCall!

get_CursorMovement: lcid rhs: rhs
	"Private - Get the value of the 'CursorMovement' property of the receiver.

		HRESULT __stdcall CursorMovement(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 296 sdword sdword*>
	^self invalidCall!

get_CustomListCount: lcid rhs: rhs
	"Private - Get the value of the 'CustomListCount' property of the receiver.

		HRESULT __stdcall CustomListCount(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 98 sdword sdword*>
	^self invalidCall!

get_CutCopyMode: lcid rhs: rhs
	"Private - Get the value of the 'CutCopyMode' property of the receiver.

		HRESULT __stdcall CutCopyMode(
			[in]long lcid,
			[out, retval]XlCutCopyMode* RHS);"

	<virtual stdcall: hresult 99 sdword sdword*>
	^self invalidCall!

get_DataEntryMode: lcid rhs: rhs
	"Private - Get the value of the 'DataEntryMode' property of the receiver.

		HRESULT __stdcall DataEntryMode(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 101 sdword sdword*>
	^self invalidCall!

get_DDEAppReturnCode: lcid rhs: rhs
	"Private - Get the value of the 'DDEAppReturnCode' property of the receiver.

		HRESULT __stdcall DDEAppReturnCode(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 27 sdword sdword*>
	^self invalidCall!

get_DecimalSeparator: rhs
	"Private - Get the value of the 'DecimalSeparator' property of the receiver.

		HRESULT __stdcall DecimalSeparator(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 366 bstr*>
	^self invalidCall!

get_DefaultFilePath: lcid rhs: rhs
	"Private - Get the value of the 'DefaultFilePath' property of the receiver.

		HRESULT __stdcall DefaultFilePath(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 115 sdword bstr*>
	^self invalidCall!

get_DefaultSaveFormat: rhs
	"Private - Get the value of the 'DefaultSaveFormat' property of the receiver.

		HRESULT __stdcall DefaultSaveFormat(
			[out, retval]XlFileFormat* RHS);"

	<virtual stdcall: hresult 265 sdword*>
	^self invalidCall!

get_DefaultSheetDirection: lcid rhs: rhs
	"Private - Get the value of the 'DefaultSheetDirection' property of the receiver.

		HRESULT __stdcall DefaultSheetDirection(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 294 sdword sdword*>
	^self invalidCall!

get_DefaultWebOptions: rhs
	"Private - Get the value of the 'DefaultWebOptions' property of the receiver.

		HRESULT __stdcall DefaultWebOptions(
			[out, retval]DefaultWebOptions** RHS);"

	<virtual stdcall: hresult 311 ExcelDefaultWebOptions**>
	^self invalidCall!

get_DeferAsyncQueries: rhs
	"Private - Get the value of the 'DeferAsyncQueries' property of the receiver.

		HRESULT __stdcall DeferAsyncQueries(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 408 varbool*>
	^self invalidCall!

get_Dialogs: rhs
	"Private - Get the value of the 'Dialogs' property of the receiver.

		HRESULT __stdcall Dialogs(
			[out, retval]Dialogs** RHS);"

	<virtual stdcall: hresult 119 ExcelDialogs**>
	^self invalidCall!

get_DialogSheets: rhs
	"Private - Get the value of the 'DialogSheets' property of the receiver.

		HRESULT __stdcall DialogSheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 33 ExcelSheets**>
	^self invalidCall!

get_DisplayAlerts: lcid rhs: rhs
	"Private - Get the value of the 'DisplayAlerts' property of the receiver.

		HRESULT __stdcall DisplayAlerts(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 120 sdword varbool*>
	^self invalidCall!

get_DisplayClipboardWindow: lcid rhs: rhs
	"Private - Get the value of the 'DisplayClipboardWindow' property of the receiver.

		HRESULT __stdcall DisplayClipboardWindow(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 85 sdword varbool*>
	^self invalidCall!

get_DisplayCommentIndicator: rhs
	"Private - Get the value of the 'DisplayCommentIndicator' property of the receiver.

		HRESULT __stdcall DisplayCommentIndicator(
			[out, retval]XlCommentDisplayMode* RHS);"

	<virtual stdcall: hresult 128 sdword*>
	^self invalidCall!

get_DisplayDocumentActionTaskPane: rhs
	"Private - Get the value of the 'DisplayDocumentActionTaskPane' property of the receiver.

		HRESULT __stdcall DisplayDocumentActionTaskPane(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 374 varbool*>
	^self invalidCall!

get_DisplayDocumentInformationPanel: rhs
	"Private - Get the value of the 'DisplayDocumentInformationPanel' property of the receiver.

		HRESULT __stdcall DisplayDocumentInformationPanel(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 390 varbool*>
	^self invalidCall!

get_DisplayExcel4Menus: lcid rhs: rhs
	"Private - Get the value of the 'DisplayExcel4Menus' property of the receiver.

		HRESULT __stdcall DisplayExcel4Menus(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 130 sdword varbool*>
	^self invalidCall!

get_DisplayFormulaAutoComplete: rhs
	"Private - Get the value of the 'DisplayFormulaAutoComplete' property of the receiver.

		HRESULT __stdcall DisplayFormulaAutoComplete(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 398 varbool*>
	^self invalidCall!

get_DisplayFormulaBar: lcid rhs: rhs
	"Private - Get the value of the 'DisplayFormulaBar' property of the receiver.

		HRESULT __stdcall DisplayFormulaBar(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 122 sdword varbool*>
	^self invalidCall!

get_DisplayFullScreen: lcid rhs: rhs
	"Private - Get the value of the 'DisplayFullScreen' property of the receiver.

		HRESULT __stdcall DisplayFullScreen(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 124 sdword varbool*>
	^self invalidCall!

get_DisplayFunctionToolTips: rhs
	"Private - Get the value of the 'DisplayFunctionToolTips' property of the receiver.

		HRESULT __stdcall DisplayFunctionToolTips(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 338 varbool*>
	^self invalidCall!

get_DisplayInfoWindow: rhs
	"Private - Get the value of the 'DisplayInfoWindow' property of the receiver.

		HRESULT __stdcall DisplayInfoWindow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 303 varbool*>
	^self invalidCall!

get_DisplayInsertOptions: rhs
	"Private - Get the value of the 'DisplayInsertOptions' property of the receiver.

		HRESULT __stdcall DisplayInsertOptions(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 347 varbool*>
	^self invalidCall!

get_DisplayNoteIndicator: rhs
	"Private - Get the value of the 'DisplayNoteIndicator' property of the receiver.

		HRESULT __stdcall DisplayNoteIndicator(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 126 varbool*>
	^self invalidCall!

get_DisplayPasteOptions: rhs
	"Private - Get the value of the 'DisplayPasteOptions' property of the receiver.

		HRESULT __stdcall DisplayPasteOptions(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 345 varbool*>
	^self invalidCall!

get_DisplayRecentFiles: rhs
	"Private - Get the value of the 'DisplayRecentFiles' property of the receiver.

		HRESULT __stdcall DisplayRecentFiles(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 132 varbool*>
	^self invalidCall!

get_DisplayScrollBars: lcid rhs: rhs
	"Private - Get the value of the 'DisplayScrollBars' property of the receiver.

		HRESULT __stdcall DisplayScrollBars(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 134 sdword varbool*>
	^self invalidCall!

get_DisplayStatusBar: lcid rhs: rhs
	"Private - Get the value of the 'DisplayStatusBar' property of the receiver.

		HRESULT __stdcall DisplayStatusBar(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 136 sdword varbool*>
	^self invalidCall!

get_Dummy101: rhs
	"Private - Get the value of the 'Dummy101' property of the receiver.

		HRESULT __stdcall Dummy101(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 317 IDispatch**>
	^self invalidCall!

get_EditDirectlyInCell: lcid rhs: rhs
	"Private - Get the value of the 'EditDirectlyInCell' property of the receiver.

		HRESULT __stdcall EditDirectlyInCell(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 139 sdword varbool*>
	^self invalidCall!

get_EnableAnimations: lcid rhs: rhs
	"Private - Get the value of the 'EnableAnimations' property of the receiver.

		HRESULT __stdcall EnableAnimations(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 67 sdword varbool*>
	^self invalidCall!

get_EnableAutoComplete: rhs
	"Private - Get the value of the 'EnableAutoComplete' property of the receiver.

		HRESULT __stdcall EnableAutoComplete(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 141 varbool*>
	^self invalidCall!

get_EnableCancelKey: lcid rhs: rhs
	"Private - Get the value of the 'EnableCancelKey' property of the receiver.

		HRESULT __stdcall EnableCancelKey(
			[in]long lcid,
			[out, retval]XlEnableCancelKey* RHS);"

	<virtual stdcall: hresult 143 sdword sdword*>
	^self invalidCall!

get_EnableEvents: rhs
	"Private - Get the value of the 'EnableEvents' property of the receiver.

		HRESULT __stdcall EnableEvents(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 301 varbool*>
	^self invalidCall!

get_EnableLargeOperationAlert: rhs
	"Private - Get the value of the 'EnableLargeOperationAlert' property of the receiver.

		HRESULT __stdcall EnableLargeOperationAlert(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 404 varbool*>
	^self invalidCall!

get_EnableLivePreview: rhs
	"Private - Get the value of the 'EnableLivePreview' property of the receiver.

		HRESULT __stdcall EnableLivePreview(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 388 varbool*>
	^self invalidCall!

get_EnableSound: rhs
	"Private - Get the value of the 'EnableSound' property of the receiver.

		HRESULT __stdcall EnableSound(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 145 varbool*>
	^self invalidCall!

get_EnableTipWizard: lcid rhs: rhs
	"Private - Get the value of the 'EnableTipWizard' property of the receiver.

		HRESULT __stdcall EnableTipWizard(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 147 sdword varbool*>
	^self invalidCall!

get_ErrorCheckingOptions: rhs
	"Private - Get the value of the 'ErrorCheckingOptions' property of the receiver.

		HRESULT __stdcall ErrorCheckingOptions(
			[out, retval]ErrorCheckingOptions** RHS);"

	<virtual stdcall: hresult 355 ExcelErrorCheckingOptions**>
	^self invalidCall!

get_Excel4IntlMacroSheets: rhs
	"Private - Get the value of the 'Excel4IntlMacroSheets' property of the receiver.

		HRESULT __stdcall Excel4IntlMacroSheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 56 ExcelSheets**>
	^self invalidCall!

get_Excel4MacroSheets: rhs
	"Private - Get the value of the 'Excel4MacroSheets' property of the receiver.

		HRESULT __stdcall Excel4MacroSheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 57 ExcelSheets**>
	^self invalidCall!

get_ExtendList: rhs
	"Private - Get the value of the 'ExtendList' property of the receiver.

		HRESULT __stdcall ExtendList(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 306 varbool*>
	^self invalidCall!

get_FeatureInstall: rhs
	"Private - Get the value of the 'FeatureInstall' property of the receiver.

		HRESULT __stdcall FeatureInstall(
			[out, retval]MsoFeatureInstall* RHS);"

	<virtual stdcall: hresult 325 sdword*>
	^self invalidCall!

get_FileConverters: index1 index2: index2 lcid: lcid rhs: rhs
	"Private - Get the value of the 'FileConverters' property of the receiver.

		HRESULT __stdcall FileConverters(
			[in, optional]VARIANT Index1,
			[in, optional]VARIANT Index2,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 149 variant variant sdword variant*>
	^self invalidCall!

get_FileDialog: fileDialogType rhs: rhs
	"Private - Get the value of the 'FileDialog' property of the receiver.

		HRESULT __stdcall FileDialog(
			[in]MsoFileDialogType fileDialogType,
			[out, retval]FileDialog** RHS);"

	<virtual stdcall: hresult 342 sdword OfficeFileDialog**>
	^self invalidCall!

get_FileExportConverters: rhs
	"Private - Get the value of the 'FileExportConverters' property of the receiver.

		HRESULT __stdcall FileExportConverters(
			[out, retval]FileExportConverters** RHS);"

	<virtual stdcall: hresult 415 ExcelFileExportConverters**>
	^self invalidCall!

get_FileFind: rhs
	"Private - Get the value of the 'FileFind' property of the receiver.

		HRESULT __stdcall FileFind(
			[out, retval]IFind** RHS);"

	<virtual stdcall: hresult 151 OfficeIFind**>
	^self invalidCall!

get_FileSearch: rhs
	"Private - Get the value of the 'FileSearch' property of the receiver.

		HRESULT __stdcall FileSearch(
			[out, retval]FileSearch** RHS);"

	<virtual stdcall: hresult 150 OfficeFileSearch**>
	^self invalidCall!

get_FindFormat: rhs
	"Private - Get the value of the 'FindFormat' property of the receiver.

		HRESULT __stdcall FindFormat(
			[out, retval]CellFormat** RHS);"

	<virtual stdcall: hresult 329 ExcelCellFormat**>
	^self invalidCall!

get_FixedDecimal: lcid rhs: rhs
	"Private - Get the value of the 'FixedDecimal' property of the receiver.

		HRESULT __stdcall FixedDecimal(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 153 sdword varbool*>
	^self invalidCall!

get_FixedDecimalPlaces: lcid rhs: rhs
	"Private - Get the value of the 'FixedDecimalPlaces' property of the receiver.

		HRESULT __stdcall FixedDecimalPlaces(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 155 sdword sdword*>
	^self invalidCall!

get_FormulaBarHeight: rhs
	"Private - Get the value of the 'FormulaBarHeight' property of the receiver.

		HRESULT __stdcall FormulaBarHeight(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 396 sdword*>
	^self invalidCall!

get_GenerateGetPivotData: rhs
	"Private - Get the value of the 'GenerateGetPivotData' property of the receiver.

		HRESULT __stdcall GenerateGetPivotData(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 349 varbool*>
	^self invalidCall!

get_GenerateTableRefs: lcid rhs: rhs
	"Private - Get the value of the 'GenerateTableRefs' property of the receiver.

		HRESULT __stdcall GenerateTableRefs(
			[in]long lcid,
			[out, retval]XlGenerateTableRefs* RHS);"

	<virtual stdcall: hresult 400 sdword sdword*>
	^self invalidCall!

get_Height: lcid rhs: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 162 sdword double*>
	^self invalidCall!

get_HighQualityModeForGraphics: rhs
	"Private - Get the value of the 'HighQualityModeForGraphics' property of the receiver.

		HRESULT __stdcall HighQualityModeForGraphics(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 413 varbool*>
	^self invalidCall!

get_Hinstance: rhs
	"Private - Get the value of the 'Hinstance' property of the receiver.

		HRESULT __stdcall Hinstance(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 353 sdword*>
	^self invalidCall!

get_Hwnd: rhs
	"Private - Get the value of the 'Hwnd' property of the receiver.

		HRESULT __stdcall Hwnd(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 352 sdword*>
	^self invalidCall!

get_IgnoreRemoteRequests: lcid rhs: rhs
	"Private - Get the value of the 'IgnoreRemoteRequests' property of the receiver.

		HRESULT __stdcall IgnoreRemoteRequests(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 165 sdword varbool*>
	^self invalidCall!

get_Interactive: lcid rhs: rhs
	"Private - Get the value of the 'Interactive' property of the receiver.

		HRESULT __stdcall Interactive(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 169 sdword varbool*>
	^self invalidCall!

get_International: index lcid: lcid rhs: rhs
	"Private - Get the value of the 'International' property of the receiver.

		HRESULT __stdcall International(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 171 variant sdword variant*>
	^self invalidCall!

get_Iteration: lcid rhs: rhs
	"Private - Get the value of the 'Iteration' property of the receiver.

		HRESULT __stdcall Iteration(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 172 sdword varbool*>
	^self invalidCall!

get_LanguageSettings: rhs
	"Private - Get the value of the 'LanguageSettings' property of the receiver.

		HRESULT __stdcall LanguageSettings(
			[out, retval]LanguageSettings** RHS);"

	<virtual stdcall: hresult 316 OfficeLanguageSettings**>
	^self invalidCall!

get_LargeButtons: rhs
	"Private - Get the value of the 'LargeButtons' property of the receiver.

		HRESULT __stdcall LargeButtons(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 174 varbool*>
	^self invalidCall!

get_LargeOperationCellThousandCount: rhs
	"Private - Get the value of the 'LargeOperationCellThousandCount' property of the receiver.

		HRESULT __stdcall LargeOperationCellThousandCount(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 406 sdword*>
	^self invalidCall!

get_Left: lcid rhs: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 176 sdword double*>
	^self invalidCall!

get_LibraryPath: lcid rhs: rhs
	"Private - Get the value of the 'LibraryPath' property of the receiver.

		HRESULT __stdcall LibraryPath(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 178 sdword bstr*>
	^self invalidCall!

get_MailSession: lcid rhs: rhs
	"Private - Get the value of the 'MailSession' property of the receiver.

		HRESULT __stdcall MailSession(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 182 sdword variant*>
	^self invalidCall!

get_MailSystem: lcid rhs: rhs
	"Private - Get the value of the 'MailSystem' property of the receiver.

		HRESULT __stdcall MailSystem(
			[in]long lcid,
			[out, retval]XlMailSystem* RHS);"

	<virtual stdcall: hresult 183 sdword sdword*>
	^self invalidCall!

get_MapPaperSize: rhs
	"Private - Get the value of the 'MapPaperSize' property of the receiver.

		HRESULT __stdcall MapPaperSize(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 362 varbool*>
	^self invalidCall!

get_MathCoprocessorAvailable: lcid rhs: rhs
	"Private - Get the value of the 'MathCoprocessorAvailable' property of the receiver.

		HRESULT __stdcall MathCoprocessorAvailable(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 184 sdword varbool*>
	^self invalidCall!

get_MaxChange: lcid rhs: rhs
	"Private - Get the value of the 'MaxChange' property of the receiver.

		HRESULT __stdcall MaxChange(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 185 sdword double*>
	^self invalidCall!

get_MaxIterations: lcid rhs: rhs
	"Private - Get the value of the 'MaxIterations' property of the receiver.

		HRESULT __stdcall MaxIterations(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 187 sdword sdword*>
	^self invalidCall!

get_MeasurementUnit: rhs
	"Private - Get the value of the 'MeasurementUnit' property of the receiver.

		HRESULT __stdcall MeasurementUnit(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 380 sdword*>
	^self invalidCall!

get_MemoryFree: lcid rhs: rhs
	"Private - Get the value of the 'MemoryFree' property of the receiver.

		HRESULT __stdcall MemoryFree(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 189 sdword sdword*>
	^self invalidCall!

get_MemoryTotal: lcid rhs: rhs
	"Private - Get the value of the 'MemoryTotal' property of the receiver.

		HRESULT __stdcall MemoryTotal(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 190 sdword sdword*>
	^self invalidCall!

get_MemoryUsed: lcid rhs: rhs
	"Private - Get the value of the 'MemoryUsed' property of the receiver.

		HRESULT __stdcall MemoryUsed(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 191 sdword sdword*>
	^self invalidCall!

get_MenuBars: rhs
	"Private - Get the value of the 'MenuBars' property of the receiver.

		HRESULT __stdcall MenuBars(
			[out, retval]MenuBars** RHS);"

	<virtual stdcall: hresult 38 ExcelMenuBars**>
	^self invalidCall!

get_Modules: rhs
	"Private - Get the value of the 'Modules' property of the receiver.

		HRESULT __stdcall Modules(
			[out, retval]Modules** RHS);"

	<virtual stdcall: hresult 39 ExcelModules**>
	^self invalidCall!

get_MouseAvailable: lcid rhs: rhs
	"Private - Get the value of the 'MouseAvailable' property of the receiver.

		HRESULT __stdcall MouseAvailable(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 192 sdword varbool*>
	^self invalidCall!

get_MoveAfterReturn: lcid rhs: rhs
	"Private - Get the value of the 'MoveAfterReturn' property of the receiver.

		HRESULT __stdcall MoveAfterReturn(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 193 sdword varbool*>
	^self invalidCall!

get_MoveAfterReturnDirection: lcid rhs: rhs
	"Private - Get the value of the 'MoveAfterReturnDirection' property of the receiver.

		HRESULT __stdcall MoveAfterReturnDirection(
			[in]long lcid,
			[out, retval]XlDirection* RHS);"

	<virtual stdcall: hresult 195 sdword sdword*>
	^self invalidCall!

get_MultiThreadedCalculation: rhs
	"Private - Get the value of the 'MultiThreadedCalculation' property of the receiver.

		HRESULT __stdcall MultiThreadedCalculation(
			[out, retval]MultiThreadedCalculation** RHS);"

	<virtual stdcall: hresult 410 ExcelMultiThreadedCalculation**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 198 bstr*>
	^self invalidCall!

get_Names: rhs
	"Private - Get the value of the 'Names' property of the receiver.

		HRESULT __stdcall Names(
			[out, retval]Names** RHS);"

	<virtual stdcall: hresult 40 ExcelNames**>
	^self invalidCall!

get_NetworkTemplatesPath: lcid rhs: rhs
	"Private - Get the value of the 'NetworkTemplatesPath' property of the receiver.

		HRESULT __stdcall NetworkTemplatesPath(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 200 sdword bstr*>
	^self invalidCall!

get_NewWorkbook: rhs
	"Private - Get the value of the 'NewWorkbook' property of the receiver.

		HRESULT __stdcall NewWorkbook(
			[out, retval]NewFile** RHS);"

	<virtual stdcall: hresult 359 OfficeNewFile**>
	^self invalidCall!

get_ODBCErrors: rhs
	"Private - Get the value of the 'ODBCErrors' property of the receiver.

		HRESULT __stdcall ODBCErrors(
			[out, retval]ODBCErrors** RHS);"

	<virtual stdcall: hresult 201 ExcelODBCErrors**>
	^self invalidCall!

get_ODBCTimeout: rhs
	"Private - Get the value of the 'ODBCTimeout' property of the receiver.

		HRESULT __stdcall ODBCTimeout(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 202 sdword*>
	^self invalidCall!

get_OLEDBErrors: rhs
	"Private - Get the value of the 'OLEDBErrors' property of the receiver.

		HRESULT __stdcall OLEDBErrors(
			[out, retval]OLEDBErrors** RHS);"

	<virtual stdcall: hresult 308 ExcelOLEDBErrors**>
	^self invalidCall!

get_OnCalculate: lcid rhs: rhs
	"Private - Get the value of the 'OnCalculate' property of the receiver.

		HRESULT __stdcall OnCalculate(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 204 sdword bstr*>
	^self invalidCall!

get_OnData: lcid rhs: rhs
	"Private - Get the value of the 'OnData' property of the receiver.

		HRESULT __stdcall OnData(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 206 sdword bstr*>
	^self invalidCall!

get_OnDoubleClick: lcid rhs: rhs
	"Private - Get the value of the 'OnDoubleClick' property of the receiver.

		HRESULT __stdcall OnDoubleClick(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 208 sdword bstr*>
	^self invalidCall!

get_OnEntry: lcid rhs: rhs
	"Private - Get the value of the 'OnEntry' property of the receiver.

		HRESULT __stdcall OnEntry(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 210 sdword bstr*>
	^self invalidCall!

get_OnSheetActivate: lcid rhs: rhs
	"Private - Get the value of the 'OnSheetActivate' property of the receiver.

		HRESULT __stdcall OnSheetActivate(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 214 sdword bstr*>
	^self invalidCall!

get_OnSheetDeactivate: lcid rhs: rhs
	"Private - Get the value of the 'OnSheetDeactivate' property of the receiver.

		HRESULT __stdcall OnSheetDeactivate(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 216 sdword bstr*>
	^self invalidCall!

get_OnWindow: lcid rhs: rhs
	"Private - Get the value of the 'OnWindow' property of the receiver.

		HRESULT __stdcall OnWindow(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 220 sdword bstr*>
	^self invalidCall!

get_OperatingSystem: lcid rhs: rhs
	"Private - Get the value of the 'OperatingSystem' property of the receiver.

		HRESULT __stdcall OperatingSystem(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 222 sdword bstr*>
	^self invalidCall!

get_OrganizationName: lcid rhs: rhs
	"Private - Get the value of the 'OrganizationName' property of the receiver.

		HRESULT __stdcall OrganizationName(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 223 sdword bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 10 Excel_Application**>
	^self invalidCall!

get_Path: lcid rhs: rhs
	"Private - Get the value of the 'Path' property of the receiver.

		HRESULT __stdcall Path(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 224 sdword bstr*>
	^self invalidCall!

get_PathSeparator: lcid rhs: rhs
	"Private - Get the value of the 'PathSeparator' property of the receiver.

		HRESULT __stdcall PathSeparator(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 225 sdword bstr*>
	^self invalidCall!

get_PivotTableSelection: rhs
	"Private - Get the value of the 'PivotTableSelection' property of the receiver.

		HRESULT __stdcall PivotTableSelection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 227 varbool*>
	^self invalidCall!

get_PreviousSelections: index lcid: lcid rhs: rhs
	"Private - Get the value of the 'PreviousSelections' property of the receiver.

		HRESULT __stdcall PreviousSelections(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 226 variant sdword variant*>
	^self invalidCall!

get_ProductCode: rhs
	"Private - Get the value of the 'ProductCode' property of the receiver.

		HRESULT __stdcall ProductCode(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 312 bstr*>
	^self invalidCall!

get_PromptForSummaryInfo: lcid rhs: rhs
	"Private - Get the value of the 'PromptForSummaryInfo' property of the receiver.

		HRESULT __stdcall PromptForSummaryInfo(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 229 sdword varbool*>
	^self invalidCall!

get_Range: cell1 cell2: cell2 rhs: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[in]VARIANT Cell1,
			[in, optional]VARIANT Cell2,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 41 variant variant ExcelRange**>
	^self invalidCall!

get_Ready: rhs
	"Private - Get the value of the 'Ready' property of the receiver.

		HRESULT __stdcall Ready(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 327 varbool*>
	^self invalidCall!

get_RecentFiles: rhs
	"Private - Get the value of the 'RecentFiles' property of the receiver.

		HRESULT __stdcall RecentFiles(
			[out, retval]RecentFiles** RHS);"

	<virtual stdcall: hresult 197 ExcelRecentFiles**>
	^self invalidCall!

get_RecordRelative: lcid rhs: rhs
	"Private - Get the value of the 'RecordRelative' property of the receiver.

		HRESULT __stdcall RecordRelative(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 233 sdword varbool*>
	^self invalidCall!

get_ReferenceStyle: lcid rhs: rhs
	"Private - Get the value of the 'ReferenceStyle' property of the receiver.

		HRESULT __stdcall ReferenceStyle(
			[in]long lcid,
			[out, retval]XlReferenceStyle* RHS);"

	<virtual stdcall: hresult 234 sdword sdword*>
	^self invalidCall!

get_RegisteredFunctions: index1 index2: index2 lcid: lcid rhs: rhs
	"Private - Get the value of the 'RegisteredFunctions' property of the receiver.

		HRESULT __stdcall RegisteredFunctions(
			[in, optional]VARIANT Index1,
			[in, optional]VARIANT Index2,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 236 variant variant sdword variant*>
	^self invalidCall!

get_ReplaceFormat: rhs
	"Private - Get the value of the 'ReplaceFormat' property of the receiver.

		HRESULT __stdcall ReplaceFormat(
			[out, retval]CellFormat** RHS);"

	<virtual stdcall: hresult 331 ExcelCellFormat**>
	^self invalidCall!

get_RollZoom: rhs
	"Private - Get the value of the 'RollZoom' property of the receiver.

		HRESULT __stdcall RollZoom(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 240 varbool*>
	^self invalidCall!

get_Rows: rhs
	"Private - Get the value of the 'Rows' property of the receiver.

		HRESULT __stdcall Rows(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 42 ExcelRange**>
	^self invalidCall!

get_RTD: rhs
	"Private - Get the value of the 'RTD' property of the receiver.

		HRESULT __stdcall RTD(
			[out, retval]RTD** RHS);"

	<virtual stdcall: hresult 373 ExcelRTD**>
	^self invalidCall!

get_ScreenUpdating: lcid rhs: rhs
	"Private - Get the value of the 'ScreenUpdating' property of the receiver.

		HRESULT __stdcall ScreenUpdating(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 244 sdword varbool*>
	^self invalidCall!

get_Selection: lcid rhs: rhs
	"Private - Get the value of the 'Selection' property of the receiver.

		HRESULT __stdcall Selection(
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 45 sdword IDispatch**>
	^self invalidCall!

get_Sheets: rhs
	"Private - Get the value of the 'Sheets' property of the receiver.

		HRESULT __stdcall Sheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 47 ExcelSheets**>
	^self invalidCall!

get_SheetsInNewWorkbook: lcid rhs: rhs
	"Private - Get the value of the 'SheetsInNewWorkbook' property of the receiver.

		HRESULT __stdcall SheetsInNewWorkbook(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 247 sdword sdword*>
	^self invalidCall!

get_ShortcutMenus: index rhs: rhs
	"Private - Get the value of the 'ShortcutMenus' property of the receiver.

		HRESULT __stdcall ShortcutMenus(
			[in]long Index,
			[out, retval]Menu** RHS);"

	<virtual stdcall: hresult 48 sdword ExcelMenu**>
	^self invalidCall!

get_ShowChartTipNames: rhs
	"Private - Get the value of the 'ShowChartTipNames' property of the receiver.

		HRESULT __stdcall ShowChartTipNames(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 249 varbool*>
	^self invalidCall!

get_ShowChartTipValues: rhs
	"Private - Get the value of the 'ShowChartTipValues' property of the receiver.

		HRESULT __stdcall ShowChartTipValues(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 251 varbool*>
	^self invalidCall!

get_ShowDevTools: rhs
	"Private - Get the value of the 'ShowDevTools' property of the receiver.

		HRESULT __stdcall ShowDevTools(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 386 varbool*>
	^self invalidCall!

get_ShowMenuFloaties: rhs
	"Private - Get the value of the 'ShowMenuFloaties' property of the receiver.

		HRESULT __stdcall ShowMenuFloaties(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 384 varbool*>
	^self invalidCall!

get_ShowSelectionFloaties: rhs
	"Private - Get the value of the 'ShowSelectionFloaties' property of the receiver.

		HRESULT __stdcall ShowSelectionFloaties(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 382 varbool*>
	^self invalidCall!

get_ShowStartupDialog: rhs
	"Private - Get the value of the 'ShowStartupDialog' property of the receiver.

		HRESULT __stdcall ShowStartupDialog(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 364 varbool*>
	^self invalidCall!

get_ShowToolTips: rhs
	"Private - Get the value of the 'ShowToolTips' property of the receiver.

		HRESULT __stdcall ShowToolTips(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 261 varbool*>
	^self invalidCall!

get_ShowWindowsInTaskbar: rhs
	"Private - Get the value of the 'ShowWindowsInTaskbar' property of the receiver.

		HRESULT __stdcall ShowWindowsInTaskbar(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 323 varbool*>
	^self invalidCall!

get_SmartTagRecognizers: rhs
	"Private - Get the value of the 'SmartTagRecognizers' property of the receiver.

		HRESULT __stdcall SmartTagRecognizers(
			[out, retval]SmartTagRecognizers** RHS);"

	<virtual stdcall: hresult 358 ExcelSmartTagRecognizers**>
	^self invalidCall!

get_Speech: rhs
	"Private - Get the value of the 'Speech' property of the receiver.

		HRESULT __stdcall Speech(
			[out, retval]Speech** RHS);"

	<virtual stdcall: hresult 361 ExcelSpeech**>
	^self invalidCall!

get_SpellingOptions: rhs
	"Private - Get the value of the 'SpellingOptions' property of the receiver.

		HRESULT __stdcall SpellingOptions(
			[out, retval]SpellingOptions** RHS);"

	<virtual stdcall: hresult 360 ExcelSpellingOptions**>
	^self invalidCall!

get_StandardFont: lcid rhs: rhs
	"Private - Get the value of the 'StandardFont' property of the receiver.

		HRESULT __stdcall StandardFont(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 253 sdword bstr*>
	^self invalidCall!

get_StandardFontSize: lcid rhs: rhs
	"Private - Get the value of the 'StandardFontSize' property of the receiver.

		HRESULT __stdcall StandardFontSize(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 255 sdword double*>
	^self invalidCall!

get_StartupPath: lcid rhs: rhs
	"Private - Get the value of the 'StartupPath' property of the receiver.

		HRESULT __stdcall StartupPath(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 257 sdword bstr*>
	^self invalidCall!

get_StatusBar: lcid rhs: rhs
	"Private - Get the value of the 'StatusBar' property of the receiver.

		HRESULT __stdcall StatusBar(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 258 sdword variant*>
	^self invalidCall!

get_TemplatesPath: lcid rhs: rhs
	"Private - Get the value of the 'TemplatesPath' property of the receiver.

		HRESULT __stdcall TemplatesPath(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 260 sdword bstr*>
	^self invalidCall!

get_ThisCell: rhs
	"Private - Get the value of the 'ThisCell' property of the receiver.

		HRESULT __stdcall ThisCell(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 372 ExcelRange**>
	^self invalidCall!

get_ThisWorkbook: lcid rhs: rhs
	"Private - Get the value of the 'ThisWorkbook' property of the receiver.

		HRESULT __stdcall ThisWorkbook(
			[in]long lcid,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 49 sdword Excel_Workbook**>
	^self invalidCall!

get_ThousandsSeparator: rhs
	"Private - Get the value of the 'ThousandsSeparator' property of the receiver.

		HRESULT __stdcall ThousandsSeparator(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 368 bstr*>
	^self invalidCall!

get_Toolbars: rhs
	"Private - Get the value of the 'Toolbars' property of the receiver.

		HRESULT __stdcall Toolbars(
			[out, retval]Toolbars** RHS);"

	<virtual stdcall: hresult 50 ExcelToolbars**>
	^self invalidCall!

get_Top: lcid rhs: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 263 sdword double*>
	^self invalidCall!

get_TransitionMenuKey: lcid rhs: rhs
	"Private - Get the value of the 'TransitionMenuKey' property of the receiver.

		HRESULT __stdcall TransitionMenuKey(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 267 sdword bstr*>
	^self invalidCall!

get_TransitionMenuKeyAction: lcid rhs: rhs
	"Private - Get the value of the 'TransitionMenuKeyAction' property of the receiver.

		HRESULT __stdcall TransitionMenuKeyAction(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 269 sdword sdword*>
	^self invalidCall!

get_TransitionNavigKeys: lcid rhs: rhs
	"Private - Get the value of the 'TransitionNavigKeys' property of the receiver.

		HRESULT __stdcall TransitionNavigKeys(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 271 sdword varbool*>
	^self invalidCall!

get_UILanguage: lcid rhs: rhs
	"Private - Get the value of the 'UILanguage' property of the receiver.

		HRESULT __stdcall UILanguage(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 292 sdword sdword*>
	^self invalidCall!

get_UsableHeight: lcid rhs: rhs
	"Private - Get the value of the 'UsableHeight' property of the receiver.

		HRESULT __stdcall UsableHeight(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 274 sdword double*>
	^self invalidCall!

get_UsableWidth: lcid rhs: rhs
	"Private - Get the value of the 'UsableWidth' property of the receiver.

		HRESULT __stdcall UsableWidth(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 275 sdword double*>
	^self invalidCall!

get_UsedObjects: rhs
	"Private - Get the value of the 'UsedObjects' property of the receiver.

		HRESULT __stdcall UsedObjects(
			[out, retval]UsedObjects** RHS);"

	<virtual stdcall: hresult 333 ExcelUsedObjects**>
	^self invalidCall!

get_UserControl: rhs
	"Private - Get the value of the 'UserControl' property of the receiver.

		HRESULT __stdcall UserControl(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 276 varbool*>
	^self invalidCall!

get_UserLibraryPath: rhs
	"Private - Get the value of the 'UserLibraryPath' property of the receiver.

		HRESULT __stdcall UserLibraryPath(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 313 bstr*>
	^self invalidCall!

get_UserName: lcid rhs: rhs
	"Private - Get the value of the 'UserName' property of the receiver.

		HRESULT __stdcall UserName(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 278 sdword bstr*>
	^self invalidCall!

get_UseSystemSeparators: rhs
	"Private - Get the value of the 'UseSystemSeparators' property of the receiver.

		HRESULT __stdcall UseSystemSeparators(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 370 varbool*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 280 bstr*>
	^self invalidCall!

get_VBE: rhs
	"Private - Get the value of the 'VBE' property of the receiver.

		HRESULT __stdcall VBE(
			[out, retval]VBE** RHS);"

	<virtual stdcall: hresult 281 VBIDEVBE**>
	^self invalidCall!

get_Version: lcid rhs: rhs
	"Private - Get the value of the 'Version' property of the receiver.

		HRESULT __stdcall Version(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 282 sdword bstr*>
	^self invalidCall!

get_Visible: lcid rhs: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 283 sdword varbool*>
	^self invalidCall!

get_WarnOnFunctionNameConflict: rhs
	"Private - Get the value of the 'WarnOnFunctionNameConflict' property of the receiver.

		HRESULT __stdcall WarnOnFunctionNameConflict(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 394 varbool*>
	^self invalidCall!

get_Watches: rhs
	"Private - Get the value of the 'Watches' property of the receiver.

		HRESULT __stdcall Watches(
			[out, retval]Watches** RHS);"

	<virtual stdcall: hresult 337 ExcelWatches**>
	^self invalidCall!

get_Width: lcid rhs: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 287 sdword double*>
	^self invalidCall!

get_Windows: rhs
	"Private - Get the value of the 'Windows' property of the receiver.

		HRESULT __stdcall Windows(
			[out, retval]Windows** RHS);"

	<virtual stdcall: hresult 52 ExcelWindows**>
	^self invalidCall!

get_WindowsForPens: lcid rhs: rhs
	"Private - Get the value of the 'WindowsForPens' property of the receiver.

		HRESULT __stdcall WindowsForPens(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 289 sdword varbool*>
	^self invalidCall!

get_WindowState: lcid rhs: rhs
	"Private - Get the value of the 'WindowState' property of the receiver.

		HRESULT __stdcall WindowState(
			[in]long lcid,
			[out, retval]XlWindowState* RHS);"

	<virtual stdcall: hresult 290 sdword sdword*>
	^self invalidCall!

get_Workbooks: rhs
	"Private - Get the value of the 'Workbooks' property of the receiver.

		HRESULT __stdcall Workbooks(
			[out, retval]Workbooks** RHS);"

	<virtual stdcall: hresult 53 ExcelWorkbooks**>
	^self invalidCall!

get_WorksheetFunction: rhs
	"Private - Get the value of the 'WorksheetFunction' property of the receiver.

		HRESULT __stdcall WorksheetFunction(
			[out, retval]WorksheetFunction** RHS);"

	<virtual stdcall: hresult 54 ExcelWorksheetFunction**>
	^self invalidCall!

get_Worksheets: rhs
	"Private - Get the value of the 'Worksheets' property of the receiver.

		HRESULT __stdcall Worksheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 55 ExcelSheets**>
	^self invalidCall!

getCustomListContents: listNum lcid: lcid
	"Answer the <VARIANT> result of invoking the GetCustomListContents() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		GetCustomListContents: listNum
		lcid: lcid
		rhs: answer.
	^answer asObject
!

GetCustomListContents: listNum lcid: lcid rhs: rhs
	"Private - Invoke the GetCustomListContents() method of the COM object.

		HRESULT __stdcall GetCustomListContents(
			[in]long ListNum,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 157 sdword sdword variant*>
	^self invalidCall!

getCustomListNum: listArray lcid: lcid
	"Answer the <SDWORD> result of invoking the GetCustomListNum() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		GetCustomListNum: listArray asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

GetCustomListNum: listArray lcid: lcid rhs: rhs
	"Private - Invoke the GetCustomListNum() method of the COM object.

		HRESULT __stdcall GetCustomListNum(
			[in]VARIANT ListArray,
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 158 variant sdword sdword*>
	^self invalidCall!

getOpenFilename: lcid
	"Answer the <VARIANT> result of invoking the GetOpenFilename() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 getOpenFilename: VARIANT unspecified
		 filterIndex: VARIANT unspecified
		 title: VARIANT unspecified
		 buttonText: VARIANT unspecified
		 multiSelect: VARIANT unspecified
		 lcid: lcid!

getOpenFilename: fileFilter filterIndex: filterIndex title: title buttonText: buttonText multiSelect: multiSelect lcid: lcid
	"Answer the <VARIANT> result of invoking the GetOpenFilename() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		GetOpenFilename: fileFilter asVariant
		filterIndex: filterIndex asVariant
		title: title asVariant
		buttonText: buttonText asVariant
		multiSelect: multiSelect asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

GetOpenFilename: fileFilter filterIndex: filterIndex title: title buttonText: buttonText multiSelect: multiSelect lcid: lcid rhs: rhs
	"Private - Invoke the GetOpenFilename() method of the COM object.

		HRESULT __stdcall GetOpenFilename(
			[in, optional]VARIANT FileFilter,
			[in, optional]VARIANT FilterIndex,
			[in, optional]VARIANT Title,
			[in, optional]VARIANT ButtonText,
			[in, optional]VARIANT MultiSelect,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 159 variant variant variant variant variant sdword variant*>
	^self invalidCall!

getPhonetic
	"Answer the <BSTR> result of invoking the GetPhonetic() method of the COM object.
	Default values are passed for all optional parameters."

	^self getPhonetic: VARIANT unspecified!

getPhonetic: text
	"Answer the <BSTR> result of invoking the GetPhonetic() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		GetPhonetic: text asVariant
		rhs: answer.
	^answer asObject
!

GetPhonetic: text rhs: rhs
	"Private - Invoke the GetPhonetic() method of the COM object.

		HRESULT __stdcall GetPhonetic(
			[in, optional]VARIANT Text,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 309 variant bstr*>
	^self invalidCall!

getSaveAsFilename: lcid
	"Answer the <VARIANT> result of invoking the GetSaveAsFilename() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 getSaveAsFilename: VARIANT unspecified
		 fileFilter: VARIANT unspecified
		 filterIndex: VARIANT unspecified
		 title: VARIANT unspecified
		 buttonText: VARIANT unspecified
		 lcid: lcid!

getSaveAsFilename: initialFilename fileFilter: fileFilter filterIndex: filterIndex title: title buttonText: buttonText lcid: lcid
	"Answer the <VARIANT> result of invoking the GetSaveAsFilename() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		GetSaveAsFilename: initialFilename asVariant
		fileFilter: fileFilter asVariant
		filterIndex: filterIndex asVariant
		title: title asVariant
		buttonText: buttonText asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

GetSaveAsFilename: initialFilename fileFilter: fileFilter filterIndex: filterIndex title: title buttonText: buttonText lcid: lcid rhs: rhs
	"Private - Invoke the GetSaveAsFilename() method of the COM object.

		HRESULT __stdcall GetSaveAsFilename(
			[in, optional]VARIANT InitialFilename,
			[in, optional]VARIANT FileFilter,
			[in, optional]VARIANT FilterIndex,
			[in, optional]VARIANT Title,
			[in, optional]VARIANT ButtonText,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 160 variant variant variant variant variant sdword variant*>
	^self invalidCall!

goto: lcid
	"Invoke the Goto() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 goto: VARIANT unspecified
		 scroll: VARIANT unspecified
		 lcid: lcid!

goto: reference scroll: scroll lcid: lcid
	"Invoke the Goto() method of the COM object."

	^self
		Goto: reference asVariant
		scroll: scroll asVariant
		lcid: lcid
!

Goto: reference scroll: scroll lcid: lcid
	"Private - Invoke the Goto() method of the COM object.

		HRESULT __stdcall Goto(
			[in, optional]VARIANT Reference,
			[in, optional]VARIANT Scroll,
			[in]long lcid);"

	<virtual stdcall: hresult 161 variant variant sdword>
	^self invalidCall!

height: lcid
	"Answer the <double> value of the 'Height' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_Height: lcid
		rhs: answer.
	^answer asObject
!

height: lcid rhs: rhs
	"Set the 'Height' property of the receiver to the <double> value of the argument."

	self
		put_Height: lcid
		rhs: rhs
!

help: lcid
	"Invoke the Help() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 help: VARIANT unspecified
		 helpContextID: VARIANT unspecified
		 lcid: lcid!

help: helpFile helpContextID: helpContextID lcid: lcid
	"Invoke the Help() method of the COM object."

	^self
		Help: helpFile asVariant
		helpContextID: helpContextID asVariant
		lcid: lcid
!

Help: helpFile helpContextID: helpContextID lcid: lcid
	"Private - Invoke the Help() method of the COM object.

		HRESULT __stdcall Help(
			[in, optional]VARIANT HelpFile,
			[in, optional]VARIANT HelpContextID,
			[in]long lcid);"

	<virtual stdcall: hresult 164 variant variant sdword>
	^self invalidCall!

highQualityModeForGraphics
	"Answer the <varbool> value of the 'HighQualityModeForGraphics' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HighQualityModeForGraphics: answer.
	^answer asObject
!

highQualityModeForGraphics: rhs
	"Set the 'HighQualityModeForGraphics' property of the receiver to the <varbool> value of the argument."

	self put_HighQualityModeForGraphics: rhs
!

hinstance
	"Answer the <sdword> value of the 'Hinstance' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Hinstance: answer.
	^answer asObject
!

hwnd
	"Answer the <sdword> value of the 'Hwnd' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Hwnd: answer.
	^answer asObject
!

ignoreRemoteRequests: lcid
	"Answer the <varbool> value of the 'IgnoreRemoteRequests' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_IgnoreRemoteRequests: lcid
		rhs: answer.
	^answer asObject
!

ignoreRemoteRequests: lcid rhs: rhs
	"Set the 'IgnoreRemoteRequests' property of the receiver to the <varbool> value of the argument."

	self
		put_IgnoreRemoteRequests: lcid
		rhs: rhs
!

inchesToPoints: inches lcid: lcid
	"Answer the <DOUBLE> result of invoking the InchesToPoints() method of the COM object."

	| answer |
	answer := (DOUBLE new).
	self
		InchesToPoints: inches
		lcid: lcid
		rhs: answer.
	^answer asObject
!

InchesToPoints: inches lcid: lcid rhs: rhs
	"Private - Invoke the InchesToPoints() method of the COM object.

		HRESULT __stdcall InchesToPoints(
			[in]double Inches,
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 167 double sdword double*>
	^self invalidCall!

inputBox: prompt lcid: lcid
	"Answer the <VARIANT> result of invoking the InputBox() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 inputBox: prompt
		 title: VARIANT unspecified
		 default: VARIANT unspecified
		 left: VARIANT unspecified
		 top: VARIANT unspecified
		 helpFile: VARIANT unspecified
		 helpContextID: VARIANT unspecified
		 type: VARIANT unspecified
		 lcid: lcid!

inputBox: prompt title: title default: default left: left top: top helpFile: helpFile helpContextID: helpContextID type: type lcid: lcid
	"Answer the <VARIANT> result of invoking the InputBox() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		InputBox: prompt
		title: title asVariant
		default: default asVariant
		left: left asVariant
		top: top asVariant
		helpFile: helpFile asVariant
		helpContextID: helpContextID asVariant
		type: type asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

InputBox: prompt title: title default: default left: left top: top helpFile: helpFile helpContextID: helpContextID type: type lcid: lcid rhs: rhs
	"Private - Invoke the InputBox() method of the COM object.

		HRESULT __stdcall InputBox(
			[in]BSTR Prompt,
			[in, optional]VARIANT Title,
			[in, optional]VARIANT Default,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Top,
			[in, optional]VARIANT HelpFile,
			[in, optional]VARIANT HelpContextID,
			[in, optional]VARIANT Type,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 168 bstr variant variant variant variant variant variant variant sdword variant*>
	^self invalidCall!

interactive: lcid
	"Answer the <varbool> value of the 'Interactive' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_Interactive: lcid
		rhs: answer.
	^answer asObject
!

interactive: lcid rhs: rhs
	"Set the 'Interactive' property of the receiver to the <varbool> value of the argument."

	self
		put_Interactive: lcid
		rhs: rhs
!

international: lcid
	"Answer the <variant> value of the 'International' property of the receiver."

	^self
		 international: VARIANT unspecified
		 lcid: lcid!

international: index lcid: lcid
	"Answer the <variant> value of the 'International' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_International: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

intersect: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 lcid: lcid
	"Answer the <ExcelRange> result of invoking the Intersect() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		Intersect: arg1
		arg2: arg2
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
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Intersect: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 lcid: lcid rhs: rhs
	"Private - Invoke the Intersect() method of the COM object.

		HRESULT __stdcall Intersect(
			[in]Range* Arg1,
			[in]Range* Arg2,
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
			[in]long lcid,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 37 ExcelRange* ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword ExcelRange**>
	^self invalidCall!

intersect: arg1 arg2: arg2 lcid: lcid
	"Answer the <ExcelRange> result of invoking the Intersect() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 intersect: arg1
		 arg2: arg2
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
		 arg30: VARIANT unspecified
		 lcid: lcid!

iteration: lcid
	"Answer the <varbool> value of the 'Iteration' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_Iteration: lcid
		rhs: answer.
	^answer asObject
!

iteration: lcid rhs: rhs
	"Set the 'Iteration' property of the receiver to the <varbool> value of the argument."

	self
		put_Iteration: lcid
		rhs: rhs
!

languageSettings
	"Answer the <OfficeLanguageSettings> value of the 'LanguageSettings' property of the receiver."

	| answer |
	answer := OfficeLanguageSettings newPointer.
	self get_LanguageSettings: answer.
	^answer asObject
!

largeButtons
	"Answer the <varbool> value of the 'LargeButtons' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_LargeButtons: answer.
	^answer asObject
!

largeButtons: rhs
	"Set the 'LargeButtons' property of the receiver to the <varbool> value of the argument."

	self put_LargeButtons: rhs
!

largeOperationCellThousandCount
	"Answer the <sdword> value of the 'LargeOperationCellThousandCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LargeOperationCellThousandCount: answer.
	^answer asObject
!

largeOperationCellThousandCount: rhs
	"Set the 'LargeOperationCellThousandCount' property of the receiver to the <sdword> value of the argument."

	self put_LargeOperationCellThousandCount: rhs
!

left: lcid
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_Left: lcid
		rhs: answer.
	^answer asObject
!

left: lcid rhs: rhs
	"Set the 'Left' property of the receiver to the <double> value of the argument."

	self
		put_Left: lcid
		rhs: rhs
!

libraryPath: lcid
	"Answer the <bstr> value of the 'LibraryPath' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_LibraryPath: lcid
		rhs: answer.
	^answer asObject
!

macroOptions: lcid
	"Invoke the MacroOptions() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 macroOptions: VARIANT unspecified
		 description: VARIANT unspecified
		 hasMenu: VARIANT unspecified
		 menuText: VARIANT unspecified
		 hasShortcutKey: VARIANT unspecified
		 shortcutKey: VARIANT unspecified
		 category: VARIANT unspecified
		 statusBar: VARIANT unspecified
		 helpContextID: VARIANT unspecified
		 helpFile: VARIANT unspecified
		 lcid: lcid!

macroOptions: macro description: description hasMenu: hasMenu menuText: menuText hasShortcutKey: hasShortcutKey shortcutKey: shortcutKey category: category statusBar: statusBar helpContextID: helpContextID helpFile: helpFile lcid: lcid
	"Invoke the MacroOptions() method of the COM object."

	^self
		MacroOptions: macro asVariant
		description: description asVariant
		hasMenu: hasMenu asVariant
		menuText: menuText asVariant
		hasShortcutKey: hasShortcutKey asVariant
		shortcutKey: shortcutKey asVariant
		category: category asVariant
		statusBar: statusBar asVariant
		helpContextID: helpContextID asVariant
		helpFile: helpFile asVariant
		lcid: lcid
!

MacroOptions: macro description: description hasMenu: hasMenu menuText: menuText hasShortcutKey: hasShortcutKey shortcutKey: shortcutKey category: category statusBar: statusBar helpContextID: helpContextID helpFile: helpFile lcid: lcid
	"Private - Invoke the MacroOptions() method of the COM object.

		HRESULT __stdcall MacroOptions(
			[in, optional]VARIANT Macro,
			[in, optional]VARIANT Description,
			[in, optional]VARIANT HasMenu,
			[in, optional]VARIANT MenuText,
			[in, optional]VARIANT HasShortcutKey,
			[in, optional]VARIANT ShortcutKey,
			[in, optional]VARIANT Category,
			[in, optional]VARIANT StatusBar,
			[in, optional]VARIANT HelpContextID,
			[in, optional]VARIANT HelpFile,
			[in]long lcid);"

	<virtual stdcall: hresult 179 variant variant variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

mailLogoff: lcid
	"Invoke the MailLogoff() method of the COM object."

	^self MailLogoff: lcid
!

MailLogoff: lcid
	"Private - Invoke the MailLogoff() method of the COM object.

		HRESULT __stdcall MailLogoff(
			[in]long lcid);"

	<virtual stdcall: hresult 180 sdword>
	^self invalidCall!

mailLogon: lcid
	"Invoke the MailLogon() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 mailLogon: VARIANT unspecified
		 password: VARIANT unspecified
		 downloadNewMail: VARIANT unspecified
		 lcid: lcid!

mailLogon: name password: password downloadNewMail: downloadNewMail lcid: lcid
	"Invoke the MailLogon() method of the COM object."

	^self
		MailLogon: name asVariant
		password: password asVariant
		downloadNewMail: downloadNewMail asVariant
		lcid: lcid
!

MailLogon: name password: password downloadNewMail: downloadNewMail lcid: lcid
	"Private - Invoke the MailLogon() method of the COM object.

		HRESULT __stdcall MailLogon(
			[in, optional]VARIANT Name,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT DownloadNewMail,
			[in]long lcid);"

	<virtual stdcall: hresult 181 variant variant variant sdword>
	^self invalidCall!

mailSession: lcid
	"Answer the <variant> value of the 'MailSession' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_MailSession: lcid
		rhs: answer.
	^answer asObject
!

mailSystem: lcid
	"Answer the <sdword> value of the 'MailSystem' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_MailSystem: lcid
		rhs: answer.
	^answer asObject
!

mapPaperSize
	"Answer the <varbool> value of the 'MapPaperSize' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MapPaperSize: answer.
	^answer asObject
!

mapPaperSize: rhs
	"Set the 'MapPaperSize' property of the receiver to the <varbool> value of the argument."

	self put_MapPaperSize: rhs
!

mathCoprocessorAvailable: lcid
	"Answer the <varbool> value of the 'MathCoprocessorAvailable' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_MathCoprocessorAvailable: lcid
		rhs: answer.
	^answer asObject
!

maxChange: lcid
	"Answer the <double> value of the 'MaxChange' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_MaxChange: lcid
		rhs: answer.
	^answer asObject
!

maxChange: lcid rhs: rhs
	"Set the 'MaxChange' property of the receiver to the <double> value of the argument."

	self
		put_MaxChange: lcid
		rhs: rhs
!

maxIterations: lcid
	"Answer the <sdword> value of the 'MaxIterations' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_MaxIterations: lcid
		rhs: answer.
	^answer asObject
!

maxIterations: lcid rhs: rhs
	"Set the 'MaxIterations' property of the receiver to the <sdword> value of the argument."

	self
		put_MaxIterations: lcid
		rhs: rhs
!

measurementUnit
	"Answer the <sdword> value of the 'MeasurementUnit' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MeasurementUnit: answer.
	^answer asObject
!

measurementUnit: rhs
	"Set the 'MeasurementUnit' property of the receiver to the <sdword> value of the argument."

	self put_MeasurementUnit: rhs
!

memoryFree: lcid
	"Answer the <sdword> value of the 'MemoryFree' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_MemoryFree: lcid
		rhs: answer.
	^answer asObject
!

memoryTotal: lcid
	"Answer the <sdword> value of the 'MemoryTotal' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_MemoryTotal: lcid
		rhs: answer.
	^answer asObject
!

memoryUsed: lcid
	"Answer the <sdword> value of the 'MemoryUsed' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_MemoryUsed: lcid
		rhs: answer.
	^answer asObject
!

menuBars
	"Answer the <ExcelMenuBars> value of the 'MenuBars' property of the receiver."

	| answer |
	answer := ExcelMenuBars newPointer.
	self get_MenuBars: answer.
	^answer asObject
!

modules
	"Answer the <ExcelModules> value of the 'Modules' property of the receiver."

	| answer |
	answer := ExcelModules newPointer.
	self get_Modules: answer.
	^answer asObject
!

mouseAvailable: lcid
	"Answer the <varbool> value of the 'MouseAvailable' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_MouseAvailable: lcid
		rhs: answer.
	^answer asObject
!

moveAfterReturn: lcid
	"Answer the <varbool> value of the 'MoveAfterReturn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_MoveAfterReturn: lcid
		rhs: answer.
	^answer asObject
!

moveAfterReturn: lcid rhs: rhs
	"Set the 'MoveAfterReturn' property of the receiver to the <varbool> value of the argument."

	self
		put_MoveAfterReturn: lcid
		rhs: rhs
!

moveAfterReturnDirection: lcid
	"Answer the <sdword> value of the 'MoveAfterReturnDirection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_MoveAfterReturnDirection: lcid
		rhs: answer.
	^answer asObject
!

moveAfterReturnDirection: lcid rhs: rhs
	"Set the 'MoveAfterReturnDirection' property of the receiver to the <sdword> value of the argument."

	self
		put_MoveAfterReturnDirection: lcid
		rhs: rhs
!

multiThreadedCalculation
	"Answer the <ExcelMultiThreadedCalculation> value of the 'MultiThreadedCalculation' property of the receiver."

	| answer |
	answer := ExcelMultiThreadedCalculation newPointer.
	self get_MultiThreadedCalculation: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

names
	"Answer the <ExcelNames> value of the 'Names' property of the receiver."

	| answer |
	answer := ExcelNames newPointer.
	self get_Names: answer.
	^answer asObject
!

networkTemplatesPath: lcid
	"Answer the <bstr> value of the 'NetworkTemplatesPath' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_NetworkTemplatesPath: lcid
		rhs: answer.
	^answer asObject
!

newWorkbook
	"Answer the <OfficeNewFile> value of the 'NewWorkbook' property of the receiver."

	| answer |
	answer := OfficeNewFile newPointer.
	self get_NewWorkbook: answer.
	^answer asObject
!

nextLetter: lcid
	"Answer the <Excel_Workbook> result of invoking the NextLetter() method of the COM object."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		NextLetter: lcid
		rhs: answer.
	^answer asObject
!

NextLetter: lcid rhs: rhs
	"Private - Invoke the NextLetter() method of the COM object.

		HRESULT __stdcall NextLetter(
			[in]long lcid,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 199 sdword Excel_Workbook**>
	^self invalidCall!

odbcErrors
	"Answer the <ExcelODBCErrors> value of the 'ODBCErrors' property of the receiver."

	| answer |
	answer := ExcelODBCErrors newPointer.
	self get_ODBCErrors: answer.
	^answer asObject
!

odbcTimeout
	"Answer the <sdword> value of the 'ODBCTimeout' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ODBCTimeout: answer.
	^answer asObject
!

odbcTimeout: rhs
	"Set the 'ODBCTimeout' property of the receiver to the <sdword> value of the argument."

	self put_ODBCTimeout: rhs
!

oledbErrors
	"Answer the <ExcelOLEDBErrors> value of the 'OLEDBErrors' property of the receiver."

	| answer |
	answer := ExcelOLEDBErrors newPointer.
	self get_OLEDBErrors: answer.
	^answer asObject
!

onCalculate: lcid
	"Answer the <bstr> value of the 'OnCalculate' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OnCalculate: lcid
		rhs: answer.
	^answer asObject
!

onCalculate: lcid rhs: rhs
	"Set the 'OnCalculate' property of the receiver to the <bstr> value of the argument."

	self
		put_OnCalculate: lcid
		rhs: rhs
!

onData: lcid
	"Answer the <bstr> value of the 'OnData' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OnData: lcid
		rhs: answer.
	^answer asObject
!

onData: lcid rhs: rhs
	"Set the 'OnData' property of the receiver to the <bstr> value of the argument."

	self
		put_OnData: lcid
		rhs: rhs
!

onDoubleClick: lcid
	"Answer the <bstr> value of the 'OnDoubleClick' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OnDoubleClick: lcid
		rhs: answer.
	^answer asObject
!

onDoubleClick: lcid rhs: rhs
	"Set the 'OnDoubleClick' property of the receiver to the <bstr> value of the argument."

	self
		put_OnDoubleClick: lcid
		rhs: rhs
!

onEntry: lcid
	"Answer the <bstr> value of the 'OnEntry' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OnEntry: lcid
		rhs: answer.
	^answer asObject
!

onEntry: lcid rhs: rhs
	"Set the 'OnEntry' property of the receiver to the <bstr> value of the argument."

	self
		put_OnEntry: lcid
		rhs: rhs
!

onKey: key lcid: lcid
	"Invoke the OnKey() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 onKey: key
		 procedure: VARIANT unspecified
		 lcid: lcid!

onKey: key procedure: procedure lcid: lcid
	"Invoke the OnKey() method of the COM object."

	^self
		OnKey: key
		procedure: procedure asVariant
		lcid: lcid
!

OnKey: key procedure: procedure lcid: lcid
	"Private - Invoke the OnKey() method of the COM object.

		HRESULT __stdcall OnKey(
			[in]BSTR Key,
			[in, optional]VARIANT Procedure,
			[in]long lcid);"

	<virtual stdcall: hresult 212 bstr variant sdword>
	^self invalidCall!

onRepeat: text procedure: procedure lcid: lcid
	"Invoke the OnRepeat() method of the COM object."

	^self
		OnRepeat: text
		procedure: procedure
		lcid: lcid
!

OnRepeat: text procedure: procedure lcid: lcid
	"Private - Invoke the OnRepeat() method of the COM object.

		HRESULT __stdcall OnRepeat(
			[in]BSTR Text,
			[in]BSTR Procedure,
			[in]long lcid);"

	<virtual stdcall: hresult 213 bstr bstr sdword>
	^self invalidCall!

onSheetActivate: lcid
	"Answer the <bstr> value of the 'OnSheetActivate' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OnSheetActivate: lcid
		rhs: answer.
	^answer asObject
!

onSheetActivate: lcid rhs: rhs
	"Set the 'OnSheetActivate' property of the receiver to the <bstr> value of the argument."

	self
		put_OnSheetActivate: lcid
		rhs: rhs
!

onSheetDeactivate: lcid
	"Answer the <bstr> value of the 'OnSheetDeactivate' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OnSheetDeactivate: lcid
		rhs: answer.
	^answer asObject
!

onSheetDeactivate: lcid rhs: rhs
	"Set the 'OnSheetDeactivate' property of the receiver to the <bstr> value of the argument."

	self
		put_OnSheetDeactivate: lcid
		rhs: rhs
!

onTime: earliestTime procedure: procedure latestTime: latestTime schedule: schedule lcid: lcid
	"Invoke the OnTime() method of the COM object."

	^self
		OnTime: earliestTime asVariant
		procedure: procedure
		latestTime: latestTime asVariant
		schedule: schedule asVariant
		lcid: lcid
!

OnTime: earliestTime procedure: procedure latestTime: latestTime schedule: schedule lcid: lcid
	"Private - Invoke the OnTime() method of the COM object.

		HRESULT __stdcall OnTime(
			[in]VARIANT EarliestTime,
			[in]BSTR Procedure,
			[in, optional]VARIANT LatestTime,
			[in, optional]VARIANT Schedule,
			[in]long lcid);"

	<virtual stdcall: hresult 218 variant bstr variant variant sdword>
	^self invalidCall!

onTime: earliestTime procedure: procedure lcid: lcid
	"Invoke the OnTime() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 onTime: earliestTime
		 procedure: procedure
		 latestTime: VARIANT unspecified
		 schedule: VARIANT unspecified
		 lcid: lcid!

onUndo: text procedure: procedure lcid: lcid
	"Invoke the OnUndo() method of the COM object."

	^self
		OnUndo: text
		procedure: procedure
		lcid: lcid
!

OnUndo: text procedure: procedure lcid: lcid
	"Private - Invoke the OnUndo() method of the COM object.

		HRESULT __stdcall OnUndo(
			[in]BSTR Text,
			[in]BSTR Procedure,
			[in]long lcid);"

	<virtual stdcall: hresult 219 bstr bstr sdword>
	^self invalidCall!

onWindow: lcid
	"Answer the <bstr> value of the 'OnWindow' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OnWindow: lcid
		rhs: answer.
	^answer asObject
!

onWindow: lcid rhs: rhs
	"Set the 'OnWindow' property of the receiver to the <bstr> value of the argument."

	self
		put_OnWindow: lcid
		rhs: rhs
!

operatingSystem: lcid
	"Answer the <bstr> value of the 'OperatingSystem' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OperatingSystem: lcid
		rhs: answer.
	^answer asObject
!

organizationName: lcid
	"Answer the <bstr> value of the 'OrganizationName' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OrganizationName: lcid
		rhs: answer.
	^answer asObject
!

parent
	"Answer the <Excel_Application> value of the 'Parent' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Parent: answer.
	^answer asObject
!

path: lcid
	"Answer the <bstr> value of the 'Path' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Path: lcid
		rhs: answer.
	^answer asObject
!

pathSeparator: lcid
	"Answer the <bstr> value of the 'PathSeparator' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_PathSeparator: lcid
		rhs: answer.
	^answer asObject
!

pivotTableSelection
	"Answer the <varbool> value of the 'PivotTableSelection' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PivotTableSelection: answer.
	^answer asObject
!

pivotTableSelection: rhs
	"Set the 'PivotTableSelection' property of the receiver to the <varbool> value of the argument."

	self put_PivotTableSelection: rhs
!

previousSelections: lcid
	"Answer the <variant> value of the 'PreviousSelections' property of the receiver."

	^self
		 previousSelections: VARIANT unspecified
		 lcid: lcid!

previousSelections: index lcid: lcid
	"Answer the <variant> value of the 'PreviousSelections' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_PreviousSelections: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

productCode
	"Answer the <bstr> value of the 'ProductCode' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ProductCode: answer.
	^answer asObject
!

promptForSummaryInfo: lcid
	"Answer the <varbool> value of the 'PromptForSummaryInfo' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_PromptForSummaryInfo: lcid
		rhs: answer.
	^answer asObject
!

promptForSummaryInfo: lcid rhs: rhs
	"Set the 'PromptForSummaryInfo' property of the receiver to the <varbool> value of the argument."

	self
		put_PromptForSummaryInfo: lcid
		rhs: rhs
!

put_ActivePrinter: lcid rhs: rhs
	"Private - Set the value of the 'ActivePrinter' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ActivePrinter(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 sdword bstr>
	^self invalidCall!

put_AlertBeforeOverwriting: lcid rhs: rhs
	"Private - Set the value of the 'AlertBeforeOverwriting' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AlertBeforeOverwriting(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 62 sdword varbool>
	^self invalidCall!

put_AltStartupPath: lcid rhs: rhs
	"Private - Set the value of the 'AltStartupPath' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall AltStartupPath(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 64 sdword bstr>
	^self invalidCall!

put_AlwaysUseClearType: rhs
	"Private - Set the value of the 'AlwaysUseClearType' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AlwaysUseClearType(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 393 varbool>
	^self invalidCall!

put_AskToUpdateLinks: lcid rhs: rhs
	"Private - Set the value of the 'AskToUpdateLinks' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AskToUpdateLinks(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 66 sdword varbool>
	^self invalidCall!

put_AutoFormatAsYouTypeReplaceHyperlinks: rhs
	"Private - Set the value of the 'AutoFormatAsYouTypeReplaceHyperlinks' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoFormatAsYouTypeReplaceHyperlinks(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 357 varbool>
	^self invalidCall!

put_AutomationSecurity: rhs
	"Private - Set the value of the 'AutomationSecurity' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall AutomationSecurity(
			[in]MsoAutomationSecurity RHS);"

	<virtual stdcall: hresult 341 sdword>
	^self invalidCall!

put_AutoPercentEntry: rhs
	"Private - Set the value of the 'AutoPercentEntry' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoPercentEntry(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 315 varbool>
	^self invalidCall!

put_CalculateBeforeSave: lcid rhs: rhs
	"Private - Set the value of the 'CalculateBeforeSave' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CalculateBeforeSave(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 72 sdword varbool>
	^self invalidCall!

put_Calculation: lcid rhs: rhs
	"Private - Set the value of the 'Calculation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Calculation(
			[in]long lcid,
			[in]XlCalculation RHS);"

	<virtual stdcall: hresult 74 sdword sdword>
	^self invalidCall!

put_CalculationInterruptKey: rhs
	"Private - Set the value of the 'CalculationInterruptKey' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CalculationInterruptKey(
			[in]XlCalculationInterruptKey RHS);"

	<virtual stdcall: hresult 336 sdword>
	^self invalidCall!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 79 bstr>
	^self invalidCall!

put_CellDragAndDrop: lcid rhs: rhs
	"Private - Set the value of the 'CellDragAndDrop' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CellDragAndDrop(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 81 sdword varbool>
	^self invalidCall!

put_ColorButtons: rhs
	"Private - Set the value of the 'ColorButtons' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ColorButtons(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 88 varbool>
	^self invalidCall!

put_CommandUnderlines: lcid rhs: rhs
	"Private - Set the value of the 'CommandUnderlines' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CommandUnderlines(
			[in]long lcid,
			[in]XlCommandUnderlines RHS);"

	<virtual stdcall: hresult 90 sdword sdword>
	^self invalidCall!

put_ConstrainNumeric: lcid rhs: rhs
	"Private - Set the value of the 'ConstrainNumeric' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ConstrainNumeric(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 92 sdword varbool>
	^self invalidCall!

put_ControlCharacters: lcid rhs: rhs
	"Private - Set the value of the 'ControlCharacters' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ControlCharacters(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 299 sdword varbool>
	^self invalidCall!

put_CopyObjectsWithCells: lcid rhs: rhs
	"Private - Set the value of the 'CopyObjectsWithCells' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CopyObjectsWithCells(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 95 sdword varbool>
	^self invalidCall!

put_Cursor: lcid rhs: rhs
	"Private - Set the value of the 'Cursor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Cursor(
			[in]long lcid,
			[in]XlMousePointer RHS);"

	<virtual stdcall: hresult 97 sdword sdword>
	^self invalidCall!

put_CursorMovement: lcid rhs: rhs
	"Private - Set the value of the 'CursorMovement' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CursorMovement(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 297 sdword sdword>
	^self invalidCall!

put_CutCopyMode: lcid rhs: rhs
	"Private - Set the value of the 'CutCopyMode' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CutCopyMode(
			[in]long lcid,
			[in]XlCutCopyMode RHS);"

	<virtual stdcall: hresult 100 sdword sdword>
	^self invalidCall!

put_DataEntryMode: lcid rhs: rhs
	"Private - Set the value of the 'DataEntryMode' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DataEntryMode(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 102 sdword sdword>
	^self invalidCall!

put_DecimalSeparator: rhs
	"Private - Set the value of the 'DecimalSeparator' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall DecimalSeparator(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 367 bstr>
	^self invalidCall!

put_DefaultFilePath: lcid rhs: rhs
	"Private - Set the value of the 'DefaultFilePath' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall DefaultFilePath(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 116 sdword bstr>
	^self invalidCall!

put_DefaultSaveFormat: rhs
	"Private - Set the value of the 'DefaultSaveFormat' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DefaultSaveFormat(
			[in]XlFileFormat RHS);"

	<virtual stdcall: hresult 266 sdword>
	^self invalidCall!

put_DefaultSheetDirection: lcid rhs: rhs
	"Private - Set the value of the 'DefaultSheetDirection' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DefaultSheetDirection(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 295 sdword sdword>
	^self invalidCall!

put_DeferAsyncQueries: rhs
	"Private - Set the value of the 'DeferAsyncQueries' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DeferAsyncQueries(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 409 varbool>
	^self invalidCall!

put_DisplayAlerts: lcid rhs: rhs
	"Private - Set the value of the 'DisplayAlerts' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayAlerts(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 121 sdword varbool>
	^self invalidCall!

put_DisplayClipboardWindow: lcid rhs: rhs
	"Private - Set the value of the 'DisplayClipboardWindow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayClipboardWindow(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 86 sdword varbool>
	^self invalidCall!

put_DisplayCommentIndicator: rhs
	"Private - Set the value of the 'DisplayCommentIndicator' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DisplayCommentIndicator(
			[in]XlCommentDisplayMode RHS);"

	<virtual stdcall: hresult 129 sdword>
	^self invalidCall!

put_DisplayDocumentActionTaskPane: rhs
	"Private - Set the value of the 'DisplayDocumentActionTaskPane' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayDocumentActionTaskPane(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 375 varbool>
	^self invalidCall!

put_DisplayDocumentInformationPanel: rhs
	"Private - Set the value of the 'DisplayDocumentInformationPanel' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayDocumentInformationPanel(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 391 varbool>
	^self invalidCall!

put_DisplayExcel4Menus: lcid rhs: rhs
	"Private - Set the value of the 'DisplayExcel4Menus' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayExcel4Menus(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 131 sdword varbool>
	^self invalidCall!

put_DisplayFormulaAutoComplete: rhs
	"Private - Set the value of the 'DisplayFormulaAutoComplete' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayFormulaAutoComplete(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 399 varbool>
	^self invalidCall!

put_DisplayFormulaBar: lcid rhs: rhs
	"Private - Set the value of the 'DisplayFormulaBar' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayFormulaBar(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 123 sdword varbool>
	^self invalidCall!

put_DisplayFullScreen: lcid rhs: rhs
	"Private - Set the value of the 'DisplayFullScreen' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayFullScreen(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 125 sdword varbool>
	^self invalidCall!

put_DisplayFunctionToolTips: rhs
	"Private - Set the value of the 'DisplayFunctionToolTips' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayFunctionToolTips(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 339 varbool>
	^self invalidCall!

put_DisplayInfoWindow: rhs
	"Private - Set the value of the 'DisplayInfoWindow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayInfoWindow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 304 varbool>
	^self invalidCall!

put_DisplayInsertOptions: rhs
	"Private - Set the value of the 'DisplayInsertOptions' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayInsertOptions(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 348 varbool>
	^self invalidCall!

put_DisplayNoteIndicator: rhs
	"Private - Set the value of the 'DisplayNoteIndicator' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayNoteIndicator(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 127 varbool>
	^self invalidCall!

put_DisplayPasteOptions: rhs
	"Private - Set the value of the 'DisplayPasteOptions' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayPasteOptions(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 346 varbool>
	^self invalidCall!

put_DisplayRecentFiles: rhs
	"Private - Set the value of the 'DisplayRecentFiles' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayRecentFiles(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 133 varbool>
	^self invalidCall!

put_DisplayScrollBars: lcid rhs: rhs
	"Private - Set the value of the 'DisplayScrollBars' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayScrollBars(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 135 sdword varbool>
	^self invalidCall!

put_DisplayStatusBar: lcid rhs: rhs
	"Private - Set the value of the 'DisplayStatusBar' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayStatusBar(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 137 sdword varbool>
	^self invalidCall!

put_EditDirectlyInCell: lcid rhs: rhs
	"Private - Set the value of the 'EditDirectlyInCell' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EditDirectlyInCell(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 140 sdword varbool>
	^self invalidCall!

put_EnableAnimations: lcid rhs: rhs
	"Private - Set the value of the 'EnableAnimations' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableAnimations(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 68 sdword varbool>
	^self invalidCall!

put_EnableAutoComplete: rhs
	"Private - Set the value of the 'EnableAutoComplete' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableAutoComplete(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 142 varbool>
	^self invalidCall!

put_EnableCancelKey: lcid rhs: rhs
	"Private - Set the value of the 'EnableCancelKey' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall EnableCancelKey(
			[in]long lcid,
			[in]XlEnableCancelKey RHS);"

	<virtual stdcall: hresult 144 sdword sdword>
	^self invalidCall!

put_EnableEvents: rhs
	"Private - Set the value of the 'EnableEvents' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableEvents(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 302 varbool>
	^self invalidCall!

put_EnableLargeOperationAlert: rhs
	"Private - Set the value of the 'EnableLargeOperationAlert' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableLargeOperationAlert(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 405 varbool>
	^self invalidCall!

put_EnableLivePreview: rhs
	"Private - Set the value of the 'EnableLivePreview' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableLivePreview(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 389 varbool>
	^self invalidCall!

put_EnableSound: rhs
	"Private - Set the value of the 'EnableSound' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableSound(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 146 varbool>
	^self invalidCall!

put_EnableTipWizard: lcid rhs: rhs
	"Private - Set the value of the 'EnableTipWizard' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableTipWizard(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 148 sdword varbool>
	^self invalidCall!

put_ExtendList: rhs
	"Private - Set the value of the 'ExtendList' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ExtendList(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 307 varbool>
	^self invalidCall!

put_FeatureInstall: rhs
	"Private - Set the value of the 'FeatureInstall' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall FeatureInstall(
			[in]MsoFeatureInstall RHS);"

	<virtual stdcall: hresult 326 sdword>
	^self invalidCall!

put_FixedDecimal: lcid rhs: rhs
	"Private - Set the value of the 'FixedDecimal' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall FixedDecimal(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 154 sdword varbool>
	^self invalidCall!

put_FixedDecimalPlaces: lcid rhs: rhs
	"Private - Set the value of the 'FixedDecimalPlaces' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall FixedDecimalPlaces(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 156 sdword sdword>
	^self invalidCall!

put_FormulaBarHeight: rhs
	"Private - Set the value of the 'FormulaBarHeight' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall FormulaBarHeight(
			[in]long RHS);"

	<virtual stdcall: hresult 397 sdword>
	^self invalidCall!

put_GenerateGetPivotData: rhs
	"Private - Set the value of the 'GenerateGetPivotData' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall GenerateGetPivotData(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 350 varbool>
	^self invalidCall!

put_GenerateTableRefs: lcid rhs: rhs
	"Private - Set the value of the 'GenerateTableRefs' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall GenerateTableRefs(
			[in]long lcid,
			[in]XlGenerateTableRefs RHS);"

	<virtual stdcall: hresult 401 sdword sdword>
	^self invalidCall!

put_Height: lcid rhs: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Height(
			[in]long lcid,
			[in]double RHS);"

	<virtual stdcall: hresult 163 sdword double>
	^self invalidCall!

put_HighQualityModeForGraphics: rhs
	"Private - Set the value of the 'HighQualityModeForGraphics' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HighQualityModeForGraphics(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 414 varbool>
	^self invalidCall!

put_IgnoreRemoteRequests: lcid rhs: rhs
	"Private - Set the value of the 'IgnoreRemoteRequests' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IgnoreRemoteRequests(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 166 sdword varbool>
	^self invalidCall!

put_Interactive: lcid rhs: rhs
	"Private - Set the value of the 'Interactive' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Interactive(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 170 sdword varbool>
	^self invalidCall!

put_Iteration: lcid rhs: rhs
	"Private - Set the value of the 'Iteration' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Iteration(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 173 sdword varbool>
	^self invalidCall!

put_LargeButtons: rhs
	"Private - Set the value of the 'LargeButtons' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall LargeButtons(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 175 varbool>
	^self invalidCall!

put_LargeOperationCellThousandCount: rhs
	"Private - Set the value of the 'LargeOperationCellThousandCount' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall LargeOperationCellThousandCount(
			[in]long RHS);"

	<virtual stdcall: hresult 407 sdword>
	^self invalidCall!

put_Left: lcid rhs: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]long lcid,
			[in]double RHS);"

	<virtual stdcall: hresult 177 sdword double>
	^self invalidCall!

put_MapPaperSize: rhs
	"Private - Set the value of the 'MapPaperSize' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MapPaperSize(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 363 varbool>
	^self invalidCall!

put_MaxChange: lcid rhs: rhs
	"Private - Set the value of the 'MaxChange' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall MaxChange(
			[in]long lcid,
			[in]double RHS);"

	<virtual stdcall: hresult 186 sdword double>
	^self invalidCall!

put_MaxIterations: lcid rhs: rhs
	"Private - Set the value of the 'MaxIterations' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MaxIterations(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 188 sdword sdword>
	^self invalidCall!

put_MeasurementUnit: rhs
	"Private - Set the value of the 'MeasurementUnit' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MeasurementUnit(
			[in]long RHS);"

	<virtual stdcall: hresult 381 sdword>
	^self invalidCall!

put_MoveAfterReturn: lcid rhs: rhs
	"Private - Set the value of the 'MoveAfterReturn' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MoveAfterReturn(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 194 sdword varbool>
	^self invalidCall!

put_MoveAfterReturnDirection: lcid rhs: rhs
	"Private - Set the value of the 'MoveAfterReturnDirection' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MoveAfterReturnDirection(
			[in]long lcid,
			[in]XlDirection RHS);"

	<virtual stdcall: hresult 196 sdword sdword>
	^self invalidCall!

put_ODBCTimeout: rhs
	"Private - Set the value of the 'ODBCTimeout' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ODBCTimeout(
			[in]long RHS);"

	<virtual stdcall: hresult 203 sdword>
	^self invalidCall!

put_OnCalculate: lcid rhs: rhs
	"Private - Set the value of the 'OnCalculate' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnCalculate(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 205 sdword bstr>
	^self invalidCall!

put_OnData: lcid rhs: rhs
	"Private - Set the value of the 'OnData' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnData(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 207 sdword bstr>
	^self invalidCall!

put_OnDoubleClick: lcid rhs: rhs
	"Private - Set the value of the 'OnDoubleClick' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnDoubleClick(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 209 sdword bstr>
	^self invalidCall!

put_OnEntry: lcid rhs: rhs
	"Private - Set the value of the 'OnEntry' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnEntry(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 211 sdword bstr>
	^self invalidCall!

put_OnSheetActivate: lcid rhs: rhs
	"Private - Set the value of the 'OnSheetActivate' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnSheetActivate(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 215 sdword bstr>
	^self invalidCall!

put_OnSheetDeactivate: lcid rhs: rhs
	"Private - Set the value of the 'OnSheetDeactivate' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnSheetDeactivate(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 217 sdword bstr>
	^self invalidCall!

put_OnWindow: lcid rhs: rhs
	"Private - Set the value of the 'OnWindow' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnWindow(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 221 sdword bstr>
	^self invalidCall!

put_PivotTableSelection: rhs
	"Private - Set the value of the 'PivotTableSelection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PivotTableSelection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 228 varbool>
	^self invalidCall!

put_PromptForSummaryInfo: lcid rhs: rhs
	"Private - Set the value of the 'PromptForSummaryInfo' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PromptForSummaryInfo(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 230 sdword varbool>
	^self invalidCall!

put_ReferenceStyle: lcid rhs: rhs
	"Private - Set the value of the 'ReferenceStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ReferenceStyle(
			[in]long lcid,
			[in]XlReferenceStyle RHS);"

	<virtual stdcall: hresult 235 sdword sdword>
	^self invalidCall!

put_RollZoom: rhs
	"Private - Set the value of the 'RollZoom' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RollZoom(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 241 varbool>
	^self invalidCall!

put_ScreenUpdating: lcid rhs: rhs
	"Private - Set the value of the 'ScreenUpdating' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ScreenUpdating(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 245 sdword varbool>
	^self invalidCall!

put_SheetsInNewWorkbook: lcid rhs: rhs
	"Private - Set the value of the 'SheetsInNewWorkbook' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SheetsInNewWorkbook(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 248 sdword sdword>
	^self invalidCall!

put_ShowChartTipNames: rhs
	"Private - Set the value of the 'ShowChartTipNames' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowChartTipNames(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 250 varbool>
	^self invalidCall!

put_ShowChartTipValues: rhs
	"Private - Set the value of the 'ShowChartTipValues' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowChartTipValues(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 252 varbool>
	^self invalidCall!

put_ShowDevTools: rhs
	"Private - Set the value of the 'ShowDevTools' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowDevTools(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 387 varbool>
	^self invalidCall!

put_ShowMenuFloaties: rhs
	"Private - Set the value of the 'ShowMenuFloaties' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowMenuFloaties(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 385 varbool>
	^self invalidCall!

put_ShowSelectionFloaties: rhs
	"Private - Set the value of the 'ShowSelectionFloaties' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowSelectionFloaties(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 383 varbool>
	^self invalidCall!

put_ShowStartupDialog: rhs
	"Private - Set the value of the 'ShowStartupDialog' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowStartupDialog(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 365 varbool>
	^self invalidCall!

put_ShowToolTips: rhs
	"Private - Set the value of the 'ShowToolTips' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowToolTips(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 262 varbool>
	^self invalidCall!

put_ShowWindowsInTaskbar: rhs
	"Private - Set the value of the 'ShowWindowsInTaskbar' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowWindowsInTaskbar(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 324 varbool>
	^self invalidCall!

put_StandardFont: lcid rhs: rhs
	"Private - Set the value of the 'StandardFont' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall StandardFont(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 254 sdword bstr>
	^self invalidCall!

put_StandardFontSize: lcid rhs: rhs
	"Private - Set the value of the 'StandardFontSize' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall StandardFontSize(
			[in]long lcid,
			[in]double RHS);"

	<virtual stdcall: hresult 256 sdword double>
	^self invalidCall!

put_StatusBar: lcid rhs: rhs
	"Private - Set the value of the 'StatusBar' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall StatusBar(
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 259 sdword variant>
	^self invalidCall!

put_ThousandsSeparator: rhs
	"Private - Set the value of the 'ThousandsSeparator' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ThousandsSeparator(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 369 bstr>
	^self invalidCall!

put_Top: lcid rhs: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]long lcid,
			[in]double RHS);"

	<virtual stdcall: hresult 264 sdword double>
	^self invalidCall!

put_TransitionMenuKey: lcid rhs: rhs
	"Private - Set the value of the 'TransitionMenuKey' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall TransitionMenuKey(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 268 sdword bstr>
	^self invalidCall!

put_TransitionMenuKeyAction: lcid rhs: rhs
	"Private - Set the value of the 'TransitionMenuKeyAction' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TransitionMenuKeyAction(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 270 sdword sdword>
	^self invalidCall!

put_TransitionNavigKeys: lcid rhs: rhs
	"Private - Set the value of the 'TransitionNavigKeys' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TransitionNavigKeys(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 272 sdword varbool>
	^self invalidCall!

put_UILanguage: lcid rhs: rhs
	"Private - Set the value of the 'UILanguage' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall UILanguage(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 293 sdword sdword>
	^self invalidCall!

put_UserControl: rhs
	"Private - Set the value of the 'UserControl' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UserControl(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 277 varbool>
	^self invalidCall!

put_UserName: lcid rhs: rhs
	"Private - Set the value of the 'UserName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall UserName(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 279 sdword bstr>
	^self invalidCall!

put_UseSystemSeparators: rhs
	"Private - Set the value of the 'UseSystemSeparators' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UseSystemSeparators(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 371 varbool>
	^self invalidCall!

put_Visible: lcid rhs: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 284 sdword varbool>
	^self invalidCall!

put_WarnOnFunctionNameConflict: rhs
	"Private - Set the value of the 'WarnOnFunctionNameConflict' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WarnOnFunctionNameConflict(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 395 varbool>
	^self invalidCall!

put_Width: lcid rhs: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]long lcid,
			[in]double RHS);"

	<virtual stdcall: hresult 288 sdword double>
	^self invalidCall!

put_WindowState: lcid rhs: rhs
	"Private - Set the value of the 'WindowState' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall WindowState(
			[in]long lcid,
			[in]XlWindowState RHS);"

	<virtual stdcall: hresult 291 sdword sdword>
	^self invalidCall!

putref_FindFormat: rhs
	"Private - Set the value of the 'FindFormat' property of the object wrapped by the 
	 receiver to the <ExcelCellFormat*> argument, rhs.

		HRESULT __stdcall FindFormat(
			[in]CellFormat* RHS);"

	<virtual stdcall: hresult 330 ExcelCellFormat*>
	^self invalidCall!

putref_ReplaceFormat: rhs
	"Private - Set the value of the 'ReplaceFormat' property of the object wrapped by the 
	 receiver to the <ExcelCellFormat*> argument, rhs.

		HRESULT __stdcall ReplaceFormat(
			[in]CellFormat* RHS);"

	<virtual stdcall: hresult 332 ExcelCellFormat*>
	^self invalidCall!

quit
	"Invoke the Quit() method of the COM object."

	^self Quit
!

Quit
	"Private - Invoke the Quit() method of the COM object.

		HRESULT __stdcall Quit();"

	<virtual stdcall: hresult 231>
	^self invalidCall!

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

ready
	"Answer the <varbool> value of the 'Ready' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Ready: answer.
	^answer asObject
!

recentFiles
	"Answer the <ExcelRecentFiles> value of the 'RecentFiles' property of the receiver."

	| answer |
	answer := ExcelRecentFiles newPointer.
	self get_RecentFiles: answer.
	^answer asObject
!

recordMacro: lcid
	"Invoke the RecordMacro() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 recordMacro: VARIANT unspecified
		 xlmCode: VARIANT unspecified
		 lcid: lcid!

recordMacro: basicCode xlmCode: xlmCode lcid: lcid
	"Invoke the RecordMacro() method of the COM object."

	^self
		RecordMacro: basicCode asVariant
		xlmCode: xlmCode asVariant
		lcid: lcid
!

RecordMacro: basicCode xlmCode: xlmCode lcid: lcid
	"Private - Invoke the RecordMacro() method of the COM object.

		HRESULT __stdcall RecordMacro(
			[in, optional]VARIANT BasicCode,
			[in, optional]VARIANT XlmCode,
			[in]long lcid);"

	<virtual stdcall: hresult 232 variant variant sdword>
	^self invalidCall!

recordRelative: lcid
	"Answer the <varbool> value of the 'RecordRelative' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_RecordRelative: lcid
		rhs: answer.
	^answer asObject
!

referenceStyle: lcid
	"Answer the <sdword> value of the 'ReferenceStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_ReferenceStyle: lcid
		rhs: answer.
	^answer asObject
!

referenceStyle: lcid rhs: rhs
	"Set the 'ReferenceStyle' property of the receiver to the <sdword> value of the argument."

	self
		put_ReferenceStyle: lcid
		rhs: rhs
!

registeredFunctions: lcid
	"Answer the <variant> value of the 'RegisteredFunctions' property of the receiver."

	^self
		 registeredFunctions: VARIANT unspecified
		 index2: VARIANT unspecified
		 lcid: lcid!

registeredFunctions: index1 index2: index2 lcid: lcid
	"Answer the <variant> value of the 'RegisteredFunctions' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_RegisteredFunctions: index1 asVariant
		index2: index2 asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

registerXLL: filename lcid: lcid
	"Answer the <VARIANT_BOOL> result of invoking the RegisterXLL() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		RegisterXLL: filename
		lcid: lcid
		rhs: answer.
	^answer asObject
!

RegisterXLL: filename lcid: lcid rhs: rhs
	"Private - Invoke the RegisterXLL() method of the COM object.

		HRESULT __stdcall RegisterXLL(
			[in]BSTR Filename,
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 237 bstr sdword varbool*>
	^self invalidCall!

repeat: lcid
	"Invoke the Repeat() method of the COM object."

	^self Repeat: lcid
!

Repeat: lcid
	"Private - Invoke the Repeat() method of the COM object.

		HRESULT __stdcall Repeat(
			[in]long lcid);"

	<virtual stdcall: hresult 238 sdword>
	^self invalidCall!

replaceFormat
	"Answer the <ExcelCellFormat> value of the 'ReplaceFormat' property of the receiver."

	| answer |
	answer := ExcelCellFormat newPointer.
	self get_ReplaceFormat: answer.
	^answer asObject
!

resetTipWizard: lcid
	"Invoke the ResetTipWizard() method of the COM object."

	^self ResetTipWizard: lcid
!

ResetTipWizard: lcid
	"Private - Invoke the ResetTipWizard() method of the COM object.

		HRESULT __stdcall ResetTipWizard(
			[in]long lcid);"

	<virtual stdcall: hresult 239 sdword>
	^self invalidCall!

rollZoom
	"Answer the <varbool> value of the 'RollZoom' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RollZoom: answer.
	^answer asObject
!

rollZoom: rhs
	"Set the 'RollZoom' property of the receiver to the <varbool> value of the argument."

	self put_RollZoom: rhs
!

rows
	"Answer the <ExcelRange> value of the 'Rows' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Rows: answer.
	^answer asObject
!

rtd
	"Answer the <ExcelRTD> value of the 'RTD' property of the receiver."

	| answer |
	answer := ExcelRTD newPointer.
	self get_RTD: answer.
	^answer asObject
!

run
	"Answer the <VARIANT> result of invoking the Run() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 run: VARIANT unspecified
		 arg1: VARIANT unspecified
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

run: macro arg1: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT> result of invoking the Run() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Run: macro asVariant
		arg1: arg1 asVariant
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

Run: macro arg1: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 rhs: rhs
	"Private - Invoke the Run() method of the COM object.

		HRESULT __stdcall Run(
			[in, optional]VARIANT Macro,
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

	<virtual stdcall: hresult 43 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

save: lcid
	"Invoke the Save() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 save: VARIANT unspecified
		 lcid: lcid!

save: filename lcid: lcid
	"Invoke the Save() method of the COM object."

	^self
		Save: filename asVariant
		lcid: lcid
!

Save: filename lcid: lcid
	"Private - Invoke the Save() method of the COM object.

		HRESULT __stdcall Save(
			[in, optional]VARIANT Filename,
			[in]long lcid);"

	<virtual stdcall: hresult 242 variant sdword>
	^self invalidCall!

saveWorkspace: lcid
	"Invoke the SaveWorkspace() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 saveWorkspace: VARIANT unspecified
		 lcid: lcid!

saveWorkspace: filename lcid: lcid
	"Invoke the SaveWorkspace() method of the COM object."

	^self
		SaveWorkspace: filename asVariant
		lcid: lcid
!

SaveWorkspace: filename lcid: lcid
	"Private - Invoke the SaveWorkspace() method of the COM object.

		HRESULT __stdcall SaveWorkspace(
			[in, optional]VARIANT Filename,
			[in]long lcid);"

	<virtual stdcall: hresult 243 variant sdword>
	^self invalidCall!

screenUpdating: lcid
	"Answer the <varbool> value of the 'ScreenUpdating' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ScreenUpdating: lcid
		rhs: answer.
	^answer asObject
!

screenUpdating: lcid rhs: rhs
	"Set the 'ScreenUpdating' property of the receiver to the <varbool> value of the argument."

	self
		put_ScreenUpdating: lcid
		rhs: rhs
!

selection: lcid
	"Answer the <IDispatch> value of the 'Selection' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_Selection: lcid
		rhs: answer.
	^answer asObject
!

sendKeys: keys lcid: lcid
	"Invoke the SendKeys() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sendKeys: keys
		 wait: VARIANT unspecified
		 lcid: lcid!

sendKeys: keys wait: wait lcid: lcid
	"Invoke the SendKeys() method of the COM object."

	^self
		SendKeys: keys asVariant
		wait: wait asVariant
		lcid: lcid
!

SendKeys: keys wait: wait lcid: lcid
	"Private - Invoke the SendKeys() method of the COM object.

		HRESULT __stdcall SendKeys(
			[in]VARIANT Keys,
			[in, optional]VARIANT Wait,
			[in]long lcid);"

	<virtual stdcall: hresult 46 variant variant sdword>
	^self invalidCall!

setDefaultChart
	"Invoke the SetDefaultChart() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 setDefaultChart: VARIANT unspecified
		 gallery: VARIANT unspecified!

setDefaultChart: formatName gallery: gallery
	"Invoke the SetDefaultChart() method of the COM object."

	^self
		SetDefaultChart: formatName asVariant
		gallery: gallery asVariant
!

SetDefaultChart: formatName gallery: gallery
	"Private - Invoke the SetDefaultChart() method of the COM object.

		HRESULT __stdcall SetDefaultChart(
			[in, optional]VARIANT FormatName,
			[in, optional]VARIANT Gallery);"

	<virtual stdcall: hresult 246 variant variant>
	^self invalidCall!

setFindFormat: rhs
	"Set the 'FindFormat' property of the receiver to the <ExcelCellFormat*> value of the argument."

	self putref_FindFormat: rhs
!

setReplaceFormat: rhs
	"Set the 'ReplaceFormat' property of the receiver to the <ExcelCellFormat*> value of the argument."

	self putref_ReplaceFormat: rhs
!

sharePointVersion: bstrUrl
	"Answer the <SDWORD> result of invoking the SharePointVersion() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		SharePointVersion: bstrUrl
		rhs: answer.
	^answer asObject
!

SharePointVersion: bstrUrl rhs: rhs
	"Private - Invoke the SharePointVersion() method of the COM object.

		HRESULT __stdcall SharePointVersion(
			[in]BSTR bstrUrl,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 411 bstr sdword*>
	^self invalidCall!

sheets
	"Answer the <ExcelSheets> value of the 'Sheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Sheets: answer.
	^answer asObject
!

sheetsInNewWorkbook: lcid
	"Answer the <sdword> value of the 'SheetsInNewWorkbook' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_SheetsInNewWorkbook: lcid
		rhs: answer.
	^answer asObject
!

sheetsInNewWorkbook: lcid rhs: rhs
	"Set the 'SheetsInNewWorkbook' property of the receiver to the <sdword> value of the argument."

	self
		put_SheetsInNewWorkbook: lcid
		rhs: rhs
!

shortcutMenus: index
	"Answer the <ExcelMenu> value of the 'ShortcutMenus' property of the receiver."

	| answer |
	answer := ExcelMenu newPointer.
	self
		get_ShortcutMenus: index
		rhs: answer.
	^answer asObject
!

showChartTipNames
	"Answer the <varbool> value of the 'ShowChartTipNames' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowChartTipNames: answer.
	^answer asObject
!

showChartTipNames: rhs
	"Set the 'ShowChartTipNames' property of the receiver to the <varbool> value of the argument."

	self put_ShowChartTipNames: rhs
!

showChartTipValues
	"Answer the <varbool> value of the 'ShowChartTipValues' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowChartTipValues: answer.
	^answer asObject
!

showChartTipValues: rhs
	"Set the 'ShowChartTipValues' property of the receiver to the <varbool> value of the argument."

	self put_ShowChartTipValues: rhs
!

showDevTools
	"Answer the <varbool> value of the 'ShowDevTools' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowDevTools: answer.
	^answer asObject
!

showDevTools: rhs
	"Set the 'ShowDevTools' property of the receiver to the <varbool> value of the argument."

	self put_ShowDevTools: rhs
!

showMenuFloaties
	"Answer the <varbool> value of the 'ShowMenuFloaties' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowMenuFloaties: answer.
	^answer asObject
!

showMenuFloaties: rhs
	"Set the 'ShowMenuFloaties' property of the receiver to the <varbool> value of the argument."

	self put_ShowMenuFloaties: rhs
!

showSelectionFloaties
	"Answer the <varbool> value of the 'ShowSelectionFloaties' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowSelectionFloaties: answer.
	^answer asObject
!

showSelectionFloaties: rhs
	"Set the 'ShowSelectionFloaties' property of the receiver to the <varbool> value of the argument."

	self put_ShowSelectionFloaties: rhs
!

showStartupDialog
	"Answer the <varbool> value of the 'ShowStartupDialog' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowStartupDialog: answer.
	^answer asObject
!

showStartupDialog: rhs
	"Set the 'ShowStartupDialog' property of the receiver to the <varbool> value of the argument."

	self put_ShowStartupDialog: rhs
!

showToolTips
	"Answer the <varbool> value of the 'ShowToolTips' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowToolTips: answer.
	^answer asObject
!

showToolTips: rhs
	"Set the 'ShowToolTips' property of the receiver to the <varbool> value of the argument."

	self put_ShowToolTips: rhs
!

showWindowsInTaskbar
	"Answer the <varbool> value of the 'ShowWindowsInTaskbar' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowWindowsInTaskbar: answer.
	^answer asObject
!

showWindowsInTaskbar: rhs
	"Set the 'ShowWindowsInTaskbar' property of the receiver to the <varbool> value of the argument."

	self put_ShowWindowsInTaskbar: rhs
!

smartTagRecognizers
	"Answer the <ExcelSmartTagRecognizers> value of the 'SmartTagRecognizers' property of the receiver."

	| answer |
	answer := ExcelSmartTagRecognizers newPointer.
	self get_SmartTagRecognizers: answer.
	^answer asObject
!

speech
	"Answer the <ExcelSpeech> value of the 'Speech' property of the receiver."

	| answer |
	answer := ExcelSpeech newPointer.
	self get_Speech: answer.
	^answer asObject
!

spellingOptions
	"Answer the <ExcelSpellingOptions> value of the 'SpellingOptions' property of the receiver."

	| answer |
	answer := ExcelSpellingOptions newPointer.
	self get_SpellingOptions: answer.
	^answer asObject
!

standardFont: lcid
	"Answer the <bstr> value of the 'StandardFont' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_StandardFont: lcid
		rhs: answer.
	^answer asObject
!

standardFont: lcid rhs: rhs
	"Set the 'StandardFont' property of the receiver to the <bstr> value of the argument."

	self
		put_StandardFont: lcid
		rhs: rhs
!

standardFontSize: lcid
	"Answer the <double> value of the 'StandardFontSize' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_StandardFontSize: lcid
		rhs: answer.
	^answer asObject
!

standardFontSize: lcid rhs: rhs
	"Set the 'StandardFontSize' property of the receiver to the <double> value of the argument."

	self
		put_StandardFontSize: lcid
		rhs: rhs
!

startupPath: lcid
	"Answer the <bstr> value of the 'StartupPath' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_StartupPath: lcid
		rhs: answer.
	^answer asObject
!

statusBar: lcid
	"Answer the <variant> value of the 'StatusBar' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_StatusBar: lcid
		rhs: answer.
	^answer asObject
!

statusBar: lcid rhs: rhs
	"Set the 'StatusBar' property of the receiver to the <variant> value of the argument."

	self
		put_StatusBar: lcid
		rhs: rhs asVariant
!

support: object id: id
	"Answer the <VARIANT> result of invoking the Support() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 support: object
		 id: id
		 arg: VARIANT unspecified!

support: object id: id arg: arg
	"Answer the <VARIANT> result of invoking the Support() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Support: object
		id: id
		arg: arg asVariant
		rhs: answer.
	^answer asObject
!

Support: object id: id arg: arg rhs: rhs
	"Private - Invoke the Support() method of the COM object.

		HRESULT __stdcall Support(
			[in]IDispatch* Object,
			[in]long ID,
			[in, optional]VARIANT arg,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 378 IDispatch* sdword variant variant*>
	^self invalidCall!

templatesPath: lcid
	"Answer the <bstr> value of the 'TemplatesPath' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_TemplatesPath: lcid
		rhs: answer.
	^answer asObject
!

thisCell
	"Answer the <ExcelRange> value of the 'ThisCell' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_ThisCell: answer.
	^answer asObject
!

thisWorkbook: lcid
	"Answer the <Excel_Workbook> value of the 'ThisWorkbook' property of the receiver."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		get_ThisWorkbook: lcid
		rhs: answer.
	^answer asObject
!

thousandsSeparator
	"Answer the <bstr> value of the 'ThousandsSeparator' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ThousandsSeparator: answer.
	^answer asObject
!

thousandsSeparator: rhs
	"Set the 'ThousandsSeparator' property of the receiver to the <bstr> value of the argument."

	self put_ThousandsSeparator: rhs
!

toolbars
	"Answer the <ExcelToolbars> value of the 'Toolbars' property of the receiver."

	| answer |
	answer := ExcelToolbars newPointer.
	self get_Toolbars: answer.
	^answer asObject
!

top: lcid
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_Top: lcid
		rhs: answer.
	^answer asObject
!

top: lcid rhs: rhs
	"Set the 'Top' property of the receiver to the <double> value of the argument."

	self
		put_Top: lcid
		rhs: rhs
!

transitionMenuKey: lcid
	"Answer the <bstr> value of the 'TransitionMenuKey' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_TransitionMenuKey: lcid
		rhs: answer.
	^answer asObject
!

transitionMenuKey: lcid rhs: rhs
	"Set the 'TransitionMenuKey' property of the receiver to the <bstr> value of the argument."

	self
		put_TransitionMenuKey: lcid
		rhs: rhs
!

transitionMenuKeyAction: lcid
	"Answer the <sdword> value of the 'TransitionMenuKeyAction' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_TransitionMenuKeyAction: lcid
		rhs: answer.
	^answer asObject
!

transitionMenuKeyAction: lcid rhs: rhs
	"Set the 'TransitionMenuKeyAction' property of the receiver to the <sdword> value of the argument."

	self
		put_TransitionMenuKeyAction: lcid
		rhs: rhs
!

transitionNavigKeys: lcid
	"Answer the <varbool> value of the 'TransitionNavigKeys' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_TransitionNavigKeys: lcid
		rhs: answer.
	^answer asObject
!

transitionNavigKeys: lcid rhs: rhs
	"Set the 'TransitionNavigKeys' property of the receiver to the <varbool> value of the argument."

	self
		put_TransitionNavigKeys: lcid
		rhs: rhs
!

uiLanguage: lcid
	"Answer the <sdword> value of the 'UILanguage' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_UILanguage: lcid
		rhs: answer.
	^answer asObject
!

uiLanguage: lcid rhs: rhs
	"Set the 'UILanguage' property of the receiver to the <sdword> value of the argument."

	self
		put_UILanguage: lcid
		rhs: rhs
!

undo: lcid
	"Invoke the Undo() method of the COM object."

	^self Undo: lcid
!

Undo: lcid
	"Private - Invoke the Undo() method of the COM object.

		HRESULT __stdcall Undo(
			[in]long lcid);"

	<virtual stdcall: hresult 273 sdword>
	^self invalidCall!

union: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 lcid: lcid
	"Answer the <ExcelRange> result of invoking the Union() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		Union: arg1
		arg2: arg2
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
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Union: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30 lcid: lcid rhs: rhs
	"Private - Invoke the Union() method of the COM object.

		HRESULT __stdcall Union(
			[in]Range* Arg1,
			[in]Range* Arg2,
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
			[in]long lcid,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 51 ExcelRange* ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword ExcelRange**>
	^self invalidCall!

union: arg1 arg2: arg2 lcid: lcid
	"Answer the <ExcelRange> result of invoking the Union() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 union: arg1
		 arg2: arg2
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
		 arg30: VARIANT unspecified
		 lcid: lcid!

usableHeight: lcid
	"Answer the <double> value of the 'UsableHeight' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_UsableHeight: lcid
		rhs: answer.
	^answer asObject
!

usableWidth: lcid
	"Answer the <double> value of the 'UsableWidth' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_UsableWidth: lcid
		rhs: answer.
	^answer asObject
!

usedObjects
	"Answer the <ExcelUsedObjects> value of the 'UsedObjects' property of the receiver."

	| answer |
	answer := ExcelUsedObjects newPointer.
	self get_UsedObjects: answer.
	^answer asObject
!

userControl
	"Answer the <varbool> value of the 'UserControl' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_UserControl: answer.
	^answer asObject
!

userControl: rhs
	"Set the 'UserControl' property of the receiver to the <varbool> value of the argument."

	self put_UserControl: rhs
!

userLibraryPath
	"Answer the <bstr> value of the 'UserLibraryPath' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_UserLibraryPath: answer.
	^answer asObject
!

userName: lcid
	"Answer the <bstr> value of the 'UserName' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_UserName: lcid
		rhs: answer.
	^answer asObject
!

userName: lcid rhs: rhs
	"Set the 'UserName' property of the receiver to the <bstr> value of the argument."

	self
		put_UserName: lcid
		rhs: rhs
!

useSystemSeparators
	"Answer the <varbool> value of the 'UseSystemSeparators' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_UseSystemSeparators: answer.
	^answer asObject
!

useSystemSeparators: rhs
	"Set the 'UseSystemSeparators' property of the receiver to the <varbool> value of the argument."

	self put_UseSystemSeparators: rhs
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
!

vbe
	"Answer the <VBIDEVBE> value of the 'VBE' property of the receiver."

	| answer |
	answer := VBIDEVBE newPointer.
	self get_VBE: answer.
	^answer asObject
!

version: lcid
	"Answer the <bstr> value of the 'Version' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Version: lcid
		rhs: answer.
	^answer asObject
!

visible: lcid
	"Answer the <varbool> value of the 'Visible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_Visible: lcid
		rhs: answer.
	^answer asObject
!

visible: lcid rhs: rhs
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument."

	self
		put_Visible: lcid
		rhs: rhs
!

volatile: lcid
	"Invoke the Volatile() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 volatile: VARIANT unspecified
		 lcid: lcid!

volatile: volatile lcid: lcid
	"Invoke the Volatile() method of the COM object."

	^self
		Volatile: volatile asVariant
		lcid: lcid
!

Volatile: volatile lcid: lcid
	"Private - Invoke the Volatile() method of the COM object.

		HRESULT __stdcall Volatile(
			[in, optional]VARIANT Volatile,
			[in]long lcid);"

	<virtual stdcall: hresult 285 variant sdword>
	^self invalidCall!

wait: time lcid: lcid
	"Answer the <VARIANT_BOOL> result of invoking the Wait() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		Wait: time asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Wait: time lcid: lcid rhs: rhs
	"Private - Invoke the Wait() method of the COM object.

		HRESULT __stdcall Wait(
			[in]VARIANT Time,
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 305 variant sdword varbool*>
	^self invalidCall!

warnOnFunctionNameConflict
	"Answer the <varbool> value of the 'WarnOnFunctionNameConflict' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_WarnOnFunctionNameConflict: answer.
	^answer asObject
!

warnOnFunctionNameConflict: rhs
	"Set the 'WarnOnFunctionNameConflict' property of the receiver to the <varbool> value of the argument."

	self put_WarnOnFunctionNameConflict: rhs
!

watches
	"Answer the <ExcelWatches> value of the 'Watches' property of the receiver."

	| answer |
	answer := ExcelWatches newPointer.
	self get_Watches: answer.
	^answer asObject
!

width: lcid
	"Answer the <double> value of the 'Width' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_Width: lcid
		rhs: answer.
	^answer asObject
!

width: lcid rhs: rhs
	"Set the 'Width' property of the receiver to the <double> value of the argument."

	self
		put_Width: lcid
		rhs: rhs
!

windows
	"Answer the <ExcelWindows> value of the 'Windows' property of the receiver."

	| answer |
	answer := ExcelWindows newPointer.
	self get_Windows: answer.
	^answer asObject
!

windowsForPens: lcid
	"Answer the <varbool> value of the 'WindowsForPens' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_WindowsForPens: lcid
		rhs: answer.
	^answer asObject
!

windowState: lcid
	"Answer the <sdword> value of the 'WindowState' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_WindowState: lcid
		rhs: answer.
	^answer asObject
!

windowState: lcid rhs: rhs
	"Set the 'WindowState' property of the receiver to the <sdword> value of the argument."

	self
		put_WindowState: lcid
		rhs: rhs
!

workbooks
	"Answer the <ExcelWorkbooks> value of the 'Workbooks' property of the receiver."

	| answer |
	answer := ExcelWorkbooks newPointer.
	self get_Workbooks: answer.
	^answer asObject
!

worksheetFunction
	"Answer the <ExcelWorksheetFunction> value of the 'WorksheetFunction' property of the receiver."

	| answer |
	answer := ExcelWorksheetFunction newPointer.
	self get_WorksheetFunction: answer.
	^answer asObject
!

worksheets
	"Answer the <ExcelSheets> value of the 'Worksheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Worksheets: answer.
	^answer asObject
! !
!Excel_Application categoriesFor: #_default!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #_evaluate:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #_Evaluate:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #_findFile:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #_FindFile:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #_run2:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #_run2:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #_Run2:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #_wait:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #_Wait:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #_wsFunction:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #_wsFunction:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #_WSFunction:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #activateMicrosoftApp:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #ActivateMicrosoftApp:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #activeCell!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activeChart!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activeDialog!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activeEncryptionSession!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activeMenuBar!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activePrinter:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activePrinter:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activeSheet!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activeWindow!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #activeWorkbook!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #addChartAutoFormat:name:description:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #AddChartAutoFormat:name:description:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #addChartAutoFormat:name:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #addCustomList:byRow:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #AddCustomList:byRow:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #addCustomList:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #addIns!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #alertBeforeOverwriting:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #alertBeforeOverwriting:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #altStartupPath:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #altStartupPath:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #alwaysUseClearType!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #alwaysUseClearType:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #answerWizard!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #application!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #arbitraryXMLSupportAvailable!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #askToUpdateLinks:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #askToUpdateLinks:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #assistance!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #assistant!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #autoCorrect!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #autoFormatAsYouTypeReplaceHyperlinks!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #autoFormatAsYouTypeReplaceHyperlinks:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #automationSecurity!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #automationSecurity:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #autoPercentEntry!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #autoPercentEntry:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #autoRecover!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #build:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #calculate:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Calculate:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #calculateBeforeSave:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #calculateBeforeSave:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #calculateFull!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #CalculateFull!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #calculateFullRebuild!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #CalculateFullRebuild!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #calculateUntilAsyncQueriesDone!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #CalculateUntilAsyncQueriesDone!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #calculation:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #calculation:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #calculationInterruptKey!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #calculationInterruptKey:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #calculationState!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #calculationVersion!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #caller:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #caller:lcid:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #canPlaySounds:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #canRecordSounds:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #caption!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #caption:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cellDragAndDrop:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cellDragAndDrop:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cells!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #centimetersToPoints:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #CentimetersToPoints:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #charts!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #checkAbort!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #checkAbort:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #CheckAbort:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #checkSpelling:customDictionary:ignoreUppercase:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #CheckSpelling:customDictionary:ignoreUppercase:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #checkSpelling:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #clipboardFormats:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #clipboardFormats:lcid:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #colorButtons!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #colorButtons:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #columns!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #comAddIns!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #commandBars!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #commandUnderlines:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #commandUnderlines:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #constrainNumeric:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #constrainNumeric:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #controlCharacters:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #controlCharacters:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #convertFormula:fromReferenceStyle:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #convertFormula:fromReferenceStyle:toReferenceStyle:toAbsolute:relativeTo:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #ConvertFormula:fromReferenceStyle:toReferenceStyle:toAbsolute:relativeTo:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #copyObjectsWithCells:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #copyObjectsWithCells:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cursor:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cursor:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cursorMovement:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cursorMovement:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #customListCount:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cutCopyMode:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #cutCopyMode:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #dataEntryMode:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #dataEntryMode:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #ddeAppReturnCode:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #ddeExecute:string:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DDEExecute:string:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #ddeInitiate:topic:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DDEInitiate:topic:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #ddePoke:item:data:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DDEPoke:item:data:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #ddeRequest:item:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DDERequest:item:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #ddeTerminate:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DDETerminate:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #decimalSeparator!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #decimalSeparator:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #defaultFilePath:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #defaultFilePath:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #defaultSaveFormat!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #defaultSaveFormat:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #defaultSheetDirection:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #defaultSheetDirection:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #defaultWebOptions!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #deferAsyncQueries!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #deferAsyncQueries:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #deleteChartAutoFormat:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DeleteChartAutoFormat:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #deleteCustomList:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DeleteCustomList:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dialogs!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #dialogSheets!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayAlerts:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayAlerts:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayClipboardWindow:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayClipboardWindow:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayCommentIndicator!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayCommentIndicator:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayDocumentActionTaskPane!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayDocumentActionTaskPane:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayDocumentInformationPanel!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayDocumentInformationPanel:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayExcel4Menus:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayExcel4Menus:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayFormulaAutoComplete!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayFormulaAutoComplete:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayFormulaBar:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayFormulaBar:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayFullScreen:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayFullScreen:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayFunctionToolTips!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayFunctionToolTips:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayInfoWindow!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayInfoWindow:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayInsertOptions!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayInsertOptions:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayNoteIndicator!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayNoteIndicator:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayPasteOptions!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayPasteOptions:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayRecentFiles!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayRecentFiles:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayScrollBars:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayScrollBars:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayStatusBar:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayStatusBar:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #displayXMLSourcePane!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #displayXMLSourcePane:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DisplayXMLSourcePane:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #doubleClick:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #DoubleClick:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy1!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #dummy1:arg2:arg3:arg4:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy1:arg2:arg3:arg4:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy10!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #dummy10:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy10:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy101!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #dummy11!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy11!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy12:p2:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy12:p2:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy13:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #dummy13:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy13:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy14!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy14!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy2!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #dummy2:arg2:arg3:arg4:arg5:arg6:arg7:arg8:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy2:arg2:arg3:arg4:arg5:arg6:arg7:arg8:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy20:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy20:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy3!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy3:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy4!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #dummy4:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy4:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy5!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #dummy5:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy5:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy6!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy6:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy7!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy7:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy8!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #dummy8:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy8:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #dummy9!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Dummy9:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #editDirectlyInCell:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #editDirectlyInCell:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableAnimations:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableAnimations:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableAutoComplete!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableAutoComplete:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableCancelKey:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableCancelKey:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableEvents!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableEvents:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableLargeOperationAlert!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableLargeOperationAlert:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableLivePreview!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableLivePreview:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableSound!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableSound:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableTipWizard:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #enableTipWizard:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #errorCheckingOptions!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #evaluate:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Evaluate:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #excel4IntlMacroSheets!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #excel4MacroSheets!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #executeExcel4Macro:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #ExecuteExcel4Macro:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #extendList!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #extendList:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #featureInstall!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #featureInstall:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fileConverters:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fileConverters:index2:lcid:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fileDialog:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fileExportConverters!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fileFind!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fileSearch!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #findFile:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #FindFile:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #findFormat!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fixedDecimal:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fixedDecimal:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fixedDecimalPlaces:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #fixedDecimalPlaces:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #formulaBarHeight!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #formulaBarHeight:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #generateGetPivotData!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #generateGetPivotData:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #generateTableRefs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #generateTableRefs:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #get__Default:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActiveCell:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActiveChart:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActiveDialog:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActiveEncryptionSession:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActiveMenuBar:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActivePrinter:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActiveSheet:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActiveWindow:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ActiveWorkbook:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AddIns:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AlertBeforeOverwriting:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AltStartupPath:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AlwaysUseClearType:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AnswerWizard:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Application:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ArbitraryXMLSupportAvailable:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AskToUpdateLinks:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Assistance:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Assistant:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AutoCorrect:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AutoFormatAsYouTypeReplaceHyperlinks:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AutomationSecurity:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AutoPercentEntry:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_AutoRecover:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Build:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CalculateBeforeSave:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Calculation:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CalculationInterruptKey:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CalculationState:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CalculationVersion:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Caller:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CanPlaySounds:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CanRecordSounds:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CellDragAndDrop:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Cells:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Charts:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ClipboardFormats:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ColorButtons:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Columns:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_COMAddIns:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CommandBars:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CommandUnderlines:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ConstrainNumeric:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ControlCharacters:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CopyObjectsWithCells:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Cursor:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CursorMovement:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CustomListCount:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_CutCopyMode:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DataEntryMode:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DDEAppReturnCode:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DecimalSeparator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DefaultFilePath:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DefaultSaveFormat:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DefaultSheetDirection:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DefaultWebOptions:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DeferAsyncQueries:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Dialogs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DialogSheets:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayAlerts:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayClipboardWindow:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayCommentIndicator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayDocumentActionTaskPane:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayDocumentInformationPanel:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayExcel4Menus:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayFormulaAutoComplete:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayFormulaBar:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayFullScreen:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayFunctionToolTips:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayInfoWindow:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayInsertOptions:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayNoteIndicator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayPasteOptions:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayRecentFiles:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayScrollBars:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_DisplayStatusBar:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Dummy101:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EditDirectlyInCell:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EnableAnimations:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EnableAutoComplete:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EnableCancelKey:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EnableEvents:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EnableLargeOperationAlert:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EnableLivePreview:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EnableSound:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_EnableTipWizard:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ErrorCheckingOptions:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Excel4IntlMacroSheets:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Excel4MacroSheets:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ExtendList:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FeatureInstall:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FileConverters:index2:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FileDialog:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FileExportConverters:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FileFind:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FileSearch:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FindFormat:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FixedDecimal:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FixedDecimalPlaces:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_FormulaBarHeight:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_GenerateGetPivotData:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_GenerateTableRefs:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Height:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_HighQualityModeForGraphics:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Hinstance:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Hwnd:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_IgnoreRemoteRequests:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Interactive:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_International:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Iteration:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_LanguageSettings:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_LargeButtons:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_LargeOperationCellThousandCount:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Left:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_LibraryPath:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MailSession:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MailSystem:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MapPaperSize:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MathCoprocessorAvailable:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MaxChange:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MaxIterations:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MeasurementUnit:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MemoryFree:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MemoryTotal:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MemoryUsed:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MenuBars:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Modules:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MouseAvailable:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MoveAfterReturn:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MoveAfterReturnDirection:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_MultiThreadedCalculation:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Name:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Names:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_NetworkTemplatesPath:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_NewWorkbook:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ODBCErrors:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ODBCTimeout:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OLEDBErrors:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OnCalculate:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OnData:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OnDoubleClick:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OnEntry:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OnWindow:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OperatingSystem:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_OrganizationName:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Path:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_PathSeparator:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_PivotTableSelection:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_PreviousSelections:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ProductCode:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_PromptForSummaryInfo:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Range:cell2:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Ready:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_RecentFiles:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_RecordRelative:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ReferenceStyle:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_RegisteredFunctions:index2:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ReplaceFormat:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_RollZoom:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Rows:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_RTD:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ScreenUpdating:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Selection:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Sheets:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_SheetsInNewWorkbook:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShortcutMenus:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShowChartTipNames:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShowChartTipValues:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShowDevTools:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShowMenuFloaties:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShowSelectionFloaties:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShowStartupDialog:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShowToolTips:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ShowWindowsInTaskbar:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_SmartTagRecognizers:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Speech:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_SpellingOptions:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_StandardFont:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_StandardFontSize:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_StartupPath:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_StatusBar:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_TemplatesPath:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ThisCell:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ThisWorkbook:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_ThousandsSeparator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Toolbars:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Top:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_TransitionMenuKey:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_TransitionMenuKeyAction:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_TransitionNavigKeys:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_UILanguage:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_UsableHeight:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_UsableWidth:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_UsedObjects:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_UserControl:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_UserLibraryPath:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_UserName:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_UseSystemSeparators:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Value:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_VBE:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Version:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Visible:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_WarnOnFunctionNameConflict:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Watches:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Width:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Windows:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_WindowsForPens:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_WindowState:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Workbooks:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_WorksheetFunction:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #get_Worksheets:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #getCustomListContents:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #GetCustomListContents:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #getCustomListNum:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #GetCustomListNum:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #getOpenFilename:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #getOpenFilename:filterIndex:title:buttonText:multiSelect:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #GetOpenFilename:filterIndex:title:buttonText:multiSelect:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #getPhonetic!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #getPhonetic:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #GetPhonetic:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #getSaveAsFilename:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #getSaveAsFilename:fileFilter:filterIndex:title:buttonText:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #GetSaveAsFilename:fileFilter:filterIndex:title:buttonText:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #goto:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #goto:scroll:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Goto:scroll:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #height:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #height:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #help:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #help:helpContextID:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Help:helpContextID:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #highQualityModeForGraphics!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #highQualityModeForGraphics:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #hinstance!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #hwnd!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #ignoreRemoteRequests:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #ignoreRemoteRequests:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #inchesToPoints:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #InchesToPoints:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #inputBox:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #inputBox:title:default:left:top:helpFile:helpContextID:type:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #InputBox:title:default:left:top:helpFile:helpContextID:type:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #interactive:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #interactive:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #international:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #international:lcid:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #intersect:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Intersect:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #intersect:arg2:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #iteration:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #iteration:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #languageSettings!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #largeButtons!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #largeButtons:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #largeOperationCellThousandCount!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #largeOperationCellThousandCount:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #left:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #left:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #libraryPath:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #macroOptions:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #macroOptions:description:hasMenu:menuText:hasShortcutKey:shortcutKey:category:statusBar:helpContextID:helpFile:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #MacroOptions:description:hasMenu:menuText:hasShortcutKey:shortcutKey:category:statusBar:helpContextID:helpFile:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #mailLogoff:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #MailLogoff:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #mailLogon:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #mailLogon:password:downloadNewMail:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #MailLogon:password:downloadNewMail:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #mailSession:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #mailSystem:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #mapPaperSize!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #mapPaperSize:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #mathCoprocessorAvailable:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #maxChange:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #maxChange:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #maxIterations:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #maxIterations:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #measurementUnit!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #measurementUnit:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #memoryFree:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #memoryTotal:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #memoryUsed:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #menuBars!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #modules!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #mouseAvailable:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #moveAfterReturn:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #moveAfterReturn:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #moveAfterReturnDirection:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #moveAfterReturnDirection:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #multiThreadedCalculation!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #name!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #names!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #networkTemplatesPath:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #newWorkbook!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #nextLetter:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #NextLetter:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #odbcErrors!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #odbcTimeout!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #odbcTimeout:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #oledbErrors!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onCalculate:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onCalculate:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onData:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onData:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onDoubleClick:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onDoubleClick:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onEntry:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onEntry:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onKey:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #onKey:procedure:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #OnKey:procedure:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #onRepeat:procedure:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #OnRepeat:procedure:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #onSheetActivate:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onSheetActivate:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onSheetDeactivate:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onSheetDeactivate:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onTime:procedure:latestTime:schedule:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #OnTime:procedure:latestTime:schedule:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #onTime:procedure:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #onUndo:procedure:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #OnUndo:procedure:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #onWindow:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #onWindow:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #operatingSystem:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #organizationName:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #path:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #pathSeparator:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #pivotTableSelection!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #pivotTableSelection:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #previousSelections:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #previousSelections:lcid:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #productCode!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #promptForSummaryInfo:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #promptForSummaryInfo:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #put_ActivePrinter:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_AlertBeforeOverwriting:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_AltStartupPath:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_AlwaysUseClearType:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_AskToUpdateLinks:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_AutoFormatAsYouTypeReplaceHyperlinks:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_AutomationSecurity:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_AutoPercentEntry:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_CalculateBeforeSave:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Calculation:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_CalculationInterruptKey:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_CellDragAndDrop:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ColorButtons:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_CommandUnderlines:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ConstrainNumeric:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ControlCharacters:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_CopyObjectsWithCells:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Cursor:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_CursorMovement:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_CutCopyMode:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DataEntryMode:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DecimalSeparator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DefaultFilePath:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DefaultSaveFormat:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DefaultSheetDirection:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DeferAsyncQueries:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayAlerts:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayClipboardWindow:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayCommentIndicator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayDocumentActionTaskPane:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayDocumentInformationPanel:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayExcel4Menus:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayFormulaAutoComplete:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayFormulaBar:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayFullScreen:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayFunctionToolTips:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayInfoWindow:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayInsertOptions:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayNoteIndicator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayPasteOptions:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayRecentFiles:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayScrollBars:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_DisplayStatusBar:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EditDirectlyInCell:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EnableAnimations:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EnableAutoComplete:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EnableCancelKey:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EnableEvents:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EnableLargeOperationAlert:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EnableLivePreview:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EnableSound:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_EnableTipWizard:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ExtendList:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_FeatureInstall:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_FixedDecimal:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_FixedDecimalPlaces:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_FormulaBarHeight:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_GenerateGetPivotData:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_GenerateTableRefs:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Height:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_HighQualityModeForGraphics:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_IgnoreRemoteRequests:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Interactive:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Iteration:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_LargeButtons:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_LargeOperationCellThousandCount:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Left:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_MapPaperSize:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_MaxChange:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_MaxIterations:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_MeasurementUnit:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_MoveAfterReturn:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_MoveAfterReturnDirection:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ODBCTimeout:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_OnCalculate:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_OnData:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_OnDoubleClick:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_OnEntry:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_OnWindow:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_PivotTableSelection:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_PromptForSummaryInfo:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ReferenceStyle:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_RollZoom:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ScreenUpdating:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_SheetsInNewWorkbook:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ShowChartTipNames:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ShowChartTipValues:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ShowDevTools:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ShowMenuFloaties:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ShowSelectionFloaties:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ShowStartupDialog:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ShowToolTips:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ShowWindowsInTaskbar:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_StandardFont:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_StandardFontSize:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_StatusBar:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_ThousandsSeparator:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Top:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_TransitionMenuKey:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_TransitionMenuKeyAction:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_TransitionNavigKeys:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_UILanguage:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_UserControl:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_UserName:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_UseSystemSeparators:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Visible:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_WarnOnFunctionNameConflict:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_Width:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #put_WindowState:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #putref_FindFormat:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #putref_ReplaceFormat:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #quit!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Quit!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #range:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #range:cell2:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #ready!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #recentFiles!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #recordMacro:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #recordMacro:xlmCode:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #RecordMacro:xlmCode:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #recordRelative:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #referenceStyle:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #referenceStyle:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #registeredFunctions:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #registeredFunctions:index2:lcid:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #registerXLL:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #RegisterXLL:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #repeat:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Repeat:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #replaceFormat!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #resetTipWizard:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #ResetTipWizard:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #rollZoom!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #rollZoom:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #rows!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #rtd!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #run!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #run:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Run:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #save:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #save:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Save:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #saveWorkspace:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #saveWorkspace:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #SaveWorkspace:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #screenUpdating:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #screenUpdating:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #selection:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #sendKeys:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #sendKeys:wait:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #SendKeys:wait:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #setDefaultChart!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #setDefaultChart:gallery:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #SetDefaultChart:gallery:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #setFindFormat:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #setReplaceFormat:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #sharePointVersion:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #SharePointVersion:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #sheets!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #sheetsInNewWorkbook:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #sheetsInNewWorkbook:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #shortcutMenus:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showChartTipNames!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showChartTipNames:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showChartTipValues!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showChartTipValues:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showDevTools!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showDevTools:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showMenuFloaties!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showMenuFloaties:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showSelectionFloaties!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showSelectionFloaties:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showStartupDialog!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showStartupDialog:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showToolTips!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showToolTips:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showWindowsInTaskbar!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #showWindowsInTaskbar:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #smartTagRecognizers!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #speech!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #spellingOptions!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #standardFont:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #standardFont:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #standardFontSize:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #standardFontSize:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #startupPath:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #statusBar:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #statusBar:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #support:id:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #support:id:arg:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Support:id:arg:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #templatesPath:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #thisCell!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #thisWorkbook:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #thousandsSeparator!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #thousandsSeparator:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #toolbars!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #top:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #top:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #transitionMenuKey:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #transitionMenuKey:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #transitionMenuKeyAction:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #transitionMenuKeyAction:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #transitionNavigKeys:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #transitionNavigKeys:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #uiLanguage:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #uiLanguage:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #undo:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Undo:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #union:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Union:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #union:arg2:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #usableHeight:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #usableWidth:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #usedObjects!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #userControl!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #userControl:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #userLibraryPath!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #userName:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #userName:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #useSystemSeparators!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #useSystemSeparators:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #value!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #vbe!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #version:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #visible:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #visible:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #volatile:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #volatile:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Volatile:lcid:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #wait:lcid:!**auto generated**!methods!public! !
!Excel_Application categoriesFor: #Wait:lcid:rhs:!**auto generated**!COM Interfaces-_Application!private! !
!Excel_Application categoriesFor: #warnOnFunctionNameConflict!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #warnOnFunctionNameConflict:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #watches!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #width:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #width:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #windows!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #windowsForPens:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #windowState:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #windowState:rhs:!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #workbooks!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #worksheetFunction!**auto generated**!properties!public! !
!Excel_Application categoriesFor: #worksheets!**auto generated**!properties!public! !

!Excel_Application class methodsFor!

clsid
	"Private - Answer the CLSID of the coclass (Application) for which the receiver is the default interface."

	^CLSID fromString: '{00024500-0000-0000-C000-000000000046}'
!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel._Application'
		Excel_Application defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_ActiveCell:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_ActiveChart:
			argumentTypes: 'Excel_Chart**';
		defineFunction: #get_ActiveDialog:
			argumentTypes: 'ExcelDialogSheet**';
		defineFunction: #get_ActiveMenuBar:
			argumentTypes: 'ExcelMenuBar**';
		defineFunction: #get_ActivePrinter:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_ActivePrinter:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_ActiveSheet:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_ActiveWindow:
			argumentTypes: 'ExcelWindow**';
		defineFunction: #get_ActiveWorkbook:
			argumentTypes: 'Excel_Workbook**';
		defineFunction: #get_AddIns:
			argumentTypes: 'ExcelAddIns**';
		defineFunction: #get_Assistant:
			argumentTypes: 'OfficeAssistant**';
		defineFunction: #Calculate:
			argumentTypes: 'sdword';
		defineFunction: #get_Cells:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Charts:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_Columns:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_CommandBars:
			argumentTypes: 'Office_CommandBars**';
		defineFunction: #get_DDEAppReturnCode:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #DDEExecute:string:lcid:
			argumentTypes: 'sdword bstr sdword';
		defineFunction: #DDEInitiate:topic:lcid:rhs:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #DDEPoke:item:data:lcid:
			argumentTypes: 'sdword variant variant sdword';
		defineFunction: #DDERequest:item:lcid:rhs:
			argumentTypes: 'sdword bstr sdword variant*';
		defineFunction: #DDETerminate:lcid:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_DialogSheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #Evaluate:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #_Evaluate:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #ExecuteExcel4Macro:lcid:rhs:
			argumentTypes: 'bstr sdword variant*';
		defineFunction: #Intersect:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:
			argumentTypes: 'ExcelRange* ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword ExcelRange**';
		defineFunction: #get_MenuBars:
			argumentTypes: 'ExcelMenuBars**';
		defineFunction: #get_Modules:
			argumentTypes: 'ExcelModules**';
		defineFunction: #get_Names:
			argumentTypes: 'ExcelNames**';
		defineFunction: #get_Range:cell2:rhs:
			argumentTypes: 'variant variant ExcelRange**';
		defineFunction: #get_Rows:
			argumentTypes: 'ExcelRange**';
		defineFunction: #Run:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #_Run2:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword variant*';
		defineFunction: #get_Selection:rhs:
			argumentTypes: 'sdword IDispatch**';
		defineFunction: #SendKeys:wait:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get_Sheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_ShortcutMenus:rhs:
			argumentTypes: 'sdword ExcelMenu**';
		defineFunction: #get_ThisWorkbook:rhs:
			argumentTypes: 'sdword Excel_Workbook**';
		defineFunction: #get_Toolbars:
			argumentTypes: 'ExcelToolbars**';
		defineFunction: #Union:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:
			argumentTypes: 'ExcelRange* ExcelRange* variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword ExcelRange**';
		defineFunction: #get_Windows:
			argumentTypes: 'ExcelWindows**';
		defineFunction: #get_Workbooks:
			argumentTypes: 'ExcelWorkbooks**';
		defineFunction: #get_WorksheetFunction:
			argumentTypes: 'ExcelWorksheetFunction**';
		defineFunction: #get_Worksheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_Excel4IntlMacroSheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_Excel4MacroSheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #ActivateMicrosoftApp:lcid:
			argumentTypes: 'sdword sdword';
		defineFunction: #AddChartAutoFormat:name:description:lcid:
			argumentTypes: 'variant bstr variant sdword';
		defineFunction: #AddCustomList:byRow:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get_AlertBeforeOverwriting:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_AlertBeforeOverwriting:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_AltStartupPath:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_AltStartupPath:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_AskToUpdateLinks:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_AskToUpdateLinks:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_EnableAnimations:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_EnableAnimations:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_AutoCorrect:
			argumentTypes: 'ExcelAutoCorrect**';
		defineFunction: #get_Build:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #get_CalculateBeforeSave:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_CalculateBeforeSave:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_Calculation:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_Calculation:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_Caller:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #get_CanPlaySounds:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_CanRecordSounds:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_CellDragAndDrop:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_CellDragAndDrop:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #CentimetersToPoints:lcid:rhs:
			argumentTypes: 'double sdword double*';
		defineFunction: #CheckSpelling:customDictionary:ignoreUppercase:lcid:rhs:
			argumentTypes: 'bstr variant variant sdword varbool*';
		defineFunction: #get_ClipboardFormats:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #get_DisplayClipboardWindow:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayClipboardWindow:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_ColorButtons:
			argumentTypes: 'varbool*';
		defineFunction: #put_ColorButtons:
			argumentTypes: 'varbool';
		defineFunction: #get_CommandUnderlines:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_CommandUnderlines:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_ConstrainNumeric:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_ConstrainNumeric:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #ConvertFormula:fromReferenceStyle:toReferenceStyle:toAbsolute:relativeTo:lcid:rhs:
			argumentTypes: 'variant sdword variant variant variant sdword variant*';
		defineFunction: #get_CopyObjectsWithCells:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_CopyObjectsWithCells:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_Cursor:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_Cursor:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_CustomListCount:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #get_CutCopyMode:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_CutCopyMode:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_DataEntryMode:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_DataEntryMode:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #Dummy1:arg2:arg3:arg4:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #Dummy2:arg2:arg3:arg4:arg5:arg6:arg7:arg8:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant*';
		defineFunction: #Dummy3:
			argumentTypes: 'variant*';
		defineFunction: #Dummy4:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #Dummy5:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #Dummy6:
			argumentTypes: 'variant*';
		defineFunction: #Dummy7:
			argumentTypes: 'variant*';
		defineFunction: #Dummy8:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #Dummy9:
			argumentTypes: 'variant*';
		defineFunction: #Dummy10:rhs:
			argumentTypes: 'variant varbool*';
		defineFunction: #Dummy11;
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_DefaultFilePath:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_DefaultFilePath:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #DeleteChartAutoFormat:lcid:
			argumentTypes: 'bstr sdword';
		defineFunction: #DeleteCustomList:lcid:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_Dialogs:
			argumentTypes: 'ExcelDialogs**';
		defineFunction: #get_DisplayAlerts:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayAlerts:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_DisplayFormulaBar:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayFormulaBar:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_DisplayFullScreen:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayFullScreen:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_DisplayNoteIndicator:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayNoteIndicator:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayCommentIndicator:
			argumentTypes: 'sdword*';
		defineFunction: #put_DisplayCommentIndicator:
			argumentTypes: 'sdword';
		defineFunction: #get_DisplayExcel4Menus:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayExcel4Menus:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_DisplayRecentFiles:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayRecentFiles:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayScrollBars:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayScrollBars:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_DisplayStatusBar:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayStatusBar:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #DoubleClick:
			argumentTypes: 'sdword';
		defineFunction: #get_EditDirectlyInCell:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_EditDirectlyInCell:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_EnableAutoComplete:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableAutoComplete:
			argumentTypes: 'varbool';
		defineFunction: #get_EnableCancelKey:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_EnableCancelKey:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_EnableSound:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableSound:
			argumentTypes: 'varbool';
		defineFunction: #get_EnableTipWizard:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_EnableTipWizard:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_FileConverters:index2:lcid:rhs:
			argumentTypes: 'variant variant sdword variant*';
		defineFunction: #get_FileSearch:
			argumentTypes: 'OfficeFileSearch**';
		defineFunction: #get_FileFind:
			argumentTypes: 'OfficeIFind**';
		defineFunction: #_FindFile:
			argumentTypes: 'sdword';
		defineFunction: #get_FixedDecimal:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_FixedDecimal:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_FixedDecimalPlaces:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_FixedDecimalPlaces:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #GetCustomListContents:lcid:rhs:
			argumentTypes: 'sdword sdword variant*';
		defineFunction: #GetCustomListNum:lcid:rhs:
			argumentTypes: 'variant sdword sdword*';
		defineFunction: #GetOpenFilename:filterIndex:title:buttonText:multiSelect:lcid:rhs:
			argumentTypes: 'variant variant variant variant variant sdword variant*';
		defineFunction: #GetSaveAsFilename:fileFilter:filterIndex:title:buttonText:lcid:rhs:
			argumentTypes: 'variant variant variant variant variant sdword variant*';
		defineFunction: #Goto:scroll:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get_Height:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #put_Height:rhs:
			argumentTypes: 'sdword double';
		defineFunction: #Help:helpContextID:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get_IgnoreRemoteRequests:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_IgnoreRemoteRequests:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #InchesToPoints:lcid:rhs:
			argumentTypes: 'double sdword double*';
		defineFunction: #InputBox:title:default:left:top:helpFile:helpContextID:type:lcid:rhs:
			argumentTypes: 'bstr variant variant variant variant variant variant variant sdword variant*';
		defineFunction: #get_Interactive:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_Interactive:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_International:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #get_Iteration:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_Iteration:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_LargeButtons:
			argumentTypes: 'varbool*';
		defineFunction: #put_LargeButtons:
			argumentTypes: 'varbool';
		defineFunction: #get_Left:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #put_Left:rhs:
			argumentTypes: 'sdword double';
		defineFunction: #get_LibraryPath:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #MacroOptions:description:hasMenu:menuText:hasShortcutKey:shortcutKey:category:statusBar:helpContextID:helpFile:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #MailLogoff:
			argumentTypes: 'sdword';
		defineFunction: #MailLogon:password:downloadNewMail:lcid:
			argumentTypes: 'variant variant variant sdword';
		defineFunction: #get_MailSession:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #get_MailSystem:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #get_MathCoprocessorAvailable:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_MaxChange:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #put_MaxChange:rhs:
			argumentTypes: 'sdword double';
		defineFunction: #get_MaxIterations:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_MaxIterations:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_MemoryFree:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #get_MemoryTotal:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #get_MemoryUsed:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #get_MouseAvailable:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_MoveAfterReturn:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_MoveAfterReturn:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_MoveAfterReturnDirection:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_MoveAfterReturnDirection:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_RecentFiles:
			argumentTypes: 'ExcelRecentFiles**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #NextLetter:rhs:
			argumentTypes: 'sdword Excel_Workbook**';
		defineFunction: #get_NetworkTemplatesPath:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_ODBCErrors:
			argumentTypes: 'ExcelODBCErrors**';
		defineFunction: #get_ODBCTimeout:
			argumentTypes: 'sdword*';
		defineFunction: #put_ODBCTimeout:
			argumentTypes: 'sdword';
		defineFunction: #get_OnCalculate:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnCalculate:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnData:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnData:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnDoubleClick:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnDoubleClick:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnEntry:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnEntry:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #OnKey:procedure:lcid:
			argumentTypes: 'bstr variant sdword';
		defineFunction: #OnRepeat:procedure:lcid:
			argumentTypes: 'bstr bstr sdword';
		defineFunction: #get_OnSheetActivate:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnSheetActivate:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnSheetDeactivate:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnSheetDeactivate:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #OnTime:procedure:latestTime:schedule:lcid:
			argumentTypes: 'variant bstr variant variant sdword';
		defineFunction: #OnUndo:procedure:lcid:
			argumentTypes: 'bstr bstr sdword';
		defineFunction: #get_OnWindow:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnWindow:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OperatingSystem:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_OrganizationName:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_Path:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_PathSeparator:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_PreviousSelections:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #get_PivotTableSelection:
			argumentTypes: 'varbool*';
		defineFunction: #put_PivotTableSelection:
			argumentTypes: 'varbool';
		defineFunction: #get_PromptForSummaryInfo:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_PromptForSummaryInfo:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #Quit;
		defineFunction: #RecordMacro:xlmCode:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get_RecordRelative:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_ReferenceStyle:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_ReferenceStyle:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_RegisteredFunctions:index2:lcid:rhs:
			argumentTypes: 'variant variant sdword variant*';
		defineFunction: #RegisterXLL:lcid:rhs:
			argumentTypes: 'bstr sdword varbool*';
		defineFunction: #Repeat:
			argumentTypes: 'sdword';
		defineFunction: #ResetTipWizard:
			argumentTypes: 'sdword';
		defineFunction: #get_RollZoom:
			argumentTypes: 'varbool*';
		defineFunction: #put_RollZoom:
			argumentTypes: 'varbool';
		defineFunction: #Save:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #SaveWorkspace:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #get_ScreenUpdating:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_ScreenUpdating:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #SetDefaultChart:gallery:
			argumentTypes: 'variant variant';
		defineFunction: #get_SheetsInNewWorkbook:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_SheetsInNewWorkbook:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_ShowChartTipNames:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowChartTipNames:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowChartTipValues:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowChartTipValues:
			argumentTypes: 'varbool';
		defineFunction: #get_StandardFont:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_StandardFont:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_StandardFontSize:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #put_StandardFontSize:rhs:
			argumentTypes: 'sdword double';
		defineFunction: #get_StartupPath:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_StatusBar:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_StatusBar:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get_TemplatesPath:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_ShowToolTips:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowToolTips:
			argumentTypes: 'varbool';
		defineFunction: #get_Top:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #put_Top:rhs:
			argumentTypes: 'sdword double';
		defineFunction: #get_DefaultSaveFormat:
			argumentTypes: 'sdword*';
		defineFunction: #put_DefaultSaveFormat:
			argumentTypes: 'sdword';
		defineFunction: #get_TransitionMenuKey:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_TransitionMenuKey:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_TransitionMenuKeyAction:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_TransitionMenuKeyAction:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_TransitionNavigKeys:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_TransitionNavigKeys:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #Undo:
			argumentTypes: 'sdword';
		defineFunction: #get_UsableHeight:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #get_UsableWidth:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #get_UserControl:
			argumentTypes: 'varbool*';
		defineFunction: #put_UserControl:
			argumentTypes: 'varbool';
		defineFunction: #get_UserName:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_UserName:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #get_VBE:
			argumentTypes: 'VBIDEVBE**';
		defineFunction: #get_Version:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_Visible:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_Visible:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #Volatile:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #_Wait:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #get_Width:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #put_Width:rhs:
			argumentTypes: 'sdword double';
		defineFunction: #get_WindowsForPens:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_WindowState:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_WindowState:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_UILanguage:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_UILanguage:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_DefaultSheetDirection:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_DefaultSheetDirection:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_CursorMovement:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_CursorMovement:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_ControlCharacters:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_ControlCharacters:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #_WSFunction:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword variant*';
		defineFunction: #get_EnableEvents:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableEvents:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayInfoWindow:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayInfoWindow:
			argumentTypes: 'varbool';
		defineFunction: #Wait:lcid:rhs:
			argumentTypes: 'variant sdword varbool*';
		defineFunction: #get_ExtendList:
			argumentTypes: 'varbool*';
		defineFunction: #put_ExtendList:
			argumentTypes: 'varbool';
		defineFunction: #get_OLEDBErrors:
			argumentTypes: 'ExcelOLEDBErrors**';
		defineFunction: #GetPhonetic:rhs:
			argumentTypes: 'variant bstr*';
		defineFunction: #get_COMAddIns:
			argumentTypes: 'OfficeCOMAddIns**';
		defineFunction: #get_DefaultWebOptions:
			argumentTypes: 'ExcelDefaultWebOptions**';
		defineFunction: #get_ProductCode:
			argumentTypes: 'bstr*';
		defineFunction: #get_UserLibraryPath:
			argumentTypes: 'bstr*';
		defineFunction: #get_AutoPercentEntry:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoPercentEntry:
			argumentTypes: 'varbool';
		defineFunction: #get_LanguageSettings:
			argumentTypes: 'OfficeLanguageSettings**';
		defineFunction: #get_Dummy101:
			argumentTypes: 'IDispatch**';
		defineFunction: #Dummy12:p2:
			argumentTypes: 'ExcelPivotTable* ExcelPivotTable*';
		defineFunction: #get_AnswerWizard:
			argumentTypes: 'OfficeAnswerWizard**';
		defineFunction: #CalculateFull;
		defineFunction: #FindFile:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_CalculationVersion:
			argumentTypes: 'sdword*';
		defineFunction: #get_ShowWindowsInTaskbar:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowWindowsInTaskbar:
			argumentTypes: 'varbool';
		defineFunction: #get_FeatureInstall:
			argumentTypes: 'sdword*';
		defineFunction: #put_FeatureInstall:
			argumentTypes: 'sdword';
		defineFunction: #get_Ready:
			argumentTypes: 'varbool*';
		defineFunction: #Dummy13:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #get_FindFormat:
			argumentTypes: 'ExcelCellFormat**';
		defineFunction: #putref_FindFormat:
			argumentTypes: 'ExcelCellFormat*';
		defineFunction: #get_ReplaceFormat:
			argumentTypes: 'ExcelCellFormat**';
		defineFunction: #putref_ReplaceFormat:
			argumentTypes: 'ExcelCellFormat*';
		defineFunction: #get_UsedObjects:
			argumentTypes: 'ExcelUsedObjects**';
		defineFunction: #get_CalculationState:
			argumentTypes: 'sdword*';
		defineFunction: #get_CalculationInterruptKey:
			argumentTypes: 'sdword*';
		defineFunction: #put_CalculationInterruptKey:
			argumentTypes: 'sdword';
		defineFunction: #get_Watches:
			argumentTypes: 'ExcelWatches**';
		defineFunction: #get_DisplayFunctionToolTips:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayFunctionToolTips:
			argumentTypes: 'varbool';
		defineFunction: #get_AutomationSecurity:
			argumentTypes: 'sdword*';
		defineFunction: #put_AutomationSecurity:
			argumentTypes: 'sdword';
		defineFunction: #get_FileDialog:rhs:
			argumentTypes: 'sdword OfficeFileDialog**';
		defineFunction: #Dummy14;
		defineFunction: #CalculateFullRebuild;
		defineFunction: #get_DisplayPasteOptions:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayPasteOptions:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayInsertOptions:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayInsertOptions:
			argumentTypes: 'varbool';
		defineFunction: #get_GenerateGetPivotData:
			argumentTypes: 'varbool*';
		defineFunction: #put_GenerateGetPivotData:
			argumentTypes: 'varbool';
		defineFunction: #get_AutoRecover:
			argumentTypes: 'ExcelAutoRecover**';
		defineFunction: #get_Hwnd:
			argumentTypes: 'sdword*';
		defineFunction: #get_Hinstance:
			argumentTypes: 'sdword*';
		defineFunction: #CheckAbort:
			argumentTypes: 'variant';
		defineFunction: #get_ErrorCheckingOptions:
			argumentTypes: 'ExcelErrorCheckingOptions**';
		defineFunction: #get_AutoFormatAsYouTypeReplaceHyperlinks:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoFormatAsYouTypeReplaceHyperlinks:
			argumentTypes: 'varbool';
		defineFunction: #get_SmartTagRecognizers:
			argumentTypes: 'ExcelSmartTagRecognizers**';
		defineFunction: #get_NewWorkbook:
			argumentTypes: 'OfficeNewFile**';
		defineFunction: #get_SpellingOptions:
			argumentTypes: 'ExcelSpellingOptions**';
		defineFunction: #get_Speech:
			argumentTypes: 'ExcelSpeech**';
		defineFunction: #get_MapPaperSize:
			argumentTypes: 'varbool*';
		defineFunction: #put_MapPaperSize:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowStartupDialog:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowStartupDialog:
			argumentTypes: 'varbool';
		defineFunction: #get_DecimalSeparator:
			argumentTypes: 'bstr*';
		defineFunction: #put_DecimalSeparator:
			argumentTypes: 'bstr';
		defineFunction: #get_ThousandsSeparator:
			argumentTypes: 'bstr*';
		defineFunction: #put_ThousandsSeparator:
			argumentTypes: 'bstr';
		defineFunction: #get_UseSystemSeparators:
			argumentTypes: 'varbool*';
		defineFunction: #put_UseSystemSeparators:
			argumentTypes: 'varbool';
		defineFunction: #get_ThisCell:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_RTD:
			argumentTypes: 'ExcelRTD**';
		defineFunction: #get_DisplayDocumentActionTaskPane:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayDocumentActionTaskPane:
			argumentTypes: 'varbool';
		defineFunction: #DisplayXMLSourcePane:
			argumentTypes: 'variant';
		defineFunction: #get_ArbitraryXMLSupportAvailable:
			argumentTypes: 'varbool*';
		defineFunction: #Support:id:arg:rhs:
			argumentTypes: 'IDispatch* sdword variant variant*';
		defineFunction: #Dummy20:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #get_MeasurementUnit:
			argumentTypes: 'sdword*';
		defineFunction: #put_MeasurementUnit:
			argumentTypes: 'sdword';
		defineFunction: #get_ShowSelectionFloaties:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowSelectionFloaties:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowMenuFloaties:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowMenuFloaties:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowDevTools:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowDevTools:
			argumentTypes: 'varbool';
		defineFunction: #get_EnableLivePreview:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableLivePreview:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayDocumentInformationPanel:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayDocumentInformationPanel:
			argumentTypes: 'varbool';
		defineFunction: #get_AlwaysUseClearType:
			argumentTypes: 'varbool*';
		defineFunction: #put_AlwaysUseClearType:
			argumentTypes: 'varbool';
		defineFunction: #get_WarnOnFunctionNameConflict:
			argumentTypes: 'varbool*';
		defineFunction: #put_WarnOnFunctionNameConflict:
			argumentTypes: 'varbool';
		defineFunction: #get_FormulaBarHeight:
			argumentTypes: 'sdword*';
		defineFunction: #put_FormulaBarHeight:
			argumentTypes: 'sdword';
		defineFunction: #get_DisplayFormulaAutoComplete:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayFormulaAutoComplete:
			argumentTypes: 'varbool';
		defineFunction: #get_GenerateTableRefs:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_GenerateTableRefs:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_Assistance:
			argumentTypes: 'OfficeIAssistance**';
		defineFunction: #CalculateUntilAsyncQueriesDone;
		defineFunction: #get_EnableLargeOperationAlert:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableLargeOperationAlert:
			argumentTypes: 'varbool';
		defineFunction: #get_LargeOperationCellThousandCount:
			argumentTypes: 'sdword*';
		defineFunction: #put_LargeOperationCellThousandCount:
			argumentTypes: 'sdword';
		defineFunction: #get_DeferAsyncQueries:
			argumentTypes: 'varbool*';
		defineFunction: #put_DeferAsyncQueries:
			argumentTypes: 'varbool';
		defineFunction: #get_MultiThreadedCalculation:
			argumentTypes: 'ExcelMultiThreadedCalculation**';
		defineFunction: #SharePointVersion:rhs:
			argumentTypes: 'bstr sdword*';
		defineFunction: #get_ActiveEncryptionSession:
			argumentTypes: 'sdword*';
		defineFunction: #get_HighQualityModeForGraphics:
			argumentTypes: 'varbool*';
		defineFunction: #put_HighQualityModeForGraphics:
			argumentTypes: 'varbool';
		defineFunction: #get_FileExportConverters:
			argumentTypes: 'ExcelFileExportConverters**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_Application initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_Application class categoriesFor: #clsid!**auto generated**!constants!private! !
!Excel_Application class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!Excel_Application class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

