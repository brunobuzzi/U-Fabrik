"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIXmlSchema
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIXmlSchema guid: (IID fromString: '{00024479-0001-0000-C000-000000000046}')!
ExcelIXmlSchema comment: '<ExcelIXmlSchema> is a wrapper class for the COM interface ''Excel.IXmlSchema'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024479-0001-0000-C000-000000000046), 
	helpcontext(0x0002010f), 
	hidden
]
interface IXmlSchema : IDispatch
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
	[id(0x0000091c), propget, helpcontext(0x0001091c)]
	HRESULT __stdcall Namespace(
		[out, retval]XmlNamespace** RHS);
	[id(0x0000091d), propget, helpcontext(0x0001091d)]
	HRESULT __stdcall XML(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
};
'!
!ExcelIXmlSchema categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIXmlSchema methodsFor!

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

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Namespace: rhs
	"Private - Get the value of the 'Namespace' property of the receiver.

		HRESULT __stdcall Namespace(
			[out, retval]XmlNamespace** RHS);"

	<virtual stdcall: hresult 11 ExcelXmlNamespace**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_XML: rhs
	"Private - Get the value of the 'XML' property of the receiver.

		HRESULT __stdcall XML(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

namespace
	"Answer the <ExcelXmlNamespace> value of the 'Namespace' property of the receiver."

	| answer |
	answer := ExcelXmlNamespace newPointer.
	self get_Namespace: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

xml
	"Answer the <bstr> value of the 'XML' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_XML: answer.
	^answer asObject
! !
!ExcelIXmlSchema categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIXmlSchema categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIXmlSchema categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IXmlSchema!private! !
!ExcelIXmlSchema categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IXmlSchema!private! !
!ExcelIXmlSchema categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IXmlSchema!private! !
!ExcelIXmlSchema categoriesFor: #get_Namespace:!**auto generated**!COM Interfaces-IXmlSchema!private! !
!ExcelIXmlSchema categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IXmlSchema!private! !
!ExcelIXmlSchema categoriesFor: #get_XML:!**auto generated**!COM Interfaces-IXmlSchema!private! !
!ExcelIXmlSchema categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIXmlSchema categoriesFor: #namespace!**auto generated**!properties!public! !
!ExcelIXmlSchema categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIXmlSchema categoriesFor: #xml!**auto generated**!properties!public! !

!ExcelIXmlSchema class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IXmlSchema'
		ExcelIXmlSchema defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Namespace:
			argumentTypes: 'ExcelXmlNamespace**';
		defineFunction: #get_XML:
			argumentTypes: 'bstr*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIXmlSchema initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIXmlSchema class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIXmlSchema class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

