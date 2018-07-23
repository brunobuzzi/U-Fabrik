"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAutoRecover
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAutoRecover guid: (IID fromString: '{0002445A-0001-0000-C000-000000000046}')!
ExcelIAutoRecover comment: '<ExcelIAutoRecover> is a wrapper class for the COM interface ''Excel.IAutoRecover'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002445A-0001-0000-C000-000000000046), 
	helpcontext(0x000200f0), 
	hidden
]
interface IAutoRecover : IDispatch
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
	[id(0x00000258), propget, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000258), propput, helpcontext(0x00010258)]
	HRESULT __stdcall Enabled(
		[in]VARIANT_BOOL RHS);
	[id(0x0000018a), propget, helpcontext(0x0001018a)]
	HRESULT __stdcall Time(
		[out, retval]long* RHS);
	[id(0x0000018a), propput, helpcontext(0x0001018a)]
	HRESULT __stdcall Time(
		[in]long RHS);
	[id(0x00000123), propget, helpcontext(0x00010123)]
	HRESULT __stdcall Path(
		[out, retval]BSTR* RHS);
	[id(0x00000123), propput, helpcontext(0x00010123)]
	HRESULT __stdcall Path(
		[in]BSTR RHS);
};
'!
!ExcelIAutoRecover categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAutoRecover methodsFor!

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

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Path: rhs
	"Private - Get the value of the 'Path' property of the receiver.

		HRESULT __stdcall Path(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_Time: rhs
	"Private - Get the value of the 'Time' property of the receiver.

		HRESULT __stdcall Time(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

path
	"Answer the <bstr> value of the 'Path' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Path: answer.
	^answer asObject
!

path: rhs
	"Set the 'Path' property of the receiver to the <bstr> value of the argument."

	self put_Path: rhs
!

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_Path: rhs
	"Private - Set the value of the 'Path' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Path(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 bstr>
	^self invalidCall!

put_Time: rhs
	"Private - Set the value of the 'Time' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Time(
			[in]long RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

time
	"Answer the <sdword> value of the 'Time' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Time: answer.
	^answer asObject
!

time: rhs
	"Set the 'Time' property of the receiver to the <sdword> value of the argument."

	self put_Time: rhs
! !
!ExcelIAutoRecover categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAutoRecover categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAutoRecover categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIAutoRecover categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIAutoRecover categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #get_Path:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #get_Time:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIAutoRecover categoriesFor: #path!**auto generated**!properties!public! !
!ExcelIAutoRecover categoriesFor: #path:!**auto generated**!properties!public! !
!ExcelIAutoRecover categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #put_Path:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #put_Time:!**auto generated**!COM Interfaces-IAutoRecover!private! !
!ExcelIAutoRecover categoriesFor: #time!**auto generated**!properties!public! !
!ExcelIAutoRecover categoriesFor: #time:!**auto generated**!properties!public! !

!ExcelIAutoRecover class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAutoRecover'
		ExcelIAutoRecover defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Enabled:
			argumentTypes: 'varbool*';
		defineFunction: #put_Enabled:
			argumentTypes: 'varbool';
		defineFunction: #get_Time:
			argumentTypes: 'sdword*';
		defineFunction: #put_Time:
			argumentTypes: 'sdword';
		defineFunction: #get_Path:
			argumentTypes: 'bstr*';
		defineFunction: #put_Path:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAutoRecover initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAutoRecover class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAutoRecover class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

