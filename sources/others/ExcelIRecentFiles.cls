"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRecentFiles
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRecentFiles guid: (IID fromString: '{00024406-0001-0000-C000-000000000046}')!
ExcelIRecentFiles comment: '<ExcelIRecentFiles> is a wrapper class for the COM interface ''Excel.IRecentFiles'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024406-0001-0000-C000-000000000046), 
	helpcontext(0x0002009c), 
	hidden
]
interface IRecentFiles : IDispatch
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
	[id(0x0000058f), propget, helpcontext(0x0001058f)]
	HRESULT __stdcall Maximum(
		[out, retval]long* RHS);
	[id(0x0000058f), propput, helpcontext(0x0001058f)]
	HRESULT __stdcall Maximum(
		[in]long RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]long Index,
		[out, retval]RecentFile** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long Index,
		[out, retval]RecentFile** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[out, retval]RecentFile** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIRecentFiles categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRecentFiles methodsFor!

_default: index
	"Answer the <ExcelRecentFile> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelRecentFile newPointer.
	self
		get__Default: index
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

add: name
	"Answer the <ExcelRecentFile> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelRecentFile newPointer.
	self
		Add: name
		rhs: answer.
	^answer asObject
!

Add: name rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name,
			[out, retval]RecentFile** RHS);"

	<virtual stdcall: hresult 16 bstr ExcelRecentFile**>
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
			[in]long Index,
			[out, retval]RecentFile** RHS);"

	<virtual stdcall: hresult 15 sdword ExcelRecentFile**>
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

	<virtual stdcall: hresult 13 sdword*>
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
			[in]long Index,
			[out, retval]RecentFile** RHS);"

	<virtual stdcall: hresult 14 sdword ExcelRecentFile**>
	^self invalidCall!

get_Maximum: rhs
	"Private - Get the value of the 'Maximum' property of the receiver.

		HRESULT __stdcall Maximum(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
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
	"Answer the <ExcelRecentFile> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelRecentFile newPointer.
	self
		get_Item: index
		rhs: answer.
	^answer asObject
!

maximum
	"Answer the <sdword> value of the 'Maximum' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Maximum: answer.
	^answer asObject
!

maximum: rhs
	"Set the 'Maximum' property of the receiver to the <sdword> value of the argument."

	self put_Maximum: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Maximum: rhs
	"Private - Set the value of the 'Maximum' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Maximum(
			[in]long RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall! !
!ExcelIRecentFiles categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIRecentFiles categoriesFor: #Add:rhs:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #get_Maximum:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IRecentFiles!private! !
!ExcelIRecentFiles categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIRecentFiles categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #maximum!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #maximum:!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIRecentFiles categoriesFor: #put_Maximum:!**auto generated**!COM Interfaces-IRecentFiles!private! !

!ExcelIRecentFiles class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRecentFiles'
		ExcelIRecentFiles defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Maximum:
			argumentTypes: 'sdword*';
		defineFunction: #put_Maximum:
			argumentTypes: 'sdword';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'sdword ExcelRecentFile**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'sdword ExcelRecentFile**';
		defineFunction: #Add:rhs:
			argumentTypes: 'bstr ExcelRecentFile**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRecentFiles initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRecentFiles class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRecentFiles class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

