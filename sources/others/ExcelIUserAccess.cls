"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIUserAccess
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIUserAccess guid: (IID fromString: '{0002446D-0001-0000-C000-000000000046}')!
ExcelIUserAccess comment: '<ExcelIUserAccess> is a wrapper class for the COM interface ''Excel.IUserAccess'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002446D-0001-0000-C000-000000000046), 
	helpcontext(0x00020103), 
	hidden
]
interface IUserAccess : IDispatch
 {
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000007e4), propget, helpcontext(0x000107e4)]
	HRESULT __stdcall AllowEdit(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007e4), propput, helpcontext(0x000107e4)]
	HRESULT __stdcall AllowEdit(
		[in]VARIANT_BOOL RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
};
'!
!ExcelIUserAccess categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIUserAccess methodsFor!

allowEdit
	"Answer the <varbool> value of the 'AllowEdit' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowEdit: answer.
	^answer asObject
!

allowEdit: rhs
	"Set the 'AllowEdit' property of the receiver to the <varbool> value of the argument."

	self put_AllowEdit: rhs
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

get_AllowEdit: rhs
	"Private - Get the value of the 'AllowEdit' property of the receiver.

		HRESULT __stdcall AllowEdit(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 9 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 8 bstr*>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

put_AllowEdit: rhs
	"Private - Set the value of the 'AllowEdit' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AllowEdit(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 10 varbool>
	^self invalidCall! !
!ExcelIUserAccess categoriesFor: #allowEdit!**auto generated**!properties!public! !
!ExcelIUserAccess categoriesFor: #allowEdit:!**auto generated**!properties!public! !
!ExcelIUserAccess categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIUserAccess categoriesFor: #Delete!**auto generated**!COM Interfaces-IUserAccess!private! !
!ExcelIUserAccess categoriesFor: #get_AllowEdit:!**auto generated**!COM Interfaces-IUserAccess!private! !
!ExcelIUserAccess categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IUserAccess!private! !
!ExcelIUserAccess categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIUserAccess categoriesFor: #put_AllowEdit:!**auto generated**!COM Interfaces-IUserAccess!private! !

!ExcelIUserAccess class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IUserAccess'
		ExcelIUserAccess defineTemplate"

	self
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_AllowEdit:
			argumentTypes: 'varbool*';
		defineFunction: #put_AllowEdit:
			argumentTypes: 'varbool';
		defineFunction: #Delete
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIUserAccess initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIUserAccess class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIUserAccess class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

