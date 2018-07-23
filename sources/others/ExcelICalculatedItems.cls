"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelICalculatedItems
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelICalculatedItems guid: (IID fromString: '{00024421-0001-0000-C000-000000000046}')!
ExcelICalculatedItems comment: '<ExcelICalculatedItems> is a wrapper class for the COM interface ''Excel.ICalculatedItems'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024421-0001-0000-C000-000000000046), 
	helpcontext(0x000200b7), 
	hidden
]
interface ICalculatedItems : IDispatch
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
	[id(0x00000825), hidden, helpcontext(0x00010825)]
	HRESULT __stdcall _Add(
		[in]BSTR Name,
		[in]BSTR Formula,
		[out, retval]PivotItem** RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]PivotItem** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Field,
		[out, retval]PivotItem** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[in]BSTR Formula,
		[in, optional]VARIANT UseStandardFormula,
		[out, retval]PivotItem** RHS);
};
'!
!ExcelICalculatedItems categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelICalculatedItems methodsFor!

_add: name formula: formula
	"Answer the <ExcelPivotItem> result of invoking the _Add() method of the COM object."

	| answer |
	answer := ExcelPivotItem newPointer.
	self
		_Add: name
		formula: formula
		rhs: answer.
	^answer asObject
!

_Add: name formula: formula rhs: rhs
	"Private - Invoke the _Add() method of the COM object.

		HRESULT __stdcall _Add(
			[in]BSTR Name,
			[in]BSTR Formula,
			[out, retval]PivotItem** RHS);"

	<virtual stdcall: hresult 12 bstr bstr ExcelPivotItem**>
	^self invalidCall!

_default: field
	"Answer the <ExcelPivotItem> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelPivotItem newPointer.
	self
		get__Default: field asVariant
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

	<virtual stdcall: hresult 15 IUnknown**>
	^self invalidCall!

add: name formula: formula
	"Answer the <ExcelPivotItem> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 formula: formula
		 useStandardFormula: VARIANT unspecified!

add: name formula: formula useStandardFormula: useStandardFormula
	"Answer the <ExcelPivotItem> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelPivotItem newPointer.
	self
		Add: name
		formula: formula
		useStandardFormula: useStandardFormula asVariant
		rhs: answer.
	^answer asObject
!

Add: name formula: formula useStandardFormula: useStandardFormula rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name,
			[in]BSTR Formula,
			[in, optional]VARIANT UseStandardFormula,
			[out, retval]PivotItem** RHS);"

	<virtual stdcall: hresult 16 bstr bstr variant ExcelPivotItem**>
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

get__Default: field rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Field,
			[out, retval]PivotItem** RHS);"

	<virtual stdcall: hresult 14 variant ExcelPivotItem**>
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
	"Answer the <ExcelPivotItem> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelPivotItem newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]PivotItem** RHS);"

	<virtual stdcall: hresult 13 variant ExcelPivotItem**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelICalculatedItems categoriesFor: #_add:formula:!**auto generated**!methods!public! !
!ExcelICalculatedItems categoriesFor: #_Add:formula:rhs:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelICalculatedItems categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelICalculatedItems categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #add:formula:!**auto generated**!methods!public! !
!ExcelICalculatedItems categoriesFor: #add:formula:useStandardFormula:!**auto generated**!methods!public! !
!ExcelICalculatedItems categoriesFor: #Add:formula:useStandardFormula:rhs:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #application!**auto generated**!properties!public! !
!ExcelICalculatedItems categoriesFor: #count!**auto generated**!properties!public! !
!ExcelICalculatedItems categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelICalculatedItems categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelICalculatedItems categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelICalculatedItems categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-ICalculatedItems!private! !
!ExcelICalculatedItems categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelICalculatedItems class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ICalculatedItems'
		ExcelICalculatedItems defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #_Add:formula:rhs:
			argumentTypes: 'bstr bstr ExcelPivotItem**';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelPivotItem**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelPivotItem**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Add:formula:useStandardFormula:rhs:
			argumentTypes: 'bstr bstr variant ExcelPivotItem**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelICalculatedItems initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelICalculatedItems class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelICalculatedItems class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

