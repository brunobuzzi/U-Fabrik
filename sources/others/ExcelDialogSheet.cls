"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDialogSheet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDialogSheet guid: (IID fromString: '{000208AF-0000-0000-C000-000000000046}')!
ExcelDialogSheet comment: '<ExcelDialogSheet> is a wrapper class generated for the dispatch interface ''Excel.DialogSheet'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208AF-0000-0000-C000-000000000046), 
	helpcontext(0x0002006f), 
	hidden
]
dispinterface DialogSheet {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000130), helpcontext(0x00010130)]
		void Activate();
[id(0x00000227), helpcontext(0x00010227)]
		void Copy(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x0000055d), propget, helpcontext(0x0001055d)]
		BSTR CodeName();
[id(0x80010000), propget, helpcontext(0x80020000)]
		BSTR _CodeName();
[id(0x80010000), propput, helpcontext(0x80020000)]
		void _CodeName(
			[in]BSTR arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x0000027d), helpcontext(0x0001027d)]
		void Move(
			[in, optional]VARIANT Before,
			[in, optional]VARIANT After);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000001f6), propget, helpcontext(0x000101f6)]
		IDispatch* Next();
[id(0x00000274), hidden, propget, helpcontext(0x00010274)]
		BSTR OnDoubleClick();
[id(0x00000274), hidden, propput, helpcontext(0x00010274)]
		void OnDoubleClick(
			[in]BSTR arg1);
[id(0x00000407), hidden, propget, helpcontext(0x00010407)]
		BSTR OnSheetActivate();
[id(0x00000407), hidden, propput, helpcontext(0x00010407)]
		void OnSheetActivate(
			[in]BSTR arg1);
[id(0x00000439), hidden, propget, helpcontext(0x00010439)]
		BSTR OnSheetDeactivate();
[id(0x00000439), hidden, propput, helpcontext(0x00010439)]
		void OnSheetDeactivate(
			[in]BSTR arg1);
[id(0x000003e6), propget, helpcontext(0x000103e6)]
		PageSetup* PageSetup();
[id(0x000001f7), propget, helpcontext(0x000101f7)]
		IDispatch* Previous();
[id(0x00000389), hidden, helpcontext(0x00010389)]
		void __PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate);
[id(0x00000119), helpcontext(0x00010119)]
		void PrintPreview(
			[in, optional]VARIANT EnableChanges);
[id(0x0000011a), hidden, helpcontext(0x0001011a)]
		void _Protect(
			[in, optional]VARIANT Password,
			[in, optional]VARIANT DrawingObjects,
			[in, optional]VARIANT Contents,
			[in, optional]VARIANT Scenarios,
			[in, optional]VARIANT UserInterfaceOnly);
[id(0x00000124), propget, helpcontext(0x00010124)]
		VARIANT_BOOL ProtectContents();
[id(0x00000125), propget, helpcontext(0x00010125)]
		VARIANT_BOOL ProtectDrawingObjects();
[id(0x00000487), propget, helpcontext(0x00010487)]
		VARIANT_BOOL ProtectionMode();
[id(0x00000126), propget, helpcontext(0x00010126)]
		VARIANT_BOOL ProtectScenarios();
[id(0x0000011c), hidden, helpcontext(0x0001011c)]
		void _SaveAs(
			[in]BSTR Filename,
			[in, optional]VARIANT FileFormat,
			[in, optional]VARIANT Password,
			[in, optional]VARIANT WriteResPassword,
			[in, optional]VARIANT ReadOnlyRecommended,
			[in, optional]VARIANT CreateBackup,
			[in, optional]VARIANT AddToMru,
			[in, optional]VARIANT TextCodepage,
			[in, optional]VARIANT TextVisualLayout);
[id(0x000000eb), helpcontext(0x000100eb)]
		void Select(
			[in, optional]VARIANT Replace);
[id(0x0000011d), helpcontext(0x0001011d)]
		void Unprotect(
			[in, optional]VARIANT Password);
[id(0x0000022e), propget, helpcontext(0x0001022e)]
		XlSheetVisibility Visible();
[id(0x0000022e), propput, helpcontext(0x0001022e)]
		void Visible(
			[in]XlSheetVisibility arg1);
[id(0x00000561), propget, helpcontext(0x00010561)]
		Shapes* Shapes();
[id(0x0001001d), hidden, restricted]
		void _Dummy29();
[id(0x000002f8), hidden, helpcontext(0x000102f8)]
		IDispatch* Arcs(
			[in, optional]VARIANT Index);
[id(0x0001001f), hidden, restricted]
		void _Dummy31();
[id(0x00010020), hidden, restricted]
		void _Dummy32();
[id(0x0000022d), hidden, helpcontext(0x0001022d)]
		IDispatch* Buttons(
			[in, optional]VARIANT Index);
[id(0x00010022), hidden, restricted]
		void _Dummy34();
[id(0x00000590), propget, helpcontext(0x00010590)]
		VARIANT_BOOL EnableCalculation();
[id(0x00000590), propput, helpcontext(0x00010590)]
		void EnableCalculation(
			[in]VARIANT_BOOL arg1);
[id(0x00010024), hidden, restricted]
		void _Dummy36();
[id(0x00000424), helpcontext(0x00010424)]
		IDispatch* ChartObjects(
			[in, optional]VARIANT Index);
[id(0x00000338), hidden, helpcontext(0x00010338)]
		IDispatch* CheckBoxes(
			[in, optional]VARIANT Index);
[id(0x000001f9), helpcontext(0x000101f9)]
		void CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang);
[id(0x00010028), hidden, restricted]
		void _Dummy40();
[id(0x00010029), hidden, restricted]
		void _Dummy41();
[id(0x0001002a), hidden, restricted]
		void _Dummy42();
[id(0x0001002b), hidden, restricted]
		void _Dummy43();
[id(0x0001002c), hidden, restricted]
		void _Dummy44();
[id(0x0001002d), hidden, restricted]
		void _Dummy45();
[id(0x00000283), hidden, propget, helpcontext(0x00010283)]
		VARIANT_BOOL DisplayAutomaticPageBreaks();
[id(0x00000283), hidden, propput, helpcontext(0x00010283)]
		void DisplayAutomaticPageBreaks(
			[in]VARIANT_BOOL arg1);
[id(0x00000304), hidden, helpcontext(0x00010304)]
		IDispatch* Drawings(
			[in, optional]VARIANT Index);
[id(0x00000058), hidden, helpcontext(0x00010058)]
		IDispatch* DrawingObjects(
			[in, optional]VARIANT Index);
[id(0x00000344), hidden, helpcontext(0x00010344)]
		IDispatch* DropDowns(
			[in, optional]VARIANT Index);
[id(0x00000484), propget, helpcontext(0x00010484)]
		VARIANT_BOOL EnableAutoFilter();
[id(0x00000484), propput, helpcontext(0x00010484)]
		void EnableAutoFilter(
			[in]VARIANT_BOOL arg1);
[id(0x00000591), propget, helpcontext(0x00010591)]
		XlEnableSelection EnableSelection();
[id(0x00000591), propput, helpcontext(0x00010591)]
		void EnableSelection(
			[in]XlEnableSelection arg1);
[id(0x00000485), propget, helpcontext(0x00010485)]
		VARIANT_BOOL EnableOutlining();
[id(0x00000485), propput, helpcontext(0x00010485)]
		void EnableOutlining(
			[in]VARIANT_BOOL arg1);
[id(0x00000486), propget, helpcontext(0x00010486)]
		VARIANT_BOOL EnablePivotTable();
[id(0x00000486), propput, helpcontext(0x00010486)]
		void EnablePivotTable(
			[in]VARIANT_BOOL arg1);
[id(0x00000001), helpcontext(0x00010001)]
		VARIANT Evaluate(
			[in]VARIANT Name);
[id(0xfffffffb), helpcontext(0x0000fffb)]
		VARIANT _Evaluate(
			[in]VARIANT Name);
[id(0x00010038), hidden, restricted]
		void _Dummy56();
[id(0x00000592), helpcontext(0x00010592)]
		void ResetAllPageBreaks();
[id(0x00000342), hidden, helpcontext(0x00010342)]
		IDispatch* GroupBoxes(
			[in, optional]VARIANT Index);
[id(0x00000459), hidden, helpcontext(0x00010459)]
		IDispatch* GroupObjects(
			[in, optional]VARIANT Index);
[id(0x00000349), hidden, helpcontext(0x00010349)]
		IDispatch* Labels(
			[in, optional]VARIANT Index);
[id(0x000002ff), hidden, helpcontext(0x000102ff)]
		IDispatch* Lines(
			[in, optional]VARIANT Index);
[id(0x00000340), hidden, helpcontext(0x00010340)]
		IDispatch* ListBoxes(
			[in, optional]VARIANT Index);
[id(0x000001ba), propget, helpcontext(0x000101ba)]
		Names* Names();
[id(0x0000031f), helpcontext(0x0001031f)]
		IDispatch* OLEObjects(
			[in, optional]VARIANT Index);
[id(0x00010041), hidden, restricted]
		void _Dummy65();
[id(0x00010042), hidden, restricted]
		void _Dummy66();
[id(0x00010043), hidden, restricted]
		void _Dummy67();
[id(0x0000033a), hidden, helpcontext(0x0001033a)]
		IDispatch* OptionButtons(
			[in, optional]VARIANT Index);
[id(0x00010045), hidden, restricted]
		void _Dummy69();
[id(0x00000321), hidden, helpcontext(0x00010321)]
		IDispatch* Ovals(
			[in, optional]VARIANT Index);
[id(0x000000d3), helpcontext(0x000100d3)]
		void Paste(
			[in, optional]VARIANT Destination,
			[in, optional]VARIANT Link);
[id(0x00000403), hidden, helpcontext(0x00010403)]
		void _PasteSpecial(
			[in, optional]VARIANT Format,
			[in, optional]VARIANT Link,
			[in, optional]VARIANT DisplayAsIcon,
			[in, optional]VARIANT IconFileName,
			[in, optional]VARIANT IconIndex,
			[in, optional]VARIANT IconLabel);
[id(0x00000303), hidden, helpcontext(0x00010303)]
		IDispatch* Pictures(
			[in, optional]VARIANT Index);
[id(0x0001004a), hidden, restricted]
		void _Dummy74();
[id(0x0001004b), hidden, restricted]
		void _Dummy75();
[id(0x0001004c), hidden, restricted]
		void _Dummy76();
[id(0x00000306), hidden, helpcontext(0x00010306)]
		IDispatch* Rectangles(
			[in, optional]VARIANT Index);
[id(0x0001004e), hidden, restricted]
		void _Dummy78();
[id(0x0001004f), hidden, restricted]
		void _Dummy79();
[id(0x00000599), propget, helpcontext(0x00010599)]
		BSTR ScrollArea();
[id(0x00000599), propput, helpcontext(0x00010599)]
		void ScrollArea(
			[in]BSTR arg1);
[id(0x0000033e), hidden, helpcontext(0x0001033e)]
		IDispatch* ScrollBars(
			[in, optional]VARIANT Index);
[id(0x00010052), hidden, restricted]
		void _Dummy82();
[id(0x00010053), hidden, restricted]
		void _Dummy83();
[id(0x00000346), hidden, helpcontext(0x00010346)]
		IDispatch* Spinners(
			[in, optional]VARIANT Index);
[id(0x00010055), hidden, restricted]
		void _Dummy85();
[id(0x00010056), hidden, restricted]
		void _Dummy86();
[id(0x00000309), hidden, helpcontext(0x00010309)]
		IDispatch* TextBoxes(
			[in, optional]VARIANT Index);
[id(0x00010058), hidden, restricted]
		void _Dummy88();
[id(0x00010059), hidden, restricted]
		void _Dummy89();
[id(0x0001005a), hidden, restricted]
		void _Dummy90();
[id(0x0000058a), propget, helpcontext(0x0001058a)]
		HPageBreaks* HPageBreaks();
[id(0x0000058b), propget, helpcontext(0x0001058b)]
		VPageBreaks* VPageBreaks();
[id(0x0000059a), propget, helpcontext(0x0001059a)]
		QueryTables* QueryTables();
[id(0x0000059b), propget, helpcontext(0x0001059b)]
		VARIANT_BOOL DisplayPageBreaks();
[id(0x0000059b), propput, helpcontext(0x0001059b)]
		void DisplayPageBreaks(
			[in]VARIANT_BOOL arg1);
[id(0x0000023f), propget, helpcontext(0x0001023f)]
		Comments* Comments();
[id(0x00000571), propget, helpcontext(0x00010571)]
		Hyperlinks* Hyperlinks();
[id(0x0000059c), helpcontext(0x0001059c)]
		void ClearCircles();
[id(0x0000059d), helpcontext(0x0001059d)]
		void CircleInvalid();
[id(0x00000288), hidden, propget, helpcontext(0x00010288)]
		long _DisplayRightToLeft();
[id(0x00000288), hidden, propput, helpcontext(0x00010288)]
		void _DisplayRightToLeft(
			[in]long arg1);
[id(0x00000319), propget, helpcontext(0x00010319)]
		AutoFilter* AutoFilter();
[id(0x000006ee), propget, helpcontext(0x000106ee)]
		VARIANT_BOOL DisplayRightToLeft();
[id(0x000006ee), propput, helpcontext(0x000106ee)]
		void DisplayRightToLeft(
			[in]VARIANT_BOOL arg1);
[id(0x00000718), hidden, propget, helpcontext(0x00010718)]
		Scripts* Scripts();
[id(0x000006ec), hidden, helpcontext(0x000106ec)]
		void _PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName);
[id(0x00000719), hidden, helpcontext(0x00010719)]
		void _CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang,
			[in, optional]VARIANT IgnoreFinalYaa,
			[in, optional]VARIANT SpellScript);
[id(0x00000411), propget, helpcontext(0x00010411)]
		Tab* Tab();
[id(0x000007e5), propget, helpcontext(0x000107e5)]
		MsoEnvelope* MailEnvelope();
[id(0x00000785), helpcontext(0x00010785)]
		void SaveAs(
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
		CustomProperties* CustomProperties();
[id(0x000007e0), propget, helpcontext(0x000107e0)]
		SmartTags* SmartTags();
[id(0x000000b0), propget, helpcontext(0x000100b0)]
		Protection* Protection();
[id(0x00000788), helpcontext(0x00010788)]
		void PasteSpecial(
			[in, optional]VARIANT Format,
			[in, optional]VARIANT Link,
			[in, optional]VARIANT DisplayAsIcon,
			[in, optional]VARIANT IconFileName,
			[in, optional]VARIANT IconIndex,
			[in, optional]VARIANT IconLabel,
			[in, optional]VARIANT NoHTMLFormatting);
[id(0x000007ed), helpcontext(0x000107ed)]
		void Protect(
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
[id(0x00010071), hidden, restricted]
		void _Dummy113();
[id(0x00010072), hidden, restricted]
		void _Dummy114();
[id(0x00010073), hidden, restricted]
		void _Dummy115();
[id(0x00000939), helpcontext(0x00010939)]
		void PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName);
[id(0x000009cf), propget, helpcontext(0x000109cf)]
		VARIANT_BOOL EnableFormatConditionsCalculation();
[id(0x000009cf), propput, helpcontext(0x000109cf)]
		void EnableFormatConditionsCalculation(
			[in]VARIANT_BOOL arg1);
[id(0x00000370), propget, helpcontext(0x00010370)]
		Sort* Sort();
[id(0x000009bd), helpcontext(0x000109bd)]
		void ExportAsFixedFormat(
			[in]XlFixedFormatType Type,
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT Quality,
			[in, optional]VARIANT IncludeDocProperties,
			[in, optional]VARIANT IgnorePrintAreas,
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT OpenAfterPublish,
			[in, optional]VARIANT FixedFormatExtClassPtr);
[id(0x00000359), propget, helpcontext(0x00010359)]
		VARIANT DefaultButton();
[id(0x00000359), propput, helpcontext(0x00010359)]
		void DefaultButton(
			[in]VARIANT arg1);
[id(0x00000347), hidden, propget, helpcontext(0x00010347)]
		DialogFrame* DialogFrame();
[id(0x0000033c), hidden, helpcontext(0x0001033c)]
		IDispatch* EditBoxes(
			[in, optional]VARIANT Index);
[id(0x0000032e), propget, helpcontext(0x0001032e)]
		VARIANT Focus();
[id(0x0000032e), propput, helpcontext(0x0001032e)]
		void Focus(
			[in]VARIANT arg1);
[id(0x0000032d), helpcontext(0x0001032d)]
		VARIANT_BOOL Hide(
			[in, optional]VARIANT Cancel);
[id(0x000001f0), helpcontext(0x000101f0)]
		VARIANT_BOOL Show();
};
'!
!ExcelDialogSheet categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDialogSheet methodsFor!

__printOut
	"Invoke the __PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 __printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified!

__printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Invoke the __PrintOut() method of the COM object."

	(self invokeId: 905 withArguments:
			((Array new: 7)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				yourself))
!

_checkSpelling
	"Invoke the _CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 _checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified
		 ignoreFinalYaa: VARIANT unspecified
		 spellScript: VARIANT unspecified!

_checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang ignoreFinalYaa: ignoreFinalYaa spellScript: spellScript
	"Invoke the _CheckSpelling() method of the COM object."

	(self invokeId: 1817 withArguments:
			((Array new: 6)
				basicAt: 1 put: customDictionary;
				basicAt: 2 put: ignoreUppercase;
				basicAt: 3 put: alwaysSuggest;
				basicAt: 4 put: spellLang;
				basicAt: 5 put: ignoreFinalYaa;
				basicAt: 6 put: spellScript;
				yourself))
!

_codeName
	"Answer the <bstr> value of the '_CodeName' property of the receiver.
		BSTR _CodeName"

	^(self getPropertyId: -2147418112)
!

_codeName: arg1
	"Set the '_CodeName' property of the receiver to the <bstr> value of the argument.
		void _CodeName"

	self setPropertyId: -2147418112 value: arg1
!

_displayRightToLeft
	"Answer the <sdword> value of the '_DisplayRightToLeft' property of the receiver.
		long _DisplayRightToLeft"

	^(self getPropertyId: 648)
!

_displayRightToLeft: arg1
	"Set the '_DisplayRightToLeft' property of the receiver to the <sdword> value of the argument.
		void _DisplayRightToLeft"

	self setPropertyId: 648 value: arg1
!

_dummy113
	"Invoke the _Dummy113() method of the COM object."

	(self invokeId: 65649)
!

_dummy114
	"Invoke the _Dummy114() method of the COM object."

	(self invokeId: 65650)
!

_dummy115
	"Invoke the _Dummy115() method of the COM object."

	(self invokeId: 65651)
!

_dummy29
	"Invoke the _Dummy29() method of the COM object."

	(self invokeId: 65565)
!

_dummy31
	"Invoke the _Dummy31() method of the COM object."

	(self invokeId: 65567)
!

_dummy32
	"Invoke the _Dummy32() method of the COM object."

	(self invokeId: 65568)
!

_dummy34
	"Invoke the _Dummy34() method of the COM object."

	(self invokeId: 65570)
!

_dummy36
	"Invoke the _Dummy36() method of the COM object."

	(self invokeId: 65572)
!

_dummy40
	"Invoke the _Dummy40() method of the COM object."

	(self invokeId: 65576)
!

_dummy41
	"Invoke the _Dummy41() method of the COM object."

	(self invokeId: 65577)
!

_dummy42
	"Invoke the _Dummy42() method of the COM object."

	(self invokeId: 65578)
!

_dummy43
	"Invoke the _Dummy43() method of the COM object."

	(self invokeId: 65579)
!

_dummy44
	"Invoke the _Dummy44() method of the COM object."

	(self invokeId: 65580)
!

_dummy45
	"Invoke the _Dummy45() method of the COM object."

	(self invokeId: 65581)
!

_dummy56
	"Invoke the _Dummy56() method of the COM object."

	(self invokeId: 65592)
!

_dummy65
	"Invoke the _Dummy65() method of the COM object."

	(self invokeId: 65601)
!

_dummy66
	"Invoke the _Dummy66() method of the COM object."

	(self invokeId: 65602)
!

_dummy67
	"Invoke the _Dummy67() method of the COM object."

	(self invokeId: 65603)
!

_dummy69
	"Invoke the _Dummy69() method of the COM object."

	(self invokeId: 65605)
!

_dummy74
	"Invoke the _Dummy74() method of the COM object."

	(self invokeId: 65610)
!

_dummy75
	"Invoke the _Dummy75() method of the COM object."

	(self invokeId: 65611)
!

_dummy76
	"Invoke the _Dummy76() method of the COM object."

	(self invokeId: 65612)
!

_dummy78
	"Invoke the _Dummy78() method of the COM object."

	(self invokeId: 65614)
!

_dummy79
	"Invoke the _Dummy79() method of the COM object."

	(self invokeId: 65615)
!

_dummy82
	"Invoke the _Dummy82() method of the COM object."

	(self invokeId: 65618)
!

_dummy83
	"Invoke the _Dummy83() method of the COM object."

	(self invokeId: 65619)
!

_dummy85
	"Invoke the _Dummy85() method of the COM object."

	(self invokeId: 65621)
!

_dummy86
	"Invoke the _Dummy86() method of the COM object."

	(self invokeId: 65622)
!

_dummy88
	"Invoke the _Dummy88() method of the COM object."

	(self invokeId: 65624)
!

_dummy89
	"Invoke the _Dummy89() method of the COM object."

	(self invokeId: 65625)
!

_dummy90
	"Invoke the _Dummy90() method of the COM object."

	(self invokeId: 65626)
!

_evaluate: name
	"Answer the <VARIANT> result of invoking the _Evaluate() method of the COM object."

	^(self invokeId: -5 with: name)
!

_pasteSpecial
	"Invoke the _PasteSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 _pasteSpecial: VARIANT unspecified
		 link: VARIANT unspecified
		 displayAsIcon: VARIANT unspecified
		 iconFileName: VARIANT unspecified
		 iconIndex: VARIANT unspecified
		 iconLabel: VARIANT unspecified!

_pasteSpecial: format link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel
	"Invoke the _PasteSpecial() method of the COM object."

	(self invokeId: 1027 withArguments:
			((Array new: 6)
				basicAt: 1 put: format;
				basicAt: 2 put: link;
				basicAt: 3 put: displayAsIcon;
				basicAt: 4 put: iconFileName;
				basicAt: 5 put: iconIndex;
				basicAt: 6 put: iconLabel;
				yourself))
!

_printOut
	"Invoke the _PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 _printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified!

_printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName
	"Invoke the _PrintOut() method of the COM object."

	(self invokeId: 1772 withArguments:
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

_protect
	"Invoke the _Protect() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 _protect: VARIANT unspecified
		 drawingObjects: VARIANT unspecified
		 contents: VARIANT unspecified
		 scenarios: VARIANT unspecified
		 userInterfaceOnly: VARIANT unspecified!

_protect: password drawingObjects: drawingObjects contents: contents scenarios: scenarios userInterfaceOnly: userInterfaceOnly
	"Invoke the _Protect() method of the COM object."

	(self invokeId: 282 withArguments:
			((Array new: 5)
				basicAt: 1 put: password;
				basicAt: 2 put: drawingObjects;
				basicAt: 3 put: contents;
				basicAt: 4 put: scenarios;
				basicAt: 5 put: userInterfaceOnly;
				yourself))
!

_saveAs: filename
	"Invoke the _SaveAs() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 _saveAs: filename
		 fileFormat: VARIANT unspecified
		 password: VARIANT unspecified
		 writeResPassword: VARIANT unspecified
		 readOnlyRecommended: VARIANT unspecified
		 createBackup: VARIANT unspecified
		 addToMru: VARIANT unspecified
		 textCodepage: VARIANT unspecified
		 textVisualLayout: VARIANT unspecified!

_saveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout
	"Invoke the _SaveAs() method of the COM object."

	(self invokeId: 284 withArguments:
			((Array new: 9)
				basicAt: 1 put: filename;
				basicAt: 2 put: fileFormat;
				basicAt: 3 put: password;
				basicAt: 4 put: writeResPassword;
				basicAt: 5 put: readOnlyRecommended;
				basicAt: 6 put: createBackup;
				basicAt: 7 put: addToMru;
				basicAt: 8 put: textCodepage;
				basicAt: 9 put: textVisualLayout;
				yourself))
!

activate
	"Invoke the Activate() method of the COM object."

	(self invokeId: 304)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

arcs
	"Answer the <IDispatch> result of invoking the Arcs() method of the COM object.
	Default values are passed for all optional parameters."

	^self arcs: VARIANT unspecified!

arcs: index
	"Answer the <IDispatch> result of invoking the Arcs() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 760 with: index)
!

autoFilter
	"Answer the <ExcelAutoFilter> value of the 'AutoFilter' property of the receiver.
		AutoFilter* AutoFilter"

	^ExcelAutoFilter attachInterface: (self getPropertyId: 793)
!

buttons
	"Answer the <IDispatch> result of invoking the Buttons() method of the COM object.
	Default values are passed for all optional parameters."

	^self buttons: VARIANT unspecified!

buttons: index
	"Answer the <IDispatch> result of invoking the Buttons() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 557 with: index)
!

chartObjects
	"Answer the <IDispatch> result of invoking the ChartObjects() method of the COM object.
	Default values are passed for all optional parameters."

	^self chartObjects: VARIANT unspecified!

chartObjects: index
	"Answer the <IDispatch> result of invoking the ChartObjects() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 1060 with: index)
!

checkBoxes
	"Answer the <IDispatch> result of invoking the CheckBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self checkBoxes: VARIANT unspecified!

checkBoxes: index
	"Answer the <IDispatch> result of invoking the CheckBoxes() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 824 with: index)
!

checkSpelling
	"Invoke the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified!

checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang
	"Invoke the CheckSpelling() method of the COM object."

	(self invokeId: 505 withArguments:
			((Array new: 4)
				basicAt: 1 put: customDictionary;
				basicAt: 2 put: ignoreUppercase;
				basicAt: 3 put: alwaysSuggest;
				basicAt: 4 put: spellLang;
				yourself))
!

circleInvalid
	"Invoke the CircleInvalid() method of the COM object."

	(self invokeId: 1437)
!

clearCircles
	"Invoke the ClearCircles() method of the COM object."

	(self invokeId: 1436)
!

codeName
	"Answer the <bstr> value of the 'CodeName' property of the receiver.
		BSTR CodeName"

	^(self getPropertyId: 1373)
!

comments
	"Answer the <ExcelComments> value of the 'Comments' property of the receiver.
		Comments* Comments"

	^ExcelComments attachInterface: (self getPropertyId: 575)
!

copy
	"Invoke the Copy() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 copy: VARIANT unspecified
		 after: VARIANT unspecified!

copy: before after: after
	"Invoke the Copy() method of the COM object."

	(self invokeId: 551 with: before with: after)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

customProperties
	"Answer the <ExcelCustomProperties> value of the 'CustomProperties' property of the receiver.
		CustomProperties* CustomProperties"

	^ExcelCustomProperties attachInterface: (self getPropertyId: 2030)
!

defaultButton
	"Answer the <variant> value of the 'DefaultButton' property of the receiver.
		VARIANT DefaultButton"

	^(self getPropertyId: 857)
!

defaultButton: arg1
	"Set the 'DefaultButton' property of the receiver to the <variant> value of the argument.
		void DefaultButton"

	self setPropertyId: 857 value: arg1
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

dialogFrame
	"Answer the <ExcelDialogFrame> value of the 'DialogFrame' property of the receiver.
		DialogFrame* DialogFrame"

	^ExcelDialogFrame attachInterface: (self getPropertyId: 839)
!

displayAutomaticPageBreaks
	"Answer the <varbool> value of the 'DisplayAutomaticPageBreaks' property of the receiver.
		VARIANT_BOOL DisplayAutomaticPageBreaks"

	^(self getPropertyId: 643)
!

displayAutomaticPageBreaks: arg1
	"Set the 'DisplayAutomaticPageBreaks' property of the receiver to the <varbool> value of the argument.
		void DisplayAutomaticPageBreaks"

	self setPropertyId: 643 value: arg1
!

displayPageBreaks
	"Answer the <varbool> value of the 'DisplayPageBreaks' property of the receiver.
		VARIANT_BOOL DisplayPageBreaks"

	^(self getPropertyId: 1435)
!

displayPageBreaks: arg1
	"Set the 'DisplayPageBreaks' property of the receiver to the <varbool> value of the argument.
		void DisplayPageBreaks"

	self setPropertyId: 1435 value: arg1
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

drawingObjects
	"Answer the <IDispatch> result of invoking the DrawingObjects() method of the COM object.
	Default values are passed for all optional parameters."

	^self drawingObjects: VARIANT unspecified!

drawingObjects: index
	"Answer the <IDispatch> result of invoking the DrawingObjects() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 88 with: index)
!

drawings
	"Answer the <IDispatch> result of invoking the Drawings() method of the COM object.
	Default values are passed for all optional parameters."

	^self drawings: VARIANT unspecified!

drawings: index
	"Answer the <IDispatch> result of invoking the Drawings() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 772 with: index)
!

dropDowns
	"Answer the <IDispatch> result of invoking the DropDowns() method of the COM object.
	Default values are passed for all optional parameters."

	^self dropDowns: VARIANT unspecified!

dropDowns: index
	"Answer the <IDispatch> result of invoking the DropDowns() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 836 with: index)
!

editBoxes
	"Answer the <IDispatch> result of invoking the EditBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self editBoxes: VARIANT unspecified!

editBoxes: index
	"Answer the <IDispatch> result of invoking the EditBoxes() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 828 with: index)
!

enableAutoFilter
	"Answer the <varbool> value of the 'EnableAutoFilter' property of the receiver.
		VARIANT_BOOL EnableAutoFilter"

	^(self getPropertyId: 1156)
!

enableAutoFilter: arg1
	"Set the 'EnableAutoFilter' property of the receiver to the <varbool> value of the argument.
		void EnableAutoFilter"

	self setPropertyId: 1156 value: arg1
!

enableCalculation
	"Answer the <varbool> value of the 'EnableCalculation' property of the receiver.
		VARIANT_BOOL EnableCalculation"

	^(self getPropertyId: 1424)
!

enableCalculation: arg1
	"Set the 'EnableCalculation' property of the receiver to the <varbool> value of the argument.
		void EnableCalculation"

	self setPropertyId: 1424 value: arg1
!

enableFormatConditionsCalculation
	"Answer the <varbool> value of the 'EnableFormatConditionsCalculation' property of the receiver.
		VARIANT_BOOL EnableFormatConditionsCalculation"

	^(self getPropertyId: 2511)
!

enableFormatConditionsCalculation: arg1
	"Set the 'EnableFormatConditionsCalculation' property of the receiver to the <varbool> value of the argument.
		void EnableFormatConditionsCalculation"

	self setPropertyId: 2511 value: arg1
!

enableOutlining
	"Answer the <varbool> value of the 'EnableOutlining' property of the receiver.
		VARIANT_BOOL EnableOutlining"

	^(self getPropertyId: 1157)
!

enableOutlining: arg1
	"Set the 'EnableOutlining' property of the receiver to the <varbool> value of the argument.
		void EnableOutlining"

	self setPropertyId: 1157 value: arg1
!

enablePivotTable
	"Answer the <varbool> value of the 'EnablePivotTable' property of the receiver.
		VARIANT_BOOL EnablePivotTable"

	^(self getPropertyId: 1158)
!

enablePivotTable: arg1
	"Set the 'EnablePivotTable' property of the receiver to the <varbool> value of the argument.
		void EnablePivotTable"

	self setPropertyId: 1158 value: arg1
!

enableSelection
	"Answer the <sdword> value of the 'EnableSelection' property of the receiver.
		XlEnableSelection EnableSelection"

	^(self getPropertyId: 1425)
!

enableSelection: arg1
	"Set the 'EnableSelection' property of the receiver to the <sdword> value of the argument.
		void EnableSelection"

	self setPropertyId: 1425 value: arg1
!

evaluate: name
	"Answer the <VARIANT> result of invoking the Evaluate() method of the COM object."

	^(self invokeId: 1 with: name)
!

exportAsFixedFormat: type
	"Invoke the ExportAsFixedFormat() method of the COM object.
	Default values are passed for all optional parameters."

	self
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

	(self invokeId: 2493 withArguments:
			((Array new: 9)
				basicAt: 1 put: type;
				basicAt: 2 put: filename;
				basicAt: 3 put: quality;
				basicAt: 4 put: includeDocProperties;
				basicAt: 5 put: ignorePrintAreas;
				basicAt: 6 put: from;
				basicAt: 7 put: to;
				basicAt: 8 put: openAfterPublish;
				basicAt: 9 put: fixedFormatExtClassPtr;
				yourself))
!

focus
	"Answer the <variant> value of the 'Focus' property of the receiver.
		VARIANT Focus"

	^(self getPropertyId: 814)
!

focus: arg1
	"Set the 'Focus' property of the receiver to the <variant> value of the argument.
		void Focus"

	self setPropertyId: 814 value: arg1
!

groupBoxes
	"Answer the <IDispatch> result of invoking the GroupBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self groupBoxes: VARIANT unspecified!

groupBoxes: index
	"Answer the <IDispatch> result of invoking the GroupBoxes() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 834 with: index)
!

groupObjects
	"Answer the <IDispatch> result of invoking the GroupObjects() method of the COM object.
	Default values are passed for all optional parameters."

	^self groupObjects: VARIANT unspecified!

groupObjects: index
	"Answer the <IDispatch> result of invoking the GroupObjects() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 1113 with: index)
!

hide
	"Answer the <VARIANT_BOOL> result of invoking the Hide() method of the COM object.
	Default values are passed for all optional parameters."

	^self hide: VARIANT unspecified!

hide: cancel
	"Answer the <VARIANT_BOOL> result of invoking the Hide() method of the COM object."

	^(self invokeId: 813 with: cancel)
!

hPageBreaks
	"Answer the <ExcelHPageBreaks> value of the 'HPageBreaks' property of the receiver.
		HPageBreaks* HPageBreaks"

	^ExcelHPageBreaks attachInterface: (self getPropertyId: 1418)
!

hyperlinks
	"Answer the <ExcelHyperlinks> value of the 'Hyperlinks' property of the receiver.
		Hyperlinks* Hyperlinks"

	^ExcelHyperlinks attachInterface: (self getPropertyId: 1393)
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

labels
	"Answer the <IDispatch> result of invoking the Labels() method of the COM object.
	Default values are passed for all optional parameters."

	^self labels: VARIANT unspecified!

labels: index
	"Answer the <IDispatch> result of invoking the Labels() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 841 with: index)
!

lines
	"Answer the <IDispatch> result of invoking the Lines() method of the COM object.
	Default values are passed for all optional parameters."

	^self lines: VARIANT unspecified!

lines: index
	"Answer the <IDispatch> result of invoking the Lines() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 767 with: index)
!

listBoxes
	"Answer the <IDispatch> result of invoking the ListBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self listBoxes: VARIANT unspecified!

listBoxes: index
	"Answer the <IDispatch> result of invoking the ListBoxes() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 832 with: index)
!

mailEnvelope
	"Answer the <OfficeIMsoEnvelopeVB> value of the 'MailEnvelope' property of the receiver.
		MsoEnvelope* MailEnvelope"

	^OfficeIMsoEnvelopeVB attachInterface: (self getPropertyId: 2021)
!

move
	"Invoke the Move() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 move: VARIANT unspecified
		 after: VARIANT unspecified!

move: before after: after
	"Invoke the Move() method of the COM object."

	(self invokeId: 637 with: before with: after)
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

names
	"Answer the <ExcelNames> value of the 'Names' property of the receiver.
		Names* Names"

	^ExcelNames attachInterface: (self getPropertyId: 442)
!

next
	"Answer the <IDispatch> value of the 'Next' property of the receiver.
		IDispatch* Next"

	^IDispatch attachInterface: (self getPropertyId: 502)
!

oleObjects
	"Answer the <IDispatch> result of invoking the OLEObjects() method of the COM object.
	Default values are passed for all optional parameters."

	^self oleObjects: VARIANT unspecified!

oleObjects: index
	"Answer the <IDispatch> result of invoking the OLEObjects() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 799 with: index)
!

onDoubleClick
	"Answer the <bstr> value of the 'OnDoubleClick' property of the receiver.
		BSTR OnDoubleClick"

	^(self getPropertyId: 628)
!

onDoubleClick: arg1
	"Set the 'OnDoubleClick' property of the receiver to the <bstr> value of the argument.
		void OnDoubleClick"

	self setPropertyId: 628 value: arg1
!

onSheetActivate
	"Answer the <bstr> value of the 'OnSheetActivate' property of the receiver.
		BSTR OnSheetActivate"

	^(self getPropertyId: 1031)
!

onSheetActivate: arg1
	"Set the 'OnSheetActivate' property of the receiver to the <bstr> value of the argument.
		void OnSheetActivate"

	self setPropertyId: 1031 value: arg1
!

onSheetDeactivate
	"Answer the <bstr> value of the 'OnSheetDeactivate' property of the receiver.
		BSTR OnSheetDeactivate"

	^(self getPropertyId: 1081)
!

onSheetDeactivate: arg1
	"Set the 'OnSheetDeactivate' property of the receiver to the <bstr> value of the argument.
		void OnSheetDeactivate"

	self setPropertyId: 1081 value: arg1
!

optionButtons
	"Answer the <IDispatch> result of invoking the OptionButtons() method of the COM object.
	Default values are passed for all optional parameters."

	^self optionButtons: VARIANT unspecified!

optionButtons: index
	"Answer the <IDispatch> result of invoking the OptionButtons() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 826 with: index)
!

ovals
	"Answer the <IDispatch> result of invoking the Ovals() method of the COM object.
	Default values are passed for all optional parameters."

	^self ovals: VARIANT unspecified!

ovals: index
	"Answer the <IDispatch> result of invoking the Ovals() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 801 with: index)
!

pageSetup
	"Answer the <ExcelPageSetup> value of the 'PageSetup' property of the receiver.
		PageSetup* PageSetup"

	^ExcelPageSetup attachInterface: (self getPropertyId: 998)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

paste
	"Invoke the Paste() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 paste: VARIANT unspecified
		 link: VARIANT unspecified!

paste: destination link: link
	"Invoke the Paste() method of the COM object."

	(self invokeId: 211 with: destination with: link)
!

pasteSpecial
	"Invoke the PasteSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 pasteSpecial: VARIANT unspecified
		 link: VARIANT unspecified
		 displayAsIcon: VARIANT unspecified
		 iconFileName: VARIANT unspecified
		 iconIndex: VARIANT unspecified
		 iconLabel: VARIANT unspecified
		 noHTMLFormatting: VARIANT unspecified!

pasteSpecial: format link: link displayAsIcon: displayAsIcon iconFileName: iconFileName iconIndex: iconIndex iconLabel: iconLabel noHTMLFormatting: noHTMLFormatting
	"Invoke the PasteSpecial() method of the COM object."

	(self invokeId: 1928 withArguments:
			((Array new: 7)
				basicAt: 1 put: format;
				basicAt: 2 put: link;
				basicAt: 3 put: displayAsIcon;
				basicAt: 4 put: iconFileName;
				basicAt: 5 put: iconIndex;
				basicAt: 6 put: iconLabel;
				basicAt: 7 put: noHTMLFormatting;
				yourself))
!

pictures
	"Answer the <IDispatch> result of invoking the Pictures() method of the COM object.
	Default values are passed for all optional parameters."

	^self pictures: VARIANT unspecified!

pictures: index
	"Answer the <IDispatch> result of invoking the Pictures() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 771 with: index)
!

previous
	"Answer the <IDispatch> value of the 'Previous' property of the receiver.
		IDispatch* Previous"

	^IDispatch attachInterface: (self getPropertyId: 503)
!

printOut
	"Invoke the PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName
	"Invoke the PrintOut() method of the COM object."

	(self invokeId: 2361 withArguments:
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
	"Invoke the PrintPreview() method of the COM object.
	Default values are passed for all optional parameters."

	self printPreview: VARIANT unspecified!

printPreview: enableChanges
	"Invoke the PrintPreview() method of the COM object."

	(self invokeId: 281 with: enableChanges)
!

protect
	"Invoke the Protect() method of the COM object.
	Default values are passed for all optional parameters."

	self
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

	(self invokeId: 2029 withArguments:
			((Array new: 16)
				basicAt: 1 put: password;
				basicAt: 2 put: drawingObjects;
				basicAt: 3 put: contents;
				basicAt: 4 put: scenarios;
				basicAt: 5 put: userInterfaceOnly;
				basicAt: 6 put: allowFormattingCells;
				basicAt: 7 put: allowFormattingColumns;
				basicAt: 8 put: allowFormattingRows;
				basicAt: 9 put: allowInsertingColumns;
				basicAt: 10 put: allowInsertingRows;
				basicAt: 11 put: allowInsertingHyperlinks;
				basicAt: 12 put: allowDeletingColumns;
				basicAt: 13 put: allowDeletingRows;
				basicAt: 14 put: allowSorting;
				basicAt: 15 put: allowFiltering;
				basicAt: 16 put: allowUsingPivotTables;
				yourself))
!

protectContents
	"Answer the <varbool> value of the 'ProtectContents' property of the receiver.
		VARIANT_BOOL ProtectContents"

	^(self getPropertyId: 292)
!

protectDrawingObjects
	"Answer the <varbool> value of the 'ProtectDrawingObjects' property of the receiver.
		VARIANT_BOOL ProtectDrawingObjects"

	^(self getPropertyId: 293)
!

protection
	"Answer the <ExcelProtection> value of the 'Protection' property of the receiver.
		Protection* Protection"

	^ExcelProtection attachInterface: (self getPropertyId: 176)
!

protectionMode
	"Answer the <varbool> value of the 'ProtectionMode' property of the receiver.
		VARIANT_BOOL ProtectionMode"

	^(self getPropertyId: 1159)
!

protectScenarios
	"Answer the <varbool> value of the 'ProtectScenarios' property of the receiver.
		VARIANT_BOOL ProtectScenarios"

	^(self getPropertyId: 294)
!

queryTables
	"Answer the <ExcelQueryTables> value of the 'QueryTables' property of the receiver.
		QueryTables* QueryTables"

	^ExcelQueryTables attachInterface: (self getPropertyId: 1434)
!

rectangles
	"Answer the <IDispatch> result of invoking the Rectangles() method of the COM object.
	Default values are passed for all optional parameters."

	^self rectangles: VARIANT unspecified!

rectangles: index
	"Answer the <IDispatch> result of invoking the Rectangles() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 774 with: index)
!

resetAllPageBreaks
	"Invoke the ResetAllPageBreaks() method of the COM object."

	(self invokeId: 1426)
!

saveAs: filename
	"Invoke the SaveAs() method of the COM object.
	Default values are passed for all optional parameters."

	self
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

	(self invokeId: 1925 withArguments:
			((Array new: 10)
				basicAt: 1 put: filename;
				basicAt: 2 put: fileFormat;
				basicAt: 3 put: password;
				basicAt: 4 put: writeResPassword;
				basicAt: 5 put: readOnlyRecommended;
				basicAt: 6 put: createBackup;
				basicAt: 7 put: addToMru;
				basicAt: 8 put: textCodepage;
				basicAt: 9 put: textVisualLayout;
				basicAt: 10 put: local;
				yourself))
!

scripts
	"Answer the <OfficeScripts> value of the 'Scripts' property of the receiver.
		Scripts* Scripts"

	^OfficeScripts attachInterface: (self getPropertyId: 1816)
!

scrollArea
	"Answer the <bstr> value of the 'ScrollArea' property of the receiver.
		BSTR ScrollArea"

	^(self getPropertyId: 1433)
!

scrollArea: arg1
	"Set the 'ScrollArea' property of the receiver to the <bstr> value of the argument.
		void ScrollArea"

	self setPropertyId: 1433 value: arg1
!

scrollBars
	"Answer the <IDispatch> result of invoking the ScrollBars() method of the COM object.
	Default values are passed for all optional parameters."

	^self scrollBars: VARIANT unspecified!

scrollBars: index
	"Answer the <IDispatch> result of invoking the ScrollBars() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 830 with: index)
!

select
	"Invoke the Select() method of the COM object.
	Default values are passed for all optional parameters."

	self select: VARIANT unspecified!

select: replace
	"Invoke the Select() method of the COM object."

	(self invokeId: 235 with: replace)
!

shapes
	"Answer the <ExcelShapes> value of the 'Shapes' property of the receiver.
		Shapes* Shapes"

	^ExcelShapes attachInterface: (self getPropertyId: 1377)
!

show
	"Answer the <VARIANT_BOOL> result of invoking the Show() method of the COM object."

	^(self invokeId: 496)
!

smartTags
	"Answer the <ExcelSmartTags> value of the 'SmartTags' property of the receiver.
		SmartTags* SmartTags"

	^ExcelSmartTags attachInterface: (self getPropertyId: 2016)
!

sort
	"Answer the <ExcelSort> value of the 'Sort' property of the receiver.
		Sort* Sort"

	^ExcelSort attachInterface: (self getPropertyId: 880)
!

spinners
	"Answer the <IDispatch> result of invoking the Spinners() method of the COM object.
	Default values are passed for all optional parameters."

	^self spinners: VARIANT unspecified!

spinners: index
	"Answer the <IDispatch> result of invoking the Spinners() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 838 with: index)
!

tab
	"Answer the <ExcelTab> value of the 'Tab' property of the receiver.
		Tab* Tab"

	^ExcelTab attachInterface: (self getPropertyId: 1041)
!

textBoxes
	"Answer the <IDispatch> result of invoking the TextBoxes() method of the COM object.
	Default values are passed for all optional parameters."

	^self textBoxes: VARIANT unspecified!

textBoxes: index
	"Answer the <IDispatch> result of invoking the TextBoxes() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 777 with: index)
!

unprotect
	"Invoke the Unprotect() method of the COM object.
	Default values are passed for all optional parameters."

	self unprotect: VARIANT unspecified!

unprotect: password
	"Invoke the Unprotect() method of the COM object."

	(self invokeId: 285 with: password)
!

visible
	"Answer the <sdword> value of the 'Visible' property of the receiver.
		XlSheetVisibility Visible"

	^(self getPropertyId: 558)
!

visible: arg1
	"Set the 'Visible' property of the receiver to the <sdword> value of the argument.
		void Visible"

	self setPropertyId: 558 value: arg1
!

vPageBreaks
	"Answer the <ExcelVPageBreaks> value of the 'VPageBreaks' property of the receiver.
		VPageBreaks* VPageBreaks"

	^ExcelVPageBreaks attachInterface: (self getPropertyId: 1419)
! !
!ExcelDialogSheet categoriesFor: #__printOut!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_checkSpelling!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:ignoreFinalYaa:spellScript:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_codeName!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #_codeName:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #_displayRightToLeft!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #_displayRightToLeft:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #_dummy113!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy114!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy115!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy29!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy31!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy32!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy34!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy36!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy40!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy41!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy42!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy43!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy44!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy45!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy56!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy65!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy66!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy67!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy69!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy74!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy75!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy76!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy78!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy79!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy82!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy83!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy85!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy86!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy88!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy89!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_dummy90!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_evaluate:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_pasteSpecial!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_pasteSpecial:link:displayAsIcon:iconFileName:iconIndex:iconLabel:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_printOut!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_protect!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_protect:drawingObjects:contents:scenarios:userInterfaceOnly:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_saveAs:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #_saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #arcs!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #arcs:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #autoFilter!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #buttons!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #buttons:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #chartObjects!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #chartObjects:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #checkBoxes!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #checkBoxes:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #circleInvalid!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #clearCircles!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #codeName!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #comments!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #copy:after:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #customProperties!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #defaultButton!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #defaultButton:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #dialogFrame!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #displayAutomaticPageBreaks!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #displayAutomaticPageBreaks:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #displayPageBreaks!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #displayPageBreaks:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #displayRightToLeft!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #displayRightToLeft:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #drawingObjects!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #drawingObjects:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #drawings!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #drawings:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #dropDowns!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #dropDowns:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #editBoxes!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #editBoxes:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #enableAutoFilter!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableAutoFilter:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableCalculation!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableCalculation:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableFormatConditionsCalculation!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableFormatConditionsCalculation:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableOutlining!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableOutlining:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enablePivotTable!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enablePivotTable:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableSelection!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #enableSelection:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #evaluate:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #exportAsFixedFormat:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #exportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #focus!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #focus:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #groupBoxes!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #groupBoxes:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #groupObjects!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #groupObjects:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #hide!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #hide:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #hPageBreaks!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #hyperlinks!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #index!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #labels!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #labels:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #lines!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #lines:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #listBoxes!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #listBoxes:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #mailEnvelope!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #move!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #move:after:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #name!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #names!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #next!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #oleObjects!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #oleObjects:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #onDoubleClick!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #onDoubleClick:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #onSheetActivate!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #onSheetActivate:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #onSheetDeactivate!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #onSheetDeactivate:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #optionButtons!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #optionButtons:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #ovals!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #ovals:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #pageSetup!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #paste:link:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #pasteSpecial!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #pasteSpecial:link:displayAsIcon:iconFileName:iconIndex:iconLabel:noHTMLFormatting:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #pictures!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #pictures:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #previous!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #printOut!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #printPreview!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #printPreview:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #protect!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #protect:drawingObjects:contents:scenarios:userInterfaceOnly:allowFormattingCells:allowFormattingColumns:allowFormattingRows:allowInsertingColumns:allowInsertingRows:allowInsertingHyperlinks:allowDeletingColumns:allowDeletingRows:allowSorting:allowFiltering:allowUsingPivotTables:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #protectContents!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #protectDrawingObjects!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #protection!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #protectionMode!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #protectScenarios!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #queryTables!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #rectangles!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #rectangles:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #resetAllPageBreaks!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #saveAs:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:local:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #scripts!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #scrollArea!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #scrollArea:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #scrollBars!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #scrollBars:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #select!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #shapes!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #show!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #smartTags!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #sort!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #spinners!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #spinners:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #tab!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #textBoxes!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #textBoxes:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #unprotect!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #unprotect:!**auto generated**!methods!public! !
!ExcelDialogSheet categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelDialogSheet categoriesFor: #vPageBreaks!**auto generated**!properties!public! !

!ExcelDialogSheet class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDialogSheet initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDialogSheet class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

