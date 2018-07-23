"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIError guid: (IID fromString: '{0002445D-0001-0000-C000-000000000046}')!
ExcelIError comment: '<ExcelIError> is a wrapper class for the COM interface ''Excel.IError'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002445D-0001-0000-C000-000000000046), 
	helpcontext(0x000200f3), 
	hidden
]
interface IError : IDispatch
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
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008a2), propget, helpcontext(0x000108a2)]
	HRESULT __stdcall Ignore(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008a2), propput, helpcontext(0x000108a2)]
	HRESULT __stdcall Ignore(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIError categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIError methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
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

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Ignore: rhs
	"Private - Get the value of the 'Ignore' property of the receiver.

		HRESULT __stdcall Ignore(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 12 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

ignore
	"Answer the <varbool> value of the 'Ignore' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Ignore: answer.
	^answer asObject
!

ignore: rhs
	"Set the 'Ignore' property of the receiver to the <varbool> value of the argument."

	self put_Ignore: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Ignore: rhs
	"Private - Set the value of the 'Ignore' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Ignore(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 13 varbool>
	^self invalidCall!

value
	"Answer the <varbool> value of the 'Value' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Value: answer.
	^answer asObject
! !
!ExcelIError categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIError categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIError categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IError!private! !
!ExcelIError categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IError!private! !
!ExcelIError categoriesFor: #get_Ignore:!**auto generated**!COM Interfaces-IError!private! !
!ExcelIError categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IError!private! !
!ExcelIError categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IError!private! !
!ExcelIError categoriesFor: #ignore!**auto generated**!properties!public! !
!ExcelIError categoriesFor: #ignore:!**auto generated**!properties!public! !
!ExcelIError categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIError categoriesFor: #put_Ignore:!**auto generated**!COM Interfaces-IError!private! !
!ExcelIError categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIError class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IError'
		ExcelIError defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Value:
			argumentTypes: 'varbool*';
		defineFunction: #get_Ignore:
			argumentTypes: 'varbool*';
		defineFunction: #put_Ignore:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIError initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIError class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIError class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

