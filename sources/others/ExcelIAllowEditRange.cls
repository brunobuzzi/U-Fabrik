"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAllowEditRange
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAllowEditRange guid: (IID fromString: '{0002446B-0001-0000-C000-000000000046}')!
ExcelIAllowEditRange comment: '<ExcelIAllowEditRange> is a wrapper class for the COM interface ''Excel.IAllowEditRange'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002446B-0001-0000-C000-000000000046), 
	helpcontext(0x00020101), 
	hidden
]
interface IAllowEditRange : IDispatch
 {
	[id(0x000000c7), propget, helpcontext(0x000100c7)]
	HRESULT __stdcall Title(
		[out, retval]BSTR* RHS);
	[id(0x000000c7), propput, helpcontext(0x000100c7)]
	HRESULT __stdcall Title(
		[in]BSTR RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[out, retval]Range** RHS);
	[id(0x000000c5), propputref, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[in]Range* RHS);
	[id(0x000008bd), helpcontext(0x000108bd)]
	HRESULT __stdcall ChangePassword(
		[in]BSTR Password);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x0000011d), helpcontext(0x0001011d)]
	HRESULT __stdcall Unprotect(
		[in, optional]VARIANT Password);
	[id(0x000008be), propget, helpcontext(0x000108be)]
	HRESULT __stdcall Users(
		[out, retval]UserAccessList** RHS);
};
'!
!ExcelIAllowEditRange categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAllowEditRange methodsFor!

changePassword: password
	"Invoke the ChangePassword() method of the COM object."

	^self ChangePassword: password
!

ChangePassword: password
	"Private - Invoke the ChangePassword() method of the COM object.

		HRESULT __stdcall ChangePassword(
			[in]BSTR Password);"

	<virtual stdcall: hresult 12 bstr>
	^self invalidCall!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 13>
	^self invalidCall!

get_Range: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 10 ExcelRange**>
	^self invalidCall!

get_Title: rhs
	"Private - Get the value of the 'Title' property of the receiver.

		HRESULT __stdcall Title(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 8 bstr*>
	^self invalidCall!

get_Users: rhs
	"Private - Get the value of the 'Users' property of the receiver.

		HRESULT __stdcall Users(
			[out, retval]UserAccessList** RHS);"

	<virtual stdcall: hresult 15 ExcelUserAccessList**>
	^self invalidCall!

put_Title: rhs
	"Private - Set the value of the 'Title' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Title(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 9 bstr>
	^self invalidCall!

putref_Range: rhs
	"Private - Set the value of the 'Range' property of the object wrapped by the 
	 receiver to the <ExcelRange*> argument, rhs.

		HRESULT __stdcall Range(
			[in]Range* RHS);"

	<virtual stdcall: hresult 11 ExcelRange*>
	^self invalidCall!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Range: answer.
	^answer asObject
!

setRange: rhs
	"Set the 'Range' property of the receiver to the <ExcelRange*> value of the argument."

	self putref_Range: rhs
!

title
	"Answer the <bstr> value of the 'Title' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Title: answer.
	^answer asObject
!

title: rhs
	"Set the 'Title' property of the receiver to the <bstr> value of the argument."

	self put_Title: rhs
!

unprotect
	"Invoke the Unprotect() method of the COM object.
	Default values are passed for all optional parameters."

	^self unprotect: VARIANT unspecified!

unprotect: password
	"Invoke the Unprotect() method of the COM object."

	^self Unprotect: password asVariant
!

Unprotect: password
	"Private - Invoke the Unprotect() method of the COM object.

		HRESULT __stdcall Unprotect(
			[in, optional]VARIANT Password);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

users
	"Answer the <ExcelUserAccessList> value of the 'Users' property of the receiver."

	| answer |
	answer := ExcelUserAccessList newPointer.
	self get_Users: answer.
	^answer asObject
! !
!ExcelIAllowEditRange categoriesFor: #changePassword:!**auto generated**!methods!public! !
!ExcelIAllowEditRange categoriesFor: #ChangePassword:!**auto generated**!COM Interfaces-IAllowEditRange!private! !
!ExcelIAllowEditRange categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIAllowEditRange categoriesFor: #Delete!**auto generated**!COM Interfaces-IAllowEditRange!private! !
!ExcelIAllowEditRange categoriesFor: #get_Range:!**auto generated**!COM Interfaces-IAllowEditRange!private! !
!ExcelIAllowEditRange categoriesFor: #get_Title:!**auto generated**!COM Interfaces-IAllowEditRange!private! !
!ExcelIAllowEditRange categoriesFor: #get_Users:!**auto generated**!COM Interfaces-IAllowEditRange!private! !
!ExcelIAllowEditRange categoriesFor: #put_Title:!**auto generated**!COM Interfaces-IAllowEditRange!private! !
!ExcelIAllowEditRange categoriesFor: #putref_Range:!**auto generated**!COM Interfaces-IAllowEditRange!private! !
!ExcelIAllowEditRange categoriesFor: #range!**auto generated**!properties!public! !
!ExcelIAllowEditRange categoriesFor: #setRange:!**auto generated**!properties!public! !
!ExcelIAllowEditRange categoriesFor: #title!**auto generated**!properties!public! !
!ExcelIAllowEditRange categoriesFor: #title:!**auto generated**!properties!public! !
!ExcelIAllowEditRange categoriesFor: #unprotect!**auto generated**!methods!public! !
!ExcelIAllowEditRange categoriesFor: #unprotect:!**auto generated**!methods!public! !
!ExcelIAllowEditRange categoriesFor: #Unprotect:!**auto generated**!COM Interfaces-IAllowEditRange!private! !
!ExcelIAllowEditRange categoriesFor: #users!**auto generated**!properties!public! !

!ExcelIAllowEditRange class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAllowEditRange'
		ExcelIAllowEditRange defineTemplate"

	self
		defineFunction: #get_Title:
			argumentTypes: 'bstr*';
		defineFunction: #put_Title:
			argumentTypes: 'bstr';
		defineFunction: #get_Range:
			argumentTypes: 'ExcelRange**';
		defineFunction: #putref_Range:
			argumentTypes: 'ExcelRange*';
		defineFunction: #ChangePassword:
			argumentTypes: 'bstr';
		defineFunction: #Delete;
		defineFunction: #Unprotect:
			argumentTypes: 'variant';
		defineFunction: #get_Users:
			argumentTypes: 'ExcelUserAccessList**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAllowEditRange initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAllowEditRange class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAllowEditRange class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

