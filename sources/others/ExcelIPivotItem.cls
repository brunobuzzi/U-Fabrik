"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotItem guid: (IID fromString: '{00020876-0001-0000-C000-000000000046}')!
ExcelIPivotItem comment: '<ExcelIPivotItem> is a wrapper class for the COM interface ''Excel.IPivotItem'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020876-0001-0000-C000-000000000046), 
	helpcontext(0x00020036), 
	hidden
]
interface IPivotItem : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]PivotField** RHS);
	[id(0x000002da), propget, helpcontext(0x000102da)]
	HRESULT __stdcall ChildItems(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x000002d0), propget, helpcontext(0x000102d0)]
	HRESULT __stdcall DataRange(
		[out, retval]Range** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]BSTR RHS);
	[id(0x000002cf), propget, helpcontext(0x000102cf)]
	HRESULT __stdcall LabelRange(
		[out, retval]Range** RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000002e5), propget, helpcontext(0x000102e5)]
	HRESULT __stdcall ParentItem(
		[out, retval]PivotItem** RHS);
	[id(0x000002e3), propget, helpcontext(0x000102e3)]
	HRESULT __stdcall ParentShowDetail(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]long* RHS);
	[id(0x00000085), propput, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[in]long RHS);
	[id(0x00000249), propget, helpcontext(0x00010249)]
	HRESULT __stdcall ShowDetail(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000249), propput, helpcontext(0x00010249)]
	HRESULT __stdcall ShowDetail(
		[in]VARIANT_BOOL RHS);
	[id(0x000002d1), propget, helpcontext(0x000102d1)]
	HRESULT __stdcall SourceName(
		[out, retval]VARIANT* RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]BSTR RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000005e8), propget, helpcontext(0x000105e8)]
	HRESULT __stdcall IsCalculated(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000005c6), propget, helpcontext(0x000105c6)]
	HRESULT __stdcall RecordCount(
		[out, retval]long* RHS);
	[id(0x00000105), propget, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[out, retval]BSTR* RHS);
	[id(0x00000105), propput, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[in]BSTR RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x0000073a), propget, helpcontext(0x0001073a)]
	HRESULT __stdcall DrilledDown(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000073a), propput, helpcontext(0x0001073a)]
	HRESULT __stdcall DrilledDown(
		[in]VARIANT_BOOL RHS);
	[id(0x00000824), propget, helpcontext(0x00010824)]
	HRESULT __stdcall StandardFormula(
		[out, retval]BSTR* RHS);
	[id(0x00000824), propput, helpcontext(0x00010824)]
	HRESULT __stdcall StandardFormula(
		[in]BSTR RHS);
	[id(0x00000864), propget, helpcontext(0x00010864)]
	HRESULT __stdcall SourceNameStandard(
		[out, retval]BSTR* RHS);
	[id(0x00000a14), helpcontext(0x00010a14)]
	HRESULT __stdcall DrillTo(
		[in]BSTR Field);
};
'!
!ExcelIPivotItem categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotItem methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

_default: rhs
	"Set the '_Default' property of the receiver to the <bstr> value of the argument."

	self put__Default: rhs
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument."

	self put_Caption: rhs
!

childItems
	"Answer the <variant> value of the 'ChildItems' property of the receiver."

	^self childItems: VARIANT unspecified!

childItems: index
	"Answer the <variant> value of the 'ChildItems' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_ChildItems: index asVariant
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

dataRange
	"Answer the <ExcelRange> value of the 'DataRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_DataRange: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 29>
	^self invalidCall!

drilledDown
	"Answer the <varbool> value of the 'DrilledDown' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DrilledDown: answer.
	^answer asObject
!

drilledDown: rhs
	"Set the 'DrilledDown' property of the receiver to the <varbool> value of the argument."

	self put_DrilledDown: rhs
!

drillTo: field
	"Invoke the DrillTo() method of the COM object."

	^self DrillTo: field
!

DrillTo: field
	"Private - Invoke the DrillTo() method of the COM object.

		HRESULT __stdcall DrillTo(
			[in]BSTR Field);"

	<virtual stdcall: hresult 41 bstr>
	^self invalidCall!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula: answer.
	^answer asObject
!

formula: rhs
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument."

	self put_Formula: rhs
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 34 bstr*>
	^self invalidCall!

get_ChildItems: index rhs: rhs
	"Private - Get the value of the 'ChildItems' property of the receiver.

		HRESULT __stdcall ChildItems(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DataRange: rhs
	"Private - Get the value of the 'DataRange' property of the receiver.

		HRESULT __stdcall DataRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 12 ExcelRange**>
	^self invalidCall!

get_DrilledDown: rhs
	"Private - Get the value of the 'DrilledDown' property of the receiver.

		HRESULT __stdcall DrilledDown(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 36 varbool*>
	^self invalidCall!

get_Formula: rhs
	"Private - Get the value of the 'Formula' property of the receiver.

		HRESULT __stdcall Formula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 32 bstr*>
	^self invalidCall!

get_IsCalculated: rhs
	"Private - Get the value of the 'IsCalculated' property of the receiver.

		HRESULT __stdcall IsCalculated(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 30 varbool*>
	^self invalidCall!

get_LabelRange: rhs
	"Private - Get the value of the 'LabelRange' property of the receiver.

		HRESULT __stdcall LabelRange(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 15 ExcelRange**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 16 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]PivotField** RHS);"

	<virtual stdcall: hresult 10 ExcelPivotField**>
	^self invalidCall!

get_ParentItem: rhs
	"Private - Get the value of the 'ParentItem' property of the receiver.

		HRESULT __stdcall ParentItem(
			[out, retval]PivotItem** RHS);"

	<virtual stdcall: hresult 18 ExcelPivotItem**>
	^self invalidCall!

get_ParentShowDetail: rhs
	"Private - Get the value of the 'ParentShowDetail' property of the receiver.

		HRESULT __stdcall ParentShowDetail(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_Position: rhs
	"Private - Get the value of the 'Position' property of the receiver.

		HRESULT __stdcall Position(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_RecordCount: rhs
	"Private - Get the value of the 'RecordCount' property of the receiver.

		HRESULT __stdcall RecordCount(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 31 sdword*>
	^self invalidCall!

get_ShowDetail: rhs
	"Private - Get the value of the 'ShowDetail' property of the receiver.

		HRESULT __stdcall ShowDetail(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 22 varbool*>
	^self invalidCall!

get_SourceName: rhs
	"Private - Get the value of the 'SourceName' property of the receiver.

		HRESULT __stdcall SourceName(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 24 variant*>
	^self invalidCall!

get_SourceNameStandard: rhs
	"Private - Get the value of the 'SourceNameStandard' property of the receiver.

		HRESULT __stdcall SourceNameStandard(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 40 bstr*>
	^self invalidCall!

get_StandardFormula: rhs
	"Private - Get the value of the 'StandardFormula' property of the receiver.

		HRESULT __stdcall StandardFormula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 38 bstr*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 25 bstr*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
	^self invalidCall!

isCalculated
	"Answer the <varbool> value of the 'IsCalculated' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsCalculated: answer.
	^answer asObject
!

labelRange
	"Answer the <ExcelRange> value of the 'LabelRange' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_LabelRange: answer.
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
	"Answer the <ExcelPivotField> value of the 'Parent' property of the receiver."

	| answer |
	answer := ExcelPivotField newPointer.
	self get_Parent: answer.
	^answer asObject
!

parentItem
	"Answer the <ExcelPivotItem> value of the 'ParentItem' property of the receiver."

	| answer |
	answer := ExcelPivotItem newPointer.
	self get_ParentItem: answer.
	^answer asObject
!

parentShowDetail
	"Answer the <varbool> value of the 'ParentShowDetail' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ParentShowDetail: answer.
	^answer asObject
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Position: answer.
	^answer asObject
!

position: rhs
	"Set the 'Position' property of the receiver to the <sdword> value of the argument."

	self put_Position: rhs
!

put__Default: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall _Default(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 14 bstr>
	^self invalidCall!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 35 bstr>
	^self invalidCall!

put_DrilledDown: rhs
	"Private - Set the value of the 'DrilledDown' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DrilledDown(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 37 varbool>
	^self invalidCall!

put_Formula: rhs
	"Private - Set the value of the 'Formula' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Formula(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 33 bstr>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 17 bstr>
	^self invalidCall!

put_Position: rhs
	"Private - Set the value of the 'Position' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Position(
			[in]long RHS);"

	<virtual stdcall: hresult 21 sdword>
	^self invalidCall!

put_ShowDetail: rhs
	"Private - Set the value of the 'ShowDetail' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowDetail(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 23 varbool>
	^self invalidCall!

put_StandardFormula: rhs
	"Private - Set the value of the 'StandardFormula' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall StandardFormula(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 39 bstr>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Value(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 26 bstr>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

recordCount
	"Answer the <sdword> value of the 'RecordCount' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RecordCount: answer.
	^answer asObject
!

showDetail
	"Answer the <varbool> value of the 'ShowDetail' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowDetail: answer.
	^answer asObject
!

showDetail: rhs
	"Set the 'ShowDetail' property of the receiver to the <varbool> value of the argument."

	self put_ShowDetail: rhs
!

sourceName
	"Answer the <variant> value of the 'SourceName' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_SourceName: answer.
	^answer asObject
!

sourceNameStandard
	"Answer the <bstr> value of the 'SourceNameStandard' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SourceNameStandard: answer.
	^answer asObject
!

standardFormula
	"Answer the <bstr> value of the 'StandardFormula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_StandardFormula: answer.
	^answer asObject
!

standardFormula: rhs
	"Set the 'StandardFormula' property of the receiver to the <bstr> value of the argument."

	self put_StandardFormula: rhs
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <bstr> value of the argument."

	self put_Value: rhs
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Visible: answer.
	^answer asObject
!

visible: rhs
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument."

	self put_Visible: rhs
! !
!ExcelIPivotItem categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #childItems!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #childItems:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #dataRange!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIPivotItem categoriesFor: #Delete!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #drilledDown!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #drilledDown:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #drillTo:!**auto generated**!methods!public! !
!ExcelIPivotItem categoriesFor: #DrillTo:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_ChildItems:rhs:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_DataRange:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_DrilledDown:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Formula:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_IsCalculated:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_LabelRange:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_ParentItem:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_ParentShowDetail:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Position:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_RecordCount:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_ShowDetail:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_SourceName:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_SourceNameStandard:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_StandardFormula:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #isCalculated!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #labelRange!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #parentItem!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #parentShowDetail!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #position!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_DrilledDown:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_Formula:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_Position:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_ShowDetail:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_StandardFormula:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IPivotItem!private! !
!ExcelIPivotItem categoriesFor: #recordCount!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #showDetail!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #showDetail:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #sourceName!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #sourceNameStandard!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #standardFormula!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #standardFormula:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIPivotItem categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelIPivotItem class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotItem'
		ExcelIPivotItem defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'ExcelPivotField**';
		defineFunction: #get_ChildItems:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get_DataRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #put__Default:
			argumentTypes: 'bstr';
		defineFunction: #get_LabelRange:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_ParentItem:
			argumentTypes: 'ExcelPivotItem**';
		defineFunction: #get_ParentShowDetail:
			argumentTypes: 'varbool*';
		defineFunction: #get_Position:
			argumentTypes: 'sdword*';
		defineFunction: #put_Position:
			argumentTypes: 'sdword';
		defineFunction: #get_ShowDetail:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowDetail:
			argumentTypes: 'varbool';
		defineFunction: #get_SourceName:
			argumentTypes: 'variant*';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #put_Value:
			argumentTypes: 'bstr';
		defineFunction: #get_Visible:
			argumentTypes: 'varbool*';
		defineFunction: #put_Visible:
			argumentTypes: 'varbool';
		defineFunction: #Delete;
		defineFunction: #get_IsCalculated:
			argumentTypes: 'varbool*';
		defineFunction: #get_RecordCount:
			argumentTypes: 'sdword*';
		defineFunction: #get_Formula:
			argumentTypes: 'bstr*';
		defineFunction: #put_Formula:
			argumentTypes: 'bstr';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_DrilledDown:
			argumentTypes: 'varbool*';
		defineFunction: #put_DrilledDown:
			argumentTypes: 'varbool';
		defineFunction: #get_StandardFormula:
			argumentTypes: 'bstr*';
		defineFunction: #put_StandardFormula:
			argumentTypes: 'bstr';
		defineFunction: #get_SourceNameStandard:
			argumentTypes: 'bstr*';
		defineFunction: #DrillTo:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotItem initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotItem class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotItem class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

