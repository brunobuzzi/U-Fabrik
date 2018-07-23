"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIParameters
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIParameters guid: (IID fromString: '{0002442B-0001-0000-C000-000000000046}')!
ExcelIParameters comment: '<ExcelIParameters> is a wrapper class for the COM interface ''Excel.IParameters'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002442B-0001-0000-C000-000000000046), 
	helpcontext(0x000200c1), 
	hidden
]
interface IParameters : IDispatch
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
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[in, optional]VARIANT iDataType,
		[out, retval]Parameter** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]Parameter** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]Parameter** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIParameters categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIParameters methodsFor!

_default: index
	"Answer the <ExcelParameter> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelParameter newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	| answer |
	answer := IUnknown newPointer.
	self _NewEnum: answer.
	^answer asObject
!

_NewEnum: rhs
	"Private - Invoke the _NewEnum() method of the COM object.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 16 IUnknown**>
	^self invalidCall!

add: name
	"Answer the <ExcelParameter> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 iDataType: VARIANT unspecified!

add: name iDataType: iDataType
	"Answer the <ExcelParameter> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelParameter newPointer.
	self
		Add: name
		iDataType: iDataType asVariant
		rhs: answer.
	^answer asObject
!

Add: name iDataType: iDataType rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name,
			[in, optional]VARIANT iDataType,
			[out, retval]Parameter** RHS);"

	<virtual stdcall: hresult 11 bstr variant ExcelParameter**>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
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

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]Parameter** RHS);"

	<virtual stdcall: hresult 14 variant ExcelParameter**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
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

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelParameter> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelParameter newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]Parameter** RHS);"

	<virtual stdcall: hresult 13 variant ExcelParameter**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIParameters categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIParameters categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelIParameters categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIParameters categoriesFor: #add:iDataType:!**auto generated**!methods!public! !
!ExcelIParameters categoriesFor: #Add:iDataType:rhs:!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIParameters categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIParameters categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIParameters categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIParameters categoriesFor: #Delete!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIParameters categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIParameters categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IParameters!private! !
!ExcelIParameters categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIParameters class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IParameters'
		ExcelIParameters defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:iDataType:rhs:
			argumentTypes: 'bstr variant ExcelParameter**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelParameter**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelParameter**';
		defineFunction: #Delete;
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIParameters initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIParameters class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIParameters class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

