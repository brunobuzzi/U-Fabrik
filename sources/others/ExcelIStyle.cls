"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIStyle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIStyle guid: (IID fromString: '{00020852-0001-0000-C000-000000000046}')!
ExcelIStyle comment: '<ExcelIStyle> is a wrapper class for the COM interface ''Excel.IStyle'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020852-0001-0000-C000-000000000046), 
	helpcontext(0x00020012), 
	hidden
]
interface IStyle : IDispatch
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
	[id(0x00000427), propget, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000427), propput, helpcontext(0x00010427)]
	HRESULT __stdcall AddIndent(
		[in]VARIANT_BOOL RHS);
	[id(0x00000229), propget, helpcontext(0x00010229)]
	HRESULT __stdcall BuiltIn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000001b3), propget, helpcontext(0x000101b3)]
	HRESULT __stdcall Borders(
		[out, retval]Borders** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x00000106), propget, helpcontext(0x00010106)]
	HRESULT __stdcall FormulaHidden(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000106), propput, helpcontext(0x00010106)]
	HRESULT __stdcall FormulaHidden(
		[in]VARIANT_BOOL RHS);
	[id(0x00000088), propget, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[out, retval]XlHAlign* RHS);
	[id(0x00000088), propput, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[in]XlHAlign RHS);
	[id(0x0000019d), propget, helpcontext(0x0001019d)]
	HRESULT __stdcall IncludeAlignment(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000019d), propput, helpcontext(0x0001019d)]
	HRESULT __stdcall IncludeAlignment(
		[in]VARIANT_BOOL RHS);
	[id(0x0000019e), propget, helpcontext(0x0001019e)]
	HRESULT __stdcall IncludeBorder(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000019e), propput, helpcontext(0x0001019e)]
	HRESULT __stdcall IncludeBorder(
		[in]VARIANT_BOOL RHS);
	[id(0x0000019f), propget, helpcontext(0x0001019f)]
	HRESULT __stdcall IncludeFont(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000019f), propput, helpcontext(0x0001019f)]
	HRESULT __stdcall IncludeFont(
		[in]VARIANT_BOOL RHS);
	[id(0x000001a0), propget, helpcontext(0x000101a0)]
	HRESULT __stdcall IncludeNumber(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000001a0), propput, helpcontext(0x000101a0)]
	HRESULT __stdcall IncludeNumber(
		[in]VARIANT_BOOL RHS);
	[id(0x000001a1), propget, helpcontext(0x000101a1)]
	HRESULT __stdcall IncludePatterns(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000001a1), propput, helpcontext(0x000101a1)]
	HRESULT __stdcall IncludePatterns(
		[in]VARIANT_BOOL RHS);
	[id(0x000001a2), propget, helpcontext(0x000101a2)]
	HRESULT __stdcall IncludeProtection(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000001a2), propput, helpcontext(0x000101a2)]
	HRESULT __stdcall IncludeProtection(
		[in]VARIANT_BOOL RHS);
	[id(0x000000c9), propget, helpcontext(0x000100c9)]
	HRESULT __stdcall IndentLevel(
		[out, retval]long* RHS);
	[id(0x000000c9), propput, helpcontext(0x000100c9)]
	HRESULT __stdcall IndentLevel(
		[in]long RHS);
	[id(0x00000081), propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x0000010d), propget, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000010d), propput, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[in]VARIANT_BOOL RHS);
	[id(0x000000d0), propget, helpcontext(0x000100d0)]
	HRESULT __stdcall MergeCells(
		[out, retval]VARIANT* RHS);
	[id(0x000000d0), propput, helpcontext(0x000100d0)]
	HRESULT __stdcall MergeCells(
		[in]VARIANT RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x000003a9), propget, helpcontext(0x000103a9)]
	HRESULT __stdcall NameLocal(
		[out, retval]BSTR* RHS);
	[id(0x000000c1), propget, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[out, retval]BSTR* RHS);
	[id(0x000000c1), propput, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]BSTR RHS);
	[id(0x00000449), propget, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[out, retval]BSTR* RHS);
	[id(0x00000449), propput, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[in]BSTR RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]XlOrientation* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]XlOrientation RHS);
	[id(0x000000d1), propget, helpcontext(0x000100d1)]
	HRESULT __stdcall ShrinkToFit(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000d1), propput, helpcontext(0x000100d1)]
	HRESULT __stdcall ShrinkToFit(
		[in]VARIANT_BOOL RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x00000089), propget, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[out, retval]XlVAlign* RHS);
	[id(0x00000089), propput, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[in]XlVAlign RHS);
	[id(0x00000114), propget, helpcontext(0x00010114)]
	HRESULT __stdcall WrapText(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000114), propput, helpcontext(0x00010114)]
	HRESULT __stdcall WrapText(
		[in]VARIANT_BOOL RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long lcid,
		[out, retval]BSTR* RHS);
	[id(0x000003cf), propget, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[out, retval]long* RHS);
	[id(0x000003cf), propput, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[in]long RHS);
};
'!
!ExcelIStyle categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIStyle methodsFor!

_default: lcid
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get__Default: lcid
		rhs: answer.
	^answer asObject
!

addIndent
	"Answer the <varbool> value of the 'AddIndent' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AddIndent: answer.
	^answer asObject
!

addIndent: rhs
	"Set the 'AddIndent' property of the receiver to the <varbool> value of the argument."

	self put_AddIndent: rhs
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
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Delete: answer.
	^answer asObject
!

Delete: rhs
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

formulaHidden
	"Answer the <varbool> value of the 'FormulaHidden' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_FormulaHidden: answer.
	^answer asObject
!

formulaHidden: rhs
	"Set the 'FormulaHidden' property of the receiver to the <varbool> value of the argument."

	self put_FormulaHidden: rhs
!

get__Default: lcid rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 55 sdword bstr*>
	^self invalidCall!

get_AddIndent: rhs
	"Private - Get the value of the 'AddIndent' property of the receiver.

		HRESULT __stdcall AddIndent(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
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

	<virtual stdcall: hresult 14 ExcelBorders**>
	^self invalidCall!

get_BuiltIn: rhs
	"Private - Get the value of the 'BuiltIn' property of the receiver.

		HRESULT __stdcall BuiltIn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
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

	<virtual stdcall: hresult 16 ExcelFont**>
	^self invalidCall!

get_FormulaHidden: rhs
	"Private - Get the value of the 'FormulaHidden' property of the receiver.

		HRESULT __stdcall FormulaHidden(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_HorizontalAlignment: rhs
	"Private - Get the value of the 'HorizontalAlignment' property of the receiver.

		HRESULT __stdcall HorizontalAlignment(
			[out, retval]XlHAlign* RHS);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_IncludeAlignment: rhs
	"Private - Get the value of the 'IncludeAlignment' property of the receiver.

		HRESULT __stdcall IncludeAlignment(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_IncludeBorder: rhs
	"Private - Get the value of the 'IncludeBorder' property of the receiver.

		HRESULT __stdcall IncludeBorder(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_IncludeFont: rhs
	"Private - Get the value of the 'IncludeFont' property of the receiver.

		HRESULT __stdcall IncludeFont(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_IncludeNumber: rhs
	"Private - Get the value of the 'IncludeNumber' property of the receiver.

		HRESULT __stdcall IncludeNumber(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
	^self invalidCall!

get_IncludePatterns: rhs
	"Private - Get the value of the 'IncludePatterns' property of the receiver.

		HRESULT __stdcall IncludePatterns(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 29 varbool*>
	^self invalidCall!

get_IncludeProtection: rhs
	"Private - Get the value of the 'IncludeProtection' property of the receiver.

		HRESULT __stdcall IncludeProtection(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 31 varbool*>
	^self invalidCall!

get_IndentLevel: rhs
	"Private - Get the value of the 'IndentLevel' property of the receiver.

		HRESULT __stdcall IndentLevel(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 35 ExcelInterior**>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 36 varbool*>
	^self invalidCall!

get_MergeCells: rhs
	"Private - Get the value of the 'MergeCells' property of the receiver.

		HRESULT __stdcall MergeCells(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 38 variant*>
	^self invalidCall!

get_Name: lcid rhs: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 40 sdword bstr*>
	^self invalidCall!

get_NameLocal: rhs
	"Private - Get the value of the 'NameLocal' property of the receiver.

		HRESULT __stdcall NameLocal(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 41 bstr*>
	^self invalidCall!

get_NumberFormat: rhs
	"Private - Get the value of the 'NumberFormat' property of the receiver.

		HRESULT __stdcall NumberFormat(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 42 bstr*>
	^self invalidCall!

get_NumberFormatLocal: rhs
	"Private - Get the value of the 'NumberFormatLocal' property of the receiver.

		HRESULT __stdcall NumberFormatLocal(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 44 bstr*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]XlOrientation* RHS);"

	<virtual stdcall: hresult 46 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ReadingOrder: rhs
	"Private - Get the value of the 'ReadingOrder' property of the receiver.

		HRESULT __stdcall ReadingOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 56 sdword*>
	^self invalidCall!

get_ShrinkToFit: rhs
	"Private - Get the value of the 'ShrinkToFit' property of the receiver.

		HRESULT __stdcall ShrinkToFit(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 varbool*>
	^self invalidCall!

get_Value: lcid rhs: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[in]long lcid,
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 50 sdword bstr*>
	^self invalidCall!

get_VerticalAlignment: rhs
	"Private - Get the value of the 'VerticalAlignment' property of the receiver.

		HRESULT __stdcall VerticalAlignment(
			[out, retval]XlVAlign* RHS);"

	<virtual stdcall: hresult 51 sdword*>
	^self invalidCall!

get_WrapText: rhs
	"Private - Get the value of the 'WrapText' property of the receiver.

		HRESULT __stdcall WrapText(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 53 varbool*>
	^self invalidCall!

horizontalAlignment
	"Answer the <sdword> value of the 'HorizontalAlignment' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_HorizontalAlignment: answer.
	^answer asObject
!

horizontalAlignment: rhs
	"Set the 'HorizontalAlignment' property of the receiver to the <sdword> value of the argument."

	self put_HorizontalAlignment: rhs
!

includeAlignment
	"Answer the <varbool> value of the 'IncludeAlignment' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IncludeAlignment: answer.
	^answer asObject
!

includeAlignment: rhs
	"Set the 'IncludeAlignment' property of the receiver to the <varbool> value of the argument."

	self put_IncludeAlignment: rhs
!

includeBorder
	"Answer the <varbool> value of the 'IncludeBorder' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IncludeBorder: answer.
	^answer asObject
!

includeBorder: rhs
	"Set the 'IncludeBorder' property of the receiver to the <varbool> value of the argument."

	self put_IncludeBorder: rhs
!

includeFont
	"Answer the <varbool> value of the 'IncludeFont' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IncludeFont: answer.
	^answer asObject
!

includeFont: rhs
	"Set the 'IncludeFont' property of the receiver to the <varbool> value of the argument."

	self put_IncludeFont: rhs
!

includeNumber
	"Answer the <varbool> value of the 'IncludeNumber' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IncludeNumber: answer.
	^answer asObject
!

includeNumber: rhs
	"Set the 'IncludeNumber' property of the receiver to the <varbool> value of the argument."

	self put_IncludeNumber: rhs
!

includePatterns
	"Answer the <varbool> value of the 'IncludePatterns' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IncludePatterns: answer.
	^answer asObject
!

includePatterns: rhs
	"Set the 'IncludePatterns' property of the receiver to the <varbool> value of the argument."

	self put_IncludePatterns: rhs
!

includeProtection
	"Answer the <varbool> value of the 'IncludeProtection' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IncludeProtection: answer.
	^answer asObject
!

includeProtection: rhs
	"Set the 'IncludeProtection' property of the receiver to the <varbool> value of the argument."

	self put_IncludeProtection: rhs
!

indentLevel
	"Answer the <sdword> value of the 'IndentLevel' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_IndentLevel: answer.
	^answer asObject
!

indentLevel: rhs
	"Set the 'IndentLevel' property of the receiver to the <sdword> value of the argument."

	self put_IndentLevel: rhs
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Locked: answer.
	^answer asObject
!

locked: rhs
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument."

	self put_Locked: rhs
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

name: lcid
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Name: lcid
		rhs: answer.
	^answer asObject
!

nameLocal
	"Answer the <bstr> value of the 'NameLocal' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_NameLocal: answer.
	^answer asObject
!

numberFormat
	"Answer the <bstr> value of the 'NumberFormat' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_NumberFormat: answer.
	^answer asObject
!

numberFormat: rhs
	"Set the 'NumberFormat' property of the receiver to the <bstr> value of the argument."

	self put_NumberFormat: rhs
!

numberFormatLocal
	"Answer the <bstr> value of the 'NumberFormatLocal' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_NumberFormatLocal: answer.
	^answer asObject
!

numberFormatLocal: rhs
	"Set the 'NumberFormatLocal' property of the receiver to the <bstr> value of the argument."

	self put_NumberFormatLocal: rhs
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument."

	self put_Orientation: rhs
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
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AddIndent(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_FormulaHidden: rhs
	"Private - Set the value of the 'FormulaHidden' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall FormulaHidden(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_HorizontalAlignment: rhs
	"Private - Set the value of the 'HorizontalAlignment' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall HorizontalAlignment(
			[in]XlHAlign RHS);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_IncludeAlignment: rhs
	"Private - Set the value of the 'IncludeAlignment' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IncludeAlignment(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_IncludeBorder: rhs
	"Private - Set the value of the 'IncludeBorder' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IncludeBorder(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_IncludeFont: rhs
	"Private - Set the value of the 'IncludeFont' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IncludeFont(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_IncludeNumber: rhs
	"Private - Set the value of the 'IncludeNumber' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IncludeNumber(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

put_IncludePatterns: rhs
	"Private - Set the value of the 'IncludePatterns' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IncludePatterns(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 30 varbool>
	^self invalidCall!

put_IncludeProtection: rhs
	"Private - Set the value of the 'IncludeProtection' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IncludeProtection(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 32 varbool>
	^self invalidCall!

put_IndentLevel: rhs
	"Private - Set the value of the 'IndentLevel' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall IndentLevel(
			[in]long RHS);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 37 varbool>
	^self invalidCall!

put_MergeCells: rhs
	"Private - Set the value of the 'MergeCells' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall MergeCells(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 39 variant>
	^self invalidCall!

put_NumberFormat: rhs
	"Private - Set the value of the 'NumberFormat' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall NumberFormat(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 43 bstr>
	^self invalidCall!

put_NumberFormatLocal: rhs
	"Private - Set the value of the 'NumberFormatLocal' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall NumberFormatLocal(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 45 bstr>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]XlOrientation RHS);"

	<virtual stdcall: hresult 47 sdword>
	^self invalidCall!

put_ReadingOrder: rhs
	"Private - Set the value of the 'ReadingOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ReadingOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 57 sdword>
	^self invalidCall!

put_ShrinkToFit: rhs
	"Private - Set the value of the 'ShrinkToFit' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShrinkToFit(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 49 varbool>
	^self invalidCall!

put_VerticalAlignment: rhs
	"Private - Set the value of the 'VerticalAlignment' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall VerticalAlignment(
			[in]XlVAlign RHS);"

	<virtual stdcall: hresult 52 sdword>
	^self invalidCall!

put_WrapText: rhs
	"Private - Set the value of the 'WrapText' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall WrapText(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 54 varbool>
	^self invalidCall!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ReadingOrder: answer.
	^answer asObject
!

readingOrder: rhs
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument."

	self put_ReadingOrder: rhs
!

shrinkToFit
	"Answer the <varbool> value of the 'ShrinkToFit' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShrinkToFit: answer.
	^answer asObject
!

shrinkToFit: rhs
	"Set the 'ShrinkToFit' property of the receiver to the <varbool> value of the argument."

	self put_ShrinkToFit: rhs
!

value: lcid
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self
		get_Value: lcid
		rhs: answer.
	^answer asObject
!

verticalAlignment
	"Answer the <sdword> value of the 'VerticalAlignment' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_VerticalAlignment: answer.
	^answer asObject
!

verticalAlignment: rhs
	"Set the 'VerticalAlignment' property of the receiver to the <sdword> value of the argument."

	self put_VerticalAlignment: rhs
!

wrapText
	"Answer the <varbool> value of the 'WrapText' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_WrapText: answer.
	^answer asObject
!

wrapText: rhs
	"Set the 'WrapText' property of the receiver to the <varbool> value of the argument."

	self put_WrapText: rhs
! !
!ExcelIStyle categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIStyle categoriesFor: #Delete:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #formulaHidden!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #formulaHidden:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_AddIndent:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Borders:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_BuiltIn:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_FormulaHidden:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_HorizontalAlignment:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_IncludeAlignment:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_IncludeBorder:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_IncludeFont:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_IncludeNumber:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_IncludePatterns:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_IncludeProtection:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_IndentLevel:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_MergeCells:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Name:rhs:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_NameLocal:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_NumberFormat:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_NumberFormatLocal:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_ReadingOrder:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_ShrinkToFit:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_Value:rhs:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_VerticalAlignment:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #get_WrapText:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeAlignment!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeAlignment:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeBorder!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeBorder:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeFont!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeFont:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeNumber!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeNumber:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includePatterns!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includePatterns:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeProtection!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #includeProtection:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #indentLevel!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #indentLevel:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #mergeCells!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #mergeCells:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #nameLocal!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #put_AddIndent:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_FormulaHidden:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_HorizontalAlignment:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_IncludeAlignment:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_IncludeBorder:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_IncludeFont:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_IncludeNumber:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_IncludePatterns:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_IncludeProtection:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_IndentLevel:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_MergeCells:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_NumberFormat:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_NumberFormatLocal:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_ReadingOrder:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_ShrinkToFit:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_VerticalAlignment:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #put_WrapText:!**auto generated**!COM Interfaces-IStyle!private! !
!ExcelIStyle categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #shrinkToFit!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #shrinkToFit:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #wrapText!**auto generated**!properties!public! !
!ExcelIStyle categoriesFor: #wrapText:!**auto generated**!properties!public! !

!ExcelIStyle class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IStyle'
		ExcelIStyle defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_AddIndent:
			argumentTypes: 'varbool*';
		defineFunction: #put_AddIndent:
			argumentTypes: 'varbool';
		defineFunction: #get_BuiltIn:
			argumentTypes: 'varbool*';
		defineFunction: #get_Borders:
			argumentTypes: 'ExcelBorders**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #get_FormulaHidden:
			argumentTypes: 'varbool*';
		defineFunction: #put_FormulaHidden:
			argumentTypes: 'varbool';
		defineFunction: #get_HorizontalAlignment:
			argumentTypes: 'sdword*';
		defineFunction: #put_HorizontalAlignment:
			argumentTypes: 'sdword';
		defineFunction: #get_IncludeAlignment:
			argumentTypes: 'varbool*';
		defineFunction: #put_IncludeAlignment:
			argumentTypes: 'varbool';
		defineFunction: #get_IncludeBorder:
			argumentTypes: 'varbool*';
		defineFunction: #put_IncludeBorder:
			argumentTypes: 'varbool';
		defineFunction: #get_IncludeFont:
			argumentTypes: 'varbool*';
		defineFunction: #put_IncludeFont:
			argumentTypes: 'varbool';
		defineFunction: #get_IncludeNumber:
			argumentTypes: 'varbool*';
		defineFunction: #put_IncludeNumber:
			argumentTypes: 'varbool';
		defineFunction: #get_IncludePatterns:
			argumentTypes: 'varbool*';
		defineFunction: #put_IncludePatterns:
			argumentTypes: 'varbool';
		defineFunction: #get_IncludeProtection:
			argumentTypes: 'varbool*';
		defineFunction: #put_IncludeProtection:
			argumentTypes: 'varbool';
		defineFunction: #get_IndentLevel:
			argumentTypes: 'sdword*';
		defineFunction: #put_IndentLevel:
			argumentTypes: 'sdword';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Locked:
			argumentTypes: 'varbool*';
		defineFunction: #put_Locked:
			argumentTypes: 'varbool';
		defineFunction: #get_MergeCells:
			argumentTypes: 'variant*';
		defineFunction: #put_MergeCells:
			argumentTypes: 'variant';
		defineFunction: #get_Name:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_NameLocal:
			argumentTypes: 'bstr*';
		defineFunction: #get_NumberFormat:
			argumentTypes: 'bstr*';
		defineFunction: #put_NumberFormat:
			argumentTypes: 'bstr';
		defineFunction: #get_NumberFormatLocal:
			argumentTypes: 'bstr*';
		defineFunction: #put_NumberFormatLocal:
			argumentTypes: 'bstr';
		defineFunction: #get_Orientation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Orientation:
			argumentTypes: 'sdword';
		defineFunction: #get_ShrinkToFit:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShrinkToFit:
			argumentTypes: 'varbool';
		defineFunction: #get_Value:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_VerticalAlignment:
			argumentTypes: 'sdword*';
		defineFunction: #put_VerticalAlignment:
			argumentTypes: 'sdword';
		defineFunction: #get_WrapText:
			argumentTypes: 'varbool*';
		defineFunction: #put_WrapText:
			argumentTypes: 'varbool';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'sdword bstr*';
		defineFunction: #get_ReadingOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_ReadingOrder:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIStyle initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIStyle class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIStyle class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

