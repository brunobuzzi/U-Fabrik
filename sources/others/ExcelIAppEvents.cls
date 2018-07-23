"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAppEvents
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAppEvents guid: (IID fromString: '{00024413-0001-0000-C000-000000000046}')!
ExcelIAppEvents comment: '<ExcelIAppEvents> is a wrapper class for the COM interface ''Excel.IAppEvents'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024413-0001-0000-C000-000000000046), 
	helpcontext(0x000200a9), 
	hidden
]
interface IAppEvents : IDispatch
 {
	[id(0x0000061d), helpcontext(0x0001061d)]
	HRESULT __stdcall NewWorkbook(
		[in]Workbook* Wb);
	[id(0x00000616), helpcontext(0x00010616)]
	HRESULT __stdcall SheetSelectionChange(
		[in]IDispatch* Sh,
		[in]Range* Target);
	[id(0x00000617), helpcontext(0x00010617)]
	HRESULT __stdcall SheetBeforeDoubleClick(
		[in]IDispatch* Sh,
		[in]Range* Target,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x00000618), helpcontext(0x00010618)]
	HRESULT __stdcall SheetBeforeRightClick(
		[in]IDispatch* Sh,
		[in]Range* Target,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x00000619), helpcontext(0x00010619)]
	HRESULT __stdcall SheetActivate(
		[in]IDispatch* Sh);
	[id(0x0000061a), helpcontext(0x0001061a)]
	HRESULT __stdcall SheetDeactivate(
		[in]IDispatch* Sh);
	[id(0x0000061b), helpcontext(0x0001061b)]
	HRESULT __stdcall SheetCalculate(
		[in]IDispatch* Sh);
	[id(0x0000061c), helpcontext(0x0001061c)]
	HRESULT __stdcall SheetChange(
		[in]IDispatch* Sh,
		[in]Range* Target);
	[id(0x0000061f), helpcontext(0x0001061f)]
	HRESULT __stdcall WorkbookOpen(
		[in]Workbook* Wb);
	[id(0x00000620), helpcontext(0x00010620)]
	HRESULT __stdcall WorkbookActivate(
		[in]Workbook* Wb);
	[id(0x00000621), helpcontext(0x00010621)]
	HRESULT __stdcall WorkbookDeactivate(
		[in]Workbook* Wb);
	[id(0x00000622), helpcontext(0x00010622)]
	HRESULT __stdcall WorkbookBeforeClose(
		[in]Workbook* Wb,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x00000623), helpcontext(0x00010623)]
	HRESULT __stdcall WorkbookBeforeSave(
		[in]Workbook* Wb,
		[in]VARIANT_BOOL SaveAsUI,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x00000624), helpcontext(0x00010624)]
	HRESULT __stdcall WorkbookBeforePrint(
		[in]Workbook* Wb,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x00000625), helpcontext(0x00010625)]
	HRESULT __stdcall WorkbookNewSheet(
		[in]Workbook* Wb,
		[in]IDispatch* Sh);
	[id(0x00000626), helpcontext(0x00010626)]
	HRESULT __stdcall WorkbookAddinInstall(
		[in]Workbook* Wb);
	[id(0x00000627), helpcontext(0x00010627)]
	HRESULT __stdcall WorkbookAddinUninstall(
		[in]Workbook* Wb);
	[id(0x00000612), helpcontext(0x00010612)]
	HRESULT __stdcall WindowResize(
		[in]Workbook* Wb,
		[in]Window* Wn);
	[id(0x00000614), helpcontext(0x00010614)]
	HRESULT __stdcall WindowActivate(
		[in]Workbook* Wb,
		[in]Window* Wn);
	[id(0x00000615), helpcontext(0x00010615)]
	HRESULT __stdcall WindowDeactivate(
		[in]Workbook* Wb,
		[in]Window* Wn);
	[id(0x0000073e), helpcontext(0x0001073e)]
	HRESULT __stdcall SheetFollowHyperlink(
		[in]IDispatch* Sh,
		[in]Hyperlink* Target);
	[id(0x0000086d), helpcontext(0x0001086d)]
	HRESULT __stdcall SheetPivotTableUpdate(
		[in]IDispatch* Sh,
		[in]PivotTable* Target);
	[id(0x00000870), helpcontext(0x00010870)]
	HRESULT __stdcall WorkbookPivotTableCloseConnection(
		[in]Workbook* Wb,
		[in]PivotTable* Target);
	[id(0x00000871), helpcontext(0x00010871)]
	HRESULT __stdcall WorkbookPivotTableOpenConnection(
		[in]Workbook* Wb,
		[in]PivotTable* Target);
	[id(0x000008f1), helpcontext(0x000108f1)]
	HRESULT __stdcall WorkbookSync(
		[in]Workbook* Wb,
		[in]MsoSyncEventType SyncEventType);
	[id(0x000008f2), helpcontext(0x000108f2)]
	HRESULT __stdcall WorkbookBeforeXmlImport(
		[in]Workbook* Wb,
		[in]XmlMap* Map,
		[in]BSTR Url,
		[in]VARIANT_BOOL IsRefresh,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x000008f3), helpcontext(0x000108f3)]
	HRESULT __stdcall WorkbookAfterXmlImport(
		[in]Workbook* Wb,
		[in]XmlMap* Map,
		[in]VARIANT_BOOL IsRefresh,
		[in]XlXmlImportResult Result);
	[id(0x000008f4), helpcontext(0x000108f4)]
	HRESULT __stdcall WorkbookBeforeXmlExport(
		[in]Workbook* Wb,
		[in]XmlMap* Map,
		[in]BSTR Url,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x000008f5), helpcontext(0x000108f5)]
	HRESULT __stdcall WorkbookAfterXmlExport(
		[in]Workbook* Wb,
		[in]XmlMap* Map,
		[in]BSTR Url,
		[in]XlXmlExportResult Result);
	[id(0x00000a33), helpcontext(0x00010a33)]
	HRESULT __stdcall WorkbookRowsetComplete(
		[in]Workbook* Wb,
		[in]BSTR Description,
		[in]BSTR Sheet,
		[in]VARIANT_BOOL Success);
	[id(0x00000a34), helpcontext(0x00010a34)]
	HRESULT __stdcall AfterCalculate();
};
'!
!ExcelIAppEvents categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAppEvents methodsFor!

afterCalculate
	"Invoke the AfterCalculate() method of the COM object."

	^self AfterCalculate
!

AfterCalculate
	"Private - Invoke the AfterCalculate() method of the COM object.

		HRESULT __stdcall AfterCalculate();"

	<virtual stdcall: hresult 38>
	^self invalidCall!

newWorkbook: wb
	"Invoke the NewWorkbook() method of the COM object."

	^self NewWorkbook: wb
!

NewWorkbook: wb
	"Private - Invoke the NewWorkbook() method of the COM object.

		HRESULT __stdcall NewWorkbook(
			[in]Workbook* Wb);"

	<virtual stdcall: hresult 8 Excel_Workbook*>
	^self invalidCall!

sheetActivate: sh
	"Invoke the SheetActivate() method of the COM object."

	^self SheetActivate: sh
!

SheetActivate: sh
	"Private - Invoke the SheetActivate() method of the COM object.

		HRESULT __stdcall SheetActivate(
			[in]IDispatch* Sh);"

	<virtual stdcall: hresult 12 IDispatch*>
	^self invalidCall!

sheetBeforeDoubleClick: sh target: target cancel: cancel
	"Invoke the SheetBeforeDoubleClick() method of the COM object."

	^self
		SheetBeforeDoubleClick: sh
		target: target
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

SheetBeforeDoubleClick: sh target: target cancel: cancel
	"Private - Invoke the SheetBeforeDoubleClick() method of the COM object.

		HRESULT __stdcall SheetBeforeDoubleClick(
			[in]IDispatch* Sh,
			[in]Range* Target,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 10 IDispatch* ExcelRange* varbool*>
	^self invalidCall!

sheetBeforeRightClick: sh target: target cancel: cancel
	"Invoke the SheetBeforeRightClick() method of the COM object."

	^self
		SheetBeforeRightClick: sh
		target: target
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

SheetBeforeRightClick: sh target: target cancel: cancel
	"Private - Invoke the SheetBeforeRightClick() method of the COM object.

		HRESULT __stdcall SheetBeforeRightClick(
			[in]IDispatch* Sh,
			[in]Range* Target,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 11 IDispatch* ExcelRange* varbool*>
	^self invalidCall!

sheetCalculate: sh
	"Invoke the SheetCalculate() method of the COM object."

	^self SheetCalculate: sh
!

SheetCalculate: sh
	"Private - Invoke the SheetCalculate() method of the COM object.

		HRESULT __stdcall SheetCalculate(
			[in]IDispatch* Sh);"

	<virtual stdcall: hresult 14 IDispatch*>
	^self invalidCall!

sheetChange: sh target: target
	"Invoke the SheetChange() method of the COM object."

	^self
		SheetChange: sh
		target: target
!

SheetChange: sh target: target
	"Private - Invoke the SheetChange() method of the COM object.

		HRESULT __stdcall SheetChange(
			[in]IDispatch* Sh,
			[in]Range* Target);"

	<virtual stdcall: hresult 15 IDispatch* ExcelRange*>
	^self invalidCall!

sheetDeactivate: sh
	"Invoke the SheetDeactivate() method of the COM object."

	^self SheetDeactivate: sh
!

SheetDeactivate: sh
	"Private - Invoke the SheetDeactivate() method of the COM object.

		HRESULT __stdcall SheetDeactivate(
			[in]IDispatch* Sh);"

	<virtual stdcall: hresult 13 IDispatch*>
	^self invalidCall!

sheetFollowHyperlink: sh target: target
	"Invoke the SheetFollowHyperlink() method of the COM object."

	^self
		SheetFollowHyperlink: sh
		target: target
!

SheetFollowHyperlink: sh target: target
	"Private - Invoke the SheetFollowHyperlink() method of the COM object.

		HRESULT __stdcall SheetFollowHyperlink(
			[in]IDispatch* Sh,
			[in]Hyperlink* Target);"

	<virtual stdcall: hresult 28 IDispatch* ExcelHyperlink*>
	^self invalidCall!

sheetPivotTableUpdate: sh target: target
	"Invoke the SheetPivotTableUpdate() method of the COM object."

	^self
		SheetPivotTableUpdate: sh
		target: target
!

SheetPivotTableUpdate: sh target: target
	"Private - Invoke the SheetPivotTableUpdate() method of the COM object.

		HRESULT __stdcall SheetPivotTableUpdate(
			[in]IDispatch* Sh,
			[in]PivotTable* Target);"

	<virtual stdcall: hresult 29 IDispatch* ExcelPivotTable*>
	^self invalidCall!

sheetSelectionChange: sh target: target
	"Invoke the SheetSelectionChange() method of the COM object."

	^self
		SheetSelectionChange: sh
		target: target
!

SheetSelectionChange: sh target: target
	"Private - Invoke the SheetSelectionChange() method of the COM object.

		HRESULT __stdcall SheetSelectionChange(
			[in]IDispatch* Sh,
			[in]Range* Target);"

	<virtual stdcall: hresult 9 IDispatch* ExcelRange*>
	^self invalidCall!

windowActivate: wb wn: wn
	"Invoke the WindowActivate() method of the COM object."

	^self
		WindowActivate: wb
		wn: wn
!

WindowActivate: wb wn: wn
	"Private - Invoke the WindowActivate() method of the COM object.

		HRESULT __stdcall WindowActivate(
			[in]Workbook* Wb,
			[in]Window* Wn);"

	<virtual stdcall: hresult 26 Excel_Workbook* ExcelWindow*>
	^self invalidCall!

windowDeactivate: wb wn: wn
	"Invoke the WindowDeactivate() method of the COM object."

	^self
		WindowDeactivate: wb
		wn: wn
!

WindowDeactivate: wb wn: wn
	"Private - Invoke the WindowDeactivate() method of the COM object.

		HRESULT __stdcall WindowDeactivate(
			[in]Workbook* Wb,
			[in]Window* Wn);"

	<virtual stdcall: hresult 27 Excel_Workbook* ExcelWindow*>
	^self invalidCall!

windowResize: wb wn: wn
	"Invoke the WindowResize() method of the COM object."

	^self
		WindowResize: wb
		wn: wn
!

WindowResize: wb wn: wn
	"Private - Invoke the WindowResize() method of the COM object.

		HRESULT __stdcall WindowResize(
			[in]Workbook* Wb,
			[in]Window* Wn);"

	<virtual stdcall: hresult 25 Excel_Workbook* ExcelWindow*>
	^self invalidCall!

workbookActivate: wb
	"Invoke the WorkbookActivate() method of the COM object."

	^self WorkbookActivate: wb
!

WorkbookActivate: wb
	"Private - Invoke the WorkbookActivate() method of the COM object.

		HRESULT __stdcall WorkbookActivate(
			[in]Workbook* Wb);"

	<virtual stdcall: hresult 17 Excel_Workbook*>
	^self invalidCall!

workbookAddinInstall: wb
	"Invoke the WorkbookAddinInstall() method of the COM object."

	^self WorkbookAddinInstall: wb
!

WorkbookAddinInstall: wb
	"Private - Invoke the WorkbookAddinInstall() method of the COM object.

		HRESULT __stdcall WorkbookAddinInstall(
			[in]Workbook* Wb);"

	<virtual stdcall: hresult 23 Excel_Workbook*>
	^self invalidCall!

workbookAddinUninstall: wb
	"Invoke the WorkbookAddinUninstall() method of the COM object."

	^self WorkbookAddinUninstall: wb
!

WorkbookAddinUninstall: wb
	"Private - Invoke the WorkbookAddinUninstall() method of the COM object.

		HRESULT __stdcall WorkbookAddinUninstall(
			[in]Workbook* Wb);"

	<virtual stdcall: hresult 24 Excel_Workbook*>
	^self invalidCall!

workbookAfterXmlExport: wb map: map url: url result: result
	"Invoke the WorkbookAfterXmlExport() method of the COM object."

	^self
		WorkbookAfterXmlExport: wb
		map: map
		url: url
		result: result
!

WorkbookAfterXmlExport: wb map: map url: url result: result
	"Private - Invoke the WorkbookAfterXmlExport() method of the COM object.

		HRESULT __stdcall WorkbookAfterXmlExport(
			[in]Workbook* Wb,
			[in]XmlMap* Map,
			[in]BSTR Url,
			[in]XlXmlExportResult Result);"

	<virtual stdcall: hresult 36 Excel_Workbook* ExcelXmlMap* bstr sdword>
	^self invalidCall!

workbookAfterXmlImport: wb map: map isRefresh: isRefresh result: result
	"Invoke the WorkbookAfterXmlImport() method of the COM object."

	^self
		WorkbookAfterXmlImport: wb
		map: map
		isRefresh: isRefresh
		result: result
!

WorkbookAfterXmlImport: wb map: map isRefresh: isRefresh result: result
	"Private - Invoke the WorkbookAfterXmlImport() method of the COM object.

		HRESULT __stdcall WorkbookAfterXmlImport(
			[in]Workbook* Wb,
			[in]XmlMap* Map,
			[in]VARIANT_BOOL IsRefresh,
			[in]XlXmlImportResult Result);"

	<virtual stdcall: hresult 34 Excel_Workbook* ExcelXmlMap* varbool sdword>
	^self invalidCall!

workbookBeforeClose: wb cancel: cancel
	"Invoke the WorkbookBeforeClose() method of the COM object."

	^self
		WorkbookBeforeClose: wb
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

WorkbookBeforeClose: wb cancel: cancel
	"Private - Invoke the WorkbookBeforeClose() method of the COM object.

		HRESULT __stdcall WorkbookBeforeClose(
			[in]Workbook* Wb,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 19 Excel_Workbook* varbool*>
	^self invalidCall!

workbookBeforePrint: wb cancel: cancel
	"Invoke the WorkbookBeforePrint() method of the COM object."

	^self
		WorkbookBeforePrint: wb
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

WorkbookBeforePrint: wb cancel: cancel
	"Private - Invoke the WorkbookBeforePrint() method of the COM object.

		HRESULT __stdcall WorkbookBeforePrint(
			[in]Workbook* Wb,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 21 Excel_Workbook* varbool*>
	^self invalidCall!

workbookBeforeSave: wb saveAsUI: saveAsUI cancel: cancel
	"Invoke the WorkbookBeforeSave() method of the COM object."

	^self
		WorkbookBeforeSave: wb
		saveAsUI: saveAsUI
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

WorkbookBeforeSave: wb saveAsUI: saveAsUI cancel: cancel
	"Private - Invoke the WorkbookBeforeSave() method of the COM object.

		HRESULT __stdcall WorkbookBeforeSave(
			[in]Workbook* Wb,
			[in]VARIANT_BOOL SaveAsUI,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 20 Excel_Workbook* varbool varbool*>
	^self invalidCall!

workbookBeforeXmlExport: wb map: map url: url cancel: cancel
	"Invoke the WorkbookBeforeXmlExport() method of the COM object."

	^self
		WorkbookBeforeXmlExport: wb
		map: map
		url: url
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

WorkbookBeforeXmlExport: wb map: map url: url cancel: cancel
	"Private - Invoke the WorkbookBeforeXmlExport() method of the COM object.

		HRESULT __stdcall WorkbookBeforeXmlExport(
			[in]Workbook* Wb,
			[in]XmlMap* Map,
			[in]BSTR Url,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 35 Excel_Workbook* ExcelXmlMap* bstr varbool*>
	^self invalidCall!

workbookBeforeXmlImport: wb map: map url: url isRefresh: isRefresh cancel: cancel
	"Invoke the WorkbookBeforeXmlImport() method of the COM object."

	^self
		WorkbookBeforeXmlImport: wb
		map: map
		url: url
		isRefresh: isRefresh
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

WorkbookBeforeXmlImport: wb map: map url: url isRefresh: isRefresh cancel: cancel
	"Private - Invoke the WorkbookBeforeXmlImport() method of the COM object.

		HRESULT __stdcall WorkbookBeforeXmlImport(
			[in]Workbook* Wb,
			[in]XmlMap* Map,
			[in]BSTR Url,
			[in]VARIANT_BOOL IsRefresh,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 33 Excel_Workbook* ExcelXmlMap* bstr varbool varbool*>
	^self invalidCall!

workbookDeactivate: wb
	"Invoke the WorkbookDeactivate() method of the COM object."

	^self WorkbookDeactivate: wb
!

WorkbookDeactivate: wb
	"Private - Invoke the WorkbookDeactivate() method of the COM object.

		HRESULT __stdcall WorkbookDeactivate(
			[in]Workbook* Wb);"

	<virtual stdcall: hresult 18 Excel_Workbook*>
	^self invalidCall!

workbookNewSheet: wb sh: sh
	"Invoke the WorkbookNewSheet() method of the COM object."

	^self
		WorkbookNewSheet: wb
		sh: sh
!

WorkbookNewSheet: wb sh: sh
	"Private - Invoke the WorkbookNewSheet() method of the COM object.

		HRESULT __stdcall WorkbookNewSheet(
			[in]Workbook* Wb,
			[in]IDispatch* Sh);"

	<virtual stdcall: hresult 22 Excel_Workbook* IDispatch*>
	^self invalidCall!

workbookOpen: wb
	"Invoke the WorkbookOpen() method of the COM object."

	^self WorkbookOpen: wb
!

WorkbookOpen: wb
	"Private - Invoke the WorkbookOpen() method of the COM object.

		HRESULT __stdcall WorkbookOpen(
			[in]Workbook* Wb);"

	<virtual stdcall: hresult 16 Excel_Workbook*>
	^self invalidCall!

workbookPivotTableCloseConnection: wb target: target
	"Invoke the WorkbookPivotTableCloseConnection() method of the COM object."

	^self
		WorkbookPivotTableCloseConnection: wb
		target: target
!

WorkbookPivotTableCloseConnection: wb target: target
	"Private - Invoke the WorkbookPivotTableCloseConnection() method of the COM object.

		HRESULT __stdcall WorkbookPivotTableCloseConnection(
			[in]Workbook* Wb,
			[in]PivotTable* Target);"

	<virtual stdcall: hresult 30 Excel_Workbook* ExcelPivotTable*>
	^self invalidCall!

workbookPivotTableOpenConnection: wb target: target
	"Invoke the WorkbookPivotTableOpenConnection() method of the COM object."

	^self
		WorkbookPivotTableOpenConnection: wb
		target: target
!

WorkbookPivotTableOpenConnection: wb target: target
	"Private - Invoke the WorkbookPivotTableOpenConnection() method of the COM object.

		HRESULT __stdcall WorkbookPivotTableOpenConnection(
			[in]Workbook* Wb,
			[in]PivotTable* Target);"

	<virtual stdcall: hresult 31 Excel_Workbook* ExcelPivotTable*>
	^self invalidCall!

workbookRowsetComplete: wb description: description sheet: sheet success: success
	"Invoke the WorkbookRowsetComplete() method of the COM object."

	^self
		WorkbookRowsetComplete: wb
		description: description
		sheet: sheet
		success: success
!

WorkbookRowsetComplete: wb description: description sheet: sheet success: success
	"Private - Invoke the WorkbookRowsetComplete() method of the COM object.

		HRESULT __stdcall WorkbookRowsetComplete(
			[in]Workbook* Wb,
			[in]BSTR Description,
			[in]BSTR Sheet,
			[in]VARIANT_BOOL Success);"

	<virtual stdcall: hresult 37 Excel_Workbook* bstr bstr varbool>
	^self invalidCall!

workbookSync: wb syncEventType: syncEventType
	"Invoke the WorkbookSync() method of the COM object."

	^self
		WorkbookSync: wb
		syncEventType: syncEventType
!

WorkbookSync: wb syncEventType: syncEventType
	"Private - Invoke the WorkbookSync() method of the COM object.

		HRESULT __stdcall WorkbookSync(
			[in]Workbook* Wb,
			[in]MsoSyncEventType SyncEventType);"

	<virtual stdcall: hresult 32 Excel_Workbook* sdword>
	^self invalidCall! !
!ExcelIAppEvents categoriesFor: #afterCalculate!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #AfterCalculate!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #newWorkbook:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #NewWorkbook:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetActivate:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetActivate:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetBeforeDoubleClick:target:cancel:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetBeforeDoubleClick:target:cancel:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetBeforeRightClick:target:cancel:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetBeforeRightClick:target:cancel:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetCalculate:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetCalculate:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetChange:target:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetChange:target:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetDeactivate:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetDeactivate:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetFollowHyperlink:target:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetFollowHyperlink:target:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetPivotTableUpdate:target:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetPivotTableUpdate:target:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #sheetSelectionChange:target:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #SheetSelectionChange:target:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #windowActivate:wn:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WindowActivate:wn:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #windowDeactivate:wn:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WindowDeactivate:wn:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #windowResize:wn:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WindowResize:wn:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookActivate:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookActivate:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookAddinInstall:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookAddinInstall:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookAddinUninstall:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookAddinUninstall:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookAfterXmlExport:map:url:result:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookAfterXmlExport:map:url:result:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookAfterXmlImport:map:isRefresh:result:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookAfterXmlImport:map:isRefresh:result:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookBeforeClose:cancel:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookBeforeClose:cancel:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookBeforePrint:cancel:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookBeforePrint:cancel:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookBeforeSave:saveAsUI:cancel:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookBeforeSave:saveAsUI:cancel:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookBeforeXmlExport:map:url:cancel:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookBeforeXmlExport:map:url:cancel:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookBeforeXmlImport:map:url:isRefresh:cancel:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookBeforeXmlImport:map:url:isRefresh:cancel:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookDeactivate:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookDeactivate:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookNewSheet:sh:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookNewSheet:sh:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookOpen:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookOpen:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookPivotTableCloseConnection:target:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookPivotTableCloseConnection:target:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookPivotTableOpenConnection:target:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookPivotTableOpenConnection:target:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookRowsetComplete:description:sheet:success:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookRowsetComplete:description:sheet:success:!**auto generated**!COM Interfaces-IAppEvents!private! !
!ExcelIAppEvents categoriesFor: #workbookSync:syncEventType:!**auto generated**!methods!public! !
!ExcelIAppEvents categoriesFor: #WorkbookSync:syncEventType:!**auto generated**!COM Interfaces-IAppEvents!private! !

!ExcelIAppEvents class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAppEvents'
		ExcelIAppEvents defineTemplate"

	self
		defineFunction: #NewWorkbook:
			argumentTypes: 'Excel_Workbook*';
		defineFunction: #SheetSelectionChange:target:
			argumentTypes: 'IDispatch* ExcelRange*';
		defineFunction: #SheetBeforeDoubleClick:target:cancel:
			argumentTypes: 'IDispatch* ExcelRange* varbool*';
		defineFunction: #SheetBeforeRightClick:target:cancel:
			argumentTypes: 'IDispatch* ExcelRange* varbool*';
		defineFunction: #SheetActivate:
			argumentTypes: 'IDispatch*';
		defineFunction: #SheetDeactivate:
			argumentTypes: 'IDispatch*';
		defineFunction: #SheetCalculate:
			argumentTypes: 'IDispatch*';
		defineFunction: #SheetChange:target:
			argumentTypes: 'IDispatch* ExcelRange*';
		defineFunction: #WorkbookOpen:
			argumentTypes: 'Excel_Workbook*';
		defineFunction: #WorkbookActivate:
			argumentTypes: 'Excel_Workbook*';
		defineFunction: #WorkbookDeactivate:
			argumentTypes: 'Excel_Workbook*';
		defineFunction: #WorkbookBeforeClose:cancel:
			argumentTypes: 'Excel_Workbook* varbool*';
		defineFunction: #WorkbookBeforeSave:saveAsUI:cancel:
			argumentTypes: 'Excel_Workbook* varbool varbool*';
		defineFunction: #WorkbookBeforePrint:cancel:
			argumentTypes: 'Excel_Workbook* varbool*';
		defineFunction: #WorkbookNewSheet:sh:
			argumentTypes: 'Excel_Workbook* IDispatch*';
		defineFunction: #WorkbookAddinInstall:
			argumentTypes: 'Excel_Workbook*';
		defineFunction: #WorkbookAddinUninstall:
			argumentTypes: 'Excel_Workbook*';
		defineFunction: #WindowResize:wn:
			argumentTypes: 'Excel_Workbook* ExcelWindow*';
		defineFunction: #WindowActivate:wn:
			argumentTypes: 'Excel_Workbook* ExcelWindow*';
		defineFunction: #WindowDeactivate:wn:
			argumentTypes: 'Excel_Workbook* ExcelWindow*';
		defineFunction: #SheetFollowHyperlink:target:
			argumentTypes: 'IDispatch* ExcelHyperlink*';
		defineFunction: #SheetPivotTableUpdate:target:
			argumentTypes: 'IDispatch* ExcelPivotTable*';
		defineFunction: #WorkbookPivotTableCloseConnection:target:
			argumentTypes: 'Excel_Workbook* ExcelPivotTable*';
		defineFunction: #WorkbookPivotTableOpenConnection:target:
			argumentTypes: 'Excel_Workbook* ExcelPivotTable*';
		defineFunction: #WorkbookSync:syncEventType:
			argumentTypes: 'Excel_Workbook* sdword';
		defineFunction: #WorkbookBeforeXmlImport:map:url:isRefresh:cancel:
			argumentTypes: 'Excel_Workbook* ExcelXmlMap* bstr varbool varbool*';
		defineFunction: #WorkbookAfterXmlImport:map:isRefresh:result:
			argumentTypes: 'Excel_Workbook* ExcelXmlMap* varbool sdword';
		defineFunction: #WorkbookBeforeXmlExport:map:url:cancel:
			argumentTypes: 'Excel_Workbook* ExcelXmlMap* bstr varbool*';
		defineFunction: #WorkbookAfterXmlExport:map:url:result:
			argumentTypes: 'Excel_Workbook* ExcelXmlMap* bstr sdword';
		defineFunction: #WorkbookRowsetComplete:description:sheet:success:
			argumentTypes: 'Excel_Workbook* bstr bstr varbool';
		defineFunction: #AfterCalculate
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAppEvents initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAppEvents class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAppEvents class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

