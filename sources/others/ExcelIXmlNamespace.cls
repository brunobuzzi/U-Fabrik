"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIXmlNamespace
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIXmlNamespace guid: (IID fromString: '{00024476-0001-0000-C000-000000000046}')!
ExcelIXmlNamespace comment: '<ExcelIXmlNamespace> is a wrapper class for the COM interface ''Excel.IXmlNamespace'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024476-0001-0000-C000-000000000046), 
	helpcontext(0x0002010c), 
	hidden
]
interface IXmlNamespace : IDispatch
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
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x00000915), propget, helpcontext(0x00010915)]
	HRESULT __stdcall Uri(
		[out, retval]BSTR* RHS);
	[id(0x00000916), propget, helpcontext(0x00010916)]
	HRESULT __stdcall Prefix(
		[out, retval]BSTR* RHS);
};
'!
!ExcelIXmlNamespace categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIXmlNamespace methodsFor!

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

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
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

get_Prefix: rhs
	"Private - Get the value of the 'Prefix' property of the receiver.

		HRESULT __stdcall Prefix(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Uri: rhs
	"Private - Get the value of the 'Uri' property of the receiver.

		HRESULT __stdcall Uri(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

prefix
	"Answer the <bstr> value of the 'Prefix' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Prefix: answer.
	^answer asObject
!

uri
	"Answer the <bstr> value of the 'Uri' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Uri: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelIXmlNamespace categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIXmlNamespace categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIXmlNamespace categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIXmlNamespace categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IXmlNamespace!private! !
!ExcelIXmlNamespace categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IXmlNamespace!private! !
!ExcelIXmlNamespace categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IXmlNamespace!private! !
!ExcelIXmlNamespace categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IXmlNamespace!private! !
!ExcelIXmlNamespace categoriesFor: #get_Prefix:!**auto generated**!COM Interfaces-IXmlNamespace!private! !
!ExcelIXmlNamespace categoriesFor: #get_Uri:!**auto generated**!COM Interfaces-IXmlNamespace!private! !
!ExcelIXmlNamespace categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIXmlNamespace categoriesFor: #prefix!**auto generated**!properties!public! !
!ExcelIXmlNamespace categoriesFor: #uri!**auto generated**!properties!public! !
!ExcelIXmlNamespace categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIXmlNamespace class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IXmlNamespace'
		ExcelIXmlNamespace defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_Uri:
			argumentTypes: 'bstr*';
		defineFunction: #get_Prefix:
			argumentTypes: 'bstr*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIXmlNamespace initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIXmlNamespace class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIXmlNamespace class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

