"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_Worksheet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_Worksheet guid: (IID fromString: '{000208D8-0000-0000-C000-000000000046}')!
Excel_Worksheet comment: '<Excel_Worksheet> is a wrapper class for the COM interface ''Excel._Worksheet'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208D8-0000-0000-C000-000000000046), 
	helpcontext(0x00020010), 
	nonextensible, 
	dual
]
interface _Worksheet : IDispatch
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
		[in]long lcid);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[in, optional]VARIANT Before,
		[in, optional]VARIANT After,
		[in]long lcid);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[in]long lcid);
	[id(0x0000055d), propget, helpcontext(0x0001055d)]
	HRESULT __stdcall CodeName(
		[out, retval]BSTR* RHS);
	[id(0x80010000), propget, helpcontext(0x80020000)]
	HRESULT __stdcall _CodeName(
		[out, retval]BSTR* RHS);
	[id(0x80010000), propput, helpcontext(0x80020000)]
	HRESULT __stdcall _CodeName(
		[in]BSTR RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x0000027d), helpcontext(0x0001027d)]
	HRESULT __stdcall Move(
		[in, optional]VARIANT Before,
		[in, optional]VARIANT After,
		[in]long lcid);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000001f6), propget, helpcontext(0x000101f6)]
	HRESULT __stdcall Next(
		[out, retval]IDispatch** RHS);
	[id(0x00000274), hidden, propget, helpcontext(0x00010274)]
	HRESULT __stdcall OnDoubleClick(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000274), hidden, propput, helpcontext(0x00010274)]
	HRESULT __stdcall OnDoubleClick(
		[in]long lcid,
		[in]BSTR RHS);
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
	[id(0x000003e6), propget, helpcontext(0x000103e6)]
	HRESULT __stdcall PageSetup(
		[out, retval]PageSetup** RHS);
	[id(0x000001f7), propget, helpcontext(0x000101f7)]
	HRESULT __stdcall Previous(
		[out, retval]IDispatch** RHS);
	[id(0x00000389), hidden, helpcontext(0x00010389)]
	HRESULT __stdcall __PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate,
		[in]long lcid);
	[id(0x00000119), helpcontext(0x00010119)]
	HRESULT __stdcall PrintPreview(
		[in, optional]VARIANT EnableChanges,
		[in]long lcid);
	[id(0x0000011a), hidden, helpcontext(0x0001011a)]
	HRESULT __stdcall _Protect(
		[in, optional]VARIANT Password,
		[in, optional]VARIANT DrawingObjects,
		[in, optional]VARIANT Contents,
		[in, optional]VARIANT Scenarios,
		[in, optional]VARIANT UserInterfaceOnly,
		[in]long lcid);
	[id(0x00000124), propget, helpcontext(0x00010124)]
	HRESULT __stdcall ProtectContents(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000125), propget, helpcontext(0x00010125)]
	HRESULT __stdcall ProtectDrawingObjects(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000487), propget, helpcontext(0x00010487)]
	HRESULT __stdcall ProtectionMode(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000126), propget, helpcontext(0x00010126)]
	HRESULT __stdcall ProtectScenarios(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000011c), hidden, helpcontext(0x0001011c)]
	HRESULT __stdcall _SaveAs(
		[in]BSTR Filename,
		[in, optional]VARIANT FileFormat,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT WriteResPassword,
		[in, optional]VARIANT ReadOnlyRecommended,
		[in, optional]VARIANT CreateBackup,
		[in, optional]VARIANT AddToMru,
		[in, optional]VARIANT TextCodepage,
		[in, optional]VARIANT TextVisualLayout,
		[in]long lcid);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[in, optional]VARIANT Replace,
		[in]long lcid);
	[id(0x0000011d), helpcontext(0x0001011d)]
	HRESULT __stdcall Unprotect(
		[in, optional]VARIANT Password,
		[in]long lcid);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]long lcid,
		[out, retval]XlSheetVisibility* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]long lcid,
		[in]XlSheetVisibility RHS);
	[id(0x00000561), propget, helpcontext(0x00010561)]
	HRESULT __stdcall Shapes(
		[out, retval]Shapes** RHS);
	[id(0x00000191), propget, helpcontext(0x00010191)]
	HRESULT __stdcall TransitionExpEval(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000191), propput, helpcontext(0x00010191)]
	HRESULT __stdcall TransitionExpEval(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000002f8), hidden, helpcontext(0x000102f8)]
	HRESULT __stdcall Arcs(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000318), propget, helpcontext(0x00010318)]
	HRESULT __stdcall AutoFilterMode(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000318), propput, helpcontext(0x00010318)]
	HRESULT __stdcall AutoFilterMode(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000004a4), helpcontext(0x000104a4)]
	HRESULT __stdcall SetBackgroundPicture(
		[in]BSTR Filename);
	[id(0x0000022d), hidden, helpcontext(0x0001022d)]
	HRESULT __stdcall Buttons(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000117), helpcontext(0x00010117)]
	HRESULT __stdcall Calculate(
		[in]long lcid);
	[id(0x00000590), propget, helpcontext(0x00010590)]
	HRESULT __stdcall EnableCalculation(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000590), propput, helpcontext(0x00010590)]
	HRESULT __stdcall EnableCalculation(
		[in]VARIANT_BOOL RHS);
	[id(0x000000ee), propget, helpcontext(0x000100ee)]
	HRESULT __stdcall Cells(
		[out, retval]Range** RHS);
	[id(0x00000424), helpcontext(0x00010424)]
	HRESULT __stdcall ChartObjects(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000338), hidden, helpcontext(0x00010338)]
	HRESULT __stdcall CheckBoxes(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x000001f9), helpcontext(0x000101f9)]
	HRESULT __stdcall CheckSpelling(
		[in, optional]VARIANT CustomDictionary,
		[in, optional]VARIANT IgnoreUppercase,
		[in, optional]VARIANT AlwaysSuggest,
		[in, optional]VARIANT SpellLang,
		[in]long lcid);
	[id(0x0000042d), propget, helpcontext(0x0001042d)]
	HRESULT __stdcall CircularReference(
		[in]long lcid,
		[out, retval]Range** RHS);
	[id(0x000003ca), helpcontext(0x000103ca)]
	HRESULT __stdcall ClearArrows(
		[in]long lcid);
	[id(0x000000f1), propget, helpcontext(0x000100f1)]
	HRESULT __stdcall Columns(
		[out, retval]Range** RHS);
	[id(0x00000315), propget, helpcontext(0x00010315)]
	HRESULT __stdcall ConsolidationFunction(
		[in]long lcid,
		[out, retval]XlConsolidationFunction* RHS);
	[id(0x00000316), propget, helpcontext(0x00010316)]
	HRESULT __stdcall ConsolidationOptions(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000317), propget, helpcontext(0x00010317)]
	HRESULT __stdcall ConsolidationSources(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000283), hidden, propget, helpcontext(0x00010283)]
	HRESULT __stdcall DisplayAutomaticPageBreaks(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000283), hidden, propput, helpcontext(0x00010283)]
	HRESULT __stdcall DisplayAutomaticPageBreaks(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000304), hidden, helpcontext(0x00010304)]
	HRESULT __stdcall Drawings(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000058), hidden, helpcontext(0x00010058)]
	HRESULT __stdcall DrawingObjects(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000344), hidden, helpcontext(0x00010344)]
	HRESULT __stdcall DropDowns(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000484), propget, helpcontext(0x00010484)]
	HRESULT __stdcall EnableAutoFilter(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000484), propput, helpcontext(0x00010484)]
	HRESULT __stdcall EnableAutoFilter(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000591), propget, helpcontext(0x00010591)]
	HRESULT __stdcall EnableSelection(
		[out, retval]XlEnableSelection* RHS);
	[id(0x00000591), propput, helpcontext(0x00010591)]
	HRESULT __stdcall EnableSelection(
		[in]XlEnableSelection RHS);
	[id(0x00000485), propget, helpcontext(0x00010485)]
	HRESULT __stdcall EnableOutlining(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000485), propput, helpcontext(0x00010485)]
	HRESULT __stdcall EnableOutlining(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000486), propget, helpcontext(0x00010486)]
	HRESULT __stdcall EnablePivotTable(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000486), propput, helpcontext(0x00010486)]
	HRESULT __stdcall EnablePivotTable(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
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
	[id(0x00000320), propget, helpcontext(0x00010320)]
	HRESULT __stdcall FilterMode(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000592), helpcontext(0x00010592)]
	HRESULT __stdcall ResetAllPageBreaks();
	[id(0x00000342), hidden, helpcontext(0x00010342)]
	HRESULT __stdcall GroupBoxes(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000459), hidden, helpcontext(0x00010459)]
	HRESULT __stdcall GroupObjects(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000349), hidden, helpcontext(0x00010349)]
	HRESULT __stdcall Labels(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x000002ff), hidden, helpcontext(0x000102ff)]
	HRESULT __stdcall Lines(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000340), hidden, helpcontext(0x00010340)]
	HRESULT __stdcall ListBoxes(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x000001ba), propget, helpcontext(0x000101ba)]
	HRESULT __stdcall Names(
		[out, retval]Names** RHS);
	[id(0x0000031f), helpcontext(0x0001031f)]
	HRESULT __stdcall OLEObjects(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
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
	[id(0x00000273), hidden, propget, helpcontext(0x00010273)]
	HRESULT __stdcall OnEntry(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000273), hidden, propput, helpcontext(0x00010273)]
	HRESULT __stdcall OnEntry(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x0000033a), hidden, helpcontext(0x0001033a)]
	HRESULT __stdcall OptionButtons(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000066), propget, helpcontext(0x00010066)]
	HRESULT __stdcall Outline(
		[out, retval]Outline** RHS);
	[id(0x00000321), hidden, helpcontext(0x00010321)]
	HRESULT __stdcall Ovals(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x000000d3), helpcontext(0x000100d3)]
	HRESULT __stdcall Paste(
		[in, optional]VARIANT Destination,
		[in, optional]VARIANT Link,
		[in]long lcid);
	[id(0x00000403), hidden, helpcontext(0x00010403)]
	HRESULT __stdcall _PasteSpecial(
		[in, optional]VARIANT Format,
		[in, optional]VARIANT Link,
		[in, optional]VARIANT DisplayAsIcon,
		[in, optional]VARIANT IconFileName,
		[in, optional]VARIANT IconIndex,
		[in, optional]VARIANT IconLabel,
		[in]long lcid);
	[id(0x00000303), hidden, helpcontext(0x00010303)]
	HRESULT __stdcall Pictures(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x000002b2), helpcontext(0x000102b2)]
	HRESULT __stdcall PivotTables(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
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
		[in, optional]VARIANT Connection,
		[in]long lcid,
		[out, retval]PivotTable** RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[in]VARIANT Cell1,
		[in, optional]VARIANT Cell2,
		[out, retval]Range** RHS);
	[id(0x00000306), hidden, helpcontext(0x00010306)]
	HRESULT __stdcall Rectangles(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000102), propget, helpcontext(0x00010102)]
	HRESULT __stdcall Rows(
		[out, retval]Range** RHS);
	[id(0x0000038c), helpcontext(0x0001038c)]
	HRESULT __stdcall Scenarios(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000599), propget, helpcontext(0x00010599)]
	HRESULT __stdcall ScrollArea(
		[out, retval]BSTR* RHS);
	[id(0x00000599), propput, helpcontext(0x00010599)]
	HRESULT __stdcall ScrollArea(
		[in]BSTR RHS);
	[id(0x0000033e), hidden, helpcontext(0x0001033e)]
	HRESULT __stdcall ScrollBars(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000031a), helpcontext(0x0001031a)]
	HRESULT __stdcall ShowAllData(
		[in]long lcid);
	[id(0x00000199), helpcontext(0x00010199)]
	HRESULT __stdcall ShowDataForm(
		[in]long lcid);
	[id(0x00000346), hidden, helpcontext(0x00010346)]
	HRESULT __stdcall Spinners(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000197), propget, helpcontext(0x00010197)]
	HRESULT __stdcall StandardHeight(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x00000198), propget, helpcontext(0x00010198)]
	HRESULT __stdcall StandardWidth(
		[in]long lcid,
		[out, retval]double* RHS);
	[id(0x00000198), propput, helpcontext(0x00010198)]
	HRESULT __stdcall StandardWidth(
		[in]long lcid,
		[in]double RHS);
	[id(0x00000309), hidden, helpcontext(0x00010309)]
	HRESULT __stdcall TextBoxes(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000192), propget, helpcontext(0x00010192)]
	HRESULT __stdcall TransitionFormEntry(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000192), propput, helpcontext(0x00010192)]
	HRESULT __stdcall TransitionFormEntry(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]long lcid,
		[out, retval]XlSheetType* RHS);
	[id(0x0000019c), propget, helpcontext(0x0001019c)]
	HRESULT __stdcall UsedRange(
		[in]long lcid,
		[out, retval]Range** RHS);
	[id(0x0000058a), propget, helpcontext(0x0001058a)]
	HRESULT __stdcall HPageBreaks(
		[out, retval]HPageBreaks** RHS);
	[id(0x0000058b), propget, helpcontext(0x0001058b)]
	HRESULT __stdcall VPageBreaks(
		[out, retval]VPageBreaks** RHS);
	[id(0x0000059a), propget, helpcontext(0x0001059a)]
	HRESULT __stdcall QueryTables(
		[out, retval]QueryTables** RHS);
	[id(0x0000059b), propget, helpcontext(0x0001059b)]
	HRESULT __stdcall DisplayPageBreaks(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000059b), propput, helpcontext(0x0001059b)]
	HRESULT __stdcall DisplayPageBreaks(
		[in]VARIANT_BOOL RHS);
	[id(0x0000023f), propget, helpcontext(0x0001023f)]
	HRESULT __stdcall Comments(
		[out, retval]Comments** RHS);
	[id(0x00000571), propget, helpcontext(0x00010571)]
	HRESULT __stdcall Hyperlinks(
		[out, retval]Hyperlinks** RHS);
	[id(0x0000059c), helpcontext(0x0001059c)]
	HRESULT __stdcall ClearCircles();
	[id(0x0000059d), helpcontext(0x0001059d)]
	HRESULT __stdcall CircleInvalid();
	[id(0x00000288), hidden, propget, helpcontext(0x00010288)]
	HRESULT __stdcall _DisplayRightToLeft(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000288), hidden, propput, helpcontext(0x00010288)]
	HRESULT __stdcall _DisplayRightToLeft(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000319), propget, helpcontext(0x00010319)]
	HRESULT __stdcall AutoFilter(
		[out, retval]AutoFilter** RHS);
	[id(0x000006ee), propget, helpcontext(0x000106ee)]
	HRESULT __stdcall DisplayRightToLeft(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000006ee), propput, helpcontext(0x000106ee)]
	HRESULT __stdcall DisplayRightToLeft(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000718), hidden, propget, helpcontext(0x00010718)]
	HRESULT __stdcall Scripts(
		[out, retval]Scripts** RHS);
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
		[in]long lcid);
	[id(0x00000719), hidden, helpcontext(0x00010719)]
	HRESULT __stdcall _CheckSpelling(
		[in, optional]VARIANT CustomDictionary,
		[in, optional]VARIANT IgnoreUppercase,
		[in, optional]VARIANT AlwaysSuggest,
		[in, optional]VARIANT SpellLang,
		[in, optional]VARIANT IgnoreFinalYaa,
		[in, optional]VARIANT SpellScript,
		[in]long lcid);
	[id(0x00000411), propget, helpcontext(0x00010411)]
	HRESULT __stdcall Tab(
		[out, retval]Tab** RHS);
	[id(0x000007e5), propget, helpcontext(0x000107e5)]
	HRESULT __stdcall MailEnvelope(
		[out, retval]MsoEnvelope** RHS);
	[id(0x00000785), helpcontext(0x00010785)]
	HRESULT __stdcall SaveAs(
		[in]BSTR Filename,
		[in, optional]VARIANT FileFormat,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT WriteResPassword,
		[in, optional]VARIANT ReadOnlyRecommended,
		[in, optional]VARIANT CreateBackup,
		[in, optional]VARIANT AddToMru,
		[in, optional]VARIANT TextCodepage,
		[in, optional]VARIANT TextVisualLayout,
		[in, optional]VARIANT Local);
	[id(0x000007ee), propget, helpcontext(0x000107ee)]
	HRESULT __stdcall CustomProperties(
		[out, retval]CustomProperties** RHS);
	[id(0x000007e0), propget, helpcontext(0x000107e0)]
	HRESULT __stdcall SmartTags(
		[out, retval]SmartTags** RHS);
	[id(0x000000b0), propget, helpcontext(0x000100b0)]
	HRESULT __stdcall Protection(
		[out, retval]Protection** RHS);
	[id(0x00000788), helpcontext(0x00010788)]
	HRESULT __stdcall PasteSpecial(
		[in, optional]VARIANT Format,
		[in, optional]VARIANT Link,
		[in, optional]VARIANT DisplayAsIcon,
		[in, optional]VARIANT IconFileName,
		[in, optional]VARIANT IconIndex,
		[in, optional]VARIANT IconLabel,
		[in, optional]VARIANT NoHTMLFormatting,
		[in]long lcid);
	[id(0x000007ed), helpcontext(0x000107ed)]
	HRESULT __stdcall Protect(
		[in, optional]VARIANT Password,
		[in, optional]VARIANT DrawingObjects,
		[in, optional]VARIANT Contents,
		[in, optional]VARIANT Scenarios,
		[in, optional]VARIANT UserInterfaceOnly,
		[in, optional]VARIANT AllowFormattingCells,
		[in, optional]VARIANT AllowFormattingColumns,
		[in, optional]VARIANT AllowFormattingRows,
		[in, optional]VARIANT AllowInsertingColumns,
		[in, optional]VARIANT AllowInsertingRows,
		[in, optional]VARIANT AllowInsertingHyperlinks,
		[in, optional]VARIANT AllowDeletingColumns,
		[in, optional]VARIANT AllowDeletingRows,
		[in, optional]VARIANT AllowSorting,
		[in, optional]VARIANT AllowFiltering,
		[in, optional]VARIANT AllowUsingPivotTables);
	[id(0x000008d3), propget, helpcontext(0x000108d3)]
	HRESULT __stdcall ListObjects(
		[out, retval]ListObjects** RHS);
	[id(0x000008d4), helpcontext(0x000108d4)]
	HRESULT __stdcall XmlDataQuery(
		[in]BSTR XPath,
		[in, optional]VARIANT SelectionNamespaces,
		[in, optional]VARIANT Map,
		[out, retval]Range** RHS);
	[id(0x000008d7), helpcontext(0x000108d7)]
	HRESULT __stdcall XmlMapQuery(
		[in]BSTR XPath,
		[in, optional]VARIANT SelectionNamespaces,
		[in, optional]VARIANT Map,
		[out, retval]Range** RHS);
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
		[in, optional]VARIANT IgnorePrintAreas,
		[in]long lcid);
	[id(0x000009cf), propget, helpcontext(0x000109cf)]
	HRESULT __stdcall EnableFormatConditionsCalculation(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009cf), propput, helpcontext(0x000109cf)]
	HRESULT __stdcall EnableFormatConditionsCalculation(
		[in]VARIANT_BOOL RHS);
	[id(0x00000370), propget, helpcontext(0x00010370)]
	HRESULT __stdcall Sort(
		[out, retval]Sort** RHS);
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
};
'!
!Excel_Worksheet categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!Excel_Worksheet methodsFor!

__printOut: lcid
	"Invoke the __PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 __printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 lcid: lcid!

__printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate lcid: lcid
	"Invoke the __PrintOut() method of the COM object."

	^self
		__PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		lcid: lcid
!

__PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate lcid: lcid
	"Private - Invoke the __PrintOut() method of the COM object.

		HRESULT __stdcall __PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in]long lcid);"

	<virtual stdcall: hresult 30 variant variant variant variant variant variant variant sdword>
	^self invalidCall!

_checkSpelling: lcid
	"Invoke the _CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified
		 ignoreFinalYaa: VARIANT unspecified
		 spellScript: VARIANT unspecified
		 lcid: lcid!

_checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang ignoreFinalYaa: ignoreFinalYaa spellScript: spellScript lcid: lcid
	"Invoke the _CheckSpelling() method of the COM object."

	^self
		_CheckSpelling: customDictionary asVariant
		ignoreUppercase: ignoreUppercase asVariant
		alwaysSuggest: alwaysSuggest asVariant
		spellLang: spellLang asVariant
		ignoreFinalYaa: ignoreFinalYaa asVariant
		spellScript: spellScript asVariant
		lcid: lcid
!

_CheckSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang ignoreFinalYaa: ignoreFinalYaa spellScript: spellScript lcid: lcid
	"Private - Invoke the _CheckSpelling() method of the COM object.

		HRESULT __stdcall _CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang,
			[in, optional]VARIANT IgnoreFinalYaa,
			[in, optional]VARIANT SpellScript,
			[in]long lcid);"

	<virtual stdcall: hresult 135 variant variant variant variant variant variant sdword>
	^self invalidCall!

_codeName
	"Answer the <bstr> value of the '_CodeName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__CodeName: answer.
	^answer asObject
!

_codeName: rhs
	"Set the '_CodeName' property of the receiver to the <bstr> value of the argument."

	self put__CodeName: rhs
!

_displayRightToLeft: lcid
	"Answer the <sdword> value of the '_DisplayRightToLeft' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get__DisplayRightToLeft: lcid
		rhs: answer.
	^answer asObject
!

_displayRightToLeft: lcid rhs: rhs
	"Set the '_DisplayRightToLeft' property of the receiver to the <sdword> value of the argument."

	self
		put__DisplayRightToLeft: lcid
		rhs: rhs
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

	<virtual stdcall: hresult 77 variant sdword variant*>
	^self invalidCall!

_pasteSpecial: lcid
	"Invoke the _PasteSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _pasteSpecial: VARIANT unspecified
		 link: VARIANT unspecified
		 displayAsIcon: VARIANT unspecified
		 iconFileName: VARIANT unspecified
		 iconIndex: VARIANT unspecified
		 iconLabel: VARIANT unspecified
		 lcid: lcid!

_pasteSpecial: format link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel lcid: lcid
	"Invoke the _PasteSpecial() method of the COM object."

	^self
		_PasteSpecial: format asVariant
		link: link asVariant
		displayAsIcon: displayAsIcon asVariant
		iconFileName: iconFileName asVariant
		iconIndex: iconIndex asVariant
		iconLabel: iconLabel asVariant
		lcid: lcid
!

_PasteSpecial: format link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel lcid: lcid
	"Private - Invoke the _PasteSpecial() method of the COM object.

		HRESULT __stdcall _PasteSpecial(
			[in, optional]VARIANT Format,
			[in, optional]VARIANT Link,
			[in, optional]VARIANT DisplayAsIcon,
			[in, optional]VARIANT IconFileName,
			[in, optional]VARIANT IconIndex,
			[in, optional]VARIANT IconLabel,
			[in]long lcid);"

	<virtual stdcall: hresult 97 variant variant variant variant variant variant sdword>
	^self invalidCall!

_printOut: lcid
	"Invoke the _PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified
		 lcid: lcid!

_printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName lcid: lcid
	"Invoke the _PrintOut() method of the COM object."

	^self
		_PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		prToFileName: prToFileName asVariant
		lcid: lcid
!

_PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName lcid: lcid
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
			[in]long lcid);"

	<virtual stdcall: hresult 134 variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

_protect: lcid
	"Invoke the _Protect() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _protect: VARIANT unspecified
		 drawingObjects: VARIANT unspecified
		 contents: VARIANT unspecified
		 scenarios: VARIANT unspecified
		 userInterfaceOnly: VARIANT unspecified
		 lcid: lcid!

_protect: password drawingObjects: drawingObjects contents: contents scenarios: scenarios userInterfaceOnly: userInterfaceOnly lcid: lcid
	"Invoke the _Protect() method of the COM object."

	^self
		_Protect: password asVariant
		drawingObjects: drawingObjects asVariant
		contents: contents asVariant
		scenarios: scenarios asVariant
		userInterfaceOnly: userInterfaceOnly asVariant
		lcid: lcid
!

_Protect: password drawingObjects: drawingObjects contents: contents scenarios: scenarios userInterfaceOnly: userInterfaceOnly lcid: lcid
	"Private - Invoke the _Protect() method of the COM object.

		HRESULT __stdcall _Protect(
			[in, optional]VARIANT Password,
			[in, optional]VARIANT DrawingObjects,
			[in, optional]VARIANT Contents,
			[in, optional]VARIANT Scenarios,
			[in, optional]VARIANT UserInterfaceOnly,
			[in]long lcid);"

	<virtual stdcall: hresult 32 variant variant variant variant variant sdword>
	^self invalidCall!

_saveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout lcid: lcid
	"Invoke the _SaveAs() method of the COM object."

	^self
		_SaveAs: filename
		fileFormat: fileFormat asVariant
		password: password asVariant
		writeResPassword: writeResPassword asVariant
		readOnlyRecommended: readOnlyRecommended asVariant
		createBackup: createBackup asVariant
		addToMru: addToMru asVariant
		textCodepage: textCodepage asVariant
		textVisualLayout: textVisualLayout asVariant
		lcid: lcid
!

_SaveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout lcid: lcid
	"Private - Invoke the _SaveAs() method of the COM object.

		HRESULT __stdcall _SaveAs(
			[in]BSTR Filename,
			[in, optional]VARIANT FileFormat,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT ReadOnlyRecommended,
			[in, optional]VARIANT CreateBackup,
			[in, optional]VARIANT AddToMru,
			[in, optional]VARIANT TextCodepage,
			[in, optional]VARIANT TextVisualLayout,
			[in]long lcid);"

	<virtual stdcall: hresult 37 bstr variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

_saveAs: filename lcid: lcid
	"Invoke the _SaveAs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _saveAs: filename
		 fileFormat: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 textCodepage: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 lcid: lcid!

activate: lcid
	"Invoke the Activate() method of the COM object."

	^self Activate: lcid
!

Activate: lcid
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate(
			[in]long lcid);"

	<virtual stdcall: hresult 11 sdword>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

arcs: lcid
	"Answer the <IDispatch> result of invoking the Arcs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 arcs: VARIANT unspecified
		 lcid: lcid!

arcs: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Arcs() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Arcs: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Arcs: index lcid: lcid rhs: rhs
	"Private - Invoke the Arcs() method of the COM object.

		HRESULT __stdcall Arcs(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 45 variant sdword IDispatch**>
	^self invalidCall!

autoFilter
	"Answer the <ExcelAutoFilter> value of the 'AutoFilter' property of the receiver."

	| answer |
	answer := ExcelAutoFilter newPointer.
	self get_AutoFilter: answer.
	^answer asObject
!

autoFilterMode: lcid
	"Answer the <varbool> value of the 'AutoFilterMode' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_AutoFilterMode: lcid
		rhs: answer.
	^answer asObject
!

autoFilterMode: lcid rhs: rhs
	"Set the 'AutoFilterMode' property of the receiver to the <varbool> value of the argument."

	self
		put_AutoFilterMode: lcid
		rhs: rhs
!

buttons: lcid
	"Answer the <IDispatch> result of invoking the Buttons() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 buttons: VARIANT unspecified
		 lcid: lcid!

buttons: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Buttons() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Buttons: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Buttons: index lcid: lcid rhs: rhs
	"Private - Invoke the Buttons() method of the COM object.

		HRESULT __stdcall Buttons(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 49 variant sdword IDispatch**>
	^self invalidCall!

calculate: lcid
	"Invoke the Calculate() method of the COM object."

	^self Calculate: lcid
!

Calculate: lcid
	"Private - Invoke the Calculate() method of the COM object.

		HRESULT __stdcall Calculate(
			[in]long lcid);"

	<virtual stdcall: hresult 50 sdword>
	^self invalidCall!

cells
	"Answer the <ExcelRange> value of the 'Cells' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Cells: answer.
	^answer asObject
!

chartObjects: lcid
	"Answer the <IDispatch> result of invoking the ChartObjects() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 chartObjects: VARIANT unspecified
		 lcid: lcid!

chartObjects: index lcid: lcid
	"Answer the <IDispatch> result of invoking the ChartObjects() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		ChartObjects: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

ChartObjects: index lcid: lcid rhs: rhs
	"Private - Invoke the ChartObjects() method of the COM object.

		HRESULT __stdcall ChartObjects(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 54 variant sdword IDispatch**>
	^self invalidCall!

checkBoxes: lcid
	"Answer the <IDispatch> result of invoking the CheckBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkBoxes: VARIANT unspecified
		 lcid: lcid!

checkBoxes: index lcid: lcid
	"Answer the <IDispatch> result of invoking the CheckBoxes() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		CheckBoxes: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

CheckBoxes: index lcid: lcid rhs: rhs
	"Private - Invoke the CheckBoxes() method of the COM object.

		HRESULT __stdcall CheckBoxes(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 55 variant sdword IDispatch**>
	^self invalidCall!

checkSpelling: lcid
	"Invoke the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified
		 lcid: lcid!

checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang lcid: lcid
	"Invoke the CheckSpelling() method of the COM object."

	^self
		CheckSpelling: customDictionary asVariant
		ignoreUppercase: ignoreUppercase asVariant
		alwaysSuggest: alwaysSuggest asVariant
		spellLang: spellLang asVariant
		lcid: lcid
!

CheckSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang lcid: lcid
	"Private - Invoke the CheckSpelling() method of the COM object.

		HRESULT __stdcall CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang,
			[in]long lcid);"

	<virtual stdcall: hresult 56 variant variant variant variant sdword>
	^self invalidCall!

circleInvalid
	"Invoke the CircleInvalid() method of the COM object."

	^self CircleInvalid
!

CircleInvalid
	"Private - Invoke the CircleInvalid() method of the COM object.

		HRESULT __stdcall CircleInvalid();"

	<virtual stdcall: hresult 127>
	^self invalidCall!

circularReference: lcid
	"Answer the <ExcelRange> value of the 'CircularReference' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self
		get_CircularReference: lcid
		rhs: answer.
	^answer asObject
!

clearArrows: lcid
	"Invoke the ClearArrows() method of the COM object."

	^self ClearArrows: lcid
!

ClearArrows: lcid
	"Private - Invoke the ClearArrows() method of the COM object.

		HRESULT __stdcall ClearArrows(
			[in]long lcid);"

	<virtual stdcall: hresult 58 sdword>
	^self invalidCall!

clearCircles
	"Invoke the ClearCircles() method of the COM object."

	^self ClearCircles
!

ClearCircles
	"Private - Invoke the ClearCircles() method of the COM object.

		HRESULT __stdcall ClearCircles();"

	<virtual stdcall: hresult 126>
	^self invalidCall!

codeName
	"Answer the <bstr> value of the 'CodeName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CodeName: answer.
	^answer asObject
!

columns
	"Answer the <ExcelRange> value of the 'Columns' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Columns: answer.
	^answer asObject
!

comments
	"Answer the <ExcelComments> value of the 'Comments' property of the receiver."

	| answer |
	answer := ExcelComments newPointer.
	self get_Comments: answer.
	^answer asObject
!

consolidationFunction: lcid
	"Answer the <sdword> value of the 'ConsolidationFunction' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_ConsolidationFunction: lcid
		rhs: answer.
	^answer asObject
!

consolidationOptions: lcid
	"Answer the <variant> value of the 'ConsolidationOptions' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_ConsolidationOptions: lcid
		rhs: answer.
	^answer asObject
!

consolidationSources: lcid
	"Answer the <variant> value of the 'ConsolidationSources' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_ConsolidationSources: lcid
		rhs: answer.
	^answer asObject
!

copy: lcid
	"Invoke the Copy() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copy: VARIANT unspecified
		 after: VARIANT unspecified
		 lcid: lcid!

copy: before after: after lcid: lcid
	"Invoke the Copy() method of the COM object."

	^self
		Copy: before asVariant
		after: after asVariant
		lcid: lcid
!

Copy: before after: after lcid: lcid
	"Private - Invoke the Copy() method of the COM object.

		HRESULT __stdcall Copy(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After,
			[in]long lcid);"

	<virtual stdcall: hresult 12 variant variant sdword>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

customProperties
	"Answer the <ExcelCustomProperties> value of the 'CustomProperties' property of the receiver."

	| answer |
	answer := ExcelCustomProperties newPointer.
	self get_CustomProperties: answer.
	^answer asObject
!

delete: lcid
	"Invoke the Delete() method of the COM object."

	^self Delete: lcid
!

Delete: lcid
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[in]long lcid);"

	<virtual stdcall: hresult 13 sdword>
	^self invalidCall!

displayAutomaticPageBreaks: lcid
	"Answer the <varbool> value of the 'DisplayAutomaticPageBreaks' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayAutomaticPageBreaks: lcid
		rhs: answer.
	^answer asObject
!

displayAutomaticPageBreaks: lcid rhs: rhs
	"Set the 'DisplayAutomaticPageBreaks' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayAutomaticPageBreaks: lcid
		rhs: rhs
!

displayPageBreaks
	"Answer the <varbool> value of the 'DisplayPageBreaks' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayPageBreaks: answer.
	^answer asObject
!

displayPageBreaks: rhs
	"Set the 'DisplayPageBreaks' property of the receiver to the <varbool> value of the argument."

	self put_DisplayPageBreaks: rhs
!

displayRightToLeft: lcid
	"Answer the <varbool> value of the 'DisplayRightToLeft' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_DisplayRightToLeft: lcid
		rhs: answer.
	^answer asObject
!

displayRightToLeft: lcid rhs: rhs
	"Set the 'DisplayRightToLeft' property of the receiver to the <varbool> value of the argument."

	self
		put_DisplayRightToLeft: lcid
		rhs: rhs
!

drawingObjects: lcid
	"Answer the <IDispatch> result of invoking the DrawingObjects() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 drawingObjects: VARIANT unspecified
		 lcid: lcid!

drawingObjects: index lcid: lcid
	"Answer the <IDispatch> result of invoking the DrawingObjects() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		DrawingObjects: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

DrawingObjects: index lcid: lcid rhs: rhs
	"Private - Invoke the DrawingObjects() method of the COM object.

		HRESULT __stdcall DrawingObjects(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 66 variant sdword IDispatch**>
	^self invalidCall!

drawings: lcid
	"Answer the <IDispatch> result of invoking the Drawings() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 drawings: VARIANT unspecified
		 lcid: lcid!

drawings: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Drawings() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Drawings: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Drawings: index lcid: lcid rhs: rhs
	"Private - Invoke the Drawings() method of the COM object.

		HRESULT __stdcall Drawings(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 65 variant sdword IDispatch**>
	^self invalidCall!

dropDowns: lcid
	"Answer the <IDispatch> result of invoking the DropDowns() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dropDowns: VARIANT unspecified
		 lcid: lcid!

dropDowns: index lcid: lcid
	"Answer the <IDispatch> result of invoking the DropDowns() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		DropDowns: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

DropDowns: index lcid: lcid rhs: rhs
	"Private - Invoke the DropDowns() method of the COM object.

		HRESULT __stdcall DropDowns(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 67 variant sdword IDispatch**>
	^self invalidCall!

enableAutoFilter: lcid
	"Answer the <varbool> value of the 'EnableAutoFilter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_EnableAutoFilter: lcid
		rhs: answer.
	^answer asObject
!

enableAutoFilter: lcid rhs: rhs
	"Set the 'EnableAutoFilter' property of the receiver to the <varbool> value of the argument."

	self
		put_EnableAutoFilter: lcid
		rhs: rhs
!

enableCalculation
	"Answer the <varbool> value of the 'EnableCalculation' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableCalculation: answer.
	^answer asObject
!

enableCalculation: rhs
	"Set the 'EnableCalculation' property of the receiver to the <varbool> value of the argument."

	self put_EnableCalculation: rhs
!

enableFormatConditionsCalculation
	"Answer the <varbool> value of the 'EnableFormatConditionsCalculation' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableFormatConditionsCalculation: answer.
	^answer asObject
!

enableFormatConditionsCalculation: rhs
	"Set the 'EnableFormatConditionsCalculation' property of the receiver to the <varbool> value of the argument."

	self put_EnableFormatConditionsCalculation: rhs
!

enableOutlining: lcid
	"Answer the <varbool> value of the 'EnableOutlining' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_EnableOutlining: lcid
		rhs: answer.
	^answer asObject
!

enableOutlining: lcid rhs: rhs
	"Set the 'EnableOutlining' property of the receiver to the <varbool> value of the argument."

	self
		put_EnableOutlining: lcid
		rhs: rhs
!

enablePivotTable: lcid
	"Answer the <varbool> value of the 'EnablePivotTable' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_EnablePivotTable: lcid
		rhs: answer.
	^answer asObject
!

enablePivotTable: lcid rhs: rhs
	"Set the 'EnablePivotTable' property of the receiver to the <varbool> value of the argument."

	self
		put_EnablePivotTable: lcid
		rhs: rhs
!

enableSelection
	"Answer the <sdword> value of the 'EnableSelection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_EnableSelection: answer.
	^answer asObject
!

enableSelection: rhs
	"Set the 'EnableSelection' property of the receiver to the <sdword> value of the argument."

	self put_EnableSelection: rhs
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

	<virtual stdcall: hresult 76 variant sdword variant*>
	^self invalidCall!

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

	<virtual stdcall: hresult 151 sdword variant variant variant variant variant variant variant variant>
	^self invalidCall!

filterMode: lcid
	"Answer the <varbool> value of the 'FilterMode' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_FilterMode: lcid
		rhs: answer.
	^answer asObject
!

get__CodeName: rhs
	"Private - Get the value of the '_CodeName' property of the receiver.

		HRESULT __stdcall _CodeName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get__DisplayRightToLeft: lcid rhs: rhs
	"Private - Get the value of the '_DisplayRightToLeft' property of the receiver.

		HRESULT __stdcall _DisplayRightToLeft(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 128 sdword sdword*>
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

	<virtual stdcall: hresult 130 ExcelAutoFilter**>
	^self invalidCall!

get_AutoFilterMode: lcid rhs: rhs
	"Private - Get the value of the 'AutoFilterMode' property of the receiver.

		HRESULT __stdcall AutoFilterMode(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 46 sdword varbool*>
	^self invalidCall!

get_Cells: rhs
	"Private - Get the value of the 'Cells' property of the receiver.

		HRESULT __stdcall Cells(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 53 ExcelRange**>
	^self invalidCall!

get_CircularReference: lcid rhs: rhs
	"Private - Get the value of the 'CircularReference' property of the receiver.

		HRESULT __stdcall CircularReference(
			[in]long lcid,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 57 sdword ExcelRange**>
	^self invalidCall!

get_CodeName: rhs
	"Private - Get the value of the 'CodeName' property of the receiver.

		HRESULT __stdcall CodeName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Columns: rhs
	"Private - Get the value of the 'Columns' property of the receiver.

		HRESULT __stdcall Columns(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 59 ExcelRange**>
	^self invalidCall!

get_Comments: rhs
	"Private - Get the value of the 'Comments' property of the receiver.

		HRESULT __stdcall Comments(
			[out, retval]Comments** RHS);"

	<virtual stdcall: hresult 124 ExcelComments**>
	^self invalidCall!

get_ConsolidationFunction: lcid rhs: rhs
	"Private - Get the value of the 'ConsolidationFunction' property of the receiver.

		HRESULT __stdcall ConsolidationFunction(
			[in]long lcid,
			[out, retval]XlConsolidationFunction* RHS);"

	<virtual stdcall: hresult 60 sdword sdword*>
	^self invalidCall!

get_ConsolidationOptions: lcid rhs: rhs
	"Private - Get the value of the 'ConsolidationOptions' property of the receiver.

		HRESULT __stdcall ConsolidationOptions(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 61 sdword variant*>
	^self invalidCall!

get_ConsolidationSources: lcid rhs: rhs
	"Private - Get the value of the 'ConsolidationSources' property of the receiver.

		HRESULT __stdcall ConsolidationSources(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 62 sdword variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CustomProperties: rhs
	"Private - Get the value of the 'CustomProperties' property of the receiver.

		HRESULT __stdcall CustomProperties(
			[out, retval]CustomProperties** RHS);"

	<virtual stdcall: hresult 139 ExcelCustomProperties**>
	^self invalidCall!

get_DisplayAutomaticPageBreaks: lcid rhs: rhs
	"Private - Get the value of the 'DisplayAutomaticPageBreaks' property of the receiver.

		HRESULT __stdcall DisplayAutomaticPageBreaks(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 63 sdword varbool*>
	^self invalidCall!

get_DisplayPageBreaks: rhs
	"Private - Get the value of the 'DisplayPageBreaks' property of the receiver.

		HRESULT __stdcall DisplayPageBreaks(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 122 varbool*>
	^self invalidCall!

get_DisplayRightToLeft: lcid rhs: rhs
	"Private - Get the value of the 'DisplayRightToLeft' property of the receiver.

		HRESULT __stdcall DisplayRightToLeft(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 131 sdword varbool*>
	^self invalidCall!

get_EnableAutoFilter: lcid rhs: rhs
	"Private - Get the value of the 'EnableAutoFilter' property of the receiver.

		HRESULT __stdcall EnableAutoFilter(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 68 sdword varbool*>
	^self invalidCall!

get_EnableCalculation: rhs
	"Private - Get the value of the 'EnableCalculation' property of the receiver.

		HRESULT __stdcall EnableCalculation(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 51 varbool*>
	^self invalidCall!

get_EnableFormatConditionsCalculation: rhs
	"Private - Get the value of the 'EnableFormatConditionsCalculation' property of the receiver.

		HRESULT __stdcall EnableFormatConditionsCalculation(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 148 varbool*>
	^self invalidCall!

get_EnableOutlining: lcid rhs: rhs
	"Private - Get the value of the 'EnableOutlining' property of the receiver.

		HRESULT __stdcall EnableOutlining(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 72 sdword varbool*>
	^self invalidCall!

get_EnablePivotTable: lcid rhs: rhs
	"Private - Get the value of the 'EnablePivotTable' property of the receiver.

		HRESULT __stdcall EnablePivotTable(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 74 sdword varbool*>
	^self invalidCall!

get_EnableSelection: rhs
	"Private - Get the value of the 'EnableSelection' property of the receiver.

		HRESULT __stdcall EnableSelection(
			[out, retval]XlEnableSelection* RHS);"

	<virtual stdcall: hresult 70 sdword*>
	^self invalidCall!

get_FilterMode: lcid rhs: rhs
	"Private - Get the value of the 'FilterMode' property of the receiver.

		HRESULT __stdcall FilterMode(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 78 sdword varbool*>
	^self invalidCall!

get_HPageBreaks: rhs
	"Private - Get the value of the 'HPageBreaks' property of the receiver.

		HRESULT __stdcall HPageBreaks(
			[out, retval]HPageBreaks** RHS);"

	<virtual stdcall: hresult 119 ExcelHPageBreaks**>
	^self invalidCall!

get_Hyperlinks: rhs
	"Private - Get the value of the 'Hyperlinks' property of the receiver.

		HRESULT __stdcall Hyperlinks(
			[out, retval]Hyperlinks** RHS);"

	<virtual stdcall: hresult 125 ExcelHyperlinks**>
	^self invalidCall!

get_Index: lcid rhs: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword sdword*>
	^self invalidCall!

get_ListObjects: rhs
	"Private - Get the value of the 'ListObjects' property of the receiver.

		HRESULT __stdcall ListObjects(
			[out, retval]ListObjects** RHS);"

	<virtual stdcall: hresult 144 ExcelListObjects**>
	^self invalidCall!

get_MailEnvelope: rhs
	"Private - Get the value of the 'MailEnvelope' property of the receiver.

		HRESULT __stdcall MailEnvelope(
			[out, retval]MsoEnvelope** RHS);"

	<virtual stdcall: hresult 137 OfficeIMsoEnvelopeVB**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 19 bstr*>
	^self invalidCall!

get_Names: rhs
	"Private - Get the value of the 'Names' property of the receiver.

		HRESULT __stdcall Names(
			[out, retval]Names** RHS);"

	<virtual stdcall: hresult 85 ExcelNames**>
	^self invalidCall!

get_Next: rhs
	"Private - Get the value of the 'Next' property of the receiver.

		HRESULT __stdcall Next(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 21 IDispatch**>
	^self invalidCall!

get_OnCalculate: lcid rhs: rhs
	"Private - Get the value of the 'OnCalculate' property of the receiver.

		HRESULT __stdcall OnCalculate(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 87 sdword bstr*>
	^self invalidCall!

get_OnData: lcid rhs: rhs
	"Private - Get the value of the 'OnData' property of the receiver.

		HRESULT __stdcall OnData(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 89 sdword bstr*>
	^self invalidCall!

get_OnDoubleClick: lcid rhs: rhs
	"Private - Get the value of the 'OnDoubleClick' property of the receiver.

		HRESULT __stdcall OnDoubleClick(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 22 sdword bstr*>
	^self invalidCall!

get_OnEntry: lcid rhs: rhs
	"Private - Get the value of the 'OnEntry' property of the receiver.

		HRESULT __stdcall OnEntry(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 91 sdword bstr*>
	^self invalidCall!

get_OnSheetActivate: lcid rhs: rhs
	"Private - Get the value of the 'OnSheetActivate' property of the receiver.

		HRESULT __stdcall OnSheetActivate(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 24 sdword bstr*>
	^self invalidCall!

get_OnSheetDeactivate: lcid rhs: rhs
	"Private - Get the value of the 'OnSheetDeactivate' property of the receiver.

		HRESULT __stdcall OnSheetDeactivate(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 26 sdword bstr*>
	^self invalidCall!

get_Outline: rhs
	"Private - Get the value of the 'Outline' property of the receiver.

		HRESULT __stdcall Outline(
			[out, retval]Outline** RHS);"

	<virtual stdcall: hresult 94 ExcelOutline**>
	^self invalidCall!

get_PageSetup: rhs
	"Private - Get the value of the 'PageSetup' property of the receiver.

		HRESULT __stdcall PageSetup(
			[out, retval]PageSetup** RHS);"

	<virtual stdcall: hresult 28 ExcelPageSetup**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Previous: rhs
	"Private - Get the value of the 'Previous' property of the receiver.

		HRESULT __stdcall Previous(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 29 IDispatch**>
	^self invalidCall!

get_ProtectContents: lcid rhs: rhs
	"Private - Get the value of the 'ProtectContents' property of the receiver.

		HRESULT __stdcall ProtectContents(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 33 sdword varbool*>
	^self invalidCall!

get_ProtectDrawingObjects: lcid rhs: rhs
	"Private - Get the value of the 'ProtectDrawingObjects' property of the receiver.

		HRESULT __stdcall ProtectDrawingObjects(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 34 sdword varbool*>
	^self invalidCall!

get_Protection: rhs
	"Private - Get the value of the 'Protection' property of the receiver.

		HRESULT __stdcall Protection(
			[out, retval]Protection** RHS);"

	<virtual stdcall: hresult 141 ExcelProtection**>
	^self invalidCall!

get_ProtectionMode: lcid rhs: rhs
	"Private - Get the value of the 'ProtectionMode' property of the receiver.

		HRESULT __stdcall ProtectionMode(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 35 sdword varbool*>
	^self invalidCall!

get_ProtectScenarios: lcid rhs: rhs
	"Private - Get the value of the 'ProtectScenarios' property of the receiver.

		HRESULT __stdcall ProtectScenarios(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 36 sdword varbool*>
	^self invalidCall!

get_QueryTables: rhs
	"Private - Get the value of the 'QueryTables' property of the receiver.

		HRESULT __stdcall QueryTables(
			[out, retval]QueryTables** RHS);"

	<virtual stdcall: hresult 121 ExcelQueryTables**>
	^self invalidCall!

get_Range: cell1 cell2: cell2 rhs: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[in]VARIANT Cell1,
			[in, optional]VARIANT Cell2,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 101 variant variant ExcelRange**>
	^self invalidCall!

get_Rows: rhs
	"Private - Get the value of the 'Rows' property of the receiver.

		HRESULT __stdcall Rows(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 103 ExcelRange**>
	^self invalidCall!

get_Scripts: rhs
	"Private - Get the value of the 'Scripts' property of the receiver.

		HRESULT __stdcall Scripts(
			[out, retval]Scripts** RHS);"

	<virtual stdcall: hresult 133 OfficeScripts**>
	^self invalidCall!

get_ScrollArea: rhs
	"Private - Get the value of the 'ScrollArea' property of the receiver.

		HRESULT __stdcall ScrollArea(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 105 bstr*>
	^self invalidCall!

get_Shapes: rhs
	"Private - Get the value of the 'Shapes' property of the receiver.

		HRESULT __stdcall Shapes(
			[out, retval]Shapes** RHS);"

	<virtual stdcall: hresult 42 ExcelShapes**>
	^self invalidCall!

get_SmartTags: rhs
	"Private - Get the value of the 'SmartTags' property of the receiver.

		HRESULT __stdcall SmartTags(
			[out, retval]SmartTags** RHS);"

	<virtual stdcall: hresult 140 ExcelSmartTags**>
	^self invalidCall!

get_Sort: rhs
	"Private - Get the value of the 'Sort' property of the receiver.

		HRESULT __stdcall Sort(
			[out, retval]Sort** RHS);"

	<virtual stdcall: hresult 150 ExcelSort**>
	^self invalidCall!

get_StandardHeight: lcid rhs: rhs
	"Private - Get the value of the 'StandardHeight' property of the receiver.

		HRESULT __stdcall StandardHeight(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 111 sdword double*>
	^self invalidCall!

get_StandardWidth: lcid rhs: rhs
	"Private - Get the value of the 'StandardWidth' property of the receiver.

		HRESULT __stdcall StandardWidth(
			[in]long lcid,
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 112 sdword double*>
	^self invalidCall!

get_Tab: rhs
	"Private - Get the value of the 'Tab' property of the receiver.

		HRESULT __stdcall Tab(
			[out, retval]Tab** RHS);"

	<virtual stdcall: hresult 136 ExcelTab**>
	^self invalidCall!

get_TransitionExpEval: lcid rhs: rhs
	"Private - Get the value of the 'TransitionExpEval' property of the receiver.

		HRESULT __stdcall TransitionExpEval(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 43 sdword varbool*>
	^self invalidCall!

get_TransitionFormEntry: lcid rhs: rhs
	"Private - Get the value of the 'TransitionFormEntry' property of the receiver.

		HRESULT __stdcall TransitionFormEntry(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 115 sdword varbool*>
	^self invalidCall!

get_Type: lcid rhs: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[in]long lcid,
			[out, retval]XlSheetType* RHS);"

	<virtual stdcall: hresult 117 sdword sdword*>
	^self invalidCall!

get_UsedRange: lcid rhs: rhs
	"Private - Get the value of the 'UsedRange' property of the receiver.

		HRESULT __stdcall UsedRange(
			[in]long lcid,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 118 sdword ExcelRange**>
	^self invalidCall!

get_Visible: lcid rhs: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[out, retval]XlSheetVisibility* RHS);"

	<virtual stdcall: hresult 40 sdword sdword*>
	^self invalidCall!

get_VPageBreaks: rhs
	"Private - Get the value of the 'VPageBreaks' property of the receiver.

		HRESULT __stdcall VPageBreaks(
			[out, retval]VPageBreaks** RHS);"

	<virtual stdcall: hresult 120 ExcelVPageBreaks**>
	^self invalidCall!

groupBoxes: lcid
	"Answer the <IDispatch> result of invoking the GroupBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 groupBoxes: VARIANT unspecified
		 lcid: lcid!

groupBoxes: index lcid: lcid
	"Answer the <IDispatch> result of invoking the GroupBoxes() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		GroupBoxes: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

GroupBoxes: index lcid: lcid rhs: rhs
	"Private - Invoke the GroupBoxes() method of the COM object.

		HRESULT __stdcall GroupBoxes(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 80 variant sdword IDispatch**>
	^self invalidCall!

groupObjects: lcid
	"Answer the <IDispatch> result of invoking the GroupObjects() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 groupObjects: VARIANT unspecified
		 lcid: lcid!

groupObjects: index lcid: lcid
	"Answer the <IDispatch> result of invoking the GroupObjects() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		GroupObjects: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

GroupObjects: index lcid: lcid rhs: rhs
	"Private - Invoke the GroupObjects() method of the COM object.

		HRESULT __stdcall GroupObjects(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 81 variant sdword IDispatch**>
	^self invalidCall!

hPageBreaks
	"Answer the <ExcelHPageBreaks> value of the 'HPageBreaks' property of the receiver."

	| answer |
	answer := ExcelHPageBreaks newPointer.
	self get_HPageBreaks: answer.
	^answer asObject
!

hyperlinks
	"Answer the <ExcelHyperlinks> value of the 'Hyperlinks' property of the receiver."

	| answer |
	answer := ExcelHyperlinks newPointer.
	self get_Hyperlinks: answer.
	^answer asObject
!

index: lcid
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Index: lcid
		rhs: answer.
	^answer asObject
!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

labels: lcid
	"Answer the <IDispatch> result of invoking the Labels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 labels: VARIANT unspecified
		 lcid: lcid!

labels: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Labels() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Labels: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Labels: index lcid: lcid rhs: rhs
	"Private - Invoke the Labels() method of the COM object.

		HRESULT __stdcall Labels(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 82 variant sdword IDispatch**>
	^self invalidCall!

lines: lcid
	"Answer the <IDispatch> result of invoking the Lines() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 lines: VARIANT unspecified
		 lcid: lcid!

lines: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Lines() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Lines: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Lines: index lcid: lcid rhs: rhs
	"Private - Invoke the Lines() method of the COM object.

		HRESULT __stdcall Lines(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 83 variant sdword IDispatch**>
	^self invalidCall!

listBoxes: lcid
	"Answer the <IDispatch> result of invoking the ListBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 listBoxes: VARIANT unspecified
		 lcid: lcid!

listBoxes: index lcid: lcid
	"Answer the <IDispatch> result of invoking the ListBoxes() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		ListBoxes: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

ListBoxes: index lcid: lcid rhs: rhs
	"Private - Invoke the ListBoxes() method of the COM object.

		HRESULT __stdcall ListBoxes(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 84 variant sdword IDispatch**>
	^self invalidCall!

listObjects
	"Answer the <ExcelListObjects> value of the 'ListObjects' property of the receiver."

	| answer |
	answer := ExcelListObjects newPointer.
	self get_ListObjects: answer.
	^answer asObject
!

mailEnvelope
	"Answer the <OfficeIMsoEnvelopeVB> value of the 'MailEnvelope' property of the receiver."

	| answer |
	answer := OfficeIMsoEnvelopeVB newPointer.
	self get_MailEnvelope: answer.
	^answer asObject
!

move: lcid
	"Invoke the Move() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 move: VARIANT unspecified
		 after: VARIANT unspecified
		 lcid: lcid!

move: before after: after lcid: lcid
	"Invoke the Move() method of the COM object."

	^self
		Move: before asVariant
		after: after asVariant
		lcid: lcid
!

Move: before after: after lcid: lcid
	"Private - Invoke the Move() method of the COM object.

		HRESULT __stdcall Move(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After,
			[in]long lcid);"

	<virtual stdcall: hresult 18 variant variant sdword>
	^self invalidCall!

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

names
	"Answer the <ExcelNames> value of the 'Names' property of the receiver."

	| answer |
	answer := ExcelNames newPointer.
	self get_Names: answer.
	^answer asObject
!

next
	"Answer the <IDispatch> value of the 'Next' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Next: answer.
	^answer asObject
!

oleObjects: lcid
	"Answer the <IDispatch> result of invoking the OLEObjects() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 oleObjects: VARIANT unspecified
		 lcid: lcid!

oleObjects: index lcid: lcid
	"Answer the <IDispatch> result of invoking the OLEObjects() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		OLEObjects: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

OLEObjects: index lcid: lcid rhs: rhs
	"Private - Invoke the OLEObjects() method of the COM object.

		HRESULT __stdcall OLEObjects(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 86 variant sdword IDispatch**>
	^self invalidCall!

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

optionButtons: lcid
	"Answer the <IDispatch> result of invoking the OptionButtons() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 optionButtons: VARIANT unspecified
		 lcid: lcid!

optionButtons: index lcid: lcid
	"Answer the <IDispatch> result of invoking the OptionButtons() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		OptionButtons: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

OptionButtons: index lcid: lcid rhs: rhs
	"Private - Invoke the OptionButtons() method of the COM object.

		HRESULT __stdcall OptionButtons(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 93 variant sdword IDispatch**>
	^self invalidCall!

outline
	"Answer the <ExcelOutline> value of the 'Outline' property of the receiver."

	| answer |
	answer := ExcelOutline newPointer.
	self get_Outline: answer.
	^answer asObject
!

ovals: lcid
	"Answer the <IDispatch> result of invoking the Ovals() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 ovals: VARIANT unspecified
		 lcid: lcid!

ovals: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Ovals() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Ovals: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Ovals: index lcid: lcid rhs: rhs
	"Private - Invoke the Ovals() method of the COM object.

		HRESULT __stdcall Ovals(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 95 variant sdword IDispatch**>
	^self invalidCall!

pageSetup
	"Answer the <ExcelPageSetup> value of the 'PageSetup' property of the receiver."

	| answer |
	answer := ExcelPageSetup newPointer.
	self get_PageSetup: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

paste: lcid
	"Invoke the Paste() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 paste: VARIANT unspecified
		 link: VARIANT unspecified
		 lcid: lcid!

paste: destination link: link lcid: lcid
	"Invoke the Paste() method of the COM object."

	^self
		Paste: destination asVariant
		link: link asVariant
		lcid: lcid
!

Paste: destination link: link lcid: lcid
	"Private - Invoke the Paste() method of the COM object.

		HRESULT __stdcall Paste(
			[in, optional]VARIANT Destination,
			[in, optional]VARIANT Link,
			[in]long lcid);"

	<virtual stdcall: hresult 96 variant variant sdword>
	^self invalidCall!

pasteSpecial: lcid
	"Invoke the PasteSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pasteSpecial: VARIANT unspecified
		 link: VARIANT unspecified
		 displayAsIcon: VARIANT unspecified
		 iconFileName: VARIANT unspecified
		 iconIndex: VARIANT unspecified
		 iconLabel: VARIANT unspecified
		 noHTMLFormatting: VARIANT unspecified
		 lcid: lcid!

pasteSpecial: format link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel noHTMLFormatting: noHTMLFormatting lcid: lcid
	"Invoke the PasteSpecial() method of the COM object."

	^self
		PasteSpecial: format asVariant
		link: link asVariant
		displayAsIcon: displayAsIcon asVariant
		iconFileName: iconFileName asVariant
		iconIndex: iconIndex asVariant
		iconLabel: iconLabel asVariant
		noHTMLFormatting: noHTMLFormatting asVariant
		lcid: lcid
!

PasteSpecial: format link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel noHTMLFormatting: noHTMLFormatting lcid: lcid
	"Private - Invoke the PasteSpecial() method of the COM object.

		HRESULT __stdcall PasteSpecial(
			[in, optional]VARIANT Format,
			[in, optional]VARIANT Link,
			[in, optional]VARIANT DisplayAsIcon,
			[in, optional]VARIANT IconFileName,
			[in, optional]VARIANT IconIndex,
			[in, optional]VARIANT IconLabel,
			[in, optional]VARIANT NoHTMLFormatting,
			[in]long lcid);"

	<virtual stdcall: hresult 142 variant variant variant variant variant variant variant sdword>
	^self invalidCall!

pictures: lcid
	"Answer the <IDispatch> result of invoking the Pictures() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pictures: VARIANT unspecified
		 lcid: lcid!

pictures: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Pictures() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Pictures: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Pictures: index lcid: lcid rhs: rhs
	"Private - Invoke the Pictures() method of the COM object.

		HRESULT __stdcall Pictures(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 98 variant sdword IDispatch**>
	^self invalidCall!

pivotTables: lcid
	"Answer the <IDispatch> result of invoking the PivotTables() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pivotTables: VARIANT unspecified
		 lcid: lcid!

pivotTables: index lcid: lcid
	"Answer the <IDispatch> result of invoking the PivotTables() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		PivotTables: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

PivotTables: index lcid: lcid rhs: rhs
	"Private - Invoke the PivotTables() method of the COM object.

		HRESULT __stdcall PivotTables(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 99 variant sdword IDispatch**>
	^self invalidCall!

pivotTableWizard: lcid
	"Answer the <ExcelPivotTable> result of invoking the PivotTableWizard() method of the COM object.
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
		 connection: VARIANT unspecified
		 lcid: lcid!

pivotTableWizard: sourceType sourceData: sourceData tableDestination: tableDestination tableName: tableName rowGrand: rowGrand columnGrand: columnGrand saveData: saveData hasAutoFormat: hasAutoFormat autoPage: autoPage reserved: reserved backgroundQuery: backgroundQuery optimizeCache: optimizeCache pageFieldOrder: pageFieldOrder pageFieldWrapCount: pageFieldWrapCount readData: readData connection: connection lcid: lcid
	"Answer the <ExcelPivotTable> result of invoking the PivotTableWizard() method of the COM object."

	| answer |
	answer := ExcelPivotTable newPointer.
	self
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
		lcid: lcid
		rhs: answer.
	^answer asObject
!

PivotTableWizard: sourceType sourceData: sourceData tableDestination: tableDestination tableName: tableName rowGrand: rowGrand columnGrand: columnGrand saveData: saveData hasAutoFormat: hasAutoFormat autoPage: autoPage reserved: reserved backgroundQuery: backgroundQuery optimizeCache: optimizeCache pageFieldOrder: pageFieldOrder pageFieldWrapCount: pageFieldWrapCount readData: readData connection: connection lcid: lcid rhs: rhs
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
			[in, optional]VARIANT Connection,
			[in]long lcid,
			[out, retval]PivotTable** RHS);"

	<virtual stdcall: hresult 100 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword ExcelPivotTable**>
	^self invalidCall!

previous
	"Answer the <IDispatch> value of the 'Previous' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Previous: answer.
	^answer asObject
!

printOut: lcid
	"Invoke the PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified
		 ignorePrintAreas: VARIANT unspecified
		 lcid: lcid!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName ignorePrintAreas: ignorePrintAreas lcid: lcid
	"Invoke the PrintOut() method of the COM object."

	^self
		PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
		prToFileName: prToFileName asVariant
		ignorePrintAreas: ignorePrintAreas asVariant
		lcid: lcid
!

PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName ignorePrintAreas: ignorePrintAreas lcid: lcid
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
			[in, optional]VARIANT IgnorePrintAreas,
			[in]long lcid);"

	<virtual stdcall: hresult 147 variant variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

printPreview: lcid
	"Invoke the PrintPreview() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 printPreview: VARIANT unspecified
		 lcid: lcid!

printPreview: enableChanges lcid: lcid
	"Invoke the PrintPreview() method of the COM object."

	^self
		PrintPreview: enableChanges asVariant
		lcid: lcid
!

PrintPreview: enableChanges lcid: lcid
	"Private - Invoke the PrintPreview() method of the COM object.

		HRESULT __stdcall PrintPreview(
			[in, optional]VARIANT EnableChanges,
			[in]long lcid);"

	<virtual stdcall: hresult 31 variant sdword>
	^self invalidCall!

protect
	"Invoke the Protect() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 protect: VARIANT unspecified
		 drawingObjects: VARIANT unspecified
		 contents: VARIANT unspecified
		 scenarios: VARIANT unspecified
		 userInterfaceOnly: VARIANT unspecified
		 allowFormattingCells: VARIANT unspecified
		 allowFormattingColumns: VARIANT unspecified
		 allowFormattingRows: VARIANT unspecified
		 allowInsertingColumns: VARIANT unspecified
		 allowInsertingRows: VARIANT unspecified
		 allowInsertingHyperlinks: VARIANT unspecified
		 allowDeletingColumns: VARIANT unspecified
		 allowDeletingRows: VARIANT unspecified
		 allowSorting: VARIANT unspecified
		 allowFiltering: VARIANT unspecified
		 allowUsingPivotTables: VARIANT unspecified!

protect: password drawingObjects: drawingObjects contents: contents scenarios: scenarios userInterfaceOnly: userInterfaceOnly allowFormattingCells: allowFormattingCells allowFormattingColumns: allowFormattingColumns allowFormattingRows: allowFormattingRows allowInsertingColumns: allowInsertingColumns allowInsertingRows: allowInsertingRows allowInsertingHyperlinks: allowInsertingHyperlinks allowDeletingColumns: allowDeletingColumns allowDeletingRows: allowDeletingRows allowSorting: allowSorting allowFiltering: allowFiltering allowUsingPivotTables: allowUsingPivotTables
	"Invoke the Protect() method of the COM object."

	^self
		Protect: password asVariant
		drawingObjects: drawingObjects asVariant
		contents: contents asVariant
		scenarios: scenarios asVariant
		userInterfaceOnly: userInterfaceOnly asVariant
		allowFormattingCells: allowFormattingCells asVariant
		allowFormattingColumns: allowFormattingColumns asVariant
		allowFormattingRows: allowFormattingRows asVariant
		allowInsertingColumns: allowInsertingColumns asVariant
		allowInsertingRows: allowInsertingRows asVariant
		allowInsertingHyperlinks: allowInsertingHyperlinks asVariant
		allowDeletingColumns: allowDeletingColumns asVariant
		allowDeletingRows: allowDeletingRows asVariant
		allowSorting: allowSorting asVariant
		allowFiltering: allowFiltering asVariant
		allowUsingPivotTables: allowUsingPivotTables asVariant
!

Protect: password drawingObjects: drawingObjects contents: contents scenarios: scenarios userInterfaceOnly: userInterfaceOnly allowFormattingCells: allowFormattingCells allowFormattingColumns: allowFormattingColumns allowFormattingRows: allowFormattingRows allowInsertingColumns: allowInsertingColumns allowInsertingRows: allowInsertingRows allowInsertingHyperlinks: allowInsertingHyperlinks allowDeletingColumns: allowDeletingColumns allowDeletingRows: allowDeletingRows allowSorting: allowSorting allowFiltering: allowFiltering allowUsingPivotTables: allowUsingPivotTables
	"Private - Invoke the Protect() method of the COM object.

		HRESULT __stdcall Protect(
			[in, optional]VARIANT Password,
			[in, optional]VARIANT DrawingObjects,
			[in, optional]VARIANT Contents,
			[in, optional]VARIANT Scenarios,
			[in, optional]VARIANT UserInterfaceOnly,
			[in, optional]VARIANT AllowFormattingCells,
			[in, optional]VARIANT AllowFormattingColumns,
			[in, optional]VARIANT AllowFormattingRows,
			[in, optional]VARIANT AllowInsertingColumns,
			[in, optional]VARIANT AllowInsertingRows,
			[in, optional]VARIANT AllowInsertingHyperlinks,
			[in, optional]VARIANT AllowDeletingColumns,
			[in, optional]VARIANT AllowDeletingRows,
			[in, optional]VARIANT AllowSorting,
			[in, optional]VARIANT AllowFiltering,
			[in, optional]VARIANT AllowUsingPivotTables);"

	<virtual stdcall: hresult 143 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant>
	^self invalidCall!

protectContents: lcid
	"Answer the <varbool> value of the 'ProtectContents' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ProtectContents: lcid
		rhs: answer.
	^answer asObject
!

protectDrawingObjects: lcid
	"Answer the <varbool> value of the 'ProtectDrawingObjects' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ProtectDrawingObjects: lcid
		rhs: answer.
	^answer asObject
!

protection
	"Answer the <ExcelProtection> value of the 'Protection' property of the receiver."

	| answer |
	answer := ExcelProtection newPointer.
	self get_Protection: answer.
	^answer asObject
!

protectionMode: lcid
	"Answer the <varbool> value of the 'ProtectionMode' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ProtectionMode: lcid
		rhs: answer.
	^answer asObject
!

protectScenarios: lcid
	"Answer the <varbool> value of the 'ProtectScenarios' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ProtectScenarios: lcid
		rhs: answer.
	^answer asObject
!

put__CodeName: rhs
	"Private - Set the value of the '_CodeName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall _CodeName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 bstr>
	^self invalidCall!

put__DisplayRightToLeft: lcid rhs: rhs
	"Private - Set the value of the '_DisplayRightToLeft' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall _DisplayRightToLeft(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 129 sdword sdword>
	^self invalidCall!

put_AutoFilterMode: lcid rhs: rhs
	"Private - Set the value of the 'AutoFilterMode' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoFilterMode(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 47 sdword varbool>
	^self invalidCall!

put_DisplayAutomaticPageBreaks: lcid rhs: rhs
	"Private - Set the value of the 'DisplayAutomaticPageBreaks' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayAutomaticPageBreaks(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 64 sdword varbool>
	^self invalidCall!

put_DisplayPageBreaks: rhs
	"Private - Set the value of the 'DisplayPageBreaks' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayPageBreaks(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 123 varbool>
	^self invalidCall!

put_DisplayRightToLeft: lcid rhs: rhs
	"Private - Set the value of the 'DisplayRightToLeft' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayRightToLeft(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 132 sdword varbool>
	^self invalidCall!

put_EnableAutoFilter: lcid rhs: rhs
	"Private - Set the value of the 'EnableAutoFilter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableAutoFilter(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 69 sdword varbool>
	^self invalidCall!

put_EnableCalculation: rhs
	"Private - Set the value of the 'EnableCalculation' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableCalculation(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 52 varbool>
	^self invalidCall!

put_EnableFormatConditionsCalculation: rhs
	"Private - Set the value of the 'EnableFormatConditionsCalculation' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableFormatConditionsCalculation(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 149 varbool>
	^self invalidCall!

put_EnableOutlining: lcid rhs: rhs
	"Private - Set the value of the 'EnableOutlining' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableOutlining(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 73 sdword varbool>
	^self invalidCall!

put_EnablePivotTable: lcid rhs: rhs
	"Private - Set the value of the 'EnablePivotTable' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnablePivotTable(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 75 sdword varbool>
	^self invalidCall!

put_EnableSelection: rhs
	"Private - Set the value of the 'EnableSelection' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall EnableSelection(
			[in]XlEnableSelection RHS);"

	<virtual stdcall: hresult 71 sdword>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 20 bstr>
	^self invalidCall!

put_OnCalculate: lcid rhs: rhs
	"Private - Set the value of the 'OnCalculate' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnCalculate(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 88 sdword bstr>
	^self invalidCall!

put_OnData: lcid rhs: rhs
	"Private - Set the value of the 'OnData' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnData(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 90 sdword bstr>
	^self invalidCall!

put_OnDoubleClick: lcid rhs: rhs
	"Private - Set the value of the 'OnDoubleClick' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnDoubleClick(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 23 sdword bstr>
	^self invalidCall!

put_OnEntry: lcid rhs: rhs
	"Private - Set the value of the 'OnEntry' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnEntry(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 92 sdword bstr>
	^self invalidCall!

put_OnSheetActivate: lcid rhs: rhs
	"Private - Set the value of the 'OnSheetActivate' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnSheetActivate(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 25 sdword bstr>
	^self invalidCall!

put_OnSheetDeactivate: lcid rhs: rhs
	"Private - Set the value of the 'OnSheetDeactivate' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnSheetDeactivate(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 27 sdword bstr>
	^self invalidCall!

put_ScrollArea: rhs
	"Private - Set the value of the 'ScrollArea' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ScrollArea(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 106 bstr>
	^self invalidCall!

put_StandardWidth: lcid rhs: rhs
	"Private - Set the value of the 'StandardWidth' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall StandardWidth(
			[in]long lcid,
			[in]double RHS);"

	<virtual stdcall: hresult 113 sdword double>
	^self invalidCall!

put_TransitionExpEval: lcid rhs: rhs
	"Private - Set the value of the 'TransitionExpEval' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TransitionExpEval(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 44 sdword varbool>
	^self invalidCall!

put_TransitionFormEntry: lcid rhs: rhs
	"Private - Set the value of the 'TransitionFormEntry' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TransitionFormEntry(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 116 sdword varbool>
	^self invalidCall!

put_Visible: lcid rhs: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[in]XlSheetVisibility RHS);"

	<virtual stdcall: hresult 41 sdword sdword>
	^self invalidCall!

queryTables
	"Answer the <ExcelQueryTables> value of the 'QueryTables' property of the receiver."

	| answer |
	answer := ExcelQueryTables newPointer.
	self get_QueryTables: answer.
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

rectangles: lcid
	"Answer the <IDispatch> result of invoking the Rectangles() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 rectangles: VARIANT unspecified
		 lcid: lcid!

rectangles: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Rectangles() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Rectangles: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Rectangles: index lcid: lcid rhs: rhs
	"Private - Invoke the Rectangles() method of the COM object.

		HRESULT __stdcall Rectangles(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 102 variant sdword IDispatch**>
	^self invalidCall!

resetAllPageBreaks
	"Invoke the ResetAllPageBreaks() method of the COM object."

	^self ResetAllPageBreaks
!

ResetAllPageBreaks
	"Private - Invoke the ResetAllPageBreaks() method of the COM object.

		HRESULT __stdcall ResetAllPageBreaks();"

	<virtual stdcall: hresult 79>
	^self invalidCall!

rows
	"Answer the <ExcelRange> value of the 'Rows' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Rows: answer.
	^answer asObject
!

saveAs: filename
	"Invoke the SaveAs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 saveAs: filename
		 fileFormat: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 textCodepage: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 local: VARIANT unspecified!

saveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout local: local
	"Invoke the SaveAs() method of the COM object."

	^self
		SaveAs: filename
		fileFormat: fileFormat asVariant
		password: password asVariant
		writeResPassword: writeResPassword asVariant
		readOnlyRecommended: readOnlyRecommended asVariant
		createBackup: createBackup asVariant
		addToMru: addToMru asVariant
		textCodepage: textCodepage asVariant
		textVisualLayout: textVisualLayout asVariant
		local: local asVariant
!

SaveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout local: local
	"Private - Invoke the SaveAs() method of the COM object.

		HRESULT __stdcall SaveAs(
			[in]BSTR Filename,
			[in, optional]VARIANT FileFormat,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT ReadOnlyRecommended,
			[in, optional]VARIANT CreateBackup,
			[in, optional]VARIANT AddToMru,
			[in, optional]VARIANT TextCodepage,
			[in, optional]VARIANT TextVisualLayout,
			[in, optional]VARIANT Local);"

	<virtual stdcall: hresult 138 bstr variant variant variant variant variant variant variant variant variant>
	^self invalidCall!

scenarios: lcid
	"Answer the <IDispatch> result of invoking the Scenarios() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 scenarios: VARIANT unspecified
		 lcid: lcid!

scenarios: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Scenarios() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Scenarios: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Scenarios: index lcid: lcid rhs: rhs
	"Private - Invoke the Scenarios() method of the COM object.

		HRESULT __stdcall Scenarios(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 104 variant sdword IDispatch**>
	^self invalidCall!

scripts
	"Answer the <OfficeScripts> value of the 'Scripts' property of the receiver."

	| answer |
	answer := OfficeScripts newPointer.
	self get_Scripts: answer.
	^answer asObject
!

scrollArea
	"Answer the <bstr> value of the 'ScrollArea' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ScrollArea: answer.
	^answer asObject
!

scrollArea: rhs
	"Set the 'ScrollArea' property of the receiver to the <bstr> value of the argument."

	self put_ScrollArea: rhs
!

scrollBars: lcid
	"Answer the <IDispatch> result of invoking the ScrollBars() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 scrollBars: VARIANT unspecified
		 lcid: lcid!

scrollBars: index lcid: lcid
	"Answer the <IDispatch> result of invoking the ScrollBars() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		ScrollBars: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

ScrollBars: index lcid: lcid rhs: rhs
	"Private - Invoke the ScrollBars() method of the COM object.

		HRESULT __stdcall ScrollBars(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 107 variant sdword IDispatch**>
	^self invalidCall!

select: lcid
	"Invoke the Select() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 select: VARIANT unspecified
		 lcid: lcid!

select: replace lcid: lcid
	"Invoke the Select() method of the COM object."

	^self
		Select: replace asVariant
		lcid: lcid
!

Select: replace lcid: lcid
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[in, optional]VARIANT Replace,
			[in]long lcid);"

	<virtual stdcall: hresult 38 variant sdword>
	^self invalidCall!

setBackgroundPicture: filename
	"Invoke the SetBackgroundPicture() method of the COM object."

	^self SetBackgroundPicture: filename
!

SetBackgroundPicture: filename
	"Private - Invoke the SetBackgroundPicture() method of the COM object.

		HRESULT __stdcall SetBackgroundPicture(
			[in]BSTR Filename);"

	<virtual stdcall: hresult 48 bstr>
	^self invalidCall!

shapes
	"Answer the <ExcelShapes> value of the 'Shapes' property of the receiver."

	| answer |
	answer := ExcelShapes newPointer.
	self get_Shapes: answer.
	^answer asObject
!

showAllData: lcid
	"Invoke the ShowAllData() method of the COM object."

	^self ShowAllData: lcid
!

ShowAllData: lcid
	"Private - Invoke the ShowAllData() method of the COM object.

		HRESULT __stdcall ShowAllData(
			[in]long lcid);"

	<virtual stdcall: hresult 108 sdword>
	^self invalidCall!

showDataForm: lcid
	"Invoke the ShowDataForm() method of the COM object."

	^self ShowDataForm: lcid
!

ShowDataForm: lcid
	"Private - Invoke the ShowDataForm() method of the COM object.

		HRESULT __stdcall ShowDataForm(
			[in]long lcid);"

	<virtual stdcall: hresult 109 sdword>
	^self invalidCall!

smartTags
	"Answer the <ExcelSmartTags> value of the 'SmartTags' property of the receiver."

	| answer |
	answer := ExcelSmartTags newPointer.
	self get_SmartTags: answer.
	^answer asObject
!

sort
	"Answer the <ExcelSort> value of the 'Sort' property of the receiver."

	| answer |
	answer := ExcelSort newPointer.
	self get_Sort: answer.
	^answer asObject
!

spinners: lcid
	"Answer the <IDispatch> result of invoking the Spinners() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 spinners: VARIANT unspecified
		 lcid: lcid!

spinners: index lcid: lcid
	"Answer the <IDispatch> result of invoking the Spinners() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Spinners: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Spinners: index lcid: lcid rhs: rhs
	"Private - Invoke the Spinners() method of the COM object.

		HRESULT __stdcall Spinners(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 110 variant sdword IDispatch**>
	^self invalidCall!

standardHeight: lcid
	"Answer the <double> value of the 'StandardHeight' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_StandardHeight: lcid
		rhs: answer.
	^answer asObject
!

standardWidth: lcid
	"Answer the <double> value of the 'StandardWidth' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self
		get_StandardWidth: lcid
		rhs: answer.
	^answer asObject
!

standardWidth: lcid rhs: rhs
	"Set the 'StandardWidth' property of the receiver to the <double> value of the argument."

	self
		put_StandardWidth: lcid
		rhs: rhs
!

tab
	"Answer the <ExcelTab> value of the 'Tab' property of the receiver."

	| answer |
	answer := ExcelTab newPointer.
	self get_Tab: answer.
	^answer asObject
!

textBoxes: lcid
	"Answer the <IDispatch> result of invoking the TextBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 textBoxes: VARIANT unspecified
		 lcid: lcid!

textBoxes: index lcid: lcid
	"Answer the <IDispatch> result of invoking the TextBoxes() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		TextBoxes: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

TextBoxes: index lcid: lcid rhs: rhs
	"Private - Invoke the TextBoxes() method of the COM object.

		HRESULT __stdcall TextBoxes(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 114 variant sdword IDispatch**>
	^self invalidCall!

transitionExpEval: lcid
	"Answer the <varbool> value of the 'TransitionExpEval' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_TransitionExpEval: lcid
		rhs: answer.
	^answer asObject
!

transitionExpEval: lcid rhs: rhs
	"Set the 'TransitionExpEval' property of the receiver to the <varbool> value of the argument."

	self
		put_TransitionExpEval: lcid
		rhs: rhs
!

transitionFormEntry: lcid
	"Answer the <varbool> value of the 'TransitionFormEntry' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_TransitionFormEntry: lcid
		rhs: answer.
	^answer asObject
!

transitionFormEntry: lcid rhs: rhs
	"Set the 'TransitionFormEntry' property of the receiver to the <varbool> value of the argument."

	self
		put_TransitionFormEntry: lcid
		rhs: rhs
!

type: lcid
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Type: lcid
		rhs: answer.
	^answer asObject
!

unprotect: lcid
	"Invoke the Unprotect() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 unprotect: VARIANT unspecified
		 lcid: lcid!

unprotect: password lcid: lcid
	"Invoke the Unprotect() method of the COM object."

	^self
		Unprotect: password asVariant
		lcid: lcid
!

Unprotect: password lcid: lcid
	"Private - Invoke the Unprotect() method of the COM object.

		HRESULT __stdcall Unprotect(
			[in, optional]VARIANT Password,
			[in]long lcid);"

	<virtual stdcall: hresult 39 variant sdword>
	^self invalidCall!

usedRange: lcid
	"Answer the <ExcelRange> value of the 'UsedRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self
		get_UsedRange: lcid
		rhs: answer.
	^answer asObject
!

visible: lcid
	"Answer the <sdword> value of the 'Visible' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Visible: lcid
		rhs: answer.
	^answer asObject
!

visible: lcid rhs: rhs
	"Set the 'Visible' property of the receiver to the <sdword> value of the argument."

	self
		put_Visible: lcid
		rhs: rhs
!

vPageBreaks
	"Answer the <ExcelVPageBreaks> value of the 'VPageBreaks' property of the receiver."

	| answer |
	answer := ExcelVPageBreaks newPointer.
	self get_VPageBreaks: answer.
	^answer asObject
!

xmlDataQuery: xPath
	"Answer the <ExcelRange> result of invoking the XmlDataQuery() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 xmlDataQuery: xPath
		 selectionNamespaces: VARIANT unspecified
		 map: VARIANT unspecified!

xmlDataQuery: xPath selectionNamespaces: selectionNamespaces map: map
	"Answer the <ExcelRange> result of invoking the XmlDataQuery() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		XmlDataQuery: xPath
		selectionNamespaces: selectionNamespaces asVariant
		map: map asVariant
		rhs: answer.
	^answer asObject
!

XmlDataQuery: xPath selectionNamespaces: selectionNamespaces map: map rhs: rhs
	"Private - Invoke the XmlDataQuery() method of the COM object.

		HRESULT __stdcall XmlDataQuery(
			[in]BSTR XPath,
			[in, optional]VARIANT SelectionNamespaces,
			[in, optional]VARIANT Map,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 145 bstr variant variant ExcelRange**>
	^self invalidCall!

xmlMapQuery: xPath
	"Answer the <ExcelRange> result of invoking the XmlMapQuery() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 xmlMapQuery: xPath
		 selectionNamespaces: VARIANT unspecified
		 map: VARIANT unspecified!

xmlMapQuery: xPath selectionNamespaces: selectionNamespaces map: map
	"Answer the <ExcelRange> result of invoking the XmlMapQuery() method of the COM object."

	| answer |
	answer := ExcelRange newPointer.
	self
		XmlMapQuery: xPath
		selectionNamespaces: selectionNamespaces asVariant
		map: map asVariant
		rhs: answer.
	^answer asObject
!

XmlMapQuery: xPath selectionNamespaces: selectionNamespaces map: map rhs: rhs
	"Private - Invoke the XmlMapQuery() method of the COM object.

		HRESULT __stdcall XmlMapQuery(
			[in]BSTR XPath,
			[in, optional]VARIANT SelectionNamespaces,
			[in, optional]VARIANT Map,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 146 bstr variant variant ExcelRange**>
	^self invalidCall! !
!Excel_Worksheet categoriesFor: #__printOut:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #_checkSpelling:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:ignoreFinalYaa:spellScript:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:ignoreFinalYaa:spellScript:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #_codeName!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #_codeName:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #_displayRightToLeft:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #_displayRightToLeft:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #_evaluate:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_Evaluate:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #_pasteSpecial:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_pasteSpecial:link:displayAsIcon:iconFileName:iconIndex:iconLabel:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_PasteSpecial:link:displayAsIcon:iconFileName:iconIndex:iconLabel:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #_printOut:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #_protect:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_protect:drawingObjects:contents:scenarios:userInterfaceOnly:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_Protect:drawingObjects:contents:scenarios:userInterfaceOnly:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #_saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #_SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #_saveAs:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #activate:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Activate:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #application!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #arcs:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #arcs:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Arcs:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #autoFilter!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #autoFilterMode:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #autoFilterMode:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #buttons:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #buttons:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Buttons:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #calculate:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Calculate:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #cells!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #chartObjects:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #chartObjects:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ChartObjects:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #checkBoxes:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #checkBoxes:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #CheckBoxes:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #checkSpelling:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #circleInvalid!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #CircleInvalid!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #circularReference:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #clearArrows:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ClearArrows:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #clearCircles!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ClearCircles!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #codeName!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #columns!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #comments!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #consolidationFunction:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #consolidationOptions:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #consolidationSources:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #copy:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #copy:after:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Copy:after:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #customProperties!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #delete:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Delete:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #displayAutomaticPageBreaks:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #displayAutomaticPageBreaks:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #displayPageBreaks!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #displayPageBreaks:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #displayRightToLeft:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #displayRightToLeft:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #drawingObjects:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #drawingObjects:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #DrawingObjects:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #drawings:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #drawings:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Drawings:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #dropDowns:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #dropDowns:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #DropDowns:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #enableAutoFilter:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableAutoFilter:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableCalculation!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableCalculation:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableFormatConditionsCalculation!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableFormatConditionsCalculation:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableOutlining:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableOutlining:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enablePivotTable:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enablePivotTable:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableSelection!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #enableSelection:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #evaluate:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Evaluate:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #exportAsFixedFormat:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #exportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ExportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #filterMode:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #get__CodeName:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get__DisplayRightToLeft:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Application:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_AutoFilter:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_AutoFilterMode:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Cells:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_CircularReference:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_CodeName:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Columns:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Comments:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ConsolidationFunction:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ConsolidationOptions:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ConsolidationSources:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_CustomProperties:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_DisplayAutomaticPageBreaks:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_DisplayPageBreaks:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_DisplayRightToLeft:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_EnableAutoFilter:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_EnableCalculation:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_EnableFormatConditionsCalculation:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_EnableOutlining:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_EnablePivotTable:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_EnableSelection:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_FilterMode:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_HPageBreaks:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Hyperlinks:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Index:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ListObjects:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_MailEnvelope:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Name:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Names:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Next:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_OnCalculate:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_OnData:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_OnDoubleClick:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_OnEntry:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Outline:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_PageSetup:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Previous:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ProtectContents:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ProtectDrawingObjects:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Protection:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ProtectionMode:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ProtectScenarios:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_QueryTables:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Range:cell2:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Rows:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Scripts:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_ScrollArea:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Shapes:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_SmartTags:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Sort:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_StandardHeight:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_StandardWidth:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Tab:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_TransitionExpEval:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_TransitionFormEntry:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Type:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_UsedRange:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_Visible:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #get_VPageBreaks:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #groupBoxes:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #groupBoxes:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #GroupBoxes:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #groupObjects:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #groupObjects:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #GroupObjects:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #hPageBreaks!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #hyperlinks!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #index:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #isExtensible!**auto generated**!public!testing! !
!Excel_Worksheet categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!Excel_Worksheet categoriesFor: #labels:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #labels:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Labels:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #lines:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #lines:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Lines:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #listBoxes:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #listBoxes:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ListBoxes:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #listObjects!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #mailEnvelope!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #move:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #move:after:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Move:after:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #name!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #name:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #names!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #next!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #oleObjects:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #oleObjects:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #OLEObjects:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #onCalculate:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onCalculate:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onData:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onData:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onDoubleClick:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onDoubleClick:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onEntry:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onEntry:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onSheetActivate:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onSheetActivate:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onSheetDeactivate:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #onSheetDeactivate:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #optionButtons:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #optionButtons:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #OptionButtons:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #outline!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #ovals:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ovals:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Ovals:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #pageSetup!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #paste:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #paste:link:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Paste:link:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #pasteSpecial:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #pasteSpecial:link:displayAsIcon:iconFileName:iconIndex:iconLabel:noHTMLFormatting:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #PasteSpecial:link:displayAsIcon:iconFileName:iconIndex:iconLabel:noHTMLFormatting:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #pictures:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #pictures:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Pictures:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #pivotTables:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #pivotTables:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #PivotTables:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #pivotTableWizard:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #pivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #PivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #previous!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #printOut:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #printPreview:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #printPreview:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #PrintPreview:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #protect!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #protect:drawingObjects:contents:scenarios:userInterfaceOnly:allowFormattingCells:allowFormattingColumns:allowFormattingRows:allowInsertingColumns:allowInsertingRows:allowInsertingHyperlinks:allowDeletingColumns:allowDeletingRows:allowSorting:allowFiltering:allowUsingPivotTables:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Protect:drawingObjects:contents:scenarios:userInterfaceOnly:allowFormattingCells:allowFormattingColumns:allowFormattingRows:allowInsertingColumns:allowInsertingRows:allowInsertingHyperlinks:allowDeletingColumns:allowDeletingRows:allowSorting:allowFiltering:allowUsingPivotTables:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #protectContents:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #protectDrawingObjects:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #protection!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #protectionMode:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #protectScenarios:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #put__CodeName:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put__DisplayRightToLeft:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_AutoFilterMode:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_DisplayAutomaticPageBreaks:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_DisplayPageBreaks:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_DisplayRightToLeft:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_EnableAutoFilter:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_EnableCalculation:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_EnableFormatConditionsCalculation:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_EnableOutlining:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_EnablePivotTable:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_EnableSelection:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_Name:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_OnCalculate:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_OnData:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_OnDoubleClick:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_OnEntry:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_ScrollArea:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_StandardWidth:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_TransitionExpEval:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_TransitionFormEntry:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #put_Visible:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #queryTables!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #range:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #range:cell2:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #rectangles:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #rectangles:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Rectangles:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #resetAllPageBreaks!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ResetAllPageBreaks!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #rows!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #saveAs:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:local:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:local:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #scenarios:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #scenarios:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Scenarios:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #scripts!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #scrollArea!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #scrollArea:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #scrollBars:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #scrollBars:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ScrollBars:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #select:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #select:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Select:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #setBackgroundPicture:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #SetBackgroundPicture:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #shapes!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #showAllData:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ShowAllData:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #showDataForm:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #ShowDataForm:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #smartTags!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #sort!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #spinners:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #spinners:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Spinners:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #standardHeight:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #standardWidth:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #standardWidth:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #tab!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #textBoxes:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #textBoxes:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #TextBoxes:lcid:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #transitionExpEval:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #transitionExpEval:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #transitionFormEntry:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #transitionFormEntry:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #type:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #unprotect:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #unprotect:lcid:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #Unprotect:lcid:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #usedRange:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #visible:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #visible:rhs:!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #vPageBreaks!**auto generated**!properties!public! !
!Excel_Worksheet categoriesFor: #xmlDataQuery:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #xmlDataQuery:selectionNamespaces:map:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #XmlDataQuery:selectionNamespaces:map:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !
!Excel_Worksheet categoriesFor: #xmlMapQuery:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #xmlMapQuery:selectionNamespaces:map:!**auto generated**!methods!public! !
!Excel_Worksheet categoriesFor: #XmlMapQuery:selectionNamespaces:map:rhs:!**auto generated**!COM Interfaces-_Worksheet!private! !

!Excel_Worksheet class methodsFor!

clsid
	"Private - Answer the CLSID of the coclass (Worksheet) for which the receiver is the default interface."

	^CLSID fromString: '{00020820-0000-0000-C000-000000000046}'
!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel._Worksheet'
		Excel_Worksheet defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Activate:
			argumentTypes: 'sdword';
		defineFunction: #Copy:after:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #Delete:
			argumentTypes: 'sdword';
		defineFunction: #get_CodeName:
			argumentTypes: 'bstr*';
		defineFunction: #get__CodeName:
			argumentTypes: 'bstr*';
		defineFunction: #put__CodeName:
			argumentTypes: 'bstr';
		defineFunction: #get_Index:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #Move:after:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_Next:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_OnDoubleClick:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnDoubleClick:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnSheetActivate:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnSheetActivate:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnSheetDeactivate:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnSheetDeactivate:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_PageSetup:
			argumentTypes: 'ExcelPageSetup**';
		defineFunction: #get_Previous:
			argumentTypes: 'IDispatch**';
		defineFunction: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant sdword';
		defineFunction: #PrintPreview:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #_Protect:drawingObjects:contents:scenarios:userInterfaceOnly:lcid:
			argumentTypes: 'variant variant variant variant variant sdword';
		defineFunction: #get_ProtectContents:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_ProtectDrawingObjects:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_ProtectionMode:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_ProtectScenarios:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #_SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:lcid:
			argumentTypes: 'bstr variant variant variant variant variant variant variant variant sdword';
		defineFunction: #Select:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #Unprotect:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #get_Visible:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_Visible:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_Shapes:
			argumentTypes: 'ExcelShapes**';
		defineFunction: #get_TransitionExpEval:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_TransitionExpEval:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #Arcs:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_AutoFilterMode:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_AutoFilterMode:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #SetBackgroundPicture:
			argumentTypes: 'bstr';
		defineFunction: #Buttons:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Calculate:
			argumentTypes: 'sdword';
		defineFunction: #get_EnableCalculation:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableCalculation:
			argumentTypes: 'varbool';
		defineFunction: #get_Cells:
			argumentTypes: 'ExcelRange**';
		defineFunction: #ChartObjects:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #CheckBoxes:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:lcid:
			argumentTypes: 'variant variant variant variant sdword';
		defineFunction: #get_CircularReference:rhs:
			argumentTypes: 'sdword ExcelRange**';
		defineFunction: #ClearArrows:
			argumentTypes: 'sdword';
		defineFunction: #get_Columns:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_ConsolidationFunction:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #get_ConsolidationOptions:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #get_ConsolidationSources:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #get_DisplayAutomaticPageBreaks:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayAutomaticPageBreaks:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #Drawings:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #DrawingObjects:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #DropDowns:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_EnableAutoFilter:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_EnableAutoFilter:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_EnableSelection:
			argumentTypes: 'sdword*';
		defineFunction: #put_EnableSelection:
			argumentTypes: 'sdword';
		defineFunction: #get_EnableOutlining:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_EnableOutlining:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_EnablePivotTable:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_EnablePivotTable:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #Evaluate:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #_Evaluate:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #get_FilterMode:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #ResetAllPageBreaks;
		defineFunction: #GroupBoxes:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #GroupObjects:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Labels:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Lines:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #ListBoxes:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_Names:
			argumentTypes: 'ExcelNames**';
		defineFunction: #OLEObjects:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_OnCalculate:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnCalculate:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnData:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnData:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnEntry:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnEntry:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #OptionButtons:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_Outline:
			argumentTypes: 'ExcelOutline**';
		defineFunction: #Ovals:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Paste:link:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #_PasteSpecial:link:displayAsIcon:iconFileName:iconIndex:iconLabel:lcid:
			argumentTypes: 'variant variant variant variant variant variant sdword';
		defineFunction: #Pictures:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #PivotTables:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #PivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:lcid:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword ExcelPivotTable**';
		defineFunction: #get_Range:cell2:rhs:
			argumentTypes: 'variant variant ExcelRange**';
		defineFunction: #Rectangles:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_Rows:
			argumentTypes: 'ExcelRange**';
		defineFunction: #Scenarios:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_ScrollArea:
			argumentTypes: 'bstr*';
		defineFunction: #put_ScrollArea:
			argumentTypes: 'bstr';
		defineFunction: #ScrollBars:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #ShowAllData:
			argumentTypes: 'sdword';
		defineFunction: #ShowDataForm:
			argumentTypes: 'sdword';
		defineFunction: #Spinners:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_StandardHeight:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #get_StandardWidth:rhs:
			argumentTypes: 'sdword double*';
		defineFunction: #put_StandardWidth:rhs:
			argumentTypes: 'sdword double';
		defineFunction: #TextBoxes:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_TransitionFormEntry:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_TransitionFormEntry:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_Type:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #get_UsedRange:rhs:
			argumentTypes: 'sdword ExcelRange**';
		defineFunction: #get_HPageBreaks:
			argumentTypes: 'ExcelHPageBreaks**';
		defineFunction: #get_VPageBreaks:
			argumentTypes: 'ExcelVPageBreaks**';
		defineFunction: #get_QueryTables:
			argumentTypes: 'ExcelQueryTables**';
		defineFunction: #get_DisplayPageBreaks:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayPageBreaks:
			argumentTypes: 'varbool';
		defineFunction: #get_Comments:
			argumentTypes: 'ExcelComments**';
		defineFunction: #get_Hyperlinks:
			argumentTypes: 'ExcelHyperlinks**';
		defineFunction: #ClearCircles;
		defineFunction: #CircleInvalid;
		defineFunction: #get__DisplayRightToLeft:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put__DisplayRightToLeft:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_AutoFilter:
			argumentTypes: 'ExcelAutoFilter**';
		defineFunction: #get_DisplayRightToLeft:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_DisplayRightToLeft:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_Scripts:
			argumentTypes: 'OfficeScripts**';
		defineFunction: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant sdword';
		defineFunction: #_CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:ignoreFinalYaa:spellScript:lcid:
			argumentTypes: 'variant variant variant variant variant variant sdword';
		defineFunction: #get_Tab:
			argumentTypes: 'ExcelTab**';
		defineFunction: #get_MailEnvelope:
			argumentTypes: 'OfficeIMsoEnvelopeVB**';
		defineFunction: #SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:local:
			argumentTypes: 'bstr variant variant variant variant variant variant variant variant variant';
		defineFunction: #get_CustomProperties:
			argumentTypes: 'ExcelCustomProperties**';
		defineFunction: #get_SmartTags:
			argumentTypes: 'ExcelSmartTags**';
		defineFunction: #get_Protection:
			argumentTypes: 'ExcelProtection**';
		defineFunction: #PasteSpecial:link:displayAsIcon:iconFileName:iconIndex:iconLabel:noHTMLFormatting:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant sdword';
		defineFunction: #Protect:drawingObjects:contents:scenarios:userInterfaceOnly:allowFormattingCells:allowFormattingColumns:allowFormattingRows:allowInsertingColumns:allowInsertingRows:allowInsertingHyperlinks:allowDeletingColumns:allowDeletingRows:allowSorting:allowFiltering:allowUsingPivotTables:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant';
		defineFunction: #get_ListObjects:
			argumentTypes: 'ExcelListObjects**';
		defineFunction: #XmlDataQuery:selectionNamespaces:map:rhs:
			argumentTypes: 'bstr variant variant ExcelRange**';
		defineFunction: #XmlMapQuery:selectionNamespaces:map:rhs:
			argumentTypes: 'bstr variant variant ExcelRange**';
		defineFunction: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #get_EnableFormatConditionsCalculation:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableFormatConditionsCalculation:
			argumentTypes: 'varbool';
		defineFunction: #get_Sort:
			argumentTypes: 'ExcelSort**';
		defineFunction: #ExportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:
			argumentTypes: 'sdword variant variant variant variant variant variant variant variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_Worksheet initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_Worksheet class categoriesFor: #clsid!**auto generated**!constants!private! !
!Excel_Worksheet class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!Excel_Worksheet class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

