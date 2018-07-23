"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRecentFile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRecentFile guid: (IID fromString: '{00024407-0001-0000-C000-000000000046}')!
ExcelIRecentFile comment: '<ExcelIRecentFile> is a wrapper class for the COM interface ''Excel.IRecentFile'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024407-0001-0000-C000-000000000046), 
	helpcontext(0x0002009d), 
	hidden
]
interface IRecentFile : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x00000123), propget, helpcontext(0x00010123)]
	HRESULT __stdcall Path(
		[out, retval]BSTR* RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x00000783), helpcontext(0x00010783)]
	HRESULT __stdcall Open(
		[out, retval]Workbook** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
};
'!
!ExcelIRecentFile categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRecentFile methodsFor!

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

	<virtual stdcall: hresult 15>
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

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
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

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

open
	"Answer the <Excel_Workbook> result of invoking the Open() method of the COM object."

	| answer |
	answer := Excel_Workbook newPointer.
	self Open: answer.
	^answer asObject
!

Open: rhs
	"Private - Invoke the Open() method of the COM object.

		HRESULT __stdcall Open(
			[out, retval]Workbook** RHS);"

	<virtual stdcall: hresult 14 Excel_Workbook**>
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
! !
!ExcelIRecentFile categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIRecentFile categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIRecentFile categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIRecentFile categoriesFor: #Delete!**auto generated**!COM Interfaces-IRecentFile!private! !
!ExcelIRecentFile categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IRecentFile!private! !
!ExcelIRecentFile categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IRecentFile!private! !
!ExcelIRecentFile categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IRecentFile!private! !
!ExcelIRecentFile categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IRecentFile!private! !
!ExcelIRecentFile categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IRecentFile!private! !
!ExcelIRecentFile categoriesFor: #get_Path:!**auto generated**!COM Interfaces-IRecentFile!private! !
!ExcelIRecentFile categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIRecentFile categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIRecentFile categoriesFor: #open!**auto generated**!methods!public! !
!ExcelIRecentFile categoriesFor: #Open:!**auto generated**!COM Interfaces-IRecentFile!private! !
!ExcelIRecentFile categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIRecentFile categoriesFor: #path!**auto generated**!properties!public! !

!ExcelIRecentFile class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRecentFile'
		ExcelIRecentFile defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Path:
			argumentTypes: 'bstr*';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #Open:
			argumentTypes: 'Excel_Workbook**';
		defineFunction: #Delete
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRecentFile initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRecentFile class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRecentFile class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

