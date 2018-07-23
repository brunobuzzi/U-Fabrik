"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWindow guid: (IID fromString: '{00020893-0000-0000-C000-000000000046}')!
ExcelWindow comment: '<ExcelWindow> is a wrapper class generated for the dispatch interface ''Excel.Window'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020893-0000-0000-C000-000000000046), 
	helpcontext(0x00020053)
]
dispinterface Window {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000130), helpcontext(0x00010130)]
		VARIANT Activate();
[id(0x0000045b), helpcontext(0x0001045b)]
		VARIANT ActivateNext();
[id(0x0000045c), helpcontext(0x0001045c)]
		VARIANT ActivatePrevious();
[id(0x00000131), propget, helpcontext(0x00010131)]
		Range* ActiveCell();
[id(0x000000b7), propget, helpcontext(0x000100b7)]
		Chart* ActiveChart();
[id(0x00000282), propget, helpcontext(0x00010282)]
		Pane* ActivePane();
[id(0x00000133), propget, helpcontext(0x00010133)]
		IDispatch* ActiveSheet();
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		VARIANT Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]VARIANT arg1);
[id(0x00000115), helpcontext(0x00010115)]
		VARIANT_BOOL Close(
			[in, optional]VARIANT SaveChanges,
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT RouteWorkbook);
[id(0x00000284), propget, helpcontext(0x00010284)]
		VARIANT_BOOL DisplayFormulas();
[id(0x00000284), propput, helpcontext(0x00010284)]
		void DisplayFormulas(
			[in]VARIANT_BOOL arg1);
[id(0x00000285), propget, helpcontext(0x00010285)]
		VARIANT_BOOL DisplayGridlines();
[id(0x00000285), propput, helpcontext(0x00010285)]
		void DisplayGridlines(
			[in]VARIANT_BOOL arg1);
[id(0x00000286), propget, helpcontext(0x00010286)]
		VARIANT_BOOL DisplayHeadings();
[id(0x00000286), propput, helpcontext(0x00010286)]
		void DisplayHeadings(
			[in]VARIANT_BOOL arg1);
[id(0x00000399), propget, helpcontext(0x00010399)]
		VARIANT_BOOL DisplayHorizontalScrollBar();
[id(0x00000399), propput, helpcontext(0x00010399)]
		void DisplayHorizontalScrollBar(
			[in]VARIANT_BOOL arg1);
[id(0x00000287), propget, helpcontext(0x00010287)]
		VARIANT_BOOL DisplayOutline();
[id(0x00000287), propput, helpcontext(0x00010287)]
		void DisplayOutline(
			[in]VARIANT_BOOL arg1);
[id(0x00000288), hidden, propget, helpcontext(0x00010288)]
		VARIANT_BOOL _DisplayRightToLeft();
[id(0x00000288), hidden, propput, helpcontext(0x00010288)]
		void _DisplayRightToLeft(
			[in]VARIANT_BOOL arg1);
[id(0x0000039a), propget, helpcontext(0x0001039a)]
		VARIANT_BOOL DisplayVerticalScrollBar();
[id(0x0000039a), propput, helpcontext(0x0001039a)]
		void DisplayVerticalScrollBar(
			[in]VARIANT_BOOL arg1);
[id(0x0000039b), propget, helpcontext(0x0001039b)]
		VARIANT_BOOL DisplayWorkbookTabs();
[id(0x0000039b), propput, helpcontext(0x0001039b)]
		void DisplayWorkbookTabs(
			[in]VARIANT_BOOL arg1);
[id(0x00000289), propget, helpcontext(0x00010289)]
		VARIANT_BOOL DisplayZeros();
[id(0x00000289), propput, helpcontext(0x00010289)]
		void DisplayZeros(
			[in]VARIANT_BOOL arg1);
[id(0x000004a8), propget, helpcontext(0x000104a8)]
		VARIANT_BOOL EnableResize();
[id(0x000004a8), propput, helpcontext(0x000104a8)]
		void EnableResize(
			[in]VARIANT_BOOL arg1);
[id(0x0000028a), propget, helpcontext(0x0001028a)]
		VARIANT_BOOL FreezePanes();
[id(0x0000028a), propput, helpcontext(0x0001028a)]
		void FreezePanes(
			[in]VARIANT_BOOL arg1);
[id(0x0000028b), propget, helpcontext(0x0001028b)]
		long GridlineColor();
[id(0x0000028b), propput, helpcontext(0x0001028b)]
		void GridlineColor(
			[in]long arg1);
[id(0x0000028c), propget, helpcontext(0x0001028c)]
		XlColorIndex GridlineColorIndex();
[id(0x0000028c), propput, helpcontext(0x0001028c)]
		void GridlineColorIndex(
			[in]XlColorIndex arg1);
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x0000007b), propput, helpcontext(0x0001007b)]
		void Height(
			[in]double arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x00000223), helpcontext(0x00010223)]
		VARIANT LargeScroll(
			[in, optional]VARIANT Down,
			[in, optional]VARIANT Up,
			[in, optional]VARIANT ToRight,
			[in, optional]VARIANT ToLeft);
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]double arg1);
[id(0x00000118), helpcontext(0x00010118)]
		Window* NewWindow();
[id(0x0000026f), propget, helpcontext(0x0001026f)]
		BSTR OnWindow();
[id(0x0000026f), propput, helpcontext(0x0001026f)]
		void OnWindow(
			[in]BSTR arg1);
[id(0x0000028d), propget, helpcontext(0x0001028d)]
		Panes* Panes();
[id(0x000006ec), hidden, helpcontext(0x000106ec)]
		VARIANT _PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName);
[id(0x00000119), helpcontext(0x00010119)]
		VARIANT PrintPreview(
			[in, optional]VARIANT EnableChanges);
[id(0x000004a5), propget, helpcontext(0x000104a5)]
		Range* RangeSelection();
[id(0x0000028e), propget, helpcontext(0x0001028e)]
		long ScrollColumn();
[id(0x0000028e), propput, helpcontext(0x0001028e)]
		void ScrollColumn(
			[in]long arg1);
[id(0x0000028f), propget, helpcontext(0x0001028f)]
		long ScrollRow();
[id(0x0000028f), propput, helpcontext(0x0001028f)]
		void ScrollRow(
			[in]long arg1);
[id(0x00000296), helpcontext(0x00010296)]
		VARIANT ScrollWorkbookTabs(
			[in, optional]VARIANT Sheets,
			[in, optional]VARIANT Position);
[id(0x00000290), propget, helpcontext(0x00010290)]
		Sheets* SelectedSheets();
[id(0x00000093), propget, helpcontext(0x00010093)]
		IDispatch* Selection();
[id(0x00000224), helpcontext(0x00010224)]
		VARIANT SmallScroll(
			[in, optional]VARIANT Down,
			[in, optional]VARIANT Up,
			[in, optional]VARIANT ToRight,
			[in, optional]VARIANT ToLeft);
[id(0x00000291), propget, helpcontext(0x00010291)]
		VARIANT_BOOL Split();
[id(0x00000291), propput, helpcontext(0x00010291)]
		void Split(
			[in]VARIANT_BOOL arg1);
[id(0x00000292), propget, helpcontext(0x00010292)]
		long SplitColumn();
[id(0x00000292), propput, helpcontext(0x00010292)]
		void SplitColumn(
			[in]long arg1);
[id(0x00000293), propget, helpcontext(0x00010293)]
		double SplitHorizontal();
[id(0x00000293), propput, helpcontext(0x00010293)]
		void SplitHorizontal(
			[in]double arg1);
[id(0x00000294), propget, helpcontext(0x00010294)]
		long SplitRow();
[id(0x00000294), propput, helpcontext(0x00010294)]
		void SplitRow(
			[in]long arg1);
[id(0x00000295), propget, helpcontext(0x00010295)]
		double SplitVertical();
[id(0x00000295), propput, helpcontext(0x00010295)]
		void SplitVertical(
			[in]double arg1);
[id(0x000002a1), propget, helpcontext(0x000102a1)]
		double TabRatio();
[id(0x000002a1), propput, helpcontext(0x000102a1)]
		void TabRatio(
			[in]double arg1);
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlWindowType Type();
[id(0x00000185), propget, helpcontext(0x00010185)]
		double UsableHeight();
[id(0x00000186), propget, helpcontext(0x00010186)]
		double UsableWidth();
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		VARIANT_BOOL Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]VARIANT_BOOL arg1);
[id(0x0000045e), propget, helpcontext(0x0001045e)]
		Range* VisibleRange();
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007a), propput, helpcontext(0x0001007a)]
		void Width(
			[in]double arg1);
[id(0x0000045f), propget, helpcontext(0x0001045f)]
		long WindowNumber();
[id(0x0000018c), propget, helpcontext(0x0001018c)]
		XlWindowState WindowState();
[id(0x0000018c), propput, helpcontext(0x0001018c)]
		void WindowState(
			[in]XlWindowState arg1);
[id(0x00000297), propget, helpcontext(0x00010297)]
		VARIANT Zoom();
[id(0x00000297), propput, helpcontext(0x00010297)]
		void Zoom(
			[in]VARIANT arg1);
[id(0x000004aa), propget, helpcontext(0x000104aa)]
		XlWindowView View();
[id(0x000004aa), propput, helpcontext(0x000104aa)]
		void View(
			[in]XlWindowView arg1);
[id(0x000006ee), propget, helpcontext(0x000106ee)]
		VARIANT_BOOL DisplayRightToLeft();
[id(0x000006ee), propput, helpcontext(0x000106ee)]
		void DisplayRightToLeft(
			[in]VARIANT_BOOL arg1);
[id(0x000006f0), helpcontext(0x000106f0)]
		long PointsToScreenPixelsX(
			[in]long Points);
[id(0x000006f1), helpcontext(0x000106f1)]
		long PointsToScreenPixelsY(
			[in]long Points);
[id(0x000006f2), helpcontext(0x000106f2)]
		IDispatch* RangeFromPoint(
			[in]long x,
			[in]long y);
[id(0x000006f5), helpcontext(0x000106f5)]
		void ScrollIntoView(
			[in]long Left,
			[in]long Top,
			[in]long Width,
			[in]long Height,
			[in, optional]VARIANT Start);
[id(0x00000940), propget, helpcontext(0x00010940)]
		SheetViews* SheetViews();
[id(0x00000941), propget, helpcontext(0x00010941)]
		IDispatch* ActiveSheetView();
[id(0x00000939), helpcontext(0x00010939)]
		VARIANT PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName);
[id(0x00000942), propget, helpcontext(0x00010942)]
		VARIANT_BOOL DisplayRuler();
[id(0x00000942), propput, helpcontext(0x00010942)]
		void DisplayRuler(
			[in]VARIANT_BOOL arg1);
[id(0x00000943), propget, helpcontext(0x00010943)]
		VARIANT_BOOL AutoFilterDateGrouping();
[id(0x00000943), propput, helpcontext(0x00010943)]
		void AutoFilterDateGrouping(
			[in]VARIANT_BOOL arg1);
[id(0x00000944), propget, helpcontext(0x00010944)]
		VARIANT_BOOL DisplayWhitespace();
[id(0x00000944), propput, helpcontext(0x00010944)]
		void DisplayWhitespace(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelWindow categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelWindow methodsFor!

_displayRightToLeft
	"Answer the <varbool> value of the '_DisplayRightToLeft' property of the receiver.
		VARIANT_BOOL _DisplayRightToLeft"

	^(self getPropertyId: 648)
!

_displayRightToLeft: arg1
	"Set the '_DisplayRightToLeft' property of the receiver to the <varbool> value of the argument.
		void _DisplayRightToLeft"

	self setPropertyId: 648 value: arg1
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

	^(self invokeId: 1772 withArguments:
			((Array new: 8)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				basicAt: 8 put: prToFileName;
				yourself))
!

activate
	"Answer the <VARIANT> result of invoking the Activate() method of the COM object."

	^(self invokeId: 304)
!

activateNext
	"Answer the <VARIANT> result of invoking the ActivateNext() method of the COM object."

	^(self invokeId: 1115)
!

activatePrevious
	"Answer the <VARIANT> result of invoking the ActivatePrevious() method of the COM object."

	^(self invokeId: 1116)
!

activeCell
	"Answer the <ExcelRange> value of the 'ActiveCell' property of the receiver.
		Range* ActiveCell"

	^ExcelRange attachInterface: (self getPropertyId: 305)
!

activeChart
	"Answer the <Excel_Chart> value of the 'ActiveChart' property of the receiver.
		Chart* ActiveChart"

	^Excel_Chart attachInterface: (self getPropertyId: 183)
!

activePane
	"Answer the <ExcelPane> value of the 'ActivePane' property of the receiver.
		Pane* ActivePane"

	^ExcelPane attachInterface: (self getPropertyId: 642)
!

activeSheet
	"Answer the <IDispatch> value of the 'ActiveSheet' property of the receiver.
		IDispatch* ActiveSheet"

	^IDispatch attachInterface: (self getPropertyId: 307)
!

activeSheetView
	"Answer the <IDispatch> value of the 'ActiveSheetView' property of the receiver.
		IDispatch* ActiveSheetView"

	^IDispatch attachInterface: (self getPropertyId: 2369)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoFilterDateGrouping
	"Answer the <varbool> value of the 'AutoFilterDateGrouping' property of the receiver.
		VARIANT_BOOL AutoFilterDateGrouping"

	^(self getPropertyId: 2371)
!

autoFilterDateGrouping: arg1
	"Set the 'AutoFilterDateGrouping' property of the receiver to the <varbool> value of the argument.
		void AutoFilterDateGrouping"

	self setPropertyId: 2371 value: arg1
!

caption
	"Answer the <variant> value of the 'Caption' property of the receiver.
		VARIANT Caption"

	^(self getPropertyId: 139)
!

caption: arg1
	"Set the 'Caption' property of the receiver to the <variant> value of the argument.
		void Caption"

	self setPropertyId: 139 value: arg1
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

	^(self invokeId: 277 withArguments:
			((Array new: 3)
				basicAt: 1 put: saveChanges;
				basicAt: 2 put: filename;
				basicAt: 3 put: routeWorkbook;
				yourself))
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

displayFormulas
	"Answer the <varbool> value of the 'DisplayFormulas' property of the receiver.
		VARIANT_BOOL DisplayFormulas"

	^(self getPropertyId: 644)
!

displayFormulas: arg1
	"Set the 'DisplayFormulas' property of the receiver to the <varbool> value of the argument.
		void DisplayFormulas"

	self setPropertyId: 644 value: arg1
!

displayGridlines
	"Answer the <varbool> value of the 'DisplayGridlines' property of the receiver.
		VARIANT_BOOL DisplayGridlines"

	^(self getPropertyId: 645)
!

displayGridlines: arg1
	"Set the 'DisplayGridlines' property of the receiver to the <varbool> value of the argument.
		void DisplayGridlines"

	self setPropertyId: 645 value: arg1
!

displayHeadings
	"Answer the <varbool> value of the 'DisplayHeadings' property of the receiver.
		VARIANT_BOOL DisplayHeadings"

	^(self getPropertyId: 646)
!

displayHeadings: arg1
	"Set the 'DisplayHeadings' property of the receiver to the <varbool> value of the argument.
		void DisplayHeadings"

	self setPropertyId: 646 value: arg1
!

displayHorizontalScrollBar
	"Answer the <varbool> value of the 'DisplayHorizontalScrollBar' property of the receiver.
		VARIANT_BOOL DisplayHorizontalScrollBar"

	^(self getPropertyId: 921)
!

displayHorizontalScrollBar: arg1
	"Set the 'DisplayHorizontalScrollBar' property of the receiver to the <varbool> value of the argument.
		void DisplayHorizontalScrollBar"

	self setPropertyId: 921 value: arg1
!

displayOutline
	"Answer the <varbool> value of the 'DisplayOutline' property of the receiver.
		VARIANT_BOOL DisplayOutline"

	^(self getPropertyId: 647)
!

displayOutline: arg1
	"Set the 'DisplayOutline' property of the receiver to the <varbool> value of the argument.
		void DisplayOutline"

	self setPropertyId: 647 value: arg1
!

displayRightToLeft
	"Answer the <varbool> value of the 'DisplayRightToLeft' property of the receiver.
		VARIANT_BOOL DisplayRightToLeft"

	^(self getPropertyId: 1774)
!

displayRightToLeft: arg1
	"Set the 'DisplayRightToLeft' property of the receiver to the <varbool> value of the argument.
		void DisplayRightToLeft"

	self setPropertyId: 1774 value: arg1
!

displayRuler
	"Answer the <varbool> value of the 'DisplayRuler' property of the receiver.
		VARIANT_BOOL DisplayRuler"

	^(self getPropertyId: 2370)
!

displayRuler: arg1
	"Set the 'DisplayRuler' property of the receiver to the <varbool> value of the argument.
		void DisplayRuler"

	self setPropertyId: 2370 value: arg1
!

displayVerticalScrollBar
	"Answer the <varbool> value of the 'DisplayVerticalScrollBar' property of the receiver.
		VARIANT_BOOL DisplayVerticalScrollBar"

	^(self getPropertyId: 922)
!

displayVerticalScrollBar: arg1
	"Set the 'DisplayVerticalScrollBar' property of the receiver to the <varbool> value of the argument.
		void DisplayVerticalScrollBar"

	self setPropertyId: 922 value: arg1
!

displayWhitespace
	"Answer the <varbool> value of the 'DisplayWhitespace' property of the receiver.
		VARIANT_BOOL DisplayWhitespace"

	^(self getPropertyId: 2372)
!

displayWhitespace: arg1
	"Set the 'DisplayWhitespace' property of the receiver to the <varbool> value of the argument.
		void DisplayWhitespace"

	self setPropertyId: 2372 value: arg1
!

displayWorkbookTabs
	"Answer the <varbool> value of the 'DisplayWorkbookTabs' property of the receiver.
		VARIANT_BOOL DisplayWorkbookTabs"

	^(self getPropertyId: 923)
!

displayWorkbookTabs: arg1
	"Set the 'DisplayWorkbookTabs' property of the receiver to the <varbool> value of the argument.
		void DisplayWorkbookTabs"

	self setPropertyId: 923 value: arg1
!

displayZeros
	"Answer the <varbool> value of the 'DisplayZeros' property of the receiver.
		VARIANT_BOOL DisplayZeros"

	^(self getPropertyId: 649)
!

displayZeros: arg1
	"Set the 'DisplayZeros' property of the receiver to the <varbool> value of the argument.
		void DisplayZeros"

	self setPropertyId: 649 value: arg1
!

enableResize
	"Answer the <varbool> value of the 'EnableResize' property of the receiver.
		VARIANT_BOOL EnableResize"

	^(self getPropertyId: 1192)
!

enableResize: arg1
	"Set the 'EnableResize' property of the receiver to the <varbool> value of the argument.
		void EnableResize"

	self setPropertyId: 1192 value: arg1
!

freezePanes
	"Answer the <varbool> value of the 'FreezePanes' property of the receiver.
		VARIANT_BOOL FreezePanes"

	^(self getPropertyId: 650)
!

freezePanes: arg1
	"Set the 'FreezePanes' property of the receiver to the <varbool> value of the argument.
		void FreezePanes"

	self setPropertyId: 650 value: arg1
!

gridlineColor
	"Answer the <sdword> value of the 'GridlineColor' property of the receiver.
		long GridlineColor"

	^(self getPropertyId: 651)
!

gridlineColor: arg1
	"Set the 'GridlineColor' property of the receiver to the <sdword> value of the argument.
		void GridlineColor"

	self setPropertyId: 651 value: arg1
!

gridlineColorIndex
	"Answer the <sdword> value of the 'GridlineColorIndex' property of the receiver.
		XlColorIndex GridlineColorIndex"

	^(self getPropertyId: 652)
!

gridlineColorIndex: arg1
	"Set the 'GridlineColorIndex' property of the receiver to the <sdword> value of the argument.
		void GridlineColorIndex"

	self setPropertyId: 652 value: arg1
!

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: 123)
!

height: arg1
	"Set the 'Height' property of the receiver to the <double> value of the argument.
		void Height"

	self setPropertyId: 123 value: arg1
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
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

	^(self invokeId: 547 withArguments:
			((Array new: 4)
				basicAt: 1 put: down;
				basicAt: 2 put: up;
				basicAt: 3 put: toRight;
				basicAt: 4 put: toLeft;
				yourself))
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
!

left: arg1
	"Set the 'Left' property of the receiver to the <double> value of the argument.
		void Left"

	self setPropertyId: 127 value: arg1
!

newWindow
	"Answer the <ExcelWindow> result of invoking the NewWindow() method of the COM object."

	^ExcelWindow attachInterface: (self invokeId: 280)
!

onWindow
	"Answer the <bstr> value of the 'OnWindow' property of the receiver.
		BSTR OnWindow"

	^(self getPropertyId: 623)
!

onWindow: arg1
	"Set the 'OnWindow' property of the receiver to the <bstr> value of the argument.
		void OnWindow"

	self setPropertyId: 623 value: arg1
!

panes
	"Answer the <ExcelPanes> value of the 'Panes' property of the receiver.
		Panes* Panes"

	^ExcelPanes attachInterface: (self getPropertyId: 653)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pointsToScreenPixelsX: points
	"Answer the <SDWORD> result of invoking the PointsToScreenPixelsX() method of the COM object."

	^(self invokeId: 1776 with: points)
!

pointsToScreenPixelsY: points
	"Answer the <SDWORD> result of invoking the PointsToScreenPixelsY() method of the COM object."

	^(self invokeId: 1777 with: points)
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

	^(self invokeId: 2361 withArguments:
			((Array new: 8)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				basicAt: 8 put: prToFileName;
				yourself))
!

printPreview
	"Answer the <VARIANT> result of invoking the PrintPreview() method of the COM object.
	Default values are passed for all optional parameters."

	^self printPreview: VARIANT unspecified!

printPreview: enableChanges
	"Answer the <VARIANT> result of invoking the PrintPreview() method of the COM object."

	^(self invokeId: 281 with: enableChanges)
!

rangeFromPoint: x y: y
	"Answer the <IDispatch> result of invoking the RangeFromPoint() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 1778 with: x with: y)
!

rangeSelection
	"Answer the <ExcelRange> value of the 'RangeSelection' property of the receiver.
		Range* RangeSelection"

	^ExcelRange attachInterface: (self getPropertyId: 1189)
!

scrollColumn
	"Answer the <sdword> value of the 'ScrollColumn' property of the receiver.
		long ScrollColumn"

	^(self getPropertyId: 654)
!

scrollColumn: arg1
	"Set the 'ScrollColumn' property of the receiver to the <sdword> value of the argument.
		void ScrollColumn"

	self setPropertyId: 654 value: arg1
!

scrollIntoView: left top: top width: width height: height
	"Invoke the ScrollIntoView() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 scrollIntoView: left
		 top: top
		 width: width
		 height: height
		 start: VARIANT unspecified!

scrollIntoView: left top: top width: width height: height start: start
	"Invoke the ScrollIntoView() method of the COM object."

	(self invokeId: 1781 withArguments:
			((Array new: 5)
				basicAt: 1 put: left;
				basicAt: 2 put: top;
				basicAt: 3 put: width;
				basicAt: 4 put: height;
				basicAt: 5 put: start;
				yourself))
!

scrollRow
	"Answer the <sdword> value of the 'ScrollRow' property of the receiver.
		long ScrollRow"

	^(self getPropertyId: 655)
!

scrollRow: arg1
	"Set the 'ScrollRow' property of the receiver to the <sdword> value of the argument.
		void ScrollRow"

	self setPropertyId: 655 value: arg1
!

scrollWorkbookTabs
	"Answer the <VARIANT> result of invoking the ScrollWorkbookTabs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 scrollWorkbookTabs: VARIANT unspecified
		 position: VARIANT unspecified!

scrollWorkbookTabs: sheets position: position
	"Answer the <VARIANT> result of invoking the ScrollWorkbookTabs() method of the COM object."

	^(self invokeId: 662 with: sheets with: position)
!

selectedSheets
	"Answer the <ExcelSheets> value of the 'SelectedSheets' property of the receiver.
		Sheets* SelectedSheets"

	^ExcelSheets attachInterface: (self getPropertyId: 656)
!

selection
	"Answer the <IDispatch> value of the 'Selection' property of the receiver.
		IDispatch* Selection"

	^IDispatch attachInterface: (self getPropertyId: 147)
!

sheetViews
	"Answer the <ExcelSheetViews> value of the 'SheetViews' property of the receiver.
		SheetViews* SheetViews"

	^ExcelSheetViews attachInterface: (self getPropertyId: 2368)
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

	^(self invokeId: 548 withArguments:
			((Array new: 4)
				basicAt: 1 put: down;
				basicAt: 2 put: up;
				basicAt: 3 put: toRight;
				basicAt: 4 put: toLeft;
				yourself))
!

split
	"Answer the <varbool> value of the 'Split' property of the receiver.
		VARIANT_BOOL Split"

	^(self getPropertyId: 657)
!

split: arg1
	"Set the 'Split' property of the receiver to the <varbool> value of the argument.
		void Split"

	self setPropertyId: 657 value: arg1
!

splitColumn
	"Answer the <sdword> value of the 'SplitColumn' property of the receiver.
		long SplitColumn"

	^(self getPropertyId: 658)
!

splitColumn: arg1
	"Set the 'SplitColumn' property of the receiver to the <sdword> value of the argument.
		void SplitColumn"

	self setPropertyId: 658 value: arg1
!

splitHorizontal
	"Answer the <double> value of the 'SplitHorizontal' property of the receiver.
		double SplitHorizontal"

	^(self getPropertyId: 659)
!

splitHorizontal: arg1
	"Set the 'SplitHorizontal' property of the receiver to the <double> value of the argument.
		void SplitHorizontal"

	self setPropertyId: 659 value: arg1
!

splitRow
	"Answer the <sdword> value of the 'SplitRow' property of the receiver.
		long SplitRow"

	^(self getPropertyId: 660)
!

splitRow: arg1
	"Set the 'SplitRow' property of the receiver to the <sdword> value of the argument.
		void SplitRow"

	self setPropertyId: 660 value: arg1
!

splitVertical
	"Answer the <double> value of the 'SplitVertical' property of the receiver.
		double SplitVertical"

	^(self getPropertyId: 661)
!

splitVertical: arg1
	"Set the 'SplitVertical' property of the receiver to the <double> value of the argument.
		void SplitVertical"

	self setPropertyId: 661 value: arg1
!

tabRatio
	"Answer the <double> value of the 'TabRatio' property of the receiver.
		double TabRatio"

	^(self getPropertyId: 673)
!

tabRatio: arg1
	"Set the 'TabRatio' property of the receiver to the <double> value of the argument.
		void TabRatio"

	self setPropertyId: 673 value: arg1
!

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: 126)
!

top: arg1
	"Set the 'Top' property of the receiver to the <double> value of the argument.
		void Top"

	self setPropertyId: 126 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlWindowType Type"

	^(self getPropertyId: 108)
!

usableHeight
	"Answer the <double> value of the 'UsableHeight' property of the receiver.
		double UsableHeight"

	^(self getPropertyId: 389)
!

usableWidth
	"Answer the <double> value of the 'UsableWidth' property of the receiver.
		double UsableWidth"

	^(self getPropertyId: 390)
!

view
	"Answer the <sdword> value of the 'View' property of the receiver.
		XlWindowView View"

	^(self getPropertyId: 1194)
!

view: arg1
	"Set the 'View' property of the receiver to the <sdword> value of the argument.
		void View"

	self setPropertyId: 1194 value: arg1
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver.
		VARIANT_BOOL Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
!

visibleRange
	"Answer the <ExcelRange> value of the 'VisibleRange' property of the receiver.
		Range* VisibleRange"

	^ExcelRange attachInterface: (self getPropertyId: 1118)
!

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: 122)
!

width: arg1
	"Set the 'Width' property of the receiver to the <double> value of the argument.
		void Width"

	self setPropertyId: 122 value: arg1
!

windowNumber
	"Answer the <sdword> value of the 'WindowNumber' property of the receiver.
		long WindowNumber"

	^(self getPropertyId: 1119)
!

windowState
	"Answer the <sdword> value of the 'WindowState' property of the receiver.
		XlWindowState WindowState"

	^(self getPropertyId: 396)
!

windowState: arg1
	"Set the 'WindowState' property of the receiver to the <sdword> value of the argument.
		void WindowState"

	self setPropertyId: 396 value: arg1
!

zoom
	"Answer the <variant> value of the 'Zoom' property of the receiver.
		VARIANT Zoom"

	^(self getPropertyId: 663)
!

zoom: arg1
	"Set the 'Zoom' property of the receiver to the <variant> value of the argument.
		void Zoom"

	self setPropertyId: 663 value: arg1
! !
!ExcelWindow categoriesFor: #_displayRightToLeft!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #_displayRightToLeft:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #_printOut!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #activateNext!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #activatePrevious!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #activeCell!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #activeChart!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #activePane!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #activeSheet!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #activeSheetView!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #autoFilterDateGrouping!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #autoFilterDateGrouping:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #close!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #close:filename:routeWorkbook:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayFormulas!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayFormulas:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayGridlines!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayGridlines:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayHeadings!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayHeadings:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayHorizontalScrollBar!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayHorizontalScrollBar:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayOutline!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayOutline:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayRightToLeft!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayRightToLeft:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayRuler!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayRuler:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayVerticalScrollBar!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayVerticalScrollBar:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayWhitespace!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayWhitespace:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayWorkbookTabs!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayWorkbookTabs:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayZeros!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #displayZeros:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #enableResize!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #enableResize:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #freezePanes!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #freezePanes:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #gridlineColor!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #gridlineColor:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #gridlineColorIndex!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #gridlineColorIndex:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #height!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #index!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #largeScroll!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #largeScroll:up:toRight:toLeft:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #left!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #newWindow!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #onWindow!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #onWindow:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #panes!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #pointsToScreenPixelsX:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #pointsToScreenPixelsY:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #printOut!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #printPreview!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #printPreview:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #rangeFromPoint:y:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #rangeSelection!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #scrollColumn!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #scrollColumn:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #scrollIntoView:top:width:height:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #scrollIntoView:top:width:height:start:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #scrollRow!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #scrollRow:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #scrollWorkbookTabs!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #scrollWorkbookTabs:position:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #selectedSheets!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #selection!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #sheetViews!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #smallScroll!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #smallScroll:up:toRight:toLeft:!**auto generated**!methods!public! !
!ExcelWindow categoriesFor: #split!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #split:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #splitColumn!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #splitColumn:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #splitHorizontal!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #splitHorizontal:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #splitRow!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #splitRow:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #splitVertical!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #splitVertical:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #tabRatio!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #tabRatio:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #top!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #type!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #usableHeight!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #usableWidth!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #view!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #view:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #visibleRange!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #width!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #width:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #windowNumber!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #windowState!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #windowState:!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #zoom!**auto generated**!properties!public! !
!ExcelWindow categoriesFor: #zoom:!**auto generated**!properties!public! !

!ExcelWindow class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWindow initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWindow class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

