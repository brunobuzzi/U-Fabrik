"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_Chart
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_Chart guid: (IID fromString: '{000208D6-0000-0000-C000-000000000046}')!
Excel_Chart comment: '<Excel_Chart> is a wrapper class for the COM interface ''Excel._Chart'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208D6-0000-0000-C000-000000000046), 
	helpcontext(0x00020007), 
	nonextensible, 
	dual
]
interface _Chart : IDispatch
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
	[id(0x00010017), hidden, restricted]
	void __stdcall _Dummy23();
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
	[id(0x00000097), hidden, helpcontext(0x00010097)]
	HRESULT __stdcall _ApplyDataLabels(
		[in, defaultvalue(2)]XlDataLabelsType Type,
		[in, optional]VARIANT LegendKey,
		[in, optional]VARIANT AutoText,
		[in, optional]VARIANT HasLeaderLines,
		[in]long lcid);
	[id(0x000002f8), hidden, helpcontext(0x000102f8)]
	HRESULT __stdcall Arcs(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000011), hidden, propget, helpcontext(0x00010011)]
	HRESULT __stdcall Area3DGroup(
		[in]long lcid,
		[out, retval]ChartGroup** RHS);
	[id(0x00000009), hidden, helpcontext(0x00010009)]
	HRESULT __stdcall AreaGroups(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000072), hidden, helpcontext(0x00010072)]
	HRESULT __stdcall AutoFormat(
		[in]long Gallery,
		[in, optional]VARIANT Format);
	[id(0x0000006b), propget, helpcontext(0x0001006b)]
	HRESULT __stdcall AutoScaling(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000006b), propput, helpcontext(0x0001006b)]
	HRESULT __stdcall AutoScaling(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000017), helpcontext(0x00010017)]
	HRESULT __stdcall Axes(
		[in, optional]VARIANT Type,
		[in, defaultvalue(1)]XlAxisGroup AxisGroup,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x000004a4), helpcontext(0x000104a4)]
	HRESULT __stdcall SetBackgroundPicture(
		[in]BSTR Filename);
	[id(0x00000012), hidden, propget, helpcontext(0x00010012)]
	HRESULT __stdcall Bar3DGroup(
		[in]long lcid,
		[out, retval]ChartGroup** RHS);
	[id(0x0000000a), hidden, helpcontext(0x0001000a)]
	HRESULT __stdcall BarGroups(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000022d), hidden, helpcontext(0x0001022d)]
	HRESULT __stdcall Buttons(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000050), propget, helpcontext(0x00010050)]
	HRESULT __stdcall ChartArea(
		[in]long lcid,
		[out, retval]ChartArea** RHS);
	[id(0x00000008), helpcontext(0x00010008)]
	HRESULT __stdcall ChartGroups(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000424), helpcontext(0x00010424)]
	HRESULT __stdcall ChartObjects(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000051), propget, helpcontext(0x00010051)]
	HRESULT __stdcall ChartTitle(
		[in]long lcid,
		[out, retval]ChartTitle** RHS);
	[id(0x000000c4), helpcontext(0x000100c4)]
	HRESULT __stdcall ChartWizard(
		[in, optional]VARIANT Source,
		[in, optional]VARIANT Gallery,
		[in, optional]VARIANT Format,
		[in, optional]VARIANT PlotBy,
		[in, optional]VARIANT CategoryLabels,
		[in, optional]VARIANT SeriesLabels,
		[in, optional]VARIANT HasLegend,
		[in, optional]VARIANT Title,
		[in, optional]VARIANT CategoryTitle,
		[in, optional]VARIANT ValueTitle,
		[in, optional]VARIANT ExtraTitle,
		[in]long lcid);
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
	[id(0x00000013), hidden, propget, helpcontext(0x00010013)]
	HRESULT __stdcall Column3DGroup(
		[in]long lcid,
		[out, retval]ChartGroup** RHS);
	[id(0x0000000b), hidden, helpcontext(0x0001000b)]
	HRESULT __stdcall ColumnGroups(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x000000d5), helpcontext(0x000100d5)]
	HRESULT __stdcall CopyPicture(
		[in, defaultvalue(1)]XlPictureAppearance Appearance,
		[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
		[in, defaultvalue(2)]XlPictureAppearance Size,
		[in]long lcid);
	[id(0x0000004f), hidden, propget, helpcontext(0x0001004f)]
	HRESULT __stdcall Corners(
		[in]long lcid,
		[out, retval]Corners** RHS);
	[id(0x000001ca), hidden, helpcontext(0x000101ca)]
	HRESULT __stdcall CreatePublisher(
		[in, optional]VARIANT Edition,
		[in, defaultvalue(1)]XlPictureAppearance Appearance,
		[in, defaultvalue(1)]XlPictureAppearance Size,
		[in, optional]VARIANT ContainsPICT,
		[in, optional]VARIANT ContainsBIFF,
		[in, optional]VARIANT ContainsRTF,
		[in, optional]VARIANT ContainsVALU,
		[in]long lcid);
	[id(0x00000573), propget, helpcontext(0x00010573)]
	HRESULT __stdcall DataTable(
		[out, retval]DataTable** RHS);
	[id(0x00000030), propget, helpcontext(0x00010030)]
	HRESULT __stdcall DepthPercent(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000030), propput, helpcontext(0x00010030)]
	HRESULT __stdcall DepthPercent(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000460), hidden, helpcontext(0x00010460)]
	HRESULT __stdcall Deselect(
		[in]long lcid);
	[id(0x0000005d), propget, helpcontext(0x0001005d)]
	HRESULT __stdcall DisplayBlanksAs(
		[in]long lcid,
		[out, retval]XlDisplayBlanksAs* RHS);
	[id(0x0000005d), propput, helpcontext(0x0001005d)]
	HRESULT __stdcall DisplayBlanksAs(
		[in]long lcid,
		[in]XlDisplayBlanksAs RHS);
	[id(0x0000000e), hidden, helpcontext(0x0001000e)]
	HRESULT __stdcall DoughnutGroups(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
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
	[id(0x00000031), propget, helpcontext(0x00010031)]
	HRESULT __stdcall Elevation(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000031), propput, helpcontext(0x00010031)]
	HRESULT __stdcall Elevation(
		[in]long lcid,
		[in]long RHS);
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
	[id(0x00000053), propget, helpcontext(0x00010053)]
	HRESULT __stdcall Floor(
		[in]long lcid,
		[out, retval]Floor** RHS);
	[id(0x00000032), propget, helpcontext(0x00010032)]
	HRESULT __stdcall GapDepth(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000032), propput, helpcontext(0x00010032)]
	HRESULT __stdcall GapDepth(
		[in]long lcid,
		[in]long RHS);
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
	[id(0x00000034), propget, helpcontext(0x00010034)]
	HRESULT __stdcall HasAxis(
		[in, optional]VARIANT Index1,
		[in, optional]VARIANT Index2,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000034), propput, helpcontext(0x00010034)]
	HRESULT __stdcall HasAxis(
		[in, optional]VARIANT Index1,
		[in, optional]VARIANT Index2,
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x00000574), propget, helpcontext(0x00010574)]
	HRESULT __stdcall HasDataTable(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000574), propput, helpcontext(0x00010574)]
	HRESULT __stdcall HasDataTable(
		[in]VARIANT_BOOL RHS);
	[id(0x00000035), propget, helpcontext(0x00010035)]
	HRESULT __stdcall HasLegend(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000035), propput, helpcontext(0x00010035)]
	HRESULT __stdcall HasLegend(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000036), propget, helpcontext(0x00010036)]
	HRESULT __stdcall HasTitle(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000036), propput, helpcontext(0x00010036)]
	HRESULT __stdcall HasTitle(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000037), propget, helpcontext(0x00010037)]
	HRESULT __stdcall HeightPercent(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000037), propput, helpcontext(0x00010037)]
	HRESULT __stdcall HeightPercent(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000571), propget, helpcontext(0x00010571)]
	HRESULT __stdcall Hyperlinks(
		[out, retval]Hyperlinks** RHS);
	[id(0x00000349), hidden, helpcontext(0x00010349)]
	HRESULT __stdcall Labels(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000054), propget, helpcontext(0x00010054)]
	HRESULT __stdcall Legend(
		[in]long lcid,
		[out, retval]Legend** RHS);
	[id(0x00000014), hidden, propget, helpcontext(0x00010014)]
	HRESULT __stdcall Line3DGroup(
		[in]long lcid,
		[out, retval]ChartGroup** RHS);
	[id(0x0000000c), hidden, helpcontext(0x0001000c)]
	HRESULT __stdcall LineGroups(
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
	[id(0x00000575), helpcontext(0x00010575)]
	HRESULT __stdcall Location(
		[in]XlChartLocation Where,
		[in, optional]VARIANT Name,
		[out, retval]Chart** RHS);
	[id(0x0000031f), helpcontext(0x0001031f)]
	HRESULT __stdcall OLEObjects(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000033a), hidden, helpcontext(0x0001033a)]
	HRESULT __stdcall OptionButtons(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000321), hidden, helpcontext(0x00010321)]
	HRESULT __stdcall Ovals(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x000000d3), helpcontext(0x000100d3)]
	HRESULT __stdcall Paste(
		[in, optional]VARIANT Type,
		[in]long lcid);
	[id(0x00000039), propget, helpcontext(0x00010039)]
	HRESULT __stdcall Perspective(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x00000039), propput, helpcontext(0x00010039)]
	HRESULT __stdcall Perspective(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000303), hidden, helpcontext(0x00010303)]
	HRESULT __stdcall Pictures(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000015), hidden, propget, helpcontext(0x00010015)]
	HRESULT __stdcall Pie3DGroup(
		[in]long lcid,
		[out, retval]ChartGroup** RHS);
	[id(0x0000000d), hidden, helpcontext(0x0001000d)]
	HRESULT __stdcall PieGroups(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000055), propget, helpcontext(0x00010055)]
	HRESULT __stdcall PlotArea(
		[in]long lcid,
		[out, retval]PlotArea** RHS);
	[id(0x0000005c), propget, helpcontext(0x0001005c)]
	HRESULT __stdcall PlotVisibleOnly(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000005c), propput, helpcontext(0x0001005c)]
	HRESULT __stdcall PlotVisibleOnly(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000000f), hidden, helpcontext(0x0001000f)]
	HRESULT __stdcall RadarGroups(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000306), hidden, helpcontext(0x00010306)]
	HRESULT __stdcall Rectangles(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000003a), propget, helpcontext(0x0001003a)]
	HRESULT __stdcall RightAngleAxes(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000003a), propput, helpcontext(0x0001003a)]
	HRESULT __stdcall RightAngleAxes(
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x0000003b), propget, helpcontext(0x0001003b)]
	HRESULT __stdcall Rotation(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000003b), propput, helpcontext(0x0001003b)]
	HRESULT __stdcall Rotation(
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x0000033e), hidden, helpcontext(0x0001033e)]
	HRESULT __stdcall ScrollBars(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x00000044), helpcontext(0x00010044)]
	HRESULT __stdcall SeriesCollection(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000005e), hidden, propget, helpcontext(0x0001005e)]
	HRESULT __stdcall SizeWithWindow(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000005e), hidden, propput, helpcontext(0x0001005e)]
	HRESULT __stdcall SizeWithWindow(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000577), hidden, propget, helpcontext(0x00010577)]
	HRESULT __stdcall ShowWindow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000577), hidden, propput, helpcontext(0x00010577)]
	HRESULT __stdcall ShowWindow(
		[in]VARIANT_BOOL RHS);
	[id(0x00000346), hidden, helpcontext(0x00010346)]
	HRESULT __stdcall Spinners(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000006d), hidden, propget, helpcontext(0x0001006d)]
	HRESULT __stdcall SubType(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x0000006d), hidden, propput, helpcontext(0x0001006d)]
	HRESULT __stdcall SubType(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000016), hidden, propget, helpcontext(0x00010016)]
	HRESULT __stdcall SurfaceGroup(
		[in]long lcid,
		[out, retval]ChartGroup** RHS);
	[id(0x00000309), hidden, helpcontext(0x00010309)]
	HRESULT __stdcall TextBoxes(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000006c), hidden, propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x0000006c), hidden, propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]long lcid,
		[in]long RHS);
	[id(0x00000578), propget, helpcontext(0x00010578)]
	HRESULT __stdcall ChartType(
		[out, retval]XlChartType* RHS);
	[id(0x00000578), propput, helpcontext(0x00010578)]
	HRESULT __stdcall ChartType(
		[in]XlChartType RHS);
	[id(0x00000579), hidden, helpcontext(0x00010579)]
	HRESULT __stdcall ApplyCustomType(
		[in]XlChartType ChartType,
		[in, optional]VARIANT TypeName);
	[id(0x00000056), propget, helpcontext(0x00010056)]
	HRESULT __stdcall Walls(
		[in]long lcid,
		[out, retval]Walls** RHS);
	[id(0x000000d2), hidden, propget, helpcontext(0x000100d2)]
	HRESULT __stdcall WallsAndGridlines2D(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000d2), hidden, propput, helpcontext(0x000100d2)]
	HRESULT __stdcall WallsAndGridlines2D(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000010), hidden, helpcontext(0x00010010)]
	HRESULT __stdcall XYGroups(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]IDispatch** RHS);
	[id(0x0000057b), propget, helpcontext(0x0001057b)]
	HRESULT __stdcall BarShape(
		[out, retval]XlBarShape* RHS);
	[id(0x0000057b), propput, helpcontext(0x0001057b)]
	HRESULT __stdcall BarShape(
		[in]XlBarShape RHS);
	[id(0x000000ca), propget, helpcontext(0x000100ca)]
	HRESULT __stdcall PlotBy(
		[out, retval]XlRowCol* RHS);
	[id(0x000000ca), propput, helpcontext(0x000100ca)]
	HRESULT __stdcall PlotBy(
		[in]XlRowCol RHS);
	[id(0x0000057c), hidden, helpcontext(0x0001057c)]
	HRESULT __stdcall CopyChartBuild();
	[id(0x0000057d), propget, helpcontext(0x0001057d)]
	HRESULT __stdcall ProtectFormatting(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000057d), propput, helpcontext(0x0001057d)]
	HRESULT __stdcall ProtectFormatting(
		[in]VARIANT_BOOL RHS);
	[id(0x0000057e), propget, helpcontext(0x0001057e)]
	HRESULT __stdcall ProtectData(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000057e), propput, helpcontext(0x0001057e)]
	HRESULT __stdcall ProtectData(
		[in]VARIANT_BOOL RHS);
	[id(0x0000057f), hidden, propget, helpcontext(0x0001057f)]
	HRESULT __stdcall ProtectGoalSeek(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000057f), hidden, propput, helpcontext(0x0001057f)]
	HRESULT __stdcall ProtectGoalSeek(
		[in]VARIANT_BOOL RHS);
	[id(0x00000580), propget, helpcontext(0x00010580)]
	HRESULT __stdcall ProtectSelection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000580), propput, helpcontext(0x00010580)]
	HRESULT __stdcall ProtectSelection(
		[in]VARIANT_BOOL RHS);
	[id(0x00000581), helpcontext(0x00010581)]
	HRESULT __stdcall GetChartElement(
		[in]long x,
		[in]long y,
		[in]long* ElementID,
		[in]long* Arg1,
		[in]long* Arg2);
	[id(0x00000585), helpcontext(0x00010585)]
	HRESULT __stdcall SetSourceData(
		[in]Range* Source,
		[in, optional]VARIANT PlotBy);
	[id(0x00000586), helpcontext(0x00010586)]
	HRESULT __stdcall Export(
		[in]BSTR Filename,
		[in, optional]VARIANT FilterName,
		[in, optional]VARIANT Interactive,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000589), helpcontext(0x00010589)]
	HRESULT __stdcall Refresh();
	[id(0x00000716), propget, helpcontext(0x00010716)]
	HRESULT __stdcall PivotLayout(
		[out, retval]PivotLayout** RHS);
	[id(0x00000717), hidden, propget, helpcontext(0x00010717)]
	HRESULT __stdcall HasPivotFields(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000717), hidden, propput, helpcontext(0x00010717)]
	HRESULT __stdcall HasPivotFields(
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
	[id(0x00000411), propget, helpcontext(0x00010411)]
	HRESULT __stdcall Tab(
		[out, retval]Tab** RHS);
	[id(0x000007e5), propget, helpcontext(0x000107e5)]
	HRESULT __stdcall MailEnvelope(
		[out, retval]MsoEnvelope** RHS);
	[id(0x00000782), helpcontext(0x00010782)]
	HRESULT __stdcall ApplyDataLabels(
		[in, defaultvalue(2)]XlDataLabelsType Type,
		[in, optional]VARIANT LegendKey,
		[in, optional]VARIANT AutoText,
		[in, optional]VARIANT HasLeaderLines,
		[in, optional]VARIANT ShowSeriesName,
		[in, optional]VARIANT ShowCategoryName,
		[in, optional]VARIANT ShowValue,
		[in, optional]VARIANT ShowPercentage,
		[in, optional]VARIANT ShowBubbleSize,
		[in, optional]VARIANT Separator,
		[in]long lcid);
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
	[id(0x000007ed), helpcontext(0x000107ed)]
	HRESULT __stdcall Protect(
		[in, optional]VARIANT Password,
		[in, optional]VARIANT DrawingObjects,
		[in, optional]VARIANT Contents,
		[in, optional]VARIANT Scenarios,
		[in, optional]VARIANT UserInterfaceOnly);
	[id(0x000009c4), helpcontext(0x000109c4)]
	HRESULT __stdcall ApplyLayout(
		[in]long Layout,
		[in, optional]VARIANT ChartType);
	[id(0x000009c6), helpcontext(0x000109c6)]
	HRESULT __stdcall SetElement(
		[in]MsoChartElementType Element);
	[id(0x000009c8), propget, helpcontext(0x000109c8)]
	HRESULT __stdcall ShowDataLabelsOverMaximum(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009c8), propput, helpcontext(0x000109c8)]
	HRESULT __stdcall ShowDataLabelsOverMaximum(
		[in]VARIANT_BOOL RHS);
	[id(0x000009c9), propget, helpcontext(0x000109c9)]
	HRESULT __stdcall SideWall(
		[out, retval]Walls** RHS);
	[id(0x000009ca), propget, helpcontext(0x000109ca)]
	HRESULT __stdcall BackWall(
		[out, retval]Walls** RHS);
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
		[in]long lcid);
	[id(0x000009cb), helpcontext(0x000109cb)]
	HRESULT __stdcall ApplyChartTemplate(
		[in]BSTR Filename);
	[id(0x000009cc), helpcontext(0x000109cc)]
	HRESULT __stdcall SaveChartTemplate(
		[in]BSTR Filename);
	[id(0x000000db), helpcontext(0x000100db)]
	HRESULT __stdcall SetDefaultChart(
		[in]VARIANT Name);
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
	[id(0x000009cd), propget, helpcontext(0x000109cd)]
	HRESULT __stdcall ChartStyle(
		[out, retval]VARIANT* RHS);
	[id(0x000009cd), propput, helpcontext(0x000109cd)]
	HRESULT __stdcall ChartStyle(
		[in]VARIANT RHS);
	[id(0x000009ce), helpcontext(0x000109ce)]
	HRESULT __stdcall ClearToMatchStyle();
};
'!
!Excel_Chart categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!Excel_Chart methodsFor!

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

_applyDataLabels: lcid
	"Invoke the _ApplyDataLabels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _applyDataLabels: 2
		 legendKey: VARIANT unspecified
		 autoText: VARIANT unspecified
		 hasLeaderLines: VARIANT unspecified
		 lcid: lcid!

_applyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines lcid: lcid
	"Invoke the _ApplyDataLabels() method of the COM object."

	^self
		_ApplyDataLabels: type
		legendKey: legendKey asVariant
		autoText: autoText asVariant
		hasLeaderLines: hasLeaderLines asVariant
		lcid: lcid
!

_ApplyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines lcid: lcid
	"Private - Invoke the _ApplyDataLabels() method of the COM object.

		HRESULT __stdcall _ApplyDataLabels(
			[in, defaultvalue(2)]XlDataLabelsType Type,
			[in, optional]VARIANT LegendKey,
			[in, optional]VARIANT AutoText,
			[in, optional]VARIANT HasLeaderLines,
			[in]long lcid);"

	<virtual stdcall: hresult 43 sdword variant variant variant sdword>
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

_dummy23
	"Answer the <VOID> result of invoking the _Dummy23() method of the COM object."

	self _Dummy23
!

_Dummy23
	"Private - Invoke the _Dummy23() method of the COM object.

		void __stdcall _Dummy23();"

	<virtual stdcall: void 36>
	^self invalidCall!

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

	<virtual stdcall: hresult 80 variant sdword variant*>
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

	<virtual stdcall: hresult 163 variant variant variant variant variant variant variant variant sdword>
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

applyChartTemplate: filename
	"Invoke the ApplyChartTemplate() method of the COM object."

	^self ApplyChartTemplate: filename
!

ApplyChartTemplate: filename
	"Private - Invoke the ApplyChartTemplate() method of the COM object.

		HRESULT __stdcall ApplyChartTemplate(
			[in]BSTR Filename);"

	<virtual stdcall: hresult 176 bstr>
	^self invalidCall!

applyCustomType: chartType
	"Invoke the ApplyCustomType() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 applyCustomType: chartType
		 typeName: VARIANT unspecified!

applyCustomType: chartType typeName: typeName
	"Invoke the ApplyCustomType() method of the COM object."

	^self
		ApplyCustomType: chartType
		typeName: typeName asVariant
!

ApplyCustomType: chartType typeName: typeName
	"Private - Invoke the ApplyCustomType() method of the COM object.

		HRESULT __stdcall ApplyCustomType(
			[in]XlChartType ChartType,
			[in, optional]VARIANT TypeName);"

	<virtual stdcall: hresult 137 sdword variant>
	^self invalidCall!

applyDataLabels: lcid
	"Invoke the ApplyDataLabels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 applyDataLabels: 2
		 legendKey: VARIANT unspecified
		 autoText: VARIANT unspecified
		 hasLeaderLines: VARIANT unspecified
		 showSeriesName: VARIANT unspecified
		 showCategoryName: VARIANT unspecified
		 showValue: VARIANT unspecified
		 showPercentage: VARIANT unspecified
		 showBubbleSize: VARIANT unspecified
		 separator: VARIANT unspecified
		 lcid: lcid!

applyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines showSeriesName: showSeriesName showCategoryName: showCategoryName showValue: showValue showPercentage: showPercentage showBubbleSize: showBubbleSize separator: separator lcid: lcid
	"Invoke the ApplyDataLabels() method of the COM object."

	^self
		ApplyDataLabels: type
		legendKey: legendKey asVariant
		autoText: autoText asVariant
		hasLeaderLines: hasLeaderLines asVariant
		showSeriesName: showSeriesName asVariant
		showCategoryName: showCategoryName asVariant
		showValue: showValue asVariant
		showPercentage: showPercentage asVariant
		showBubbleSize: showBubbleSize asVariant
		separator: separator asVariant
		lcid: lcid
!

ApplyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines showSeriesName: showSeriesName showCategoryName: showCategoryName showValue: showValue showPercentage: showPercentage showBubbleSize: showBubbleSize separator: separator lcid: lcid
	"Private - Invoke the ApplyDataLabels() method of the COM object.

		HRESULT __stdcall ApplyDataLabels(
			[in, defaultvalue(2)]XlDataLabelsType Type,
			[in, optional]VARIANT LegendKey,
			[in, optional]VARIANT AutoText,
			[in, optional]VARIANT HasLeaderLines,
			[in, optional]VARIANT ShowSeriesName,
			[in, optional]VARIANT ShowCategoryName,
			[in, optional]VARIANT ShowValue,
			[in, optional]VARIANT ShowPercentage,
			[in, optional]VARIANT ShowBubbleSize,
			[in, optional]VARIANT Separator,
			[in]long lcid);"

	<virtual stdcall: hresult 166 sdword variant variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

applyLayout: layout
	"Invoke the ApplyLayout() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 applyLayout: layout
		 chartType: VARIANT unspecified!

applyLayout: layout chartType: chartType
	"Invoke the ApplyLayout() method of the COM object."

	^self
		ApplyLayout: layout
		chartType: chartType asVariant
!

ApplyLayout: layout chartType: chartType
	"Private - Invoke the ApplyLayout() method of the COM object.

		HRESULT __stdcall ApplyLayout(
			[in]long Layout,
			[in, optional]VARIANT ChartType);"

	<virtual stdcall: hresult 169 sdword variant>
	^self invalidCall!

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

	<virtual stdcall: hresult 44 variant sdword IDispatch**>
	^self invalidCall!

area3DGroup: lcid
	"Answer the <ExcelChartGroup> value of the 'Area3DGroup' property of the receiver."

	| answer |
	answer := ExcelChartGroup newPointer.
	self
		get_Area3DGroup: lcid
		rhs: answer.
	^answer asObject
!

areaGroups: lcid
	"Answer the <IDispatch> result of invoking the AreaGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 areaGroups: VARIANT unspecified
		 lcid: lcid!

areaGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the AreaGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		AreaGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

AreaGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the AreaGroups() method of the COM object.

		HRESULT __stdcall AreaGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 46 variant sdword IDispatch**>
	^self invalidCall!

autoFormat: gallery
	"Invoke the AutoFormat() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 autoFormat: gallery
		 format: VARIANT unspecified!

autoFormat: gallery format: format
	"Invoke the AutoFormat() method of the COM object."

	^self
		AutoFormat: gallery
		format: format asVariant
!

AutoFormat: gallery format: format
	"Private - Invoke the AutoFormat() method of the COM object.

		HRESULT __stdcall AutoFormat(
			[in]long Gallery,
			[in, optional]VARIANT Format);"

	<virtual stdcall: hresult 47 sdword variant>
	^self invalidCall!

autoScaling: lcid
	"Answer the <varbool> value of the 'AutoScaling' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_AutoScaling: lcid
		rhs: answer.
	^answer asObject
!

autoScaling: lcid rhs: rhs
	"Set the 'AutoScaling' property of the receiver to the <varbool> value of the argument."

	self
		put_AutoScaling: lcid
		rhs: rhs
!

axes: lcid
	"Answer the <IDispatch> result of invoking the Axes() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 axes: VARIANT unspecified
		 axisGroup: 1
		 lcid: lcid!

axes: type axisGroup: axisGroup lcid: lcid
	"Answer the <IDispatch> result of invoking the Axes() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Axes: type asVariant
		axisGroup: axisGroup
		lcid: lcid
		rhs: answer.
	^answer asObject
!

Axes: type axisGroup: axisGroup lcid: lcid rhs: rhs
	"Private - Invoke the Axes() method of the COM object.

		HRESULT __stdcall Axes(
			[in, optional]VARIANT Type,
			[in, defaultvalue(1)]XlAxisGroup AxisGroup,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 50 variant sdword sdword IDispatch**>
	^self invalidCall!

backWall
	"Answer the <ExcelWalls> value of the 'BackWall' property of the receiver."

	| answer |
	answer := ExcelWalls newPointer.
	self get_BackWall: answer.
	^answer asObject
!

bar3DGroup: lcid
	"Answer the <ExcelChartGroup> value of the 'Bar3DGroup' property of the receiver."

	| answer |
	answer := ExcelChartGroup newPointer.
	self
		get_Bar3DGroup: lcid
		rhs: answer.
	^answer asObject
!

barGroups: lcid
	"Answer the <IDispatch> result of invoking the BarGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 barGroups: VARIANT unspecified
		 lcid: lcid!

barGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the BarGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		BarGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

BarGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the BarGroups() method of the COM object.

		HRESULT __stdcall BarGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 53 variant sdword IDispatch**>
	^self invalidCall!

barShape
	"Answer the <sdword> value of the 'BarShape' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BarShape: answer.
	^answer asObject
!

barShape: rhs
	"Set the 'BarShape' property of the receiver to the <sdword> value of the argument."

	self put_BarShape: rhs
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

	<virtual stdcall: hresult 54 variant sdword IDispatch**>
	^self invalidCall!

chartArea: lcid
	"Answer the <ExcelChartArea> value of the 'ChartArea' property of the receiver."

	| answer |
	answer := ExcelChartArea newPointer.
	self
		get_ChartArea: lcid
		rhs: answer.
	^answer asObject
!

chartGroups: lcid
	"Answer the <IDispatch> result of invoking the ChartGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 chartGroups: VARIANT unspecified
		 lcid: lcid!

chartGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the ChartGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		ChartGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

ChartGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the ChartGroups() method of the COM object.

		HRESULT __stdcall ChartGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 56 variant sdword IDispatch**>
	^self invalidCall!

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

	<virtual stdcall: hresult 57 variant sdword IDispatch**>
	^self invalidCall!

chartStyle
	"Answer the <variant> value of the 'ChartStyle' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ChartStyle: answer.
	^answer asObject
!

chartStyle: rhs
	"Set the 'ChartStyle' property of the receiver to the <variant> value of the argument."

	self put_ChartStyle: rhs asVariant
!

chartTitle: lcid
	"Answer the <ExcelChartTitle> value of the 'ChartTitle' property of the receiver."

	| answer |
	answer := ExcelChartTitle newPointer.
	self
		get_ChartTitle: lcid
		rhs: answer.
	^answer asObject
!

chartType
	"Answer the <sdword> value of the 'ChartType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ChartType: answer.
	^answer asObject
!

chartType: rhs
	"Set the 'ChartType' property of the receiver to the <sdword> value of the argument."

	self put_ChartType: rhs
!

chartWizard: lcid
	"Invoke the ChartWizard() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 chartWizard: VARIANT unspecified
		 gallery: VARIANT unspecified
		 format: VARIANT unspecified
		 plotBy: VARIANT unspecified
		 categoryLabels: VARIANT unspecified
		 seriesLabels: VARIANT unspecified
		 hasLegend: VARIANT unspecified
		 title: VARIANT unspecified
		 categoryTitle: VARIANT unspecified
		 valueTitle: VARIANT unspecified
		 extraTitle: VARIANT unspecified
		 lcid: lcid!

chartWizard: source gallery: gallery format: format plotBy: plotBy categoryLabels: categoryLabels seriesLabels: seriesLabels hasLegend: hasLegend title: title categoryTitle: categoryTitle valueTitle: valueTitle extraTitle: extraTitle lcid: lcid
	"Invoke the ChartWizard() method of the COM object."

	^self
		ChartWizard: source asVariant
		gallery: gallery asVariant
		format: format asVariant
		plotBy: plotBy asVariant
		categoryLabels: categoryLabels asVariant
		seriesLabels: seriesLabels asVariant
		hasLegend: hasLegend asVariant
		title: title asVariant
		categoryTitle: categoryTitle asVariant
		valueTitle: valueTitle asVariant
		extraTitle: extraTitle asVariant
		lcid: lcid
!

ChartWizard: source gallery: gallery format: format plotBy: plotBy categoryLabels: categoryLabels seriesLabels: seriesLabels hasLegend: hasLegend title: title categoryTitle: categoryTitle valueTitle: valueTitle extraTitle: extraTitle lcid: lcid
	"Private - Invoke the ChartWizard() method of the COM object.

		HRESULT __stdcall ChartWizard(
			[in, optional]VARIANT Source,
			[in, optional]VARIANT Gallery,
			[in, optional]VARIANT Format,
			[in, optional]VARIANT PlotBy,
			[in, optional]VARIANT CategoryLabels,
			[in, optional]VARIANT SeriesLabels,
			[in, optional]VARIANT HasLegend,
			[in, optional]VARIANT Title,
			[in, optional]VARIANT CategoryTitle,
			[in, optional]VARIANT ValueTitle,
			[in, optional]VARIANT ExtraTitle,
			[in]long lcid);"

	<virtual stdcall: hresult 59 variant variant variant variant variant variant variant variant variant variant variant sdword>
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

	<virtual stdcall: hresult 60 variant sdword IDispatch**>
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

	<virtual stdcall: hresult 61 variant variant variant variant sdword>
	^self invalidCall!

clearToMatchStyle
	"Invoke the ClearToMatchStyle() method of the COM object."

	^self ClearToMatchStyle
!

ClearToMatchStyle
	"Private - Invoke the ClearToMatchStyle() method of the COM object.

		HRESULT __stdcall ClearToMatchStyle();"

	<virtual stdcall: hresult 182>
	^self invalidCall!

codeName
	"Answer the <bstr> value of the 'CodeName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CodeName: answer.
	^answer asObject
!

column3DGroup: lcid
	"Answer the <ExcelChartGroup> value of the 'Column3DGroup' property of the receiver."

	| answer |
	answer := ExcelChartGroup newPointer.
	self
		get_Column3DGroup: lcid
		rhs: answer.
	^answer asObject
!

columnGroups: lcid
	"Answer the <IDispatch> result of invoking the ColumnGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 columnGroups: VARIANT unspecified
		 lcid: lcid!

columnGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the ColumnGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		ColumnGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

ColumnGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the ColumnGroups() method of the COM object.

		HRESULT __stdcall ColumnGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 63 variant sdword IDispatch**>
	^self invalidCall!

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

copyChartBuild
	"Invoke the CopyChartBuild() method of the COM object."

	^self CopyChartBuild
!

CopyChartBuild
	"Private - Invoke the CopyChartBuild() method of the COM object.

		HRESULT __stdcall CopyChartBuild();"

	<virtual stdcall: hresult 146>
	^self invalidCall!

copyPicture: lcid
	"Invoke the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 1
		 format: -4147
		 size: 2
		 lcid: lcid!

copyPicture: appearance format: format size: size lcid: lcid
	"Invoke the CopyPicture() method of the COM object."

	^self
		CopyPicture: appearance
		format: format
		size: size
		lcid: lcid
!

CopyPicture: appearance format: format size: size lcid: lcid
	"Private - Invoke the CopyPicture() method of the COM object.

		HRESULT __stdcall CopyPicture(
			[in, defaultvalue(1)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format,
			[in, defaultvalue(2)]XlPictureAppearance Size,
			[in]long lcid);"

	<virtual stdcall: hresult 64 sdword sdword sdword sdword>
	^self invalidCall!

corners: lcid
	"Answer the <ExcelCorners> value of the 'Corners' property of the receiver."

	| answer |
	answer := ExcelCorners newPointer.
	self
		get_Corners: lcid
		rhs: answer.
	^answer asObject
!

createPublisher: lcid
	"Invoke the CreatePublisher() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createPublisher: VARIANT unspecified
		 appearance: 1
		 size: 1
		 containsPICT: VARIANT unspecified
		 containsBIFF: VARIANT unspecified
		 containsRTF: VARIANT unspecified
		 containsVALU: VARIANT unspecified
		 lcid: lcid!

createPublisher: edition appearance: appearance size: size containsPICT: containsPICT containsBIFF: containsBIFF containsRTF: containsRTF containsVALU: containsVALU lcid: lcid
	"Invoke the CreatePublisher() method of the COM object."

	^self
		CreatePublisher: edition asVariant
		appearance: appearance
		size: size
		containsPICT: containsPICT asVariant
		containsBIFF: containsBIFF asVariant
		containsRTF: containsRTF asVariant
		containsVALU: containsVALU asVariant
		lcid: lcid
!

CreatePublisher: edition appearance: appearance size: size containsPICT: containsPICT containsBIFF: containsBIFF containsRTF: containsRTF containsVALU: containsVALU lcid: lcid
	"Private - Invoke the CreatePublisher() method of the COM object.

		HRESULT __stdcall CreatePublisher(
			[in, optional]VARIANT Edition,
			[in, defaultvalue(1)]XlPictureAppearance Appearance,
			[in, defaultvalue(1)]XlPictureAppearance Size,
			[in, optional]VARIANT ContainsPICT,
			[in, optional]VARIANT ContainsBIFF,
			[in, optional]VARIANT ContainsRTF,
			[in, optional]VARIANT ContainsVALU,
			[in]long lcid);"

	<virtual stdcall: hresult 66 variant sdword sdword variant variant variant variant sdword>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dataTable
	"Answer the <ExcelDataTable> value of the 'DataTable' property of the receiver."

	| answer |
	answer := ExcelDataTable newPointer.
	self get_DataTable: answer.
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

depthPercent: lcid
	"Answer the <sdword> value of the 'DepthPercent' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_DepthPercent: lcid
		rhs: answer.
	^answer asObject
!

depthPercent: lcid rhs: rhs
	"Set the 'DepthPercent' property of the receiver to the <sdword> value of the argument."

	self
		put_DepthPercent: lcid
		rhs: rhs
!

deselect: lcid
	"Invoke the Deselect() method of the COM object."

	^self Deselect: lcid
!

Deselect: lcid
	"Private - Invoke the Deselect() method of the COM object.

		HRESULT __stdcall Deselect(
			[in]long lcid);"

	<virtual stdcall: hresult 70 sdword>
	^self invalidCall!

displayBlanksAs: lcid
	"Answer the <sdword> value of the 'DisplayBlanksAs' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_DisplayBlanksAs: lcid
		rhs: answer.
	^answer asObject
!

displayBlanksAs: lcid rhs: rhs
	"Set the 'DisplayBlanksAs' property of the receiver to the <sdword> value of the argument."

	self
		put_DisplayBlanksAs: lcid
		rhs: rhs
!

doughnutGroups: lcid
	"Answer the <IDispatch> result of invoking the DoughnutGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 doughnutGroups: VARIANT unspecified
		 lcid: lcid!

doughnutGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the DoughnutGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		DoughnutGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

DoughnutGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the DoughnutGroups() method of the COM object.

		HRESULT __stdcall DoughnutGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 73 variant sdword IDispatch**>
	^self invalidCall!

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

	<virtual stdcall: hresult 75 variant sdword IDispatch**>
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

	<virtual stdcall: hresult 74 variant sdword IDispatch**>
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

	<virtual stdcall: hresult 76 variant sdword IDispatch**>
	^self invalidCall!

elevation: lcid
	"Answer the <sdword> value of the 'Elevation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Elevation: lcid
		rhs: answer.
	^answer asObject
!

elevation: lcid rhs: rhs
	"Set the 'Elevation' property of the receiver to the <sdword> value of the argument."

	self
		put_Elevation: lcid
		rhs: rhs
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

	<virtual stdcall: hresult 79 variant sdword variant*>
	^self invalidCall!

export: filename
	"Answer the <VARIANT_BOOL> result of invoking the Export() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 export: filename
		 filterName: VARIANT unspecified
		 interactive: VARIANT unspecified!

export: filename filterName: filterName interactive: interactive
	"Answer the <VARIANT_BOOL> result of invoking the Export() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		Export: filename
		filterName: filterName asVariant
		interactive: interactive asVariant
		rhs: answer.
	^answer asObject
!

Export: filename filterName: filterName interactive: interactive rhs: rhs
	"Private - Invoke the Export() method of the COM object.

		HRESULT __stdcall Export(
			[in]BSTR Filename,
			[in, optional]VARIANT FilterName,
			[in, optional]VARIANT Interactive,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 157 bstr variant variant varbool*>
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

	<virtual stdcall: hresult 179 sdword variant variant variant variant variant variant variant variant>
	^self invalidCall!

floor: lcid
	"Answer the <ExcelFloor> value of the 'Floor' property of the receiver."

	| answer |
	answer := ExcelFloor newPointer.
	self
		get_Floor: lcid
		rhs: answer.
	^answer asObject
!

gapDepth: lcid
	"Answer the <sdword> value of the 'GapDepth' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_GapDepth: lcid
		rhs: answer.
	^answer asObject
!

gapDepth: lcid rhs: rhs
	"Set the 'GapDepth' property of the receiver to the <sdword> value of the argument."

	self
		put_GapDepth: lcid
		rhs: rhs
!

get__CodeName: rhs
	"Private - Get the value of the '_CodeName' property of the receiver.

		HRESULT __stdcall _CodeName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Area3DGroup: lcid rhs: rhs
	"Private - Get the value of the 'Area3DGroup' property of the receiver.

		HRESULT __stdcall Area3DGroup(
			[in]long lcid,
			[out, retval]ChartGroup** RHS);"

	<virtual stdcall: hresult 45 sdword ExcelChartGroup**>
	^self invalidCall!

get_AutoScaling: lcid rhs: rhs
	"Private - Get the value of the 'AutoScaling' property of the receiver.

		HRESULT __stdcall AutoScaling(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 sdword varbool*>
	^self invalidCall!

get_BackWall: rhs
	"Private - Get the value of the 'BackWall' property of the receiver.

		HRESULT __stdcall BackWall(
			[out, retval]Walls** RHS);"

	<virtual stdcall: hresult 174 ExcelWalls**>
	^self invalidCall!

get_Bar3DGroup: lcid rhs: rhs
	"Private - Get the value of the 'Bar3DGroup' property of the receiver.

		HRESULT __stdcall Bar3DGroup(
			[in]long lcid,
			[out, retval]ChartGroup** RHS);"

	<virtual stdcall: hresult 52 sdword ExcelChartGroup**>
	^self invalidCall!

get_BarShape: rhs
	"Private - Get the value of the 'BarShape' property of the receiver.

		HRESULT __stdcall BarShape(
			[out, retval]XlBarShape* RHS);"

	<virtual stdcall: hresult 142 sdword*>
	^self invalidCall!

get_ChartArea: lcid rhs: rhs
	"Private - Get the value of the 'ChartArea' property of the receiver.

		HRESULT __stdcall ChartArea(
			[in]long lcid,
			[out, retval]ChartArea** RHS);"

	<virtual stdcall: hresult 55 sdword ExcelChartArea**>
	^self invalidCall!

get_ChartStyle: rhs
	"Private - Get the value of the 'ChartStyle' property of the receiver.

		HRESULT __stdcall ChartStyle(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 180 variant*>
	^self invalidCall!

get_ChartTitle: lcid rhs: rhs
	"Private - Get the value of the 'ChartTitle' property of the receiver.

		HRESULT __stdcall ChartTitle(
			[in]long lcid,
			[out, retval]ChartTitle** RHS);"

	<virtual stdcall: hresult 58 sdword ExcelChartTitle**>
	^self invalidCall!

get_ChartType: rhs
	"Private - Get the value of the 'ChartType' property of the receiver.

		HRESULT __stdcall ChartType(
			[out, retval]XlChartType* RHS);"

	<virtual stdcall: hresult 135 sdword*>
	^self invalidCall!

get_CodeName: rhs
	"Private - Get the value of the 'CodeName' property of the receiver.

		HRESULT __stdcall CodeName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Column3DGroup: lcid rhs: rhs
	"Private - Get the value of the 'Column3DGroup' property of the receiver.

		HRESULT __stdcall Column3DGroup(
			[in]long lcid,
			[out, retval]ChartGroup** RHS);"

	<virtual stdcall: hresult 62 sdword ExcelChartGroup**>
	^self invalidCall!

get_Corners: lcid rhs: rhs
	"Private - Get the value of the 'Corners' property of the receiver.

		HRESULT __stdcall Corners(
			[in]long lcid,
			[out, retval]Corners** RHS);"

	<virtual stdcall: hresult 65 sdword ExcelCorners**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DataTable: rhs
	"Private - Get the value of the 'DataTable' property of the receiver.

		HRESULT __stdcall DataTable(
			[out, retval]DataTable** RHS);"

	<virtual stdcall: hresult 67 ExcelDataTable**>
	^self invalidCall!

get_DepthPercent: lcid rhs: rhs
	"Private - Get the value of the 'DepthPercent' property of the receiver.

		HRESULT __stdcall DepthPercent(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 68 sdword sdword*>
	^self invalidCall!

get_DisplayBlanksAs: lcid rhs: rhs
	"Private - Get the value of the 'DisplayBlanksAs' property of the receiver.

		HRESULT __stdcall DisplayBlanksAs(
			[in]long lcid,
			[out, retval]XlDisplayBlanksAs* RHS);"

	<virtual stdcall: hresult 71 sdword sdword*>
	^self invalidCall!

get_Elevation: lcid rhs: rhs
	"Private - Get the value of the 'Elevation' property of the receiver.

		HRESULT __stdcall Elevation(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 77 sdword sdword*>
	^self invalidCall!

get_Floor: lcid rhs: rhs
	"Private - Get the value of the 'Floor' property of the receiver.

		HRESULT __stdcall Floor(
			[in]long lcid,
			[out, retval]Floor** RHS);"

	<virtual stdcall: hresult 81 sdword ExcelFloor**>
	^self invalidCall!

get_GapDepth: lcid rhs: rhs
	"Private - Get the value of the 'GapDepth' property of the receiver.

		HRESULT __stdcall GapDepth(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 82 sdword sdword*>
	^self invalidCall!

get_HasAxis: index1 index2: index2 lcid: lcid rhs: rhs
	"Private - Get the value of the 'HasAxis' property of the receiver.

		HRESULT __stdcall HasAxis(
			[in, optional]VARIANT Index1,
			[in, optional]VARIANT Index2,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 86 variant variant sdword variant*>
	^self invalidCall!

get_HasDataTable: rhs
	"Private - Get the value of the 'HasDataTable' property of the receiver.

		HRESULT __stdcall HasDataTable(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 88 varbool*>
	^self invalidCall!

get_HasLegend: lcid rhs: rhs
	"Private - Get the value of the 'HasLegend' property of the receiver.

		HRESULT __stdcall HasLegend(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 90 sdword varbool*>
	^self invalidCall!

get_HasPivotFields: rhs
	"Private - Get the value of the 'HasPivotFields' property of the receiver.

		HRESULT __stdcall HasPivotFields(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 160 varbool*>
	^self invalidCall!

get_HasTitle: lcid rhs: rhs
	"Private - Get the value of the 'HasTitle' property of the receiver.

		HRESULT __stdcall HasTitle(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 92 sdword varbool*>
	^self invalidCall!

get_HeightPercent: lcid rhs: rhs
	"Private - Get the value of the 'HeightPercent' property of the receiver.

		HRESULT __stdcall HeightPercent(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 94 sdword sdword*>
	^self invalidCall!

get_Hyperlinks: rhs
	"Private - Get the value of the 'Hyperlinks' property of the receiver.

		HRESULT __stdcall Hyperlinks(
			[out, retval]Hyperlinks** RHS);"

	<virtual stdcall: hresult 96 ExcelHyperlinks**>
	^self invalidCall!

get_Index: lcid rhs: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword sdword*>
	^self invalidCall!

get_Legend: lcid rhs: rhs
	"Private - Get the value of the 'Legend' property of the receiver.

		HRESULT __stdcall Legend(
			[in]long lcid,
			[out, retval]Legend** RHS);"

	<virtual stdcall: hresult 98 sdword ExcelLegend**>
	^self invalidCall!

get_Line3DGroup: lcid rhs: rhs
	"Private - Get the value of the 'Line3DGroup' property of the receiver.

		HRESULT __stdcall Line3DGroup(
			[in]long lcid,
			[out, retval]ChartGroup** RHS);"

	<virtual stdcall: hresult 99 sdword ExcelChartGroup**>
	^self invalidCall!

get_MailEnvelope: rhs
	"Private - Get the value of the 'MailEnvelope' property of the receiver.

		HRESULT __stdcall MailEnvelope(
			[out, retval]MsoEnvelope** RHS);"

	<virtual stdcall: hresult 165 OfficeIMsoEnvelopeVB**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 19 bstr*>
	^self invalidCall!

get_Next: rhs
	"Private - Get the value of the 'Next' property of the receiver.

		HRESULT __stdcall Next(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 21 IDispatch**>
	^self invalidCall!

get_OnDoubleClick: lcid rhs: rhs
	"Private - Get the value of the 'OnDoubleClick' property of the receiver.

		HRESULT __stdcall OnDoubleClick(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 22 sdword bstr*>
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

get_Perspective: lcid rhs: rhs
	"Private - Get the value of the 'Perspective' property of the receiver.

		HRESULT __stdcall Perspective(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 108 sdword sdword*>
	^self invalidCall!

get_Pie3DGroup: lcid rhs: rhs
	"Private - Get the value of the 'Pie3DGroup' property of the receiver.

		HRESULT __stdcall Pie3DGroup(
			[in]long lcid,
			[out, retval]ChartGroup** RHS);"

	<virtual stdcall: hresult 111 sdword ExcelChartGroup**>
	^self invalidCall!

get_PivotLayout: rhs
	"Private - Get the value of the 'PivotLayout' property of the receiver.

		HRESULT __stdcall PivotLayout(
			[out, retval]PivotLayout** RHS);"

	<virtual stdcall: hresult 159 ExcelPivotLayout**>
	^self invalidCall!

get_PlotArea: lcid rhs: rhs
	"Private - Get the value of the 'PlotArea' property of the receiver.

		HRESULT __stdcall PlotArea(
			[in]long lcid,
			[out, retval]PlotArea** RHS);"

	<virtual stdcall: hresult 113 sdword ExcelPlotArea**>
	^self invalidCall!

get_PlotBy: rhs
	"Private - Get the value of the 'PlotBy' property of the receiver.

		HRESULT __stdcall PlotBy(
			[out, retval]XlRowCol* RHS);"

	<virtual stdcall: hresult 144 sdword*>
	^self invalidCall!

get_PlotVisibleOnly: lcid rhs: rhs
	"Private - Get the value of the 'PlotVisibleOnly' property of the receiver.

		HRESULT __stdcall PlotVisibleOnly(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 114 sdword varbool*>
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

get_ProtectData: rhs
	"Private - Get the value of the 'ProtectData' property of the receiver.

		HRESULT __stdcall ProtectData(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 149 varbool*>
	^self invalidCall!

get_ProtectDrawingObjects: lcid rhs: rhs
	"Private - Get the value of the 'ProtectDrawingObjects' property of the receiver.

		HRESULT __stdcall ProtectDrawingObjects(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 34 sdword varbool*>
	^self invalidCall!

get_ProtectFormatting: rhs
	"Private - Get the value of the 'ProtectFormatting' property of the receiver.

		HRESULT __stdcall ProtectFormatting(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 147 varbool*>
	^self invalidCall!

get_ProtectGoalSeek: rhs
	"Private - Get the value of the 'ProtectGoalSeek' property of the receiver.

		HRESULT __stdcall ProtectGoalSeek(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 151 varbool*>
	^self invalidCall!

get_ProtectionMode: lcid rhs: rhs
	"Private - Get the value of the 'ProtectionMode' property of the receiver.

		HRESULT __stdcall ProtectionMode(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 35 sdword varbool*>
	^self invalidCall!

get_ProtectSelection: rhs
	"Private - Get the value of the 'ProtectSelection' property of the receiver.

		HRESULT __stdcall ProtectSelection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 153 varbool*>
	^self invalidCall!

get_RightAngleAxes: lcid rhs: rhs
	"Private - Get the value of the 'RightAngleAxes' property of the receiver.

		HRESULT __stdcall RightAngleAxes(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 118 sdword variant*>
	^self invalidCall!

get_Rotation: lcid rhs: rhs
	"Private - Get the value of the 'Rotation' property of the receiver.

		HRESULT __stdcall Rotation(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 120 sdword variant*>
	^self invalidCall!

get_Scripts: rhs
	"Private - Get the value of the 'Scripts' property of the receiver.

		HRESULT __stdcall Scripts(
			[out, retval]Scripts** RHS);"

	<virtual stdcall: hresult 162 OfficeScripts**>
	^self invalidCall!

get_Shapes: rhs
	"Private - Get the value of the 'Shapes' property of the receiver.

		HRESULT __stdcall Shapes(
			[out, retval]Shapes** RHS);"

	<virtual stdcall: hresult 42 ExcelShapes**>
	^self invalidCall!

get_ShowDataLabelsOverMaximum: rhs
	"Private - Get the value of the 'ShowDataLabelsOverMaximum' property of the receiver.

		HRESULT __stdcall ShowDataLabelsOverMaximum(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 171 varbool*>
	^self invalidCall!

get_ShowWindow: rhs
	"Private - Get the value of the 'ShowWindow' property of the receiver.

		HRESULT __stdcall ShowWindow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 126 varbool*>
	^self invalidCall!

get_SideWall: rhs
	"Private - Get the value of the 'SideWall' property of the receiver.

		HRESULT __stdcall SideWall(
			[out, retval]Walls** RHS);"

	<virtual stdcall: hresult 173 ExcelWalls**>
	^self invalidCall!

get_SizeWithWindow: lcid rhs: rhs
	"Private - Get the value of the 'SizeWithWindow' property of the receiver.

		HRESULT __stdcall SizeWithWindow(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 124 sdword varbool*>
	^self invalidCall!

get_SubType: lcid rhs: rhs
	"Private - Get the value of the 'SubType' property of the receiver.

		HRESULT __stdcall SubType(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 129 sdword sdword*>
	^self invalidCall!

get_SurfaceGroup: lcid rhs: rhs
	"Private - Get the value of the 'SurfaceGroup' property of the receiver.

		HRESULT __stdcall SurfaceGroup(
			[in]long lcid,
			[out, retval]ChartGroup** RHS);"

	<virtual stdcall: hresult 131 sdword ExcelChartGroup**>
	^self invalidCall!

get_Tab: rhs
	"Private - Get the value of the 'Tab' property of the receiver.

		HRESULT __stdcall Tab(
			[out, retval]Tab** RHS);"

	<virtual stdcall: hresult 164 ExcelTab**>
	^self invalidCall!

get_Type: lcid rhs: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 133 sdword sdword*>
	^self invalidCall!

get_Visible: lcid rhs: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[out, retval]XlSheetVisibility* RHS);"

	<virtual stdcall: hresult 40 sdword sdword*>
	^self invalidCall!

get_Walls: lcid rhs: rhs
	"Private - Get the value of the 'Walls' property of the receiver.

		HRESULT __stdcall Walls(
			[in]long lcid,
			[out, retval]Walls** RHS);"

	<virtual stdcall: hresult 138 sdword ExcelWalls**>
	^self invalidCall!

get_WallsAndGridlines2D: lcid rhs: rhs
	"Private - Get the value of the 'WallsAndGridlines2D' property of the receiver.

		HRESULT __stdcall WallsAndGridlines2D(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 139 sdword varbool*>
	^self invalidCall!

getChartElement: x y: y elementID: elementID arg1: arg1 arg2: arg2
	"Invoke the GetChartElement() method of the COM object."

	^self
		GetChartElement: x
		y: y
		elementID: elementID
		arg1: arg1
		arg2: arg2
!

GetChartElement: x y: y elementID: elementID arg1: arg1 arg2: arg2
	"Private - Invoke the GetChartElement() method of the COM object.

		HRESULT __stdcall GetChartElement(
			[in]long x,
			[in]long y,
			[in]long* ElementID,
			[in]long* Arg1,
			[in]long* Arg2);"

	<virtual stdcall: hresult 155 sdword sdword sdword* sdword* sdword*>
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

	<virtual stdcall: hresult 84 variant sdword IDispatch**>
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

	<virtual stdcall: hresult 85 variant sdword IDispatch**>
	^self invalidCall!

hasAxis: lcid
	"Answer the <variant> value of the 'HasAxis' property of the receiver."

	^self
		 hasAxis: VARIANT unspecified
		 index2: VARIANT unspecified
		 lcid: lcid!

hasAxis: index1 index2: index2 lcid: lcid
	"Answer the <variant> value of the 'HasAxis' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_HasAxis: index1 asVariant
		index2: index2 asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

hasAxis: index1 index2: index2 lcid: lcid rhs: rhs
	"Set the 'HasAxis' property of the receiver to the <variant> value of the argument."

	self
		put_HasAxis: index1 asVariant
		index2: index2 asVariant
		lcid: lcid
		rhs: rhs asVariant
!

hasDataTable
	"Answer the <varbool> value of the 'HasDataTable' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasDataTable: answer.
	^answer asObject
!

hasDataTable: rhs
	"Set the 'HasDataTable' property of the receiver to the <varbool> value of the argument."

	self put_HasDataTable: rhs
!

hasLegend: lcid
	"Answer the <varbool> value of the 'HasLegend' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_HasLegend: lcid
		rhs: answer.
	^answer asObject
!

hasLegend: lcid rhs: rhs
	"Set the 'HasLegend' property of the receiver to the <varbool> value of the argument."

	self
		put_HasLegend: lcid
		rhs: rhs
!

hasPivotFields
	"Answer the <varbool> value of the 'HasPivotFields' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasPivotFields: answer.
	^answer asObject
!

hasPivotFields: rhs
	"Set the 'HasPivotFields' property of the receiver to the <varbool> value of the argument."

	self put_HasPivotFields: rhs
!

hasTitle: lcid
	"Answer the <varbool> value of the 'HasTitle' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_HasTitle: lcid
		rhs: answer.
	^answer asObject
!

hasTitle: lcid rhs: rhs
	"Set the 'HasTitle' property of the receiver to the <varbool> value of the argument."

	self
		put_HasTitle: lcid
		rhs: rhs
!

heightPercent: lcid
	"Answer the <sdword> value of the 'HeightPercent' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_HeightPercent: lcid
		rhs: answer.
	^answer asObject
!

heightPercent: lcid rhs: rhs
	"Set the 'HeightPercent' property of the receiver to the <sdword> value of the argument."

	self
		put_HeightPercent: lcid
		rhs: rhs
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

	<virtual stdcall: hresult 97 variant sdword IDispatch**>
	^self invalidCall!

legend: lcid
	"Answer the <ExcelLegend> value of the 'Legend' property of the receiver."

	| answer |
	answer := ExcelLegend newPointer.
	self
		get_Legend: lcid
		rhs: answer.
	^answer asObject
!

line3DGroup: lcid
	"Answer the <ExcelChartGroup> value of the 'Line3DGroup' property of the receiver."

	| answer |
	answer := ExcelChartGroup newPointer.
	self
		get_Line3DGroup: lcid
		rhs: answer.
	^answer asObject
!

lineGroups: lcid
	"Answer the <IDispatch> result of invoking the LineGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 lineGroups: VARIANT unspecified
		 lcid: lcid!

lineGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the LineGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		LineGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

LineGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the LineGroups() method of the COM object.

		HRESULT __stdcall LineGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 100 variant sdword IDispatch**>
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

	<virtual stdcall: hresult 101 variant sdword IDispatch**>
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

	<virtual stdcall: hresult 102 variant sdword IDispatch**>
	^self invalidCall!

location: where
	"Answer the <Excel_Chart> result of invoking the Location() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 location: where
		 name: VARIANT unspecified!

location: where name: name
	"Answer the <Excel_Chart> result of invoking the Location() method of the COM object."

	| answer |
	answer := Excel_Chart newPointer.
	self
		Location: where
		name: name asVariant
		rhs: answer.
	^answer asObject
!

Location: where name: name rhs: rhs
	"Private - Invoke the Location() method of the COM object.

		HRESULT __stdcall Location(
			[in]XlChartLocation Where,
			[in, optional]VARIANT Name,
			[out, retval]Chart** RHS);"

	<virtual stdcall: hresult 103 sdword variant Excel_Chart**>
	^self invalidCall!

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

	<virtual stdcall: hresult 104 variant sdword IDispatch**>
	^self invalidCall!

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

	<virtual stdcall: hresult 105 variant sdword IDispatch**>
	^self invalidCall!

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

	<virtual stdcall: hresult 106 variant sdword IDispatch**>
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
		 lcid: lcid!

paste: type lcid: lcid
	"Invoke the Paste() method of the COM object."

	^self
		Paste: type asVariant
		lcid: lcid
!

Paste: type lcid: lcid
	"Private - Invoke the Paste() method of the COM object.

		HRESULT __stdcall Paste(
			[in, optional]VARIANT Type,
			[in]long lcid);"

	<virtual stdcall: hresult 107 variant sdword>
	^self invalidCall!

perspective: lcid
	"Answer the <sdword> value of the 'Perspective' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Perspective: lcid
		rhs: answer.
	^answer asObject
!

perspective: lcid rhs: rhs
	"Set the 'Perspective' property of the receiver to the <sdword> value of the argument."

	self
		put_Perspective: lcid
		rhs: rhs
!

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

	<virtual stdcall: hresult 110 variant sdword IDispatch**>
	^self invalidCall!

pie3DGroup: lcid
	"Answer the <ExcelChartGroup> value of the 'Pie3DGroup' property of the receiver."

	| answer |
	answer := ExcelChartGroup newPointer.
	self
		get_Pie3DGroup: lcid
		rhs: answer.
	^answer asObject
!

pieGroups: lcid
	"Answer the <IDispatch> result of invoking the PieGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pieGroups: VARIANT unspecified
		 lcid: lcid!

pieGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the PieGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		PieGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

PieGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the PieGroups() method of the COM object.

		HRESULT __stdcall PieGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 112 variant sdword IDispatch**>
	^self invalidCall!

pivotLayout
	"Answer the <ExcelPivotLayout> value of the 'PivotLayout' property of the receiver."

	| answer |
	answer := ExcelPivotLayout newPointer.
	self get_PivotLayout: answer.
	^answer asObject
!

plotArea: lcid
	"Answer the <ExcelPlotArea> value of the 'PlotArea' property of the receiver."

	| answer |
	answer := ExcelPlotArea newPointer.
	self
		get_PlotArea: lcid
		rhs: answer.
	^answer asObject
!

plotBy
	"Answer the <sdword> value of the 'PlotBy' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PlotBy: answer.
	^answer asObject
!

plotBy: rhs
	"Set the 'PlotBy' property of the receiver to the <sdword> value of the argument."

	self put_PlotBy: rhs
!

plotVisibleOnly: lcid
	"Answer the <varbool> value of the 'PlotVisibleOnly' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_PlotVisibleOnly: lcid
		rhs: answer.
	^answer asObject
!

plotVisibleOnly: lcid rhs: rhs
	"Set the 'PlotVisibleOnly' property of the receiver to the <varbool> value of the argument."

	self
		put_PlotVisibleOnly: lcid
		rhs: rhs
!

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
		 lcid: lcid!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName lcid: lcid
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
		lcid: lcid
!

PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName lcid: lcid
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
			[in]long lcid);"

	<virtual stdcall: hresult 175 variant variant variant variant variant variant variant variant sdword>
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
		 userInterfaceOnly: VARIANT unspecified!

protect: password drawingObjects: drawingObjects contents: contents scenarios: scenarios userInterfaceOnly: userInterfaceOnly
	"Invoke the Protect() method of the COM object."

	^self
		Protect: password asVariant
		drawingObjects: drawingObjects asVariant
		contents: contents asVariant
		scenarios: scenarios asVariant
		userInterfaceOnly: userInterfaceOnly asVariant
!

Protect: password drawingObjects: drawingObjects contents: contents scenarios: scenarios userInterfaceOnly: userInterfaceOnly
	"Private - Invoke the Protect() method of the COM object.

		HRESULT __stdcall Protect(
			[in, optional]VARIANT Password,
			[in, optional]VARIANT DrawingObjects,
			[in, optional]VARIANT Contents,
			[in, optional]VARIANT Scenarios,
			[in, optional]VARIANT UserInterfaceOnly);"

	<virtual stdcall: hresult 168 variant variant variant variant variant>
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

protectData
	"Answer the <varbool> value of the 'ProtectData' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ProtectData: answer.
	^answer asObject
!

protectData: rhs
	"Set the 'ProtectData' property of the receiver to the <varbool> value of the argument."

	self put_ProtectData: rhs
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

protectFormatting
	"Answer the <varbool> value of the 'ProtectFormatting' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ProtectFormatting: answer.
	^answer asObject
!

protectFormatting: rhs
	"Set the 'ProtectFormatting' property of the receiver to the <varbool> value of the argument."

	self put_ProtectFormatting: rhs
!

protectGoalSeek
	"Answer the <varbool> value of the 'ProtectGoalSeek' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ProtectGoalSeek: answer.
	^answer asObject
!

protectGoalSeek: rhs
	"Set the 'ProtectGoalSeek' property of the receiver to the <varbool> value of the argument."

	self put_ProtectGoalSeek: rhs
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

protectSelection
	"Answer the <varbool> value of the 'ProtectSelection' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ProtectSelection: answer.
	^answer asObject
!

protectSelection: rhs
	"Set the 'ProtectSelection' property of the receiver to the <varbool> value of the argument."

	self put_ProtectSelection: rhs
!

put__CodeName: rhs
	"Private - Set the value of the '_CodeName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall _CodeName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 bstr>
	^self invalidCall!

put_AutoScaling: lcid rhs: rhs
	"Private - Set the value of the 'AutoScaling' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoScaling(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 49 sdword varbool>
	^self invalidCall!

put_BarShape: rhs
	"Private - Set the value of the 'BarShape' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall BarShape(
			[in]XlBarShape RHS);"

	<virtual stdcall: hresult 143 sdword>
	^self invalidCall!

put_ChartStyle: rhs
	"Private - Set the value of the 'ChartStyle' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ChartStyle(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 181 variant>
	^self invalidCall!

put_ChartType: rhs
	"Private - Set the value of the 'ChartType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ChartType(
			[in]XlChartType RHS);"

	<virtual stdcall: hresult 136 sdword>
	^self invalidCall!

put_DepthPercent: lcid rhs: rhs
	"Private - Set the value of the 'DepthPercent' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DepthPercent(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 69 sdword sdword>
	^self invalidCall!

put_DisplayBlanksAs: lcid rhs: rhs
	"Private - Set the value of the 'DisplayBlanksAs' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DisplayBlanksAs(
			[in]long lcid,
			[in]XlDisplayBlanksAs RHS);"

	<virtual stdcall: hresult 72 sdword sdword>
	^self invalidCall!

put_Elevation: lcid rhs: rhs
	"Private - Set the value of the 'Elevation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Elevation(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 78 sdword sdword>
	^self invalidCall!

put_GapDepth: lcid rhs: rhs
	"Private - Set the value of the 'GapDepth' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall GapDepth(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 83 sdword sdword>
	^self invalidCall!

put_HasAxis: index1 index2: index2 lcid: lcid rhs: rhs
	"Private - Set the value of the 'HasAxis' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall HasAxis(
			[in, optional]VARIANT Index1,
			[in, optional]VARIANT Index2,
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 87 variant variant sdword variant>
	^self invalidCall!

put_HasDataTable: rhs
	"Private - Set the value of the 'HasDataTable' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasDataTable(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 89 varbool>
	^self invalidCall!

put_HasLegend: lcid rhs: rhs
	"Private - Set the value of the 'HasLegend' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasLegend(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 91 sdword varbool>
	^self invalidCall!

put_HasPivotFields: rhs
	"Private - Set the value of the 'HasPivotFields' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasPivotFields(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 161 varbool>
	^self invalidCall!

put_HasTitle: lcid rhs: rhs
	"Private - Set the value of the 'HasTitle' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasTitle(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 93 sdword varbool>
	^self invalidCall!

put_HeightPercent: lcid rhs: rhs
	"Private - Set the value of the 'HeightPercent' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall HeightPercent(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 95 sdword sdword>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 20 bstr>
	^self invalidCall!

put_OnDoubleClick: lcid rhs: rhs
	"Private - Set the value of the 'OnDoubleClick' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnDoubleClick(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 23 sdword bstr>
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

put_Perspective: lcid rhs: rhs
	"Private - Set the value of the 'Perspective' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Perspective(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 109 sdword sdword>
	^self invalidCall!

put_PlotBy: rhs
	"Private - Set the value of the 'PlotBy' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PlotBy(
			[in]XlRowCol RHS);"

	<virtual stdcall: hresult 145 sdword>
	^self invalidCall!

put_PlotVisibleOnly: lcid rhs: rhs
	"Private - Set the value of the 'PlotVisibleOnly' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PlotVisibleOnly(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 115 sdword varbool>
	^self invalidCall!

put_ProtectData: rhs
	"Private - Set the value of the 'ProtectData' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ProtectData(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 150 varbool>
	^self invalidCall!

put_ProtectFormatting: rhs
	"Private - Set the value of the 'ProtectFormatting' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ProtectFormatting(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 148 varbool>
	^self invalidCall!

put_ProtectGoalSeek: rhs
	"Private - Set the value of the 'ProtectGoalSeek' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ProtectGoalSeek(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 152 varbool>
	^self invalidCall!

put_ProtectSelection: rhs
	"Private - Set the value of the 'ProtectSelection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ProtectSelection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 154 varbool>
	^self invalidCall!

put_RightAngleAxes: lcid rhs: rhs
	"Private - Set the value of the 'RightAngleAxes' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall RightAngleAxes(
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 119 sdword variant>
	^self invalidCall!

put_Rotation: lcid rhs: rhs
	"Private - Set the value of the 'Rotation' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Rotation(
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 121 sdword variant>
	^self invalidCall!

put_ShowDataLabelsOverMaximum: rhs
	"Private - Set the value of the 'ShowDataLabelsOverMaximum' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowDataLabelsOverMaximum(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 172 varbool>
	^self invalidCall!

put_ShowWindow: rhs
	"Private - Set the value of the 'ShowWindow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowWindow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 127 varbool>
	^self invalidCall!

put_SizeWithWindow: lcid rhs: rhs
	"Private - Set the value of the 'SizeWithWindow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SizeWithWindow(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 125 sdword varbool>
	^self invalidCall!

put_SubType: lcid rhs: rhs
	"Private - Set the value of the 'SubType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SubType(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 130 sdword sdword>
	^self invalidCall!

put_Type: lcid rhs: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Type(
			[in]long lcid,
			[in]long RHS);"

	<virtual stdcall: hresult 134 sdword sdword>
	^self invalidCall!

put_Visible: lcid rhs: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[in]XlSheetVisibility RHS);"

	<virtual stdcall: hresult 41 sdword sdword>
	^self invalidCall!

put_WallsAndGridlines2D: lcid rhs: rhs
	"Private - Set the value of the 'WallsAndGridlines2D' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WallsAndGridlines2D(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 140 sdword varbool>
	^self invalidCall!

radarGroups: lcid
	"Answer the <IDispatch> result of invoking the RadarGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 radarGroups: VARIANT unspecified
		 lcid: lcid!

radarGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the RadarGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		RadarGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

RadarGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the RadarGroups() method of the COM object.

		HRESULT __stdcall RadarGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 116 variant sdword IDispatch**>
	^self invalidCall!

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

	<virtual stdcall: hresult 117 variant sdword IDispatch**>
	^self invalidCall!

refresh
	"Invoke the Refresh() method of the COM object."

	^self Refresh
!

Refresh
	"Private - Invoke the Refresh() method of the COM object.

		HRESULT __stdcall Refresh();"

	<virtual stdcall: hresult 158>
	^self invalidCall!

rightAngleAxes: lcid
	"Answer the <variant> value of the 'RightAngleAxes' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_RightAngleAxes: lcid
		rhs: answer.
	^answer asObject
!

rightAngleAxes: lcid rhs: rhs
	"Set the 'RightAngleAxes' property of the receiver to the <variant> value of the argument."

	self
		put_RightAngleAxes: lcid
		rhs: rhs asVariant
!

rotation: lcid
	"Answer the <variant> value of the 'Rotation' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Rotation: lcid
		rhs: answer.
	^answer asObject
!

rotation: lcid rhs: rhs
	"Set the 'Rotation' property of the receiver to the <variant> value of the argument."

	self
		put_Rotation: lcid
		rhs: rhs asVariant
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

	<virtual stdcall: hresult 167 bstr variant variant variant variant variant variant variant variant variant>
	^self invalidCall!

saveChartTemplate: filename
	"Invoke the SaveChartTemplate() method of the COM object."

	^self SaveChartTemplate: filename
!

SaveChartTemplate: filename
	"Private - Invoke the SaveChartTemplate() method of the COM object.

		HRESULT __stdcall SaveChartTemplate(
			[in]BSTR Filename);"

	<virtual stdcall: hresult 177 bstr>
	^self invalidCall!

scripts
	"Answer the <OfficeScripts> value of the 'Scripts' property of the receiver."

	| answer |
	answer := OfficeScripts newPointer.
	self get_Scripts: answer.
	^answer asObject
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

	<virtual stdcall: hresult 122 variant sdword IDispatch**>
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

seriesCollection: lcid
	"Answer the <IDispatch> result of invoking the SeriesCollection() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 seriesCollection: VARIANT unspecified
		 lcid: lcid!

seriesCollection: index lcid: lcid
	"Answer the <IDispatch> result of invoking the SeriesCollection() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		SeriesCollection: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

SeriesCollection: index lcid: lcid rhs: rhs
	"Private - Invoke the SeriesCollection() method of the COM object.

		HRESULT __stdcall SeriesCollection(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 123 variant sdword IDispatch**>
	^self invalidCall!

setBackgroundPicture: filename
	"Invoke the SetBackgroundPicture() method of the COM object."

	^self SetBackgroundPicture: filename
!

SetBackgroundPicture: filename
	"Private - Invoke the SetBackgroundPicture() method of the COM object.

		HRESULT __stdcall SetBackgroundPicture(
			[in]BSTR Filename);"

	<virtual stdcall: hresult 51 bstr>
	^self invalidCall!

setDefaultChart: name
	"Invoke the SetDefaultChart() method of the COM object."

	^self SetDefaultChart: name asVariant
!

SetDefaultChart: name
	"Private - Invoke the SetDefaultChart() method of the COM object.

		HRESULT __stdcall SetDefaultChart(
			[in]VARIANT Name);"

	<virtual stdcall: hresult 178 variant>
	^self invalidCall!

setElement: element
	"Invoke the SetElement() method of the COM object."

	^self SetElement: element
!

SetElement: element
	"Private - Invoke the SetElement() method of the COM object.

		HRESULT __stdcall SetElement(
			[in]MsoChartElementType Element);"

	<virtual stdcall: hresult 170 sdword>
	^self invalidCall!

setSourceData: source
	"Invoke the SetSourceData() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 setSourceData: source
		 plotBy: VARIANT unspecified!

setSourceData: source plotBy: plotBy
	"Invoke the SetSourceData() method of the COM object."

	^self
		SetSourceData: source
		plotBy: plotBy asVariant
!

SetSourceData: source plotBy: plotBy
	"Private - Invoke the SetSourceData() method of the COM object.

		HRESULT __stdcall SetSourceData(
			[in]Range* Source,
			[in, optional]VARIANT PlotBy);"

	<virtual stdcall: hresult 156 ExcelRange* variant>
	^self invalidCall!

shapes
	"Answer the <ExcelShapes> value of the 'Shapes' property of the receiver."

	| answer |
	answer := ExcelShapes newPointer.
	self get_Shapes: answer.
	^answer asObject
!

showDataLabelsOverMaximum
	"Answer the <varbool> value of the 'ShowDataLabelsOverMaximum' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowDataLabelsOverMaximum: answer.
	^answer asObject
!

showDataLabelsOverMaximum: rhs
	"Set the 'ShowDataLabelsOverMaximum' property of the receiver to the <varbool> value of the argument."

	self put_ShowDataLabelsOverMaximum: rhs
!

showWindow
	"Answer the <varbool> value of the 'ShowWindow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowWindow: answer.
	^answer asObject
!

showWindow: rhs
	"Set the 'ShowWindow' property of the receiver to the <varbool> value of the argument."

	self put_ShowWindow: rhs
!

sideWall
	"Answer the <ExcelWalls> value of the 'SideWall' property of the receiver."

	| answer |
	answer := ExcelWalls newPointer.
	self get_SideWall: answer.
	^answer asObject
!

sizeWithWindow: lcid
	"Answer the <varbool> value of the 'SizeWithWindow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_SizeWithWindow: lcid
		rhs: answer.
	^answer asObject
!

sizeWithWindow: lcid rhs: rhs
	"Set the 'SizeWithWindow' property of the receiver to the <varbool> value of the argument."

	self
		put_SizeWithWindow: lcid
		rhs: rhs
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

	<virtual stdcall: hresult 128 variant sdword IDispatch**>
	^self invalidCall!

subType: lcid
	"Answer the <sdword> value of the 'SubType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_SubType: lcid
		rhs: answer.
	^answer asObject
!

subType: lcid rhs: rhs
	"Set the 'SubType' property of the receiver to the <sdword> value of the argument."

	self
		put_SubType: lcid
		rhs: rhs
!

surfaceGroup: lcid
	"Answer the <ExcelChartGroup> value of the 'SurfaceGroup' property of the receiver."

	| answer |
	answer := ExcelChartGroup newPointer.
	self
		get_SurfaceGroup: lcid
		rhs: answer.
	^answer asObject
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

	<virtual stdcall: hresult 132 variant sdword IDispatch**>
	^self invalidCall!

type: lcid
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Type: lcid
		rhs: answer.
	^answer asObject
!

type: lcid rhs: rhs
	"Set the 'Type' property of the receiver to the <sdword> value of the argument."

	self
		put_Type: lcid
		rhs: rhs
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

walls: lcid
	"Answer the <ExcelWalls> value of the 'Walls' property of the receiver."

	| answer |
	answer := ExcelWalls newPointer.
	self
		get_Walls: lcid
		rhs: answer.
	^answer asObject
!

wallsAndGridlines2D: lcid
	"Answer the <varbool> value of the 'WallsAndGridlines2D' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_WallsAndGridlines2D: lcid
		rhs: answer.
	^answer asObject
!

wallsAndGridlines2D: lcid rhs: rhs
	"Set the 'WallsAndGridlines2D' property of the receiver to the <varbool> value of the argument."

	self
		put_WallsAndGridlines2D: lcid
		rhs: rhs
!

xyGroups: lcid
	"Answer the <IDispatch> result of invoking the XYGroups() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 xyGroups: VARIANT unspecified
		 lcid: lcid!

xyGroups: index lcid: lcid
	"Answer the <IDispatch> result of invoking the XYGroups() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		XYGroups: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

XYGroups: index lcid: lcid rhs: rhs
	"Private - Invoke the XYGroups() method of the COM object.

		HRESULT __stdcall XYGroups(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 141 variant sdword IDispatch**>
	^self invalidCall! !
!Excel_Chart categoriesFor: #__printOut:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #_applyDataLabels:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_applyDataLabels:legendKey:autoText:hasLeaderLines:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_ApplyDataLabels:legendKey:autoText:hasLeaderLines:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #_codeName!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #_codeName:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #_dummy23!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_Dummy23!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #_evaluate:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_Evaluate:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #_printOut:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #_protect:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_protect:drawingObjects:contents:scenarios:userInterfaceOnly:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_Protect:drawingObjects:contents:scenarios:userInterfaceOnly:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #_saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #_SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #_saveAs:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #activate:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Activate:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #application!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #applyChartTemplate:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ApplyChartTemplate:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #applyCustomType:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #applyCustomType:typeName:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ApplyCustomType:typeName:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #applyDataLabels:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #applyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ApplyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #applyLayout:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #applyLayout:chartType:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ApplyLayout:chartType:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #arcs:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #arcs:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Arcs:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #area3DGroup:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #areaGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #areaGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #AreaGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #autoFormat:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #autoFormat:format:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #AutoFormat:format:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #autoScaling:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #autoScaling:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #axes:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #axes:axisGroup:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Axes:axisGroup:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #backWall!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #bar3DGroup:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #barGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #barGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #BarGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #barShape!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #barShape:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #buttons:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #buttons:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Buttons:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #chartArea:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #chartGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #chartGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ChartGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #chartObjects:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #chartObjects:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ChartObjects:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #chartStyle!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #chartStyle:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #chartTitle:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #chartType!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #chartType:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #chartWizard:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #chartWizard:gallery:format:plotBy:categoryLabels:seriesLabels:hasLegend:title:categoryTitle:valueTitle:extraTitle:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ChartWizard:gallery:format:plotBy:categoryLabels:seriesLabels:hasLegend:title:categoryTitle:valueTitle:extraTitle:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #checkBoxes:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #checkBoxes:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #CheckBoxes:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #checkSpelling:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #clearToMatchStyle!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ClearToMatchStyle!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #codeName!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #column3DGroup:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #columnGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #columnGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ColumnGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #copy:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #copy:after:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Copy:after:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #copyChartBuild!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #CopyChartBuild!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #copyPicture:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #copyPicture:format:size:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #CopyPicture:format:size:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #corners:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #createPublisher:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #createPublisher:appearance:size:containsPICT:containsBIFF:containsRTF:containsVALU:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #CreatePublisher:appearance:size:containsPICT:containsBIFF:containsRTF:containsVALU:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #dataTable!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #delete:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Delete:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #depthPercent:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #depthPercent:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #deselect:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Deselect:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #displayBlanksAs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #displayBlanksAs:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #doughnutGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #doughnutGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #DoughnutGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #drawingObjects:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #drawingObjects:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #DrawingObjects:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #drawings:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #drawings:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Drawings:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #dropDowns:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #dropDowns:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #DropDowns:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #elevation:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #elevation:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #evaluate:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Evaluate:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #export:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #export:filterName:interactive:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Export:filterName:interactive:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #exportAsFixedFormat:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #exportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ExportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #floor:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #gapDepth:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #gapDepth:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #get__CodeName:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Application:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Area3DGroup:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_AutoScaling:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_BackWall:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Bar3DGroup:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_BarShape:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ChartArea:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ChartStyle:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ChartTitle:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ChartType:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_CodeName:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Column3DGroup:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Corners:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_DataTable:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_DepthPercent:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_DisplayBlanksAs:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Elevation:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Floor:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_GapDepth:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_HasAxis:index2:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_HasDataTable:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_HasLegend:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_HasPivotFields:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_HasTitle:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_HeightPercent:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Hyperlinks:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Index:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Legend:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Line3DGroup:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_MailEnvelope:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Name:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Next:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_OnDoubleClick:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_PageSetup:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Perspective:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Pie3DGroup:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_PivotLayout:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_PlotArea:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_PlotBy:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_PlotVisibleOnly:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Previous:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ProtectContents:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ProtectData:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ProtectDrawingObjects:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ProtectFormatting:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ProtectGoalSeek:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ProtectionMode:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ProtectSelection:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_RightAngleAxes:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Rotation:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Scripts:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Shapes:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ShowDataLabelsOverMaximum:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_ShowWindow:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_SideWall:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_SizeWithWindow:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_SubType:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_SurfaceGroup:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Tab:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Type:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Visible:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_Walls:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #get_WallsAndGridlines2D:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #getChartElement:y:elementID:arg1:arg2:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #GetChartElement:y:elementID:arg1:arg2:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #groupBoxes:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #groupBoxes:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #GroupBoxes:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #groupObjects:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #groupObjects:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #GroupObjects:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #hasAxis:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasAxis:index2:lcid:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasAxis:index2:lcid:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasDataTable!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasDataTable:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasLegend:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasLegend:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasPivotFields!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasPivotFields:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasTitle:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hasTitle:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #heightPercent:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #heightPercent:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #hyperlinks!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #index:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #isExtensible!**auto generated**!public!testing! !
!Excel_Chart categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!Excel_Chart categoriesFor: #labels:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #labels:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Labels:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #legend:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #line3DGroup:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #lineGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #lineGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #LineGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #lines:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #lines:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Lines:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #listBoxes:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #listBoxes:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ListBoxes:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #location:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #location:name:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Location:name:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #mailEnvelope!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #move:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #move:after:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Move:after:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #name!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #name:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #next!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #oleObjects:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #oleObjects:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #OLEObjects:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #onDoubleClick:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #onDoubleClick:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #onSheetActivate:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #onSheetActivate:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #onSheetDeactivate:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #onSheetDeactivate:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #optionButtons:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #optionButtons:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #OptionButtons:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #ovals:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ovals:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Ovals:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #pageSetup!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #paste:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #paste:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Paste:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #perspective:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #perspective:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #pictures:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #pictures:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Pictures:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #pie3DGroup:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #pieGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #pieGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #PieGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #pivotLayout!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #plotArea:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #plotBy!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #plotBy:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #plotVisibleOnly:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #plotVisibleOnly:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #previous!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #printOut:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #printPreview:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #printPreview:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #PrintPreview:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #protect!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #protect:drawingObjects:contents:scenarios:userInterfaceOnly:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Protect:drawingObjects:contents:scenarios:userInterfaceOnly:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #protectContents:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectData!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectData:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectDrawingObjects:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectFormatting!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectFormatting:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectGoalSeek!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectGoalSeek:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectionMode:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectSelection!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #protectSelection:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #put__CodeName:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_AutoScaling:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_BarShape:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_ChartStyle:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_ChartType:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_DepthPercent:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_DisplayBlanksAs:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_Elevation:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_GapDepth:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_HasAxis:index2:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_HasDataTable:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_HasLegend:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_HasPivotFields:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_HasTitle:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_HeightPercent:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_Name:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_OnDoubleClick:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_Perspective:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_PlotBy:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_PlotVisibleOnly:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_ProtectData:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_ProtectFormatting:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_ProtectGoalSeek:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_ProtectSelection:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_RightAngleAxes:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_Rotation:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_ShowDataLabelsOverMaximum:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_ShowWindow:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_SizeWithWindow:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_SubType:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_Type:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_Visible:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #put_WallsAndGridlines2D:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #radarGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #radarGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #RadarGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #rectangles:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #rectangles:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Rectangles:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #refresh!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Refresh!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #rightAngleAxes:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #rightAngleAxes:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #rotation:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #rotation:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #saveAs:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:local:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:local:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #saveChartTemplate:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #SaveChartTemplate:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #scripts!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #scrollBars:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #scrollBars:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #ScrollBars:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #select:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #select:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Select:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #seriesCollection:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #seriesCollection:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #SeriesCollection:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #setBackgroundPicture:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #SetBackgroundPicture:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #setDefaultChart:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #SetDefaultChart:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #setElement:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #SetElement:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #setSourceData:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #setSourceData:plotBy:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #SetSourceData:plotBy:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #shapes!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #showDataLabelsOverMaximum!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #showDataLabelsOverMaximum:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #showWindow!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #showWindow:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #sideWall!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #sizeWithWindow:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #sizeWithWindow:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #spinners:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #spinners:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Spinners:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #subType:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #subType:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #surfaceGroup:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #tab!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #textBoxes:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #textBoxes:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #TextBoxes:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #type:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #type:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #unprotect:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #unprotect:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #Unprotect:lcid:!**auto generated**!COM Interfaces-_Chart!private! !
!Excel_Chart categoriesFor: #visible:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #visible:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #walls:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #wallsAndGridlines2D:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #wallsAndGridlines2D:rhs:!**auto generated**!properties!public! !
!Excel_Chart categoriesFor: #xyGroups:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #xyGroups:lcid:!**auto generated**!methods!public! !
!Excel_Chart categoriesFor: #XYGroups:lcid:rhs:!**auto generated**!COM Interfaces-_Chart!private! !

!Excel_Chart class methodsFor!

clsid
	"Private - Answer the CLSID of the coclass (Chart) for which the receiver is the default interface."

	^CLSID fromString: '{00020821-0000-0000-C000-000000000046}'
!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel._Chart'
		Excel_Chart defineTemplate"

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
		defineFunction: #_Dummy23
			returnType: 'void';
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
		defineFunction: #_ApplyDataLabels:legendKey:autoText:hasLeaderLines:lcid:
			argumentTypes: 'sdword variant variant variant sdword';
		defineFunction: #Arcs:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_Area3DGroup:rhs:
			argumentTypes: 'sdword ExcelChartGroup**';
		defineFunction: #AreaGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #AutoFormat:format:
			argumentTypes: 'sdword variant';
		defineFunction: #get_AutoScaling:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_AutoScaling:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #Axes:axisGroup:lcid:rhs:
			argumentTypes: 'variant sdword sdword IDispatch**';
		defineFunction: #SetBackgroundPicture:
			argumentTypes: 'bstr';
		defineFunction: #get_Bar3DGroup:rhs:
			argumentTypes: 'sdword ExcelChartGroup**';
		defineFunction: #BarGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Buttons:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_ChartArea:rhs:
			argumentTypes: 'sdword ExcelChartArea**';
		defineFunction: #ChartGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #ChartObjects:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_ChartTitle:rhs:
			argumentTypes: 'sdword ExcelChartTitle**';
		defineFunction: #ChartWizard:gallery:format:plotBy:categoryLabels:seriesLabels:hasLegend:title:categoryTitle:valueTitle:extraTitle:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #CheckBoxes:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #CheckSpelling:ignoreUppercase:alwaysSuggest:spellLang:lcid:
			argumentTypes: 'variant variant variant variant sdword';
		defineFunction: #get_Column3DGroup:rhs:
			argumentTypes: 'sdword ExcelChartGroup**';
		defineFunction: #ColumnGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #CopyPicture:format:size:lcid:
			argumentTypes: 'sdword sdword sdword sdword';
		defineFunction: #get_Corners:rhs:
			argumentTypes: 'sdword ExcelCorners**';
		defineFunction: #CreatePublisher:appearance:size:containsPICT:containsBIFF:containsRTF:containsVALU:lcid:
			argumentTypes: 'variant sdword sdword variant variant variant variant sdword';
		defineFunction: #get_DataTable:
			argumentTypes: 'ExcelDataTable**';
		defineFunction: #get_DepthPercent:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_DepthPercent:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #Deselect:
			argumentTypes: 'sdword';
		defineFunction: #get_DisplayBlanksAs:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_DisplayBlanksAs:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #DoughnutGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Drawings:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #DrawingObjects:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #DropDowns:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_Elevation:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_Elevation:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #Evaluate:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #_Evaluate:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #get_Floor:rhs:
			argumentTypes: 'sdword ExcelFloor**';
		defineFunction: #get_GapDepth:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_GapDepth:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #GroupBoxes:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #GroupObjects:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_HasAxis:index2:lcid:rhs:
			argumentTypes: 'variant variant sdword variant*';
		defineFunction: #put_HasAxis:index2:lcid:rhs:
			argumentTypes: 'variant variant sdword variant';
		defineFunction: #get_HasDataTable:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasDataTable:
			argumentTypes: 'varbool';
		defineFunction: #get_HasLegend:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_HasLegend:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_HasTitle:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_HasTitle:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_HeightPercent:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_HeightPercent:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_Hyperlinks:
			argumentTypes: 'ExcelHyperlinks**';
		defineFunction: #Labels:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_Legend:rhs:
			argumentTypes: 'sdword ExcelLegend**';
		defineFunction: #get_Line3DGroup:rhs:
			argumentTypes: 'sdword ExcelChartGroup**';
		defineFunction: #LineGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Lines:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #ListBoxes:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Location:name:rhs:
			argumentTypes: 'sdword variant Excel_Chart**';
		defineFunction: #OLEObjects:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #OptionButtons:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Ovals:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Paste:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #get_Perspective:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_Perspective:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #Pictures:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_Pie3DGroup:rhs:
			argumentTypes: 'sdword ExcelChartGroup**';
		defineFunction: #PieGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_PlotArea:rhs:
			argumentTypes: 'sdword ExcelPlotArea**';
		defineFunction: #get_PlotVisibleOnly:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_PlotVisibleOnly:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #RadarGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #Rectangles:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_RightAngleAxes:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_RightAngleAxes:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get_Rotation:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_Rotation:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #ScrollBars:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #SeriesCollection:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_SizeWithWindow:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_SizeWithWindow:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_ShowWindow:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowWindow:
			argumentTypes: 'varbool';
		defineFunction: #Spinners:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_SubType:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_SubType:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_SurfaceGroup:rhs:
			argumentTypes: 'sdword ExcelChartGroup**';
		defineFunction: #TextBoxes:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_Type:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_Type:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_ChartType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ChartType:
			argumentTypes: 'sdword';
		defineFunction: #ApplyCustomType:typeName:
			argumentTypes: 'sdword variant';
		defineFunction: #get_Walls:rhs:
			argumentTypes: 'sdword ExcelWalls**';
		defineFunction: #get_WallsAndGridlines2D:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_WallsAndGridlines2D:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #XYGroups:lcid:rhs:
			argumentTypes: 'variant sdword IDispatch**';
		defineFunction: #get_BarShape:
			argumentTypes: 'sdword*';
		defineFunction: #put_BarShape:
			argumentTypes: 'sdword';
		defineFunction: #get_PlotBy:
			argumentTypes: 'sdword*';
		defineFunction: #put_PlotBy:
			argumentTypes: 'sdword';
		defineFunction: #CopyChartBuild;
		defineFunction: #get_ProtectFormatting:
			argumentTypes: 'varbool*';
		defineFunction: #put_ProtectFormatting:
			argumentTypes: 'varbool';
		defineFunction: #get_ProtectData:
			argumentTypes: 'varbool*';
		defineFunction: #put_ProtectData:
			argumentTypes: 'varbool';
		defineFunction: #get_ProtectGoalSeek:
			argumentTypes: 'varbool*';
		defineFunction: #put_ProtectGoalSeek:
			argumentTypes: 'varbool';
		defineFunction: #get_ProtectSelection:
			argumentTypes: 'varbool*';
		defineFunction: #put_ProtectSelection:
			argumentTypes: 'varbool';
		defineFunction: #GetChartElement:y:elementID:arg1:arg2:
			argumentTypes: 'sdword sdword sdword* sdword* sdword*';
		defineFunction: #SetSourceData:plotBy:
			argumentTypes: 'ExcelRange* variant';
		defineFunction: #Export:filterName:interactive:rhs:
			argumentTypes: 'bstr variant variant varbool*';
		defineFunction: #Refresh;
		defineFunction: #get_PivotLayout:
			argumentTypes: 'ExcelPivotLayout**';
		defineFunction: #get_HasPivotFields:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasPivotFields:
			argumentTypes: 'varbool';
		defineFunction: #get_Scripts:
			argumentTypes: 'OfficeScripts**';
		defineFunction: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant sdword';
		defineFunction: #get_Tab:
			argumentTypes: 'ExcelTab**';
		defineFunction: #get_MailEnvelope:
			argumentTypes: 'OfficeIMsoEnvelopeVB**';
		defineFunction: #ApplyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:lcid:
			argumentTypes: 'sdword variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:local:
			argumentTypes: 'bstr variant variant variant variant variant variant variant variant variant';
		defineFunction: #Protect:drawingObjects:contents:scenarios:userInterfaceOnly:
			argumentTypes: 'variant variant variant variant variant';
		defineFunction: #ApplyLayout:chartType:
			argumentTypes: 'sdword variant';
		defineFunction: #SetElement:
			argumentTypes: 'sdword';
		defineFunction: #get_ShowDataLabelsOverMaximum:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowDataLabelsOverMaximum:
			argumentTypes: 'varbool';
		defineFunction: #get_SideWall:
			argumentTypes: 'ExcelWalls**';
		defineFunction: #get_BackWall:
			argumentTypes: 'ExcelWalls**';
		defineFunction: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant sdword';
		defineFunction: #ApplyChartTemplate:
			argumentTypes: 'bstr';
		defineFunction: #SaveChartTemplate:
			argumentTypes: 'bstr';
		defineFunction: #SetDefaultChart:
			argumentTypes: 'variant';
		defineFunction: #ExportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:
			argumentTypes: 'sdword variant variant variant variant variant variant variant variant';
		defineFunction: #get_ChartStyle:
			argumentTypes: 'variant*';
		defineFunction: #put_ChartStyle:
			argumentTypes: 'variant';
		defineFunction: #ClearToMatchStyle
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_Chart initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_Chart class categoriesFor: #clsid!**auto generated**!constants!private! !
!Excel_Chart class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!Excel_Chart class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

