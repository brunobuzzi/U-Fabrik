"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIToolbarButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIToolbarButton guid: (IID fromString: '{0002085E-0001-0000-C000-000000000046}')!
ExcelIToolbarButton comment: '<ExcelIToolbarButton> is a wrapper class for the COM interface ''Excel.IToolbarButton'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002085E-0001-0000-C000-000000000046), 
	helpcontext(0x0002001e), 
	hidden
]
interface IToolbarButton : IDispatch
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
	[id(0x00000229), propget, helpcontext(0x00010229)]
	HRESULT __stdcall BuiltIn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022a), propget, helpcontext(0x0001022a)]
	HRESULT __stdcall BuiltInFace(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022a), propput, helpcontext(0x0001022a)]
	HRESULT __stdcall BuiltInFace(
		[in]VARIANT_BOOL RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[in]Toolbar* Toolbar,
		[in]long Before);
	[id(0x000003c6), helpcontext(0x000103c6)]
	HRESULT __stdcall CopyFace();
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000232), helpcontext(0x00010232)]
	HRESULT __stdcall Edit();
	[id(0x00000258), propget, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000258), propput, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[in]VARIANT_BOOL RHS);
	[id(0x00000163), propget, helpcontext(0x00010163)]
	HRESULT __stdcall HelpContextID(
		[out, retval]long* RHS);
	[id(0x00000163), propput, helpcontext(0x00010163)]
	HRESULT __stdcall HelpContextID(
		[in]long RHS);
	[id(0x00000168), propget, helpcontext(0x00010168)]
	HRESULT __stdcall HelpFile(
		[out, retval]BSTR* RHS);
	[id(0x00000168), propput, helpcontext(0x00010168)]
	HRESULT __stdcall HelpFile(
		[in]BSTR RHS);
	[id(0x0000023a), propget, helpcontext(0x0001023a)]
	HRESULT __stdcall ID(
		[out, retval]long* RHS);
	[id(0x00000231), propget, helpcontext(0x00010231)]
	HRESULT __stdcall IsGap(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000027d), helpcontext(0x0001027d)]
	HRESULT __stdcall Move(
		[in]Toolbar* Toolbar,
		[in]long Before);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x00000254), propget, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[out, retval]BSTR* RHS);
	[id(0x00000254), propput, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[in]BSTR RHS);
	[id(0x000003c7), helpcontext(0x000103c7)]
	HRESULT __stdcall PasteFace();
	[id(0x00000230), propget, helpcontext(0x00010230)]
	HRESULT __stdcall Pushed(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000230), propput, helpcontext(0x00010230)]
	HRESULT __stdcall Pushed(
		[in]VARIANT_BOOL RHS);
	[id(0x0000022b), helpcontext(0x0001022b)]
	HRESULT __stdcall Reset();
	[id(0x00000182), propget, helpcontext(0x00010182)]
	HRESULT __stdcall StatusBar(
		[out, retval]BSTR* RHS);
	[id(0x00000182), propput, helpcontext(0x00010182)]
	HRESULT __stdcall StatusBar(
		[in]BSTR RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]long* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]long RHS);
};
'!
!ExcelIToolbarButton categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIToolbarButton methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

builtIn
	"Answer the <varbool> value of the 'BuiltIn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_BuiltIn: answer.
	^answer asObject
!

builtInFace
	"Answer the <varbool> value of the 'BuiltInFace' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_BuiltInFace: answer.
	^answer asObject
!

builtInFace: rhs
	"Set the 'BuiltInFace' property of the receiver to the <varbool> value of the argument."

	self put_BuiltInFace: rhs
!

copy: toolbar before: before
	"Invoke the Copy() method of the COM object."

	^self
		Copy: toolbar
		before: before
!

Copy: toolbar before: before
	"Private - Invoke the Copy() method of the COM object.

		HRESULT __stdcall Copy(
			[in]Toolbar* Toolbar,
			[in]long Before);"

	<virtual stdcall: hresult 14 ExcelToolbar* sdword>
	^self invalidCall!

copyFace
	"Invoke the CopyFace() method of the COM object."

	^self CopyFace
!

CopyFace
	"Private - Invoke the CopyFace() method of the COM object.

		HRESULT __stdcall CopyFace();"

	<virtual stdcall: hresult 15>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

edit
	"Invoke the Edit() method of the COM object."

	^self Edit
!

Edit
	"Private - Invoke the Edit() method of the COM object.

		HRESULT __stdcall Edit();"

	<virtual stdcall: hresult 17>
	^self invalidCall!

enabled
	"Answer the <varbool> value of the 'Enabled' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Enabled: answer.
	^answer asObject
!

enabled: rhs
	"Set the 'Enabled' property of the receiver to the <varbool> value of the argument."

	self put_Enabled: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BuiltIn: rhs
	"Private - Get the value of the 'BuiltIn' property of the receiver.

		HRESULT __stdcall BuiltIn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_BuiltInFace: rhs
	"Private - Get the value of the 'BuiltInFace' property of the receiver.

		HRESULT __stdcall BuiltInFace(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 12 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Enabled: rhs
	"Private - Get the value of the 'Enabled' property of the receiver.

		HRESULT __stdcall Enabled(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

get_HelpContextID: rhs
	"Private - Get the value of the 'HelpContextID' property of the receiver.

		HRESULT __stdcall HelpContextID(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_HelpFile: rhs
	"Private - Get the value of the 'HelpFile' property of the receiver.

		HRESULT __stdcall HelpFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 22 bstr*>
	^self invalidCall!

get_ID: rhs
	"Private - Get the value of the 'ID' property of the receiver.

		HRESULT __stdcall ID(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_IsGap: rhs
	"Private - Get the value of the 'IsGap' property of the receiver.

		HRESULT __stdcall IsGap(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 27 bstr*>
	^self invalidCall!

get_OnAction: rhs
	"Private - Get the value of the 'OnAction' property of the receiver.

		HRESULT __stdcall OnAction(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 29 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Pushed: rhs
	"Private - Get the value of the 'Pushed' property of the receiver.

		HRESULT __stdcall Pushed(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_StatusBar: rhs
	"Private - Get the value of the 'StatusBar' property of the receiver.

		HRESULT __stdcall StatusBar(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 35 bstr*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 37 sdword*>
	^self invalidCall!

helpContextID
	"Answer the <sdword> value of the 'HelpContextID' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HelpContextID: answer.
	^answer asObject
!

helpContextID: rhs
	"Set the 'HelpContextID' property of the receiver to the <sdword> value of the argument."

	self put_HelpContextID: rhs
!

helpFile
	"Answer the <bstr> value of the 'HelpFile' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_HelpFile: answer.
	^answer asObject
!

helpFile: rhs
	"Set the 'HelpFile' property of the receiver to the <bstr> value of the argument."

	self put_HelpFile: rhs
!

id
	"Answer the <sdword> value of the 'ID' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ID: answer.
	^answer asObject
!

isGap
	"Answer the <varbool> value of the 'IsGap' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsGap: answer.
	^answer asObject
!

move: toolbar before: before
	"Invoke the Move() method of the COM object."

	^self
		Move: toolbar
		before: before
!

Move: toolbar before: before
	"Private - Invoke the Move() method of the COM object.

		HRESULT __stdcall Move(
			[in]Toolbar* Toolbar,
			[in]long Before);"

	<virtual stdcall: hresult 26 ExcelToolbar* sdword>
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

onAction
	"Answer the <bstr> value of the 'OnAction' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_OnAction: answer.
	^answer asObject
!

onAction: rhs
	"Set the 'OnAction' property of the receiver to the <bstr> value of the argument."

	self put_OnAction: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pasteFace
	"Invoke the PasteFace() method of the COM object."

	^self PasteFace
!

PasteFace
	"Private - Invoke the PasteFace() method of the COM object.

		HRESULT __stdcall PasteFace();"

	<virtual stdcall: hresult 31>
	^self invalidCall!

pushed
	"Answer the <varbool> value of the 'Pushed' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Pushed: answer.
	^answer asObject
!

pushed: rhs
	"Set the 'Pushed' property of the receiver to the <varbool> value of the argument."

	self put_Pushed: rhs
!

put_BuiltInFace: rhs
	"Private - Set the value of the 'BuiltInFace' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall BuiltInFace(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 13 varbool>
	^self invalidCall!

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

put_HelpContextID: rhs
	"Private - Set the value of the 'HelpContextID' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall HelpContextID(
			[in]long RHS);"

	<virtual stdcall: hresult 21 sdword>
	^self invalidCall!

put_HelpFile: rhs
	"Private - Set the value of the 'HelpFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall HelpFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 23 bstr>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 28 bstr>
	^self invalidCall!

put_OnAction: rhs
	"Private - Set the value of the 'OnAction' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnAction(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 30 bstr>
	^self invalidCall!

put_Pushed: rhs
	"Private - Set the value of the 'Pushed' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Pushed(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_StatusBar: rhs
	"Private - Set the value of the 'StatusBar' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall StatusBar(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 36 bstr>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Width(
			[in]long RHS);"

	<virtual stdcall: hresult 38 sdword>
	^self invalidCall!

reset
	"Invoke the Reset() method of the COM object."

	^self Reset
!

Reset
	"Private - Invoke the Reset() method of the COM object.

		HRESULT __stdcall Reset();"

	<virtual stdcall: hresult 34>
	^self invalidCall!

statusBar
	"Answer the <bstr> value of the 'StatusBar' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_StatusBar: answer.
	^answer asObject
!

statusBar: rhs
	"Set the 'StatusBar' property of the receiver to the <bstr> value of the argument."

	self put_StatusBar: rhs
!

width
	"Answer the <sdword> value of the 'Width' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Width: answer.
	^answer asObject
!

width: rhs
	"Set the 'Width' property of the receiver to the <sdword> value of the argument."

	self put_Width: rhs
! !
!ExcelIToolbarButton categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #builtInFace!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #builtInFace:!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #copy:before:!**auto generated**!methods!public! !
!ExcelIToolbarButton categoriesFor: #Copy:before:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #copyFace!**auto generated**!methods!public! !
!ExcelIToolbarButton categoriesFor: #CopyFace!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIToolbarButton categoriesFor: #Delete!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #edit!**auto generated**!methods!public! !
!ExcelIToolbarButton categoriesFor: #Edit!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_BuiltIn:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_BuiltInFace:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_HelpContextID:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_HelpFile:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_ID:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_IsGap:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_Pushed:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_StatusBar:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #helpContextID!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #helpContextID:!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #helpFile!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #helpFile:!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #id!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #isGap!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #move:before:!**auto generated**!methods!public! !
!ExcelIToolbarButton categoriesFor: #Move:before:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #pasteFace!**auto generated**!methods!public! !
!ExcelIToolbarButton categoriesFor: #PasteFace!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #pushed!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #pushed:!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #put_BuiltInFace:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #put_HelpContextID:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #put_HelpFile:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #put_Pushed:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #put_StatusBar:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #reset!**auto generated**!methods!public! !
!ExcelIToolbarButton categoriesFor: #Reset!**auto generated**!COM Interfaces-IToolbarButton!private! !
!ExcelIToolbarButton categoriesFor: #statusBar!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #statusBar:!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIToolbarButton categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelIToolbarButton class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IToolbarButton'
		ExcelIToolbarButton defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BuiltIn:
			argumentTypes: 'varbool*';
		defineFunction: #get_BuiltInFace:
			argumentTypes: 'varbool*';
		defineFunction: #put_BuiltInFace:
			argumentTypes: 'varbool';
		defineFunction: #Copy:before:
			argumentTypes: 'ExcelToolbar* sdword';
		defineFunction: #CopyFace;
		defineFunction: #Delete;
		defineFunction: #Edit;
		defineFunction: #get_Enabled:
			argumentTypes: 'varbool*';
		defineFunction: #put_Enabled:
			argumentTypes: 'varbool';
		defineFunction: #get_HelpContextID:
			argumentTypes: 'sdword*';
		defineFunction: #put_HelpContextID:
			argumentTypes: 'sdword';
		defineFunction: #get_HelpFile:
			argumentTypes: 'bstr*';
		defineFunction: #put_HelpFile:
			argumentTypes: 'bstr';
		defineFunction: #get_ID:
			argumentTypes: 'sdword*';
		defineFunction: #get_IsGap:
			argumentTypes: 'varbool*';
		defineFunction: #Move:before:
			argumentTypes: 'ExcelToolbar* sdword';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_OnAction:
			argumentTypes: 'bstr*';
		defineFunction: #put_OnAction:
			argumentTypes: 'bstr';
		defineFunction: #PasteFace;
		defineFunction: #get_Pushed:
			argumentTypes: 'varbool*';
		defineFunction: #put_Pushed:
			argumentTypes: 'varbool';
		defineFunction: #Reset;
		defineFunction: #get_StatusBar:
			argumentTypes: 'bstr*';
		defineFunction: #put_StatusBar:
			argumentTypes: 'bstr';
		defineFunction: #get_Width:
			argumentTypes: 'sdword*';
		defineFunction: #put_Width:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIToolbarButton initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIToolbarButton class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIToolbarButton class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

