"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDataLabel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDataLabel guid: (IID fromString: '{000208B2-0001-0000-C000-000000000046}')!
ExcelIDataLabel comment: '<ExcelIDataLabel> is a wrapper class for the COM interface ''Excel.IDataLabel'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208B2-0001-0000-C000-000000000046), 
	helpcontext(0x00020072), 
	hidden
]
interface IDataLabel : IDispatch
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
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
	HRESULT __stdcall Fill(
		[out, retval]ChartFillFormat** RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x0000025b), propget, helpcontext(0x0001025b)]
	HRESULT __stdcall Characters(
		[in, optional]VARIANT Start,
		[in, optional]VARIANT Length,
		[out, retval]Characters** RHS);
	[id(0x00000092), hidden, propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x00000088), propget, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000088), propput, helpcontext(0x00010088)]
	HRESULT __stdcall HorizontalAlignment(
		[in]VARIANT RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]double* RHS);
	[id(0x0000007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]double RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]VARIANT* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]VARIANT RHS);
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]double RHS);
	[id(0x00000089), propget, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[out, retval]VARIANT* RHS);
	[id(0x00000089), propput, helpcontext(0x00010089)]
	HRESULT __stdcall VerticalAlignment(
		[in]VARIANT RHS);
	[id(0x000003cf), propget, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[out, retval]long* RHS);
	[id(0x000003cf), propput, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[in]long RHS);
	[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[out, retval]VARIANT* RHS);
	[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[in]VARIANT RHS);
	[id(0x00000087), propget, helpcontext(0x00010087)]
	HRESULT __stdcall AutoText(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000087), propput, helpcontext(0x00010087)]
	HRESULT __stdcall AutoText(
		[in]VARIANT_BOOL RHS);
	[id(0x000000c1), propget, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[out, retval]BSTR* RHS);
	[id(0x000000c1), propput, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]BSTR RHS);
	[id(0x000000c2), propget, helpcontext(0x000100c2)]
	HRESULT __stdcall NumberFormatLinked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000c2), propput, helpcontext(0x000100c2)]
	HRESULT __stdcall NumberFormatLinked(
		[in]VARIANT_BOOL RHS);
	[id(0x00000449), propget, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[out, retval]VARIANT* RHS);
	[id(0x00000449), propput, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[in]VARIANT RHS);
	[id(0x000000ab), propget, helpcontext(0x000100ab)]
	HRESULT __stdcall ShowLegendKey(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000ab), propput, helpcontext(0x000100ab)]
	HRESULT __stdcall ShowLegendKey(
		[in]VARIANT_BOOL RHS);
	[id(0x0000006c), hidden, propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]VARIANT* RHS);
	[id(0x0000006c), hidden, propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]VARIANT RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]XlDataLabelPosition* RHS);
	[id(0x00000085), propput, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[in]XlDataLabelPosition RHS);
	[id(0x000007e6), propget, helpcontext(0x000107e6)]
	HRESULT __stdcall ShowSeriesName(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007e6), propput, helpcontext(0x000107e6)]
	HRESULT __stdcall ShowSeriesName(
		[in]VARIANT_BOOL RHS);
	[id(0x000007e7), propget, helpcontext(0x000107e7)]
	HRESULT __stdcall ShowCategoryName(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007e7), propput, helpcontext(0x000107e7)]
	HRESULT __stdcall ShowCategoryName(
		[in]VARIANT_BOOL RHS);
	[id(0x000007e8), propget, helpcontext(0x000107e8)]
	HRESULT __stdcall ShowValue(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007e8), propput, helpcontext(0x000107e8)]
	HRESULT __stdcall ShowValue(
		[in]VARIANT_BOOL RHS);
	[id(0x000007e9), propget, helpcontext(0x000107e9)]
	HRESULT __stdcall ShowPercentage(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007e9), propput, helpcontext(0x000107e9)]
	HRESULT __stdcall ShowPercentage(
		[in]VARIANT_BOOL RHS);
	[id(0x000007ea), propget, helpcontext(0x000107ea)]
	HRESULT __stdcall ShowBubbleSize(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007ea), propput, helpcontext(0x000107ea)]
	HRESULT __stdcall ShowBubbleSize(
		[in]VARIANT_BOOL RHS);
	[id(0x000007eb), propget, helpcontext(0x000107eb)]
	HRESULT __stdcall Separator(
		[out, retval]VARIANT* RHS);
	[id(0x000007eb), propput, helpcontext(0x000107eb)]
	HRESULT __stdcall Separator(
		[in]VARIANT RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelIDataLabel categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDataLabel methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoScaleFont
	"Answer the <variant> value of the 'AutoScaleFont' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_AutoScaleFont: answer.
	^answer asObject
!

autoScaleFont: rhs
	"Set the 'AutoScaleFont' property of the receiver to the <variant> value of the argument."

	self put_AutoScaleFont: rhs asVariant
!

autoText
	"Answer the <varbool> value of the 'AutoText' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutoText: answer.
	^answer asObject
!

autoText: rhs
	"Set the 'AutoText' property of the receiver to the <varbool> value of the argument."

	self put_AutoText: rhs
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
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

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver."

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver."

	| answer |
	answer := ExcelCharacters newPointer.
	self
		get_Characters: start asVariant
		length: length asVariant
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

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver."

	| answer |
	answer := ExcelChartFillFormat newPointer.
	self get_Fill: answer.
	^answer asObject
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver."

	| answer |
	answer := ExcelChartFormat newPointer.
	self get_Format: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoScaleFont: rhs
	"Private - Get the value of the 'AutoScaleFont' property of the receiver.

		HRESULT __stdcall AutoScaleFont(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 37 variant*>
	^self invalidCall!

get_AutoText: rhs
	"Private - Get the value of the 'AutoText' property of the receiver.

		HRESULT __stdcall AutoText(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 39 varbool*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 13 ExcelBorder**>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 17 bstr*>
	^self invalidCall!

get_Characters: start length: length rhs: rhs
	"Private - Get the value of the 'Characters' property of the receiver.

		HRESULT __stdcall Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length,
			[out, retval]Characters** RHS);"

	<virtual stdcall: hresult 19 variant variant ExcelCharacters**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Fill: rhs
	"Private - Get the value of the 'Fill' property of the receiver.

		HRESULT __stdcall Fill(
			[out, retval]ChartFillFormat** RHS);"

	<virtual stdcall: hresult 16 ExcelChartFillFormat**>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 20 ExcelFont**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 65 ExcelChartFormat**>
	^self invalidCall!

get_HorizontalAlignment: rhs
	"Private - Get the value of the 'HorizontalAlignment' property of the receiver.

		HRESULT __stdcall HorizontalAlignment(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 21 variant*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 15 ExcelInterior**>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 23 double*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_NumberFormat: rhs
	"Private - Get the value of the 'NumberFormat' property of the receiver.

		HRESULT __stdcall NumberFormat(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 41 bstr*>
	^self invalidCall!

get_NumberFormatLinked: rhs
	"Private - Get the value of the 'NumberFormatLinked' property of the receiver.

		HRESULT __stdcall NumberFormatLinked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 43 varbool*>
	^self invalidCall!

get_NumberFormatLocal: rhs
	"Private - Get the value of the 'NumberFormatLocal' property of the receiver.

		HRESULT __stdcall NumberFormatLocal(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 45 variant*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 25 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Position: rhs
	"Private - Get the value of the 'Position' property of the receiver.

		HRESULT __stdcall Position(
			[out, retval]XlDataLabelPosition* RHS);"

	<virtual stdcall: hresult 51 sdword*>
	^self invalidCall!

get_ReadingOrder: rhs
	"Private - Get the value of the 'ReadingOrder' property of the receiver.

		HRESULT __stdcall ReadingOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

get_Separator: rhs
	"Private - Get the value of the 'Separator' property of the receiver.

		HRESULT __stdcall Separator(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 63 variant*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
	^self invalidCall!

get_ShowBubbleSize: rhs
	"Private - Get the value of the 'ShowBubbleSize' property of the receiver.

		HRESULT __stdcall ShowBubbleSize(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 61 varbool*>
	^self invalidCall!

get_ShowCategoryName: rhs
	"Private - Get the value of the 'ShowCategoryName' property of the receiver.

		HRESULT __stdcall ShowCategoryName(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 55 varbool*>
	^self invalidCall!

get_ShowLegendKey: rhs
	"Private - Get the value of the 'ShowLegendKey' property of the receiver.

		HRESULT __stdcall ShowLegendKey(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 47 varbool*>
	^self invalidCall!

get_ShowPercentage: rhs
	"Private - Get the value of the 'ShowPercentage' property of the receiver.

		HRESULT __stdcall ShowPercentage(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 59 varbool*>
	^self invalidCall!

get_ShowSeriesName: rhs
	"Private - Get the value of the 'ShowSeriesName' property of the receiver.

		HRESULT __stdcall ShowSeriesName(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 53 varbool*>
	^self invalidCall!

get_ShowValue: rhs
	"Private - Get the value of the 'ShowValue' property of the receiver.

		HRESULT __stdcall ShowValue(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 57 varbool*>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 29 bstr*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 31 double*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 49 variant*>
	^self invalidCall!

get_VerticalAlignment: rhs
	"Private - Get the value of the 'VerticalAlignment' property of the receiver.

		HRESULT __stdcall VerticalAlignment(
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

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

left
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Left: answer.
	^answer asObject
!

left: rhs
	"Set the 'Left' property of the receiver to the <double> value of the argument."

	self put_Left: rhs
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
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

numberFormatLinked
	"Answer the <varbool> value of the 'NumberFormatLinked' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_NumberFormatLinked: answer.
	^answer asObject
!

numberFormatLinked: rhs
	"Set the 'NumberFormatLinked' property of the receiver to the <varbool> value of the argument."

	self put_NumberFormatLinked: rhs
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

put_AutoScaleFont: rhs
	"Private - Set the value of the 'AutoScaleFont' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall AutoScaleFont(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 38 variant>
	^self invalidCall!

put_AutoText: rhs
	"Private - Set the value of the 'AutoText' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutoText(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 40 varbool>
	^self invalidCall!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 18 bstr>
	^self invalidCall!

put_HorizontalAlignment: rhs
	"Private - Set the value of the 'HorizontalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall HorizontalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 22 variant>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]double RHS);"

	<virtual stdcall: hresult 24 double>
	^self invalidCall!

put_NumberFormat: rhs
	"Private - Set the value of the 'NumberFormat' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall NumberFormat(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 42 bstr>
	^self invalidCall!

put_NumberFormatLinked: rhs
	"Private - Set the value of the 'NumberFormatLinked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall NumberFormatLinked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 44 varbool>
	^self invalidCall!

put_NumberFormatLocal: rhs
	"Private - Set the value of the 'NumberFormatLocal' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall NumberFormatLocal(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 46 variant>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 26 variant>
	^self invalidCall!

put_Position: rhs
	"Private - Set the value of the 'Position' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Position(
			[in]XlDataLabelPosition RHS);"

	<virtual stdcall: hresult 52 sdword>
	^self invalidCall!

put_ReadingOrder: rhs
	"Private - Set the value of the 'ReadingOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ReadingOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 36 sdword>
	^self invalidCall!

put_Separator: rhs
	"Private - Set the value of the 'Separator' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Separator(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 64 variant>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

put_ShowBubbleSize: rhs
	"Private - Set the value of the 'ShowBubbleSize' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowBubbleSize(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 62 varbool>
	^self invalidCall!

put_ShowCategoryName: rhs
	"Private - Set the value of the 'ShowCategoryName' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowCategoryName(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 56 varbool>
	^self invalidCall!

put_ShowLegendKey: rhs
	"Private - Set the value of the 'ShowLegendKey' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowLegendKey(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 48 varbool>
	^self invalidCall!

put_ShowPercentage: rhs
	"Private - Set the value of the 'ShowPercentage' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowPercentage(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 60 varbool>
	^self invalidCall!

put_ShowSeriesName: rhs
	"Private - Set the value of the 'ShowSeriesName' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowSeriesName(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 54 varbool>
	^self invalidCall!

put_ShowValue: rhs
	"Private - Set the value of the 'ShowValue' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowValue(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 58 varbool>
	^self invalidCall!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 30 bstr>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 32 double>
	^self invalidCall!

put_Type: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Type(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 50 variant>
	^self invalidCall!

put_VerticalAlignment: rhs
	"Private - Set the value of the 'VerticalAlignment' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall VerticalAlignment(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 34 variant>
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

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Select: answer.
	^answer asObject
!

Select: rhs
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

separator
	"Answer the <variant> value of the 'Separator' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Separator: answer.
	^answer asObject
!

separator: rhs
	"Set the 'Separator' property of the receiver to the <variant> value of the argument."

	self put_Separator: rhs asVariant
!

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Shadow: answer.
	^answer asObject
!

shadow: rhs
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument."

	self put_Shadow: rhs
!

showBubbleSize
	"Answer the <varbool> value of the 'ShowBubbleSize' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowBubbleSize: answer.
	^answer asObject
!

showBubbleSize: rhs
	"Set the 'ShowBubbleSize' property of the receiver to the <varbool> value of the argument."

	self put_ShowBubbleSize: rhs
!

showCategoryName
	"Answer the <varbool> value of the 'ShowCategoryName' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowCategoryName: answer.
	^answer asObject
!

showCategoryName: rhs
	"Set the 'ShowCategoryName' property of the receiver to the <varbool> value of the argument."

	self put_ShowCategoryName: rhs
!

showLegendKey
	"Answer the <varbool> value of the 'ShowLegendKey' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowLegendKey: answer.
	^answer asObject
!

showLegendKey: rhs
	"Set the 'ShowLegendKey' property of the receiver to the <varbool> value of the argument."

	self put_ShowLegendKey: rhs
!

showPercentage
	"Answer the <varbool> value of the 'ShowPercentage' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowPercentage: answer.
	^answer asObject
!

showPercentage: rhs
	"Set the 'ShowPercentage' property of the receiver to the <varbool> value of the argument."

	self put_ShowPercentage: rhs
!

showSeriesName
	"Answer the <varbool> value of the 'ShowSeriesName' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowSeriesName: answer.
	^answer asObject
!

showSeriesName: rhs
	"Set the 'ShowSeriesName' property of the receiver to the <varbool> value of the argument."

	self put_ShowSeriesName: rhs
!

showValue
	"Answer the <varbool> value of the 'ShowValue' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowValue: answer.
	^answer asObject
!

showValue: rhs
	"Set the 'ShowValue' property of the receiver to the <varbool> value of the argument."

	self put_ShowValue: rhs
!

text
	"Answer the <bstr> value of the 'Text' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Text: answer.
	^answer asObject
!

text: rhs
	"Set the 'Text' property of the receiver to the <bstr> value of the argument."

	self put_Text: rhs
!

top
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Top: answer.
	^answer asObject
!

top: rhs
	"Set the 'Top' property of the receiver to the <double> value of the argument."

	self put_Top: rhs
!

type
	"Answer the <variant> value of the 'Type' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Type: answer.
	^answer asObject
!

type: rhs
	"Set the 'Type' property of the receiver to the <variant> value of the argument."

	self put_Type: rhs asVariant
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
! !
!ExcelIDataLabel categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #autoText!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #autoText:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIDataLabel categoriesFor: #Delete:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #format!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_AutoScaleFont:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_AutoText:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Characters:length:rhs:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Format:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_HorizontalAlignment:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_NumberFormat:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_NumberFormatLinked:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_NumberFormatLocal:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Position:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_ReadingOrder:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Separator:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_ShowBubbleSize:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_ShowCategoryName:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_ShowLegendKey:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_ShowPercentage:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_ShowSeriesName:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_ShowValue:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #get_VerticalAlignment:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #numberFormatLinked!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #numberFormatLinked:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #position!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #put_AutoScaleFont:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_AutoText:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_HorizontalAlignment:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_NumberFormat:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_NumberFormatLinked:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_NumberFormatLocal:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Position:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_ReadingOrder:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Separator:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_ShowBubbleSize:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_ShowCategoryName:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_ShowLegendKey:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_ShowPercentage:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_ShowSeriesName:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_ShowValue:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_Type:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #put_VerticalAlignment:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIDataLabel categoriesFor: #Select:!**auto generated**!COM Interfaces-IDataLabel!private! !
!ExcelIDataLabel categoriesFor: #separator!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #separator:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showBubbleSize!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showBubbleSize:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showCategoryName!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showCategoryName:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showLegendKey!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showLegendKey:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showPercentage!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showPercentage:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showSeriesName!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showSeriesName:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showValue!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #showValue:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelIDataLabel categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !

!ExcelIDataLabel class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDataLabel'
		ExcelIDataLabel defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Fill:
			argumentTypes: 'ExcelChartFillFormat**';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_Characters:length:rhs:
			argumentTypes: 'variant variant ExcelCharacters**';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #get_HorizontalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_HorizontalAlignment:
			argumentTypes: 'variant';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #put_Left:
			argumentTypes: 'double';
		defineFunction: #get_Orientation:
			argumentTypes: 'variant*';
		defineFunction: #put_Orientation:
			argumentTypes: 'variant';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #put_Top:
			argumentTypes: 'double';
		defineFunction: #get_VerticalAlignment:
			argumentTypes: 'variant*';
		defineFunction: #put_VerticalAlignment:
			argumentTypes: 'variant';
		defineFunction: #get_ReadingOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_ReadingOrder:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoScaleFont:
			argumentTypes: 'variant*';
		defineFunction: #put_AutoScaleFont:
			argumentTypes: 'variant';
		defineFunction: #get_AutoText:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutoText:
			argumentTypes: 'varbool';
		defineFunction: #get_NumberFormat:
			argumentTypes: 'bstr*';
		defineFunction: #put_NumberFormat:
			argumentTypes: 'bstr';
		defineFunction: #get_NumberFormatLinked:
			argumentTypes: 'varbool*';
		defineFunction: #put_NumberFormatLinked:
			argumentTypes: 'varbool';
		defineFunction: #get_NumberFormatLocal:
			argumentTypes: 'variant*';
		defineFunction: #put_NumberFormatLocal:
			argumentTypes: 'variant';
		defineFunction: #get_ShowLegendKey:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowLegendKey:
			argumentTypes: 'varbool';
		defineFunction: #get_Type:
			argumentTypes: 'variant*';
		defineFunction: #put_Type:
			argumentTypes: 'variant';
		defineFunction: #get_Position:
			argumentTypes: 'sdword*';
		defineFunction: #put_Position:
			argumentTypes: 'sdword';
		defineFunction: #get_ShowSeriesName:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowSeriesName:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowCategoryName:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowCategoryName:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowValue:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowValue:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowPercentage:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowPercentage:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowBubbleSize:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowBubbleSize:
			argumentTypes: 'varbool';
		defineFunction: #get_Separator:
			argumentTypes: 'variant*';
		defineFunction: #put_Separator:
			argumentTypes: 'variant';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDataLabel initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDataLabel class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDataLabel class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

