"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIChartColorFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIChartColorFormat guid: (IID fromString: '{00024436-0001-0000-C000-000000000046}')!
ExcelIChartColorFormat comment: '<ExcelIChartColorFormat> is a wrapper class for the COM interface ''Excel.IChartColorFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024436-0001-0000-C000-000000000046), 
	helpcontext(0x000200cc), 
	hidden
]
interface IChartColorFormat : IDispatch
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
	[id(0x0000066e), propget, helpcontext(0x0001066e)]
	HRESULT __stdcall SchemeColor(
		[out, retval]long* RHS);
	[id(0x0000066e), propput, helpcontext(0x0001066e)]
	HRESULT __stdcall SchemeColor(
		[in]long RHS);
	[id(0x0000041f), propget, helpcontext(0x0001041f)]
	HRESULT __stdcall RGB(
		[out, retval]long* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]long* RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
};
'!
!ExcelIChartColorFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIChartColorFormat methodsFor!

_default
	"Answer the <sdword> value of the '_Default' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get__Default: answer.
	^answer asObject
!

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

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

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

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_RGB: rhs
	"Private - Get the value of the 'RGB' property of the receiver.

		HRESULT __stdcall RGB(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_SchemeColor: rhs
	"Private - Get the value of the 'SchemeColor' property of the receiver.

		HRESULT __stdcall SchemeColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_SchemeColor: rhs
	"Private - Set the value of the 'SchemeColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SchemeColor(
			[in]long RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

rgb
	"Answer the <sdword> value of the 'RGB' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RGB: answer.
	^answer asObject
!

schemeColor
	"Answer the <sdword> value of the 'SchemeColor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SchemeColor: answer.
	^answer asObject
!

schemeColor: rhs
	"Set the 'SchemeColor' property of the receiver to the <sdword> value of the argument."

	self put_SchemeColor: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

value
	"Answer the <sdword> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelIChartColorFormat categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIChartColorFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIChartColorFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIChartColorFormat categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IChartColorFormat!private! !
!ExcelIChartColorFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IChartColorFormat!private! !
!ExcelIChartColorFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IChartColorFormat!private! !
!ExcelIChartColorFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IChartColorFormat!private! !
!ExcelIChartColorFormat categoriesFor: #get_RGB:!**auto generated**!COM Interfaces-IChartColorFormat!private! !
!ExcelIChartColorFormat categoriesFor: #get_SchemeColor:!**auto generated**!COM Interfaces-IChartColorFormat!private! !
!ExcelIChartColorFormat categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IChartColorFormat!private! !
!ExcelIChartColorFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIChartColorFormat categoriesFor: #put_SchemeColor:!**auto generated**!COM Interfaces-IChartColorFormat!private! !
!ExcelIChartColorFormat categoriesFor: #rgb!**auto generated**!properties!public! !
!ExcelIChartColorFormat categoriesFor: #schemeColor!**auto generated**!properties!public! !
!ExcelIChartColorFormat categoriesFor: #schemeColor:!**auto generated**!properties!public! !
!ExcelIChartColorFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIChartColorFormat categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIChartColorFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IChartColorFormat'
		ExcelIChartColorFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_SchemeColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_SchemeColor:
			argumentTypes: 'sdword';
		defineFunction: #get_RGB:
			argumentTypes: 'sdword*';
		defineFunction: #get__Default:
			argumentTypes: 'sdword*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIChartColorFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIChartColorFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIChartColorFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

