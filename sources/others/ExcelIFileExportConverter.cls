"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIFileExportConverter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIFileExportConverter guid: (IID fromString: '{000244B3-0001-0000-C000-000000000046}')!
ExcelIFileExportConverter comment: '<ExcelIFileExportConverter> is a wrapper class for the COM interface ''Excel.IFileExportConverter'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244B3-0001-0000-C000-000000000046), 
	helpcontext(0x00020149), 
	hidden
]
interface IFileExportConverter : IDispatch
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
	[id(0x00000ad1), propget, helpcontext(0x00010ad1)]
	HRESULT __stdcall Extensions(
		[out, retval]BSTR* RHS);
	[id(0x000000da), propget, helpcontext(0x000100da)]
	HRESULT __stdcall Description(
		[out, retval]BSTR* RHS);
	[id(0x00000120), propget, helpcontext(0x00010120)]
	HRESULT __stdcall FileFormat(
		[out, retval]long* RHS);
};
'!
!ExcelIFileExportConverter categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIFileExportConverter methodsFor!

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

description
	"Answer the <bstr> value of the 'Description' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Description: answer.
	^answer asObject
!

extensions
	"Answer the <bstr> value of the 'Extensions' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Extensions: answer.
	^answer asObject
!

fileFormat
	"Answer the <sdword> value of the 'FileFormat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FileFormat: answer.
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

get_Description: rhs
	"Private - Get the value of the 'Description' property of the receiver.

		HRESULT __stdcall Description(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_Extensions: rhs
	"Private - Get the value of the 'Extensions' property of the receiver.

		HRESULT __stdcall Extensions(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_FileFormat: rhs
	"Private - Get the value of the 'FileFormat' property of the receiver.

		HRESULT __stdcall FileFormat(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIFileExportConverter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIFileExportConverter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIFileExportConverter categoriesFor: #description!**auto generated**!properties!public! !
!ExcelIFileExportConverter categoriesFor: #extensions!**auto generated**!properties!public! !
!ExcelIFileExportConverter categoriesFor: #fileFormat!**auto generated**!properties!public! !
!ExcelIFileExportConverter categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IFileExportConverter!private! !
!ExcelIFileExportConverter categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IFileExportConverter!private! !
!ExcelIFileExportConverter categoriesFor: #get_Description:!**auto generated**!COM Interfaces-IFileExportConverter!private! !
!ExcelIFileExportConverter categoriesFor: #get_Extensions:!**auto generated**!COM Interfaces-IFileExportConverter!private! !
!ExcelIFileExportConverter categoriesFor: #get_FileFormat:!**auto generated**!COM Interfaces-IFileExportConverter!private! !
!ExcelIFileExportConverter categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IFileExportConverter!private! !
!ExcelIFileExportConverter categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIFileExportConverter class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IFileExportConverter'
		ExcelIFileExportConverter defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Extensions:
			argumentTypes: 'bstr*';
		defineFunction: #get_Description:
			argumentTypes: 'bstr*';
		defineFunction: #get_FileFormat:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIFileExportConverter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIFileExportConverter class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIFileExportConverter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

