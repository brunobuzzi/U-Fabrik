"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotFilter guid: (IID fromString: '{00024483-0001-0000-C000-000000000046}')!
ExcelIPivotFilter comment: '<ExcelIPivotFilter> is a wrapper class for the COM interface ''Excel.IPivotFilter'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024483-0001-0000-C000-000000000046), 
	helpcontext(0x00020119), 
	hidden
]
interface IPivotFilter : IDispatch
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
	[id(0x000000c0), propget, helpcontext(0x000100c0)]
	HRESULT __stdcall Order(
		[out, retval]long* RHS);
	[id(0x000000c0), propput, helpcontext(0x000100c0)]
	HRESULT __stdcall Order(
		[in]long RHS);
	[id(0x00000a7e), propget, helpcontext(0x00010a7e)]
	HRESULT __stdcall FilterType(
		[out, retval]XlPivotFilterType* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000000da), propget, helpcontext(0x000100da)]
	HRESULT __stdcall Description(
		[out, retval]BSTR* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000908), propget, helpcontext(0x00010908)]
	HRESULT __stdcall Active(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000002db), propget, helpcontext(0x000102db)]
	HRESULT __stdcall PivotField(
		[out, retval]PivotField** RHS);
	[id(0x0000082b), propget, helpcontext(0x0001082b)]
	HRESULT __stdcall DataField(
		[out, retval]PivotField** RHS);
	[id(0x00000a7f), propget, helpcontext(0x00010a7f)]
	HRESULT __stdcall DataCubeField(
		[out, retval]CubeField** RHS);
	[id(0x00000a80), propget, helpcontext(0x00010a80)]
	HRESULT __stdcall Value1(
		[out, retval]VARIANT* RHS);
	[id(0x0000056c), propget, helpcontext(0x0001056c)]
	HRESULT __stdcall Value2(
		[out, retval]VARIANT* RHS);
	[id(0x00000a81), propget, helpcontext(0x00010a81)]
	HRESULT __stdcall MemberPropertyField(
		[out, retval]PivotField** RHS);
	[id(0x00000a82), propget, helpcontext(0x00010a82)]
	HRESULT __stdcall IsMemberPropertyFilter(
		[out, retval]VARIANT_BOOL* RHS);
};
'!
!ExcelIPivotFilter categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotFilter methodsFor!

active
	"Answer the <varbool> value of the 'Active' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Active: answer.
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

dataCubeField
	"Answer the <ExcelCubeField> value of the 'DataCubeField' property of the receiver."

	| answer |
	answer := ExcelCubeField newPointer.
	self get_DataCubeField: answer.
	^answer asObject
!

dataField
	"Answer the <ExcelPivotField> value of the 'DataField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_DataField: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

description
	"Answer the <bstr> value of the 'Description' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Description: answer.
	^answer asObject
!

filterType
	"Answer the <sdword> value of the 'FilterType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FilterType: answer.
	^answer asObject
!

get_Active: rhs
	"Private - Get the value of the 'Active' property of the receiver.

		HRESULT __stdcall Active(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
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

get_DataCubeField: rhs
	"Private - Get the value of the 'DataCubeField' property of the receiver.

		HRESULT __stdcall DataCubeField(
			[out, retval]CubeField** RHS);"

	<virtual stdcall: hresult 20 ExcelCubeField**>
	^self invalidCall!

get_DataField: rhs
	"Private - Get the value of the 'DataField' property of the receiver.

		HRESULT __stdcall DataField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 19 ExcelPivotField**>
	^self invalidCall!

get_Description: rhs
	"Private - Get the value of the 'Description' property of the receiver.

		HRESULT __stdcall Description(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_FilterType: rhs
	"Private - Get the value of the 'FilterType' property of the receiver.

		HRESULT __stdcall FilterType(
			[out, retval]XlPivotFilterType* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_IsMemberPropertyFilter: rhs
	"Private - Get the value of the 'IsMemberPropertyFilter' property of the receiver.

		HRESULT __stdcall IsMemberPropertyFilter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 24 varbool*>
	^self invalidCall!

get_MemberPropertyField: rhs
	"Private - Get the value of the 'MemberPropertyField' property of the receiver.

		HRESULT __stdcall MemberPropertyField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 23 ExcelPivotField**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Order: rhs
	"Private - Get the value of the 'Order' property of the receiver.

		HRESULT __stdcall Order(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PivotField: rhs
	"Private - Get the value of the 'PivotField' property of the receiver.

		HRESULT __stdcall PivotField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 18 ExcelPivotField**>
	^self invalidCall!

get_Value1: rhs
	"Private - Get the value of the 'Value1' property of the receiver.

		HRESULT __stdcall Value1(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 21 variant*>
	^self invalidCall!

get_Value2: rhs
	"Private - Get the value of the 'Value2' property of the receiver.

		HRESULT __stdcall Value2(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 22 variant*>
	^self invalidCall!

isMemberPropertyFilter
	"Answer the <varbool> value of the 'IsMemberPropertyFilter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsMemberPropertyFilter: answer.
	^answer asObject
!

memberPropertyField
	"Answer the <ExcelPivotField> value of the 'MemberPropertyField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_MemberPropertyField: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

order
	"Answer the <sdword> value of the 'Order' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Order: answer.
	^answer asObject
!

order: rhs
	"Set the 'Order' property of the receiver to the <sdword> value of the argument."

	self put_Order: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pivotField
	"Answer the <ExcelPivotField> value of the 'PivotField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_PivotField: answer.
	^answer asObject
!

put_Order: rhs
	"Private - Set the value of the 'Order' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Order(
			[in]long RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

value1
	"Answer the <variant> value of the 'Value1' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Value1: answer.
	^answer asObject
!

value2
	"Answer the <variant> value of the 'Value2' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Value2: answer.
	^answer asObject
! !
!ExcelIPivotFilter categoriesFor: #active!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #dataCubeField!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #dataField!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIPivotFilter categoriesFor: #Delete!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #description!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #filterType!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #get_Active:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_DataCubeField:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_DataField:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_Description:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_FilterType:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_IsMemberPropertyFilter:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_MemberPropertyField:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_Order:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_PivotField:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_Value1:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #get_Value2:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #isMemberPropertyFilter!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #memberPropertyField!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #order!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #order:!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #pivotField!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #put_Order:!**auto generated**!COM Interfaces-IPivotFilter!private! !
!ExcelIPivotFilter categoriesFor: #value1!**auto generated**!properties!public! !
!ExcelIPivotFilter categoriesFor: #value2!**auto generated**!properties!public! !

!ExcelIPivotFilter class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotFilter'
		ExcelIPivotFilter defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Order:
			argumentTypes: 'sdword*';
		defineFunction: #put_Order:
			argumentTypes: 'sdword';
		defineFunction: #get_FilterType:
			argumentTypes: 'sdword*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Description:
			argumentTypes: 'bstr*';
		defineFunction: #Delete;
		defineFunction: #get_Active:
			argumentTypes: 'varbool*';
		defineFunction: #get_PivotField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_DataField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_DataCubeField:
			argumentTypes: 'ExcelCubeField**';
		defineFunction: #get_Value1:
			argumentTypes: 'variant*';
		defineFunction: #get_Value2:
			argumentTypes: 'variant*';
		defineFunction: #get_MemberPropertyField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_IsMemberPropertyFilter:
			argumentTypes: 'varbool*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotFilter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotFilter class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotFilter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

