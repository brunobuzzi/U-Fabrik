"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAllowEditRanges
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAllowEditRanges guid: (IID fromString: '{0002446A-0001-0000-C000-000000000046}')!
ExcelIAllowEditRanges comment: '<ExcelIAllowEditRanges> is a wrapper class for the COM interface ''Excel.IAllowEditRanges'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002446A-0001-0000-C000-000000000046), 
	helpcontext(0x00020100), 
	hidden
]
interface IAllowEditRanges : IDispatch
 {
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]AllowEditRange** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Title,
		[in]Range* Range,
		[in, optional]VARIANT Password,
		[out, retval]AllowEditRange** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]AllowEditRange** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIAllowEditRanges categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAllowEditRanges methodsFor!

_default: index
	"Answer the <ExcelAllowEditRange> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelAllowEditRange newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

add: title range: range
	"Answer the <ExcelAllowEditRange> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: title
		 range: range
		 password: VARIANT unspecified!

add: title range: range password: password
	"Answer the <ExcelAllowEditRange> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelAllowEditRange newPointer.
	self
		Add: title
		range: range
		password: password asVariant
		rhs: answer.
	^answer asObject
!

Add: title range: range password: password rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Title,
			[in]Range* Range,
			[in, optional]VARIANT Password,
			[out, retval]AllowEditRange** RHS);"

	<virtual stdcall: hresult 10 bstr ExcelRange* variant ExcelAllowEditRange**>
	^self invalidCall!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]AllowEditRange** RHS);"

	<virtual stdcall: hresult 11 variant ExcelAllowEditRange**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 12 IUnknown**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 8 sdword*>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]AllowEditRange** RHS);"

	<virtual stdcall: hresult 9 variant ExcelAllowEditRange**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelAllowEditRange> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelAllowEditRange newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
! !
!ExcelIAllowEditRanges categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIAllowEditRanges categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIAllowEditRanges categoriesFor: #add:range:!**auto generated**!methods!public! !
!ExcelIAllowEditRanges categoriesFor: #add:range:password:!**auto generated**!methods!public! !
!ExcelIAllowEditRanges categoriesFor: #Add:range:password:rhs:!**auto generated**!COM Interfaces-IAllowEditRanges!private! !
!ExcelIAllowEditRanges categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIAllowEditRanges categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IAllowEditRanges!private! !
!ExcelIAllowEditRanges categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IAllowEditRanges!private! !
!ExcelIAllowEditRanges categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IAllowEditRanges!private! !
!ExcelIAllowEditRanges categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IAllowEditRanges!private! !
!ExcelIAllowEditRanges categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIAllowEditRanges categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelIAllowEditRanges class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAllowEditRanges'
		ExcelIAllowEditRanges defineTemplate"

	self
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelAllowEditRange**';
		defineFunction: #Add:range:password:rhs:
			argumentTypes: 'bstr ExcelRange* variant ExcelAllowEditRange**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelAllowEditRange**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAllowEditRanges initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAllowEditRanges class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAllowEditRanges class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

