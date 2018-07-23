"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIMenu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIMenu guid: (IID fromString: '{00020866-0001-0000-C000-000000000046}')!
ExcelIMenu comment: '<ExcelIMenu> is a wrapper class for the COM interface ''Excel.IMenu'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020866-0001-0000-C000-000000000046), 
	helpcontext(0x00020026), 
	hidden
]
interface IMenu : IDispatch
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
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000258), propget, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000258), propput, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[in]VARIANT_BOOL RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x00000251), propget, helpcontext(0x00010251)]
	HRESULT __stdcall MenuItems(
		[out, retval]MenuItems** RHS);
};
'!
!ExcelIMenu categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIMenu methodsFor!

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

	<virtual stdcall: hresult 13>
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

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_MenuItems: rhs
	"Private - Get the value of the 'MenuItems' property of the receiver.

		HRESULT __stdcall MenuItems(
			[out, retval]MenuItems** RHS);"

	<virtual stdcall: hresult 17 ExcelMenuItems**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

menuItems
	"Answer the <ExcelMenuItems> value of the 'MenuItems' property of the receiver."

	| answer |
	answer := ExcelMenuItems newPointer.
	self get_MenuItems: answer.
	^answer asObject
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

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 15 varbool>
	^self invalidCall! !
!ExcelIMenu categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIMenu categoriesFor: #Delete!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #get_MenuItems:!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #menuItems!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIMenu categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IMenu!private! !
!ExcelIMenu categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IMenu!private! !

!ExcelIMenu class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IMenu'
		ExcelIMenu defineTemplate"

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
		defineFunction: #Delete;
		defineFunction: #get_Enabled:
			argumentTypes: 'varbool*';
		defineFunction: #put_Enabled:
			argumentTypes: 'varbool';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_MenuItems:
			argumentTypes: 'ExcelMenuItems**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIMenu initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIMenu class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIMenu class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

