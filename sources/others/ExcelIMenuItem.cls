"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIMenuItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIMenuItem guid: (IID fromString: '{00020868-0001-0000-C000-000000000046}')!
ExcelIMenuItem comment: '<ExcelIMenuItem> is a wrapper class for the COM interface ''Excel.IMenuItem'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020868-0001-0000-C000-000000000046), 
	helpcontext(0x00020028), 
	hidden
]
interface IMenuItem : IDispatch
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
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x00000257), propget, helpcontext(0x00010257)]
	HRESULT __stdcall Checked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000257), propput, helpcontext(0x00010257)]
	HRESULT __stdcall Checked(
		[in]VARIANT_BOOL RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
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
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x00000254), propget, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[out, retval]BSTR* RHS);
	[id(0x00000254), propput, helpcontext(0x00010254)]
	HRESULT __stdcall OnAction(
		[in]BSTR RHS);
	[id(0x00000182), propget, helpcontext(0x00010182)]
	HRESULT __stdcall StatusBar(
		[out, retval]BSTR* RHS);
	[id(0x00000182), propput, helpcontext(0x00010182)]
	HRESULT __stdcall StatusBar(
		[in]BSTR RHS);
};
'!
!ExcelIMenuItem categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIMenuItem methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument."

	self put_Caption: rhs
!

checked
	"Answer the <varbool> value of the 'Checked' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Checked: answer.
	^answer asObject
!

checked: rhs
	"Set the 'Checked' property of the receiver to the <varbool> value of the argument."

	self put_Checked: rhs
!

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

	<virtual stdcall: hresult 15>
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

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Checked: rhs
	"Private - Get the value of the 'Checked' property of the receiver.

		HRESULT __stdcall Checked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
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

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_HelpContextID: rhs
	"Private - Get the value of the 'HelpContextID' property of the receiver.

		HRESULT __stdcall HelpContextID(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_HelpFile: rhs
	"Private - Get the value of the 'HelpFile' property of the receiver.

		HRESULT __stdcall HelpFile(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_OnAction: rhs
	"Private - Get the value of the 'OnAction' property of the receiver.

		HRESULT __stdcall OnAction(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 23 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_StatusBar: rhs
	"Private - Get the value of the 'StatusBar' property of the receiver.

		HRESULT __stdcall StatusBar(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 25 bstr*>
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

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
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

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 12 bstr>
	^self invalidCall!

put_Checked: rhs
	"Private - Set the value of the 'Checked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Checked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

put_HelpContextID: rhs
	"Private - Set the value of the 'HelpContextID' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall HelpContextID(
			[in]long RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_HelpFile: rhs
	"Private - Set the value of the 'HelpFile' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall HelpFile(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 21 bstr>
	^self invalidCall!

put_OnAction: rhs
	"Private - Set the value of the 'OnAction' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall OnAction(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 24 bstr>
	^self invalidCall!

put_StatusBar: rhs
	"Private - Set the value of the 'StatusBar' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall StatusBar(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 26 bstr>
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
! !
!ExcelIMenuItem categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #checked!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #checked:!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIMenuItem categoriesFor: #Delete!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_Checked:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_HelpContextID:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_HelpFile:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_OnAction:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #get_StatusBar:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #helpContextID!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #helpContextID:!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #helpFile!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #helpFile:!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #onAction!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #onAction:!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #put_Checked:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #put_HelpContextID:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #put_HelpFile:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #put_OnAction:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #put_StatusBar:!**auto generated**!COM Interfaces-IMenuItem!private! !
!ExcelIMenuItem categoriesFor: #statusBar!**auto generated**!properties!public! !
!ExcelIMenuItem categoriesFor: #statusBar:!**auto generated**!properties!public! !

!ExcelIMenuItem class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IMenuItem'
		ExcelIMenuItem defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_Checked:
			argumentTypes: 'varbool*';
		defineFunction: #put_Checked:
			argumentTypes: 'varbool';
		defineFunction: #Delete;
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
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_OnAction:
			argumentTypes: 'bstr*';
		defineFunction: #put_OnAction:
			argumentTypes: 'bstr';
		defineFunction: #get_StatusBar:
			argumentTypes: 'bstr*';
		defineFunction: #put_StatusBar:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIMenuItem initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIMenuItem class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIMenuItem class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

