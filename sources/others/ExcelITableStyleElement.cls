"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelITableStyleElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelITableStyleElement guid: (IID fromString: '{000244A5-0001-0000-C000-000000000046}')!
ExcelITableStyleElement comment: '<ExcelITableStyleElement> is a wrapper class for the COM interface ''Excel.ITableStyleElement'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244A5-0001-0000-C000-000000000046), 
	helpcontext(0x0002013b), 
	hidden
]
interface ITableStyleElement : IDispatch
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
	[id(0x00000aaf), propget, helpcontext(0x00010aaf)]
	HRESULT __stdcall HasFormat(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x000001b3), propget, helpcontext(0x000101b3)]
	HRESULT __stdcall Borders(
		[out, retval]Borders** RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x00000ab0), propget, helpcontext(0x00010ab0)]
	HRESULT __stdcall StripeSize(
		[out, retval]long* RHS);
	[id(0x00000ab0), propput, helpcontext(0x00010ab0)]
	HRESULT __stdcall StripeSize(
		[in]long RHS);
	[id(0x0000006f), helpcontext(0x0001006f)]
	HRESULT __stdcall Clear();
};
'!
!ExcelITableStyleElement categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelITableStyleElement methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver."

	| answer |
	answer := ExcelBorders newPointer.
	self get_Borders: answer.
	^answer asObject
!

clear
	"Invoke the Clear() method of the COM object."

	^self Clear
!

Clear
	"Private - Invoke the Clear() method of the COM object.

		HRESULT __stdcall Clear();"

	<virtual stdcall: hresult 17>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Borders: rhs
	"Private - Get the value of the 'Borders' property of the receiver.

		HRESULT __stdcall Borders(
			[out, retval]Borders** RHS);"

	<virtual stdcall: hresult 13 ExcelBorders**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 14 ExcelFont**>
	^self invalidCall!

get_HasFormat: rhs
	"Private - Get the value of the 'HasFormat' property of the receiver.

		HRESULT __stdcall HasFormat(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 12 ExcelInterior**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_StripeSize: rhs
	"Private - Get the value of the 'StripeSize' property of the receiver.

		HRESULT __stdcall StripeSize(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

hasFormat
	"Answer the <varbool> value of the 'HasFormat' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasFormat: answer.
	^answer asObject
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_StripeSize: rhs
	"Private - Set the value of the 'StripeSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall StripeSize(
			[in]long RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

stripeSize
	"Answer the <sdword> value of the 'StripeSize' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_StripeSize: answer.
	^answer asObject
!

stripeSize: rhs
	"Set the 'StripeSize' property of the receiver to the <sdword> value of the argument."

	self put_StripeSize: rhs
! !
!ExcelITableStyleElement categoriesFor: #application!**auto generated**!properties!public! !
!ExcelITableStyleElement categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelITableStyleElement categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelITableStyleElement categoriesFor: #Clear!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelITableStyleElement categoriesFor: #font!**auto generated**!properties!public! !
!ExcelITableStyleElement categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #get_Borders:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #get_Font:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #get_HasFormat:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #get_StripeSize:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #hasFormat!**auto generated**!properties!public! !
!ExcelITableStyleElement categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelITableStyleElement categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelITableStyleElement categoriesFor: #put_StripeSize:!**auto generated**!COM Interfaces-ITableStyleElement!private! !
!ExcelITableStyleElement categoriesFor: #stripeSize!**auto generated**!properties!public! !
!ExcelITableStyleElement categoriesFor: #stripeSize:!**auto generated**!properties!public! !

!ExcelITableStyleElement class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ITableStyleElement'
		ExcelITableStyleElement defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_HasFormat:
			argumentTypes: 'varbool*';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Borders:
			argumentTypes: 'ExcelBorders**';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #get_StripeSize:
			argumentTypes: 'sdword*';
		defineFunction: #put_StripeSize:
			argumentTypes: 'sdword';
		defineFunction: #Clear
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelITableStyleElement initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelITableStyleElement class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelITableStyleElement class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

