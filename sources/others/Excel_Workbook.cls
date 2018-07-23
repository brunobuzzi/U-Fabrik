"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_Workbook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_Workbook guid: (IID fromString: '{000208DA-0000-0000-C000-000000000046}')!
Excel_Workbook comment: '<Excel_Workbook> is a wrapper class for the COM interface ''Excel._Workbook'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208DA-0000-0000-C000-000000000046), 
	helpcontext(0x00020021), 
	dual
]
interface _Workbook : IDispatch
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
	[id(0x000005a1), hidden, propget, helpcontext(0x000105a1)]
	HRESULT __stdcall AcceptLabelsInFormulas(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005a1), hidden, propput, helpcontext(0x000105a1)]
	HRESULT __stdcall AcceptLabelsInFormulas(
		[in]VARIANT_BOOL RHS);
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate(
		[in]long lcid);
	[id(0x000000b7), propget, helpcontext(0x000100b7)]
	HRESULT __stdcall ActiveChart(
		[out, retval]Chart** RHS);
	[id(0x00000133), propget, helpcontext(0x00010133)]
	HRESULT __stdcall ActiveSheet(
		[out, retval]IDispatch** RHS);
	[id(0x0000023e), hidden, propget, helpcontext(0x0001023e)]
	HRESULT __stdcall Author(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000023e), hidden, propput, helpcontext(0x0001023e)]
	HRESULT __stdcall Author(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x000005a2), propget, helpcontext(0x000105a2)]
	HRESULT __stdcall AutoUpdateFrequency(
		[out, retval]long* RHS);
	[id(0x000005a2), propput, helpcontext(0x000105a2)]
	HRESULT __stdcall AutoUpdateFrequency(
		[in]long RHS);
	[id(0x000005a3), propget, helpcontext(0x000105a3)]
	HRESULT __stdcall AutoUpdateSaveChanges(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005a3), propput, helpcontext(0x000105a3)]
	HRESULT __stdcall AutoUpdateSaveChanges(
		[in]VARIANT_BOOL RHS);
	[id(0x000005a4), propget, helpcontext(0x000105a4)]
	HRESULT __stdcall ChangeHistoryDuration(
		[out, retval]long* RHS);
	[id(0x000005a4), propput, helpcontext(0x000105a4)]
	HRESULT __stdcall ChangeHistoryDuration(
		[in]long RHS);
	[id(0x00000498), propget, helpcontext(0x00010498)]
	HRESULT __stdcall BuiltinDocumentProperties(
		[out, retval]IDispatch** RHS);
	[id(0x000003dd), helpcontext(0x000103dd)]
	HRESULT __stdcall ChangeFileAccess(
		[in]XlFileAccess Mode,
		[in, optional]VARIANT WritePassword,
		[in, optional]VARIANT Notify,
		[in]long lcid);
	[id(0x00000322), helpcontext(0x00010322)]
	HRESULT __stdcall ChangeLink(
		[in]BSTR Name,
		[in]BSTR NewName,
		[in, defaultvalue(1)]XlLinkType Type,
		[in]long lcid);
	[id(0x00000079), propget, helpcontext(0x00010079)]
	HRESULT __stdcall Charts(
		[out, retval]Sheets** RHS);
	[id(0x00000115), helpcontext(0x00010115)]
	HRESULT __stdcall Close(
		[in, optional]VARIANT SaveChanges,
		[in, optional]VARIANT Filename,
		[in, optional]VARIANT RouteWorkbook,
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
	[id(0x0000011e), propget, helpcontext(0x0001011e)]
	HRESULT __stdcall Colors(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x0000011e), propput, helpcontext(0x0001011e)]
	HRESULT __stdcall Colors(
		[in, optional]VARIANT Index,
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x0000059f), propget, helpcontext(0x0001059f)]
	HRESULT __stdcall CommandBars(
		[out, retval]CommandBars** RHS);
	[id(0x0000023f), hidden, propget, helpcontext(0x0001023f)]
	HRESULT __stdcall Comments(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000023f), hidden, propput, helpcontext(0x0001023f)]
	HRESULT __stdcall Comments(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000497), propget, helpcontext(0x00010497)]
	HRESULT __stdcall ConflictResolution(
		[out, retval]XlSaveConflictResolution* RHS);
	[id(0x00000497), propput, helpcontext(0x00010497)]
	HRESULT __stdcall ConflictResolution(
		[in]XlSaveConflictResolution RHS);
	[id(0x000004a6), propget, helpcontext(0x000104a6)]
	HRESULT __stdcall Container(
		[out, retval]IDispatch** RHS);
	[id(0x0000011f), propget, helpcontext(0x0001011f)]
	HRESULT __stdcall CreateBackup(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000499), propget, helpcontext(0x00010499)]
	HRESULT __stdcall CustomDocumentProperties(
		[out, retval]IDispatch** RHS);
	[id(0x00000193), propget, helpcontext(0x00010193)]
	HRESULT __stdcall Date1904(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000193), propput, helpcontext(0x00010193)]
	HRESULT __stdcall Date1904(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x0000018d), helpcontext(0x0001018d)]
	HRESULT __stdcall DeleteNumberFormat(
		[in]BSTR NumberFormat,
		[in]long lcid);
	[id(0x000002fc), hidden, propget, helpcontext(0x000102fc)]
	HRESULT __stdcall DialogSheets(
		[out, retval]Sheets** RHS);
	[id(0x00000194), propget, helpcontext(0x00010194)]
	HRESULT __stdcall DisplayDrawingObjects(
		[in]long lcid,
		[out, retval]XlDisplayDrawingObjects* RHS);
	[id(0x00000194), propput, helpcontext(0x00010194)]
	HRESULT __stdcall DisplayDrawingObjects(
		[in]long lcid,
		[in]XlDisplayDrawingObjects RHS);
	[id(0x00000490), helpcontext(0x00010490)]
	HRESULT __stdcall ExclusiveAccess(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000120), propget, helpcontext(0x00010120)]
	HRESULT __stdcall FileFormat(
		[in]long lcid,
		[out, retval]XlFileFormat* RHS);
	[id(0x000003cd), helpcontext(0x000103cd)]
	HRESULT __stdcall ForwardMailer(
		[in]long lcid);
	[id(0x00000121), propget, helpcontext(0x00010121)]
	HRESULT __stdcall FullName(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x000003d0), hidden, propget, helpcontext(0x000103d0)]
	HRESULT __stdcall HasMailer(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003d0), hidden, propput, helpcontext(0x000103d0)]
	HRESULT __stdcall HasMailer(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000122), propget, helpcontext(0x00010122)]
	HRESULT __stdcall HasPassword(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003b6), hidden, propget, helpcontext(0x000103b6)]
	HRESULT __stdcall HasRoutingSlip(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003b6), hidden, propput, helpcontext(0x000103b6)]
	HRESULT __stdcall HasRoutingSlip(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000005a5), propget, helpcontext(0x000105a5)]
	HRESULT __stdcall IsAddin(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005a5), propput, helpcontext(0x000105a5)]
	HRESULT __stdcall IsAddin(
		[in]VARIANT_BOOL RHS);
	[id(0x00000241), hidden, propget, helpcontext(0x00010241)]
	HRESULT __stdcall Keywords(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000241), hidden, propput, helpcontext(0x00010241)]
	HRESULT __stdcall Keywords(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x00000327), helpcontext(0x00010327)]
	HRESULT __stdcall LinkInfo(
		[in]BSTR Name,
		[in]XlLinkInfo LinkInfo,
		[in, optional]VARIANT Type,
		[in, optional]VARIANT EditionRef,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x00000328), helpcontext(0x00010328)]
	HRESULT __stdcall LinkSources(
		[in, optional]VARIANT Type,
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000003d3), propget, helpcontext(0x000103d3)]
	HRESULT __stdcall Mailer(
		[out, retval]Mailer** RHS);
	[id(0x000005a6), helpcontext(0x000105a6)]
	HRESULT __stdcall MergeWorkbook(
		[in]VARIANT Filename);
	[id(0x00000246), hidden, propget, helpcontext(0x00010246)]
	HRESULT __stdcall Modules(
		[out, retval]Sheets** RHS);
	[id(0x00000491), propget, helpcontext(0x00010491)]
	HRESULT __stdcall MultiUserEditing(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000001ba), propget, helpcontext(0x000101ba)]
	HRESULT __stdcall Names(
		[out, retval]Names** RHS);
	[id(0x00000118), helpcontext(0x00010118)]
	HRESULT __stdcall NewWindow(
		[in]long lcid,
		[out, retval]Window** RHS);
	[id(0x0000049a), hidden, propget, helpcontext(0x0001049a)]
	HRESULT __stdcall OnSave(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x0000049a), hidden, propput, helpcontext(0x0001049a)]
	HRESULT __stdcall OnSave(
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
	[id(0x00000323), helpcontext(0x00010323)]
	HRESULT __stdcall OpenLinks(
		[in]BSTR Name,
		[in, optional]VARIANT ReadOnly,
		[in, optional]VARIANT Type,
		[in]long lcid);
	[id(0x00000123), propget, helpcontext(0x00010123)]
	HRESULT __stdcall Path(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x000005a7), propget, helpcontext(0x000105a7)]
	HRESULT __stdcall PersonalViewListSettings(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005a7), propput, helpcontext(0x000105a7)]
	HRESULT __stdcall PersonalViewListSettings(
		[in]VARIANT_BOOL RHS);
	[id(0x000005a8), propget, helpcontext(0x000105a8)]
	HRESULT __stdcall PersonalViewPrintSettings(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005a8), propput, helpcontext(0x000105a8)]
	HRESULT __stdcall PersonalViewPrintSettings(
		[in]VARIANT_BOOL RHS);
	[id(0x000005a9), helpcontext(0x000105a9)]
	HRESULT __stdcall PivotCaches(
		[out, retval]PivotCaches** RHS);
	[id(0x0000048e), helpcontext(0x0001048e)]
	HRESULT __stdcall Post(
		[in, optional]VARIANT DestName,
		[in]long lcid);
	[id(0x00000195), propget, helpcontext(0x00010195)]
	HRESULT __stdcall PrecisionAsDisplayed(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000195), propput, helpcontext(0x00010195)]
	HRESULT __stdcall PrecisionAsDisplayed(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
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
		[in, optional]VARIANT Structure,
		[in, optional]VARIANT Windows);
	[id(0x000005aa), hidden, helpcontext(0x000105aa)]
	HRESULT __stdcall _ProtectSharing(
		[in, optional]VARIANT Filename,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT WriteResPassword,
		[in, optional]VARIANT ReadOnlyRecommended,
		[in, optional]VARIANT CreateBackup,
		[in, optional]VARIANT SharingPassword);
	[id(0x0000024c), propget, helpcontext(0x0001024c)]
	HRESULT __stdcall ProtectStructure(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000127), propget, helpcontext(0x00010127)]
	HRESULT __stdcall ProtectWindows(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000128), propget, helpcontext(0x00010128)]
	HRESULT __stdcall ReadOnly(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000129), hidden, propget, helpcontext(0x00010129)]
	HRESULT __stdcall _ReadOnlyRecommended(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005ac), helpcontext(0x000105ac)]
	HRESULT __stdcall RefreshAll();
	[id(0x000003d1), helpcontext(0x000103d1)]
	HRESULT __stdcall Reply(
		[in]long lcid);
	[id(0x000003d2), helpcontext(0x000103d2)]
	HRESULT __stdcall ReplyAll(
		[in]long lcid);
	[id(0x000005ad), helpcontext(0x000105ad)]
	HRESULT __stdcall RemoveUser(
		[in]long Index);
	[id(0x00000494), propget, helpcontext(0x00010494)]
	HRESULT __stdcall RevisionNumber(
		[in]long lcid,
		[out, retval]long* RHS);
	[id(0x000003b2), hidden, helpcontext(0x000103b2)]
	HRESULT __stdcall Route(
		[in]long lcid);
	[id(0x000003b7), hidden, propget, helpcontext(0x000103b7)]
	HRESULT __stdcall Routed(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003b5), hidden, propget, helpcontext(0x000103b5)]
	HRESULT __stdcall RoutingSlip(
		[out, retval]RoutingSlip** RHS);
	[id(0x0000027a), helpcontext(0x0001027a)]
	HRESULT __stdcall RunAutoMacros(
		[in]XlRunAutoMacro Which,
		[in]long lcid);
	[id(0x0000011b), helpcontext(0x0001011b)]
	HRESULT __stdcall Save(
		[in]long lcid);
	[id(0x0000011c), hidden, helpcontext(0x0001011c)]
	HRESULT __stdcall _SaveAs(
		[in, optional]VARIANT Filename,
		[in, optional]VARIANT FileFormat,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT WriteResPassword,
		[in, optional]VARIANT ReadOnlyRecommended,
		[in, optional]VARIANT CreateBackup,
		[in, defaultvalue(1)]XlSaveAsAccessMode AccessMode,
		[in, optional]VARIANT ConflictResolution,
		[in, optional]VARIANT AddToMru,
		[in, optional]VARIANT TextCodepage,
		[in, optional]VARIANT TextVisualLayout,
		[in]long lcid);
	[id(0x000000af), helpcontext(0x000100af)]
	HRESULT __stdcall SaveCopyAs(
		[in, optional]VARIANT Filename,
		[in]long lcid);
	[id(0x0000012a), propget, helpcontext(0x0001012a)]
	HRESULT __stdcall Saved(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000012a), propput, helpcontext(0x0001012a)]
	HRESULT __stdcall Saved(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x00000196), propget, helpcontext(0x00010196)]
	HRESULT __stdcall SaveLinkValues(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000196), propput, helpcontext(0x00010196)]
	HRESULT __stdcall SaveLinkValues(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000003b3), helpcontext(0x000103b3)]
	HRESULT __stdcall SendMail(
		[in]VARIANT Recipients,
		[in, optional]VARIANT Subject,
		[in, optional]VARIANT ReturnReceipt,
		[in]long lcid);
	[id(0x000003d4), helpcontext(0x000103d4)]
	HRESULT __stdcall SendMailer(
		[in, optional]VARIANT FileFormat,
		[in, defaultvalue(-4143)]XlPriority Priority,
		[in]long lcid);
	[id(0x00000329), helpcontext(0x00010329)]
	HRESULT __stdcall SetLinkOnData(
		[in]BSTR Name,
		[in, optional]VARIANT Procedure,
		[in]long lcid);
	[id(0x000001e5), propget, helpcontext(0x000101e5)]
	HRESULT __stdcall Sheets(
		[out, retval]Sheets** RHS);
	[id(0x00000493), propget, helpcontext(0x00010493)]
	HRESULT __stdcall ShowConflictHistory(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000493), propput, helpcontext(0x00010493)]
	HRESULT __stdcall ShowConflictHistory(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000001ed), propget, helpcontext(0x000101ed)]
	HRESULT __stdcall Styles(
		[out, retval]Styles** RHS);
	[id(0x000003b9), hidden, propget, helpcontext(0x000103b9)]
	HRESULT __stdcall Subject(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x000003b9), hidden, propput, helpcontext(0x000103b9)]
	HRESULT __stdcall Subject(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x000000c7), hidden, propget, helpcontext(0x000100c7)]
	HRESULT __stdcall Title(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x000000c7), hidden, propput, helpcontext(0x000100c7)]
	HRESULT __stdcall Title(
		[in]long lcid,
		[in]BSTR RHS);
	[id(0x0000011d), helpcontext(0x0001011d)]
	HRESULT __stdcall Unprotect(
		[in, optional]VARIANT Password,
		[in]long lcid);
	[id(0x000005af), helpcontext(0x000105af)]
	HRESULT __stdcall UnprotectSharing(
		[in, optional]VARIANT SharingPassword);
	[id(0x000003e3), helpcontext(0x000103e3)]
	HRESULT __stdcall UpdateFromFile(
		[in]long lcid);
	[id(0x00000324), helpcontext(0x00010324)]
	HRESULT __stdcall UpdateLink(
		[in, optional]VARIANT Name,
		[in, optional]VARIANT Type,
		[in]long lcid);
	[id(0x0000019b), propget, helpcontext(0x0001019b)]
	HRESULT __stdcall UpdateRemoteReferences(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000019b), propput, helpcontext(0x0001019b)]
	HRESULT __stdcall UpdateRemoteReferences(
		[in]long lcid,
		[in]VARIANT_BOOL RHS);
	[id(0x000004ba), hidden, propget, helpcontext(0x000104ba)]
	HRESULT __stdcall UserControl(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004ba), hidden, propput, helpcontext(0x000104ba)]
	HRESULT __stdcall UserControl(
		[in]VARIANT_BOOL RHS);
	[id(0x00000495), propget, helpcontext(0x00010495)]
	HRESULT __stdcall UserStatus(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000005b0), propget, helpcontext(0x000105b0)]
	HRESULT __stdcall CustomViews(
		[out, retval]CustomViews** RHS);
	[id(0x000001ae), propget, helpcontext(0x000101ae)]
	HRESULT __stdcall Windows(
		[out, retval]Windows** RHS);
	[id(0x000001ee), propget, helpcontext(0x000101ee)]
	HRESULT __stdcall Worksheets(
		[out, retval]Sheets** RHS);
	[id(0x0000012b), propget, helpcontext(0x0001012b)]
	HRESULT __stdcall WriteReserved(
		[in]long lcid,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000012c), propget, helpcontext(0x0001012c)]
	HRESULT __stdcall WriteReservedBy(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000245), propget, helpcontext(0x00010245)]
	HRESULT __stdcall Excel4IntlMacroSheets(
		[out, retval]Sheets** RHS);
	[id(0x00000243), propget, helpcontext(0x00010243)]
	HRESULT __stdcall Excel4MacroSheets(
		[out, retval]Sheets** RHS);
	[id(0x000005b1), propget, helpcontext(0x000105b1)]
	HRESULT __stdcall TemplateRemoveExtData(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005b1), propput, helpcontext(0x000105b1)]
	HRESULT __stdcall TemplateRemoveExtData(
		[in]VARIANT_BOOL RHS);
	[id(0x000005b2), helpcontext(0x000105b2)]
	HRESULT __stdcall HighlightChangesOptions(
		[in, optional]VARIANT When,
		[in, optional]VARIANT Who,
		[in, optional]VARIANT Where);
	[id(0x000005b5), propget, helpcontext(0x000105b5)]
	HRESULT __stdcall HighlightChangesOnScreen(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005b5), propput, helpcontext(0x000105b5)]
	HRESULT __stdcall HighlightChangesOnScreen(
		[in]VARIANT_BOOL RHS);
	[id(0x000005b6), propget, helpcontext(0x000105b6)]
	HRESULT __stdcall KeepChangeHistory(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005b6), propput, helpcontext(0x000105b6)]
	HRESULT __stdcall KeepChangeHistory(
		[in]VARIANT_BOOL RHS);
	[id(0x000005b7), propget, helpcontext(0x000105b7)]
	HRESULT __stdcall ListChangesOnNewSheet(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005b7), propput, helpcontext(0x000105b7)]
	HRESULT __stdcall ListChangesOnNewSheet(
		[in]VARIANT_BOOL RHS);
	[id(0x000005b8), helpcontext(0x000105b8)]
	HRESULT __stdcall PurgeChangeHistoryNow(
		[in]long Days,
		[in, optional]VARIANT SharingPassword);
	[id(0x000005ba), helpcontext(0x000105ba)]
	HRESULT __stdcall AcceptAllChanges(
		[in, optional]VARIANT When,
		[in, optional]VARIANT Who,
		[in, optional]VARIANT Where);
	[id(0x000005bb), helpcontext(0x000105bb)]
	HRESULT __stdcall RejectAllChanges(
		[in, optional]VARIANT When,
		[in, optional]VARIANT Who,
		[in, optional]VARIANT Where);
	[id(0x000002ac), hidden, helpcontext(0x000102ac)]
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
		[in]long lcid);
	[id(0x000005bc), helpcontext(0x000105bc)]
	HRESULT __stdcall ResetColors();
	[id(0x000005bd), propget, helpcontext(0x000105bd)]
	HRESULT __stdcall VBProject(
		[out, retval]VBProject** RHS);
	[id(0x000005be), helpcontext(0x000105be)]
	HRESULT __stdcall FollowHyperlink(
		[in]BSTR Address,
		[in, optional]VARIANT SubAddress,
		[in, optional]VARIANT NewWindow,
		[in, optional]VARIANT AddHistory,
		[in, optional]VARIANT ExtraInfo,
		[in, optional]VARIANT Method,
		[in, optional]VARIANT HeaderInfo);
	[id(0x000005c4), helpcontext(0x000105c4)]
	HRESULT __stdcall AddToFavorites();
	[id(0x000006e9), propget, helpcontext(0x000106e9)]
	HRESULT __stdcall IsInplace(
		[out, retval]VARIANT_BOOL* RHS);
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
	[id(0x0000071a), helpcontext(0x0001071a)]
	HRESULT __stdcall WebPagePreview();
	[id(0x0000071b), propget, helpcontext(0x0001071b)]
	HRESULT __stdcall PublishObjects(
		[out, retval]PublishObjects** RHS);
	[id(0x0000071c), propget, helpcontext(0x0001071c)]
	HRESULT __stdcall WebOptions(
		[out, retval]WebOptions** RHS);
	[id(0x0000071d), helpcontext(0x0001071d)]
	HRESULT __stdcall ReloadAs(
		[in]MsoEncoding Encoding);
	[id(0x0000071f), hidden, propget, helpcontext(0x0001071f)]
	HRESULT __stdcall HTMLProject(
		[out, retval]HTMLProject** RHS);
	[id(0x00000720), propget, helpcontext(0x00010720)]
	HRESULT __stdcall EnvelopeVisible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000720), propput, helpcontext(0x00010720)]
	HRESULT __stdcall EnvelopeVisible(
		[in]VARIANT_BOOL RHS);
	[id(0x0000070e), propget, helpcontext(0x0001070e)]
	HRESULT __stdcall CalculationVersion(
		[out, retval]long* RHS);
	[id(0x000007fc), hidden, helpcontext(0x000107fc)]
	HRESULT __stdcall Dummy17(
		[in]long calcid);
	[id(0x00000722), hidden, helpcontext(0x00010722)]
	HRESULT __stdcall sblt(
		[in]BSTR s);
	[id(0x00000724), propget, helpcontext(0x00010724)]
	HRESULT __stdcall VBASigned(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007fe), propget, helpcontext(0x000107fe)]
	HRESULT __stdcall ShowPivotTableFieldList(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007fe), propput, helpcontext(0x000107fe)]
	HRESULT __stdcall ShowPivotTableFieldList(
		[in]VARIANT_BOOL RHS);
	[id(0x00000360), propget, helpcontext(0x00010360)]
	HRESULT __stdcall UpdateLinks(
		[out, retval]XlUpdateLinks* RHS);
	[id(0x00000360), propput, helpcontext(0x00010360)]
	HRESULT __stdcall UpdateLinks(
		[in]XlUpdateLinks RHS);
	[id(0x000007ff), helpcontext(0x000107ff)]
	HRESULT __stdcall BreakLink(
		[in]BSTR Name,
		[in]XlLinkType Type);
	[id(0x00000800), hidden, helpcontext(0x00010800)]
	HRESULT __stdcall Dummy16();
	[id(0x00000785), helpcontext(0x00010785)]
	HRESULT __stdcall SaveAs(
		[in, optional]VARIANT Filename,
		[in, optional]VARIANT FileFormat,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT WriteResPassword,
		[in, optional]VARIANT ReadOnlyRecommended,
		[in, optional]VARIANT CreateBackup,
		[in, defaultvalue(1)]XlSaveAsAccessMode AccessMode,
		[in, optional]VARIANT ConflictResolution,
		[in, optional]VARIANT AddToMru,
		[in, optional]VARIANT TextCodepage,
		[in, optional]VARIANT TextVisualLayout,
		[in, optional]VARIANT Local,
		[in]long lcid);
	[id(0x00000801), propget, helpcontext(0x00010801)]
	HRESULT __stdcall EnableAutoRecover(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000801), propput, helpcontext(0x00010801)]
	HRESULT __stdcall EnableAutoRecover(
		[in]VARIANT_BOOL RHS);
	[id(0x00000802), propget, helpcontext(0x00010802)]
	HRESULT __stdcall RemovePersonalInformation(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000802), propput, helpcontext(0x00010802)]
	HRESULT __stdcall RemovePersonalInformation(
		[in]VARIANT_BOOL RHS);
	[id(0x00000787), propget, helpcontext(0x00010787)]
	HRESULT __stdcall FullNameURLEncoded(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000803), helpcontext(0x00010803)]
	HRESULT __stdcall CheckIn(
		[in, optional]VARIANT SaveChanges,
		[in, optional]VARIANT Comments,
		[in, optional]VARIANT MakePublic);
	[id(0x00000805), helpcontext(0x00010805)]
	HRESULT __stdcall CanCheckIn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000806), helpcontext(0x00010806)]
	HRESULT __stdcall SendForReview(
		[in, optional]VARIANT Recipients,
		[in, optional]VARIANT Subject,
		[in, optional]VARIANT ShowMessage,
		[in, optional]VARIANT IncludeAttachment);
	[id(0x00000809), helpcontext(0x00010809)]
	HRESULT __stdcall ReplyWithChanges(
		[in, optional]VARIANT ShowMessage);
	[id(0x0000080a), helpcontext(0x0001080a)]
	HRESULT __stdcall EndReview();
	[id(0x000001ad), propget, helpcontext(0x000101ad)]
	HRESULT __stdcall Password(
		[out, retval]BSTR* RHS);
	[id(0x000001ad), propput, helpcontext(0x000101ad)]
	HRESULT __stdcall Password(
		[in]BSTR RHS);
	[id(0x00000468), propget, helpcontext(0x00010468)]
	HRESULT __stdcall WritePassword(
		[out, retval]BSTR* RHS);
	[id(0x00000468), propput, helpcontext(0x00010468)]
	HRESULT __stdcall WritePassword(
		[in]BSTR RHS);
	[id(0x0000080b), propget, helpcontext(0x0001080b)]
	HRESULT __stdcall PasswordEncryptionProvider(
		[out, retval]BSTR* RHS);
	[id(0x0000080c), propget, helpcontext(0x0001080c)]
	HRESULT __stdcall PasswordEncryptionAlgorithm(
		[out, retval]BSTR* RHS);
	[id(0x0000080d), propget, helpcontext(0x0001080d)]
	HRESULT __stdcall PasswordEncryptionKeyLength(
		[out, retval]long* RHS);
	[id(0x0000080e), helpcontext(0x0001080e)]
	HRESULT __stdcall SetPasswordEncryptionOptions(
		[in, optional]VARIANT PasswordEncryptionProvider,
		[in, optional]VARIANT PasswordEncryptionAlgorithm,
		[in, optional]VARIANT PasswordEncryptionKeyLength,
		[in, optional]VARIANT PasswordEncryptionFileProperties);
	[id(0x0000080f), propget, helpcontext(0x0001080f)]
	HRESULT __stdcall PasswordEncryptionFileProperties(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007d5), propget, helpcontext(0x000107d5)]
	HRESULT __stdcall ReadOnlyRecommended(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007d5), propput, helpcontext(0x000107d5)]
	HRESULT __stdcall ReadOnlyRecommended(
		[in]VARIANT_BOOL RHS);
	[id(0x000007ed), helpcontext(0x000107ed)]
	HRESULT __stdcall Protect(
		[in, optional]VARIANT Password,
		[in, optional]VARIANT Structure,
		[in, optional]VARIANT Windows);
	[id(0x00000810), propget, helpcontext(0x00010810)]
	HRESULT __stdcall SmartTagOptions(
		[out, retval]SmartTagOptions** RHS);
	[id(0x00000811), helpcontext(0x00010811)]
	HRESULT __stdcall RecheckSmartTags();
	[id(0x000008d8), propget, helpcontext(0x000108d8)]
	HRESULT __stdcall Permission(
		[out, retval]Permission** RHS);
	[id(0x000008d9), propget, helpcontext(0x000108d9)]
	HRESULT __stdcall SharedWorkspace(
		[out, retval]SharedWorkspace** RHS);
	[id(0x000008da), propget, helpcontext(0x000108da)]
	HRESULT __stdcall Sync(
		[out, retval]Sync** RHS);
	[id(0x000008db), helpcontext(0x000108db)]
	HRESULT __stdcall SendFaxOverInternet(
		[in, optional]VARIANT Recipients,
		[in, optional]VARIANT Subject,
		[in, optional]VARIANT ShowMessage);
	[id(0x000008dc), propget, helpcontext(0x000108dc)]
	HRESULT __stdcall XmlNamespaces(
		[out, retval]XmlNamespaces** RHS);
	[id(0x000008dd), propget, helpcontext(0x000108dd)]
	HRESULT __stdcall XmlMaps(
		[out, retval]XmlMaps** RHS);
	[id(0x000008de), helpcontext(0x000108de)]
	HRESULT __stdcall XmlImport(
		[in]BSTR Url,
		[out]XmlMap** ImportMap,
		[in, optional]VARIANT Overwrite,
		[in, optional]VARIANT Destination,
		[out, retval]XlXmlImportResult* RHS);
	[id(0x000008e1), propget, helpcontext(0x000108e1)]
	HRESULT __stdcall SmartDocument(
		[out, retval]SmartDocument** RHS);
	[id(0x000008e2), propget, helpcontext(0x000108e2)]
	HRESULT __stdcall DocumentLibraryVersions(
		[out, retval]DocumentLibraryVersions** RHS);
	[id(0x000008e3), propget, helpcontext(0x000108e3)]
	HRESULT __stdcall InactiveListBorderVisible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008e3), propput, helpcontext(0x000108e3)]
	HRESULT __stdcall InactiveListBorderVisible(
		[in]VARIANT_BOOL RHS);
	[id(0x000008e4), propget, helpcontext(0x000108e4)]
	HRESULT __stdcall DisplayInkComments(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008e4), propput, helpcontext(0x000108e4)]
	HRESULT __stdcall DisplayInkComments(
		[in]VARIANT_BOOL RHS);
	[id(0x000008e5), helpcontext(0x000108e5)]
	HRESULT __stdcall XmlImportXml(
		[in]BSTR Data,
		[out]XmlMap** ImportMap,
		[in, optional]VARIANT Overwrite,
		[in, optional]VARIANT Destination,
		[out, retval]XlXmlImportResult* RHS);
	[id(0x000008e6), helpcontext(0x000108e6)]
	HRESULT __stdcall SaveAsXMLData(
		[in]BSTR Filename,
		[in]XmlMap* Map);
	[id(0x000008e7), helpcontext(0x000108e7)]
	HRESULT __stdcall ToggleFormsDesign();
	[id(0x000009d0), propget, helpcontext(0x000109d0)]
	HRESULT __stdcall ContentTypeProperties(
		[out, retval]MetaProperties** RHS);
	[id(0x000009d1), propget, helpcontext(0x000109d1)]
	HRESULT __stdcall Connections(
		[out, retval]Connections** RHS);
	[id(0x000009d2), helpcontext(0x000109d2)]
	HRESULT __stdcall RemoveDocumentInformation(
		[in]XlRemoveDocInfoType RemoveDocInfoType);
	[id(0x000009d4), propget, helpcontext(0x000109d4)]
	HRESULT __stdcall Signatures(
		[out, retval]SignatureSet** RHS);
	[id(0x000009d5), helpcontext(0x000109d5)]
	HRESULT __stdcall CheckInWithVersion(
		[in, optional]VARIANT SaveChanges,
		[in, optional]VARIANT Comments,
		[in, optional]VARIANT MakePublic,
		[in, optional]VARIANT VersionType);
	[id(0x000009d7), propget, helpcontext(0x000109d7)]
	HRESULT __stdcall ServerPolicy(
		[out, retval]ServerPolicy** RHS);
	[id(0x000009d8), helpcontext(0x000109d8)]
	HRESULT __stdcall LockServerFile();
	[id(0x000009d9), propget, helpcontext(0x000109d9)]
	HRESULT __stdcall DocumentInspectors(
		[out, retval]DocumentInspectors** RHS);
	[id(0x000009da), helpcontext(0x000109da)]
	HRESULT __stdcall GetWorkflowTasks(
		[out, retval]WorkflowTasks** RHS);
	[id(0x000009db), helpcontext(0x000109db)]
	HRESULT __stdcall GetWorkflowTemplates(
		[out, retval]WorkflowTemplates** RHS);
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
	[id(0x000009dc), propget, helpcontext(0x000109dc)]
	HRESULT __stdcall ServerViewableItems(
		[out, retval]ServerViewableItems** RHS);
	[id(0x000009dd), propget, helpcontext(0x000109dd)]
	HRESULT __stdcall TableStyles(
		[out, retval]TableStyles** RHS);
	[id(0x000009de), propget, helpcontext(0x000109de)]
	HRESULT __stdcall DefaultTableStyle(
		[out, retval]VARIANT* RHS);
	[id(0x000009de), propput, helpcontext(0x000109de)]
	HRESULT __stdcall DefaultTableStyle(
		[in]VARIANT RHS);
	[id(0x000009df), propget, helpcontext(0x000109df)]
	HRESULT __stdcall DefaultPivotTableStyle(
		[out, retval]VARIANT* RHS);
	[id(0x000009df), propput, helpcontext(0x000109df)]
	HRESULT __stdcall DefaultPivotTableStyle(
		[in]VARIANT RHS);
	[id(0x000009e0), propget, helpcontext(0x000109e0)]
	HRESULT __stdcall CheckCompatibility(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009e0), propput, helpcontext(0x000109e0)]
	HRESULT __stdcall CheckCompatibility(
		[in]VARIANT_BOOL RHS);
	[id(0x000009e1), propget, helpcontext(0x000109e1)]
	HRESULT __stdcall HasVBProject(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009e2), propget, helpcontext(0x000109e2)]
	HRESULT __stdcall CustomXMLParts(
		[out, retval]CustomXMLParts** RHS);
	[id(0x000009e3), propget, helpcontext(0x000109e3)]
	HRESULT __stdcall Final(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009e3), propput, helpcontext(0x000109e3)]
	HRESULT __stdcall Final(
		[in]VARIANT_BOOL RHS);
	[id(0x000009e4), propget, helpcontext(0x000109e4)]
	HRESULT __stdcall Research(
		[out, retval]Research** RHS);
	[id(0x000009e5), propget, helpcontext(0x000109e5)]
	HRESULT __stdcall Theme(
		[out, retval]OfficeTheme** RHS);
	[id(0x000009e6), helpcontext(0x000109e6)]
	HRESULT __stdcall ApplyTheme(
		[in]BSTR Filename);
	[id(0x000009e7), propget, helpcontext(0x000109e7)]
	HRESULT __stdcall Excel8CompatibilityMode(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009e8), propget, helpcontext(0x000109e8)]
	HRESULT __stdcall ConnectionsDisabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009e9), helpcontext(0x000109e9)]
	HRESULT __stdcall EnableConnections();
	[id(0x000009ea), propget, helpcontext(0x000109ea)]
	HRESULT __stdcall ShowPivotChartActiveFields(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009ea), propput, helpcontext(0x000109ea)]
	HRESULT __stdcall ShowPivotChartActiveFields(
		[in]VARIANT_BOOL RHS);
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
	[id(0x000009eb), propget, helpcontext(0x000109eb)]
	HRESULT __stdcall IconSets(
		[out, retval]IconSets** RHS);
	[id(0x000009ec), propget, helpcontext(0x000109ec)]
	HRESULT __stdcall EncryptionProvider(
		[out, retval]BSTR* RHS);
	[id(0x000009ec), propput, helpcontext(0x000109ec)]
	HRESULT __stdcall EncryptionProvider(
		[in]BSTR RHS);
	[id(0x000009ed), propget, helpcontext(0x000109ed)]
	HRESULT __stdcall DoNotPromptForConvert(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009ed), propput, helpcontext(0x000109ed)]
	HRESULT __stdcall DoNotPromptForConvert(
		[in]VARIANT_BOOL RHS);
	[id(0x000009ee), propget, helpcontext(0x000109ee)]
	HRESULT __stdcall ForceFullCalculation(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000009ee), propput, helpcontext(0x000109ee)]
	HRESULT __stdcall ForceFullCalculation(
		[in]VARIANT_BOOL RHS);
	[id(0x000009ef), helpcontext(0x000109ef)]
	HRESULT __stdcall ProtectSharing(
		[in, optional]VARIANT Filename,
		[in, optional]VARIANT Password,
		[in, optional]VARIANT WriteResPassword,
		[in, optional]VARIANT ReadOnlyRecommended,
		[in, optional]VARIANT CreateBackup,
		[in, optional]VARIANT SharingPassword,
		[in, optional]VARIANT FileFormat);
};
'!
!Excel_Workbook categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!Excel_Workbook methodsFor!

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

	<virtual stdcall: hresult 86 variant variant variant variant variant variant variant sdword>
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

	<virtual stdcall: hresult 155 variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

_protect
	"Invoke the _Protect() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _protect: VARIANT unspecified
		 structure: VARIANT unspecified
		 windows: VARIANT unspecified!

_protect: password structure: structure windows: windows
	"Invoke the _Protect() method of the COM object."

	^self
		_Protect: password asVariant
		structure: structure asVariant
		windows: windows asVariant
!

_Protect: password structure: structure windows: windows
	"Private - Invoke the _Protect() method of the COM object.

		HRESULT __stdcall _Protect(
			[in, optional]VARIANT Password,
			[in, optional]VARIANT Structure,
			[in, optional]VARIANT Windows);"

	<virtual stdcall: hresult 88 variant variant variant>
	^self invalidCall!

_protectSharing
	"Invoke the _ProtectSharing() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _protectSharing: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 sharingPassword: VARIANT unspecified!

_protectSharing: filename password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup sharingPassword: sharingPassword
	"Invoke the _ProtectSharing() method of the COM object."

	^self
		_ProtectSharing: filename asVariant
		password: password asVariant
		writeResPassword: writeResPassword asVariant
		readOnlyRecommended: readOnlyRecommended asVariant
		createBackup: createBackup asVariant
		sharingPassword: sharingPassword asVariant
!

_ProtectSharing: filename password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup sharingPassword: sharingPassword
	"Private - Invoke the _ProtectSharing() method of the COM object.

		HRESULT __stdcall _ProtectSharing(
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT ReadOnlyRecommended,
			[in, optional]VARIANT CreateBackup,
			[in, optional]VARIANT SharingPassword);"

	<virtual stdcall: hresult 89 variant variant variant variant variant variant>
	^self invalidCall!

_readOnlyRecommended: lcid
	"Answer the <varbool> value of the '_ReadOnlyRecommended' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get__ReadOnlyRecommended: lcid
		rhs: answer.
	^answer asObject
!

_saveAs: lcid
	"Invoke the _SaveAs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _saveAs: VARIANT unspecified
		 fileFormat: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 accessMode: 1
		 conflictResolution: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 textCodepage: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 lcid: lcid!

_saveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup accessMode: accessMode conflictResolution: conflictResolution addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout lcid: lcid
	"Invoke the _SaveAs() method of the COM object."

	^self
		_SaveAs: filename asVariant
		fileFormat: fileFormat asVariant
		password: password asVariant
		writeResPassword: writeResPassword asVariant
		readOnlyRecommended: readOnlyRecommended asVariant
		createBackup: createBackup asVariant
		accessMode: accessMode
		conflictResolution: conflictResolution asVariant
		addToMru: addToMru asVariant
		textCodepage: textCodepage asVariant
		textVisualLayout: textVisualLayout asVariant
		lcid: lcid
!

_SaveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup accessMode: accessMode conflictResolution: conflictResolution addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout lcid: lcid
	"Private - Invoke the _SaveAs() method of the COM object.

		HRESULT __stdcall _SaveAs(
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT FileFormat,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT ReadOnlyRecommended,
			[in, optional]VARIANT CreateBackup,
			[in, defaultvalue(1)]XlSaveAsAccessMode AccessMode,
			[in, optional]VARIANT ConflictResolution,
			[in, optional]VARIANT AddToMru,
			[in, optional]VARIANT TextCodepage,
			[in, optional]VARIANT TextVisualLayout,
			[in]long lcid);"

	<virtual stdcall: hresult 104 variant variant variant variant variant variant sdword variant variant variant variant sdword>
	^self invalidCall!

acceptAllChanges
	"Invoke the AcceptAllChanges() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 acceptAllChanges: VARIANT unspecified
		 who: VARIANT unspecified
		 where: VARIANT unspecified!

acceptAllChanges: when who: who where: where
	"Invoke the AcceptAllChanges() method of the COM object."

	^self
		AcceptAllChanges: when asVariant
		who: who asVariant
		where: where asVariant
!

AcceptAllChanges: when who: who where: where
	"Private - Invoke the AcceptAllChanges() method of the COM object.

		HRESULT __stdcall AcceptAllChanges(
			[in, optional]VARIANT When,
			[in, optional]VARIANT Who,
			[in, optional]VARIANT Where);"

	<virtual stdcall: hresult 147 variant variant variant>
	^self invalidCall!

acceptLabelsInFormulas
	"Answer the <varbool> value of the 'AcceptLabelsInFormulas' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AcceptLabelsInFormulas: answer.
	^answer asObject
!

acceptLabelsInFormulas: rhs
	"Set the 'AcceptLabelsInFormulas' property of the receiver to the <varbool> value of the argument."

	self put_AcceptLabelsInFormulas: rhs
!

activate: lcid
	"Invoke the Activate() method of the COM object."

	^self Activate: lcid
!

Activate: lcid
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate(
			[in]long lcid);"

	<virtual stdcall: hresult 13 sdword>
	^self invalidCall!

activeChart
	"Answer the <Excel_Chart> value of the 'ActiveChart' property of the receiver."

	| answer |
	answer := Excel_Chart newPointer.
	self get_ActiveChart: answer.
	^answer asObject
!

activeSheet
	"Answer the <IDispatch> value of the 'ActiveSheet' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_ActiveSheet: answer.
	^answer asObject
!

addToFavorites
	"Invoke the AddToFavorites() method of the COM object."

	^self AddToFavorites
!

AddToFavorites
	"Private - Invoke the AddToFavorites() method of the COM object.

		HRESULT __stdcall AddToFavorites();"

	<virtual stdcall: hresult 153>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

applyTheme: filename
	"Invoke the ApplyTheme() method of the COM object."

	^self ApplyTheme: filename
!

ApplyTheme: filename
	"Private - Invoke the ApplyTheme() method of the COM object.

		HRESULT __stdcall ApplyTheme(
			[in]BSTR Filename);"

	<virtual stdcall: hresult 239 bstr>
	^self invalidCall!

author: lcid
	"Answer the <bstr> value of the 'Author' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Author: lcid
		rhs: answer.
	^answer asObject
!

author: lcid rhs: rhs
	"Set the 'Author' property of the receiver to the <bstr> value of the argument."

	self
		put_Author: lcid
		rhs: rhs
!

autoUpdateFrequency
	"Answer the <sdword> value of the 'AutoUpdateFrequency' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoUpdateFrequency: answer.
	^answer asObject
!

autoUpdateFrequency: rhs
	"Set the 'AutoUpdateFrequency' property of the receiver to the <sdword> value of the argument."

	self put_AutoUpdateFrequency: rhs
!

autoUpdateSaveChanges
	"Answer the <varbool> value of the 'AutoUpdateSaveChanges' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoUpdateSaveChanges: answer.
	^answer asObject
!

autoUpdateSaveChanges: rhs
	"Set the 'AutoUpdateSaveChanges' property of the receiver to the <varbool> value of the argument."

	self put_AutoUpdateSaveChanges: rhs
!

breakLink: name type: type
	"Invoke the BreakLink() method of the COM object."

	^self
		BreakLink: name
		type: type
!

BreakLink: name type: type
	"Private - Invoke the BreakLink() method of the COM object.

		HRESULT __stdcall BreakLink(
			[in]BSTR Name,
			[in]XlLinkType Type);"

	<virtual stdcall: hresult 171 bstr sdword>
	^self invalidCall!

builtinDocumentProperties
	"Answer the <IDispatch> value of the 'BuiltinDocumentProperties' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_BuiltinDocumentProperties: answer.
	^answer asObject
!

calculationVersion
	"Answer the <sdword> value of the 'CalculationVersion' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CalculationVersion: answer.
	^answer asObject
!

canCheckIn
	"Answer the <VARIANT_BOOL> result of invoking the CanCheckIn() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self CanCheckIn: answer.
	^answer asObject
!

CanCheckIn: rhs
	"Private - Invoke the CanCheckIn() method of the COM object.

		HRESULT __stdcall CanCheckIn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 180 varbool*>
	^self invalidCall!

changeFileAccess: mode lcid: lcid
	"Invoke the ChangeFileAccess() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 changeFileAccess: mode
		 writePassword: VARIANT unspecified
		 notify: VARIANT unspecified
		 lcid: lcid!

changeFileAccess: mode writePassword: writePassword notify: notify lcid: lcid
	"Invoke the ChangeFileAccess() method of the COM object."

	^self
		ChangeFileAccess: mode
		writePassword: writePassword asVariant
		notify: notify asVariant
		lcid: lcid
!

ChangeFileAccess: mode writePassword: writePassword notify: notify lcid: lcid
	"Private - Invoke the ChangeFileAccess() method of the COM object.

		HRESULT __stdcall ChangeFileAccess(
			[in]XlFileAccess Mode,
			[in, optional]VARIANT WritePassword,
			[in, optional]VARIANT Notify,
			[in]long lcid);"

	<virtual stdcall: hresult 25 sdword variant variant sdword>
	^self invalidCall!

changeHistoryDuration
	"Answer the <sdword> value of the 'ChangeHistoryDuration' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ChangeHistoryDuration: answer.
	^answer asObject
!

changeHistoryDuration: rhs
	"Set the 'ChangeHistoryDuration' property of the receiver to the <sdword> value of the argument."

	self put_ChangeHistoryDuration: rhs
!

changeLink: name newName: newName lcid: lcid
	"Invoke the ChangeLink() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 changeLink: name
		 newName: newName
		 type: 1
		 lcid: lcid!

changeLink: name newName: newName type: type lcid: lcid
	"Invoke the ChangeLink() method of the COM object."

	^self
		ChangeLink: name
		newName: newName
		type: type
		lcid: lcid
!

ChangeLink: name newName: newName type: type lcid: lcid
	"Private - Invoke the ChangeLink() method of the COM object.

		HRESULT __stdcall ChangeLink(
			[in]BSTR Name,
			[in]BSTR NewName,
			[in, defaultvalue(1)]XlLinkType Type,
			[in]long lcid);"

	<virtual stdcall: hresult 26 bstr bstr sdword sdword>
	^self invalidCall!

charts
	"Answer the <ExcelSheets> value of the 'Charts' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Charts: answer.
	^answer asObject
!

checkCompatibility
	"Answer the <varbool> value of the 'CheckCompatibility' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_CheckCompatibility: answer.
	^answer asObject
!

checkCompatibility: rhs
	"Set the 'CheckCompatibility' property of the receiver to the <varbool> value of the argument."

	self put_CheckCompatibility: rhs
!

checkIn
	"Invoke the CheckIn() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkIn: VARIANT unspecified
		 comments: VARIANT unspecified
		 makePublic: VARIANT unspecified!

checkIn: saveChanges comments: comments makePublic: makePublic
	"Invoke the CheckIn() method of the COM object."

	^self
		CheckIn: saveChanges asVariant
		comments: comments asVariant
		makePublic: makePublic asVariant
!

CheckIn: saveChanges comments: comments makePublic: makePublic
	"Private - Invoke the CheckIn() method of the COM object.

		HRESULT __stdcall CheckIn(
			[in, optional]VARIANT SaveChanges,
			[in, optional]VARIANT Comments,
			[in, optional]VARIANT MakePublic);"

	<virtual stdcall: hresult 179 variant variant variant>
	^self invalidCall!

checkInWithVersion
	"Invoke the CheckInWithVersion() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkInWithVersion: VARIANT unspecified
		 comments: VARIANT unspecified
		 makePublic: VARIANT unspecified
		 versionType: VARIANT unspecified!

checkInWithVersion: saveChanges comments: comments makePublic: makePublic versionType: versionType
	"Invoke the CheckInWithVersion() method of the COM object."

	^self
		CheckInWithVersion: saveChanges asVariant
		comments: comments asVariant
		makePublic: makePublic asVariant
		versionType: versionType asVariant
!

CheckInWithVersion: saveChanges comments: comments makePublic: makePublic versionType: versionType
	"Private - Invoke the CheckInWithVersion() method of the COM object.

		HRESULT __stdcall CheckInWithVersion(
			[in, optional]VARIANT SaveChanges,
			[in, optional]VARIANT Comments,
			[in, optional]VARIANT MakePublic,
			[in, optional]VARIANT VersionType);"

	<virtual stdcall: hresult 218 variant variant variant variant>
	^self invalidCall!

close: lcid
	"Invoke the Close() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 close: VARIANT unspecified
		 filename: VARIANT unspecified
		 routeWorkbook: VARIANT unspecified
		 lcid: lcid!

close: saveChanges filename: filename routeWorkbook: routeWorkbook lcid: lcid
	"Invoke the Close() method of the COM object."

	^self
		Close: saveChanges asVariant
		filename: filename asVariant
		routeWorkbook: routeWorkbook asVariant
		lcid: lcid
!

Close: saveChanges filename: filename routeWorkbook: routeWorkbook lcid: lcid
	"Private - Invoke the Close() method of the COM object.

		HRESULT __stdcall Close(
			[in, optional]VARIANT SaveChanges,
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT RouteWorkbook,
			[in]long lcid);"

	<virtual stdcall: hresult 28 variant variant variant sdword>
	^self invalidCall!

codeName
	"Answer the <bstr> value of the 'CodeName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CodeName: answer.
	^answer asObject
!

colors: lcid
	"Answer the <variant> value of the 'Colors' property of the receiver."

	^self
		 colors: VARIANT unspecified
		 lcid: lcid!

colors: index lcid: lcid
	"Answer the <variant> value of the 'Colors' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Colors: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

colors: index lcid: lcid rhs: rhs
	"Set the 'Colors' property of the receiver to the <variant> value of the argument."

	self
		put_Colors: index asVariant
		lcid: lcid
		rhs: rhs asVariant
!

commandBars
	"Answer the <Office_CommandBars> value of the 'CommandBars' property of the receiver."

	| answer |
	answer := Office_CommandBars newPointer.
	self get_CommandBars: answer.
	^answer asObject
!

comments: lcid
	"Answer the <bstr> value of the 'Comments' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Comments: lcid
		rhs: answer.
	^answer asObject
!

comments: lcid rhs: rhs
	"Set the 'Comments' property of the receiver to the <bstr> value of the argument."

	self
		put_Comments: lcid
		rhs: rhs
!

conflictResolution
	"Answer the <sdword> value of the 'ConflictResolution' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ConflictResolution: answer.
	^answer asObject
!

conflictResolution: rhs
	"Set the 'ConflictResolution' property of the receiver to the <sdword> value of the argument."

	self put_ConflictResolution: rhs
!

connections
	"Answer the <ExcelConnections> value of the 'Connections' property of the receiver."

	| answer |
	answer := ExcelConnections newPointer.
	self get_Connections: answer.
	^answer asObject
!

connectionsDisabled
	"Answer the <varbool> value of the 'ConnectionsDisabled' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ConnectionsDisabled: answer.
	^answer asObject
!

container
	"Answer the <IDispatch> value of the 'Container' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Container: answer.
	^answer asObject
!

contentTypeProperties
	"Answer the <OfficeMetaProperties> value of the 'ContentTypeProperties' property of the receiver."

	| answer |
	answer := OfficeMetaProperties newPointer.
	self get_ContentTypeProperties: answer.
	^answer asObject
!

createBackup: lcid
	"Answer the <varbool> value of the 'CreateBackup' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_CreateBackup: lcid
		rhs: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

customDocumentProperties
	"Answer the <IDispatch> value of the 'CustomDocumentProperties' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_CustomDocumentProperties: answer.
	^answer asObject
!

customViews
	"Answer the <ExcelCustomViews> value of the 'CustomViews' property of the receiver."

	| answer |
	answer := ExcelCustomViews newPointer.
	self get_CustomViews: answer.
	^answer asObject
!

customXMLParts
	"Answer the <Office_CustomXMLParts> value of the 'CustomXMLParts' property of the receiver."

	| answer |
	answer := Office_CustomXMLParts newPointer.
	self get_CustomXMLParts: answer.
	^answer asObject
!

date1904: lcid
	"Answer the <varbool> value of the 'Date1904' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_Date1904: lcid
		rhs: answer.
	^answer asObject
!

date1904: lcid rhs: rhs
	"Set the 'Date1904' property of the receiver to the <varbool> value of the argument."

	self
		put_Date1904: lcid
		rhs: rhs
!

defaultPivotTableStyle
	"Answer the <variant> value of the 'DefaultPivotTableStyle' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_DefaultPivotTableStyle: answer.
	^answer asObject
!

defaultPivotTableStyle: rhs
	"Set the 'DefaultPivotTableStyle' property of the receiver to the <variant> value of the argument."

	self put_DefaultPivotTableStyle: rhs asVariant
!

defaultTableStyle
	"Answer the <variant> value of the 'DefaultTableStyle' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_DefaultTableStyle: answer.
	^answer asObject
!

defaultTableStyle: rhs
	"Set the 'DefaultTableStyle' property of the receiver to the <variant> value of the argument."

	self put_DefaultTableStyle: rhs asVariant
!

deleteNumberFormat: numberFormat lcid: lcid
	"Invoke the DeleteNumberFormat() method of the COM object."

	^self
		DeleteNumberFormat: numberFormat
		lcid: lcid
!

DeleteNumberFormat: numberFormat lcid: lcid
	"Private - Invoke the DeleteNumberFormat() method of the COM object.

		HRESULT __stdcall DeleteNumberFormat(
			[in]BSTR NumberFormat,
			[in]long lcid);"

	<virtual stdcall: hresult 44 bstr sdword>
	^self invalidCall!

dialogSheets
	"Answer the <ExcelSheets> value of the 'DialogSheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_DialogSheets: answer.
	^answer asObject
!

displayDrawingObjects: lcid
	"Answer the <sdword> value of the 'DisplayDrawingObjects' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_DisplayDrawingObjects: lcid
		rhs: answer.
	^answer asObject
!

displayDrawingObjects: lcid rhs: rhs
	"Set the 'DisplayDrawingObjects' property of the receiver to the <sdword> value of the argument."

	self
		put_DisplayDrawingObjects: lcid
		rhs: rhs
!

displayInkComments
	"Answer the <varbool> value of the 'DisplayInkComments' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayInkComments: answer.
	^answer asObject
!

displayInkComments: rhs
	"Set the 'DisplayInkComments' property of the receiver to the <varbool> value of the argument."

	self put_DisplayInkComments: rhs
!

documentInspectors
	"Answer the <OfficeDocumentInspectors> value of the 'DocumentInspectors' property of the receiver."

	| answer |
	answer := OfficeDocumentInspectors newPointer.
	self get_DocumentInspectors: answer.
	^answer asObject
!

documentLibraryVersions
	"Answer the <OfficeDocumentLibraryVersions> value of the 'DocumentLibraryVersions' property of the receiver."

	| answer |
	answer := OfficeDocumentLibraryVersions newPointer.
	self get_DocumentLibraryVersions: answer.
	^answer asObject
!

doNotPromptForConvert
	"Answer the <varbool> value of the 'DoNotPromptForConvert' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DoNotPromptForConvert: answer.
	^answer asObject
!

doNotPromptForConvert: rhs
	"Set the 'DoNotPromptForConvert' property of the receiver to the <varbool> value of the argument."

	self put_DoNotPromptForConvert: rhs
!

dummy16
	"Invoke the Dummy16() method of the COM object."

	^self Dummy16
!

Dummy16
	"Private - Invoke the Dummy16() method of the COM object.

		HRESULT __stdcall Dummy16();"

	<virtual stdcall: hresult 172>
	^self invalidCall!

dummy17: calcid
	"Invoke the Dummy17() method of the COM object."

	^self Dummy17: calcid
!

Dummy17: calcid
	"Private - Invoke the Dummy17() method of the COM object.

		HRESULT __stdcall Dummy17(
			[in]long calcid);"

	<virtual stdcall: hresult 164 sdword>
	^self invalidCall!

enableAutoRecover
	"Answer the <varbool> value of the 'EnableAutoRecover' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableAutoRecover: answer.
	^answer asObject
!

enableAutoRecover: rhs
	"Set the 'EnableAutoRecover' property of the receiver to the <varbool> value of the argument."

	self put_EnableAutoRecover: rhs
!

enableConnections
	"Invoke the EnableConnections() method of the COM object."

	^self EnableConnections
!

EnableConnections
	"Private - Invoke the EnableConnections() method of the COM object.

		HRESULT __stdcall EnableConnections();"

	<virtual stdcall: hresult 242>
	^self invalidCall!

encryptionProvider
	"Answer the <bstr> value of the 'EncryptionProvider' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_EncryptionProvider: answer.
	^answer asObject
!

encryptionProvider: rhs
	"Set the 'EncryptionProvider' property of the receiver to the <bstr> value of the argument."

	self put_EncryptionProvider: rhs
!

endReview
	"Invoke the EndReview() method of the COM object."

	^self EndReview
!

EndReview
	"Private - Invoke the EndReview() method of the COM object.

		HRESULT __stdcall EndReview();"

	<virtual stdcall: hresult 183>
	^self invalidCall!

envelopeVisible
	"Answer the <varbool> value of the 'EnvelopeVisible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnvelopeVisible: answer.
	^answer asObject
!

envelopeVisible: rhs
	"Set the 'EnvelopeVisible' property of the receiver to the <varbool> value of the argument."

	self put_EnvelopeVisible: rhs
!

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

excel8CompatibilityMode
	"Answer the <varbool> value of the 'Excel8CompatibilityMode' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Excel8CompatibilityMode: answer.
	^answer asObject
!

exclusiveAccess: lcid
	"Answer the <VARIANT_BOOL> result of invoking the ExclusiveAccess() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		ExclusiveAccess: lcid
		rhs: answer.
	^answer asObject
!

ExclusiveAccess: lcid rhs: rhs
	"Private - Invoke the ExclusiveAccess() method of the COM object.

		HRESULT __stdcall ExclusiveAccess(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 sdword varbool*>
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

	<virtual stdcall: hresult 245 sdword variant variant variant variant variant variant variant variant>
	^self invalidCall!

fileFormat: lcid
	"Answer the <sdword> value of the 'FileFormat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_FileFormat: lcid
		rhs: answer.
	^answer asObject
!

final
	"Answer the <varbool> value of the 'Final' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Final: answer.
	^answer asObject
!

final: rhs
	"Set the 'Final' property of the receiver to the <varbool> value of the argument."

	self put_Final: rhs
!

followHyperlink: address
	"Invoke the FollowHyperlink() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 followHyperlink: address
		 subAddress: VARIANT unspecified
		 newWindow: VARIANT unspecified
		 addHistory: VARIANT unspecified
		 extraInfo: VARIANT unspecified
		 method: VARIANT unspecified
		 headerInfo: VARIANT unspecified!

followHyperlink: address subAddress: subAddress newWindow: newWindow addHistory: addHistory extraInfo: extraInfo method: method headerInfo: headerInfo
	"Invoke the FollowHyperlink() method of the COM object."

	^self
		FollowHyperlink: address
		subAddress: subAddress asVariant
		newWindow: newWindow asVariant
		addHistory: addHistory asVariant
		extraInfo: extraInfo asVariant
		method: method asVariant
		headerInfo: headerInfo asVariant
!

FollowHyperlink: address subAddress: subAddress newWindow: newWindow addHistory: addHistory extraInfo: extraInfo method: method headerInfo: headerInfo
	"Private - Invoke the FollowHyperlink() method of the COM object.

		HRESULT __stdcall FollowHyperlink(
			[in]BSTR Address,
			[in, optional]VARIANT SubAddress,
			[in, optional]VARIANT NewWindow,
			[in, optional]VARIANT AddHistory,
			[in, optional]VARIANT ExtraInfo,
			[in, optional]VARIANT Method,
			[in, optional]VARIANT HeaderInfo);"

	<virtual stdcall: hresult 152 bstr variant variant variant variant variant variant>
	^self invalidCall!

forceFullCalculation
	"Answer the <varbool> value of the 'ForceFullCalculation' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ForceFullCalculation: answer.
	^answer asObject
!

forceFullCalculation: rhs
	"Set the 'ForceFullCalculation' property of the receiver to the <varbool> value of the argument."

	self put_ForceFullCalculation: rhs
!

forwardMailer: lcid
	"Invoke the ForwardMailer() method of the COM object."

	^self ForwardMailer: lcid
!

ForwardMailer: lcid
	"Private - Invoke the ForwardMailer() method of the COM object.

		HRESULT __stdcall ForwardMailer(
			[in]long lcid);"

	<virtual stdcall: hresult 50 sdword>
	^self invalidCall!

fullName: lcid
	"Answer the <bstr> value of the 'FullName' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_FullName: lcid
		rhs: answer.
	^answer asObject
!

fullNameURLEncoded: lcid
	"Answer the <bstr> value of the 'FullNameURLEncoded' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_FullNameURLEncoded: lcid
		rhs: answer.
	^answer asObject
!

get__CodeName: rhs
	"Private - Get the value of the '_CodeName' property of the receiver.

		HRESULT __stdcall _CodeName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 30 bstr*>
	^self invalidCall!

get__ReadOnlyRecommended: lcid rhs: rhs
	"Private - Get the value of the '_ReadOnlyRecommended' property of the receiver.

		HRESULT __stdcall _ReadOnlyRecommended(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 93 sdword varbool*>
	^self invalidCall!

get_AcceptLabelsInFormulas: rhs
	"Private - Get the value of the 'AcceptLabelsInFormulas' property of the receiver.

		HRESULT __stdcall AcceptLabelsInFormulas(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_ActiveChart: rhs
	"Private - Get the value of the 'ActiveChart' property of the receiver.

		HRESULT __stdcall ActiveChart(
			[out, retval]Chart** RHS);"

	<virtual stdcall: hresult 14 Excel_Chart**>
	^self invalidCall!

get_ActiveSheet: rhs
	"Private - Get the value of the 'ActiveSheet' property of the receiver.

		HRESULT __stdcall ActiveSheet(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 15 IDispatch**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Author: lcid rhs: rhs
	"Private - Get the value of the 'Author' property of the receiver.

		HRESULT __stdcall Author(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 16 sdword bstr*>
	^self invalidCall!

get_AutoUpdateFrequency: rhs
	"Private - Get the value of the 'AutoUpdateFrequency' property of the receiver.

		HRESULT __stdcall AutoUpdateFrequency(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_AutoUpdateSaveChanges: rhs
	"Private - Get the value of the 'AutoUpdateSaveChanges' property of the receiver.

		HRESULT __stdcall AutoUpdateSaveChanges(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 20 varbool*>
	^self invalidCall!

get_BuiltinDocumentProperties: rhs
	"Private - Get the value of the 'BuiltinDocumentProperties' property of the receiver.

		HRESULT __stdcall BuiltinDocumentProperties(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 24 IDispatch**>
	^self invalidCall!

get_CalculationVersion: rhs
	"Private - Get the value of the 'CalculationVersion' property of the receiver.

		HRESULT __stdcall CalculationVersion(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 163 sdword*>
	^self invalidCall!

get_ChangeHistoryDuration: rhs
	"Private - Get the value of the 'ChangeHistoryDuration' property of the receiver.

		HRESULT __stdcall ChangeHistoryDuration(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_Charts: rhs
	"Private - Get the value of the 'Charts' property of the receiver.

		HRESULT __stdcall Charts(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 27 ExcelSheets**>
	^self invalidCall!

get_CheckCompatibility: rhs
	"Private - Get the value of the 'CheckCompatibility' property of the receiver.

		HRESULT __stdcall CheckCompatibility(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 231 varbool*>
	^self invalidCall!

get_CodeName: rhs
	"Private - Get the value of the 'CodeName' property of the receiver.

		HRESULT __stdcall CodeName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 29 bstr*>
	^self invalidCall!

get_Colors: index lcid: lcid rhs: rhs
	"Private - Get the value of the 'Colors' property of the receiver.

		HRESULT __stdcall Colors(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 32 variant sdword variant*>
	^self invalidCall!

get_CommandBars: rhs
	"Private - Get the value of the 'CommandBars' property of the receiver.

		HRESULT __stdcall CommandBars(
			[out, retval]CommandBars** RHS);"

	<virtual stdcall: hresult 34 Office_CommandBars**>
	^self invalidCall!

get_Comments: lcid rhs: rhs
	"Private - Get the value of the 'Comments' property of the receiver.

		HRESULT __stdcall Comments(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 35 sdword bstr*>
	^self invalidCall!

get_ConflictResolution: rhs
	"Private - Get the value of the 'ConflictResolution' property of the receiver.

		HRESULT __stdcall ConflictResolution(
			[out, retval]XlSaveConflictResolution* RHS);"

	<virtual stdcall: hresult 37 sdword*>
	^self invalidCall!

get_Connections: rhs
	"Private - Get the value of the 'Connections' property of the receiver.

		HRESULT __stdcall Connections(
			[out, retval]Connections** RHS);"

	<virtual stdcall: hresult 215 ExcelConnections**>
	^self invalidCall!

get_ConnectionsDisabled: rhs
	"Private - Get the value of the 'ConnectionsDisabled' property of the receiver.

		HRESULT __stdcall ConnectionsDisabled(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 241 varbool*>
	^self invalidCall!

get_Container: rhs
	"Private - Get the value of the 'Container' property of the receiver.

		HRESULT __stdcall Container(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 39 IDispatch**>
	^self invalidCall!

get_ContentTypeProperties: rhs
	"Private - Get the value of the 'ContentTypeProperties' property of the receiver.

		HRESULT __stdcall ContentTypeProperties(
			[out, retval]MetaProperties** RHS);"

	<virtual stdcall: hresult 214 OfficeMetaProperties**>
	^self invalidCall!

get_CreateBackup: lcid rhs: rhs
	"Private - Get the value of the 'CreateBackup' property of the receiver.

		HRESULT __stdcall CreateBackup(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 40 sdword varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CustomDocumentProperties: rhs
	"Private - Get the value of the 'CustomDocumentProperties' property of the receiver.

		HRESULT __stdcall CustomDocumentProperties(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 41 IDispatch**>
	^self invalidCall!

get_CustomViews: rhs
	"Private - Get the value of the 'CustomViews' property of the receiver.

		HRESULT __stdcall CustomViews(
			[out, retval]CustomViews** RHS);"

	<virtual stdcall: hresult 130 ExcelCustomViews**>
	^self invalidCall!

get_CustomXMLParts: rhs
	"Private - Get the value of the 'CustomXMLParts' property of the receiver.

		HRESULT __stdcall CustomXMLParts(
			[out, retval]CustomXMLParts** RHS);"

	<virtual stdcall: hresult 234 Office_CustomXMLParts**>
	^self invalidCall!

get_Date1904: lcid rhs: rhs
	"Private - Get the value of the 'Date1904' property of the receiver.

		HRESULT __stdcall Date1904(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 42 sdword varbool*>
	^self invalidCall!

get_DefaultPivotTableStyle: rhs
	"Private - Get the value of the 'DefaultPivotTableStyle' property of the receiver.

		HRESULT __stdcall DefaultPivotTableStyle(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 229 variant*>
	^self invalidCall!

get_DefaultTableStyle: rhs
	"Private - Get the value of the 'DefaultTableStyle' property of the receiver.

		HRESULT __stdcall DefaultTableStyle(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 227 variant*>
	^self invalidCall!

get_DialogSheets: rhs
	"Private - Get the value of the 'DialogSheets' property of the receiver.

		HRESULT __stdcall DialogSheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 45 ExcelSheets**>
	^self invalidCall!

get_DisplayDrawingObjects: lcid rhs: rhs
	"Private - Get the value of the 'DisplayDrawingObjects' property of the receiver.

		HRESULT __stdcall DisplayDrawingObjects(
			[in]long lcid,
			[out, retval]XlDisplayDrawingObjects* RHS);"

	<virtual stdcall: hresult 46 sdword sdword*>
	^self invalidCall!

get_DisplayInkComments: rhs
	"Private - Get the value of the 'DisplayInkComments' property of the receiver.

		HRESULT __stdcall DisplayInkComments(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 209 varbool*>
	^self invalidCall!

get_DocumentInspectors: rhs
	"Private - Get the value of the 'DocumentInspectors' property of the receiver.

		HRESULT __stdcall DocumentInspectors(
			[out, retval]DocumentInspectors** RHS);"

	<virtual stdcall: hresult 221 OfficeDocumentInspectors**>
	^self invalidCall!

get_DocumentLibraryVersions: rhs
	"Private - Get the value of the 'DocumentLibraryVersions' property of the receiver.

		HRESULT __stdcall DocumentLibraryVersions(
			[out, retval]DocumentLibraryVersions** RHS);"

	<virtual stdcall: hresult 206 OfficeDocumentLibraryVersions**>
	^self invalidCall!

get_DoNotPromptForConvert: rhs
	"Private - Get the value of the 'DoNotPromptForConvert' property of the receiver.

		HRESULT __stdcall DoNotPromptForConvert(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 249 varbool*>
	^self invalidCall!

get_EnableAutoRecover: rhs
	"Private - Get the value of the 'EnableAutoRecover' property of the receiver.

		HRESULT __stdcall EnableAutoRecover(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 174 varbool*>
	^self invalidCall!

get_EncryptionProvider: rhs
	"Private - Get the value of the 'EncryptionProvider' property of the receiver.

		HRESULT __stdcall EncryptionProvider(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 247 bstr*>
	^self invalidCall!

get_EnvelopeVisible: rhs
	"Private - Get the value of the 'EnvelopeVisible' property of the receiver.

		HRESULT __stdcall EnvelopeVisible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 161 varbool*>
	^self invalidCall!

get_Excel4IntlMacroSheets: rhs
	"Private - Get the value of the 'Excel4IntlMacroSheets' property of the receiver.

		HRESULT __stdcall Excel4IntlMacroSheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 135 ExcelSheets**>
	^self invalidCall!

get_Excel4MacroSheets: rhs
	"Private - Get the value of the 'Excel4MacroSheets' property of the receiver.

		HRESULT __stdcall Excel4MacroSheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 136 ExcelSheets**>
	^self invalidCall!

get_Excel8CompatibilityMode: rhs
	"Private - Get the value of the 'Excel8CompatibilityMode' property of the receiver.

		HRESULT __stdcall Excel8CompatibilityMode(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 240 varbool*>
	^self invalidCall!

get_FileFormat: lcid rhs: rhs
	"Private - Get the value of the 'FileFormat' property of the receiver.

		HRESULT __stdcall FileFormat(
			[in]long lcid,
			[out, retval]XlFileFormat* RHS);"

	<virtual stdcall: hresult 49 sdword sdword*>
	^self invalidCall!

get_Final: rhs
	"Private - Get the value of the 'Final' property of the receiver.

		HRESULT __stdcall Final(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 235 varbool*>
	^self invalidCall!

get_ForceFullCalculation: rhs
	"Private - Get the value of the 'ForceFullCalculation' property of the receiver.

		HRESULT __stdcall ForceFullCalculation(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 251 varbool*>
	^self invalidCall!

get_FullName: lcid rhs: rhs
	"Private - Get the value of the 'FullName' property of the receiver.

		HRESULT __stdcall FullName(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 51 sdword bstr*>
	^self invalidCall!

get_FullNameURLEncoded: lcid rhs: rhs
	"Private - Get the value of the 'FullNameURLEncoded' property of the receiver.

		HRESULT __stdcall FullNameURLEncoded(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 178 sdword bstr*>
	^self invalidCall!

get_HasMailer: lcid rhs: rhs
	"Private - Get the value of the 'HasMailer' property of the receiver.

		HRESULT __stdcall HasMailer(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 52 sdword varbool*>
	^self invalidCall!

get_HasPassword: lcid rhs: rhs
	"Private - Get the value of the 'HasPassword' property of the receiver.

		HRESULT __stdcall HasPassword(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 54 sdword varbool*>
	^self invalidCall!

get_HasRoutingSlip: lcid rhs: rhs
	"Private - Get the value of the 'HasRoutingSlip' property of the receiver.

		HRESULT __stdcall HasRoutingSlip(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 55 sdword varbool*>
	^self invalidCall!

get_HasVBProject: rhs
	"Private - Get the value of the 'HasVBProject' property of the receiver.

		HRESULT __stdcall HasVBProject(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 233 varbool*>
	^self invalidCall!

get_HighlightChangesOnScreen: rhs
	"Private - Get the value of the 'HighlightChangesOnScreen' property of the receiver.

		HRESULT __stdcall HighlightChangesOnScreen(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 140 varbool*>
	^self invalidCall!

get_HTMLProject: rhs
	"Private - Get the value of the 'HTMLProject' property of the receiver.

		HRESULT __stdcall HTMLProject(
			[out, retval]HTMLProject** RHS);"

	<virtual stdcall: hresult 160 OfficeHTMLProject**>
	^self invalidCall!

get_IconSets: rhs
	"Private - Get the value of the 'IconSets' property of the receiver.

		HRESULT __stdcall IconSets(
			[out, retval]IconSets** RHS);"

	<virtual stdcall: hresult 246 ExcelIconSets**>
	^self invalidCall!

get_InactiveListBorderVisible: rhs
	"Private - Get the value of the 'InactiveListBorderVisible' property of the receiver.

		HRESULT __stdcall InactiveListBorderVisible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 207 varbool*>
	^self invalidCall!

get_IsAddin: rhs
	"Private - Get the value of the 'IsAddin' property of the receiver.

		HRESULT __stdcall IsAddin(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 57 varbool*>
	^self invalidCall!

get_IsInplace: rhs
	"Private - Get the value of the 'IsInplace' property of the receiver.

		HRESULT __stdcall IsInplace(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 154 varbool*>
	^self invalidCall!

get_KeepChangeHistory: rhs
	"Private - Get the value of the 'KeepChangeHistory' property of the receiver.

		HRESULT __stdcall KeepChangeHistory(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 142 varbool*>
	^self invalidCall!

get_Keywords: lcid rhs: rhs
	"Private - Get the value of the 'Keywords' property of the receiver.

		HRESULT __stdcall Keywords(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 59 sdword bstr*>
	^self invalidCall!

get_ListChangesOnNewSheet: rhs
	"Private - Get the value of the 'ListChangesOnNewSheet' property of the receiver.

		HRESULT __stdcall ListChangesOnNewSheet(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 144 varbool*>
	^self invalidCall!

get_Mailer: rhs
	"Private - Get the value of the 'Mailer' property of the receiver.

		HRESULT __stdcall Mailer(
			[out, retval]Mailer** RHS);"

	<virtual stdcall: hresult 63 ExcelMailer**>
	^self invalidCall!

get_Modules: rhs
	"Private - Get the value of the 'Modules' property of the receiver.

		HRESULT __stdcall Modules(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 65 ExcelSheets**>
	^self invalidCall!

get_MultiUserEditing: lcid rhs: rhs
	"Private - Get the value of the 'MultiUserEditing' property of the receiver.

		HRESULT __stdcall MultiUserEditing(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 66 sdword varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 67 bstr*>
	^self invalidCall!

get_Names: rhs
	"Private - Get the value of the 'Names' property of the receiver.

		HRESULT __stdcall Names(
			[out, retval]Names** RHS);"

	<virtual stdcall: hresult 68 ExcelNames**>
	^self invalidCall!

get_OnSave: lcid rhs: rhs
	"Private - Get the value of the 'OnSave' property of the receiver.

		HRESULT __stdcall OnSave(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 70 sdword bstr*>
	^self invalidCall!

get_OnSheetActivate: lcid rhs: rhs
	"Private - Get the value of the 'OnSheetActivate' property of the receiver.

		HRESULT __stdcall OnSheetActivate(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 72 sdword bstr*>
	^self invalidCall!

get_OnSheetDeactivate: lcid rhs: rhs
	"Private - Get the value of the 'OnSheetDeactivate' property of the receiver.

		HRESULT __stdcall OnSheetDeactivate(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 74 sdword bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Password: rhs
	"Private - Get the value of the 'Password' property of the receiver.

		HRESULT __stdcall Password(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 184 bstr*>
	^self invalidCall!

get_PasswordEncryptionAlgorithm: rhs
	"Private - Get the value of the 'PasswordEncryptionAlgorithm' property of the receiver.

		HRESULT __stdcall PasswordEncryptionAlgorithm(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 189 bstr*>
	^self invalidCall!

get_PasswordEncryptionFileProperties: rhs
	"Private - Get the value of the 'PasswordEncryptionFileProperties' property of the receiver.

		HRESULT __stdcall PasswordEncryptionFileProperties(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 192 varbool*>
	^self invalidCall!

get_PasswordEncryptionKeyLength: rhs
	"Private - Get the value of the 'PasswordEncryptionKeyLength' property of the receiver.

		HRESULT __stdcall PasswordEncryptionKeyLength(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 190 sdword*>
	^self invalidCall!

get_PasswordEncryptionProvider: rhs
	"Private - Get the value of the 'PasswordEncryptionProvider' property of the receiver.

		HRESULT __stdcall PasswordEncryptionProvider(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 188 bstr*>
	^self invalidCall!

get_Path: lcid rhs: rhs
	"Private - Get the value of the 'Path' property of the receiver.

		HRESULT __stdcall Path(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 77 sdword bstr*>
	^self invalidCall!

get_Permission: rhs
	"Private - Get the value of the 'Permission' property of the receiver.

		HRESULT __stdcall Permission(
			[out, retval]Permission** RHS);"

	<virtual stdcall: hresult 198 OfficePermission**>
	^self invalidCall!

get_PersonalViewListSettings: rhs
	"Private - Get the value of the 'PersonalViewListSettings' property of the receiver.

		HRESULT __stdcall PersonalViewListSettings(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 78 varbool*>
	^self invalidCall!

get_PersonalViewPrintSettings: rhs
	"Private - Get the value of the 'PersonalViewPrintSettings' property of the receiver.

		HRESULT __stdcall PersonalViewPrintSettings(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 80 varbool*>
	^self invalidCall!

get_PrecisionAsDisplayed: lcid rhs: rhs
	"Private - Get the value of the 'PrecisionAsDisplayed' property of the receiver.

		HRESULT __stdcall PrecisionAsDisplayed(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 84 sdword varbool*>
	^self invalidCall!

get_ProtectStructure: rhs
	"Private - Get the value of the 'ProtectStructure' property of the receiver.

		HRESULT __stdcall ProtectStructure(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 90 varbool*>
	^self invalidCall!

get_ProtectWindows: rhs
	"Private - Get the value of the 'ProtectWindows' property of the receiver.

		HRESULT __stdcall ProtectWindows(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 91 varbool*>
	^self invalidCall!

get_PublishObjects: rhs
	"Private - Get the value of the 'PublishObjects' property of the receiver.

		HRESULT __stdcall PublishObjects(
			[out, retval]PublishObjects** RHS);"

	<virtual stdcall: hresult 157 ExcelPublishObjects**>
	^self invalidCall!

get_ReadOnly: lcid rhs: rhs
	"Private - Get the value of the 'ReadOnly' property of the receiver.

		HRESULT __stdcall ReadOnly(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 92 sdword varbool*>
	^self invalidCall!

get_ReadOnlyRecommended: rhs
	"Private - Get the value of the 'ReadOnlyRecommended' property of the receiver.

		HRESULT __stdcall ReadOnlyRecommended(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 193 varbool*>
	^self invalidCall!

get_RemovePersonalInformation: rhs
	"Private - Get the value of the 'RemovePersonalInformation' property of the receiver.

		HRESULT __stdcall RemovePersonalInformation(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 176 varbool*>
	^self invalidCall!

get_Research: rhs
	"Private - Get the value of the 'Research' property of the receiver.

		HRESULT __stdcall Research(
			[out, retval]Research** RHS);"

	<virtual stdcall: hresult 237 ExcelResearch**>
	^self invalidCall!

get_RevisionNumber: lcid rhs: rhs
	"Private - Get the value of the 'RevisionNumber' property of the receiver.

		HRESULT __stdcall RevisionNumber(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 98 sdword sdword*>
	^self invalidCall!

get_Routed: lcid rhs: rhs
	"Private - Get the value of the 'Routed' property of the receiver.

		HRESULT __stdcall Routed(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 100 sdword varbool*>
	^self invalidCall!

get_RoutingSlip: rhs
	"Private - Get the value of the 'RoutingSlip' property of the receiver.

		HRESULT __stdcall RoutingSlip(
			[out, retval]RoutingSlip** RHS);"

	<virtual stdcall: hresult 101 ExcelRoutingSlip**>
	^self invalidCall!

get_Saved: lcid rhs: rhs
	"Private - Get the value of the 'Saved' property of the receiver.

		HRESULT __stdcall Saved(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 106 sdword varbool*>
	^self invalidCall!

get_SaveLinkValues: lcid rhs: rhs
	"Private - Get the value of the 'SaveLinkValues' property of the receiver.

		HRESULT __stdcall SaveLinkValues(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 108 sdword varbool*>
	^self invalidCall!

get_ServerPolicy: rhs
	"Private - Get the value of the 'ServerPolicy' property of the receiver.

		HRESULT __stdcall ServerPolicy(
			[out, retval]ServerPolicy** RHS);"

	<virtual stdcall: hresult 219 OfficeServerPolicy**>
	^self invalidCall!

get_ServerViewableItems: rhs
	"Private - Get the value of the 'ServerViewableItems' property of the receiver.

		HRESULT __stdcall ServerViewableItems(
			[out, retval]ServerViewableItems** RHS);"

	<virtual stdcall: hresult 225 ExcelServerViewableItems**>
	^self invalidCall!

get_SharedWorkspace: rhs
	"Private - Get the value of the 'SharedWorkspace' property of the receiver.

		HRESULT __stdcall SharedWorkspace(
			[out, retval]SharedWorkspace** RHS);"

	<virtual stdcall: hresult 199 OfficeSharedWorkspace**>
	^self invalidCall!

get_Sheets: rhs
	"Private - Get the value of the 'Sheets' property of the receiver.

		HRESULT __stdcall Sheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 113 ExcelSheets**>
	^self invalidCall!

get_ShowConflictHistory: lcid rhs: rhs
	"Private - Get the value of the 'ShowConflictHistory' property of the receiver.

		HRESULT __stdcall ShowConflictHistory(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 114 sdword varbool*>
	^self invalidCall!

get_ShowPivotChartActiveFields: rhs
	"Private - Get the value of the 'ShowPivotChartActiveFields' property of the receiver.

		HRESULT __stdcall ShowPivotChartActiveFields(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 243 varbool*>
	^self invalidCall!

get_ShowPivotTableFieldList: rhs
	"Private - Get the value of the 'ShowPivotTableFieldList' property of the receiver.

		HRESULT __stdcall ShowPivotTableFieldList(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 167 varbool*>
	^self invalidCall!

get_Signatures: rhs
	"Private - Get the value of the 'Signatures' property of the receiver.

		HRESULT __stdcall Signatures(
			[out, retval]SignatureSet** RHS);"

	<virtual stdcall: hresult 217 OfficeSignatureSet**>
	^self invalidCall!

get_SmartDocument: rhs
	"Private - Get the value of the 'SmartDocument' property of the receiver.

		HRESULT __stdcall SmartDocument(
			[out, retval]SmartDocument** RHS);"

	<virtual stdcall: hresult 205 OfficeSmartDocument**>
	^self invalidCall!

get_SmartTagOptions: rhs
	"Private - Get the value of the 'SmartTagOptions' property of the receiver.

		HRESULT __stdcall SmartTagOptions(
			[out, retval]SmartTagOptions** RHS);"

	<virtual stdcall: hresult 196 ExcelSmartTagOptions**>
	^self invalidCall!

get_Styles: rhs
	"Private - Get the value of the 'Styles' property of the receiver.

		HRESULT __stdcall Styles(
			[out, retval]Styles** RHS);"

	<virtual stdcall: hresult 116 ExcelStyles**>
	^self invalidCall!

get_Subject: lcid rhs: rhs
	"Private - Get the value of the 'Subject' property of the receiver.

		HRESULT __stdcall Subject(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 117 sdword bstr*>
	^self invalidCall!

get_Sync: rhs
	"Private - Get the value of the 'Sync' property of the receiver.

		HRESULT __stdcall Sync(
			[out, retval]Sync** RHS);"

	<virtual stdcall: hresult 200 OfficeSync**>
	^self invalidCall!

get_TableStyles: rhs
	"Private - Get the value of the 'TableStyles' property of the receiver.

		HRESULT __stdcall TableStyles(
			[out, retval]TableStyles** RHS);"

	<virtual stdcall: hresult 226 ExcelTableStyles**>
	^self invalidCall!

get_TemplateRemoveExtData: rhs
	"Private - Get the value of the 'TemplateRemoveExtData' property of the receiver.

		HRESULT __stdcall TemplateRemoveExtData(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 137 varbool*>
	^self invalidCall!

get_Theme: rhs
	"Private - Get the value of the 'Theme' property of the receiver.

		HRESULT __stdcall Theme(
			[out, retval]OfficeTheme** RHS);"

	<virtual stdcall: hresult 238 OfficeOfficeTheme**>
	^self invalidCall!

get_Title: lcid rhs: rhs
	"Private - Get the value of the 'Title' property of the receiver.

		HRESULT __stdcall Title(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 119 sdword bstr*>
	^self invalidCall!

get_UpdateLinks: rhs
	"Private - Get the value of the 'UpdateLinks' property of the receiver.

		HRESULT __stdcall UpdateLinks(
			[out, retval]XlUpdateLinks* RHS);"

	<virtual stdcall: hresult 169 sdword*>
	^self invalidCall!

get_UpdateRemoteReferences: lcid rhs: rhs
	"Private - Get the value of the 'UpdateRemoteReferences' property of the receiver.

		HRESULT __stdcall UpdateRemoteReferences(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 125 sdword varbool*>
	^self invalidCall!

get_UserControl: rhs
	"Private - Get the value of the 'UserControl' property of the receiver.

		HRESULT __stdcall UserControl(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 127 varbool*>
	^self invalidCall!

get_UserStatus: lcid rhs: rhs
	"Private - Get the value of the 'UserStatus' property of the receiver.

		HRESULT __stdcall UserStatus(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 129 sdword variant*>
	^self invalidCall!

get_VBASigned: rhs
	"Private - Get the value of the 'VBASigned' property of the receiver.

		HRESULT __stdcall VBASigned(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 166 varbool*>
	^self invalidCall!

get_VBProject: rhs
	"Private - Get the value of the 'VBProject' property of the receiver.

		HRESULT __stdcall VBProject(
			[out, retval]VBProject** RHS);"

	<virtual stdcall: hresult 151 VBIDE_VBProject**>
	^self invalidCall!

get_WebOptions: rhs
	"Private - Get the value of the 'WebOptions' property of the receiver.

		HRESULT __stdcall WebOptions(
			[out, retval]WebOptions** RHS);"

	<virtual stdcall: hresult 158 ExcelWebOptions**>
	^self invalidCall!

get_Windows: rhs
	"Private - Get the value of the 'Windows' property of the receiver.

		HRESULT __stdcall Windows(
			[out, retval]Windows** RHS);"

	<virtual stdcall: hresult 131 ExcelWindows**>
	^self invalidCall!

get_Worksheets: rhs
	"Private - Get the value of the 'Worksheets' property of the receiver.

		HRESULT __stdcall Worksheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 132 ExcelSheets**>
	^self invalidCall!

get_WritePassword: rhs
	"Private - Get the value of the 'WritePassword' property of the receiver.

		HRESULT __stdcall WritePassword(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 186 bstr*>
	^self invalidCall!

get_WriteReserved: lcid rhs: rhs
	"Private - Get the value of the 'WriteReserved' property of the receiver.

		HRESULT __stdcall WriteReserved(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 133 sdword varbool*>
	^self invalidCall!

get_WriteReservedBy: lcid rhs: rhs
	"Private - Get the value of the 'WriteReservedBy' property of the receiver.

		HRESULT __stdcall WriteReservedBy(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 134 sdword bstr*>
	^self invalidCall!

get_XmlMaps: rhs
	"Private - Get the value of the 'XmlMaps' property of the receiver.

		HRESULT __stdcall XmlMaps(
			[out, retval]XmlMaps** RHS);"

	<virtual stdcall: hresult 203 ExcelXmlMaps**>
	^self invalidCall!

get_XmlNamespaces: rhs
	"Private - Get the value of the 'XmlNamespaces' property of the receiver.

		HRESULT __stdcall XmlNamespaces(
			[out, retval]XmlNamespaces** RHS);"

	<virtual stdcall: hresult 202 ExcelXmlNamespaces**>
	^self invalidCall!

getWorkflowTasks
	"Answer the <OfficeWorkflowTasks> result of invoking the GetWorkflowTasks() method of the COM object."

	| answer |
	answer := OfficeWorkflowTasks newPointer.
	self GetWorkflowTasks: answer.
	^answer asObject
!

GetWorkflowTasks: rhs
	"Private - Invoke the GetWorkflowTasks() method of the COM object.

		HRESULT __stdcall GetWorkflowTasks(
			[out, retval]WorkflowTasks** RHS);"

	<virtual stdcall: hresult 222 OfficeWorkflowTasks**>
	^self invalidCall!

getWorkflowTemplates
	"Answer the <OfficeWorkflowTemplates> result of invoking the GetWorkflowTemplates() method of the COM object."

	| answer |
	answer := OfficeWorkflowTemplates newPointer.
	self GetWorkflowTemplates: answer.
	^answer asObject
!

GetWorkflowTemplates: rhs
	"Private - Invoke the GetWorkflowTemplates() method of the COM object.

		HRESULT __stdcall GetWorkflowTemplates(
			[out, retval]WorkflowTemplates** RHS);"

	<virtual stdcall: hresult 223 OfficeWorkflowTemplates**>
	^self invalidCall!

hasMailer: lcid
	"Answer the <varbool> value of the 'HasMailer' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_HasMailer: lcid
		rhs: answer.
	^answer asObject
!

hasMailer: lcid rhs: rhs
	"Set the 'HasMailer' property of the receiver to the <varbool> value of the argument."

	self
		put_HasMailer: lcid
		rhs: rhs
!

hasPassword: lcid
	"Answer the <varbool> value of the 'HasPassword' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_HasPassword: lcid
		rhs: answer.
	^answer asObject
!

hasRoutingSlip: lcid
	"Answer the <varbool> value of the 'HasRoutingSlip' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_HasRoutingSlip: lcid
		rhs: answer.
	^answer asObject
!

hasRoutingSlip: lcid rhs: rhs
	"Set the 'HasRoutingSlip' property of the receiver to the <varbool> value of the argument."

	self
		put_HasRoutingSlip: lcid
		rhs: rhs
!

hasVBProject
	"Answer the <varbool> value of the 'HasVBProject' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasVBProject: answer.
	^answer asObject
!

highlightChangesOnScreen
	"Answer the <varbool> value of the 'HighlightChangesOnScreen' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HighlightChangesOnScreen: answer.
	^answer asObject
!

highlightChangesOnScreen: rhs
	"Set the 'HighlightChangesOnScreen' property of the receiver to the <varbool> value of the argument."

	self put_HighlightChangesOnScreen: rhs
!

highlightChangesOptions
	"Invoke the HighlightChangesOptions() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 highlightChangesOptions: VARIANT unspecified
		 who: VARIANT unspecified
		 where: VARIANT unspecified!

highlightChangesOptions: when who: who where: where
	"Invoke the HighlightChangesOptions() method of the COM object."

	^self
		HighlightChangesOptions: when asVariant
		who: who asVariant
		where: where asVariant
!

HighlightChangesOptions: when who: who where: where
	"Private - Invoke the HighlightChangesOptions() method of the COM object.

		HRESULT __stdcall HighlightChangesOptions(
			[in, optional]VARIANT When,
			[in, optional]VARIANT Who,
			[in, optional]VARIANT Where);"

	<virtual stdcall: hresult 139 variant variant variant>
	^self invalidCall!

htmlProject
	"Answer the <OfficeHTMLProject> value of the 'HTMLProject' property of the receiver."

	| answer |
	answer := OfficeHTMLProject newPointer.
	self get_HTMLProject: answer.
	^answer asObject
!

iconSets
	"Answer the <ExcelIconSets> value of the 'IconSets' property of the receiver."

	| answer |
	answer := ExcelIconSets newPointer.
	self get_IconSets: answer.
	^answer asObject
!

inactiveListBorderVisible
	"Answer the <varbool> value of the 'InactiveListBorderVisible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_InactiveListBorderVisible: answer.
	^answer asObject
!

inactiveListBorderVisible: rhs
	"Set the 'InactiveListBorderVisible' property of the receiver to the <varbool> value of the argument."

	self put_InactiveListBorderVisible: rhs
!

isAddin
	"Answer the <varbool> value of the 'IsAddin' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsAddin: answer.
	^answer asObject
!

isAddin: rhs
	"Set the 'IsAddin' property of the receiver to the <varbool> value of the argument."

	self put_IsAddin: rhs
!

isInplace
	"Answer the <varbool> value of the 'IsInplace' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsInplace: answer.
	^answer asObject
!

keepChangeHistory
	"Answer the <varbool> value of the 'KeepChangeHistory' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_KeepChangeHistory: answer.
	^answer asObject
!

keepChangeHistory: rhs
	"Set the 'KeepChangeHistory' property of the receiver to the <varbool> value of the argument."

	self put_KeepChangeHistory: rhs
!

keywords: lcid
	"Answer the <bstr> value of the 'Keywords' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Keywords: lcid
		rhs: answer.
	^answer asObject
!

keywords: lcid rhs: rhs
	"Set the 'Keywords' property of the receiver to the <bstr> value of the argument."

	self
		put_Keywords: lcid
		rhs: rhs
!

linkInfo: name linkInfo: linkInfo lcid: lcid
	"Answer the <VARIANT> result of invoking the LinkInfo() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 linkInfo: name
		 linkInfo: linkInfo
		 type: VARIANT unspecified
		 editionRef: VARIANT unspecified
		 lcid: lcid!

linkInfo: name linkInfo: linkInfo type: type editionRef: editionRef lcid: lcid
	"Answer the <VARIANT> result of invoking the LinkInfo() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		LinkInfo: name
		linkInfo: linkInfo
		type: type asVariant
		editionRef: editionRef asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

LinkInfo: name linkInfo: linkInfo type: type editionRef: editionRef lcid: lcid rhs: rhs
	"Private - Invoke the LinkInfo() method of the COM object.

		HRESULT __stdcall LinkInfo(
			[in]BSTR Name,
			[in]XlLinkInfo LinkInfo,
			[in, optional]VARIANT Type,
			[in, optional]VARIANT EditionRef,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 61 bstr sdword variant variant sdword variant*>
	^self invalidCall!

linkSources: lcid
	"Answer the <VARIANT> result of invoking the LinkSources() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 linkSources: VARIANT unspecified
		 lcid: lcid!

linkSources: type lcid: lcid
	"Answer the <VARIANT> result of invoking the LinkSources() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		LinkSources: type asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

LinkSources: type lcid: lcid rhs: rhs
	"Private - Invoke the LinkSources() method of the COM object.

		HRESULT __stdcall LinkSources(
			[in, optional]VARIANT Type,
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 62 variant sdword variant*>
	^self invalidCall!

listChangesOnNewSheet
	"Answer the <varbool> value of the 'ListChangesOnNewSheet' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ListChangesOnNewSheet: answer.
	^answer asObject
!

listChangesOnNewSheet: rhs
	"Set the 'ListChangesOnNewSheet' property of the receiver to the <varbool> value of the argument."

	self put_ListChangesOnNewSheet: rhs
!

lockServerFile
	"Invoke the LockServerFile() method of the COM object."

	^self LockServerFile
!

LockServerFile
	"Private - Invoke the LockServerFile() method of the COM object.

		HRESULT __stdcall LockServerFile();"

	<virtual stdcall: hresult 220>
	^self invalidCall!

mailer
	"Answer the <ExcelMailer> value of the 'Mailer' property of the receiver."

	| answer |
	answer := ExcelMailer newPointer.
	self get_Mailer: answer.
	^answer asObject
!

mergeWorkbook: filename
	"Invoke the MergeWorkbook() method of the COM object."

	^self MergeWorkbook: filename asVariant
!

MergeWorkbook: filename
	"Private - Invoke the MergeWorkbook() method of the COM object.

		HRESULT __stdcall MergeWorkbook(
			[in]VARIANT Filename);"

	<virtual stdcall: hresult 64 variant>
	^self invalidCall!

modules
	"Answer the <ExcelSheets> value of the 'Modules' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Modules: answer.
	^answer asObject
!

multiUserEditing: lcid
	"Answer the <varbool> value of the 'MultiUserEditing' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_MultiUserEditing: lcid
		rhs: answer.
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

newWindow: lcid
	"Answer the <ExcelWindow> result of invoking the NewWindow() method of the COM object."

	| answer |
	answer := ExcelWindow newPointer.
	self
		NewWindow: lcid
		rhs: answer.
	^answer asObject
!

NewWindow: lcid rhs: rhs
	"Private - Invoke the NewWindow() method of the COM object.

		HRESULT __stdcall NewWindow(
			[in]long lcid,
			[out, retval]Window** RHS);"

	<virtual stdcall: hresult 69 sdword ExcelWindow**>
	^self invalidCall!

onSave: lcid
	"Answer the <bstr> value of the 'OnSave' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_OnSave: lcid
		rhs: answer.
	^answer asObject
!

onSave: lcid rhs: rhs
	"Set the 'OnSave' property of the receiver to the <bstr> value of the argument."

	self
		put_OnSave: lcid
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

openLinks: name lcid: lcid
	"Invoke the OpenLinks() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 openLinks: name
		 readOnly: VARIANT unspecified
		 type: VARIANT unspecified
		 lcid: lcid!

openLinks: name readOnly: readOnly type: type lcid: lcid
	"Invoke the OpenLinks() method of the COM object."

	^self
		OpenLinks: name
		readOnly: readOnly asVariant
		type: type asVariant
		lcid: lcid
!

OpenLinks: name readOnly: readOnly type: type lcid: lcid
	"Private - Invoke the OpenLinks() method of the COM object.

		HRESULT __stdcall OpenLinks(
			[in]BSTR Name,
			[in, optional]VARIANT ReadOnly,
			[in, optional]VARIANT Type,
			[in]long lcid);"

	<virtual stdcall: hresult 76 bstr variant variant sdword>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

password
	"Answer the <bstr> value of the 'Password' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Password: answer.
	^answer asObject
!

password: rhs
	"Set the 'Password' property of the receiver to the <bstr> value of the argument."

	self put_Password: rhs
!

passwordEncryptionAlgorithm
	"Answer the <bstr> value of the 'PasswordEncryptionAlgorithm' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PasswordEncryptionAlgorithm: answer.
	^answer asObject
!

passwordEncryptionFileProperties
	"Answer the <varbool> value of the 'PasswordEncryptionFileProperties' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PasswordEncryptionFileProperties: answer.
	^answer asObject
!

passwordEncryptionKeyLength
	"Answer the <sdword> value of the 'PasswordEncryptionKeyLength' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PasswordEncryptionKeyLength: answer.
	^answer asObject
!

passwordEncryptionProvider
	"Answer the <bstr> value of the 'PasswordEncryptionProvider' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PasswordEncryptionProvider: answer.
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

permission
	"Answer the <OfficePermission> value of the 'Permission' property of the receiver."

	| answer |
	answer := OfficePermission newPointer.
	self get_Permission: answer.
	^answer asObject
!

personalViewListSettings
	"Answer the <varbool> value of the 'PersonalViewListSettings' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PersonalViewListSettings: answer.
	^answer asObject
!

personalViewListSettings: rhs
	"Set the 'PersonalViewListSettings' property of the receiver to the <varbool> value of the argument."

	self put_PersonalViewListSettings: rhs
!

personalViewPrintSettings
	"Answer the <varbool> value of the 'PersonalViewPrintSettings' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PersonalViewPrintSettings: answer.
	^answer asObject
!

personalViewPrintSettings: rhs
	"Set the 'PersonalViewPrintSettings' property of the receiver to the <varbool> value of the argument."

	self put_PersonalViewPrintSettings: rhs
!

pivotCaches
	"Answer the <ExcelPivotCaches> result of invoking the PivotCaches() method of the COM object."

	| answer |
	answer := ExcelPivotCaches newPointer.
	self PivotCaches: answer.
	^answer asObject
!

PivotCaches: rhs
	"Private - Invoke the PivotCaches() method of the COM object.

		HRESULT __stdcall PivotCaches(
			[out, retval]PivotCaches** RHS);"

	<virtual stdcall: hresult 82 ExcelPivotCaches**>
	^self invalidCall!

pivotTableWizard: lcid
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
		 connection: VARIANT unspecified
		 lcid: lcid!

pivotTableWizard: sourceType sourceData: sourceData tableDestination: tableDestination tableName: tableName rowGrand: rowGrand columnGrand: columnGrand saveData: saveData hasAutoFormat: hasAutoFormat autoPage: autoPage reserved: reserved backgroundQuery: backgroundQuery optimizeCache: optimizeCache pageFieldOrder: pageFieldOrder pageFieldWrapCount: pageFieldWrapCount readData: readData connection: connection lcid: lcid
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
		lcid: lcid
!

PivotTableWizard: sourceType sourceData: sourceData tableDestination: tableDestination tableName: tableName rowGrand: rowGrand columnGrand: columnGrand saveData: saveData hasAutoFormat: hasAutoFormat autoPage: autoPage reserved: reserved backgroundQuery: backgroundQuery optimizeCache: optimizeCache pageFieldOrder: pageFieldOrder pageFieldWrapCount: pageFieldWrapCount readData: readData connection: connection lcid: lcid
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
			[in]long lcid);"

	<virtual stdcall: hresult 149 variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword>
	^self invalidCall!

post: lcid
	"Invoke the Post() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 post: VARIANT unspecified
		 lcid: lcid!

post: destName lcid: lcid
	"Invoke the Post() method of the COM object."

	^self
		Post: destName asVariant
		lcid: lcid
!

Post: destName lcid: lcid
	"Private - Invoke the Post() method of the COM object.

		HRESULT __stdcall Post(
			[in, optional]VARIANT DestName,
			[in]long lcid);"

	<virtual stdcall: hresult 83 variant sdword>
	^self invalidCall!

precisionAsDisplayed: lcid
	"Answer the <varbool> value of the 'PrecisionAsDisplayed' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_PrecisionAsDisplayed: lcid
		rhs: answer.
	^answer asObject
!

precisionAsDisplayed: lcid rhs: rhs
	"Set the 'PrecisionAsDisplayed' property of the receiver to the <varbool> value of the argument."

	self
		put_PrecisionAsDisplayed: lcid
		rhs: rhs
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

	<virtual stdcall: hresult 224 variant variant variant variant variant variant variant variant variant sdword>
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

	<virtual stdcall: hresult 87 variant sdword>
	^self invalidCall!

protect
	"Invoke the Protect() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 protect: VARIANT unspecified
		 structure: VARIANT unspecified
		 windows: VARIANT unspecified!

protect: password structure: structure windows: windows
	"Invoke the Protect() method of the COM object."

	^self
		Protect: password asVariant
		structure: structure asVariant
		windows: windows asVariant
!

Protect: password structure: structure windows: windows
	"Private - Invoke the Protect() method of the COM object.

		HRESULT __stdcall Protect(
			[in, optional]VARIANT Password,
			[in, optional]VARIANT Structure,
			[in, optional]VARIANT Windows);"

	<virtual stdcall: hresult 195 variant variant variant>
	^self invalidCall!

protectSharing
	"Invoke the ProtectSharing() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 protectSharing: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 sharingPassword: VARIANT unspecified
		 fileFormat: VARIANT unspecified!

protectSharing: filename password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup sharingPassword: sharingPassword fileFormat: fileFormat
	"Invoke the ProtectSharing() method of the COM object."

	^self
		ProtectSharing: filename asVariant
		password: password asVariant
		writeResPassword: writeResPassword asVariant
		readOnlyRecommended: readOnlyRecommended asVariant
		createBackup: createBackup asVariant
		sharingPassword: sharingPassword asVariant
		fileFormat: fileFormat asVariant
!

ProtectSharing: filename password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup sharingPassword: sharingPassword fileFormat: fileFormat
	"Private - Invoke the ProtectSharing() method of the COM object.

		HRESULT __stdcall ProtectSharing(
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT ReadOnlyRecommended,
			[in, optional]VARIANT CreateBackup,
			[in, optional]VARIANT SharingPassword,
			[in, optional]VARIANT FileFormat);"

	<virtual stdcall: hresult 253 variant variant variant variant variant variant variant>
	^self invalidCall!

protectStructure
	"Answer the <varbool> value of the 'ProtectStructure' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ProtectStructure: answer.
	^answer asObject
!

protectWindows
	"Answer the <varbool> value of the 'ProtectWindows' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ProtectWindows: answer.
	^answer asObject
!

publishObjects
	"Answer the <ExcelPublishObjects> value of the 'PublishObjects' property of the receiver."

	| answer |
	answer := ExcelPublishObjects newPointer.
	self get_PublishObjects: answer.
	^answer asObject
!

purgeChangeHistoryNow: days
	"Invoke the PurgeChangeHistoryNow() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 purgeChangeHistoryNow: days
		 sharingPassword: VARIANT unspecified!

purgeChangeHistoryNow: days sharingPassword: sharingPassword
	"Invoke the PurgeChangeHistoryNow() method of the COM object."

	^self
		PurgeChangeHistoryNow: days
		sharingPassword: sharingPassword asVariant
!

PurgeChangeHistoryNow: days sharingPassword: sharingPassword
	"Private - Invoke the PurgeChangeHistoryNow() method of the COM object.

		HRESULT __stdcall PurgeChangeHistoryNow(
			[in]long Days,
			[in, optional]VARIANT SharingPassword);"

	<virtual stdcall: hresult 146 sdword variant>
	^self invalidCall!

put__CodeName: rhs
	"Private - Set the value of the '_CodeName' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall _CodeName(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 31 bstr>
	^self invalidCall!

put_AcceptLabelsInFormulas: rhs
	"Private - Set the value of the 'AcceptLabelsInFormulas' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AcceptLabelsInFormulas(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_Author: lcid rhs: rhs
	"Private - Set the value of the 'Author' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Author(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 17 sdword bstr>
	^self invalidCall!

put_AutoUpdateFrequency: rhs
	"Private - Set the value of the 'AutoUpdateFrequency' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall AutoUpdateFrequency(
			[in]long RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_AutoUpdateSaveChanges: rhs
	"Private - Set the value of the 'AutoUpdateSaveChanges' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoUpdateSaveChanges(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 21 varbool>
	^self invalidCall!

put_ChangeHistoryDuration: rhs
	"Private - Set the value of the 'ChangeHistoryDuration' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ChangeHistoryDuration(
			[in]long RHS);"

	<virtual stdcall: hresult 23 sdword>
	^self invalidCall!

put_CheckCompatibility: rhs
	"Private - Set the value of the 'CheckCompatibility' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CheckCompatibility(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 232 varbool>
	^self invalidCall!

put_Colors: index lcid: lcid rhs: rhs
	"Private - Set the value of the 'Colors' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Colors(
			[in, optional]VARIANT Index,
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 33 variant sdword variant>
	^self invalidCall!

put_Comments: lcid rhs: rhs
	"Private - Set the value of the 'Comments' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Comments(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 36 sdword bstr>
	^self invalidCall!

put_ConflictResolution: rhs
	"Private - Set the value of the 'ConflictResolution' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ConflictResolution(
			[in]XlSaveConflictResolution RHS);"

	<virtual stdcall: hresult 38 sdword>
	^self invalidCall!

put_Date1904: lcid rhs: rhs
	"Private - Set the value of the 'Date1904' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Date1904(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 43 sdword varbool>
	^self invalidCall!

put_DefaultPivotTableStyle: rhs
	"Private - Set the value of the 'DefaultPivotTableStyle' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall DefaultPivotTableStyle(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 230 variant>
	^self invalidCall!

put_DefaultTableStyle: rhs
	"Private - Set the value of the 'DefaultTableStyle' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall DefaultTableStyle(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 228 variant>
	^self invalidCall!

put_DisplayDrawingObjects: lcid rhs: rhs
	"Private - Set the value of the 'DisplayDrawingObjects' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DisplayDrawingObjects(
			[in]long lcid,
			[in]XlDisplayDrawingObjects RHS);"

	<virtual stdcall: hresult 47 sdword sdword>
	^self invalidCall!

put_DisplayInkComments: rhs
	"Private - Set the value of the 'DisplayInkComments' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayInkComments(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 210 varbool>
	^self invalidCall!

put_DoNotPromptForConvert: rhs
	"Private - Set the value of the 'DoNotPromptForConvert' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DoNotPromptForConvert(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 250 varbool>
	^self invalidCall!

put_EnableAutoRecover: rhs
	"Private - Set the value of the 'EnableAutoRecover' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableAutoRecover(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 175 varbool>
	^self invalidCall!

put_EncryptionProvider: rhs
	"Private - Set the value of the 'EncryptionProvider' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall EncryptionProvider(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 248 bstr>
	^self invalidCall!

put_EnvelopeVisible: rhs
	"Private - Set the value of the 'EnvelopeVisible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnvelopeVisible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 162 varbool>
	^self invalidCall!

put_Final: rhs
	"Private - Set the value of the 'Final' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Final(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 236 varbool>
	^self invalidCall!

put_ForceFullCalculation: rhs
	"Private - Set the value of the 'ForceFullCalculation' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ForceFullCalculation(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 252 varbool>
	^self invalidCall!

put_HasMailer: lcid rhs: rhs
	"Private - Set the value of the 'HasMailer' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasMailer(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 53 sdword varbool>
	^self invalidCall!

put_HasRoutingSlip: lcid rhs: rhs
	"Private - Set the value of the 'HasRoutingSlip' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasRoutingSlip(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 56 sdword varbool>
	^self invalidCall!

put_HighlightChangesOnScreen: rhs
	"Private - Set the value of the 'HighlightChangesOnScreen' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HighlightChangesOnScreen(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 141 varbool>
	^self invalidCall!

put_InactiveListBorderVisible: rhs
	"Private - Set the value of the 'InactiveListBorderVisible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InactiveListBorderVisible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 208 varbool>
	^self invalidCall!

put_IsAddin: rhs
	"Private - Set the value of the 'IsAddin' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IsAddin(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 58 varbool>
	^self invalidCall!

put_KeepChangeHistory: rhs
	"Private - Set the value of the 'KeepChangeHistory' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall KeepChangeHistory(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 143 varbool>
	^self invalidCall!

put_Keywords: lcid rhs: rhs
	"Private - Set the value of the 'Keywords' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Keywords(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 60 sdword bstr>
	^self invalidCall!

put_ListChangesOnNewSheet: rhs
	"Private - Set the value of the 'ListChangesOnNewSheet' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ListChangesOnNewSheet(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 145 varbool>
	^self invalidCall!

put_OnSave: lcid rhs: rhs
	"Private - Set the value of the 'OnSave' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnSave(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 71 sdword bstr>
	^self invalidCall!

put_OnSheetActivate: lcid rhs: rhs
	"Private - Set the value of the 'OnSheetActivate' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnSheetActivate(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 73 sdword bstr>
	^self invalidCall!

put_OnSheetDeactivate: lcid rhs: rhs
	"Private - Set the value of the 'OnSheetDeactivate' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnSheetDeactivate(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 75 sdword bstr>
	^self invalidCall!

put_Password: rhs
	"Private - Set the value of the 'Password' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Password(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 185 bstr>
	^self invalidCall!

put_PersonalViewListSettings: rhs
	"Private - Set the value of the 'PersonalViewListSettings' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PersonalViewListSettings(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 79 varbool>
	^self invalidCall!

put_PersonalViewPrintSettings: rhs
	"Private - Set the value of the 'PersonalViewPrintSettings' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PersonalViewPrintSettings(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 81 varbool>
	^self invalidCall!

put_PrecisionAsDisplayed: lcid rhs: rhs
	"Private - Set the value of the 'PrecisionAsDisplayed' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrecisionAsDisplayed(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 85 sdword varbool>
	^self invalidCall!

put_ReadOnlyRecommended: rhs
	"Private - Set the value of the 'ReadOnlyRecommended' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ReadOnlyRecommended(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 194 varbool>
	^self invalidCall!

put_RemovePersonalInformation: rhs
	"Private - Set the value of the 'RemovePersonalInformation' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RemovePersonalInformation(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 177 varbool>
	^self invalidCall!

put_Saved: lcid rhs: rhs
	"Private - Set the value of the 'Saved' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Saved(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 107 sdword varbool>
	^self invalidCall!

put_SaveLinkValues: lcid rhs: rhs
	"Private - Set the value of the 'SaveLinkValues' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SaveLinkValues(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 109 sdword varbool>
	^self invalidCall!

put_ShowConflictHistory: lcid rhs: rhs
	"Private - Set the value of the 'ShowConflictHistory' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowConflictHistory(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 115 sdword varbool>
	^self invalidCall!

put_ShowPivotChartActiveFields: rhs
	"Private - Set the value of the 'ShowPivotChartActiveFields' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowPivotChartActiveFields(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 244 varbool>
	^self invalidCall!

put_ShowPivotTableFieldList: rhs
	"Private - Set the value of the 'ShowPivotTableFieldList' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowPivotTableFieldList(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 168 varbool>
	^self invalidCall!

put_Subject: lcid rhs: rhs
	"Private - Set the value of the 'Subject' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Subject(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 118 sdword bstr>
	^self invalidCall!

put_TemplateRemoveExtData: rhs
	"Private - Set the value of the 'TemplateRemoveExtData' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TemplateRemoveExtData(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 138 varbool>
	^self invalidCall!

put_Title: lcid rhs: rhs
	"Private - Set the value of the 'Title' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Title(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 120 sdword bstr>
	^self invalidCall!

put_UpdateLinks: rhs
	"Private - Set the value of the 'UpdateLinks' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall UpdateLinks(
			[in]XlUpdateLinks RHS);"

	<virtual stdcall: hresult 170 sdword>
	^self invalidCall!

put_UpdateRemoteReferences: lcid rhs: rhs
	"Private - Set the value of the 'UpdateRemoteReferences' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UpdateRemoteReferences(
			[in]long lcid,
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 126 sdword varbool>
	^self invalidCall!

put_UserControl: rhs
	"Private - Set the value of the 'UserControl' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UserControl(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 128 varbool>
	^self invalidCall!

put_WritePassword: rhs
	"Private - Set the value of the 'WritePassword' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall WritePassword(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 187 bstr>
	^self invalidCall!

readOnly: lcid
	"Answer the <varbool> value of the 'ReadOnly' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ReadOnly: lcid
		rhs: answer.
	^answer asObject
!

readOnlyRecommended
	"Answer the <varbool> value of the 'ReadOnlyRecommended' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ReadOnlyRecommended: answer.
	^answer asObject
!

readOnlyRecommended: rhs
	"Set the 'ReadOnlyRecommended' property of the receiver to the <varbool> value of the argument."

	self put_ReadOnlyRecommended: rhs
!

recheckSmartTags
	"Invoke the RecheckSmartTags() method of the COM object."

	^self RecheckSmartTags
!

RecheckSmartTags
	"Private - Invoke the RecheckSmartTags() method of the COM object.

		HRESULT __stdcall RecheckSmartTags();"

	<virtual stdcall: hresult 197>
	^self invalidCall!

refreshAll
	"Invoke the RefreshAll() method of the COM object."

	^self RefreshAll
!

RefreshAll
	"Private - Invoke the RefreshAll() method of the COM object.

		HRESULT __stdcall RefreshAll();"

	<virtual stdcall: hresult 94>
	^self invalidCall!

rejectAllChanges
	"Invoke the RejectAllChanges() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 rejectAllChanges: VARIANT unspecified
		 who: VARIANT unspecified
		 where: VARIANT unspecified!

rejectAllChanges: when who: who where: where
	"Invoke the RejectAllChanges() method of the COM object."

	^self
		RejectAllChanges: when asVariant
		who: who asVariant
		where: where asVariant
!

RejectAllChanges: when who: who where: where
	"Private - Invoke the RejectAllChanges() method of the COM object.

		HRESULT __stdcall RejectAllChanges(
			[in, optional]VARIANT When,
			[in, optional]VARIANT Who,
			[in, optional]VARIANT Where);"

	<virtual stdcall: hresult 148 variant variant variant>
	^self invalidCall!

reloadAs: encoding
	"Invoke the ReloadAs() method of the COM object."

	^self ReloadAs: encoding
!

ReloadAs: encoding
	"Private - Invoke the ReloadAs() method of the COM object.

		HRESULT __stdcall ReloadAs(
			[in]MsoEncoding Encoding);"

	<virtual stdcall: hresult 159 sdword>
	^self invalidCall!

removeDocumentInformation: removeDocInfoType
	"Invoke the RemoveDocumentInformation() method of the COM object."

	^self RemoveDocumentInformation: removeDocInfoType
!

RemoveDocumentInformation: removeDocInfoType
	"Private - Invoke the RemoveDocumentInformation() method of the COM object.

		HRESULT __stdcall RemoveDocumentInformation(
			[in]XlRemoveDocInfoType RemoveDocInfoType);"

	<virtual stdcall: hresult 216 sdword>
	^self invalidCall!

removePersonalInformation
	"Answer the <varbool> value of the 'RemovePersonalInformation' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RemovePersonalInformation: answer.
	^answer asObject
!

removePersonalInformation: rhs
	"Set the 'RemovePersonalInformation' property of the receiver to the <varbool> value of the argument."

	self put_RemovePersonalInformation: rhs
!

removeUser: index
	"Invoke the RemoveUser() method of the COM object."

	^self RemoveUser: index
!

RemoveUser: index
	"Private - Invoke the RemoveUser() method of the COM object.

		HRESULT __stdcall RemoveUser(
			[in]long Index);"

	<virtual stdcall: hresult 97 sdword>
	^self invalidCall!

reply: lcid
	"Invoke the Reply() method of the COM object."

	^self Reply: lcid
!

Reply: lcid
	"Private - Invoke the Reply() method of the COM object.

		HRESULT __stdcall Reply(
			[in]long lcid);"

	<virtual stdcall: hresult 95 sdword>
	^self invalidCall!

replyAll: lcid
	"Invoke the ReplyAll() method of the COM object."

	^self ReplyAll: lcid
!

ReplyAll: lcid
	"Private - Invoke the ReplyAll() method of the COM object.

		HRESULT __stdcall ReplyAll(
			[in]long lcid);"

	<virtual stdcall: hresult 96 sdword>
	^self invalidCall!

replyWithChanges
	"Invoke the ReplyWithChanges() method of the COM object.
	Default values are passed for all optional parameters."

	^self replyWithChanges: VARIANT unspecified!

replyWithChanges: showMessage
	"Invoke the ReplyWithChanges() method of the COM object."

	^self ReplyWithChanges: showMessage asVariant
!

ReplyWithChanges: showMessage
	"Private - Invoke the ReplyWithChanges() method of the COM object.

		HRESULT __stdcall ReplyWithChanges(
			[in, optional]VARIANT ShowMessage);"

	<virtual stdcall: hresult 182 variant>
	^self invalidCall!

research
	"Answer the <ExcelResearch> value of the 'Research' property of the receiver."

	| answer |
	answer := ExcelResearch newPointer.
	self get_Research: answer.
	^answer asObject
!

resetColors
	"Invoke the ResetColors() method of the COM object."

	^self ResetColors
!

ResetColors
	"Private - Invoke the ResetColors() method of the COM object.

		HRESULT __stdcall ResetColors();"

	<virtual stdcall: hresult 150>
	^self invalidCall!

revisionNumber: lcid
	"Answer the <sdword> value of the 'RevisionNumber' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_RevisionNumber: lcid
		rhs: answer.
	^answer asObject
!

route: lcid
	"Invoke the Route() method of the COM object."

	^self Route: lcid
!

Route: lcid
	"Private - Invoke the Route() method of the COM object.

		HRESULT __stdcall Route(
			[in]long lcid);"

	<virtual stdcall: hresult 99 sdword>
	^self invalidCall!

routed: lcid
	"Answer the <varbool> value of the 'Routed' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_Routed: lcid
		rhs: answer.
	^answer asObject
!

routingSlip
	"Answer the <ExcelRoutingSlip> value of the 'RoutingSlip' property of the receiver."

	| answer |
	answer := ExcelRoutingSlip newPointer.
	self get_RoutingSlip: answer.
	^answer asObject
!

runAutoMacros: which lcid: lcid
	"Invoke the RunAutoMacros() method of the COM object."

	^self
		RunAutoMacros: which
		lcid: lcid
!

RunAutoMacros: which lcid: lcid
	"Private - Invoke the RunAutoMacros() method of the COM object.

		HRESULT __stdcall RunAutoMacros(
			[in]XlRunAutoMacro Which,
			[in]long lcid);"

	<virtual stdcall: hresult 102 sdword sdword>
	^self invalidCall!

save: lcid
	"Invoke the Save() method of the COM object."

	^self Save: lcid
!

Save: lcid
	"Private - Invoke the Save() method of the COM object.

		HRESULT __stdcall Save(
			[in]long lcid);"

	<virtual stdcall: hresult 103 sdword>
	^self invalidCall!

saveAs: lcid
	"Invoke the SaveAs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 saveAs: VARIANT unspecified
		 fileFormat: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 accessMode: 1
		 conflictResolution: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 textCodepage: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified
		 local: VARIANT unspecified
		 lcid: lcid!

saveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup accessMode: accessMode conflictResolution: conflictResolution addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout local: local lcid: lcid
	"Invoke the SaveAs() method of the COM object."

	^self
		SaveAs: filename asVariant
		fileFormat: fileFormat asVariant
		password: password asVariant
		writeResPassword: writeResPassword asVariant
		readOnlyRecommended: readOnlyRecommended asVariant
		createBackup: createBackup asVariant
		accessMode: accessMode
		conflictResolution: conflictResolution asVariant
		addToMru: addToMru asVariant
		textCodepage: textCodepage asVariant
		textVisualLayout: textVisualLayout asVariant
		local: local asVariant
		lcid: lcid
!

SaveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup accessMode: accessMode conflictResolution: conflictResolution addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout local: local lcid: lcid
	"Private - Invoke the SaveAs() method of the COM object.

		HRESULT __stdcall SaveAs(
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT FileFormat,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT ReadOnlyRecommended,
			[in, optional]VARIANT CreateBackup,
			[in, defaultvalue(1)]XlSaveAsAccessMode AccessMode,
			[in, optional]VARIANT ConflictResolution,
			[in, optional]VARIANT AddToMru,
			[in, optional]VARIANT TextCodepage,
			[in, optional]VARIANT TextVisualLayout,
			[in, optional]VARIANT Local,
			[in]long lcid);"

	<virtual stdcall: hresult 173 variant variant variant variant variant variant sdword variant variant variant variant variant sdword>
	^self invalidCall!

saveAsXMLData: filename map: map
	"Invoke the SaveAsXMLData() method of the COM object."

	^self
		SaveAsXMLData: filename
		map: map
!

SaveAsXMLData: filename map: map
	"Private - Invoke the SaveAsXMLData() method of the COM object.

		HRESULT __stdcall SaveAsXMLData(
			[in]BSTR Filename,
			[in]XmlMap* Map);"

	<virtual stdcall: hresult 212 bstr ExcelXmlMap*>
	^self invalidCall!

saveCopyAs: lcid
	"Invoke the SaveCopyAs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 saveCopyAs: VARIANT unspecified
		 lcid: lcid!

saveCopyAs: filename lcid: lcid
	"Invoke the SaveCopyAs() method of the COM object."

	^self
		SaveCopyAs: filename asVariant
		lcid: lcid
!

SaveCopyAs: filename lcid: lcid
	"Private - Invoke the SaveCopyAs() method of the COM object.

		HRESULT __stdcall SaveCopyAs(
			[in, optional]VARIANT Filename,
			[in]long lcid);"

	<virtual stdcall: hresult 105 variant sdword>
	^self invalidCall!

saved: lcid
	"Answer the <varbool> value of the 'Saved' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_Saved: lcid
		rhs: answer.
	^answer asObject
!

saved: lcid rhs: rhs
	"Set the 'Saved' property of the receiver to the <varbool> value of the argument."

	self
		put_Saved: lcid
		rhs: rhs
!

saveLinkValues: lcid
	"Answer the <varbool> value of the 'SaveLinkValues' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_SaveLinkValues: lcid
		rhs: answer.
	^answer asObject
!

saveLinkValues: lcid rhs: rhs
	"Set the 'SaveLinkValues' property of the receiver to the <varbool> value of the argument."

	self
		put_SaveLinkValues: lcid
		rhs: rhs
!

sblt: s
	"Invoke the sblt() method of the COM object."

	^self Sblt: s
!

Sblt: s
	"Private - Invoke the sblt() method of the COM object.

		HRESULT __stdcall sblt(
			[in]BSTR s);"

	<virtual stdcall: hresult 165 bstr>
	^self invalidCall!

sendFaxOverInternet
	"Invoke the SendFaxOverInternet() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sendFaxOverInternet: VARIANT unspecified
		 subject: VARIANT unspecified
		 showMessage: VARIANT unspecified!

sendFaxOverInternet: recipients subject: subject showMessage: showMessage
	"Invoke the SendFaxOverInternet() method of the COM object."

	^self
		SendFaxOverInternet: recipients asVariant
		subject: subject asVariant
		showMessage: showMessage asVariant
!

SendFaxOverInternet: recipients subject: subject showMessage: showMessage
	"Private - Invoke the SendFaxOverInternet() method of the COM object.

		HRESULT __stdcall SendFaxOverInternet(
			[in, optional]VARIANT Recipients,
			[in, optional]VARIANT Subject,
			[in, optional]VARIANT ShowMessage);"

	<virtual stdcall: hresult 201 variant variant variant>
	^self invalidCall!

sendForReview
	"Invoke the SendForReview() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sendForReview: VARIANT unspecified
		 subject: VARIANT unspecified
		 showMessage: VARIANT unspecified
		 includeAttachment: VARIANT unspecified!

sendForReview: recipients subject: subject showMessage: showMessage includeAttachment: includeAttachment
	"Invoke the SendForReview() method of the COM object."

	^self
		SendForReview: recipients asVariant
		subject: subject asVariant
		showMessage: showMessage asVariant
		includeAttachment: includeAttachment asVariant
!

SendForReview: recipients subject: subject showMessage: showMessage includeAttachment: includeAttachment
	"Private - Invoke the SendForReview() method of the COM object.

		HRESULT __stdcall SendForReview(
			[in, optional]VARIANT Recipients,
			[in, optional]VARIANT Subject,
			[in, optional]VARIANT ShowMessage,
			[in, optional]VARIANT IncludeAttachment);"

	<virtual stdcall: hresult 181 variant variant variant variant>
	^self invalidCall!

sendMail: recipients lcid: lcid
	"Invoke the SendMail() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sendMail: recipients
		 subject: VARIANT unspecified
		 returnReceipt: VARIANT unspecified
		 lcid: lcid!

sendMail: recipients subject: subject returnReceipt: returnReceipt lcid: lcid
	"Invoke the SendMail() method of the COM object."

	^self
		SendMail: recipients asVariant
		subject: subject asVariant
		returnReceipt: returnReceipt asVariant
		lcid: lcid
!

SendMail: recipients subject: subject returnReceipt: returnReceipt lcid: lcid
	"Private - Invoke the SendMail() method of the COM object.

		HRESULT __stdcall SendMail(
			[in]VARIANT Recipients,
			[in, optional]VARIANT Subject,
			[in, optional]VARIANT ReturnReceipt,
			[in]long lcid);"

	<virtual stdcall: hresult 110 variant variant variant sdword>
	^self invalidCall!

sendMailer: lcid
	"Invoke the SendMailer() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sendMailer: VARIANT unspecified
		 priority: -4143
		 lcid: lcid!

sendMailer: fileFormat priority: priority lcid: lcid
	"Invoke the SendMailer() method of the COM object."

	^self
		SendMailer: fileFormat asVariant
		priority: priority
		lcid: lcid
!

SendMailer: fileFormat priority: priority lcid: lcid
	"Private - Invoke the SendMailer() method of the COM object.

		HRESULT __stdcall SendMailer(
			[in, optional]VARIANT FileFormat,
			[in, defaultvalue(-4143)]XlPriority Priority,
			[in]long lcid);"

	<virtual stdcall: hresult 111 variant sdword sdword>
	^self invalidCall!

serverPolicy
	"Answer the <OfficeServerPolicy> value of the 'ServerPolicy' property of the receiver."

	| answer |
	answer := OfficeServerPolicy newPointer.
	self get_ServerPolicy: answer.
	^answer asObject
!

serverViewableItems
	"Answer the <ExcelServerViewableItems> value of the 'ServerViewableItems' property of the receiver."

	| answer |
	answer := ExcelServerViewableItems newPointer.
	self get_ServerViewableItems: answer.
	^answer asObject
!

setLinkOnData: name lcid: lcid
	"Invoke the SetLinkOnData() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 setLinkOnData: name
		 procedure: VARIANT unspecified
		 lcid: lcid!

setLinkOnData: name procedure: procedure lcid: lcid
	"Invoke the SetLinkOnData() method of the COM object."

	^self
		SetLinkOnData: name
		procedure: procedure asVariant
		lcid: lcid
!

SetLinkOnData: name procedure: procedure lcid: lcid
	"Private - Invoke the SetLinkOnData() method of the COM object.

		HRESULT __stdcall SetLinkOnData(
			[in]BSTR Name,
			[in, optional]VARIANT Procedure,
			[in]long lcid);"

	<virtual stdcall: hresult 112 bstr variant sdword>
	^self invalidCall!

setPasswordEncryptionOptions
	"Invoke the SetPasswordEncryptionOptions() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 setPasswordEncryptionOptions: VARIANT unspecified
		 passwordEncryptionAlgorithm: VARIANT unspecified
		 passwordEncryptionKeyLength: VARIANT unspecified
		 passwordEncryptionFileProperties: VARIANT unspecified!

setPasswordEncryptionOptions: passwordEncryptionProvider passwordEncryptionAlgorithm: passwordEncryptionAlgorithm passwordEncryptionKeyLength: passwordEncryptionKeyLength passwordEncryptionFileProperties: passwordEncryptionFileProperties
	"Invoke the SetPasswordEncryptionOptions() method of the COM object."

	^self
		SetPasswordEncryptionOptions: passwordEncryptionProvider asVariant
		passwordEncryptionAlgorithm: passwordEncryptionAlgorithm asVariant
		passwordEncryptionKeyLength: passwordEncryptionKeyLength asVariant
		passwordEncryptionFileProperties: passwordEncryptionFileProperties asVariant
!

SetPasswordEncryptionOptions: passwordEncryptionProvider passwordEncryptionAlgorithm: passwordEncryptionAlgorithm passwordEncryptionKeyLength: passwordEncryptionKeyLength passwordEncryptionFileProperties: passwordEncryptionFileProperties
	"Private - Invoke the SetPasswordEncryptionOptions() method of the COM object.

		HRESULT __stdcall SetPasswordEncryptionOptions(
			[in, optional]VARIANT PasswordEncryptionProvider,
			[in, optional]VARIANT PasswordEncryptionAlgorithm,
			[in, optional]VARIANT PasswordEncryptionKeyLength,
			[in, optional]VARIANT PasswordEncryptionFileProperties);"

	<virtual stdcall: hresult 191 variant variant variant variant>
	^self invalidCall!

sharedWorkspace
	"Answer the <OfficeSharedWorkspace> value of the 'SharedWorkspace' property of the receiver."

	| answer |
	answer := OfficeSharedWorkspace newPointer.
	self get_SharedWorkspace: answer.
	^answer asObject
!

sheets
	"Answer the <ExcelSheets> value of the 'Sheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Sheets: answer.
	^answer asObject
!

showConflictHistory: lcid
	"Answer the <varbool> value of the 'ShowConflictHistory' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ShowConflictHistory: lcid
		rhs: answer.
	^answer asObject
!

showConflictHistory: lcid rhs: rhs
	"Set the 'ShowConflictHistory' property of the receiver to the <varbool> value of the argument."

	self
		put_ShowConflictHistory: lcid
		rhs: rhs
!

showPivotChartActiveFields
	"Answer the <varbool> value of the 'ShowPivotChartActiveFields' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowPivotChartActiveFields: answer.
	^answer asObject
!

showPivotChartActiveFields: rhs
	"Set the 'ShowPivotChartActiveFields' property of the receiver to the <varbool> value of the argument."

	self put_ShowPivotChartActiveFields: rhs
!

showPivotTableFieldList
	"Answer the <varbool> value of the 'ShowPivotTableFieldList' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowPivotTableFieldList: answer.
	^answer asObject
!

showPivotTableFieldList: rhs
	"Set the 'ShowPivotTableFieldList' property of the receiver to the <varbool> value of the argument."

	self put_ShowPivotTableFieldList: rhs
!

signatures
	"Answer the <OfficeSignatureSet> value of the 'Signatures' property of the receiver."

	| answer |
	answer := OfficeSignatureSet newPointer.
	self get_Signatures: answer.
	^answer asObject
!

smartDocument
	"Answer the <OfficeSmartDocument> value of the 'SmartDocument' property of the receiver."

	| answer |
	answer := OfficeSmartDocument newPointer.
	self get_SmartDocument: answer.
	^answer asObject
!

smartTagOptions
	"Answer the <ExcelSmartTagOptions> value of the 'SmartTagOptions' property of the receiver."

	| answer |
	answer := ExcelSmartTagOptions newPointer.
	self get_SmartTagOptions: answer.
	^answer asObject
!

styles
	"Answer the <ExcelStyles> value of the 'Styles' property of the receiver."

	| answer |
	answer := ExcelStyles newPointer.
	self get_Styles: answer.
	^answer asObject
!

subject: lcid
	"Answer the <bstr> value of the 'Subject' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Subject: lcid
		rhs: answer.
	^answer asObject
!

subject: lcid rhs: rhs
	"Set the 'Subject' property of the receiver to the <bstr> value of the argument."

	self
		put_Subject: lcid
		rhs: rhs
!

sync
	"Answer the <OfficeSync> value of the 'Sync' property of the receiver."

	| answer |
	answer := OfficeSync newPointer.
	self get_Sync: answer.
	^answer asObject
!

tableStyles
	"Answer the <ExcelTableStyles> value of the 'TableStyles' property of the receiver."

	| answer |
	answer := ExcelTableStyles newPointer.
	self get_TableStyles: answer.
	^answer asObject
!

templateRemoveExtData
	"Answer the <varbool> value of the 'TemplateRemoveExtData' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TemplateRemoveExtData: answer.
	^answer asObject
!

templateRemoveExtData: rhs
	"Set the 'TemplateRemoveExtData' property of the receiver to the <varbool> value of the argument."

	self put_TemplateRemoveExtData: rhs
!

theme
	"Answer the <OfficeOfficeTheme> value of the 'Theme' property of the receiver."

	| answer |
	answer := OfficeOfficeTheme newPointer.
	self get_Theme: answer.
	^answer asObject
!

title: lcid
	"Answer the <bstr> value of the 'Title' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Title: lcid
		rhs: answer.
	^answer asObject
!

title: lcid rhs: rhs
	"Set the 'Title' property of the receiver to the <bstr> value of the argument."

	self
		put_Title: lcid
		rhs: rhs
!

toggleFormsDesign
	"Invoke the ToggleFormsDesign() method of the COM object."

	^self ToggleFormsDesign
!

ToggleFormsDesign
	"Private - Invoke the ToggleFormsDesign() method of the COM object.

		HRESULT __stdcall ToggleFormsDesign();"

	<virtual stdcall: hresult 213>
	^self invalidCall!

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

	<virtual stdcall: hresult 121 variant sdword>
	^self invalidCall!

unprotectSharing
	"Invoke the UnprotectSharing() method of the COM object.
	Default values are passed for all optional parameters."

	^self unprotectSharing: VARIANT unspecified!

unprotectSharing: sharingPassword
	"Invoke the UnprotectSharing() method of the COM object."

	^self UnprotectSharing: sharingPassword asVariant
!

UnprotectSharing: sharingPassword
	"Private - Invoke the UnprotectSharing() method of the COM object.

		HRESULT __stdcall UnprotectSharing(
			[in, optional]VARIANT SharingPassword);"

	<virtual stdcall: hresult 122 variant>
	^self invalidCall!

updateFromFile: lcid
	"Invoke the UpdateFromFile() method of the COM object."

	^self UpdateFromFile: lcid
!

UpdateFromFile: lcid
	"Private - Invoke the UpdateFromFile() method of the COM object.

		HRESULT __stdcall UpdateFromFile(
			[in]long lcid);"

	<virtual stdcall: hresult 123 sdword>
	^self invalidCall!

updateLink: lcid
	"Invoke the UpdateLink() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 updateLink: VARIANT unspecified
		 type: VARIANT unspecified
		 lcid: lcid!

updateLink: name type: type lcid: lcid
	"Invoke the UpdateLink() method of the COM object."

	^self
		UpdateLink: name asVariant
		type: type asVariant
		lcid: lcid
!

UpdateLink: name type: type lcid: lcid
	"Private - Invoke the UpdateLink() method of the COM object.

		HRESULT __stdcall UpdateLink(
			[in, optional]VARIANT Name,
			[in, optional]VARIANT Type,
			[in]long lcid);"

	<virtual stdcall: hresult 124 variant variant sdword>
	^self invalidCall!

updateLinks
	"Answer the <sdword> value of the 'UpdateLinks' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_UpdateLinks: answer.
	^answer asObject
!

updateLinks: rhs
	"Set the 'UpdateLinks' property of the receiver to the <sdword> value of the argument."

	self put_UpdateLinks: rhs
!

updateRemoteReferences: lcid
	"Answer the <varbool> value of the 'UpdateRemoteReferences' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_UpdateRemoteReferences: lcid
		rhs: answer.
	^answer asObject
!

updateRemoteReferences: lcid rhs: rhs
	"Set the 'UpdateRemoteReferences' property of the receiver to the <varbool> value of the argument."

	self
		put_UpdateRemoteReferences: lcid
		rhs: rhs
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

userStatus: lcid
	"Answer the <variant> value of the 'UserStatus' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_UserStatus: lcid
		rhs: answer.
	^answer asObject
!

vbaSigned
	"Answer the <varbool> value of the 'VBASigned' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_VBASigned: answer.
	^answer asObject
!

vbProject
	"Answer the <VBIDE_VBProject> value of the 'VBProject' property of the receiver."

	| answer |
	answer := VBIDE_VBProject newPointer.
	self get_VBProject: answer.
	^answer asObject
!

webOptions
	"Answer the <ExcelWebOptions> value of the 'WebOptions' property of the receiver."

	| answer |
	answer := ExcelWebOptions newPointer.
	self get_WebOptions: answer.
	^answer asObject
!

webPagePreview
	"Invoke the WebPagePreview() method of the COM object."

	^self WebPagePreview
!

WebPagePreview
	"Private - Invoke the WebPagePreview() method of the COM object.

		HRESULT __stdcall WebPagePreview();"

	<virtual stdcall: hresult 156>
	^self invalidCall!

windows
	"Answer the <ExcelWindows> value of the 'Windows' property of the receiver."

	| answer |
	answer := ExcelWindows newPointer.
	self get_Windows: answer.
	^answer asObject
!

worksheets
	"Answer the <ExcelSheets> value of the 'Worksheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Worksheets: answer.
	^answer asObject
!

writePassword
	"Answer the <bstr> value of the 'WritePassword' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_WritePassword: answer.
	^answer asObject
!

writePassword: rhs
	"Set the 'WritePassword' property of the receiver to the <bstr> value of the argument."

	self put_WritePassword: rhs
!

writeReserved: lcid
	"Answer the <varbool> value of the 'WriteReserved' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_WriteReserved: lcid
		rhs: answer.
	^answer asObject
!

writeReservedBy: lcid
	"Answer the <bstr> value of the 'WriteReservedBy' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_WriteReservedBy: lcid
		rhs: answer.
	^answer asObject
!

xmlImport: url
	"Invoke the XmlImport() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 xmlImport: url
		 overwrite: VARIANT unspecified
		 destination: VARIANT unspecified!

XmlImport: url importMap: importMap overwrite: overwrite destination: destination rhs: rhs
	"Private - Invoke the XmlImport() method of the COM object.

		HRESULT __stdcall XmlImport(
			[in]BSTR Url,
			[out]XmlMap** ImportMap,
			[in, optional]VARIANT Overwrite,
			[in, optional]VARIANT Destination,
			[out, retval]XlXmlImportResult* RHS);"

	<virtual stdcall: hresult 204 bstr ExcelXmlMap** variant variant sdword*>
	^self invalidCall!

xmlImport: url overwrite: overwrite destination: destination
	"Invoke the XmlImport() method of the COM object."

	| answer |
	answer := (Array new: 2)
				basicAt: 1 put: ExcelXmlMap newPointer;
				basicAt: 2 put: (SDWORD new);
				yourself.
	self
		XmlImport: url
		importMap: (answer basicAt: 1)
		overwrite: overwrite asVariant
		destination: destination asVariant
		rhs: (answer basicAt: 2).
	^answer collect: [:each | each asObject]
!

xmlImportXml: data
	"Invoke the XmlImportXml() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 xmlImportXml: data
		 overwrite: VARIANT unspecified
		 destination: VARIANT unspecified!

XmlImportXml: data importMap: importMap overwrite: overwrite destination: destination rhs: rhs
	"Private - Invoke the XmlImportXml() method of the COM object.

		HRESULT __stdcall XmlImportXml(
			[in]BSTR Data,
			[out]XmlMap** ImportMap,
			[in, optional]VARIANT Overwrite,
			[in, optional]VARIANT Destination,
			[out, retval]XlXmlImportResult* RHS);"

	<virtual stdcall: hresult 211 bstr ExcelXmlMap** variant variant sdword*>
	^self invalidCall!

xmlImportXml: data overwrite: overwrite destination: destination
	"Invoke the XmlImportXml() method of the COM object."

	| answer |
	answer := (Array new: 2)
				basicAt: 1 put: ExcelXmlMap newPointer;
				basicAt: 2 put: (SDWORD new);
				yourself.
	self
		XmlImportXml: data
		importMap: (answer basicAt: 1)
		overwrite: overwrite asVariant
		destination: destination asVariant
		rhs: (answer basicAt: 2).
	^answer collect: [:each | each asObject]
!

xmlMaps
	"Answer the <ExcelXmlMaps> value of the 'XmlMaps' property of the receiver."

	| answer |
	answer := ExcelXmlMaps newPointer.
	self get_XmlMaps: answer.
	^answer asObject
!

xmlNamespaces
	"Answer the <ExcelXmlNamespaces> value of the 'XmlNamespaces' property of the receiver."

	| answer |
	answer := ExcelXmlNamespaces newPointer.
	self get_XmlNamespaces: answer.
	^answer asObject
! !
!Excel_Workbook categoriesFor: #__printOut:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #_codeName!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #_codeName:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #_printOut:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #_protect!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #_protect:structure:windows:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #_Protect:structure:windows:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #_protectSharing!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #_protectSharing:password:writeResPassword:readOnlyRecommended:createBackup:sharingPassword:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #_ProtectSharing:password:writeResPassword:readOnlyRecommended:createBackup:sharingPassword:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #_readOnlyRecommended:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #_saveAs:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #_saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:accessMode:conflictResolution:addToMru:textCodepage:textVisualLayout:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #_SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:accessMode:conflictResolution:addToMru:textCodepage:textVisualLayout:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #acceptAllChanges!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #acceptAllChanges:who:where:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #AcceptAllChanges:who:where:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #acceptLabelsInFormulas!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #acceptLabelsInFormulas:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #activate:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Activate:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #activeChart!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #activeSheet!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #addToFavorites!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #AddToFavorites!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #application!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #applyTheme:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ApplyTheme:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #author:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #author:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #autoUpdateFrequency!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #autoUpdateFrequency:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #autoUpdateSaveChanges!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #autoUpdateSaveChanges:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #breakLink:type:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #BreakLink:type:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #builtinDocumentProperties!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #calculationVersion!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #canCheckIn!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #CanCheckIn:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #changeFileAccess:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #changeFileAccess:writePassword:notify:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ChangeFileAccess:writePassword:notify:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #changeHistoryDuration!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #changeHistoryDuration:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #changeLink:newName:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #changeLink:newName:type:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ChangeLink:newName:type:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #charts!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #checkCompatibility!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #checkCompatibility:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #checkIn!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #checkIn:comments:makePublic:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #CheckIn:comments:makePublic:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #checkInWithVersion!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #checkInWithVersion:comments:makePublic:versionType:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #CheckInWithVersion:comments:makePublic:versionType:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #close:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #close:filename:routeWorkbook:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Close:filename:routeWorkbook:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #codeName!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #colors:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #colors:lcid:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #colors:lcid:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #commandBars!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #comments:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #comments:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #conflictResolution!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #conflictResolution:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #connections!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #connectionsDisabled!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #container!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #contentTypeProperties!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #createBackup:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #customDocumentProperties!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #customViews!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #customXMLParts!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #date1904:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #date1904:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #defaultPivotTableStyle!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #defaultPivotTableStyle:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #defaultTableStyle!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #defaultTableStyle:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #deleteNumberFormat:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #DeleteNumberFormat:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #dialogSheets!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #displayDrawingObjects:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #displayDrawingObjects:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #displayInkComments!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #displayInkComments:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #documentInspectors!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #documentLibraryVersions!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #doNotPromptForConvert!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #doNotPromptForConvert:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #dummy16!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Dummy16!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #dummy17:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Dummy17:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #enableAutoRecover!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #enableAutoRecover:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #enableConnections!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #EnableConnections!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #encryptionProvider!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #encryptionProvider:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #endReview!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #EndReview!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #envelopeVisible!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #envelopeVisible:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #excel4IntlMacroSheets!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #excel4MacroSheets!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #excel8CompatibilityMode!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #exclusiveAccess:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ExclusiveAccess:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #exportAsFixedFormat:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #exportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ExportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #fileFormat:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #final!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #final:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #followHyperlink:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #followHyperlink:subAddress:newWindow:addHistory:extraInfo:method:headerInfo:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #FollowHyperlink:subAddress:newWindow:addHistory:extraInfo:method:headerInfo:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #forceFullCalculation!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #forceFullCalculation:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #forwardMailer:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ForwardMailer:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #fullName:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #fullNameURLEncoded:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #get__CodeName:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get__ReadOnlyRecommended:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_AcceptLabelsInFormulas:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ActiveChart:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ActiveSheet:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Application:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Author:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_AutoUpdateFrequency:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_AutoUpdateSaveChanges:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_BuiltinDocumentProperties:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_CalculationVersion:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ChangeHistoryDuration:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Charts:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_CheckCompatibility:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_CodeName:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Colors:lcid:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_CommandBars:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Comments:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ConflictResolution:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Connections:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ConnectionsDisabled:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Container:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ContentTypeProperties:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_CreateBackup:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_CustomDocumentProperties:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_CustomViews:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_CustomXMLParts:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Date1904:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_DefaultPivotTableStyle:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_DefaultTableStyle:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_DialogSheets:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_DisplayDrawingObjects:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_DisplayInkComments:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_DocumentInspectors:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_DocumentLibraryVersions:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_DoNotPromptForConvert:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_EnableAutoRecover:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_EncryptionProvider:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_EnvelopeVisible:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Excel4IntlMacroSheets:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Excel4MacroSheets:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Excel8CompatibilityMode:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_FileFormat:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Final:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ForceFullCalculation:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_FullName:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_FullNameURLEncoded:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_HasMailer:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_HasPassword:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_HasRoutingSlip:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_HasVBProject:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_HighlightChangesOnScreen:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_HTMLProject:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_IconSets:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_InactiveListBorderVisible:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_IsAddin:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_IsInplace:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_KeepChangeHistory:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Keywords:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ListChangesOnNewSheet:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Mailer:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Modules:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_MultiUserEditing:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Name:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Names:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_OnSave:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Password:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_PasswordEncryptionAlgorithm:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_PasswordEncryptionFileProperties:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_PasswordEncryptionKeyLength:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_PasswordEncryptionProvider:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Path:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Permission:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_PersonalViewListSettings:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_PersonalViewPrintSettings:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_PrecisionAsDisplayed:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ProtectStructure:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ProtectWindows:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_PublishObjects:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ReadOnly:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ReadOnlyRecommended:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_RemovePersonalInformation:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Research:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_RevisionNumber:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Routed:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_RoutingSlip:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Saved:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_SaveLinkValues:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ServerPolicy:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ServerViewableItems:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_SharedWorkspace:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Sheets:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ShowConflictHistory:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ShowPivotChartActiveFields:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_ShowPivotTableFieldList:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Signatures:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_SmartDocument:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_SmartTagOptions:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Styles:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Subject:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Sync:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_TableStyles:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_TemplateRemoveExtData:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Theme:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Title:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_UpdateLinks:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_UpdateRemoteReferences:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_UserControl:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_UserStatus:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_VBASigned:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_VBProject:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_WebOptions:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Windows:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_Worksheets:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_WritePassword:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_WriteReserved:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_WriteReservedBy:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_XmlMaps:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #get_XmlNamespaces:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #getWorkflowTasks!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #GetWorkflowTasks:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #getWorkflowTemplates!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #GetWorkflowTemplates:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #hasMailer:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #hasMailer:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #hasPassword:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #hasRoutingSlip:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #hasRoutingSlip:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #hasVBProject!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #highlightChangesOnScreen!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #highlightChangesOnScreen:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #highlightChangesOptions!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #highlightChangesOptions:who:where:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #HighlightChangesOptions:who:where:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #htmlProject!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #iconSets!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #inactiveListBorderVisible!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #inactiveListBorderVisible:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #isAddin!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #isAddin:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #isInplace!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #keepChangeHistory!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #keepChangeHistory:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #keywords:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #keywords:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #linkInfo:linkInfo:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #linkInfo:linkInfo:type:editionRef:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #LinkInfo:linkInfo:type:editionRef:lcid:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #linkSources:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #linkSources:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #LinkSources:lcid:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #listChangesOnNewSheet!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #listChangesOnNewSheet:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #lockServerFile!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #LockServerFile!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #mailer!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #mergeWorkbook:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #MergeWorkbook:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #modules!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #multiUserEditing:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #name!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #names!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #newWindow:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #NewWindow:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #onSave:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #onSave:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #onSheetActivate:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #onSheetActivate:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #onSheetDeactivate:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #onSheetDeactivate:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #openLinks:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #openLinks:readOnly:type:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #OpenLinks:readOnly:type:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #password!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #password:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #passwordEncryptionAlgorithm!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #passwordEncryptionFileProperties!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #passwordEncryptionKeyLength!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #passwordEncryptionProvider!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #path:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #permission!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #personalViewListSettings!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #personalViewListSettings:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #personalViewPrintSettings!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #personalViewPrintSettings:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #pivotCaches!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #PivotCaches:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #pivotTableWizard:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #pivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #PivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #post:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #post:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Post:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #precisionAsDisplayed:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #precisionAsDisplayed:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #printOut:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #printPreview:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #printPreview:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #PrintPreview:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #protect!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #protect:structure:windows:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Protect:structure:windows:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #protectSharing!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #protectSharing:password:writeResPassword:readOnlyRecommended:createBackup:sharingPassword:fileFormat:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ProtectSharing:password:writeResPassword:readOnlyRecommended:createBackup:sharingPassword:fileFormat:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #protectStructure!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #protectWindows!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #publishObjects!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #purgeChangeHistoryNow:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #purgeChangeHistoryNow:sharingPassword:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #PurgeChangeHistoryNow:sharingPassword:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put__CodeName:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_AcceptLabelsInFormulas:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Author:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_AutoUpdateFrequency:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_AutoUpdateSaveChanges:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_ChangeHistoryDuration:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_CheckCompatibility:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Colors:lcid:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Comments:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_ConflictResolution:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Date1904:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_DefaultPivotTableStyle:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_DefaultTableStyle:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_DisplayDrawingObjects:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_DisplayInkComments:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_DoNotPromptForConvert:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_EnableAutoRecover:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_EncryptionProvider:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_EnvelopeVisible:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Final:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_ForceFullCalculation:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_HasMailer:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_HasRoutingSlip:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_HighlightChangesOnScreen:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_InactiveListBorderVisible:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_IsAddin:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_KeepChangeHistory:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Keywords:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_ListChangesOnNewSheet:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_OnSave:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Password:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_PersonalViewListSettings:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_PersonalViewPrintSettings:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_PrecisionAsDisplayed:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_ReadOnlyRecommended:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_RemovePersonalInformation:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Saved:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_SaveLinkValues:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_ShowConflictHistory:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_ShowPivotChartActiveFields:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_ShowPivotTableFieldList:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Subject:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_TemplateRemoveExtData:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_Title:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_UpdateLinks:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_UpdateRemoteReferences:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_UserControl:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #put_WritePassword:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #readOnly:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #readOnlyRecommended!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #readOnlyRecommended:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #recheckSmartTags!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #RecheckSmartTags!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #refreshAll!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #RefreshAll!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #rejectAllChanges!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #rejectAllChanges:who:where:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #RejectAllChanges:who:where:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #reloadAs:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ReloadAs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #removeDocumentInformation:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #RemoveDocumentInformation:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #removePersonalInformation!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #removePersonalInformation:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #removeUser:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #RemoveUser:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #reply:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Reply:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #replyAll:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ReplyAll:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #replyWithChanges!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #replyWithChanges:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ReplyWithChanges:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #research!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #resetColors!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ResetColors!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #revisionNumber:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #route:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Route:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #routed:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #routingSlip!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #runAutoMacros:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #RunAutoMacros:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #save:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Save:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #saveAs:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:accessMode:conflictResolution:addToMru:textCodepage:textVisualLayout:local:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:accessMode:conflictResolution:addToMru:textCodepage:textVisualLayout:local:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #saveAsXMLData:map:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SaveAsXMLData:map:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #saveCopyAs:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #saveCopyAs:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SaveCopyAs:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #saved:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #saved:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #saveLinkValues:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #saveLinkValues:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #sblt:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Sblt:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #sendFaxOverInternet!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #sendFaxOverInternet:subject:showMessage:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SendFaxOverInternet:subject:showMessage:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #sendForReview!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #sendForReview:subject:showMessage:includeAttachment:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SendForReview:subject:showMessage:includeAttachment:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #sendMail:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #sendMail:subject:returnReceipt:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SendMail:subject:returnReceipt:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #sendMailer:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #sendMailer:priority:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SendMailer:priority:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #serverPolicy!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #serverViewableItems!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #setLinkOnData:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #setLinkOnData:procedure:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SetLinkOnData:procedure:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #setPasswordEncryptionOptions!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #setPasswordEncryptionOptions:passwordEncryptionAlgorithm:passwordEncryptionKeyLength:passwordEncryptionFileProperties:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #SetPasswordEncryptionOptions:passwordEncryptionAlgorithm:passwordEncryptionKeyLength:passwordEncryptionFileProperties:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #sharedWorkspace!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #sheets!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #showConflictHistory:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #showConflictHistory:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #showPivotChartActiveFields!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #showPivotChartActiveFields:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #showPivotTableFieldList!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #showPivotTableFieldList:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #signatures!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #smartDocument!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #smartTagOptions!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #styles!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #subject:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #subject:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #sync!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #tableStyles!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #templateRemoveExtData!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #templateRemoveExtData:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #theme!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #title:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #title:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #toggleFormsDesign!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #ToggleFormsDesign!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #unprotect:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #unprotect:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #Unprotect:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #unprotectSharing!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #unprotectSharing:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #UnprotectSharing:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #updateFromFile:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #UpdateFromFile:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #updateLink:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #updateLink:type:lcid:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #UpdateLink:type:lcid:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #updateLinks!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #updateLinks:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #updateRemoteReferences:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #updateRemoteReferences:rhs:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #userControl!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #userControl:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #userStatus:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #vbaSigned!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #vbProject!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #webOptions!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #webPagePreview!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #WebPagePreview!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #windows!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #worksheets!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #writePassword!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #writePassword:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #writeReserved:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #writeReservedBy:!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #xmlImport:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #XmlImport:importMap:overwrite:destination:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #xmlImport:overwrite:destination:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #xmlImportXml:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #XmlImportXml:importMap:overwrite:destination:rhs:!**auto generated**!COM Interfaces-_Workbook!private! !
!Excel_Workbook categoriesFor: #xmlImportXml:overwrite:destination:!**auto generated**!methods!public! !
!Excel_Workbook categoriesFor: #xmlMaps!**auto generated**!properties!public! !
!Excel_Workbook categoriesFor: #xmlNamespaces!**auto generated**!properties!public! !

!Excel_Workbook class methodsFor!

clsid
	"Private - Answer the CLSID of the coclass (Workbook) for which the receiver is the default interface."

	^CLSID fromString: '{00020819-0000-0000-C000-000000000046}'
!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel._Workbook'
		Excel_Workbook defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_AcceptLabelsInFormulas:
			argumentTypes: 'varbool*';
		defineFunction: #put_AcceptLabelsInFormulas:
			argumentTypes: 'varbool';
		defineFunction: #Activate:
			argumentTypes: 'sdword';
		defineFunction: #get_ActiveChart:
			argumentTypes: 'Excel_Chart**';
		defineFunction: #get_ActiveSheet:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Author:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_Author:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_AutoUpdateFrequency:
			argumentTypes: 'sdword*';
		defineFunction: #put_AutoUpdateFrequency:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoUpdateSaveChanges:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoUpdateSaveChanges:
			argumentTypes: 'varbool';
		defineFunction: #get_ChangeHistoryDuration:
			argumentTypes: 'sdword*';
		defineFunction: #put_ChangeHistoryDuration:
			argumentTypes: 'sdword';
		defineFunction: #get_BuiltinDocumentProperties:
			argumentTypes: 'IDispatch**';
		defineFunction: #ChangeFileAccess:writePassword:notify:lcid:
			argumentTypes: 'sdword variant variant sdword';
		defineFunction: #ChangeLink:newName:type:lcid:
			argumentTypes: 'bstr bstr sdword sdword';
		defineFunction: #get_Charts:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #Close:filename:routeWorkbook:lcid:
			argumentTypes: 'variant variant variant sdword';
		defineFunction: #get_CodeName:
			argumentTypes: 'bstr*';
		defineFunction: #get__CodeName:
			argumentTypes: 'bstr*';
		defineFunction: #put__CodeName:
			argumentTypes: 'bstr';
		defineFunction: #get_Colors:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #put_Colors:lcid:rhs:
			argumentTypes: 'variant sdword variant';
		defineFunction: #get_CommandBars:
			argumentTypes: 'Office_CommandBars**';
		defineFunction: #get_Comments:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_Comments:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_ConflictResolution:
			argumentTypes: 'sdword*';
		defineFunction: #put_ConflictResolution:
			argumentTypes: 'sdword';
		defineFunction: #get_Container:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_CreateBackup:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_CustomDocumentProperties:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Date1904:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_Date1904:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #DeleteNumberFormat:lcid:
			argumentTypes: 'bstr sdword';
		defineFunction: #get_DialogSheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_DisplayDrawingObjects:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #put_DisplayDrawingObjects:rhs:
			argumentTypes: 'sdword sdword';
		defineFunction: #ExclusiveAccess:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_FileFormat:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #ForwardMailer:
			argumentTypes: 'sdword';
		defineFunction: #get_FullName:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_HasMailer:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_HasMailer:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_HasPassword:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_HasRoutingSlip:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_HasRoutingSlip:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_IsAddin:
			argumentTypes: 'varbool*';
		defineFunction: #put_IsAddin:
			argumentTypes: 'varbool';
		defineFunction: #get_Keywords:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_Keywords:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #LinkInfo:linkInfo:type:editionRef:lcid:rhs:
			argumentTypes: 'bstr sdword variant variant sdword variant*';
		defineFunction: #LinkSources:lcid:rhs:
			argumentTypes: 'variant sdword variant*';
		defineFunction: #get_Mailer:
			argumentTypes: 'ExcelMailer**';
		defineFunction: #MergeWorkbook:
			argumentTypes: 'variant';
		defineFunction: #get_Modules:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_MultiUserEditing:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Names:
			argumentTypes: 'ExcelNames**';
		defineFunction: #NewWindow:rhs:
			argumentTypes: 'sdword ExcelWindow**';
		defineFunction: #get_OnSave:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnSave:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnSheetActivate:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnSheetActivate:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_OnSheetDeactivate:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_OnSheetDeactivate:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #OpenLinks:readOnly:type:lcid:
			argumentTypes: 'bstr variant variant sdword';
		defineFunction: #get_Path:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_PersonalViewListSettings:
			argumentTypes: 'varbool*';
		defineFunction: #put_PersonalViewListSettings:
			argumentTypes: 'varbool';
		defineFunction: #get_PersonalViewPrintSettings:
			argumentTypes: 'varbool*';
		defineFunction: #put_PersonalViewPrintSettings:
			argumentTypes: 'varbool';
		defineFunction: #PivotCaches:
			argumentTypes: 'ExcelPivotCaches**';
		defineFunction: #Post:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #get_PrecisionAsDisplayed:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_PrecisionAsDisplayed:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant sdword';
		defineFunction: #PrintPreview:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #_Protect:structure:windows:
			argumentTypes: 'variant variant variant';
		defineFunction: #_ProtectSharing:password:writeResPassword:readOnlyRecommended:createBackup:sharingPassword:
			argumentTypes: 'variant variant variant variant variant variant';
		defineFunction: #get_ProtectStructure:
			argumentTypes: 'varbool*';
		defineFunction: #get_ProtectWindows:
			argumentTypes: 'varbool*';
		defineFunction: #get_ReadOnly:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get__ReadOnlyRecommended:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #RefreshAll;
		defineFunction: #Reply:
			argumentTypes: 'sdword';
		defineFunction: #ReplyAll:
			argumentTypes: 'sdword';
		defineFunction: #RemoveUser:
			argumentTypes: 'sdword';
		defineFunction: #get_RevisionNumber:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #Route:
			argumentTypes: 'sdword';
		defineFunction: #get_Routed:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_RoutingSlip:
			argumentTypes: 'ExcelRoutingSlip**';
		defineFunction: #RunAutoMacros:lcid:
			argumentTypes: 'sdword sdword';
		defineFunction: #Save:
			argumentTypes: 'sdword';
		defineFunction: #_SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:accessMode:conflictResolution:addToMru:textCodepage:textVisualLayout:lcid:
			argumentTypes: 'variant variant variant variant variant variant sdword variant variant variant variant sdword';
		defineFunction: #SaveCopyAs:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #get_Saved:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_Saved:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_SaveLinkValues:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_SaveLinkValues:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #SendMail:subject:returnReceipt:lcid:
			argumentTypes: 'variant variant variant sdword';
		defineFunction: #SendMailer:priority:lcid:
			argumentTypes: 'variant sdword sdword';
		defineFunction: #SetLinkOnData:procedure:lcid:
			argumentTypes: 'bstr variant sdword';
		defineFunction: #get_Sheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_ShowConflictHistory:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_ShowConflictHistory:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_Styles:
			argumentTypes: 'ExcelStyles**';
		defineFunction: #get_Subject:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_Subject:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #get_Title:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #put_Title:rhs:
			argumentTypes: 'sdword bstr';
		defineFunction: #Unprotect:lcid:
			argumentTypes: 'variant sdword';
		defineFunction: #UnprotectSharing:
			argumentTypes: 'variant';
		defineFunction: #UpdateFromFile:
			argumentTypes: 'sdword';
		defineFunction: #UpdateLink:type:lcid:
			argumentTypes: 'variant variant sdword';
		defineFunction: #get_UpdateRemoteReferences:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #put_UpdateRemoteReferences:rhs:
			argumentTypes: 'sdword varbool';
		defineFunction: #get_UserControl:
			argumentTypes: 'varbool*';
		defineFunction: #put_UserControl:
			argumentTypes: 'varbool';
		defineFunction: #get_UserStatus:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #get_CustomViews:
			argumentTypes: 'ExcelCustomViews**';
		defineFunction: #get_Windows:
			argumentTypes: 'ExcelWindows**';
		defineFunction: #get_Worksheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_WriteReserved:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #get_WriteReservedBy:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_Excel4IntlMacroSheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_Excel4MacroSheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_TemplateRemoveExtData:
			argumentTypes: 'varbool*';
		defineFunction: #put_TemplateRemoveExtData:
			argumentTypes: 'varbool';
		defineFunction: #HighlightChangesOptions:who:where:
			argumentTypes: 'variant variant variant';
		defineFunction: #get_HighlightChangesOnScreen:
			argumentTypes: 'varbool*';
		defineFunction: #put_HighlightChangesOnScreen:
			argumentTypes: 'varbool';
		defineFunction: #get_KeepChangeHistory:
			argumentTypes: 'varbool*';
		defineFunction: #put_KeepChangeHistory:
			argumentTypes: 'varbool';
		defineFunction: #get_ListChangesOnNewSheet:
			argumentTypes: 'varbool*';
		defineFunction: #put_ListChangesOnNewSheet:
			argumentTypes: 'varbool';
		defineFunction: #PurgeChangeHistoryNow:sharingPassword:
			argumentTypes: 'sdword variant';
		defineFunction: #AcceptAllChanges:who:where:
			argumentTypes: 'variant variant variant';
		defineFunction: #RejectAllChanges:who:where:
			argumentTypes: 'variant variant variant';
		defineFunction: #PivotTableWizard:sourceData:tableDestination:tableName:rowGrand:columnGrand:saveData:hasAutoFormat:autoPage:reserved:backgroundQuery:optimizeCache:pageFieldOrder:pageFieldWrapCount:readData:connection:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #ResetColors;
		defineFunction: #get_VBProject:
			argumentTypes: 'VBIDE_VBProject**';
		defineFunction: #FollowHyperlink:subAddress:newWindow:addHistory:extraInfo:method:headerInfo:
			argumentTypes: 'bstr variant variant variant variant variant variant';
		defineFunction: #AddToFavorites;
		defineFunction: #get_IsInplace:
			argumentTypes: 'varbool*';
		defineFunction: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant sdword';
		defineFunction: #WebPagePreview;
		defineFunction: #get_PublishObjects:
			argumentTypes: 'ExcelPublishObjects**';
		defineFunction: #get_WebOptions:
			argumentTypes: 'ExcelWebOptions**';
		defineFunction: #ReloadAs:
			argumentTypes: 'sdword';
		defineFunction: #get_HTMLProject:
			argumentTypes: 'OfficeHTMLProject**';
		defineFunction: #get_EnvelopeVisible:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnvelopeVisible:
			argumentTypes: 'varbool';
		defineFunction: #get_CalculationVersion:
			argumentTypes: 'sdword*';
		defineFunction: #Dummy17:
			argumentTypes: 'sdword';
		defineFunction: #Sblt:
			argumentTypes: 'bstr';
		defineFunction: #get_VBASigned:
			argumentTypes: 'varbool*';
		defineFunction: #get_ShowPivotTableFieldList:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowPivotTableFieldList:
			argumentTypes: 'varbool';
		defineFunction: #get_UpdateLinks:
			argumentTypes: 'sdword*';
		defineFunction: #put_UpdateLinks:
			argumentTypes: 'sdword';
		defineFunction: #BreakLink:type:
			argumentTypes: 'bstr sdword';
		defineFunction: #Dummy16;
		defineFunction: #SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:accessMode:conflictResolution:addToMru:textCodepage:textVisualLayout:local:lcid:
			argumentTypes: 'variant variant variant variant variant variant sdword variant variant variant variant variant sdword';
		defineFunction: #get_EnableAutoRecover:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableAutoRecover:
			argumentTypes: 'varbool';
		defineFunction: #get_RemovePersonalInformation:
			argumentTypes: 'varbool*';
		defineFunction: #put_RemovePersonalInformation:
			argumentTypes: 'varbool';
		defineFunction: #get_FullNameURLEncoded:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #CheckIn:comments:makePublic:
			argumentTypes: 'variant variant variant';
		defineFunction: #CanCheckIn:
			argumentTypes: 'varbool*';
		defineFunction: #SendForReview:subject:showMessage:includeAttachment:
			argumentTypes: 'variant variant variant variant';
		defineFunction: #ReplyWithChanges:
			argumentTypes: 'variant';
		defineFunction: #EndReview;
		defineFunction: #get_Password:
			argumentTypes: 'bstr*';
		defineFunction: #put_Password:
			argumentTypes: 'bstr';
		defineFunction: #get_WritePassword:
			argumentTypes: 'bstr*';
		defineFunction: #put_WritePassword:
			argumentTypes: 'bstr';
		defineFunction: #get_PasswordEncryptionProvider:
			argumentTypes: 'bstr*';
		defineFunction: #get_PasswordEncryptionAlgorithm:
			argumentTypes: 'bstr*';
		defineFunction: #get_PasswordEncryptionKeyLength:
			argumentTypes: 'sdword*';
		defineFunction: #SetPasswordEncryptionOptions:passwordEncryptionAlgorithm:passwordEncryptionKeyLength:passwordEncryptionFileProperties:
			argumentTypes: 'variant variant variant variant';
		defineFunction: #get_PasswordEncryptionFileProperties:
			argumentTypes: 'varbool*';
		defineFunction: #get_ReadOnlyRecommended:
			argumentTypes: 'varbool*';
		defineFunction: #put_ReadOnlyRecommended:
			argumentTypes: 'varbool';
		defineFunction: #Protect:structure:windows:
			argumentTypes: 'variant variant variant';
		defineFunction: #get_SmartTagOptions:
			argumentTypes: 'ExcelSmartTagOptions**';
		defineFunction: #RecheckSmartTags;
		defineFunction: #get_Permission:
			argumentTypes: 'OfficePermission**';
		defineFunction: #get_SharedWorkspace:
			argumentTypes: 'OfficeSharedWorkspace**';
		defineFunction: #get_Sync:
			argumentTypes: 'OfficeSync**';
		defineFunction: #SendFaxOverInternet:subject:showMessage:
			argumentTypes: 'variant variant variant';
		defineFunction: #get_XmlNamespaces:
			argumentTypes: 'ExcelXmlNamespaces**';
		defineFunction: #get_XmlMaps:
			argumentTypes: 'ExcelXmlMaps**';
		defineFunction: #XmlImport:importMap:overwrite:destination:rhs:
			argumentTypes: 'bstr ExcelXmlMap** variant variant sdword*';
		defineFunction: #get_SmartDocument:
			argumentTypes: 'OfficeSmartDocument**';
		defineFunction: #get_DocumentLibraryVersions:
			argumentTypes: 'OfficeDocumentLibraryVersions**';
		defineFunction: #get_InactiveListBorderVisible:
			argumentTypes: 'varbool*';
		defineFunction: #put_InactiveListBorderVisible:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayInkComments:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayInkComments:
			argumentTypes: 'varbool';
		defineFunction: #XmlImportXml:importMap:overwrite:destination:rhs:
			argumentTypes: 'bstr ExcelXmlMap** variant variant sdword*';
		defineFunction: #SaveAsXMLData:map:
			argumentTypes: 'bstr ExcelXmlMap*';
		defineFunction: #ToggleFormsDesign;
		defineFunction: #get_ContentTypeProperties:
			argumentTypes: 'OfficeMetaProperties**';
		defineFunction: #get_Connections:
			argumentTypes: 'ExcelConnections**';
		defineFunction: #RemoveDocumentInformation:
			argumentTypes: 'sdword';
		defineFunction: #get_Signatures:
			argumentTypes: 'OfficeSignatureSet**';
		defineFunction: #CheckInWithVersion:comments:makePublic:versionType:
			argumentTypes: 'variant variant variant variant';
		defineFunction: #get_ServerPolicy:
			argumentTypes: 'OfficeServerPolicy**';
		defineFunction: #LockServerFile;
		defineFunction: #get_DocumentInspectors:
			argumentTypes: 'OfficeDocumentInspectors**';
		defineFunction: #GetWorkflowTasks:
			argumentTypes: 'OfficeWorkflowTasks**';
		defineFunction: #GetWorkflowTemplates:
			argumentTypes: 'OfficeWorkflowTemplates**';
		defineFunction: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:ignorePrintAreas:lcid:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant sdword';
		defineFunction: #get_ServerViewableItems:
			argumentTypes: 'ExcelServerViewableItems**';
		defineFunction: #get_TableStyles:
			argumentTypes: 'ExcelTableStyles**';
		defineFunction: #get_DefaultTableStyle:
			argumentTypes: 'variant*';
		defineFunction: #put_DefaultTableStyle:
			argumentTypes: 'variant';
		defineFunction: #get_DefaultPivotTableStyle:
			argumentTypes: 'variant*';
		defineFunction: #put_DefaultPivotTableStyle:
			argumentTypes: 'variant';
		defineFunction: #get_CheckCompatibility:
			argumentTypes: 'varbool*';
		defineFunction: #put_CheckCompatibility:
			argumentTypes: 'varbool';
		defineFunction: #get_HasVBProject:
			argumentTypes: 'varbool*';
		defineFunction: #get_CustomXMLParts:
			argumentTypes: 'Office_CustomXMLParts**';
		defineFunction: #get_Final:
			argumentTypes: 'varbool*';
		defineFunction: #put_Final:
			argumentTypes: 'varbool';
		defineFunction: #get_Research:
			argumentTypes: 'ExcelResearch**';
		defineFunction: #get_Theme:
			argumentTypes: 'OfficeOfficeTheme**';
		defineFunction: #ApplyTheme:
			argumentTypes: 'bstr';
		defineFunction: #get_Excel8CompatibilityMode:
			argumentTypes: 'varbool*';
		defineFunction: #get_ConnectionsDisabled:
			argumentTypes: 'varbool*';
		defineFunction: #EnableConnections;
		defineFunction: #get_ShowPivotChartActiveFields:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowPivotChartActiveFields:
			argumentTypes: 'varbool';
		defineFunction: #ExportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:
			argumentTypes: 'sdword variant variant variant variant variant variant variant variant';
		defineFunction: #get_IconSets:
			argumentTypes: 'ExcelIconSets**';
		defineFunction: #get_EncryptionProvider:
			argumentTypes: 'bstr*';
		defineFunction: #put_EncryptionProvider:
			argumentTypes: 'bstr';
		defineFunction: #get_DoNotPromptForConvert:
			argumentTypes: 'varbool*';
		defineFunction: #put_DoNotPromptForConvert:
			argumentTypes: 'varbool';
		defineFunction: #get_ForceFullCalculation:
			argumentTypes: 'varbool*';
		defineFunction: #put_ForceFullCalculation:
			argumentTypes: 'varbool';
		defineFunction: #ProtectSharing:password:writeResPassword:readOnlyRecommended:createBackup:sharingPassword:fileFormat:
			argumentTypes: 'variant variant variant variant variant variant variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_Workbook initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_Workbook class categoriesFor: #clsid!**auto generated**!constants!private! !
!Excel_Workbook class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!Excel_Workbook class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

