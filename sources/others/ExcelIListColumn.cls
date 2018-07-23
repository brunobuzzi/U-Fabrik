"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIListColumn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIListColumn guid: (IID fromString: '{00024473-0001-0000-C000-000000000046}')!
ExcelIListColumn comment: '<ExcelIListColumn> is a wrapper class for the COM interface ''Excel.IListColumn'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024473-0001-0000-C000-000000000046), 
	helpcontext(0x00020109), 
	hidden
]
interface IListColumn : IDispatch
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
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x00000911), hidden, propget, helpcontext(0x00010911)]
	HRESULT __stdcall ListDataFormat(
		[out, retval]ListDataFormat** RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[out, retval]Range** RHS);
	[id(0x00000912), propget, helpcontext(0x00010912)]
	HRESULT __stdcall TotalsCalculation(
		[out, retval]XlTotalsCalculation* RHS);
	[id(0x00000912), propput, helpcontext(0x00010912)]
	HRESULT __stdcall TotalsCalculation(
		[in]XlTotalsCalculation RHS);
	[id(0x000008d2), propget, helpcontext(0x000108d2)]
	HRESULT __stdcall XPath(
		[out, retval]XPath** RHS);
	[id(0x00000913), hidden, propget, helpcontext(0x00010913)]
	HRESULT __stdcall SharePointFormula(
		[out, retval]BSTR* RHS);
	[id(0x000002c1), propget, helpcontext(0x000102c1)]
	HRESULT __stdcall DataBodyRange(
		[out, retval]Range** RHS);
	[id(0x00000a79), propget, helpcontext(0x00010a79)]
	HRESULT __stdcall Total(
		[out, retval]Range** RHS);
};
'!
!ExcelIListColumn categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIListColumn methodsFor!

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

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dataBodyRange
	"Answer the <ExcelRange> value of the 'DataBodyRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_DataBodyRange: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DataBodyRange: rhs
	"Private - Get the value of the 'DataBodyRange' property of the receiver.

		HRESULT __stdcall DataBodyRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 22 ExcelRange**>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_ListDataFormat: rhs
	"Private - Get the value of the 'ListDataFormat' property of the receiver.

		HRESULT __stdcall ListDataFormat(
			[out, retval]ListDataFormat** RHS);"

	<virtual stdcall: hresult 13 ExcelListDataFormat**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Range: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 17 ExcelRange**>
	^self invalidCall!

get_SharePointFormula: rhs
	"Private - Get the value of the 'SharePointFormula' property of the receiver.

		HRESULT __stdcall SharePointFormula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 21 bstr*>
	^self invalidCall!

get_Total: rhs
	"Private - Get the value of the 'Total' property of the receiver.

		HRESULT __stdcall Total(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 23 ExcelRange**>
	^self invalidCall!

get_TotalsCalculation: rhs
	"Private - Get the value of the 'TotalsCalculation' property of the receiver.

		HRESULT __stdcall TotalsCalculation(
			[out, retval]XlTotalsCalculation* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_XPath: rhs
	"Private - Get the value of the 'XPath' property of the receiver.

		HRESULT __stdcall XPath(
			[out, retval]XPath** RHS);"

	<virtual stdcall: hresult 20 ExcelXPath**>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

listDataFormat
	"Answer the <ExcelListDataFormat> value of the 'ListDataFormat' property of the receiver."

	| answer |
	answer := ExcelListDataFormat newPointer.
	self get_ListDataFormat: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 bstr>
	^self invalidCall!

put_TotalsCalculation: rhs
	"Private - Set the value of the 'TotalsCalculation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TotalsCalculation(
			[in]XlTotalsCalculation RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Range: answer.
	^answer asObject
!

sharePointFormula
	"Answer the <bstr> value of the 'SharePointFormula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SharePointFormula: answer.
	^answer asObject
!

total
	"Answer the <ExcelRange> value of the 'Total' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Total: answer.
	^answer asObject
!

totalsCalculation
	"Answer the <sdword> value of the 'TotalsCalculation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TotalsCalculation: answer.
	^answer asObject
!

totalsCalculation: rhs
	"Set the 'TotalsCalculation' property of the receiver to the <sdword> value of the argument."

	self put_TotalsCalculation: rhs
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

xPath
	"Answer the <ExcelXPath> value of the 'XPath' property of the receiver."

	| answer |
	answer := ExcelXPath newPointer.
	self get_XPath: answer.
	^answer asObject
! !
!ExcelIListColumn categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #dataBodyRange!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIListColumn categoriesFor: #Delete!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_DataBodyRange:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_ListDataFormat:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_Range:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_SharePointFormula:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_Total:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_TotalsCalculation:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #get_XPath:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #listDataFormat!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #put_TotalsCalculation:!**auto generated**!COM Interfaces-IListColumn!private! !
!ExcelIListColumn categoriesFor: #range!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #sharePointFormula!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #total!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #totalsCalculation!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #totalsCalculation:!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIListColumn categoriesFor: #xPath!**auto generated**!properties!public! !

!ExcelIListColumn class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IListColumn'
		ExcelIListColumn defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete;
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_ListDataFormat:
			argumentTypes: 'ExcelListDataFormat**';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_Range:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_TotalsCalculation:
			argumentTypes: 'sdword*';
		defineFunction: #put_TotalsCalculation:
			argumentTypes: 'sdword';
		defineFunction: #get_XPath:
			argumentTypes: 'ExcelXPath**';
		defineFunction: #get_SharePointFormula:
			argumentTypes: 'bstr*';
		defineFunction: #get_DataBodyRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Total:
			argumentTypes: 'ExcelRange**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIListColumn initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIListColumn class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIListColumn class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

