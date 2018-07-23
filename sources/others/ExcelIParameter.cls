"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIParameter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIParameter guid: (IID fromString: '{0002442A-0001-0000-C000-000000000046}')!
ExcelIParameter comment: '<ExcelIParameter> is a wrapper class for the COM interface ''Excel.IParameter'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002442A-0001-0000-C000-000000000046), 
	helpcontext(0x000200c0), 
	hidden
]
interface IParameter : IDispatch
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
	[id(0x000002d2), propget, helpcontext(0x000102d2)]
	HRESULT __stdcall DataType(
		[out, retval]XlParameterDataType* RHS);
	[id(0x000002d2), propput, helpcontext(0x000102d2)]
	HRESULT __stdcall DataType(
		[in]XlParameterDataType RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlParameterType* RHS);
	[id(0x0000063f), propget, helpcontext(0x0001063f)]
	HRESULT __stdcall PromptString(
		[out, retval]BSTR* RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]VARIANT* RHS);
	[id(0x00000640), propget, helpcontext(0x00010640)]
	HRESULT __stdcall SourceRange(
		[out, retval]Range** RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x00000641), helpcontext(0x00010641)]
	HRESULT __stdcall SetParam(
		[in]XlParameterType Type,
		[in]VARIANT Value);
	[id(0x00000757), propget, helpcontext(0x00010757)]
	HRESULT __stdcall RefreshOnChange(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000757), propput, helpcontext(0x00010757)]
	HRESULT __stdcall RefreshOnChange(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIParameter categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIParameter methodsFor!

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

dataType
	"Answer the <sdword> value of the 'DataType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DataType: answer.
	^answer asObject
!

dataType: rhs
	"Set the 'DataType' property of the receiver to the <sdword> value of the argument."

	self put_DataType: rhs
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

get_DataType: rhs
	"Private - Get the value of the 'DataType' property of the receiver.

		HRESULT __stdcall DataType(
			[out, retval]XlParameterDataType* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 17 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PromptString: rhs
	"Private - Get the value of the 'PromptString' property of the receiver.

		HRESULT __stdcall PromptString(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_RefreshOnChange: rhs
	"Private - Get the value of the 'RefreshOnChange' property of the receiver.

		HRESULT __stdcall RefreshOnChange(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 20 varbool*>
	^self invalidCall!

get_SourceRange: rhs
	"Private - Get the value of the 'SourceRange' property of the receiver.

		HRESULT __stdcall SourceRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 16 ExcelRange**>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlParameterType* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

promptString
	"Answer the <bstr> value of the 'PromptString' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PromptString: answer.
	^answer asObject
!

put_DataType: rhs
	"Private - Set the value of the 'DataType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DataType(
			[in]XlParameterDataType RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 18 bstr>
	^self invalidCall!

put_RefreshOnChange: rhs
	"Private - Set the value of the 'RefreshOnChange' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RefreshOnChange(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 21 varbool>
	^self invalidCall!

refreshOnChange
	"Answer the <varbool> value of the 'RefreshOnChange' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RefreshOnChange: answer.
	^answer asObject
!

refreshOnChange: rhs
	"Set the 'RefreshOnChange' property of the receiver to the <varbool> value of the argument."

	self put_RefreshOnChange: rhs
!

setParam: type value: value
	"Invoke the SetParam() method of the COM object."

	^self
		SetParam: type
		value: value asVariant
!

SetParam: type value: value
	"Private - Invoke the SetParam() method of the COM object.

		HRESULT __stdcall SetParam(
			[in]XlParameterType Type,
			[in]VARIANT Value);"

	<virtual stdcall: hresult 19 sdword variant>
	^self invalidCall!

sourceRange
	"Answer the <ExcelRange> value of the 'SourceRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_SourceRange: answer.
	^answer asObject
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

value
	"Answer the <variant> value of the 'Value' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Value: answer.
	^answer asObject
! !
!ExcelIParameter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #dataType!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #dataType:!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_DataType:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_PromptString:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_RefreshOnChange:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_SourceRange:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #promptString!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #put_DataType:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #put_RefreshOnChange:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #refreshOnChange!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #refreshOnChange:!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #setParam:value:!**auto generated**!methods!public! !
!ExcelIParameter categoriesFor: #SetParam:value:!**auto generated**!COM Interfaces-IParameter!private! !
!ExcelIParameter categoriesFor: #sourceRange!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIParameter categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIParameter class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IParameter'
		ExcelIParameter defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_DataType:
			argumentTypes: 'sdword*';
		defineFunction: #put_DataType:
			argumentTypes: 'sdword';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_PromptString:
			argumentTypes: 'bstr*';
		defineFunction: #get_Value:
			argumentTypes: 'variant*';
		defineFunction: #get_SourceRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #SetParam:value:
			argumentTypes: 'sdword variant';
		defineFunction: #get_RefreshOnChange:
			argumentTypes: 'varbool*';
		defineFunction: #put_RefreshOnChange:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIParameter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIParameter class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIParameter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

