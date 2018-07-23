"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelICellFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelICellFormat guid: (IID fromString: '{00024450-0001-0000-C000-000000000046}')!
ExcelICellFormat comment: '<ExcelICellFormat> is a wrapper class for the COM interface ''Excel.ICellFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024450-0001-0000-C000-000000000046), 
	helpcontext(0x000200e6), 
	hidden
]
interface ICellFormat : IDispatch
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
	[id(0x000001b3), propget, helpcontext(0x000101b3)]
	HRESULT __stdcall Borders(
		[out, retval]Borders** RHS);
	[id(0x000001b3), propputref, helpcontext(0x000101b3)]
	HRESULT __stdcall Borders(
		[in]Borders* RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x00000092), propputref, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[in]Font* RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x00000081), propputref, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[in]Interior* RHS);
	[id(0x000000c1), propget, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]long lcid,
		[out, retval]VARIANT* RHS);
	[id(0x000000c1), propput, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]long lcid,
		[in]VARIANT RHS);
	[id(0x00000449), propget, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[out, retval]VARIANT* RHS);
	[id(0x00000449), propput, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[in]VARIANT RHS);
	[id(0x00000427), propget, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[out, retval]VARIANT* RHS);
	[id(0x00000427), propput, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[in]VARIANT RHS);
	[id(0x000000c9), propget, helpcontext(0x000100c9)]
	HRESULT __stdcall IndentLevel(
		[out, retval]VARIANT* RHS);
	[id(0x000000c9), propput, helpcontext(0x000100c9)]
	HRESULT __stdcall IndentLevel(
		[in]VARIANT RHS);
	[id(0x00000088), propget, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000088), propput, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[in]VARIANT RHS);
	[id(0x00000089), propget, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000089), propput, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[in]VARIANT RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]VARIANT* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]VARIANT RHS);
	[id(0x000000d1), propget, helpcontext(0x000100d1)]
	HRESULT __stdcall ShrinkToFit(
		[out, retval]VARIANT* RHS);
	[id(0x000000d1), propput, helpcontext(0x000100d1)]
	HRESULT __stdcall ShrinkToFit(
		[in]VARIANT RHS);
	[id(0x00000114), propget, helpcontext(0x00010114)]
	HRESULT __stdcall WrapText(
		[out, retval]VARIANT* RHS);
	[id(0x00000114), propput, helpcontext(0x00010114)]
	HRESULT __stdcall WrapText(
		[in]VARIANT RHS);
	[id(0x0000010d), propget, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[out, retval]VARIANT* RHS);
	[id(0x0000010d), propput, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[in]VARIANT RHS);
	[id(0x00000106), propget, helpcontext(0x00010106)]
	HRESULT __stdcall FormulaHidden(
		[out, retval]VARIANT* RHS);
	[id(0x00000106), propput, helpcontext(0x00010106)]
	HRESULT __stdcall FormulaHidden(
		[in]VARIANT RHS);
	[id(0x000000d0), propget, helpcontext(0x000100d0)]
	HRESULT __stdcall MergeCells(
		[out, retval]VARIANT* RHS);
	[id(0x000000d0), propput, helpcontext(0x000100d0)]
	HRESULT __stdcall MergeCells(
		[in]VARIANT RHS);
	[id(0x0000006f), helpcontext(0x0001006f)]
	HRESULT __stdcall Clear();
};
'!
!ExcelICellFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelICellFormat methodsFor!

addIndent
	"Answer the <variant> value of the 'AddIndent' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_AddIndent: answer.
	^answer asObject
!

addIndent: rhs
	"Set the 'AddIndent' property of the receiver to the <variant> value of the argument."

	self put_AddIndent: rhs asVariant
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver."

	| answer |
	answer := ExcelBorders newPointer.
	self get_Borders: answer.
	^answer asObject
!

clear
	"Invoke the Clear() method of the COM object."

	^self Clear
!

Clear
	"Private - Invoke the Clear() method of the COM object.

		HRESULT __stdcall Clear();"

	<virtual stdcall: hresult 41>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

formulaHidden
	"Answer the <variant> value of the 'FormulaHidden' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_FormulaHidden: answer.
	^answer asObject
!

formulaHidden: rhs
	"Set the 'FormulaHidden' property of the receiver to the <variant> value of the argument."

	self put_FormulaHidden: rhs asVariant
!

get_AddIndent: rhs
	"Private - Get the value of the 'AddIndent' property of the receiver.

		HRESULT __stdcall AddIndent(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 21 variant*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Borders: rhs
	"Private - Get the value of the 'Borders' property of the receiver.

		HRESULT __stdcall Borders(
			[out, retval]Borders** RHS);"

	<virtual stdcall: hresult 11 ExcelBorders**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 13 ExcelFont**>
	^self invalidCall!

get_FormulaHidden: rhs
	"Private - Get the value of the 'FormulaHidden' property of the receiver.

		HRESULT __stdcall FormulaHidden(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 37 variant*>
	^self invalidCall!

get_HorizontalAlignment: rhs
	"Private - Get the value of the 'HorizontalAlignment' property of the receiver.

		HRESULT __stdcall HorizontalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 25 variant*>
	^self invalidCall!

get_IndentLevel: rhs
	"Private - Get the value of the 'IndentLevel' property of the receiver.

		HRESULT __stdcall IndentLevel(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 23 variant*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 15 ExcelInterior**>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 35 variant*>
	^self invalidCall!

get_MergeCells: rhs
	"Private - Get the value of the 'MergeCells' property of the receiver.

		HRESULT __stdcall MergeCells(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 39 variant*>
	^self invalidCall!

get_NumberFormat: lcid rhs: rhs
	"Private - Get the value of the 'NumberFormat' property of the receiver.

		HRESULT __stdcall NumberFormat(
			[in]long lcid,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 sdword variant*>
	^self invalidCall!

get_NumberFormatLocal: rhs
	"Private - Get the value of the 'NumberFormatLocal' property of the receiver.

		HRESULT __stdcall NumberFormatLocal(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 19 variant*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 29 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ShrinkToFit: rhs
	"Private - Get the value of the 'ShrinkToFit' property of the receiver.

		HRESULT __stdcall ShrinkToFit(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 31 variant*>
	^self invalidCall!

get_VerticalAlignment: rhs
	"Private - Get the value of the 'VerticalAlignment' property of the receiver.

		HRESULT __stdcall VerticalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 27 variant*>
	^self invalidCall!

get_WrapText: rhs
	"Private - Get the value of the 'WrapText' property of the receiver.

		HRESULT __stdcall WrapText(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 33 variant*>
	^self invalidCall!

horizontalAlignment
	"Answer the <variant> value of the 'HorizontalAlignment' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_HorizontalAlignment: answer.
	^answer asObject
!

horizontalAlignment: rhs
	"Set the 'HorizontalAlignment' property of the receiver to the <variant> value of the argument."

	self put_HorizontalAlignment: rhs asVariant
!

indentLevel
	"Answer the <variant> value of the 'IndentLevel' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_IndentLevel: answer.
	^answer asObject
!

indentLevel: rhs
	"Set the 'IndentLevel' property of the receiver to the <variant> value of the argument."

	self put_IndentLevel: rhs asVariant
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

locked
	"Answer the <variant> value of the 'Locked' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Locked: answer.
	^answer asObject
!

locked: rhs
	"Set the 'Locked' property of the receiver to the <variant> value of the argument."

	self put_Locked: rhs asVariant
!

mergeCells
	"Answer the <variant> value of the 'MergeCells' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_MergeCells: answer.
	^answer asObject
!

mergeCells: rhs
	"Set the 'MergeCells' property of the receiver to the <variant> value of the argument."

	self put_MergeCells: rhs asVariant
!

numberFormat: lcid
	"Answer the <variant> value of the 'NumberFormat' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_NumberFormat: lcid
		rhs: answer.
	^answer asObject
!

numberFormat: lcid rhs: rhs
	"Set the 'NumberFormat' property of the receiver to the <variant> value of the argument."

	self
		put_NumberFormat: lcid
		rhs: rhs asVariant
!

numberFormatLocal
	"Answer the <variant> value of the 'NumberFormatLocal' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_NumberFormatLocal: answer.
	^answer asObject
!

numberFormatLocal: rhs
	"Set the 'NumberFormatLocal' property of the receiver to the <variant> value of the argument."

	self put_NumberFormatLocal: rhs asVariant
!

orientation
	"Answer the <variant> value of the 'Orientation' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <variant> value of the argument."

	self put_Orientation: rhs asVariant
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AddIndent: rhs
	"Private - Set the value of the 'AddIndent' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall AddIndent(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 22 variant>
	^self invalidCall!

put_FormulaHidden: rhs
	"Private - Set the value of the 'FormulaHidden' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FormulaHidden(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 38 variant>
	^self invalidCall!

put_HorizontalAlignment: rhs
	"Private - Set the value of the 'HorizontalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall HorizontalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 26 variant>
	^self invalidCall!

put_IndentLevel: rhs
	"Private - Set the value of the 'IndentLevel' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall IndentLevel(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 24 variant>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 36 variant>
	^self invalidCall!

put_MergeCells: rhs
	"Private - Set the value of the 'MergeCells' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall MergeCells(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 40 variant>
	^self invalidCall!

put_NumberFormat: lcid rhs: rhs
	"Private - Set the value of the 'NumberFormat' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall NumberFormat(
			[in]long lcid,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 18 sdword variant>
	^self invalidCall!

put_NumberFormatLocal: rhs
	"Private - Set the value of the 'NumberFormatLocal' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall NumberFormatLocal(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 20 variant>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 30 variant>
	^self invalidCall!

put_ShrinkToFit: rhs
	"Private - Set the value of the 'ShrinkToFit' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ShrinkToFit(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 32 variant>
	^self invalidCall!

put_VerticalAlignment: rhs
	"Private - Set the value of the 'VerticalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall VerticalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 28 variant>
	^self invalidCall!

put_WrapText: rhs
	"Private - Set the value of the 'WrapText' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall WrapText(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 34 variant>
	^self invalidCall!

putref_Borders: rhs
	"Private - Set the value of the 'Borders' property of the object wrapped by the 
	 receiver to the <ExcelBorders*> argument, rhs.

		HRESULT __stdcall Borders(
			[in]Borders* RHS);"

	<virtual stdcall: hresult 12 ExcelBorders*>
	^self invalidCall!

putref_Font: rhs
	"Private - Set the value of the 'Font' property of the object wrapped by the 
	 receiver to the <ExcelFont*> argument, rhs.

		HRESULT __stdcall Font(
			[in]Font* RHS);"

	<virtual stdcall: hresult 14 ExcelFont*>
	^self invalidCall!

putref_Interior: rhs
	"Private - Set the value of the 'Interior' property of the object wrapped by the 
	 receiver to the <ExcelInterior*> argument, rhs.

		HRESULT __stdcall Interior(
			[in]Interior* RHS);"

	<virtual stdcall: hresult 16 ExcelInterior*>
	^self invalidCall!

setBorders: rhs
	"Set the 'Borders' property of the receiver to the <ExcelBorders*> value of the argument."

	self putref_Borders: rhs
!

setFont: rhs
	"Set the 'Font' property of the receiver to the <ExcelFont*> value of the argument."

	self putref_Font: rhs
!

setInterior: rhs
	"Set the 'Interior' property of the receiver to the <ExcelInterior*> value of the argument."

	self putref_Interior: rhs
!

shrinkToFit
	"Answer the <variant> value of the 'ShrinkToFit' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ShrinkToFit: answer.
	^answer asObject
!

shrinkToFit: rhs
	"Set the 'ShrinkToFit' property of the receiver to the <variant> value of the argument."

	self put_ShrinkToFit: rhs asVariant
!

verticalAlignment
	"Answer the <variant> value of the 'VerticalAlignment' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_VerticalAlignment: answer.
	^answer asObject
!

verticalAlignment: rhs
	"Set the 'VerticalAlignment' property of the receiver to the <variant> value of the argument."

	self put_VerticalAlignment: rhs asVariant
!

wrapText
	"Answer the <variant> value of the 'WrapText' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_WrapText: answer.
	^answer asObject
!

wrapText: rhs
	"Set the 'WrapText' property of the receiver to the <variant> value of the argument."

	self put_WrapText: rhs asVariant
! !
!ExcelICellFormat categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelICellFormat categoriesFor: #Clear!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #font!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #formulaHidden!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #formulaHidden:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #get_AddIndent:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_Borders:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_Font:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_FormulaHidden:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_HorizontalAlignment:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_IndentLevel:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_MergeCells:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_NumberFormat:rhs:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_NumberFormatLocal:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_ShrinkToFit:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_VerticalAlignment:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #get_WrapText:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #indentLevel!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #indentLevel:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #mergeCells!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #mergeCells:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #numberFormat:rhs:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #put_AddIndent:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_FormulaHidden:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_HorizontalAlignment:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_IndentLevel:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_MergeCells:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_NumberFormat:rhs:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_NumberFormatLocal:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_ShrinkToFit:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_VerticalAlignment:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #put_WrapText:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #putref_Borders:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #putref_Font:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #putref_Interior:!**auto generated**!COM Interfaces-ICellFormat!private! !
!ExcelICellFormat categoriesFor: #setBorders:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #setFont:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #setInterior:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #shrinkToFit!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #shrinkToFit:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #wrapText!**auto generated**!properties!public! !
!ExcelICellFormat categoriesFor: #wrapText:!**auto generated**!properties!public! !

!ExcelICellFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ICellFormat'
		ExcelICellFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Borders:
			argumentTypes: 'ExcelBorders**';
		defineFunction: #putref_Borders:
			argumentTypes: 'ExcelBorders*';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #putref_Font:
			argumentTypes: 'ExcelFont*';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #putref_Interior:
			argumentTypes: 'ExcelInterior*';
		defineFunction: #get_NumberFormat:rhs:
			argumentTypes: 'sdword variant*';
		defineFunction: #put_NumberFormat:rhs:
			argumentTypes: 'sdword variant';
		defineFunction: #get_NumberFormatLocal:
			argumentTypes: 'variant*';
		defineFunction: #put_NumberFormatLocal:
			argumentTypes: 'variant';
		defineFunction: #get_AddIndent:
			argumentTypes: 'variant*';
		defineFunction: #put_AddIndent:
			argumentTypes: 'variant';
		defineFunction: #get_IndentLevel:
			argumentTypes: 'variant*';
		defineFunction: #put_IndentLevel:
			argumentTypes: 'variant';
		defineFunction: #get_HorizontalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_HorizontalAlignment:
			argumentTypes: 'variant';
		defineFunction: #get_VerticalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_VerticalAlignment:
			argumentTypes: 'variant';
		defineFunction: #get_Orientation:
			argumentTypes: 'variant*';
		defineFunction: #put_Orientation:
			argumentTypes: 'variant';
		defineFunction: #get_ShrinkToFit:
			argumentTypes: 'variant*';
		defineFunction: #put_ShrinkToFit:
			argumentTypes: 'variant';
		defineFunction: #get_WrapText:
			argumentTypes: 'variant*';
		defineFunction: #put_WrapText:
			argumentTypes: 'variant';
		defineFunction: #get_Locked:
			argumentTypes: 'variant*';
		defineFunction: #put_Locked:
			argumentTypes: 'variant';
		defineFunction: #get_FormulaHidden:
			argumentTypes: 'variant*';
		defineFunction: #put_FormulaHidden:
			argumentTypes: 'variant';
		defineFunction: #get_MergeCells:
			argumentTypes: 'variant*';
		defineFunction: #put_MergeCells:
			argumentTypes: 'variant';
		defineFunction: #Clear
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelICellFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelICellFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelICellFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

