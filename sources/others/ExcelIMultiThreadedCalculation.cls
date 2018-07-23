"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIMultiThreadedCalculation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIMultiThreadedCalculation guid: (IID fromString: '{000244B1-0001-0000-C000-000000000046}')!
ExcelIMultiThreadedCalculation comment: '<ExcelIMultiThreadedCalculation> is a wrapper class for the COM interface ''Excel.IMultiThreadedCalculation'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244B1-0001-0000-C000-000000000046), 
	helpcontext(0x00020147), 
	hidden
]
interface IMultiThreadedCalculation : IDispatch
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
	[id(0x00000ace), propget, helpcontext(0x00010ace)]
	HRESULT __stdcall ThreadMode(
		[out, retval]XlThreadMode* RHS);
	[id(0x00000ace), propput, helpcontext(0x00010ace)]
	HRESULT __stdcall ThreadMode(
		[in]XlThreadMode RHS);
	[id(0x00000acf), propget, helpcontext(0x00010acf)]
	HRESULT __stdcall ThreadCount(
		[out, retval]long* RHS);
	[id(0x00000acf), propput, helpcontext(0x00010acf)]
	HRESULT __stdcall ThreadCount(
		[in]long RHS);
};
'!
!ExcelIMultiThreadedCalculation categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIMultiThreadedCalculation methodsFor!

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

get_ThreadCount: rhs
	"Private - Get the value of the 'ThreadCount' property of the receiver.

		HRESULT __stdcall ThreadCount(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_ThreadMode: rhs
	"Private - Get the value of the 'ThreadMode' property of the receiver.

		HRESULT __stdcall ThreadMode(
			[out, retval]XlThreadMode* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_ThreadCount: rhs
	"Private - Set the value of the 'ThreadCount' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ThreadCount(
			[in]long RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_ThreadMode: rhs
	"Private - Set the value of the 'ThreadMode' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ThreadMode(
			[in]XlThreadMode RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

threadCount
	"Answer the <sdword> value of the 'ThreadCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ThreadCount: answer.
	^answer asObject
!

threadCount: rhs
	"Set the 'ThreadCount' property of the receiver to the <sdword> value of the argument."

	self put_ThreadCount: rhs
!

threadMode
	"Answer the <sdword> value of the 'ThreadMode' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ThreadMode: answer.
	^answer asObject
!

threadMode: rhs
	"Set the 'ThreadMode' property of the receiver to the <sdword> value of the argument."

	self put_ThreadMode: rhs
! !
!ExcelIMultiThreadedCalculation categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIMultiThreadedCalculation categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIMultiThreadedCalculation categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelIMultiThreadedCalculation categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelIMultiThreadedCalculation categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #get_ThreadCount:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #get_ThreadMode:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIMultiThreadedCalculation categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #put_ThreadCount:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #put_ThreadMode:!**auto generated**!COM Interfaces-IMultiThreadedCalculation!private! !
!ExcelIMultiThreadedCalculation categoriesFor: #threadCount!**auto generated**!properties!public! !
!ExcelIMultiThreadedCalculation categoriesFor: #threadCount:!**auto generated**!properties!public! !
!ExcelIMultiThreadedCalculation categoriesFor: #threadMode!**auto generated**!properties!public! !
!ExcelIMultiThreadedCalculation categoriesFor: #threadMode:!**auto generated**!properties!public! !

!ExcelIMultiThreadedCalculation class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IMultiThreadedCalculation'
		ExcelIMultiThreadedCalculation defineTemplate"

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
		defineFunction: #get_ThreadMode:
			argumentTypes: 'sdword*';
		defineFunction: #put_ThreadMode:
			argumentTypes: 'sdword';
		defineFunction: #get_ThreadCount:
			argumentTypes: 'sdword*';
		defineFunction: #put_ThreadCount:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIMultiThreadedCalculation initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIMultiThreadedCalculation class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIMultiThreadedCalculation class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

