"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIWorkbookEvents
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIWorkbookEvents guid: (IID fromString: '{00024412-0001-0000-C000-000000000046}')!
ExcelIWorkbookEvents comment: '<ExcelIWorkbookEvents> is a wrapper class for the COM interface ''Excel.IWorkbookEvents'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024412-0001-0000-C000-000000000046), 
	helpcontext(0x000200a8), 
	hidden
]
interface IWorkbookEvents : IDispatch
 {
	[id(0x00000783), helpcontext(0x00010783)]
	HRESULT __stdcall Open();
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate();
	[id(0x000005fa), helpcontext(0x000105fa)]
	HRESULT __stdcall Deactivate();
	[id(0x0000060a), helpcontext(0x0001060a)]
	HRESULT __stdcall BeforeClose(
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x0000060b), helpcontext(0x0001060b)]
	HRESULT __stdcall BeforeSave(
		[in]VARIANT_BOOL SaveAsUI,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x0000060d), helpcontext(0x0001060d)]
	HRESULT __stdcall BeforePrint(
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x0000060e), helpcontext(0x0001060e)]
	HRESULT __stdcall NewSheet(
		[in]IDispatch* Sh);
	[id(0x00000610), helpcontext(0x00010610)]
	HRESULT __stdcall AddinInstall();
	[id(0x00000611), helpcontext(0x00010611)]
	HRESULT __stdcall AddinUninstall();
	[id(0x00000612), helpcontext(0x00010612)]
	HRESULT __stdcall WindowResize(
		[in]Window* Wn);
	[id(0x00000614), helpcontext(0x00010614)]
	HRESULT __stdcall WindowActivate(
		[in]Window* Wn);
	[id(0x00000615), helpcontext(0x00010615)]
	HRESULT __stdcall WindowDeactivate(
		[in]Window* Wn);
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
	[id(0x0000073e), helpcontext(0x0001073e)]
	HRESULT __stdcall SheetFollowHyperlink(
		[in]IDispatch* Sh,
		[in]Hyperlink* Target);
	[id(0x0000086d), helpcontext(0x0001086d)]
	HRESULT __stdcall SheetPivotTableUpdate(
		[in]IDispatch* Sh,
		[in]PivotTable* Target);
	[id(0x0000086e), helpcontext(0x0001086e)]
	HRESULT __stdcall PivotTableCloseConnection(
		[in]PivotTable* Target);
	[id(0x0000086f), helpcontext(0x0001086f)]
	HRESULT __stdcall PivotTableOpenConnection(
		[in]PivotTable* Target);
	[id(0x000008da), helpcontext(0x000108da)]
	HRESULT __stdcall Sync(
		[in]MsoSyncEventType SyncEventType);
	[id(0x000008eb), helpcontext(0x000108eb)]
	HRESULT __stdcall BeforeXmlImport(
		[in]XmlMap* Map,
		[in]BSTR Url,
		[in]VARIANT_BOOL IsRefresh,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x000008ed), helpcontext(0x000108ed)]
	HRESULT __stdcall AfterXmlImport(
		[in]XmlMap* Map,
		[in]VARIANT_BOOL IsRefresh,
		[in]XlXmlImportResult Result);
	[id(0x000008ef), helpcontext(0x000108ef)]
	HRESULT __stdcall BeforeXmlExport(
		[in]XmlMap* Map,
		[in]BSTR Url,
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x000008f0), helpcontext(0x000108f0)]
	HRESULT __stdcall AfterXmlExport(
		[in]XmlMap* Map,
		[in]BSTR Url,
		[in]XlXmlExportResult Result);
	[id(0x00000a32), helpcontext(0x00010a32)]
	HRESULT __stdcall RowsetComplete(
		[in]BSTR Description,
		[in]BSTR Sheet,
		[in]VARIANT_BOOL Success);
};
'!
!ExcelIWorkbookEvents categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIWorkbookEvents methodsFor!

activate
	"Invoke the Activate() method of the COM object."

	^self Activate
!

Activate
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate();"

	<virtual stdcall: hresult 9>
	^self invalidCall!

addinInstall
	"Invoke the AddinInstall() method of the COM object."

	^self AddinInstall
!

AddinInstall
	"Private - Invoke the AddinInstall() method of the COM object.

		HRESULT __stdcall AddinInstall();"

	<virtual stdcall: hresult 15>
	^self invalidCall!

addinUninstall
	"Invoke the AddinUninstall() method of the COM object."

	^self AddinUninstall
!

AddinUninstall
	"Private - Invoke the AddinUninstall() method of the COM object.

		HRESULT __stdcall AddinUninstall();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

afterXmlExport: map url: url result: result
	"Invoke the AfterXmlExport() method of the COM object."

	^self
		AfterXmlExport: map
		url: url
		result: result
!

AfterXmlExport: map url: url result: result
	"Private - Invoke the AfterXmlExport() method of the COM object.

		HRESULT __stdcall AfterXmlExport(
			[in]XmlMap* Map,
			[in]BSTR Url,
			[in]XlXmlExportResult Result);"

	<virtual stdcall: hresult 35 ExcelXmlMap* bstr sdword>
	^self invalidCall!

afterXmlImport: map isRefresh: isRefresh result: result
	"Invoke the AfterXmlImport() method of the COM object."

	^self
		AfterXmlImport: map
		isRefresh: isRefresh
		result: result
!

AfterXmlImport: map isRefresh: isRefresh result: result
	"Private - Invoke the AfterXmlImport() method of the COM object.

		HRESULT __stdcall AfterXmlImport(
			[in]XmlMap* Map,
			[in]VARIANT_BOOL IsRefresh,
			[in]XlXmlImportResult Result);"

	<virtual stdcall: hresult 33 ExcelXmlMap* varbool sdword>
	^self invalidCall!

beforeClose: cancel
	"Invoke the BeforeClose() method of the COM object."

	^self BeforeClose: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeClose: cancel
	"Private - Invoke the BeforeClose() method of the COM object.

		HRESULT __stdcall BeforeClose(
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

beforePrint: cancel
	"Invoke the BeforePrint() method of the COM object."

	^self BeforePrint: (VARIANT_BOOL new value: cancel; yourself)
!

BeforePrint: cancel
	"Private - Invoke the BeforePrint() method of the COM object.

		HRESULT __stdcall BeforePrint(
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

beforeSave: saveAsUI cancel: cancel
	"Invoke the BeforeSave() method of the COM object."

	^self
		BeforeSave: saveAsUI
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeSave: saveAsUI cancel: cancel
	"Private - Invoke the BeforeSave() method of the COM object.

		HRESULT __stdcall BeforeSave(
			[in]VARIANT_BOOL SaveAsUI,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 12 varbool varbool*>
	^self invalidCall!

beforeXmlExport: map url: url cancel: cancel
	"Invoke the BeforeXmlExport() method of the COM object."

	^self
		BeforeXmlExport: map
		url: url
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeXmlExport: map url: url cancel: cancel
	"Private - Invoke the BeforeXmlExport() method of the COM object.

		HRESULT __stdcall BeforeXmlExport(
			[in]XmlMap* Map,
			[in]BSTR Url,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 34 ExcelXmlMap* bstr varbool*>
	^self invalidCall!

beforeXmlImport: map url: url isRefresh: isRefresh cancel: cancel
	"Invoke the BeforeXmlImport() method of the COM object."

	^self
		BeforeXmlImport: map
		url: url
		isRefresh: isRefresh
		cancel: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeXmlImport: map url: url isRefresh: isRefresh cancel: cancel
	"Private - Invoke the BeforeXmlImport() method of the COM object.

		HRESULT __stdcall BeforeXmlImport(
			[in]XmlMap* Map,
			[in]BSTR Url,
			[in]VARIANT_BOOL IsRefresh,
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 32 ExcelXmlMap* bstr varbool varbool*>
	^self invalidCall!

deactivate
	"Invoke the Deactivate() method of the COM object."

	^self Deactivate
!

Deactivate
	"Private - Invoke the Deactivate() method of the COM object.

		HRESULT __stdcall Deactivate();"

	<virtual stdcall: hresult 10>
	^self invalidCall!

newSheet: sh
	"Invoke the NewSheet() method of the COM object."

	^self NewSheet: sh
!

NewSheet: sh
	"Private - Invoke the NewSheet() method of the COM object.

		HRESULT __stdcall NewSheet(
			[in]IDispatch* Sh);"

	<virtual stdcall: hresult 14 IDispatch*>
	^self invalidCall!

open
	"Invoke the Open() method of the COM object."

	^self Open
!

Open
	"Private - Invoke the Open() method of the COM object.

		HRESULT __stdcall Open();"

	<virtual stdcall: hresult 8>
	^self invalidCall!

pivotTableCloseConnection: target
	"Invoke the PivotTableCloseConnection() method of the COM object."

	^self PivotTableCloseConnection: target
!

PivotTableCloseConnection: target
	"Private - Invoke the PivotTableCloseConnection() method of the COM object.

		HRESULT __stdcall PivotTableCloseConnection(
			[in]PivotTable* Target);"

	<virtual stdcall: hresult 29 ExcelPivotTable*>
	^self invalidCall!

pivotTableOpenConnection: target
	"Invoke the PivotTableOpenConnection() method of the COM object."

	^self PivotTableOpenConnection: target
!

PivotTableOpenConnection: target
	"Private - Invoke the PivotTableOpenConnection() method of the COM object.

		HRESULT __stdcall PivotTableOpenConnection(
			[in]PivotTable* Target);"

	<virtual stdcall: hresult 30 ExcelPivotTable*>
	^self invalidCall!

rowsetComplete: description sheet: sheet success: success
	"Invoke the RowsetComplete() method of the COM object."

	^self
		RowsetComplete: description
		sheet: sheet
		success: success
!

RowsetComplete: description sheet: sheet success: success
	"Private - Invoke the RowsetComplete() method of the COM object.

		HRESULT __stdcall RowsetComplete(
			[in]BSTR Description,
			[in]BSTR Sheet,
			[in]VARIANT_BOOL Success);"

	<virtual stdcall: hresult 36 bstr bstr varbool>
	^self invalidCall!

sheetActivate: sh
	"Invoke the SheetActivate() method of the COM object."

	^self SheetActivate: sh
!

SheetActivate: sh
	"Private - Invoke the SheetActivate() method of the COM object.

		HRESULT __stdcall SheetActivate(
			[in]IDispatch* Sh);"

	<virtual stdcall: hresult 23 IDispatch*>
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

	<virtual stdcall: hresult 21 IDispatch* ExcelRange* varbool*>
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

	<virtual stdcall: hresult 22 IDispatch* ExcelRange* varbool*>
	^self invalidCall!

sheetCalculate: sh
	"Invoke the SheetCalculate() method of the COM object."

	^self SheetCalculate: sh
!

SheetCalculate: sh
	"Private - Invoke the SheetCalculate() method of the COM object.

		HRESULT __stdcall SheetCalculate(
			[in]IDispatch* Sh);"

	<virtual stdcall: hresult 25 IDispatch*>
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

	<virtual stdcall: hresult 26 IDispatch* ExcelRange*>
	^self invalidCall!

sheetDeactivate: sh
	"Invoke the SheetDeactivate() method of the COM object."

	^self SheetDeactivate: sh
!

SheetDeactivate: sh
	"Private - Invoke the SheetDeactivate() method of the COM object.

		HRESULT __stdcall SheetDeactivate(
			[in]IDispatch* Sh);"

	<virtual stdcall: hresult 24 IDispatch*>
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

	<virtual stdcall: hresult 27 IDispatch* ExcelHyperlink*>
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

	<virtual stdcall: hresult 28 IDispatch* ExcelPivotTable*>
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

	<virtual stdcall: hresult 20 IDispatch* ExcelRange*>
	^self invalidCall!

sync: syncEventType
	"Invoke the Sync() method of the COM object."

	^self Sync: syncEventType
!

Sync: syncEventType
	"Private - Invoke the Sync() method of the COM object.

		HRESULT __stdcall Sync(
			[in]MsoSyncEventType SyncEventType);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

windowActivate: wn
	"Invoke the WindowActivate() method of the COM object."

	^self WindowActivate: wn
!

WindowActivate: wn
	"Private - Invoke the WindowActivate() method of the COM object.

		HRESULT __stdcall WindowActivate(
			[in]Window* Wn);"

	<virtual stdcall: hresult 18 ExcelWindow*>
	^self invalidCall!

windowDeactivate: wn
	"Invoke the WindowDeactivate() method of the COM object."

	^self WindowDeactivate: wn
!

WindowDeactivate: wn
	"Private - Invoke the WindowDeactivate() method of the COM object.

		HRESULT __stdcall WindowDeactivate(
			[in]Window* Wn);"

	<virtual stdcall: hresult 19 ExcelWindow*>
	^self invalidCall!

windowResize: wn
	"Invoke the WindowResize() method of the COM object."

	^self WindowResize: wn
!

WindowResize: wn
	"Private - Invoke the WindowResize() method of the COM object.

		HRESULT __stdcall WindowResize(
			[in]Window* Wn);"

	<virtual stdcall: hresult 17 ExcelWindow*>
	^self invalidCall! !
!ExcelIWorkbookEvents categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #Activate!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #addinInstall!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #AddinInstall!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #addinUninstall!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #AddinUninstall!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #afterXmlExport:url:result:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #AfterXmlExport:url:result:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #afterXmlImport:isRefresh:result:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #AfterXmlImport:isRefresh:result:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #beforeClose:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #BeforeClose:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #beforePrint:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #BeforePrint:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #beforeSave:cancel:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #BeforeSave:cancel:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #beforeXmlExport:url:cancel:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #BeforeXmlExport:url:cancel:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #beforeXmlImport:url:isRefresh:cancel:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #BeforeXmlImport:url:isRefresh:cancel:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #deactivate!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #Deactivate!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #newSheet:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #NewSheet:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #open!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #Open!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #pivotTableCloseConnection:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #PivotTableCloseConnection:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #pivotTableOpenConnection:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #PivotTableOpenConnection:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #rowsetComplete:sheet:success:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #RowsetComplete:sheet:success:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetActivate:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetActivate:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetBeforeDoubleClick:target:cancel:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetBeforeDoubleClick:target:cancel:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetBeforeRightClick:target:cancel:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetBeforeRightClick:target:cancel:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetCalculate:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetCalculate:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetChange:target:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetChange:target:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetDeactivate:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetDeactivate:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetFollowHyperlink:target:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetFollowHyperlink:target:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetPivotTableUpdate:target:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetPivotTableUpdate:target:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sheetSelectionChange:target:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #SheetSelectionChange:target:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #sync:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #Sync:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #windowActivate:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #WindowActivate:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #windowDeactivate:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #WindowDeactivate:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !
!ExcelIWorkbookEvents categoriesFor: #windowResize:!**auto generated**!methods!public! !
!ExcelIWorkbookEvents categoriesFor: #WindowResize:!**auto generated**!COM Interfaces-IWorkbookEvents!private! !

!ExcelIWorkbookEvents class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IWorkbookEvents'
		ExcelIWorkbookEvents defineTemplate"

	self
		defineFunction: #Open;
		defineFunction: #Activate;
		defineFunction: #Deactivate;
		defineFunction: #BeforeClose:
			argumentTypes: 'varbool*';
		defineFunction: #BeforeSave:cancel:
			argumentTypes: 'varbool varbool*';
		defineFunction: #BeforePrint:
			argumentTypes: 'varbool*';
		defineFunction: #NewSheet:
			argumentTypes: 'IDispatch*';
		defineFunction: #AddinInstall;
		defineFunction: #AddinUninstall;
		defineFunction: #WindowResize:
			argumentTypes: 'ExcelWindow*';
		defineFunction: #WindowActivate:
			argumentTypes: 'ExcelWindow*';
		defineFunction: #WindowDeactivate:
			argumentTypes: 'ExcelWindow*';
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
		defineFunction: #SheetFollowHyperlink:target:
			argumentTypes: 'IDispatch* ExcelHyperlink*';
		defineFunction: #SheetPivotTableUpdate:target:
			argumentTypes: 'IDispatch* ExcelPivotTable*';
		defineFunction: #PivotTableCloseConnection:
			argumentTypes: 'ExcelPivotTable*';
		defineFunction: #PivotTableOpenConnection:
			argumentTypes: 'ExcelPivotTable*';
		defineFunction: #Sync:
			argumentTypes: 'sdword';
		defineFunction: #BeforeXmlImport:url:isRefresh:cancel:
			argumentTypes: 'ExcelXmlMap* bstr varbool varbool*';
		defineFunction: #AfterXmlImport:isRefresh:result:
			argumentTypes: 'ExcelXmlMap* varbool sdword';
		defineFunction: #BeforeXmlExport:url:cancel:
			argumentTypes: 'ExcelXmlMap* bstr varbool*';
		defineFunction: #AfterXmlExport:url:result:
			argumentTypes: 'ExcelXmlMap* bstr sdword';
		defineFunction: #RowsetComplete:sheet:success:
			argumentTypes: 'bstr bstr varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIWorkbookEvents initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIWorkbookEvents class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIWorkbookEvents class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

