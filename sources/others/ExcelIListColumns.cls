"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIListColumns
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIListColumns guid: (IID fromString: '{00024472-0001-0000-C000-000000000046}')!
ExcelIListColumns comment: '<ExcelIListColumns> is a wrapper class for the COM interface ''Excel.IListColumns'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024472-0001-0000-C000-000000000046), 
	helpcontext(0x00020108), 
	hidden
]
interface IListColumns : IDispatch
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
		[in, optional]VARIANT Position,
		[out, retval]ListColumn** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]ListColumn** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]ListColumn** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
};
'!
!ExcelIListColumns categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIListColumns methodsFor!

_default: index
	"Answer the <ExcelListColumn> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelListColumn newPointer.
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

add
	"Answer the <ExcelListColumn> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self add: VARIANT unspecified!

add: position
	"Answer the <ExcelListColumn> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelListColumn newPointer.
	self
		Add: position asVariant
		rhs: answer.
	^answer asObject
!

Add: position rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in, optional]VARIANT Position,
			[out, retval]ListColumn** RHS);"

	<virtual stdcall: hresult 11 variant ExcelListColumn**>
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

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]ListColumn** RHS);"

	<virtual stdcall: hresult 12 variant ExcelListColumn**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 13 IUnknown**>
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

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]ListColumn** RHS);"

	<virtual stdcall: hresult 14 variant ExcelListColumn**>
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
	"Answer the <ExcelListColumn> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelListColumn newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIListColumns categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIListColumns categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIListColumns categoriesFor: #add!**auto generated**!methods!public! !
!ExcelIListColumns categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIListColumns categoriesFor: #Add:rhs:!**auto generated**!COM Interfaces-IListColumns!private! !
!ExcelIListColumns categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIListColumns categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIListColumns categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIListColumns categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IListColumns!private! !
!ExcelIListColumns categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IListColumns!private! !
!ExcelIListColumns categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IListColumns!private! !
!ExcelIListColumns categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IListColumns!private! !
!ExcelIListColumns categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IListColumns!private! !
!ExcelIListColumns categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IListColumns!private! !
!ExcelIListColumns categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IListColumns!private! !
!ExcelIListColumns categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIListColumns categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIListColumns categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIListColumns class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IListColumns'
		ExcelIListColumns defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:rhs:
			argumentTypes: 'variant ExcelListColumn**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelListColumn**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelListColumn**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIListColumns initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIListColumns class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIListColumns class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

