"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISheetViews
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISheetViews guid: (IID fromString: '{0002448C-0001-0000-C000-000000000046}')!
ExcelISheetViews comment: '<ExcelISheetViews> is a wrapper class for the COM interface ''Excel.ISheetViews'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002448C-0001-0000-C000-000000000046), 
	helpcontext(0x00020122), 
	hidden
]
interface ISheetViews : IDispatch
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
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]IDispatch** RHS);
};
'!
!ExcelISheetViews categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISheetViews methodsFor!

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

	<virtual stdcall: hresult 12 IUnknown**>
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
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 14 variant IDispatch**>
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

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 13 variant IDispatch**>
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
	"Answer the <IDispatch> value of the 'Item' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
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
!ExcelISheetViews categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelISheetViews categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelISheetViews categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-ISheetViews!private! !
!ExcelISheetViews categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISheetViews categoriesFor: #count!**auto generated**!properties!public! !
!ExcelISheetViews categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISheetViews categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-ISheetViews!private! !
!ExcelISheetViews categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISheetViews!private! !
!ExcelISheetViews categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ISheetViews!private! !
!ExcelISheetViews categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISheetViews!private! !
!ExcelISheetViews categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-ISheetViews!private! !
!ExcelISheetViews categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISheetViews!private! !
!ExcelISheetViews categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelISheetViews categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelISheetViews categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelISheetViews class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISheetViews'
		ExcelISheetViews defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant IDispatch**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISheetViews initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISheetViews class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISheetViews class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

