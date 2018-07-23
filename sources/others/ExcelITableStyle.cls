"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelITableStyle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelITableStyle guid: (IID fromString: '{000244A7-0001-0000-C000-000000000046}')!
ExcelITableStyle comment: '<ExcelITableStyle> is a wrapper class for the COM interface ''Excel.ITableStyle'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244A7-0001-0000-C000-000000000046), 
	helpcontext(0x0002013d), 
	hidden
]
interface ITableStyle : IDispatch
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
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000003a9), propget, helpcontext(0x000103a9)]
	HRESULT __stdcall NameLocal(
		[out, retval]BSTR* RHS);
	[id(0x00000229), propget, helpcontext(0x00010229)]
	HRESULT __stdcall BuiltIn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000ab1), propget, helpcontext(0x00010ab1)]
	HRESULT __stdcall TableStyleElements(
		[out, retval]TableStyleElements** RHS);
	[id(0x00000ab2), propget, helpcontext(0x00010ab2)]
	HRESULT __stdcall ShowAsAvailableTableStyle(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000ab2), propput, helpcontext(0x00010ab2)]
	HRESULT __stdcall ShowAsAvailableTableStyle(
		[in]VARIANT_BOOL RHS);
	[id(0x00000ab3), propget, helpcontext(0x00010ab3)]
	HRESULT __stdcall ShowAsAvailablePivotTableStyle(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000ab3), propput, helpcontext(0x00010ab3)]
	HRESULT __stdcall ShowAsAvailablePivotTableStyle(
		[in]VARIANT_BOOL RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x0000040f), helpcontext(0x0001040f)]
	HRESULT __stdcall Duplicate(
		[in, optional]VARIANT NewTableStyleName,
		[out, retval]TableStyle** RHS);
};
'!
!ExcelITableStyle categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelITableStyle methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

builtIn
	"Answer the <varbool> value of the 'BuiltIn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_BuiltIn: answer.
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

	<virtual stdcall: hresult 20>
	^self invalidCall!

duplicate
	"Answer the <ExcelTableStyle> result of invoking the Duplicate() method of the COM object.
	Default values are passed for all optional parameters."

	^self duplicate: VARIANT unspecified!

duplicate: newTableStyleName
	"Answer the <ExcelTableStyle> result of invoking the Duplicate() method of the COM object."

	| answer |
	answer := ExcelTableStyle newPointer.
	self
		Duplicate: newTableStyleName asVariant
		rhs: answer.
	^answer asObject
!

Duplicate: newTableStyleName rhs: rhs
	"Private - Invoke the Duplicate() method of the COM object.

		HRESULT __stdcall Duplicate(
			[in, optional]VARIANT NewTableStyleName,
			[out, retval]TableStyle** RHS);"

	<virtual stdcall: hresult 21 variant ExcelTableStyle**>
	^self invalidCall!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BuiltIn: rhs
	"Private - Get the value of the 'BuiltIn' property of the receiver.

		HRESULT __stdcall BuiltIn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_NameLocal: rhs
	"Private - Get the value of the 'NameLocal' property of the receiver.

		HRESULT __stdcall NameLocal(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ShowAsAvailablePivotTableStyle: rhs
	"Private - Get the value of the 'ShowAsAvailablePivotTableStyle' property of the receiver.

		HRESULT __stdcall ShowAsAvailablePivotTableStyle(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

get_ShowAsAvailableTableStyle: rhs
	"Private - Get the value of the 'ShowAsAvailableTableStyle' property of the receiver.

		HRESULT __stdcall ShowAsAvailableTableStyle(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_TableStyleElements: rhs
	"Private - Get the value of the 'TableStyleElements' property of the receiver.

		HRESULT __stdcall TableStyleElements(
			[out, retval]TableStyleElements** RHS);"

	<virtual stdcall: hresult 15 ExcelTableStyleElements**>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

nameLocal
	"Answer the <bstr> value of the 'NameLocal' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_NameLocal: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_ShowAsAvailablePivotTableStyle: rhs
	"Private - Set the value of the 'ShowAsAvailablePivotTableStyle' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowAsAvailablePivotTableStyle(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

put_ShowAsAvailableTableStyle: rhs
	"Private - Set the value of the 'ShowAsAvailableTableStyle' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowAsAvailableTableStyle(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

showAsAvailablePivotTableStyle
	"Answer the <varbool> value of the 'ShowAsAvailablePivotTableStyle' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowAsAvailablePivotTableStyle: answer.
	^answer asObject
!

showAsAvailablePivotTableStyle: rhs
	"Set the 'ShowAsAvailablePivotTableStyle' property of the receiver to the <varbool> value of the argument."

	self put_ShowAsAvailablePivotTableStyle: rhs
!

showAsAvailableTableStyle
	"Answer the <varbool> value of the 'ShowAsAvailableTableStyle' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowAsAvailableTableStyle: answer.
	^answer asObject
!

showAsAvailableTableStyle: rhs
	"Set the 'ShowAsAvailableTableStyle' property of the receiver to the <varbool> value of the argument."

	self put_ShowAsAvailableTableStyle: rhs
!

tableStyleElements
	"Answer the <ExcelTableStyleElements> value of the 'TableStyleElements' property of the receiver."

	| answer |
	answer := ExcelTableStyleElements newPointer.
	self get_TableStyleElements: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelITableStyle categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #application!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelITableStyle categoriesFor: #Delete!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #duplicate!**auto generated**!methods!public! !
!ExcelITableStyle categoriesFor: #duplicate:!**auto generated**!methods!public! !
!ExcelITableStyle categoriesFor: #Duplicate:rhs:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get__Default:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_BuiltIn:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_NameLocal:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_ShowAsAvailablePivotTableStyle:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_ShowAsAvailableTableStyle:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #get_TableStyleElements:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #name!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #nameLocal!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #put_ShowAsAvailablePivotTableStyle:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #put_ShowAsAvailableTableStyle:!**auto generated**!COM Interfaces-ITableStyle!private! !
!ExcelITableStyle categoriesFor: #showAsAvailablePivotTableStyle!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #showAsAvailablePivotTableStyle:!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #showAsAvailableTableStyle!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #showAsAvailableTableStyle:!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #tableStyleElements!**auto generated**!properties!public! !
!ExcelITableStyle categoriesFor: #value!**auto generated**!properties!public! !

!ExcelITableStyle class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ITableStyle'
		ExcelITableStyle defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_NameLocal:
			argumentTypes: 'bstr*';
		defineFunction: #get_BuiltIn:
			argumentTypes: 'varbool*';
		defineFunction: #get_TableStyleElements:
			argumentTypes: 'ExcelTableStyleElements**';
		defineFunction: #get_ShowAsAvailableTableStyle:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowAsAvailableTableStyle:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowAsAvailablePivotTableStyle:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowAsAvailablePivotTableStyle:
			argumentTypes: 'varbool';
		defineFunction: #Delete;
		defineFunction: #Duplicate:rhs:
			argumentTypes: 'variant ExcelTableStyle**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelITableStyle initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelITableStyle class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelITableStyle class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

