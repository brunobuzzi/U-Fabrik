"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #Excel_Global
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
Excel_Global guid: (IID fromString: '{000208D9-0000-0000-C000-000000000046}')!
Excel_Global comment: '<Excel_Global> is a wrapper class for the COM interface ''Excel._Global'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208D9-0000-0000-C000-000000000046), 
	helpcontext(0x00020016), 
	hidden, 
	nonextensible, 
	dual
]
interface _Global : IDispatch
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
};
'!
!Excel_Global categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!Excel_Global methodsFor!

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

addIns
	"Answer the <ExcelAddIns> value of the 'AddIns' property of the receiver."

	| answer |
	answer := ExcelAddIns newPointer.
	self get_AddIns: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

assistant
	"Answer the <OfficeAssistant> value of the 'Assistant' property of the receiver."

	| answer |
	answer := OfficeAssistant newPointer.
	self get_Assistant: answer.
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

cells
	"Answer the <ExcelRange> value of the 'Cells' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Cells: answer.
	^answer asObject
!

charts
	"Answer the <ExcelSheets> value of the 'Charts' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Charts: answer.
	^answer asObject
!

columns
	"Answer the <ExcelRange> value of the 'Columns' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Columns: answer.
	^answer asObject
!

commandBars
	"Answer the <Office_CommandBars> value of the 'CommandBars' property of the receiver."

	| answer |
	answer := Office_CommandBars newPointer.
	self get_CommandBars: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
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

dialogSheets
	"Answer the <ExcelSheets> value of the 'DialogSheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_DialogSheets: answer.
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

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Assistant: rhs
	"Private - Get the value of the 'Assistant' property of the receiver.

		HRESULT __stdcall Assistant(
			[out, retval]Assistant** RHS);"

	<virtual stdcall: hresult 21 OfficeAssistant**>
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

get_Columns: rhs
	"Private - Get the value of the 'Columns' property of the receiver.

		HRESULT __stdcall Columns(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 25 ExcelRange**>
	^self invalidCall!

get_CommandBars: rhs
	"Private - Get the value of the 'CommandBars' property of the receiver.

		HRESULT __stdcall CommandBars(
			[out, retval]CommandBars** RHS);"

	<virtual stdcall: hresult 26 Office_CommandBars**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DDEAppReturnCode: lcid rhs: rhs
	"Private - Get the value of the 'DDEAppReturnCode' property of the receiver.

		HRESULT __stdcall DDEAppReturnCode(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 27 sdword sdword*>
	^self invalidCall!

get_DialogSheets: rhs
	"Private - Get the value of the 'DialogSheets' property of the receiver.

		HRESULT __stdcall DialogSheets(
			[out, retval]Sheets** RHS);"

	<virtual stdcall: hresult 33 ExcelSheets**>
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

get_Names: rhs
	"Private - Get the value of the 'Names' property of the receiver.

		HRESULT __stdcall Names(
			[out, retval]Names** RHS);"

	<virtual stdcall: hresult 40 ExcelNames**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 10 Excel_Application**>
	^self invalidCall!

get_Range: cell1 cell2: cell2 rhs: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[in]VARIANT Cell1,
			[in, optional]VARIANT Cell2,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 41 variant variant ExcelRange**>
	^self invalidCall!

get_Rows: rhs
	"Private - Get the value of the 'Rows' property of the receiver.

		HRESULT __stdcall Rows(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 42 ExcelRange**>
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

get_ShortcutMenus: index rhs: rhs
	"Private - Get the value of the 'ShortcutMenus' property of the receiver.

		HRESULT __stdcall ShortcutMenus(
			[in]long Index,
			[out, retval]Menu** RHS);"

	<virtual stdcall: hresult 48 sdword ExcelMenu**>
	^self invalidCall!

get_ThisWorkbook: lcid rhs: rhs
	"Private - Get the value of the 'ThisWorkbook' property of the receiver.

		HRESULT __stdcall ThisWorkbook(
			[in]long lcid,
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 49 sdword Excel_Workbook**>
	^self invalidCall!

get_Toolbars: rhs
	"Private - Get the value of the 'Toolbars' property of the receiver.

		HRESULT __stdcall Toolbars(
			[out, retval]Toolbars** RHS);"

	<virtual stdcall: hresult 50 ExcelToolbars**>
	^self invalidCall!

get_Windows: rhs
	"Private - Get the value of the 'Windows' property of the receiver.

		HRESULT __stdcall Windows(
			[out, retval]Windows** RHS);"

	<virtual stdcall: hresult 52 ExcelWindows**>
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

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

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

names
	"Answer the <ExcelNames> value of the 'Names' property of the receiver."

	| answer |
	answer := ExcelNames newPointer.
	self get_Names: answer.
	^answer asObject
!

parent
	"Answer the <Excel_Application> value of the 'Parent' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_ActivePrinter: lcid rhs: rhs
	"Private - Set the value of the 'ActivePrinter' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ActivePrinter(
			[in]long lcid,
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 sdword bstr>
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

sheets
	"Answer the <ExcelSheets> value of the 'Sheets' property of the receiver."

	| answer |
	answer := ExcelSheets newPointer.
	self get_Sheets: answer.
	^answer asObject
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

thisWorkbook: lcid
	"Answer the <Excel_Workbook> value of the 'ThisWorkbook' property of the receiver."

	| answer |
	answer := Excel_Workbook newPointer.
	self
		get_ThisWorkbook: lcid
		rhs: answer.
	^answer asObject
!

toolbars
	"Answer the <ExcelToolbars> value of the 'Toolbars' property of the receiver."

	| answer |
	answer := ExcelToolbars newPointer.
	self get_Toolbars: answer.
	^answer asObject
!

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

windows
	"Answer the <ExcelWindows> value of the 'Windows' property of the receiver."

	| answer |
	answer := ExcelWindows newPointer.
	self get_Windows: answer.
	^answer asObject
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
!Excel_Global categoriesFor: #_evaluate:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #_Evaluate:lcid:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #_run2:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #_run2:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #_Run2:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #activeCell!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #activeChart!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #activeDialog!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #activeMenuBar!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #activePrinter:!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #activePrinter:rhs:!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #activeSheet!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #activeWindow!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #activeWorkbook!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #addIns!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #application!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #assistant!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #calculate:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #Calculate:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #cells!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #charts!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #columns!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #commandBars!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #creator!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #ddeAppReturnCode:!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #ddeExecute:string:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #DDEExecute:string:lcid:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #ddeInitiate:topic:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #DDEInitiate:topic:lcid:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #ddePoke:item:data:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #DDEPoke:item:data:lcid:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #ddeRequest:item:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #DDERequest:item:lcid:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #ddeTerminate:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #DDETerminate:lcid:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #dialogSheets!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #evaluate:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #Evaluate:lcid:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #excel4IntlMacroSheets!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #excel4MacroSheets!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #executeExcel4Macro:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #ExecuteExcel4Macro:lcid:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ActiveCell:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ActiveChart:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ActiveDialog:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ActiveMenuBar:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ActivePrinter:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ActiveSheet:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ActiveWindow:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ActiveWorkbook:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_AddIns:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Application:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Assistant:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Cells:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Charts:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Columns:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_CommandBars:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_DDEAppReturnCode:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_DialogSheets:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Excel4IntlMacroSheets:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Excel4MacroSheets:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_MenuBars:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Modules:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Names:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Range:cell2:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Rows:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Selection:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Sheets:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ShortcutMenus:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_ThisWorkbook:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Toolbars:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Windows:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Workbooks:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_WorksheetFunction:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #get_Worksheets:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #intersect:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #Intersect:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #intersect:arg2:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #isExtensible!**auto generated**!public!testing! !
!Excel_Global categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!Excel_Global categoriesFor: #menuBars!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #modules!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #names!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #parent!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #put_ActivePrinter:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #range:!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #range:cell2:!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #rows!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #run!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #run:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #Run:arg1:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #selection:!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #sendKeys:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #sendKeys:wait:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #SendKeys:wait:lcid:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #sheets!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #shortcutMenus:!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #thisWorkbook:!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #toolbars!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #union:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #Union:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:lcid:rhs:!**auto generated**!COM Interfaces-_Global!private! !
!Excel_Global categoriesFor: #union:arg2:lcid:!**auto generated**!methods!public! !
!Excel_Global categoriesFor: #windows!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #workbooks!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #worksheetFunction!**auto generated**!properties!public! !
!Excel_Global categoriesFor: #worksheets!**auto generated**!properties!public! !

!Excel_Global class methodsFor!

clsid
	"Private - Answer the CLSID of the coclass (Global) for which the receiver is the default interface."

	^CLSID fromString: '{00020812-0000-0000-C000-000000000046}'
!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel._Global'
		Excel_Global defineTemplate"

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
			argumentTypes: 'ExcelSheets**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		Excel_Global initializeTypeLib"

	typeLib := ExcelLib! !
!Excel_Global class categoriesFor: #clsid!**auto generated**!constants!private! !
!Excel_Global class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!Excel_Global class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

