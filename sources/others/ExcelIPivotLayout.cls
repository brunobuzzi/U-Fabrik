"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotLayout guid: (IID fromString: '{0002444A-0001-0000-C000-000000000046}')!
ExcelIPivotLayout comment: '<ExcelIPivotLayout> is a wrapper class for the COM interface ''Excel.IPivotLayout'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002444A-0001-0000-C000-000000000046), 
	helpcontext(0x000200e0), 
	hidden
]
interface IPivotLayout : IDispatch
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
	[id(0x000002c9), hidden, propget, helpcontext(0x000102c9)]
	HRESULT __stdcall ColumnFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002cb), hidden, propget, helpcontext(0x000102cb)]
	HRESULT __stdcall DataFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002ca), hidden, propget, helpcontext(0x000102ca)]
	HRESULT __stdcall PageFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002c8), hidden, propget, helpcontext(0x000102c8)]
	HRESULT __stdcall RowFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002c7), hidden, propget, helpcontext(0x000102c7)]
	HRESULT __stdcall HiddenFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002c6), hidden, propget, helpcontext(0x000102c6)]
	HRESULT __stdcall VisibleFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000002ce), hidden, propget, helpcontext(0x000102ce)]
	HRESULT __stdcall PivotFields(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x0000072f), hidden, propget, helpcontext(0x0001072f)]
	HRESULT __stdcall CubeFields(
		[out, retval]CubeFields** RHS);
	[id(0x000005d8), hidden, propget, helpcontext(0x000105d8)]
	HRESULT __stdcall PivotCache(
		[out, retval]PivotCache** RHS);
	[id(0x000002cc), propget, helpcontext(0x000102cc)]
	HRESULT __stdcall PivotTable(
		[out, retval]PivotTable** RHS);
	[id(0x000002ba), hidden, propget, helpcontext(0x000102ba)]
	HRESULT __stdcall InnerDetail(
		[out, retval]BSTR* RHS);
	[id(0x000002ba), hidden, propput, helpcontext(0x000102ba)]
	HRESULT __stdcall InnerDetail(
		[in]BSTR RHS);
	[id(0x000002c4), hidden, helpcontext(0x000102c4)]
	HRESULT __stdcall AddFields(
		[in, optional]VARIANT RowFields,
		[in, optional]VARIANT ColumnFields,
		[in, optional]VARIANT PageFields,
		[in, optional]VARIANT AppendField);
};
'!
!ExcelIPivotLayout categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotLayout methodsFor!

addFields
	"Invoke the AddFields() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addFields: VARIANT unspecified
		 columnFields: VARIANT unspecified
		 pageFields: VARIANT unspecified
		 appendField: VARIANT unspecified!

addFields: rowFields columnFields: columnFields pageFields: pageFields appendField: appendField
	"Invoke the AddFields() method of the COM object."

	^self
		AddFields: rowFields asVariant
		columnFields: columnFields asVariant
		pageFields: pageFields asVariant
		appendField: appendField asVariant
!

AddFields: rowFields columnFields: columnFields pageFields: pageFields appendField: appendField
	"Private - Invoke the AddFields() method of the COM object.

		HRESULT __stdcall AddFields(
			[in, optional]VARIANT RowFields,
			[in, optional]VARIANT ColumnFields,
			[in, optional]VARIANT PageFields,
			[in, optional]VARIANT AppendField);"

	<virtual stdcall: hresult 23 variant variant variant variant>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

columnFields
	"Answer the <IDispatch> value of the 'ColumnFields' property of the receiver."

	^self columnFields: VARIANT unspecified!

columnFields: index
	"Answer the <IDispatch> value of the 'ColumnFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_ColumnFields: index asVariant
		rhs: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

cubeFields
	"Answer the <ExcelCubeFields> value of the 'CubeFields' property of the receiver."

	| answer |
	answer := ExcelCubeFields newPointer.
	self get_CubeFields: answer.
	^answer asObject
!

dataFields
	"Answer the <IDispatch> value of the 'DataFields' property of the receiver."

	^self dataFields: VARIANT unspecified!

dataFields: index
	"Answer the <IDispatch> value of the 'DataFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_DataFields: index asVariant
		rhs: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_ColumnFields: index rhs: rhs
	"Private - Get the value of the 'ColumnFields' property of the receiver.

		HRESULT __stdcall ColumnFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 11 variant IDispatch**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CubeFields: rhs
	"Private - Get the value of the 'CubeFields' property of the receiver.

		HRESULT __stdcall CubeFields(
			[out, retval]CubeFields** RHS);"

	<virtual stdcall: hresult 18 ExcelCubeFields**>
	^self invalidCall!

get_DataFields: index rhs: rhs
	"Private - Get the value of the 'DataFields' property of the receiver.

		HRESULT __stdcall DataFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 12 variant IDispatch**>
	^self invalidCall!

get_HiddenFields: index rhs: rhs
	"Private - Get the value of the 'HiddenFields' property of the receiver.

		HRESULT __stdcall HiddenFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 15 variant IDispatch**>
	^self invalidCall!

get_InnerDetail: rhs
	"Private - Get the value of the 'InnerDetail' property of the receiver.

		HRESULT __stdcall InnerDetail(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 21 bstr*>
	^self invalidCall!

get_PageFields: index rhs: rhs
	"Private - Get the value of the 'PageFields' property of the receiver.

		HRESULT __stdcall PageFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 13 variant IDispatch**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PivotCache: rhs
	"Private - Get the value of the 'PivotCache' property of the receiver.

		HRESULT __stdcall PivotCache(
			[out, retval]PivotCache** RHS);"

	<virtual stdcall: hresult 19 ExcelPivotCache**>
	^self invalidCall!

get_PivotFields: index rhs: rhs
	"Private - Get the value of the 'PivotFields' property of the receiver.

		HRESULT __stdcall PivotFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 17 variant IDispatch**>
	^self invalidCall!

get_PivotTable: rhs
	"Private - Get the value of the 'PivotTable' property of the receiver.

		HRESULT __stdcall PivotTable(
			[out, retval]PivotTable** RHS);"

	<virtual stdcall: hresult 20 ExcelPivotTable**>
	^self invalidCall!

get_RowFields: index rhs: rhs
	"Private - Get the value of the 'RowFields' property of the receiver.

		HRESULT __stdcall RowFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 14 variant IDispatch**>
	^self invalidCall!

get_VisibleFields: index rhs: rhs
	"Private - Get the value of the 'VisibleFields' property of the receiver.

		HRESULT __stdcall VisibleFields(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 16 variant IDispatch**>
	^self invalidCall!

hiddenFields
	"Answer the <IDispatch> value of the 'HiddenFields' property of the receiver."

	^self hiddenFields: VARIANT unspecified!

hiddenFields: index
	"Answer the <IDispatch> value of the 'HiddenFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_HiddenFields: index asVariant
		rhs: answer.
	^answer asObject
!

innerDetail
	"Answer the <bstr> value of the 'InnerDetail' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_InnerDetail: answer.
	^answer asObject
!

innerDetail: rhs
	"Set the 'InnerDetail' property of the receiver to the <bstr> value of the argument."

	self put_InnerDetail: rhs
!

pageFields
	"Answer the <IDispatch> value of the 'PageFields' property of the receiver."

	^self pageFields: VARIANT unspecified!

pageFields: index
	"Answer the <IDispatch> value of the 'PageFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_PageFields: index asVariant
		rhs: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pivotCache
	"Answer the <ExcelPivotCache> value of the 'PivotCache' property of the receiver."

	| answer |
	answer := ExcelPivotCache newPointer.
	self get_PivotCache: answer.
	^answer asObject
!

pivotFields
	"Answer the <IDispatch> value of the 'PivotFields' property of the receiver."

	^self pivotFields: VARIANT unspecified!

pivotFields: index
	"Answer the <IDispatch> value of the 'PivotFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_PivotFields: index asVariant
		rhs: answer.
	^answer asObject
!

pivotTable
	"Answer the <ExcelPivotTable> value of the 'PivotTable' property of the receiver."

	| answer |
	answer := ExcelPivotTable newPointer.
	self get_PivotTable: answer.
	^answer asObject
!

put_InnerDetail: rhs
	"Private - Set the value of the 'InnerDetail' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall InnerDetail(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 22 bstr>
	^self invalidCall!

rowFields
	"Answer the <IDispatch> value of the 'RowFields' property of the receiver."

	^self rowFields: VARIANT unspecified!

rowFields: index
	"Answer the <IDispatch> value of the 'RowFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_RowFields: index asVariant
		rhs: answer.
	^answer asObject
!

visibleFields
	"Answer the <IDispatch> value of the 'VisibleFields' property of the receiver."

	^self visibleFields: VARIANT unspecified!

visibleFields: index
	"Answer the <IDispatch> value of the 'VisibleFields' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_VisibleFields: index asVariant
		rhs: answer.
	^answer asObject
! !
!ExcelIPivotLayout categoriesFor: #addFields!**auto generated**!methods!public! !
!ExcelIPivotLayout categoriesFor: #addFields:columnFields:pageFields:appendField:!**auto generated**!methods!public! !
!ExcelIPivotLayout categoriesFor: #AddFields:columnFields:pageFields:appendField:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #columnFields!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #columnFields:!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #cubeFields!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #dataFields!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #dataFields:!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_ColumnFields:rhs:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_CubeFields:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_DataFields:rhs:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_HiddenFields:rhs:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_InnerDetail:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_PageFields:rhs:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_PivotCache:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_PivotFields:rhs:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_PivotTable:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_RowFields:rhs:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #get_VisibleFields:rhs:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #hiddenFields!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #hiddenFields:!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #innerDetail!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #innerDetail:!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #pageFields!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #pageFields:!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #pivotCache!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #pivotFields!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #pivotFields:!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #pivotTable!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #put_InnerDetail:!**auto generated**!COM Interfaces-IPivotLayout!private! !
!ExcelIPivotLayout categoriesFor: #rowFields!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #rowFields:!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #visibleFields!**auto generated**!properties!public! !
!ExcelIPivotLayout categoriesFor: #visibleFields:!**auto generated**!properties!public! !

!ExcelIPivotLayout class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotLayout'
		ExcelIPivotLayout defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_ColumnFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_DataFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_PageFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_RowFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_HiddenFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_VisibleFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_PivotFields:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_CubeFields:
			argumentTypes: 'ExcelCubeFields**';
		defineFunction: #get_PivotCache:
			argumentTypes: 'ExcelPivotCache**';
		defineFunction: #get_PivotTable:
			argumentTypes: 'ExcelPivotTable**';
		defineFunction: #get_InnerDetail:
			argumentTypes: 'bstr*';
		defineFunction: #put_InnerDetail:
			argumentTypes: 'bstr';
		defineFunction: #AddFields:columnFields:pageFields:appendField:
			argumentTypes: 'variant variant variant variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotLayout initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotLayout class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotLayout class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

