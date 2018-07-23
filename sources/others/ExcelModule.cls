"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelModule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelModule guid: (IID fromString: '{000208AD-0000-0000-C000-000000000046}')!
ExcelModule comment: '<ExcelModule> is a wrapper class generated for the dispatch interface ''Excel.Module'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208AD-0000-0000-C000-000000000046), 
	helpcontext(0x0002006d), 
	hidden
]
dispinterface Module {
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
[id(0x00010012), hidden, restricted]
		void _Dummy18();
[id(0x0000011a), hidden, helpcontext(0x0001011a)]
		void _Protect(
			[in, optional]VARIANT Password,
			[in, optional]VARIANT DrawingObjects,
			[in, optional]VARIANT Contents,
			[in, optional]VARIANT Scenarios,
			[in, optional]VARIANT UserInterfaceOnly);
[id(0x00000124), propget, helpcontext(0x00010124)]
		VARIANT_BOOL ProtectContents();
[id(0x00010015), hidden, restricted]
		void _Dummy21();
[id(0x00000487), propget, helpcontext(0x00010487)]
		VARIANT_BOOL ProtectionMode();
[id(0x00010017), hidden, restricted]
		void _Dummy23();
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
[id(0x00000248), helpcontext(0x00010248)]
		VARIANT InsertFile(
			[in]VARIANT Filename,
			[in, optional]VARIANT Merge);
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
			[in, optional]VARIANT TextVisualLayout);
[id(0x000007ed), helpcontext(0x000107ed)]
		void Protect(
			[in, optional]VARIANT Password,
			[in, optional]VARIANT DrawingObjects,
			[in, optional]VARIANT Contents,
			[in, optional]VARIANT Scenarios,
			[in, optional]VARIANT UserInterfaceOnly);
[id(0x000006ec), hidden, helpcontext(0x000106ec)]
		void _PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate);
[id(0x00000939), helpcontext(0x00010939)]
		void PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate);
};
'!
!ExcelModule categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelModule methodsFor!

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

_dummy18
	"Invoke the _Dummy18() method of the COM object."

	(self invokeId: 65554)
!

_dummy21
	"Invoke the _Dummy21() method of the COM object."

	(self invokeId: 65557)
!

_dummy23
	"Invoke the _Dummy23() method of the COM object."

	(self invokeId: 65559)
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
		 collate: VARIANT unspecified!

_printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Invoke the _PrintOut() method of the COM object."

	(self invokeId: 1772 withArguments:
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

codeName
	"Answer the <bstr> value of the 'CodeName' property of the receiver.
		BSTR CodeName"

	^(self getPropertyId: 1373)
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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

insertFile: filename
	"Answer the <VARIANT> result of invoking the InsertFile() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 insertFile: filename
		 merge: VARIANT unspecified!

insertFile: filename merge: merge
	"Answer the <VARIANT> result of invoking the InsertFile() method of the COM object."

	^(self invokeId: 584 with: filename with: merge)
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

next
	"Answer the <IDispatch> value of the 'Next' property of the receiver.
		IDispatch* Next"

	^IDispatch attachInterface: (self getPropertyId: 502)
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
		 collate: VARIANT unspecified!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Invoke the PrintOut() method of the COM object."

	(self invokeId: 2361 withArguments:
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

protect
	"Invoke the Protect() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 protect: VARIANT unspecified
		 drawingObjects: VARIANT unspecified
		 contents: VARIANT unspecified
		 scenarios: VARIANT unspecified
		 userInterfaceOnly: VARIANT unspecified!

protect: password drawingObjects: drawingObjects contents: contents scenarios: scenarios userInterfaceOnly: userInterfaceOnly
	"Invoke the Protect() method of the COM object."

	(self invokeId: 2029 withArguments:
			((Array new: 5)
				basicAt: 1 put: password;
				basicAt: 2 put: drawingObjects;
				basicAt: 3 put: contents;
				basicAt: 4 put: scenarios;
				basicAt: 5 put: userInterfaceOnly;
				yourself))
!

protectContents
	"Answer the <varbool> value of the 'ProtectContents' property of the receiver.
		VARIANT_BOOL ProtectContents"

	^(self getPropertyId: 292)
!

protectionMode
	"Answer the <varbool> value of the 'ProtectionMode' property of the receiver.
		VARIANT_BOOL ProtectionMode"

	^(self getPropertyId: 1159)
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
		 textVisualLayout: VARIANT unspecified!

saveAs: filename fileFormat: fileFormat password: password writeResPassword: writeResPassword readOnlyRecommended: readOnlyRecommended createBackup: createBackup addToMru: addToMru textCodepage: textCodepage textVisualLayout: textVisualLayout
	"Invoke the SaveAs() method of the COM object."

	(self invokeId: 1925 withArguments:
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
! !
!ExcelModule categoriesFor: #__printOut!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_codeName!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #_codeName:!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #_dummy18!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_dummy21!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_dummy23!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_printOut!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_protect!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_protect:drawingObjects:contents:scenarios:userInterfaceOnly:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_saveAs:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #_saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #application!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #codeName!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #copy:after:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #index!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #insertFile:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #insertFile:merge:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #move!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #move:after:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #name!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #next!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #onDoubleClick!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #onDoubleClick:!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #onSheetActivate!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #onSheetActivate:!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #onSheetDeactivate!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #onSheetDeactivate:!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #pageSetup!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #previous!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #printOut!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #protect!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #protect:drawingObjects:contents:scenarios:userInterfaceOnly:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #protectContents!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #protectionMode!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #saveAs:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #saveAs:fileFormat:password:writeResPassword:readOnlyRecommended:createBackup:addToMru:textCodepage:textVisualLayout:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #select!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #select:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #shapes!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #unprotect!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #unprotect:!**auto generated**!methods!public! !
!ExcelModule categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelModule categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelModule class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelModule initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelModule class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

