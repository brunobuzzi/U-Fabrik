"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISmartTagRecognizer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISmartTagRecognizer guid: (IID fromString: '{00024462-0001-0000-C000-000000000046}')!
ExcelISmartTagRecognizer comment: '<ExcelISmartTagRecognizer> is a wrapper class for the COM interface ''Excel.ISmartTagRecognizer'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024462-0001-0000-C000-000000000046), 
	helpcontext(0x000200f8), 
	hidden
]
interface ISmartTagRecognizer : IDispatch
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
	[id(0x000008a8), propget, helpcontext(0x000108a8)]
	HRESULT __stdcall progID(
		[out, retval]BSTR* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x00000121), propget, helpcontext(0x00010121)]
	HRESULT __stdcall FullName(
		[out, retval]BSTR* RHS);
};
'!
!ExcelISmartTagRecognizer categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISmartTagRecognizer methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
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

fullName
	"Answer the <bstr> value of the 'FullName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_FullName: answer.
	^answer asObject
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
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

get_Enabled: rhs
	"Private - Get the value of the 'Enabled' property of the receiver.

		HRESULT __stdcall Enabled(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_FullName: rhs
	"Private - Get the value of the 'FullName' property of the receiver.

		HRESULT __stdcall FullName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_progID: rhs
	"Private - Get the value of the 'progID' property of the receiver.

		HRESULT __stdcall progID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

progID
	"Answer the <bstr> value of the 'progID' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_progID: answer.
	^answer asObject
!

put_Enabled: rhs
	"Private - Set the value of the 'Enabled' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Enabled(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelISmartTagRecognizer categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelISmartTagRecognizer categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISmartTagRecognizer categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISmartTagRecognizer categoriesFor: #enabled!**auto generated**!properties!public! !
!ExcelISmartTagRecognizer categoriesFor: #enabled:!**auto generated**!properties!public! !
!ExcelISmartTagRecognizer categoriesFor: #fullName!**auto generated**!properties!public! !
!ExcelISmartTagRecognizer categoriesFor: #get__Default:!**auto generated**!COM Interfaces-ISmartTagRecognizer!private! !
!ExcelISmartTagRecognizer categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISmartTagRecognizer!private! !
!ExcelISmartTagRecognizer categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISmartTagRecognizer!private! !
!ExcelISmartTagRecognizer categoriesFor: #get_Enabled:!**auto generated**!COM Interfaces-ISmartTagRecognizer!private! !
!ExcelISmartTagRecognizer categoriesFor: #get_FullName:!**auto generated**!COM Interfaces-ISmartTagRecognizer!private! !
!ExcelISmartTagRecognizer categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISmartTagRecognizer!private! !
!ExcelISmartTagRecognizer categoriesFor: #get_progID:!**auto generated**!COM Interfaces-ISmartTagRecognizer!private! !
!ExcelISmartTagRecognizer categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISmartTagRecognizer categoriesFor: #progID!**auto generated**!properties!public! !
!ExcelISmartTagRecognizer categoriesFor: #put_Enabled:!**auto generated**!COM Interfaces-ISmartTagRecognizer!private! !
!ExcelISmartTagRecognizer categoriesFor: #value!**auto generated**!properties!public! !

!ExcelISmartTagRecognizer class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISmartTagRecognizer'
		ExcelISmartTagRecognizer defineTemplate"

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
		defineFunction: #get_progID:
			argumentTypes: 'bstr*';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_FullName:
			argumentTypes: 'bstr*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISmartTagRecognizer initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISmartTagRecognizer class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISmartTagRecognizer class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

