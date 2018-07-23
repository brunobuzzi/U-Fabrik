"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIUserAccessList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIUserAccessList guid: (IID fromString: '{0002446C-0001-0000-C000-000000000046}')!
ExcelIUserAccessList comment: '<ExcelIUserAccessList> is a wrapper class for the COM interface ''Excel.IUserAccessList'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002446C-0001-0000-C000-000000000046), 
	helpcontext(0x00020102), 
	hidden
]
interface IUserAccessList : IDispatch
 {
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]UserAccess** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[in]VARIANT_BOOL AllowEdit,
		[out, retval]UserAccess** RHS);
	[id(0x000008bf), helpcontext(0x000108bf)]
	HRESULT __stdcall DeleteAll();
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]UserAccess** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIUserAccessList categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIUserAccessList methodsFor!

_default: index
	"Answer the <ExcelUserAccess> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelUserAccess newPointer.
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

add: name allowEdit: allowEdit
	"Answer the <ExcelUserAccess> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelUserAccess newPointer.
	self
		Add: name
		allowEdit: allowEdit
		rhs: answer.
	^answer asObject
!

Add: name allowEdit: allowEdit rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name,
			[in]VARIANT_BOOL AllowEdit,
			[out, retval]UserAccess** RHS);"

	<virtual stdcall: hresult 10 bstr varbool ExcelUserAccess**>
	^self invalidCall!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

deleteAll
	"Invoke the DeleteAll() method of the COM object."

	^self DeleteAll
!

DeleteAll
	"Private - Invoke the DeleteAll() method of the COM object.

		HRESULT __stdcall DeleteAll();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]UserAccess** RHS);"

	<virtual stdcall: hresult 12 variant ExcelUserAccess**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 13 IUnknown**>
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
			[out, retval]UserAccess** RHS);"

	<virtual stdcall: hresult 9 variant ExcelUserAccess**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelUserAccess> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelUserAccess newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
! !
!ExcelIUserAccessList categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIUserAccessList categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIUserAccessList categoriesFor: #add:allowEdit:!**auto generated**!methods!public! !
!ExcelIUserAccessList categoriesFor: #Add:allowEdit:rhs:!**auto generated**!COM Interfaces-IUserAccessList!private! !
!ExcelIUserAccessList categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIUserAccessList categoriesFor: #deleteAll!**auto generated**!methods!public! !
!ExcelIUserAccessList categoriesFor: #DeleteAll!**auto generated**!COM Interfaces-IUserAccessList!private! !
!ExcelIUserAccessList categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IUserAccessList!private! !
!ExcelIUserAccessList categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IUserAccessList!private! !
!ExcelIUserAccessList categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IUserAccessList!private! !
!ExcelIUserAccessList categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IUserAccessList!private! !
!ExcelIUserAccessList categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIUserAccessList categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelIUserAccessList class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IUserAccessList'
		ExcelIUserAccessList defineTemplate"

	self
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelUserAccess**';
		defineFunction: #Add:allowEdit:rhs:
			argumentTypes: 'bstr varbool ExcelUserAccess**';
		defineFunction: #DeleteAll;
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelUserAccess**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIUserAccessList initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIUserAccessList class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIUserAccessList class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

