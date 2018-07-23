"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISmartTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISmartTag guid: (IID fromString: '{00024460-0001-0000-C000-000000000046}')!
ExcelISmartTag comment: '<ExcelISmartTag> is a wrapper class for the COM interface ''Excel.ISmartTag'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024460-0001-0000-C000-000000000046), 
	helpcontext(0x000200f6), 
	hidden
]
interface ISmartTag : IDispatch
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
	[id(0x000008a4), propget, helpcontext(0x000108a4)]
	HRESULT __stdcall DownloadURL(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x000008a5), propget, helpcontext(0x000108a5)]
	HRESULT __stdcall XML(
		[out, retval]BSTR* RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[out, retval]Range** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000008a6), propget, helpcontext(0x000108a6)]
	HRESULT __stdcall SmartTagActions(
		[out, retval]SmartTagActions** RHS);
	[id(0x00000857), propget, helpcontext(0x00010857)]
	HRESULT __stdcall Properties(
		[out, retval]CustomProperties** RHS);
};
'!
!ExcelISmartTag categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISmartTag methodsFor!

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

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

downloadURL
	"Answer the <bstr> value of the 'DownloadURL' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_DownloadURL: answer.
	^answer asObject
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
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

get_DownloadURL: rhs
	"Private - Get the value of the 'DownloadURL' property of the receiver.

		HRESULT __stdcall DownloadURL(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Properties: rhs
	"Private - Get the value of the 'Properties' property of the receiver.

		HRESULT __stdcall Properties(
			[out, retval]CustomProperties** RHS);"

	<virtual stdcall: hresult 18 ExcelCustomProperties**>
	^self invalidCall!

get_Range: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 15 ExcelRange**>
	^self invalidCall!

get_SmartTagActions: rhs
	"Private - Get the value of the 'SmartTagActions' property of the receiver.

		HRESULT __stdcall SmartTagActions(
			[out, retval]SmartTagActions** RHS);"

	<virtual stdcall: hresult 17 ExcelSmartTagActions**>
	^self invalidCall!

get_XML: rhs
	"Private - Get the value of the 'XML' property of the receiver.

		HRESULT __stdcall XML(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

properties
	"Answer the <ExcelCustomProperties> value of the 'Properties' property of the receiver."

	| answer |
	answer := ExcelCustomProperties newPointer.
	self get_Properties: answer.
	^answer asObject
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Range: answer.
	^answer asObject
!

smartTagActions
	"Answer the <ExcelSmartTagActions> value of the 'SmartTagActions' property of the receiver."

	| answer |
	answer := ExcelSmartTagActions newPointer.
	self get_SmartTagActions: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

xml
	"Answer the <bstr> value of the 'XML' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_XML: answer.
	^answer asObject
! !
!ExcelISmartTag categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelISmartTag categoriesFor: #Delete!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #downloadURL!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #get__Default:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_DownloadURL:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_Properties:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_Range:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_SmartTagActions:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #get_XML:!**auto generated**!COM Interfaces-ISmartTag!private! !
!ExcelISmartTag categoriesFor: #name!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #properties!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #range!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #smartTagActions!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #value!**auto generated**!properties!public! !
!ExcelISmartTag categoriesFor: #xml!**auto generated**!properties!public! !

!ExcelISmartTag class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISmartTag'
		ExcelISmartTag defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_DownloadURL:
			argumentTypes: 'bstr*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_XML:
			argumentTypes: 'bstr*';
		defineFunction: #get_Range:
			argumentTypes: 'ExcelRange**';
		defineFunction: #Delete;
		defineFunction: #get_SmartTagActions:
			argumentTypes: 'ExcelSmartTagActions**';
		defineFunction: #get_Properties:
			argumentTypes: 'ExcelCustomProperties**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISmartTag initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISmartTag class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISmartTag class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

