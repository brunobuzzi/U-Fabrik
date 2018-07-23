"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPages
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPages guid: (IID fromString: '{000244A3-0001-0000-C000-000000000046}')!
ExcelIPages comment: '<ExcelIPages> is a wrapper class for the COM interface ''Excel.IPages'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244A3-0001-0000-C000-000000000046), 
	helpcontext(0x00020139), 
	hidden
]
interface IPages : IDispatch
 {
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]Page** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]Page** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIPages categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPages methodsFor!

_default: index
	"Answer the <ExcelPage> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelPage newPointer.
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
			[out, retval]Page** RHS);"

	<virtual stdcall: hresult 9 variant ExcelPage**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 11 IUnknown**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 10 sdword*>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]Page** RHS);"

	<virtual stdcall: hresult 8 variant ExcelPage**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelPage> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelPage newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
! !
!ExcelIPages categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIPages categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIPages categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIPages categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IPages!private! !
!ExcelIPages categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IPages!private! !
!ExcelIPages categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IPages!private! !
!ExcelIPages categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IPages!private! !
!ExcelIPages categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIPages categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelIPages class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPages'
		ExcelIPages defineTemplate"

	self
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelPage**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelPage**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPages initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPages class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPages class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

