"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelICalculatedFields
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelICalculatedFields guid: (IID fromString: '{00024420-0001-0000-C000-000000000046}')!
ExcelICalculatedFields comment: '<ExcelICalculatedFields> is a wrapper class for the COM interface ''Excel.ICalculatedFields'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024420-0001-0000-C000-000000000046), 
	helpcontext(0x000200b6), 
	hidden
]
interface ICalculatedFields : IDispatch
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
		[out, retval]PivotField** RHS);
	[id(0x000000aa), helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]PivotField** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Field,
		[out, retval]PivotField** RHS);
	[id(0xfffffffc), helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[in]BSTR Formula,
		[in, optional]VARIANT UseStandardFormula,
		[out, retval]PivotField** RHS);
};
'!
!ExcelICalculatedFields categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelICalculatedFields methodsFor!

_add: name formula: formula
	"Answer the <ExcelPivotField> result of invoking the _Add() method of the COM object."

	| answer |
	answer := ExcelPivotField newPointer.
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
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 12 bstr bstr ExcelPivotField**>
	^self invalidCall!

_default: field
	"Answer the <ExcelPivotField> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
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
	"Answer the <ExcelPivotField> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 formula: formula
		 useStandardFormula: VARIANT unspecified!

add: name formula: formula useStandardFormula: useStandardFormula
	"Answer the <ExcelPivotField> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelPivotField newPointer.
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
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 16 bstr bstr variant ExcelPivotField**>
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
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 14 variant ExcelPivotField**>
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
	"Answer the <ExcelPivotField> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelPivotField newPointer.
	self
		Item: index asVariant
		rhs: answer.
	^answer asObject
!

Item: index rhs: rhs
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 13 variant ExcelPivotField**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelICalculatedFields categoriesFor: #_add:formula:!**auto generated**!methods!public! !
!ExcelICalculatedFields categoriesFor: #_Add:formula:rhs:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelICalculatedFields categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelICalculatedFields categoriesFor: #_NewEnum:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #add:formula:!**auto generated**!methods!public! !
!ExcelICalculatedFields categoriesFor: #add:formula:useStandardFormula:!**auto generated**!methods!public! !
!ExcelICalculatedFields categoriesFor: #Add:formula:useStandardFormula:rhs:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #application!**auto generated**!properties!public! !
!ExcelICalculatedFields categoriesFor: #count!**auto generated**!properties!public! !
!ExcelICalculatedFields categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelICalculatedFields categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelICalculatedFields categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelICalculatedFields categoriesFor: #Item:rhs:!**auto generated**!COM Interfaces-ICalculatedFields!private! !
!ExcelICalculatedFields categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelICalculatedFields class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ICalculatedFields'
		ExcelICalculatedFields defineTemplate"

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
			argumentTypes: 'bstr bstr ExcelPivotField**';
		defineFunction: #Item:rhs:
			argumentTypes: 'variant ExcelPivotField**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelPivotField**';
		defineFunction: #_NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Add:formula:useStandardFormula:rhs:
			argumentTypes: 'bstr bstr variant ExcelPivotField**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelICalculatedFields initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelICalculatedFields class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelICalculatedFields class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

