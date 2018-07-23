"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelICalculatedMember
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelICalculatedMember guid: (IID fromString: '{00024455-0001-0000-C000-000000000046}')!
ExcelICalculatedMember comment: '<ExcelICalculatedMember> is a wrapper class for the COM interface ''Excel.ICalculatedMember'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024455-0001-0000-C000-000000000046), 
	helpcontext(0x000200eb), 
	hidden
]
interface ICalculatedMember : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x00000105), propget, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[out, retval]BSTR* RHS);
	[id(0x000002d1), propget, helpcontext(0x000102d1)]
	HRESULT __stdcall SourceName(
		[out, retval]BSTR* RHS);
	[id(0x0000088b), propget, helpcontext(0x0001088b)]
	HRESULT __stdcall SolveOrder(
		[out, retval]long* RHS);
	[id(0x0000088c), propget, helpcontext(0x0001088c)]
	HRESULT __stdcall IsValid(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlCalculatedMemberType* RHS);
};
'!
!ExcelICalculatedMember categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelICalculatedMember methodsFor!

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

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 17>
	^self invalidCall!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula: answer.
	^answer asObject
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 16 bstr*>
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

get_Formula: rhs
	"Private - Get the value of the 'Formula' property of the receiver.

		HRESULT __stdcall Formula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_IsValid: rhs
	"Private - Get the value of the 'IsValid' property of the receiver.

		HRESULT __stdcall IsValid(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_SolveOrder: rhs
	"Private - Get the value of the 'SolveOrder' property of the receiver.

		HRESULT __stdcall SolveOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_SourceName: rhs
	"Private - Get the value of the 'SourceName' property of the receiver.

		HRESULT __stdcall SourceName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlCalculatedMemberType* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

isValid
	"Answer the <varbool> value of the 'IsValid' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsValid: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

solveOrder
	"Answer the <sdword> value of the 'SolveOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SolveOrder: answer.
	^answer asObject
!

sourceName
	"Answer the <bstr> value of the 'SourceName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SourceName: answer.
	^answer asObject
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelICalculatedMember categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #application!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelICalculatedMember categoriesFor: #Delete!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #get__Default:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_Formula:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_IsValid:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_SolveOrder:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_SourceName:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #get_Type:!**auto generated**!COM Interfaces-ICalculatedMember!private! !
!ExcelICalculatedMember categoriesFor: #isValid!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #name!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #solveOrder!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #sourceName!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #type!**auto generated**!properties!public! !
!ExcelICalculatedMember categoriesFor: #value!**auto generated**!properties!public! !

!ExcelICalculatedMember class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ICalculatedMember'
		ExcelICalculatedMember defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Formula:
			argumentTypes: 'bstr*';
		defineFunction: #get_SourceName:
			argumentTypes: 'bstr*';
		defineFunction: #get_SolveOrder:
			argumentTypes: 'sdword*';
		defineFunction: #get_IsValid:
			argumentTypes: 'varbool*';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #Delete;
		defineFunction: #get_Type:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelICalculatedMember initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelICalculatedMember class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelICalculatedMember class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

