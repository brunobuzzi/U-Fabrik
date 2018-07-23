"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIModule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIModule guid: (IID fromString: '{000208AD-0001-0000-C000-000000000046}')!
ExcelIModule comment: '<ExcelIModule> is a wrapper class for the COM interface ''Excel.IModule'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208AD-0001-0000-C000-000000000046), 
	helpcontext(0x0002006d), 
	hidden
]
interface IModule : IDispatch
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
	[id(0x00010012), hidden, restricted]
	void __stdcall _Dummy18();
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
	[id(0x00010015), hidden, restricted]
	void __stdcall _Dummy21();
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
	[id(0x00000248), helpcontext(0x00010248)]
	HRESULT __stdcall InsertFile(
		[in]VARIANT Filename,
		[in, optional]VARIANT Merge,
		[out, retval]VARIANT* RHS);
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
		[in, optional]VARIANT TextVisualLayout);
	[id(0x000007ed), helpcontext(0x000107ed)]
	HRESULT __stdcall Protect(
		[in, optional]VARIANT Password,
		[in, optional]VARIANT DrawingObjects,
		[in, optional]VARIANT Contents,
		[in, optional]VARIANT Scenarios,
		[in, optional]VARIANT UserInterfaceOnly);
	[id(0x000006ec), hidden, helpcontext(0x000106ec)]
	HRESULT __stdcall _PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate);
	[id(0x00000939), helpcontext(0x00010939)]
	HRESULT __stdcall PrintOut(
		[in, optional]VARIANT From,
		[in, optional]VARIANT To,
		[in, optional]VARIANT Copies,
		[in, optional]VARIANT Preview,
		[in, optional]VARIANT ActivePrinter,
		[in, optional]VARIANT PrintToFile,
		[in, optional]VARIANT Collate);
};
'!
!ExcelIModule categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIModule methodsFor!

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

_dummy18
	"Answer the <VOID> result of invoking the _Dummy18() method of the COM object."

	self _Dummy18
!

_Dummy18
	"Private - Invoke the _Dummy18() method of the COM object.

		void __stdcall _Dummy18();"

	<virtual stdcall: void 31>
	^self invalidCall!

_dummy21
	"Answer the <VOID> result of invoking the _Dummy21() method of the COM object."

	self _Dummy21
!

_Dummy21
	"Private - Invoke the _Dummy21() method of the COM object.

		void __stdcall _Dummy21();"

	<virtual stdcall: void 34>
	^self invalidCall!

_dummy23
	"Answer the <VOID> result of invoking the _Dummy23() method of the COM object."

	self _Dummy23
!

_Dummy23
	"Private - Invoke the _Dummy23() method of the COM object.

		void __stdcall _Dummy23();"

	<virtual stdcall: void 36>
	^self invalidCall!

_printOut
	"Invoke the _PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified!

_printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Invoke the _PrintOut() method of the COM object."

	^self
		_PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
!

_PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Private - Invoke the _PrintOut() method of the COM object.

		HRESULT __stdcall _PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate);"

	<virtual stdcall: hresult 46 variant variant variant variant variant variant variant>
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

codeName
	"Answer the <bstr> value of the 'CodeName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CodeName: answer.
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

get_CodeName: rhs
	"Private - Get the value of the 'CodeName' property of the receiver.

		HRESULT __stdcall CodeName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Index: lcid rhs: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[in]long lcid,
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword sdword*>
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

get_ProtectionMode: lcid rhs: rhs
	"Private - Get the value of the 'ProtectionMode' property of the receiver.

		HRESULT __stdcall ProtectionMode(
			[in]long lcid,
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 35 sdword varbool*>
	^self invalidCall!

get_Shapes: rhs
	"Private - Get the value of the 'Shapes' property of the receiver.

		HRESULT __stdcall Shapes(
			[out, retval]Shapes** RHS);"

	<virtual stdcall: hresult 42 ExcelShapes**>
	^self invalidCall!

get_Visible: lcid rhs: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[out, retval]XlSheetVisibility* RHS);"

	<virtual stdcall: hresult 40 sdword sdword*>
	^self invalidCall!

index: lcid
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self
		get_Index: lcid
		rhs: answer.
	^answer asObject
!

insertFile: filename
	"Answer the <VARIANT> result of invoking the InsertFile() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 insertFile: filename
		 merge: VARIANT unspecified!

insertFile: filename merge: merge
	"Answer the <VARIANT> result of invoking the InsertFile() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		InsertFile: filename asVariant
		merge: merge asVariant
		rhs: answer.
	^answer asObject
!

InsertFile: filename merge: merge rhs: rhs
	"Private - Invoke the InsertFile() method of the COM object.

		HRESULT __stdcall InsertFile(
			[in]VARIANT Filename,
			[in, optional]VARIANT Merge,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 43 variant variant variant*>
	^self invalidCall!

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

previous
	"Answer the <IDispatch> value of the 'Previous' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Previous: answer.
	^answer asObject
!

printOut
	"Invoke the PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Invoke the PrintOut() method of the COM object."

	^self
		PrintOut: from asVariant
		to: to asVariant
		copies: copies asVariant
		preview: preview asVariant
		activePrinter: activePrinter asVariant
		printToFile: printToFile asVariant
		collate: collate asVariant
!

PrintOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Private - Invoke the PrintOut() method of the COM object.

		HRESULT __stdcall PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate);"

	<virtual stdcall: hresult 47 variant variant variant variant variant variant variant>
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

	<virtual stdcall: hresult 45 variant variant variant variant variant>
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

protectionMode: lcid
	"Answer the <varbool> value of the 'ProtectionMode' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self
		get_ProtectionMode: lcid
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

put_Visible: lcid rhs: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Visible(
			[in]long lcid,
			[in]XlSheetVisibility RHS);"

	<virtual stdcall: hresult 41 sdword sdword>
	^self invalidCall!

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
		 textVisualLayout: VARIANT unspecified!

saveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout
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
!

SaveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout
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
			[in, optional]VARIANT TextVisualLayout);"

	<virtual stdcall: hresult 44 bstr variant variant variant variant variant variant variant variant>
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

shapes
	"Answer the <ExcelShapes> value of the 'Shapes' property of the receiver."

	| answer |
	answer := ExcelShapes newPointer.
	self get_Shapes: answer.
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
! !
!ExcelIModule categoriesFor: #__printOut:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #__PrintOut:to:copies:preview:activePrinter:printToFile:collate:lcid:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #_codeName!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #_codeName:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #_dummy18!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #_Dummy18!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #_dummy21!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #_Dummy21!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #_dummy23!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #_Dummy23!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #_printOut!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #_protect:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #_protect:drawingObjects:contents:scenarios:userInterfaceOnly:lcid:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #_Protect:drawingObjects:contents:scenarios:userInterfaceOnly:lcid:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #_saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:lcid:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #_SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:lcid:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #_saveAs:lcid:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #activate:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #Activate:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #codeName!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #copy:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #copy:after:lcid:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #Copy:after:lcid:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #delete:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #Delete:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get__CodeName:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_CodeName:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Index:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Next:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_OnDoubleClick:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_PageSetup:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Previous:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_ProtectContents:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_ProtectionMode:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Shapes:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #get_Visible:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #index:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #insertFile:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #insertFile:merge:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #InsertFile:merge:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #move:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #move:after:lcid:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #Move:after:lcid:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #next!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #onDoubleClick:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #onDoubleClick:rhs:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #onSheetActivate:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #onSheetActivate:rhs:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #onSheetDeactivate:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #onSheetDeactivate:rhs:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #pageSetup!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #previous!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #printOut!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #protect!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #protect:drawingObjects:contents:scenarios:userInterfaceOnly:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #Protect:drawingObjects:contents:scenarios:userInterfaceOnly:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #protectContents:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #protectionMode:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #put__CodeName:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #put_OnDoubleClick:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #put_OnSheetActivate:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #put_OnSheetDeactivate:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #put_Visible:rhs:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #saveAs:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #select:lcid:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #Select:lcid:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #shapes!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #unprotect:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #unprotect:lcid:!**auto generated**!methods!public! !
!ExcelIModule categoriesFor: #Unprotect:lcid:!**auto generated**!COM Interfaces-IModule!private! !
!ExcelIModule categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIModule categoriesFor: #visible:rhs:!**auto generated**!properties!public! !

!ExcelIModule class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IModule'
		ExcelIModule defineTemplate"

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
		defineFunction: #_Dummy18
			returnType: 'void';
		defineFunction: #_Protect:drawingObjects:contents:scenarios:userInterfaceOnly:lcid:
			argumentTypes: 'variant variant variant variant variant sdword';
		defineFunction: #get_ProtectContents:rhs:
			argumentTypes: 'sdword varbool*';
		defineFunction: #_Dummy21
			returnType: 'void';
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
		defineFunction: #InsertFile:merge:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #SaveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:
			argumentTypes: 'bstr variant variant variant variant variant variant variant variant';
		defineFunction: #Protect:drawingObjects:contents:scenarios:userInterfaceOnly:
			argumentTypes: 'variant variant variant variant variant';
		defineFunction: #_PrintOut:to:copies:preview:activePrinter:printToFile:collate:
			argumentTypes: 'variant variant variant variant variant variant variant';
		defineFunction: #PrintOut:to:copies:preview:activePrinter:printToFile:collate:
			argumentTypes: 'variant variant variant variant variant variant variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIModule initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIModule class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIModule class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

