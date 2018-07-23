"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotCell guid: (IID fromString: '{00024458-0001-0000-C000-000000000046}')!
ExcelIPivotCell comment: '<ExcelIPivotCell> is a wrapper class for the COM interface ''Excel.IPivotCell'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024458-0001-0000-C000-000000000046), 
	helpcontext(0x000200ee), 
	hidden
]
interface IPivotCell : IDispatch
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
	[id(0x0000088d), propget, helpcontext(0x0001088d)]
	HRESULT __stdcall PivotCellType(
		[out, retval]XlPivotCellType* RHS);
	[id(0x000002cc), propget, helpcontext(0x000102cc)]
	HRESULT __stdcall PivotTable(
		[out, retval]PivotTable** RHS);
	[id(0x0000082b), propget, helpcontext(0x0001082b)]
	HRESULT __stdcall DataField(
		[out, retval]PivotField** RHS);
	[id(0x000002db), propget, helpcontext(0x000102db)]
	HRESULT __stdcall PivotField(
		[out, retval]PivotField** RHS);
	[id(0x000002e4), propget, helpcontext(0x000102e4)]
	HRESULT __stdcall PivotItem(
		[out, retval]PivotItem** RHS);
	[id(0x0000088e), propget, helpcontext(0x0001088e)]
	HRESULT __stdcall RowItems(
		[out, retval]PivotItemList** RHS);
	[id(0x0000088f), propget, helpcontext(0x0001088f)]
	HRESULT __stdcall ColumnItems(
		[out, retval]PivotItemList** RHS);
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[out, retval]Range** RHS);
	[id(0x000008f7), hidden, propget, helpcontext(0x000108f7)]
	HRESULT __stdcall Dummy18(
		[out, retval]BSTR* RHS);
	[id(0x00000891), propget, helpcontext(0x00010891)]
	HRESULT __stdcall CustomSubtotalFunction(
		[out, retval]XlConsolidationFunction* RHS);
	[id(0x00000a71), propget, helpcontext(0x00010a71)]
	HRESULT __stdcall PivotRowLine(
		[out, retval]PivotLine** RHS);
	[id(0x00000a72), propget, helpcontext(0x00010a72)]
	HRESULT __stdcall PivotColumnLine(
		[out, retval]PivotLine** RHS);
};
'!
!ExcelIPivotCell categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotCell methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

columnItems
	"Answer the <ExcelPivotItemList> value of the 'ColumnItems' property of the receiver."

	| answer |
	answer := ExcelPivotItemList newPointer.
	self get_ColumnItems: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

customSubtotalFunction
	"Answer the <sdword> value of the 'CustomSubtotalFunction' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CustomSubtotalFunction: answer.
	^answer asObject
!

dataField
	"Answer the <ExcelPivotField> value of the 'DataField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_DataField: answer.
	^answer asObject
!

dummy18
	"Answer the <bstr> value of the 'Dummy18' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Dummy18: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_ColumnItems: rhs
	"Private - Get the value of the 'ColumnItems' property of the receiver.

		HRESULT __stdcall ColumnItems(
			[out, retval]PivotItemList** RHS);"

	<virtual stdcall: hresult 17 ExcelPivotItemList**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_CustomSubtotalFunction: rhs
	"Private - Get the value of the 'CustomSubtotalFunction' property of the receiver.

		HRESULT __stdcall CustomSubtotalFunction(
			[out, retval]XlConsolidationFunction* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_DataField: rhs
	"Private - Get the value of the 'DataField' property of the receiver.

		HRESULT __stdcall DataField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 13 ExcelPivotField**>
	^self invalidCall!

get_Dummy18: rhs
	"Private - Get the value of the 'Dummy18' property of the receiver.

		HRESULT __stdcall Dummy18(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 19 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PivotCellType: rhs
	"Private - Get the value of the 'PivotCellType' property of the receiver.

		HRESULT __stdcall PivotCellType(
			[out, retval]XlPivotCellType* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_PivotColumnLine: rhs
	"Private - Get the value of the 'PivotColumnLine' property of the receiver.

		HRESULT __stdcall PivotColumnLine(
			[out, retval]PivotLine** RHS);"

	<virtual stdcall: hresult 22 ExcelPivotLine**>
	^self invalidCall!

get_PivotField: rhs
	"Private - Get the value of the 'PivotField' property of the receiver.

		HRESULT __stdcall PivotField(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 14 ExcelPivotField**>
	^self invalidCall!

get_PivotItem: rhs
	"Private - Get the value of the 'PivotItem' property of the receiver.

		HRESULT __stdcall PivotItem(
			[out, retval]PivotItem** RHS);"

	<virtual stdcall: hresult 15 ExcelPivotItem**>
	^self invalidCall!

get_PivotRowLine: rhs
	"Private - Get the value of the 'PivotRowLine' property of the receiver.

		HRESULT __stdcall PivotRowLine(
			[out, retval]PivotLine** RHS);"

	<virtual stdcall: hresult 21 ExcelPivotLine**>
	^self invalidCall!

get_PivotTable: rhs
	"Private - Get the value of the 'PivotTable' property of the receiver.

		HRESULT __stdcall PivotTable(
			[out, retval]PivotTable** RHS);"

	<virtual stdcall: hresult 12 ExcelPivotTable**>
	^self invalidCall!

get_Range: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 18 ExcelRange**>
	^self invalidCall!

get_RowItems: rhs
	"Private - Get the value of the 'RowItems' property of the receiver.

		HRESULT __stdcall RowItems(
			[out, retval]PivotItemList** RHS);"

	<virtual stdcall: hresult 16 ExcelPivotItemList**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pivotCellType
	"Answer the <sdword> value of the 'PivotCellType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PivotCellType: answer.
	^answer asObject
!

pivotColumnLine
	"Answer the <ExcelPivotLine> value of the 'PivotColumnLine' property of the receiver."

	| answer |
	answer := ExcelPivotLine newPointer.
	self get_PivotColumnLine: answer.
	^answer asObject
!

pivotField
	"Answer the <ExcelPivotField> value of the 'PivotField' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_PivotField: answer.
	^answer asObject
!

pivotItem
	"Answer the <ExcelPivotItem> value of the 'PivotItem' property of the receiver."

	| answer |
	answer := ExcelPivotItem newPointer.
	self get_PivotItem: answer.
	^answer asObject
!

pivotRowLine
	"Answer the <ExcelPivotLine> value of the 'PivotRowLine' property of the receiver."

	| answer |
	answer := ExcelPivotLine newPointer.
	self get_PivotRowLine: answer.
	^answer asObject
!

pivotTable
	"Answer the <ExcelPivotTable> value of the 'PivotTable' property of the receiver."

	| answer |
	answer := ExcelPivotTable newPointer.
	self get_PivotTable: answer.
	^answer asObject
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Range: answer.
	^answer asObject
!

rowItems
	"Answer the <ExcelPivotItemList> value of the 'RowItems' property of the receiver."

	| answer |
	answer := ExcelPivotItemList newPointer.
	self get_RowItems: answer.
	^answer asObject
! !
!ExcelIPivotCell categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #columnItems!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #customSubtotalFunction!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #dataField!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #dummy18!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_ColumnItems:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_CustomSubtotalFunction:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_DataField:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_Dummy18:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_PivotCellType:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_PivotColumnLine:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_PivotField:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_PivotItem:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_PivotRowLine:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_PivotTable:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_Range:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #get_RowItems:!**auto generated**!COM Interfaces-IPivotCell!private! !
!ExcelIPivotCell categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #pivotCellType!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #pivotColumnLine!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #pivotField!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #pivotItem!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #pivotRowLine!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #pivotTable!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #range!**auto generated**!properties!public! !
!ExcelIPivotCell categoriesFor: #rowItems!**auto generated**!properties!public! !

!ExcelIPivotCell class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotCell'
		ExcelIPivotCell defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_PivotCellType:
			argumentTypes: 'sdword*';
		defineFunction: #get_PivotTable:
			argumentTypes: 'ExcelPivotTable**';
		defineFunction: #get_DataField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_PivotField:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_PivotItem:
			argumentTypes: 'ExcelPivotItem**';
		defineFunction: #get_RowItems:
			argumentTypes: 'ExcelPivotItemList**';
		defineFunction: #get_ColumnItems:
			argumentTypes: 'ExcelPivotItemList**';
		defineFunction: #get_Range:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Dummy18:
			argumentTypes: 'bstr*';
		defineFunction: #get_CustomSubtotalFunction:
			argumentTypes: 'sdword*';
		defineFunction: #get_PivotRowLine:
			argumentTypes: 'ExcelPivotLine**';
		defineFunction: #get_PivotColumnLine:
			argumentTypes: 'ExcelPivotLine**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotCell initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotCell class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotCell class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

