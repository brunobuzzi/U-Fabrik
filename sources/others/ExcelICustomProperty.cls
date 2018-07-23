"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelICustomProperty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelICustomProperty guid: (IID fromString: '{00024453-0001-0000-C000-000000000046}')!
ExcelICustomProperty comment: '<ExcelICustomProperty> is a wrapper class for the COM interface ''Excel.ICustomProperty'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024453-0001-0000-C000-000000000046), 
	helpcontext(0x000200e9), 
	hidden
]
interface ICustomProperty : IDispatch
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
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]VARIANT* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]VARIANT RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]VARIANT* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
};
'!
!ExcelICustomProperty categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelICustomProperty methodsFor!

_default
	"Answer the <variant> value of the '_Default' property of the receiver."

	| answer |
	answer := VARIANT new.
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

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
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

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 12 bstr>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Value(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

value
	"Answer the <variant> value of the 'Value' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <variant> value of the argument."

	self put_Value: rhs asVariant
! !
!ExcelICustomProperty categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelICustomProperty categoriesFor: #application!**auto generated**!properties!public! !
!ExcelICustomProperty categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelICustomProperty categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelICustomProperty categoriesFor: #Delete!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #get__Default:!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #get_Value:!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #name!**auto generated**!properties!public! !
!ExcelICustomProperty categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelICustomProperty categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelICustomProperty categoriesFor: #put_Name:!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #put_Value:!**auto generated**!COM Interfaces-ICustomProperty!private! !
!ExcelICustomProperty categoriesFor: #value!**auto generated**!properties!public! !
!ExcelICustomProperty categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelICustomProperty class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ICustomProperty'
		ExcelICustomProperty defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_Value:
			argumentTypes: 'variant*';
		defineFunction: #put_Value:
			argumentTypes: 'variant';
		defineFunction: #get__Default:
			argumentTypes: 'variant*';
		defineFunction: #Delete
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelICustomProperty initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelICustomProperty class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelICustomProperty class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

