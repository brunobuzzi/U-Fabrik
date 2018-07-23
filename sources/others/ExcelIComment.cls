"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIComment guid: (IID fromString: '{00024427-0001-0000-C000-000000000046}')!
ExcelIComment comment: '<ExcelIComment> is a wrapper class for the COM interface ''Excel.IComment'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024427-0001-0000-C000-000000000046), 
	helpcontext(0x000200bd), 
	hidden
]
interface IComment : IDispatch
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
	[id(0x0000023e), propget, helpcontext(0x0001023e)]
	HRESULT __stdcall Author(
		[out, retval]BSTR* RHS);
	[id(0x0000062e), propget, helpcontext(0x0001062e)]
	HRESULT __stdcall Shape(
		[out, retval]Shape** RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x0000008a), helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in, optional]VARIANT Text,
		[in, optional]VARIANT Start,
		[in, optional]VARIANT Overwrite,
		[out, retval]BSTR* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000001f6), helpcontext(0x000101f6)]
	HRESULT __stdcall Next(
		[out, retval]Comment** RHS);
	[id(0x000001f7), helpcontext(0x000101f7)]
	HRESULT __stdcall Previous(
		[out, retval]Comment** RHS);
};
'!
!ExcelIComment categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIComment methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

author
	"Answer the <bstr> value of the 'Author' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Author: answer.
	^answer asObject
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

	<virtual stdcall: hresult 16>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Author: rhs
	"Private - Get the value of the 'Author' property of the receiver.

		HRESULT __stdcall Author(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Shape: rhs
	"Private - Get the value of the 'Shape' property of the receiver.

		HRESULT __stdcall Shape(
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 12 ExcelShape**>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

next
	"Answer the <ExcelComment> result of invoking the Next() method of the COM object."

	| answer |
	answer := ExcelComment newPointer.
	self Next: answer.
	^answer asObject
!

Next: rhs
	"Private - Invoke the Next() method of the COM object.

		HRESULT __stdcall Next(
			[out, retval]Comment** RHS);"

	<virtual stdcall: hresult 17 ExcelComment**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

previous
	"Answer the <ExcelComment> result of invoking the Previous() method of the COM object."

	| answer |
	answer := ExcelComment newPointer.
	self Previous: answer.
	^answer asObject
!

Previous: rhs
	"Private - Invoke the Previous() method of the COM object.

		HRESULT __stdcall Previous(
			[out, retval]Comment** RHS);"

	<virtual stdcall: hresult 18 ExcelComment**>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

shape
	"Answer the <ExcelShape> value of the 'Shape' property of the receiver."

	| answer |
	answer := ExcelShape newPointer.
	self get_Shape: answer.
	^answer asObject
!

text
	"Answer the <BSTR> result of invoking the Text() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 text: VARIANT unspecified
		 start: VARIANT unspecified
		 overwrite: VARIANT unspecified!

text: text start: start overwrite: overwrite
	"Answer the <BSTR> result of invoking the Text() method of the COM object."

	| answer |
	answer := BSTR new.
	self
		Text: text asVariant
		start: start asVariant
		overwrite: overwrite asVariant
		rhs: answer.
	^answer asObject
!

Text: text start: start overwrite: overwrite rhs: rhs
	"Private - Invoke the Text() method of the COM object.

		HRESULT __stdcall Text(
			[in, optional]VARIANT Text,
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Overwrite,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 variant variant variant bstr*>
	^self invalidCall!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Visible: answer.
	^answer asObject
!

visible: rhs
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument."

	self put_Visible: rhs
! !
!ExcelIComment categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIComment categoriesFor: #author!**auto generated**!properties!public! !
!ExcelIComment categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIComment categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIComment categoriesFor: #Delete!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #get_Author:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #get_Shape:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #next!**auto generated**!methods!public! !
!ExcelIComment categoriesFor: #Next:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIComment categoriesFor: #previous!**auto generated**!methods!public! !
!ExcelIComment categoriesFor: #Previous:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #shape!**auto generated**!properties!public! !
!ExcelIComment categoriesFor: #text!**auto generated**!methods!public! !
!ExcelIComment categoriesFor: #text:start:overwrite:!**auto generated**!methods!public! !
!ExcelIComment categoriesFor: #Text:start:overwrite:rhs:!**auto generated**!COM Interfaces-IComment!private! !
!ExcelIComment categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIComment categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelIComment class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IComment'
		ExcelIComment defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Author:
			argumentTypes: 'bstr*';
		defineFunction: #get_Shape:
			argumentTypes: 'ExcelShape**';
		defineFunction: #get_Visible:
			argumentTypes: 'varbool*';
		defineFunction: #put_Visible:
			argumentTypes: 'varbool';
		defineFunction: #Text:start:overwrite:rhs:
			argumentTypes: 'variant variant variant bstr*';
		defineFunction: #Delete;
		defineFunction: #Next:
			argumentTypes: 'ExcelComment**';
		defineFunction: #Previous:
			argumentTypes: 'ExcelComment**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIComment initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIComment class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIComment class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

