"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIListRow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIListRow guid: (IID fromString: '{00024475-0001-0000-C000-000000000046}')!
ExcelIListRow comment: '<ExcelIListRow> is a wrapper class for the COM interface ''Excel.IListRow'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024475-0001-0000-C000-000000000046), 
	helpcontext(0x0002010b), 
	hidden
]
interface IListRow : IDispatch
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
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x00000914), hidden, propget, helpcontext(0x00010914)]
	HRESULT __stdcall InvalidData(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[out, retval]Range** RHS);
};
'!
!ExcelIListRow categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIListRow methodsFor!

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

	<virtual stdcall: hresult 11>
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

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_InvalidData: rhs
	"Private - Get the value of the 'InvalidData' property of the receiver.

		HRESULT __stdcall InvalidData(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
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

	<virtual stdcall: hresult 14 ExcelRange**>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

invalidData
	"Answer the <varbool> value of the 'InvalidData' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_InvalidData: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Range: answer.
	^answer asObject
! !
!ExcelIListRow categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIListRow categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIListRow categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIListRow categoriesFor: #Delete!**auto generated**!COM Interfaces-IListRow!private! !
!ExcelIListRow categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IListRow!private! !
!ExcelIListRow categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IListRow!private! !
!ExcelIListRow categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IListRow!private! !
!ExcelIListRow categoriesFor: #get_InvalidData:!**auto generated**!COM Interfaces-IListRow!private! !
!ExcelIListRow categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IListRow!private! !
!ExcelIListRow categoriesFor: #get_Range:!**auto generated**!COM Interfaces-IListRow!private! !
!ExcelIListRow categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIListRow categoriesFor: #invalidData!**auto generated**!properties!public! !
!ExcelIListRow categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIListRow categoriesFor: #range!**auto generated**!properties!public! !

!ExcelIListRow class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IListRow'
		ExcelIListRow defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete;
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_InvalidData:
			argumentTypes: 'varbool*';
		defineFunction: #get_Range:
			argumentTypes: 'ExcelRange**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIListRow initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIListRow class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIListRow class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

