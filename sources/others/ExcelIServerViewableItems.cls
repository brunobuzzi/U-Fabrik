"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIServerViewableItems
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIServerViewableItems guid: (IID fromString: '{000244A4-0001-0000-C000-000000000046}')!
ExcelIServerViewableItems comment: '<ExcelIServerViewableItems> is a wrapper class for the COM interface ''Excel.IServerViewableItems'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244A4-0001-0000-C000-000000000046), 
	helpcontext(0x0002013a), 
	hidden
]
interface IServerViewableItems : IDispatch
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
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]VARIANT Obj,
		[out, retval]IDispatch** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[in]VARIANT Index);
	[id(0x000008bf), helpcontext(0x000108bf)]
	HRESULT __stdcall DeleteAll();
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIServerViewableItems categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIServerViewableItems methodsFor!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
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

add: obj
	"Answer the <IDispatch> result of invoking the Add() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Add: obj asVariant
		rhs: answer.
	^answer asObject
!

Add: obj rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]VARIANT Obj,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 12 variant IDispatch**>
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

delete: index
	"Invoke the Delete() method of the COM object."

	^self Delete: index asVariant
!

Delete: index
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[in]VARIANT Index);"

	<virtual stdcall: hresult 13 variant>
	^self invalidCall!

deleteAll
	"Invoke the DeleteAll() method of the COM object."

	^self DeleteAll
!

DeleteAll
	"Private - Invoke the DeleteAll() method of the COM object.

		HRESULT __stdcall DeleteAll();"

	<virtual stdcall: hresult 14>
	^self invalidCall!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 16 variant IDispatch**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 17 IUnknown**>
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

	<virtual stdcall: hresult 11 sdword*>
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
	"Answer the <IDispatch> result of invoking the Item() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 15 variant IDispatch**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIServerViewableItems categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIServerViewableItems categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIServerViewableItems categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIServerViewableItems categoriesFor: #Add:rhs:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIServerViewableItems categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIServerViewableItems categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIServerViewableItems categoriesFor: #delete:!**auto generated**!methods!public! !
!ExcelIServerViewableItems categoriesFor: #Delete:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #deleteAll!**auto generated**!methods!public! !
!ExcelIServerViewableItems categoriesFor: #DeleteAll!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIServerViewableItems categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelIServerViewableItems categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-IServerViewableItems!private! !
!ExcelIServerViewableItems categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIServerViewableItems class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IServerViewableItems'
		ExcelIServerViewableItems defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Add:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #Delete:
			argumentTypes: 'variant';
		defineFunction: #DeleteAll;
		defineFunction: #Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIServerViewableItems initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIServerViewableItems class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIServerViewableItems class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

