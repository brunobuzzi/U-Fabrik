"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelILinkFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelILinkFormat guid: (IID fromString: '{00024442-0001-0000-C000-000000000046}')!
ExcelILinkFormat comment: '<ExcelILinkFormat> is a wrapper class for the COM interface ''Excel.ILinkFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024442-0001-0000-C000-000000000046), 
	helpcontext(0x000200d8), 
	hidden
]
interface ILinkFormat : IDispatch
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
	[id(0x00000418), propget, helpcontext(0x00010418)]
	HRESULT __stdcall AutoUpdate(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000418), propput, helpcontext(0x00010418)]
	HRESULT __stdcall AutoUpdate(
		[in]VARIANT_BOOL RHS);
	[id(0x0000010d), propget, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000010d), propput, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[in]VARIANT_BOOL RHS);
	[id(0x000002a8), helpcontext(0x000102a8)]
	HRESULT __stdcall Update();
};
'!
!ExcelILinkFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelILinkFormat methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoUpdate
	"Answer the <varbool> value of the 'AutoUpdate' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoUpdate: answer.
	^answer asObject
!

autoUpdate: rhs
	"Set the 'AutoUpdate' property of the receiver to the <varbool> value of the argument."

	self put_AutoUpdate: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoUpdate: rhs
	"Private - Get the value of the 'AutoUpdate' property of the receiver.

		HRESULT __stdcall AutoUpdate(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Locked: answer.
	^answer asObject
!

locked: rhs
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument."

	self put_Locked: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AutoUpdate: rhs
	"Private - Set the value of the 'AutoUpdate' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoUpdate(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

update
	"Invoke the Update() method of the COM object."

	^self Update
!

Update
	"Private - Invoke the Update() method of the COM object.

		HRESULT __stdcall Update();"

	<virtual stdcall: hresult 15>
	^self invalidCall! !
!ExcelILinkFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelILinkFormat categoriesFor: #autoUpdate!**auto generated**!properties!public! !
!ExcelILinkFormat categoriesFor: #autoUpdate:!**auto generated**!properties!public! !
!ExcelILinkFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelILinkFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ILinkFormat!private! !
!ExcelILinkFormat categoriesFor: #get_AutoUpdate:!**auto generated**!COM Interfaces-ILinkFormat!private! !
!ExcelILinkFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ILinkFormat!private! !
!ExcelILinkFormat categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-ILinkFormat!private! !
!ExcelILinkFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ILinkFormat!private! !
!ExcelILinkFormat categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelILinkFormat categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelILinkFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelILinkFormat categoriesFor: #put_AutoUpdate:!**auto generated**!COM Interfaces-ILinkFormat!private! !
!ExcelILinkFormat categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-ILinkFormat!private! !
!ExcelILinkFormat categoriesFor: #update!**auto generated**!methods!public! !
!ExcelILinkFormat categoriesFor: #Update!**auto generated**!COM Interfaces-ILinkFormat!private! !

!ExcelILinkFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ILinkFormat'
		ExcelILinkFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_AutoUpdate:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoUpdate:
			argumentTypes: 'varbool';
		defineFunction: #get_Locked:
			argumentTypes: 'varbool*';
		defineFunction: #put_Locked:
			argumentTypes: 'varbool';
		defineFunction: #Update
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelILinkFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelILinkFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelILinkFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

