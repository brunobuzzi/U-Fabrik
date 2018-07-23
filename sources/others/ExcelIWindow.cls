"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIWindow guid: (IID fromString: '{00020893-0001-0000-C000-000000000046}')!
ExcelIWindow comment: '<ExcelIWindow> is a wrapper class for the COM interface ''Excel.IWindow'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020893-0001-0000-C000-000000000046), 
	helpcontext(0x00020053), 
	hidden
]
interface IWindow : IDispatch
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
	[id(0x0000045b), helpcontext(0x0001045b)]
	HRESULT __stdcall ActivateNext(
		[out, retval]VARIANT* RHS);
	[id(0x0000045c), helpcontext(0x0001045c)]
	HRESULT __stdcall ActivatePrevious(
		[out, retval]VARIANT* RHS);
	[id(0x00000131), propget, helpcontext(0x00010131)]
	HRESULT __stdcall ActiveCell(
		[out, retval]Range** RHS);
	[id(0x000000b7), propget, helpcontext(0x000100b7)]
	HRESULT __stdcall ActiveChart(
		[out, retval]Chart** RHS);
	[id(0x00000282), propget, helpcontext(0x00010282)]
	HRESULT __stdcall ActivePane(
		[out, retval]Pane** RHS);
	[id(0x00000133), propget, helpcontext(0x00010133)]
	HRESULT __stdcall ActiveSheet(
		[out, retval]IDispatch** RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]VARIANT* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]VARIANT RHS);
	[id(0x00000115), helpcontext(0x00010115)]
	HRESULT __stdcall Close(
		[in, optional]VARIANT SaveChanges,
		[in, optional]VARIANT Filename,
		[in, optional]VARIANT RouteWorkbook,
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000284), propget, helpcontext(0x00010284)]
	HRESULT __stdcall DisplayFormulas(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000284), propput, helpcontext(0x00010284)]
	HRESULT __stdcall DisplayFormulas(
		[in]VARIANT_BOOL RHS);
	[id(0x00000285), propget, helpcontext(0x00010285)]
	HRESULT __stdcall DisplayGridlines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000285), propput, helpcontext(0x00010285)]
	HRESULT __stdcall DisplayGridlines(
		[in]VARIANT_BOOL RHS);
	[id(0x00000286), propget, helpcontext(0x00010286)]
	HRESULT __stdcall DisplayHeadings(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000286), propput, helpcontext(0x00010286)]
	HRESULT __stdcall DisplayHeadings(
		[in]VARIANT_BOOL RHS);
	[id(0x00000399), propget, helpcontext(0x00010399)]
	HRESULT __stdcall DisplayHorizontalScrollBar(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000399), propput, helpcontext(0x00010399)]
	HRESULT __stdcall DisplayHorizontalScrollBar(
		[in]VARIANT_BOOL RHS);
	[id(0x00000287), propget, helpcontext(0x00010287)]
	HRESULT __stdcall DisplayOutline(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000287), propput, helpcontext(0x00010287)]
	HRESULT __stdcall DisplayOutline(
		[in]VARIANT_BOOL RHS);
	[id(0x00000288), hidden, propget, helpcontext(0x00010288)]
	HRESULT __stdcall _DisplayRightToLeft(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000288), hidden, propput, helpcontext(0x00010288)]
	HRESULT __stdcall _DisplayRightToLeft(
		[in]VARIANT_BOOL RHS);
	[id(0x0000039a), propget, helpcontext(0x0001039a)]
	HRESULT __stdcall DisplayVerticalScrollBar(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000039a), propput, helpcontext(0x0001039a)]
	HRESULT __stdcall DisplayVerticalScrollBar(
		[in]VARIANT_BOOL RHS);
	[id(0x0000039b), propget, helpcontext(0x0001039b)]
	HRESULT __stdcall DisplayWorkbookTabs(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000039b), propput, helpcontext(0x0001039b)]
	HRESULT __stdcall DisplayWorkbookTabs(
		[in]VARIANT_BOOL RHS);
	[id(0x00000289), propget, helpcontext(0x00010289)]
	HRESULT __stdcall DisplayZeros(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000289), propput, helpcontext(0x00010289)]
	HRESULT __stdcall DisplayZeros(
		[in]VARIANT_BOOL RHS);
	[id(0x000004a8), propget, helpcontext(0x000104a8)]
	HRESULT __stdcall EnableResize(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000004a8), propput, helpcontext(0x000104a8)]
	HRESULT __stdcall EnableResize(
		[in]VARIANT_BOOL RHS);
	[id(0x0000028a), propget, helpcontext(0x0001028a)]
	HRESULT __stdcall FreezePanes(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000028a), propput, helpcontext(0x0001028a)]
	HRESULT __stdcall FreezePanes(
		[in]VARIANT_BOOL RHS);
	[id(0x0000028b), propget, helpcontext(0x0001028b)]
	HRESULT __stdcall GridlineColor(
		[out, retval]long* RHS);
	[id(0x0000028b), propput, helpcontext(0x0001028b)]
	HRESULT __stdcall GridlineColor(
		[in]long RHS);
	[id(0x0000028c), propget, helpcontext(0x0001028c)]
	HRESULT __stdcall GridlineColorIndex(
		[out, retval]XlColorIndex* RHS);
	[id(0x0000028c), propput, helpcontext(0x0001028c)]
	HRESULT __stdcall GridlineColorIndex(
		[in]XlColorIndex RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]double* RHS);
	[id(0x0000007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]double RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x00000223), helpcontext(0x00010223)]
	HRESULT __stdcall LargeScroll(
		[in, optional]VARIANT Down,
		[in, optional]VARIANT Up,
		[in, optional]VARIANT ToRight,
		[in, optional]VARIANT ToLeft,
		[out, retval]VARIANT* RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]double* RHS);
	[id(0x0000007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]double RHS);
	[id(0x00000118), helpcontext(0x00010118)]
	HRESULT __stdcall NewWindow(
		[out, retval]Window** RHS);
	[id(0x0000026f), propget, helpcontext(0x0001026f)]
	HRESULT __stdcall OnWindow(
		[out, retval]BSTR* RHS);
	[id(0x0000026f), propput, helpcontext(0x0001026f)]
	HRESULT __stdcall OnWindow(
		[in]BSTR RHS);
	[id(0x0000028d), propget, helpcontext(0x0001028d)]
	HRESULT __stdcall Panes(
		[out, retval]Panes** RHS);
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
	[id(0x00000119), helpcontext(0x00010119)]
	HRESULT __stdcall PrintPreview(
		[in, optional]VARIANT EnableChanges,
		[out, retval]VARIANT* RHS);
	[id(0x000004a5), propget, helpcontext(0x000104a5)]
	HRESULT __stdcall RangeSelection(
		[out, retval]Range** RHS);
	[id(0x0000028e), propget, helpcontext(0x0001028e)]
	HRESULT __stdcall ScrollColumn(
		[out, retval]long* RHS);
	[id(0x0000028e), propput, helpcontext(0x0001028e)]
	HRESULT __stdcall ScrollColumn(
		[in]long RHS);
	[id(0x0000028f), propget, helpcontext(0x0001028f)]
	HRESULT __stdcall ScrollRow(
		[out, retval]long* RHS);
	[id(0x0000028f), propput, helpcontext(0x0001028f)]
	HRESULT __stdcall ScrollRow(
		[in]long RHS);
	[id(0x00000296), helpcontext(0x00010296)]
	HRESULT __stdcall ScrollWorkbookTabs(
		[in, optional]VARIANT Sheets,
		[in, optional]VARIANT Position,
		[out, retval]VARIANT* RHS);
	[id(0x00000290), propget, helpcontext(0x00010290)]
	HRESULT __stdcall SelectedSheets(
		[out, retval]Sheets** RHS);
	[id(0x00000093), propget, helpcontext(0x00010093)]
	HRESULT __stdcall Selection(
		[out, retval]IDispatch** RHS);
	[id(0x00000224), helpcontext(0x00010224)]
	HRESULT __stdcall SmallScroll(
		[in, optional]VARIANT Down,
		[in, optional]VARIANT Up,
		[in, optional]VARIANT ToRight,
		[in, optional]VARIANT ToLeft,
		[out, retval]VARIANT* RHS);
	[id(0x00000291), propget, helpcontext(0x00010291)]
	HRESULT __stdcall Split(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000291), propput, helpcontext(0x00010291)]
	HRESULT __stdcall Split(
		[in]VARIANT_BOOL RHS);
	[id(0x00000292), propget, helpcontext(0x00010292)]
	HRESULT __stdcall SplitColumn(
		[out, retval]long* RHS);
	[id(0x00000292), propput, helpcontext(0x00010292)]
	HRESULT __stdcall SplitColumn(
		[in]long RHS);
	[id(0x00000293), propget, helpcontext(0x00010293)]
	HRESULT __stdcall SplitHorizontal(
		[out, retval]double* RHS);
	[id(0x00000293), propput, helpcontext(0x00010293)]
	HRESULT __stdcall SplitHorizontal(
		[in]double RHS);
	[id(0x00000294), propget, helpcontext(0x00010294)]
	HRESULT __stdcall SplitRow(
		[out, retval]long* RHS);
	[id(0x00000294), propput, helpcontext(0x00010294)]
	HRESULT __stdcall SplitRow(
		[in]long RHS);
	[id(0x00000295), propget, helpcontext(0x00010295)]
	HRESULT __stdcall SplitVertical(
		[out, retval]double* RHS);
	[id(0x00000295), propput, helpcontext(0x00010295)]
	HRESULT __stdcall SplitVertical(
		[in]double RHS);
	[id(0x000002a1), propget, helpcontext(0x000102a1)]
	HRESULT __stdcall TabRatio(
		[out, retval]double* RHS);
	[id(0x000002a1), propput, helpcontext(0x000102a1)]
	HRESULT __stdcall TabRatio(
		[in]double RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]double RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlWindowType* RHS);
	[id(0x00000185), propget, helpcontext(0x00010185)]
	HRESULT __stdcall UsableHeight(
		[out, retval]double* RHS);
	[id(0x00000186), propget, helpcontext(0x00010186)]
	HRESULT __stdcall UsableWidth(
		[out, retval]double* RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x0000045e), propget, helpcontext(0x0001045e)]
	HRESULT __stdcall VisibleRange(
		[out, retval]Range** RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]double* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]double RHS);
	[id(0x0000045f), propget, helpcontext(0x0001045f)]
	HRESULT __stdcall WindowNumber(
		[out, retval]long* RHS);
	[id(0x0000018c), propget, helpcontext(0x0001018c)]
	HRESULT __stdcall WindowState(
		[out, retval]XlWindowState* RHS);
	[id(0x0000018c), propput, helpcontext(0x0001018c)]
	HRESULT __stdcall WindowState(
		[in]XlWindowState RHS);
	[id(0x00000297), propget, helpcontext(0x00010297)]
	HRESULT __stdcall Zoom(
		[out, retval]VARIANT* RHS);
	[id(0x00000297), propput, helpcontext(0x00010297)]
	HRESULT __stdcall Zoom(
		[in]VARIANT RHS);
	[id(0x000004aa), propget, helpcontext(0x000104aa)]
	HRESULT __stdcall View(
		[out, retval]XlWindowView* RHS);
	[id(0x000004aa), propput, helpcontext(0x000104aa)]
	HRESULT __stdcall View(
		[in]XlWindowView RHS);
	[id(0x000006ee), propget, helpcontext(0x000106ee)]
	HRESULT __stdcall DisplayRightToLeft(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000006ee), propput, helpcontext(0x000106ee)]
	HRESULT __stdcall DisplayRightToLeft(
		[in]VARIANT_BOOL RHS);
	[id(0x000006f0), helpcontext(0x000106f0)]
	HRESULT __stdcall PointsToScreenPixelsX(
		[in]long Points,
		[out, retval]long* RHS);
	[id(0x000006f1), helpcontext(0x000106f1)]
	HRESULT __stdcall PointsToScreenPixelsY(
		[in]long Points,
		[out, retval]long* RHS);
	[id(0x000006f2), helpcontext(0x000106f2)]
	HRESULT __stdcall RangeFromPoint(
		[in]long x,
		[in]long y,
		[out, retval]IDispatch** RHS);
	[id(0x000006f5), helpcontext(0x000106f5)]
	HRESULT __stdcall ScrollIntoView(
		[in]long Left,
		[in]long Top,
		[in]long Width,
		[in]long Height,
		[in, optional]VARIANT Start);
	[id(0x00000940), propget, helpcontext(0x00010940)]
	HRESULT __stdcall SheetViews(
		[out, retval]SheetViews** RHS);
	[id(0x00000941), propget, helpcontext(0x00010941)]
	HRESULT __stdcall ActiveSheetView(
		[out, retval]IDispatch** RHS);
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
	[id(0x00000942), propget, helpcontext(0x00010942)]
	HRESULT __stdcall DisplayRuler(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000942), propput, helpcontext(0x00010942)]
	HRESULT __stdcall DisplayRuler(
		[in]VARIANT_BOOL RHS);
	[id(0x00000943), propget, helpcontext(0x00010943)]
	HRESULT __stdcall AutoFilterDateGrouping(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000943), propput, helpcontext(0x00010943)]
	HRESULT __stdcall AutoFilterDateGrouping(
		[in]VARIANT_BOOL RHS);
	[id(0x00000944), propget, helpcontext(0x00010944)]
	HRESULT __stdcall DisplayWhitespace(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000944), propput, helpcontext(0x00010944)]
	HRESULT __stdcall DisplayWhitespace(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIWindow categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIWindow methodsFor!

_displayRightToLeft
	"Answer the <varbool> value of the '_DisplayRightToLeft' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get__DisplayRightToLeft: answer.
	^answer asObject
!

_displayRightToLeft: rhs
	"Set the '_DisplayRightToLeft' property of the receiver to the <varbool> value of the argument."

	self put__DisplayRightToLeft: rhs
!

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

	<virtual stdcall: hresult 57 variant variant variant variant variant variant variant variant variant*>
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

activateNext
	"Answer the <VARIANT> result of invoking the ActivateNext() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ActivateNext: answer.
	^answer asObject
!

ActivateNext: rhs
	"Private - Invoke the ActivateNext() method of the COM object.

		HRESULT __stdcall ActivateNext(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

activatePrevious
	"Answer the <VARIANT> result of invoking the ActivatePrevious() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ActivatePrevious: answer.
	^answer asObject
!

ActivatePrevious: rhs
	"Private - Invoke the ActivatePrevious() method of the COM object.

		HRESULT __stdcall ActivatePrevious(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
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

activePane
	"Answer the <ExcelPane> value of the 'ActivePane' property of the receiver."

	| answer |
	answer := ExcelPane newPointer.
	self get_ActivePane: answer.
	^answer asObject
!

activeSheet
	"Answer the <IDispatch> value of the 'ActiveSheet' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_ActiveSheet: answer.
	^answer asObject
!

activeSheetView
	"Answer the <IDispatch> value of the 'ActiveSheetView' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_ActiveSheetView: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoFilterDateGrouping
	"Answer the <varbool> value of the 'AutoFilterDateGrouping' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoFilterDateGrouping: answer.
	^answer asObject
!

autoFilterDateGrouping: rhs
	"Set the 'AutoFilterDateGrouping' property of the receiver to the <varbool> value of the argument."

	self put_AutoFilterDateGrouping: rhs
!

caption
	"Answer the <variant> value of the 'Caption' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <variant> value of the argument."

	self put_Caption: rhs asVariant
!

close
	"Answer the <VARIANT_BOOL> result of invoking the Close() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 close: VARIANT unspecified
		 filename: VARIANT unspecified
		 routeWorkbook: VARIANT unspecified!

close: saveChanges filename: filename routeWorkbook: routeWorkbook
	"Answer the <VARIANT_BOOL> result of invoking the Close() method of the COM object."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		Close: saveChanges asVariant
		filename: filename asVariant
		routeWorkbook: routeWorkbook asVariant
		rhs: answer.
	^answer asObject
!

Close: saveChanges filename: filename routeWorkbook: routeWorkbook rhs: rhs
	"Private - Invoke the Close() method of the COM object.

		HRESULT __stdcall Close(
			[in, optional]VARIANT SaveChanges,
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT RouteWorkbook,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 20 variant variant variant varbool*>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

displayFormulas
	"Answer the <varbool> value of the 'DisplayFormulas' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayFormulas: answer.
	^answer asObject
!

displayFormulas: rhs
	"Set the 'DisplayFormulas' property of the receiver to the <varbool> value of the argument."

	self put_DisplayFormulas: rhs
!

displayGridlines
	"Answer the <varbool> value of the 'DisplayGridlines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayGridlines: answer.
	^answer asObject
!

displayGridlines: rhs
	"Set the 'DisplayGridlines' property of the receiver to the <varbool> value of the argument."

	self put_DisplayGridlines: rhs
!

displayHeadings
	"Answer the <varbool> value of the 'DisplayHeadings' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayHeadings: answer.
	^answer asObject
!

displayHeadings: rhs
	"Set the 'DisplayHeadings' property of the receiver to the <varbool> value of the argument."

	self put_DisplayHeadings: rhs
!

displayHorizontalScrollBar
	"Answer the <varbool> value of the 'DisplayHorizontalScrollBar' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayHorizontalScrollBar: answer.
	^answer asObject
!

displayHorizontalScrollBar: rhs
	"Set the 'DisplayHorizontalScrollBar' property of the receiver to the <varbool> value of the argument."

	self put_DisplayHorizontalScrollBar: rhs
!

displayOutline
	"Answer the <varbool> value of the 'DisplayOutline' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayOutline: answer.
	^answer asObject
!

displayOutline: rhs
	"Set the 'DisplayOutline' property of the receiver to the <varbool> value of the argument."

	self put_DisplayOutline: rhs
!

displayRightToLeft
	"Answer the <varbool> value of the 'DisplayRightToLeft' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayRightToLeft: answer.
	^answer asObject
!

displayRightToLeft: rhs
	"Set the 'DisplayRightToLeft' property of the receiver to the <varbool> value of the argument."

	self put_DisplayRightToLeft: rhs
!

displayRuler
	"Answer the <varbool> value of the 'DisplayRuler' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayRuler: answer.
	^answer asObject
!

displayRuler: rhs
	"Set the 'DisplayRuler' property of the receiver to the <varbool> value of the argument."

	self put_DisplayRuler: rhs
!

displayVerticalScrollBar
	"Answer the <varbool> value of the 'DisplayVerticalScrollBar' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayVerticalScrollBar: answer.
	^answer asObject
!

displayVerticalScrollBar: rhs
	"Set the 'DisplayVerticalScrollBar' property of the receiver to the <varbool> value of the argument."

	self put_DisplayVerticalScrollBar: rhs
!

displayWhitespace
	"Answer the <varbool> value of the 'DisplayWhitespace' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayWhitespace: answer.
	^answer asObject
!

displayWhitespace: rhs
	"Set the 'DisplayWhitespace' property of the receiver to the <varbool> value of the argument."

	self put_DisplayWhitespace: rhs
!

displayWorkbookTabs
	"Answer the <varbool> value of the 'DisplayWorkbookTabs' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayWorkbookTabs: answer.
	^answer asObject
!

displayWorkbookTabs: rhs
	"Set the 'DisplayWorkbookTabs' property of the receiver to the <varbool> value of the argument."

	self put_DisplayWorkbookTabs: rhs
!

displayZeros
	"Answer the <varbool> value of the 'DisplayZeros' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayZeros: answer.
	^answer asObject
!

displayZeros: rhs
	"Set the 'DisplayZeros' property of the receiver to the <varbool> value of the argument."

	self put_DisplayZeros: rhs
!

enableResize
	"Answer the <varbool> value of the 'EnableResize' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_EnableResize: answer.
	^answer asObject
!

enableResize: rhs
	"Set the 'EnableResize' property of the receiver to the <varbool> value of the argument."

	self put_EnableResize: rhs
!

freezePanes
	"Answer the <varbool> value of the 'FreezePanes' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_FreezePanes: answer.
	^answer asObject
!

freezePanes: rhs
	"Set the 'FreezePanes' property of the receiver to the <varbool> value of the argument."

	self put_FreezePanes: rhs
!

get__DisplayRightToLeft: rhs
	"Private - Get the value of the '_DisplayRightToLeft' property of the receiver.

		HRESULT __stdcall _DisplayRightToLeft(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 31 varbool*>
	^self invalidCall!

get_ActiveCell: rhs
	"Private - Get the value of the 'ActiveCell' property of the receiver.

		HRESULT __stdcall ActiveCell(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 14 ExcelRange**>
	^self invalidCall!

get_ActiveChart: rhs
	"Private - Get the value of the 'ActiveChart' property of the receiver.

		HRESULT __stdcall ActiveChart(
			[out, retval]Chart** RHS);"

	<virtual stdcall: hresult 15 Excel_Chart**>
	^self invalidCall!

get_ActivePane: rhs
	"Private - Get the value of the 'ActivePane' property of the receiver.

		HRESULT __stdcall ActivePane(
			[out, retval]Pane** RHS);"

	<virtual stdcall: hresult 16 ExcelPane**>
	^self invalidCall!

get_ActiveSheet: rhs
	"Private - Get the value of the 'ActiveSheet' property of the receiver.

		HRESULT __stdcall ActiveSheet(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 17 IDispatch**>
	^self invalidCall!

get_ActiveSheetView: rhs
	"Private - Get the value of the 'ActiveSheetView' property of the receiver.

		HRESULT __stdcall ActiveSheetView(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 104 IDispatch**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoFilterDateGrouping: rhs
	"Private - Get the value of the 'AutoFilterDateGrouping' property of the receiver.

		HRESULT __stdcall AutoFilterDateGrouping(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 108 varbool*>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 18 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DisplayFormulas: rhs
	"Private - Get the value of the 'DisplayFormulas' property of the receiver.

		HRESULT __stdcall DisplayFormulas(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_DisplayGridlines: rhs
	"Private - Get the value of the 'DisplayGridlines' property of the receiver.

		HRESULT __stdcall DisplayGridlines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_DisplayHeadings: rhs
	"Private - Get the value of the 'DisplayHeadings' property of the receiver.

		HRESULT __stdcall DisplayHeadings(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_DisplayHorizontalScrollBar: rhs
	"Private - Get the value of the 'DisplayHorizontalScrollBar' property of the receiver.

		HRESULT __stdcall DisplayHorizontalScrollBar(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
	^self invalidCall!

get_DisplayOutline: rhs
	"Private - Get the value of the 'DisplayOutline' property of the receiver.

		HRESULT __stdcall DisplayOutline(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 29 varbool*>
	^self invalidCall!

get_DisplayRightToLeft: rhs
	"Private - Get the value of the 'DisplayRightToLeft' property of the receiver.

		HRESULT __stdcall DisplayRightToLeft(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 97 varbool*>
	^self invalidCall!

get_DisplayRuler: rhs
	"Private - Get the value of the 'DisplayRuler' property of the receiver.

		HRESULT __stdcall DisplayRuler(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 106 varbool*>
	^self invalidCall!

get_DisplayVerticalScrollBar: rhs
	"Private - Get the value of the 'DisplayVerticalScrollBar' property of the receiver.

		HRESULT __stdcall DisplayVerticalScrollBar(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 33 varbool*>
	^self invalidCall!

get_DisplayWhitespace: rhs
	"Private - Get the value of the 'DisplayWhitespace' property of the receiver.

		HRESULT __stdcall DisplayWhitespace(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 110 varbool*>
	^self invalidCall!

get_DisplayWorkbookTabs: rhs
	"Private - Get the value of the 'DisplayWorkbookTabs' property of the receiver.

		HRESULT __stdcall DisplayWorkbookTabs(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 35 varbool*>
	^self invalidCall!

get_DisplayZeros: rhs
	"Private - Get the value of the 'DisplayZeros' property of the receiver.

		HRESULT __stdcall DisplayZeros(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 37 varbool*>
	^self invalidCall!

get_EnableResize: rhs
	"Private - Get the value of the 'EnableResize' property of the receiver.

		HRESULT __stdcall EnableResize(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 39 varbool*>
	^self invalidCall!

get_FreezePanes: rhs
	"Private - Get the value of the 'FreezePanes' property of the receiver.

		HRESULT __stdcall FreezePanes(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 41 varbool*>
	^self invalidCall!

get_GridlineColor: rhs
	"Private - Get the value of the 'GridlineColor' property of the receiver.

		HRESULT __stdcall GridlineColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 43 sdword*>
	^self invalidCall!

get_GridlineColorIndex: rhs
	"Private - Get the value of the 'GridlineColorIndex' property of the receiver.

		HRESULT __stdcall GridlineColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 45 sdword*>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 47 double*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 49 sdword*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 51 double*>
	^self invalidCall!

get_OnWindow: rhs
	"Private - Get the value of the 'OnWindow' property of the receiver.

		HRESULT __stdcall OnWindow(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 54 bstr*>
	^self invalidCall!

get_Panes: rhs
	"Private - Get the value of the 'Panes' property of the receiver.

		HRESULT __stdcall Panes(
			[out, retval]Panes** RHS);"

	<virtual stdcall: hresult 56 ExcelPanes**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_RangeSelection: rhs
	"Private - Get the value of the 'RangeSelection' property of the receiver.

		HRESULT __stdcall RangeSelection(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 59 ExcelRange**>
	^self invalidCall!

get_ScrollColumn: rhs
	"Private - Get the value of the 'ScrollColumn' property of the receiver.

		HRESULT __stdcall ScrollColumn(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 60 sdword*>
	^self invalidCall!

get_ScrollRow: rhs
	"Private - Get the value of the 'ScrollRow' property of the receiver.

		HRESULT __stdcall ScrollRow(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 62 sdword*>
	^self invalidCall!

get_SelectedSheets: rhs
	"Private - Get the value of the 'SelectedSheets' property of the receiver.

		HRESULT __stdcall SelectedSheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 65 ExcelSheets**>
	^self invalidCall!

get_Selection: rhs
	"Private - Get the value of the 'Selection' property of the receiver.

		HRESULT __stdcall Selection(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 66 IDispatch**>
	^self invalidCall!

get_SheetViews: rhs
	"Private - Get the value of the 'SheetViews' property of the receiver.

		HRESULT __stdcall SheetViews(
			[out, retval]SheetViews** RHS);"

	<virtual stdcall: hresult 103 ExcelSheetViews**>
	^self invalidCall!

get_Split: rhs
	"Private - Get the value of the 'Split' property of the receiver.

		HRESULT __stdcall Split(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 68 varbool*>
	^self invalidCall!

get_SplitColumn: rhs
	"Private - Get the value of the 'SplitColumn' property of the receiver.

		HRESULT __stdcall SplitColumn(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 70 sdword*>
	^self invalidCall!

get_SplitHorizontal: rhs
	"Private - Get the value of the 'SplitHorizontal' property of the receiver.

		HRESULT __stdcall SplitHorizontal(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 72 double*>
	^self invalidCall!

get_SplitRow: rhs
	"Private - Get the value of the 'SplitRow' property of the receiver.

		HRESULT __stdcall SplitRow(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 74 sdword*>
	^self invalidCall!

get_SplitVertical: rhs
	"Private - Get the value of the 'SplitVertical' property of the receiver.

		HRESULT __stdcall SplitVertical(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 76 double*>
	^self invalidCall!

get_TabRatio: rhs
	"Private - Get the value of the 'TabRatio' property of the receiver.

		HRESULT __stdcall TabRatio(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 78 double*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 80 double*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlWindowType* RHS);"

	<virtual stdcall: hresult 82 sdword*>
	^self invalidCall!

get_UsableHeight: rhs
	"Private - Get the value of the 'UsableHeight' property of the receiver.

		HRESULT __stdcall UsableHeight(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 83 double*>
	^self invalidCall!

get_UsableWidth: rhs
	"Private - Get the value of the 'UsableWidth' property of the receiver.

		HRESULT __stdcall UsableWidth(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 84 double*>
	^self invalidCall!

get_View: rhs
	"Private - Get the value of the 'View' property of the receiver.

		HRESULT __stdcall View(
			[out, retval]XlWindowView* RHS);"

	<virtual stdcall: hresult 95 sdword*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 85 varbool*>
	^self invalidCall!

get_VisibleRange: rhs
	"Private - Get the value of the 'VisibleRange' property of the receiver.

		HRESULT __stdcall VisibleRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 87 ExcelRange**>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 88 double*>
	^self invalidCall!

get_WindowNumber: rhs
	"Private - Get the value of the 'WindowNumber' property of the receiver.

		HRESULT __stdcall WindowNumber(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 90 sdword*>
	^self invalidCall!

get_WindowState: rhs
	"Private - Get the value of the 'WindowState' property of the receiver.

		HRESULT __stdcall WindowState(
			[out, retval]XlWindowState* RHS);"

	<virtual stdcall: hresult 91 sdword*>
	^self invalidCall!

get_Zoom: rhs
	"Private - Get the value of the 'Zoom' property of the receiver.

		HRESULT __stdcall Zoom(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 93 variant*>
	^self invalidCall!

gridlineColor
	"Answer the <sdword> value of the 'GridlineColor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GridlineColor: answer.
	^answer asObject
!

gridlineColor: rhs
	"Set the 'GridlineColor' property of the receiver to the <sdword> value of the argument."

	self put_GridlineColor: rhs
!

gridlineColorIndex
	"Answer the <sdword> value of the 'GridlineColorIndex' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GridlineColorIndex: answer.
	^answer asObject
!

gridlineColorIndex: rhs
	"Set the 'GridlineColorIndex' property of the receiver to the <sdword> value of the argument."

	self put_GridlineColorIndex: rhs
!

height
	"Answer the <double> value of the 'Height' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Height: answer.
	^answer asObject
!

height: rhs
	"Set the 'Height' property of the receiver to the <double> value of the argument."

	self put_Height: rhs
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

largeScroll
	"Answer the <VARIANT> result of invoking the LargeScroll() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 largeScroll: VARIANT unspecified
		 up: VARIANT unspecified
		 toRight: VARIANT unspecified
		 toLeft: VARIANT unspecified!

largeScroll: down up: up toRight: toRight toLeft: toLeft
	"Answer the <VARIANT> result of invoking the LargeScroll() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		LargeScroll: down asVariant
		up: up asVariant
		toRight: toRight asVariant
		toLeft: toLeft asVariant
		rhs: answer.
	^answer asObject
!

LargeScroll: down up: up toRight: toRight toLeft: toLeft rhs: rhs
	"Private - Invoke the LargeScroll() method of the COM object.

		HRESULT __stdcall LargeScroll(
			[in, optional]VARIANT Down,
			[in, optional]VARIANT Up,
			[in, optional]VARIANT ToRight,
			[in, optional]VARIANT ToLeft,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 50 variant variant variant variant variant*>
	^self invalidCall!

left
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Left: answer.
	^answer asObject
!

left: rhs
	"Set the 'Left' property of the receiver to the <double> value of the argument."

	self put_Left: rhs
!

newWindow
	"Answer the <ExcelWindow> result of invoking the NewWindow() method of the COM object."

	| answer |
	answer := ExcelWindow newPointer.
	self NewWindow: answer.
	^answer asObject
!

NewWindow: rhs
	"Private - Invoke the NewWindow() method of the COM object.

		HRESULT __stdcall NewWindow(
			[out, retval]Window** RHS);"

	<virtual stdcall: hresult 53 ExcelWindow**>
	^self invalidCall!

onWindow
	"Answer the <bstr> value of the 'OnWindow' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_OnWindow: answer.
	^answer asObject
!

onWindow: rhs
	"Set the 'OnWindow' property of the receiver to the <bstr> value of the argument."

	self put_OnWindow: rhs
!

panes
	"Answer the <ExcelPanes> value of the 'Panes' property of the receiver."

	| answer |
	answer := ExcelPanes newPointer.
	self get_Panes: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pointsToScreenPixelsX: points
	"Answer the <SDWORD> result of invoking the PointsToScreenPixelsX() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		PointsToScreenPixelsX: points
		rhs: answer.
	^answer asObject
!

PointsToScreenPixelsX: points rhs: rhs
	"Private - Invoke the PointsToScreenPixelsX() method of the COM object.

		HRESULT __stdcall PointsToScreenPixelsX(
			[in]long Points,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 99 sdword sdword*>
	^self invalidCall!

pointsToScreenPixelsY: points
	"Answer the <SDWORD> result of invoking the PointsToScreenPixelsY() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self
		PointsToScreenPixelsY: points
		rhs: answer.
	^answer asObject
!

PointsToScreenPixelsY: points rhs: rhs
	"Private - Invoke the PointsToScreenPixelsY() method of the COM object.

		HRESULT __stdcall PointsToScreenPixelsY(
			[in]long Points,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 100 sdword sdword*>
	^self invalidCall!

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

	<virtual stdcall: hresult 105 variant variant variant variant variant variant variant variant variant*>
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

	<virtual stdcall: hresult 58 variant variant*>
	^self invalidCall!

put__DisplayRightToLeft: rhs
	"Private - Set the value of the '_DisplayRightToLeft' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall _DisplayRightToLeft(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 32 varbool>
	^self invalidCall!

put_AutoFilterDateGrouping: rhs
	"Private - Set the value of the 'AutoFilterDateGrouping' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoFilterDateGrouping(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 109 varbool>
	^self invalidCall!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Caption(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 19 variant>
	^self invalidCall!

put_DisplayFormulas: rhs
	"Private - Set the value of the 'DisplayFormulas' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayFormulas(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_DisplayGridlines: rhs
	"Private - Set the value of the 'DisplayGridlines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayGridlines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_DisplayHeadings: rhs
	"Private - Set the value of the 'DisplayHeadings' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayHeadings(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_DisplayHorizontalScrollBar: rhs
	"Private - Set the value of the 'DisplayHorizontalScrollBar' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayHorizontalScrollBar(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

put_DisplayOutline: rhs
	"Private - Set the value of the 'DisplayOutline' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayOutline(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 30 varbool>
	^self invalidCall!

put_DisplayRightToLeft: rhs
	"Private - Set the value of the 'DisplayRightToLeft' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayRightToLeft(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 98 varbool>
	^self invalidCall!

put_DisplayRuler: rhs
	"Private - Set the value of the 'DisplayRuler' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayRuler(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 107 varbool>
	^self invalidCall!

put_DisplayVerticalScrollBar: rhs
	"Private - Set the value of the 'DisplayVerticalScrollBar' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayVerticalScrollBar(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 34 varbool>
	^self invalidCall!

put_DisplayWhitespace: rhs
	"Private - Set the value of the 'DisplayWhitespace' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayWhitespace(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 111 varbool>
	^self invalidCall!

put_DisplayWorkbookTabs: rhs
	"Private - Set the value of the 'DisplayWorkbookTabs' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayWorkbookTabs(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 36 varbool>
	^self invalidCall!

put_DisplayZeros: rhs
	"Private - Set the value of the 'DisplayZeros' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayZeros(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 38 varbool>
	^self invalidCall!

put_EnableResize: rhs
	"Private - Set the value of the 'EnableResize' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall EnableResize(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 40 varbool>
	^self invalidCall!

put_FreezePanes: rhs
	"Private - Set the value of the 'FreezePanes' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall FreezePanes(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 42 varbool>
	^self invalidCall!

put_GridlineColor: rhs
	"Private - Set the value of the 'GridlineColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall GridlineColor(
			[in]long RHS);"

	<virtual stdcall: hresult 44 sdword>
	^self invalidCall!

put_GridlineColorIndex: rhs
	"Private - Set the value of the 'GridlineColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall GridlineColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 46 sdword>
	^self invalidCall!

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Height(
			[in]double RHS);"

	<virtual stdcall: hresult 48 double>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]double RHS);"

	<virtual stdcall: hresult 52 double>
	^self invalidCall!

put_OnWindow: rhs
	"Private - Set the value of the 'OnWindow' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnWindow(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 55 bstr>
	^self invalidCall!

put_ScrollColumn: rhs
	"Private - Set the value of the 'ScrollColumn' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScrollColumn(
			[in]long RHS);"

	<virtual stdcall: hresult 61 sdword>
	^self invalidCall!

put_ScrollRow: rhs
	"Private - Set the value of the 'ScrollRow' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScrollRow(
			[in]long RHS);"

	<virtual stdcall: hresult 63 sdword>
	^self invalidCall!

put_Split: rhs
	"Private - Set the value of the 'Split' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Split(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 69 varbool>
	^self invalidCall!

put_SplitColumn: rhs
	"Private - Set the value of the 'SplitColumn' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SplitColumn(
			[in]long RHS);"

	<virtual stdcall: hresult 71 sdword>
	^self invalidCall!

put_SplitHorizontal: rhs
	"Private - Set the value of the 'SplitHorizontal' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall SplitHorizontal(
			[in]double RHS);"

	<virtual stdcall: hresult 73 double>
	^self invalidCall!

put_SplitRow: rhs
	"Private - Set the value of the 'SplitRow' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SplitRow(
			[in]long RHS);"

	<virtual stdcall: hresult 75 sdword>
	^self invalidCall!

put_SplitVertical: rhs
	"Private - Set the value of the 'SplitVertical' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall SplitVertical(
			[in]double RHS);"

	<virtual stdcall: hresult 77 double>
	^self invalidCall!

put_TabRatio: rhs
	"Private - Set the value of the 'TabRatio' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall TabRatio(
			[in]double RHS);"

	<virtual stdcall: hresult 79 double>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 81 double>
	^self invalidCall!

put_View: rhs
	"Private - Set the value of the 'View' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall View(
			[in]XlWindowView RHS);"

	<virtual stdcall: hresult 96 sdword>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 86 varbool>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]double RHS);"

	<virtual stdcall: hresult 89 double>
	^self invalidCall!

put_WindowState: rhs
	"Private - Set the value of the 'WindowState' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall WindowState(
			[in]XlWindowState RHS);"

	<virtual stdcall: hresult 92 sdword>
	^self invalidCall!

put_Zoom: rhs
	"Private - Set the value of the 'Zoom' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Zoom(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 94 variant>
	^self invalidCall!

rangeFromPoint: x y: y
	"Answer the <IDispatch> result of invoking the RangeFromPoint() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		RangeFromPoint: x
		y: y
		rhs: answer.
	^answer asObject
!

RangeFromPoint: x y: y rhs: rhs
	"Private - Invoke the RangeFromPoint() method of the COM object.

		HRESULT __stdcall RangeFromPoint(
			[in]long x,
			[in]long y,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 101 sdword sdword IDispatch**>
	^self invalidCall!

rangeSelection
	"Answer the <ExcelRange> value of the 'RangeSelection' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_RangeSelection: answer.
	^answer asObject
!

scrollColumn
	"Answer the <sdword> value of the 'ScrollColumn' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ScrollColumn: answer.
	^answer asObject
!

scrollColumn: rhs
	"Set the 'ScrollColumn' property of the receiver to the <sdword> value of the argument."

	self put_ScrollColumn: rhs
!

scrollIntoView: left top: top width: width height: height
	"Invoke the ScrollIntoView() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 scrollIntoView: left
		 top: top
		 width: width
		 height: height
		 start: VARIANT unspecified!

scrollIntoView: left top: top width: width height: height start: start
	"Invoke the ScrollIntoView() method of the COM object."

	^self
		ScrollIntoView: left
		top: top
		width: width
		height: height
		start: start asVariant
!

ScrollIntoView: left top: top width: width height: height start: start
	"Private - Invoke the ScrollIntoView() method of the COM object.

		HRESULT __stdcall ScrollIntoView(
			[in]long Left,
			[in]long Top,
			[in]long Width,
			[in]long Height,
			[in, optional]VARIANT Start);"

	<virtual stdcall: hresult 102 sdword sdword sdword sdword variant>
	^self invalidCall!

scrollRow
	"Answer the <sdword> value of the 'ScrollRow' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ScrollRow: answer.
	^answer asObject
!

scrollRow: rhs
	"Set the 'ScrollRow' property of the receiver to the <sdword> value of the argument."

	self put_ScrollRow: rhs
!

scrollWorkbookTabs
	"Answer the <VARIANT> result of invoking the ScrollWorkbookTabs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 scrollWorkbookTabs: VARIANT unspecified
		 position: VARIANT unspecified!

scrollWorkbookTabs: sheets position: position
	"Answer the <VARIANT> result of invoking the ScrollWorkbookTabs() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ScrollWorkbookTabs: sheets asVariant
		position: position asVariant
		rhs: answer.
	^answer asObject
!

ScrollWorkbookTabs: sheets position: position rhs: rhs
	"Private - Invoke the ScrollWorkbookTabs() method of the COM object.

		HRESULT __stdcall ScrollWorkbookTabs(
			[in, optional]VARIANT Sheets,
			[in, optional]VARIANT Position,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 64 variant variant variant*>
	^self invalidCall!

selectedSheets
	"Answer the <ExcelSheets> value of the 'SelectedSheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_SelectedSheets: answer.
	^answer asObject
!

selection
	"Answer the <IDispatch> value of the 'Selection' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Selection: answer.
	^answer asObject
!

sheetViews
	"Answer the <ExcelSheetViews> value of the 'SheetViews' property of the receiver."

	| answer |
	answer := ExcelSheetViews newPointer.
	self get_SheetViews: answer.
	^answer asObject
!

smallScroll
	"Answer the <VARIANT> result of invoking the SmallScroll() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 smallScroll: VARIANT unspecified
		 up: VARIANT unspecified
		 toRight: VARIANT unspecified
		 toLeft: VARIANT unspecified!

smallScroll: down up: up toRight: toRight toLeft: toLeft
	"Answer the <VARIANT> result of invoking the SmallScroll() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		SmallScroll: down asVariant
		up: up asVariant
		toRight: toRight asVariant
		toLeft: toLeft asVariant
		rhs: answer.
	^answer asObject
!

SmallScroll: down up: up toRight: toRight toLeft: toLeft rhs: rhs
	"Private - Invoke the SmallScroll() method of the COM object.

		HRESULT __stdcall SmallScroll(
			[in, optional]VARIANT Down,
			[in, optional]VARIANT Up,
			[in, optional]VARIANT ToRight,
			[in, optional]VARIANT ToLeft,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 67 variant variant variant variant variant*>
	^self invalidCall!

split
	"Answer the <varbool> value of the 'Split' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Split: answer.
	^answer asObject
!

split: rhs
	"Set the 'Split' property of the receiver to the <varbool> value of the argument."

	self put_Split: rhs
!

splitColumn
	"Answer the <sdword> value of the 'SplitColumn' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SplitColumn: answer.
	^answer asObject
!

splitColumn: rhs
	"Set the 'SplitColumn' property of the receiver to the <sdword> value of the argument."

	self put_SplitColumn: rhs
!

splitHorizontal
	"Answer the <double> value of the 'SplitHorizontal' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_SplitHorizontal: answer.
	^answer asObject
!

splitHorizontal: rhs
	"Set the 'SplitHorizontal' property of the receiver to the <double> value of the argument."

	self put_SplitHorizontal: rhs
!

splitRow
	"Answer the <sdword> value of the 'SplitRow' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SplitRow: answer.
	^answer asObject
!

splitRow: rhs
	"Set the 'SplitRow' property of the receiver to the <sdword> value of the argument."

	self put_SplitRow: rhs
!

splitVertical
	"Answer the <double> value of the 'SplitVertical' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_SplitVertical: answer.
	^answer asObject
!

splitVertical: rhs
	"Set the 'SplitVertical' property of the receiver to the <double> value of the argument."

	self put_SplitVertical: rhs
!

tabRatio
	"Answer the <double> value of the 'TabRatio' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_TabRatio: answer.
	^answer asObject
!

tabRatio: rhs
	"Set the 'TabRatio' property of the receiver to the <double> value of the argument."

	self put_TabRatio: rhs
!

top
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Top: answer.
	^answer asObject
!

top: rhs
	"Set the 'Top' property of the receiver to the <double> value of the argument."

	self put_Top: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

usableHeight
	"Answer the <double> value of the 'UsableHeight' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_UsableHeight: answer.
	^answer asObject
!

usableWidth
	"Answer the <double> value of the 'UsableWidth' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_UsableWidth: answer.
	^answer asObject
!

view
	"Answer the <sdword> value of the 'View' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_View: answer.
	^answer asObject
!

view: rhs
	"Set the 'View' property of the receiver to the <sdword> value of the argument."

	self put_View: rhs
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Visible: answer.
	^answer asObject
!

visible: rhs
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument."

	self put_Visible: rhs
!

visibleRange
	"Answer the <ExcelRange> value of the 'VisibleRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_VisibleRange: answer.
	^answer asObject
!

width
	"Answer the <double> value of the 'Width' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Width: answer.
	^answer asObject
!

width: rhs
	"Set the 'Width' property of the receiver to the <double> value of the argument."

	self put_Width: rhs
!

windowNumber
	"Answer the <sdword> value of the 'WindowNumber' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_WindowNumber: answer.
	^answer asObject
!

windowState
	"Answer the <sdword> value of the 'WindowState' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_WindowState: answer.
	^answer asObject
!

windowState: rhs
	"Set the 'WindowState' property of the receiver to the <sdword> value of the argument."

	self put_WindowState: rhs
!

zoom
	"Answer the <variant> value of the 'Zoom' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Zoom: answer.
	^answer asObject
!

zoom: rhs
	"Set the 'Zoom' property of the receiver to the <variant> value of the argument."

	self put_Zoom: rhs asVariant
! !
!ExcelIWindow categoriesFor: #_displayRightToLeft!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #_displayRightToLeft:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #_printOut!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #Activate:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #activateNext!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #ActivateNext:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #activatePrevious!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #ActivatePrevious:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #activeCell!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #activeChart!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #activePane!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #activeSheet!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #activeSheetView!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #autoFilterDateGrouping!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #autoFilterDateGrouping:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #close!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #close:filename:routeWorkbook:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #Close:filename:routeWorkbook:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayFormulas!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayFormulas:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayGridlines!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayGridlines:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayHeadings!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayHeadings:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayHorizontalScrollBar!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayHorizontalScrollBar:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayOutline!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayOutline:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayRightToLeft!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayRightToLeft:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayRuler!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayRuler:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayVerticalScrollBar!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayVerticalScrollBar:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayWhitespace!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayWhitespace:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayWorkbookTabs!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayWorkbookTabs:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayZeros!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #displayZeros:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #enableResize!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #enableResize:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #freezePanes!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #freezePanes:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #get__DisplayRightToLeft:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_ActiveCell:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_ActiveChart:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_ActivePane:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_ActiveSheet:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_ActiveSheetView:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_AutoFilterDateGrouping:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayFormulas:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayGridlines:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayHeadings:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayHorizontalScrollBar:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayOutline:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayRightToLeft:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayRuler:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayVerticalScrollBar:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayWhitespace:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayWorkbookTabs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_DisplayZeros:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_EnableResize:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_FreezePanes:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_GridlineColor:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_GridlineColorIndex:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_OnWindow:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Panes:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_RangeSelection:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_ScrollColumn:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_ScrollRow:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_SelectedSheets:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Selection:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_SheetViews:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Split:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_SplitColumn:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_SplitHorizontal:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_SplitRow:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_SplitVertical:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_TabRatio:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_UsableHeight:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_UsableWidth:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_View:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_VisibleRange:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_WindowNumber:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_WindowState:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #get_Zoom:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #gridlineColor!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #gridlineColor:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #gridlineColorIndex!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #gridlineColorIndex:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #largeScroll!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #largeScroll:up:toRight:toLeft:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #LargeScroll:up:toRight:toLeft:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #newWindow!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #NewWindow:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #onWindow!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #onWindow:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #panes!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #pointsToScreenPixelsX:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #PointsToScreenPixelsX:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #pointsToScreenPixelsY:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #PointsToScreenPixelsY:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #printOut!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #printPreview!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #printPreview:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #PrintPreview:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put__DisplayRightToLeft:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_AutoFilterDateGrouping:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayFormulas:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayGridlines:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayHeadings:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayHorizontalScrollBar:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayOutline:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayRightToLeft:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayRuler:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayVerticalScrollBar:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayWhitespace:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayWorkbookTabs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_DisplayZeros:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_EnableResize:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_FreezePanes:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_GridlineColor:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_GridlineColorIndex:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_OnWindow:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_ScrollColumn:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_ScrollRow:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_Split:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_SplitColumn:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_SplitHorizontal:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_SplitRow:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_SplitVertical:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_TabRatio:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_View:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_WindowState:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #put_Zoom:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #rangeFromPoint:y:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #RangeFromPoint:y:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #rangeSelection!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #scrollColumn!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #scrollColumn:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #scrollIntoView:top:width:height:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #scrollIntoView:top:width:height:start:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #ScrollIntoView:top:width:height:start:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #scrollRow!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #scrollRow:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #scrollWorkbookTabs!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #scrollWorkbookTabs:position:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #ScrollWorkbookTabs:position:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #selectedSheets!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #selection!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #sheetViews!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #smallScroll!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #smallScroll:up:toRight:toLeft:!**auto generated**!methods!public! !
!ExcelIWindow categoriesFor: #SmallScroll:up:toRight:toLeft:rhs:!**auto generated**!COM Interfaces-IWindow!private! !
!ExcelIWindow categoriesFor: #split!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #split:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #splitColumn!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #splitColumn:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #splitHorizontal!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #splitHorizontal:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #splitRow!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #splitRow:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #splitVertical!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #splitVertical:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #tabRatio!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #tabRatio:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #usableHeight!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #usableWidth!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #view!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #view:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #visibleRange!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #windowNumber!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #windowState!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #windowState:!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #zoom!**auto generated**!properties!public! !
!ExcelIWindow categoriesFor: #zoom:!**auto generated**!properties!public! !

!ExcelIWindow class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IWindow'
		ExcelIWindow defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Activate:
			argumentTypes: 'variant*';
		defineFunction: #ActivateNext:
			argumentTypes: 'variant*';
		defineFunction: #ActivatePrevious:
			argumentTypes: 'variant*';
		defineFunction: #get_ActiveCell:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_ActiveChart:
			argumentTypes: 'Excel_Chart**';
		defineFunction: #get_ActivePane:
			argumentTypes: 'ExcelPane**';
		defineFunction: #get_ActiveSheet:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Caption:
			argumentTypes: 'variant*';
		defineFunction: #put_Caption:
			argumentTypes: 'variant';
		defineFunction: #Close:filename:routeWorkbook:rhs:
			argumentTypes: 'variant variant variant varbool*';
		defineFunction: #get_DisplayFormulas:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayFormulas:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayGridlines:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayGridlines:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayHeadings:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayHeadings:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayHorizontalScrollBar:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayHorizontalScrollBar:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayOutline:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayOutline:
			argumentTypes: 'varbool';
		defineFunction: #get__DisplayRightToLeft:
			argumentTypes: 'varbool*';
		defineFunction: #put__DisplayRightToLeft:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayVerticalScrollBar:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayVerticalScrollBar:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayWorkbookTabs:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayWorkbookTabs:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayZeros:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayZeros:
			argumentTypes: 'varbool';
		defineFunction: #get_EnableResize:
			argumentTypes: 'varbool*';
		defineFunction: #put_EnableResize:
			argumentTypes: 'varbool';
		defineFunction: #get_FreezePanes:
			argumentTypes: 'varbool*';
		defineFunction: #put_FreezePanes:
			argumentTypes: 'varbool';
		defineFunction: #get_GridlineColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_GridlineColor:
			argumentTypes: 'sdword';
		defineFunction: #get_GridlineColorIndex:
			argumentTypes: 'sdword*';
		defineFunction: #put_GridlineColorIndex:
			argumentTypes: 'sdword';
		defineFunction: #get_Height:
			argumentTypes: 'double*';
		defineFunction: #put_Height:
			argumentTypes: 'double';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #LargeScroll:up:toRight:toLeft:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #put_Left:
			argumentTypes: 'double';
		defineFunction: #NewWindow:
			argumentTypes: 'ExcelWindow**';
		defineFunction: #get_OnWindow:
			argumentTypes: 'bstr*';
		defineFunction: #put_OnWindow:
			argumentTypes: 'bstr';
		defineFunction: #get_Panes:
			argumentTypes: 'ExcelPanes**';
		defineFunction: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant*';
		defineFunction: #PrintPreview:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_RangeSelection:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_ScrollColumn:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScrollColumn:
			argumentTypes: 'sdword';
		defineFunction: #get_ScrollRow:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScrollRow:
			argumentTypes: 'sdword';
		defineFunction: #ScrollWorkbookTabs:position:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #get_SelectedSheets:
			argumentTypes: 'ExcelSheets**';
		defineFunction: #get_Selection:
			argumentTypes: 'IDispatch**';
		defineFunction: #SmallScroll:up:toRight:toLeft:rhs:
			argumentTypes: 'variant variant variant variant variant*';
		defineFunction: #get_Split:
			argumentTypes: 'varbool*';
		defineFunction: #put_Split:
			argumentTypes: 'varbool';
		defineFunction: #get_SplitColumn:
			argumentTypes: 'sdword*';
		defineFunction: #put_SplitColumn:
			argumentTypes: 'sdword';
		defineFunction: #get_SplitHorizontal:
			argumentTypes: 'double*';
		defineFunction: #put_SplitHorizontal:
			argumentTypes: 'double';
		defineFunction: #get_SplitRow:
			argumentTypes: 'sdword*';
		defineFunction: #put_SplitRow:
			argumentTypes: 'sdword';
		defineFunction: #get_SplitVertical:
			argumentTypes: 'double*';
		defineFunction: #put_SplitVertical:
			argumentTypes: 'double';
		defineFunction: #get_TabRatio:
			argumentTypes: 'double*';
		defineFunction: #put_TabRatio:
			argumentTypes: 'double';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #put_Top:
			argumentTypes: 'double';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_UsableHeight:
			argumentTypes: 'double*';
		defineFunction: #get_UsableWidth:
			argumentTypes: 'double*';
		defineFunction: #get_Visible:
			argumentTypes: 'varbool*';
		defineFunction: #put_Visible:
			argumentTypes: 'varbool';
		defineFunction: #get_VisibleRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Width:
			argumentTypes: 'double*';
		defineFunction: #put_Width:
			argumentTypes: 'double';
		defineFunction: #get_WindowNumber:
			argumentTypes: 'sdword*';
		defineFunction: #get_WindowState:
			argumentTypes: 'sdword*';
		defineFunction: #put_WindowState:
			argumentTypes: 'sdword';
		defineFunction: #get_Zoom:
			argumentTypes: 'variant*';
		defineFunction: #put_Zoom:
			argumentTypes: 'variant';
		defineFunction: #get_View:
			argumentTypes: 'sdword*';
		defineFunction: #put_View:
			argumentTypes: 'sdword';
		defineFunction: #get_DisplayRightToLeft:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayRightToLeft:
			argumentTypes: 'varbool';
		defineFunction: #PointsToScreenPixelsX:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #PointsToScreenPixelsY:rhs:
			argumentTypes: 'sdword sdword*';
		defineFunction: #RangeFromPoint:y:rhs:
			argumentTypes: 'sdword sdword IDispatch**';
		defineFunction: #ScrollIntoView:top:width:height:start:
			argumentTypes: 'sdword sdword sdword sdword variant';
		defineFunction: #get_SheetViews:
			argumentTypes: 'ExcelSheetViews**';
		defineFunction: #get_ActiveSheetView:
			argumentTypes: 'IDispatch**';
		defineFunction: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:rhs:
			argumentTypes: 'variant variant variant variant variant variant variant variant variant*';
		defineFunction: #get_DisplayRuler:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayRuler:
			argumentTypes: 'varbool';
		defineFunction: #get_AutoFilterDateGrouping:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoFilterDateGrouping:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayWhitespace:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayWhitespace:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIWindow initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIWindow class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIWindow class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

