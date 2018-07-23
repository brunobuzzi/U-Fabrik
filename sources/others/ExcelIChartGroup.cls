"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIChartGroup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIChartGroup guid: (IID fromString: '{00020859-0001-0000-C000-000000000046}')!
ExcelIChartGroup comment: '<ExcelIChartGroup> is a wrapper class for the COM interface ''Excel.IChartGroup'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020859-0001-0000-C000-000000000046), 
	helpcontext(0x00020019), 
	hidden
]
interface IChartGroup : IDispatch
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
	[id(0x0000002f), propget, helpcontext(0x0001002f)]
	HRESULT __stdcall AxisGroup(
		[out, retval]XlAxisGroup* RHS);
	[id(0x0000002f), propput, helpcontext(0x0001002f)]
	HRESULT __stdcall AxisGroup(
		[in]XlAxisGroup RHS);
	[id(0x00000466), propget, helpcontext(0x00010466)]
	HRESULT __stdcall DoughnutHoleSize(
		[out, retval]long* RHS);
	[id(0x00000466), propput, helpcontext(0x00010466)]
	HRESULT __stdcall DoughnutHoleSize(
		[in]long RHS);
	[id(0x0000008d), propget, helpcontext(0x0001008d)]
	HRESULT __stdcall DownBars(
		[out, retval]DownBars** RHS);
	[id(0x0000008e), propget, helpcontext(0x0001008e)]
	HRESULT __stdcall DropLines(
		[out, retval]DropLines** RHS);
	[id(0x0000003f), propget, helpcontext(0x0001003f)]
	HRESULT __stdcall FirstSliceAngle(
		[out, retval]long* RHS);
	[id(0x0000003f), propput, helpcontext(0x0001003f)]
	HRESULT __stdcall FirstSliceAngle(
		[in]long RHS);
	[id(0x00000033), propget, helpcontext(0x00010033)]
	HRESULT __stdcall GapWidth(
		[out, retval]long* RHS);
	[id(0x00000033), propput, helpcontext(0x00010033)]
	HRESULT __stdcall GapWidth(
		[in]long RHS);
	[id(0x0000003d), propget, helpcontext(0x0001003d)]
	HRESULT __stdcall HasDropLines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000003d), propput, helpcontext(0x0001003d)]
	HRESULT __stdcall HasDropLines(
		[in]VARIANT_BOOL RHS);
	[id(0x0000003e), propget, helpcontext(0x0001003e)]
	HRESULT __stdcall HasHiLoLines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000003e), propput, helpcontext(0x0001003e)]
	HRESULT __stdcall HasHiLoLines(
		[in]VARIANT_BOOL RHS);
	[id(0x00000040), propget, helpcontext(0x00010040)]
	HRESULT __stdcall HasRadarAxisLabels(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000040), propput, helpcontext(0x00010040)]
	HRESULT __stdcall HasRadarAxisLabels(
		[in]VARIANT_BOOL RHS);
	[id(0x00000041), propget, helpcontext(0x00010041)]
	HRESULT __stdcall HasSeriesLines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000041), propput, helpcontext(0x00010041)]
	HRESULT __stdcall HasSeriesLines(
		[in]VARIANT_BOOL RHS);
	[id(0x00000042), propget, helpcontext(0x00010042)]
	HRESULT __stdcall HasUpDownBars(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000042), propput, helpcontext(0x00010042)]
	HRESULT __stdcall HasUpDownBars(
		[in]VARIANT_BOOL RHS);
	[id(0x0000008f), propget, helpcontext(0x0001008f)]
	HRESULT __stdcall HiLoLines(
		[out, retval]HiLoLines** RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x00000038), propget, helpcontext(0x00010038)]
	HRESULT __stdcall Overlap(
		[out, retval]long* RHS);
	[id(0x00000038), propput, helpcontext(0x00010038)]
	HRESULT __stdcall Overlap(
		[in]long RHS);
	[id(0x00000090), propget, helpcontext(0x00010090)]
	HRESULT __stdcall RadarAxisLabels(
		[out, retval]TickLabels** RHS);
	[id(0x00000044), helpcontext(0x00010044)]
	HRESULT __stdcall SeriesCollection(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x00000091), propget, helpcontext(0x00010091)]
	HRESULT __stdcall SeriesLines(
		[out, retval]SeriesLines** RHS);
	[id(0x0000006d), hidden, propget, helpcontext(0x0001006d)]
	HRESULT __stdcall SubType(
		[out, retval]long* RHS);
	[id(0x0000006d), hidden, propput, helpcontext(0x0001006d)]
	HRESULT __stdcall SubType(
		[in]long RHS);
	[id(0x0000006c), hidden, propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
	[id(0x0000006c), hidden, propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]long RHS);
	[id(0x0000008c), propget, helpcontext(0x0001008c)]
	HRESULT __stdcall UpBars(
		[out, retval]UpBars** RHS);
	[id(0x0000003c), propget, helpcontext(0x0001003c)]
	HRESULT __stdcall VaryByCategories(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000003c), propput, helpcontext(0x0001003c)]
	HRESULT __stdcall VaryByCategories(
		[in]VARIANT_BOOL RHS);
	[id(0x00000674), propget, helpcontext(0x00010674)]
	HRESULT __stdcall SizeRepresents(
		[out, retval]XlSizeRepresents* RHS);
	[id(0x00000674), propput, helpcontext(0x00010674)]
	HRESULT __stdcall SizeRepresents(
		[in]XlSizeRepresents RHS);
	[id(0x00000675), propget, helpcontext(0x00010675)]
	HRESULT __stdcall BubbleScale(
		[out, retval]long* RHS);
	[id(0x00000675), propput, helpcontext(0x00010675)]
	HRESULT __stdcall BubbleScale(
		[in]long RHS);
	[id(0x00000676), propget, helpcontext(0x00010676)]
	HRESULT __stdcall ShowNegativeBubbles(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000676), propput, helpcontext(0x00010676)]
	HRESULT __stdcall ShowNegativeBubbles(
		[in]VARIANT_BOOL RHS);
	[id(0x00000677), propget, helpcontext(0x00010677)]
	HRESULT __stdcall SplitType(
		[out, retval]XlChartSplitType* RHS);
	[id(0x00000677), propput, helpcontext(0x00010677)]
	HRESULT __stdcall SplitType(
		[in]XlChartSplitType RHS);
	[id(0x00000678), propget, helpcontext(0x00010678)]
	HRESULT __stdcall SplitValue(
		[out, retval]VARIANT* RHS);
	[id(0x00000678), propput, helpcontext(0x00010678)]
	HRESULT __stdcall SplitValue(
		[in]VARIANT RHS);
	[id(0x00000679), propget, helpcontext(0x00010679)]
	HRESULT __stdcall SecondPlotSize(
		[out, retval]long* RHS);
	[id(0x00000679), propput, helpcontext(0x00010679)]
	HRESULT __stdcall SecondPlotSize(
		[in]long RHS);
	[id(0x0000067a), propget, helpcontext(0x0001067a)]
	HRESULT __stdcall Has3DShading(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000067a), propput, helpcontext(0x0001067a)]
	HRESULT __stdcall Has3DShading(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIChartGroup categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIChartGroup methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

axisGroup
	"Answer the <sdword> value of the 'AxisGroup' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AxisGroup: answer.
	^answer asObject
!

axisGroup: rhs
	"Set the 'AxisGroup' property of the receiver to the <sdword> value of the argument."

	self put_AxisGroup: rhs
!

bubbleScale
	"Answer the <sdword> value of the 'BubbleScale' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BubbleScale: answer.
	^answer asObject
!

bubbleScale: rhs
	"Set the 'BubbleScale' property of the receiver to the <sdword> value of the argument."

	self put_BubbleScale: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

doughnutHoleSize
	"Answer the <sdword> value of the 'DoughnutHoleSize' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DoughnutHoleSize: answer.
	^answer asObject
!

doughnutHoleSize: rhs
	"Set the 'DoughnutHoleSize' property of the receiver to the <sdword> value of the argument."

	self put_DoughnutHoleSize: rhs
!

downBars
	"Answer the <ExcelDownBars> value of the 'DownBars' property of the receiver."

	| answer |
	answer := ExcelDownBars newPointer.
	self get_DownBars: answer.
	^answer asObject
!

dropLines
	"Answer the <ExcelDropLines> value of the 'DropLines' property of the receiver."

	| answer |
	answer := ExcelDropLines newPointer.
	self get_DropLines: answer.
	^answer asObject
!

firstSliceAngle
	"Answer the <sdword> value of the 'FirstSliceAngle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FirstSliceAngle: answer.
	^answer asObject
!

firstSliceAngle: rhs
	"Set the 'FirstSliceAngle' property of the receiver to the <sdword> value of the argument."

	self put_FirstSliceAngle: rhs
!

gapWidth
	"Answer the <sdword> value of the 'GapWidth' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_GapWidth: answer.
	^answer asObject
!

gapWidth: rhs
	"Set the 'GapWidth' property of the receiver to the <sdword> value of the argument."

	self put_GapWidth: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AxisGroup: rhs
	"Private - Get the value of the 'AxisGroup' property of the receiver.

		HRESULT __stdcall AxisGroup(
			[out, retval]XlAxisGroup* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_BubbleScale: rhs
	"Private - Get the value of the 'BubbleScale' property of the receiver.

		HRESULT __stdcall BubbleScale(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 47 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DoughnutHoleSize: rhs
	"Private - Get the value of the 'DoughnutHoleSize' property of the receiver.

		HRESULT __stdcall DoughnutHoleSize(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_DownBars: rhs
	"Private - Get the value of the 'DownBars' property of the receiver.

		HRESULT __stdcall DownBars(
			[out, retval]DownBars** RHS);"

	<virtual stdcall: hresult 15 ExcelDownBars**>
	^self invalidCall!

get_DropLines: rhs
	"Private - Get the value of the 'DropLines' property of the receiver.

		HRESULT __stdcall DropLines(
			[out, retval]DropLines** RHS);"

	<virtual stdcall: hresult 16 ExcelDropLines**>
	^self invalidCall!

get_FirstSliceAngle: rhs
	"Private - Get the value of the 'FirstSliceAngle' property of the receiver.

		HRESULT __stdcall FirstSliceAngle(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_GapWidth: rhs
	"Private - Get the value of the 'GapWidth' property of the receiver.

		HRESULT __stdcall GapWidth(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_Has3DShading: rhs
	"Private - Get the value of the 'Has3DShading' property of the receiver.

		HRESULT __stdcall Has3DShading(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 57 varbool*>
	^self invalidCall!

get_HasDropLines: rhs
	"Private - Get the value of the 'HasDropLines' property of the receiver.

		HRESULT __stdcall HasDropLines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_HasHiLoLines: rhs
	"Private - Get the value of the 'HasHiLoLines' property of the receiver.

		HRESULT __stdcall HasHiLoLines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_HasRadarAxisLabels: rhs
	"Private - Get the value of the 'HasRadarAxisLabels' property of the receiver.

		HRESULT __stdcall HasRadarAxisLabels(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_HasSeriesLines: rhs
	"Private - Get the value of the 'HasSeriesLines' property of the receiver.

		HRESULT __stdcall HasSeriesLines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
	^self invalidCall!

get_HasUpDownBars: rhs
	"Private - Get the value of the 'HasUpDownBars' property of the receiver.

		HRESULT __stdcall HasUpDownBars(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 29 varbool*>
	^self invalidCall!

get_HiLoLines: rhs
	"Private - Get the value of the 'HiLoLines' property of the receiver.

		HRESULT __stdcall HiLoLines(
			[out, retval]HiLoLines** RHS);"

	<virtual stdcall: hresult 31 ExcelHiLoLines**>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 32 sdword*>
	^self invalidCall!

get_Overlap: rhs
	"Private - Get the value of the 'Overlap' property of the receiver.

		HRESULT __stdcall Overlap(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_RadarAxisLabels: rhs
	"Private - Get the value of the 'RadarAxisLabels' property of the receiver.

		HRESULT __stdcall RadarAxisLabels(
			[out, retval]TickLabels** RHS);"

	<virtual stdcall: hresult 35 ExcelTickLabels**>
	^self invalidCall!

get_SecondPlotSize: rhs
	"Private - Get the value of the 'SecondPlotSize' property of the receiver.

		HRESULT __stdcall SecondPlotSize(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 55 sdword*>
	^self invalidCall!

get_SeriesLines: rhs
	"Private - Get the value of the 'SeriesLines' property of the receiver.

		HRESULT __stdcall SeriesLines(
			[out, retval]SeriesLines** RHS);"

	<virtual stdcall: hresult 37 ExcelSeriesLines**>
	^self invalidCall!

get_ShowNegativeBubbles: rhs
	"Private - Get the value of the 'ShowNegativeBubbles' property of the receiver.

		HRESULT __stdcall ShowNegativeBubbles(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 49 varbool*>
	^self invalidCall!

get_SizeRepresents: rhs
	"Private - Get the value of the 'SizeRepresents' property of the receiver.

		HRESULT __stdcall SizeRepresents(
			[out, retval]XlSizeRepresents* RHS);"

	<virtual stdcall: hresult 45 sdword*>
	^self invalidCall!

get_SplitType: rhs
	"Private - Get the value of the 'SplitType' property of the receiver.

		HRESULT __stdcall SplitType(
			[out, retval]XlChartSplitType* RHS);"

	<virtual stdcall: hresult 51 sdword*>
	^self invalidCall!

get_SplitValue: rhs
	"Private - Get the value of the 'SplitValue' property of the receiver.

		HRESULT __stdcall SplitValue(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 53 variant*>
	^self invalidCall!

get_SubType: rhs
	"Private - Get the value of the 'SubType' property of the receiver.

		HRESULT __stdcall SubType(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 38 sdword*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 40 sdword*>
	^self invalidCall!

get_UpBars: rhs
	"Private - Get the value of the 'UpBars' property of the receiver.

		HRESULT __stdcall UpBars(
			[out, retval]UpBars** RHS);"

	<virtual stdcall: hresult 42 ExcelUpBars**>
	^self invalidCall!

get_VaryByCategories: rhs
	"Private - Get the value of the 'VaryByCategories' property of the receiver.

		HRESULT __stdcall VaryByCategories(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 43 varbool*>
	^self invalidCall!

has3DShading
	"Answer the <varbool> value of the 'Has3DShading' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Has3DShading: answer.
	^answer asObject
!

has3DShading: rhs
	"Set the 'Has3DShading' property of the receiver to the <varbool> value of the argument."

	self put_Has3DShading: rhs
!

hasDropLines
	"Answer the <varbool> value of the 'HasDropLines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasDropLines: answer.
	^answer asObject
!

hasDropLines: rhs
	"Set the 'HasDropLines' property of the receiver to the <varbool> value of the argument."

	self put_HasDropLines: rhs
!

hasHiLoLines
	"Answer the <varbool> value of the 'HasHiLoLines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasHiLoLines: answer.
	^answer asObject
!

hasHiLoLines: rhs
	"Set the 'HasHiLoLines' property of the receiver to the <varbool> value of the argument."

	self put_HasHiLoLines: rhs
!

hasRadarAxisLabels
	"Answer the <varbool> value of the 'HasRadarAxisLabels' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasRadarAxisLabels: answer.
	^answer asObject
!

hasRadarAxisLabels: rhs
	"Set the 'HasRadarAxisLabels' property of the receiver to the <varbool> value of the argument."

	self put_HasRadarAxisLabels: rhs
!

hasSeriesLines
	"Answer the <varbool> value of the 'HasSeriesLines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasSeriesLines: answer.
	^answer asObject
!

hasSeriesLines: rhs
	"Set the 'HasSeriesLines' property of the receiver to the <varbool> value of the argument."

	self put_HasSeriesLines: rhs
!

hasUpDownBars
	"Answer the <varbool> value of the 'HasUpDownBars' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasUpDownBars: answer.
	^answer asObject
!

hasUpDownBars: rhs
	"Set the 'HasUpDownBars' property of the receiver to the <varbool> value of the argument."

	self put_HasUpDownBars: rhs
!

hiLoLines
	"Answer the <ExcelHiLoLines> value of the 'HiLoLines' property of the receiver."

	| answer |
	answer := ExcelHiLoLines newPointer.
	self get_HiLoLines: answer.
	^answer asObject
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

overlap
	"Answer the <sdword> value of the 'Overlap' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Overlap: answer.
	^answer asObject
!

overlap: rhs
	"Set the 'Overlap' property of the receiver to the <sdword> value of the argument."

	self put_Overlap: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AxisGroup: rhs
	"Private - Set the value of the 'AxisGroup' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall AxisGroup(
			[in]XlAxisGroup RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_BubbleScale: rhs
	"Private - Set the value of the 'BubbleScale' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall BubbleScale(
			[in]long RHS);"

	<virtual stdcall: hresult 48 sdword>
	^self invalidCall!

put_DoughnutHoleSize: rhs
	"Private - Set the value of the 'DoughnutHoleSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DoughnutHoleSize(
			[in]long RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_FirstSliceAngle: rhs
	"Private - Set the value of the 'FirstSliceAngle' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall FirstSliceAngle(
			[in]long RHS);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_GapWidth: rhs
	"Private - Set the value of the 'GapWidth' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall GapWidth(
			[in]long RHS);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_Has3DShading: rhs
	"Private - Set the value of the 'Has3DShading' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Has3DShading(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 58 varbool>
	^self invalidCall!

put_HasDropLines: rhs
	"Private - Set the value of the 'HasDropLines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasDropLines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_HasHiLoLines: rhs
	"Private - Set the value of the 'HasHiLoLines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasHiLoLines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_HasRadarAxisLabels: rhs
	"Private - Set the value of the 'HasRadarAxisLabels' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasRadarAxisLabels(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_HasSeriesLines: rhs
	"Private - Set the value of the 'HasSeriesLines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasSeriesLines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

put_HasUpDownBars: rhs
	"Private - Set the value of the 'HasUpDownBars' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasUpDownBars(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 30 varbool>
	^self invalidCall!

put_Overlap: rhs
	"Private - Set the value of the 'Overlap' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Overlap(
			[in]long RHS);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_SecondPlotSize: rhs
	"Private - Set the value of the 'SecondPlotSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SecondPlotSize(
			[in]long RHS);"

	<virtual stdcall: hresult 56 sdword>
	^self invalidCall!

put_ShowNegativeBubbles: rhs
	"Private - Set the value of the 'ShowNegativeBubbles' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowNegativeBubbles(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 50 varbool>
	^self invalidCall!

put_SizeRepresents: rhs
	"Private - Set the value of the 'SizeRepresents' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SizeRepresents(
			[in]XlSizeRepresents RHS);"

	<virtual stdcall: hresult 46 sdword>
	^self invalidCall!

put_SplitType: rhs
	"Private - Set the value of the 'SplitType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SplitType(
			[in]XlChartSplitType RHS);"

	<virtual stdcall: hresult 52 sdword>
	^self invalidCall!

put_SplitValue: rhs
	"Private - Set the value of the 'SplitValue' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall SplitValue(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 54 variant>
	^self invalidCall!

put_SubType: rhs
	"Private - Set the value of the 'SubType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SubType(
			[in]long RHS);"

	<virtual stdcall: hresult 39 sdword>
	^self invalidCall!

put_Type: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Type(
			[in]long RHS);"

	<virtual stdcall: hresult 41 sdword>
	^self invalidCall!

put_VaryByCategories: rhs
	"Private - Set the value of the 'VaryByCategories' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall VaryByCategories(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 44 varbool>
	^self invalidCall!

radarAxisLabels
	"Answer the <ExcelTickLabels> value of the 'RadarAxisLabels' property of the receiver."

	| answer |
	answer := ExcelTickLabels newPointer.
	self get_RadarAxisLabels: answer.
	^answer asObject
!

secondPlotSize
	"Answer the <sdword> value of the 'SecondPlotSize' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SecondPlotSize: answer.
	^answer asObject
!

secondPlotSize: rhs
	"Set the 'SecondPlotSize' property of the receiver to the <sdword> value of the argument."

	self put_SecondPlotSize: rhs
!

seriesCollection
	"Answer the <IDispatch> result of invoking the SeriesCollection() method of the COM object.
	Default values are passed for all optional parameters."

	^self seriesCollection: VARIANT unspecified!

seriesCollection: index
	"Answer the <IDispatch> result of invoking the SeriesCollection() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		SeriesCollection: index asVariant
		rhs: answer.
	^answer asObject
!

SeriesCollection: index rhs: rhs
	"Private - Invoke the SeriesCollection() method of the COM object.

		HRESULT __stdcall SeriesCollection(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 36 variant IDispatch**>
	^self invalidCall!

seriesLines
	"Answer the <ExcelSeriesLines> value of the 'SeriesLines' property of the receiver."

	| answer |
	answer := ExcelSeriesLines newPointer.
	self get_SeriesLines: answer.
	^answer asObject
!

showNegativeBubbles
	"Answer the <varbool> value of the 'ShowNegativeBubbles' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowNegativeBubbles: answer.
	^answer asObject
!

showNegativeBubbles: rhs
	"Set the 'ShowNegativeBubbles' property of the receiver to the <varbool> value of the argument."

	self put_ShowNegativeBubbles: rhs
!

sizeRepresents
	"Answer the <sdword> value of the 'SizeRepresents' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SizeRepresents: answer.
	^answer asObject
!

sizeRepresents: rhs
	"Set the 'SizeRepresents' property of the receiver to the <sdword> value of the argument."

	self put_SizeRepresents: rhs
!

splitType
	"Answer the <sdword> value of the 'SplitType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SplitType: answer.
	^answer asObject
!

splitType: rhs
	"Set the 'SplitType' property of the receiver to the <sdword> value of the argument."

	self put_SplitType: rhs
!

splitValue
	"Answer the <variant> value of the 'SplitValue' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_SplitValue: answer.
	^answer asObject
!

splitValue: rhs
	"Set the 'SplitValue' property of the receiver to the <variant> value of the argument."

	self put_SplitValue: rhs asVariant
!

subType
	"Answer the <sdword> value of the 'SubType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SubType: answer.
	^answer asObject
!

subType: rhs
	"Set the 'SubType' property of the receiver to the <sdword> value of the argument."

	self put_SubType: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

type: rhs
	"Set the 'Type' property of the receiver to the <sdword> value of the argument."

	self put_Type: rhs
!

upBars
	"Answer the <ExcelUpBars> value of the 'UpBars' property of the receiver."

	| answer |
	answer := ExcelUpBars newPointer.
	self get_UpBars: answer.
	^answer asObject
!

varyByCategories
	"Answer the <varbool> value of the 'VaryByCategories' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_VaryByCategories: answer.
	^answer asObject
!

varyByCategories: rhs
	"Set the 'VaryByCategories' property of the receiver to the <varbool> value of the argument."

	self put_VaryByCategories: rhs
! !
!ExcelIChartGroup categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #axisGroup!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #axisGroup:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #bubbleScale!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #bubbleScale:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #doughnutHoleSize!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #doughnutHoleSize:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #downBars!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #dropLines!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #firstSliceAngle!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #firstSliceAngle:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #gapWidth!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #gapWidth:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_AxisGroup:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_BubbleScale:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_DoughnutHoleSize:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_DownBars:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_DropLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_FirstSliceAngle:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_GapWidth:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_Has3DShading:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_HasDropLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_HasHiLoLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_HasRadarAxisLabels:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_HasSeriesLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_HasUpDownBars:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_HiLoLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_Overlap:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_RadarAxisLabels:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_SecondPlotSize:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_SeriesLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_ShowNegativeBubbles:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_SizeRepresents:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_SplitType:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_SplitValue:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_SubType:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_UpBars:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #get_VaryByCategories:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #has3DShading!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #has3DShading:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasDropLines!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasDropLines:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasHiLoLines!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasHiLoLines:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasRadarAxisLabels!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasRadarAxisLabels:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasSeriesLines!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasSeriesLines:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasUpDownBars!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hasUpDownBars:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #hiLoLines!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #overlap!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #overlap:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #put_AxisGroup:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_BubbleScale:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_DoughnutHoleSize:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_FirstSliceAngle:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_GapWidth:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_Has3DShading:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_HasDropLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_HasHiLoLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_HasRadarAxisLabels:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_HasSeriesLines:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_HasUpDownBars:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_Overlap:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_SecondPlotSize:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_ShowNegativeBubbles:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_SizeRepresents:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_SplitType:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_SplitValue:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_SubType:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_Type:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #put_VaryByCategories:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #radarAxisLabels!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #secondPlotSize!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #secondPlotSize:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #seriesCollection!**auto generated**!methods!public! !
!ExcelIChartGroup categoriesFor: #seriesCollection:!**auto generated**!methods!public! !
!ExcelIChartGroup categoriesFor: #SeriesCollection:rhs:!**auto generated**!COM Interfaces-IChartGroup!private! !
!ExcelIChartGroup categoriesFor: #seriesLines!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #showNegativeBubbles!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #showNegativeBubbles:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #sizeRepresents!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #sizeRepresents:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #splitType!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #splitType:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #splitValue!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #splitValue:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #subType!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #subType:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #upBars!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #varyByCategories!**auto generated**!properties!public! !
!ExcelIChartGroup categoriesFor: #varyByCategories:!**auto generated**!properties!public! !

!ExcelIChartGroup class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IChartGroup'
		ExcelIChartGroup defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_AxisGroup:
			argumentTypes: 'sdword*';
		defineFunction: #put_AxisGroup:
			argumentTypes: 'sdword';
		defineFunction: #get_DoughnutHoleSize:
			argumentTypes: 'sdword*';
		defineFunction: #put_DoughnutHoleSize:
			argumentTypes: 'sdword';
		defineFunction: #get_DownBars:
			argumentTypes: 'ExcelDownBars**';
		defineFunction: #get_DropLines:
			argumentTypes: 'ExcelDropLines**';
		defineFunction: #get_FirstSliceAngle:
			argumentTypes: 'sdword*';
		defineFunction: #put_FirstSliceAngle:
			argumentTypes: 'sdword';
		defineFunction: #get_GapWidth:
			argumentTypes: 'sdword*';
		defineFunction: #put_GapWidth:
			argumentTypes: 'sdword';
		defineFunction: #get_HasDropLines:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasDropLines:
			argumentTypes: 'varbool';
		defineFunction: #get_HasHiLoLines:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasHiLoLines:
			argumentTypes: 'varbool';
		defineFunction: #get_HasRadarAxisLabels:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasRadarAxisLabels:
			argumentTypes: 'varbool';
		defineFunction: #get_HasSeriesLines:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasSeriesLines:
			argumentTypes: 'varbool';
		defineFunction: #get_HasUpDownBars:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasUpDownBars:
			argumentTypes: 'varbool';
		defineFunction: #get_HiLoLines:
			argumentTypes: 'ExcelHiLoLines**';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Overlap:
			argumentTypes: 'sdword*';
		defineFunction: #put_Overlap:
			argumentTypes: 'sdword';
		defineFunction: #get_RadarAxisLabels:
			argumentTypes: 'ExcelTickLabels**';
		defineFunction: #SeriesCollection:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_SeriesLines:
			argumentTypes: 'ExcelSeriesLines**';
		defineFunction: #get_SubType:
			argumentTypes: 'sdword*';
		defineFunction: #put_SubType:
			argumentTypes: 'sdword';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword';
		defineFunction: #get_UpBars:
			argumentTypes: 'ExcelUpBars**';
		defineFunction: #get_VaryByCategories:
			argumentTypes: 'varbool*';
		defineFunction: #put_VaryByCategories:
			argumentTypes: 'varbool';
		defineFunction: #get_SizeRepresents:
			argumentTypes: 'sdword*';
		defineFunction: #put_SizeRepresents:
			argumentTypes: 'sdword';
		defineFunction: #get_BubbleScale:
			argumentTypes: 'sdword*';
		defineFunction: #put_BubbleScale:
			argumentTypes: 'sdword';
		defineFunction: #get_ShowNegativeBubbles:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowNegativeBubbles:
			argumentTypes: 'varbool';
		defineFunction: #get_SplitType:
			argumentTypes: 'sdword*';
		defineFunction: #put_SplitType:
			argumentTypes: 'sdword';
		defineFunction: #get_SplitValue:
			argumentTypes: 'variant*';
		defineFunction: #put_SplitValue:
			argumentTypes: 'variant';
		defineFunction: #get_SecondPlotSize:
			argumentTypes: 'sdword*';
		defineFunction: #put_SecondPlotSize:
			argumentTypes: 'sdword';
		defineFunction: #get_Has3DShading:
			argumentTypes: 'varbool*';
		defineFunction: #put_Has3DShading:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIChartGroup initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIChartGroup class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIChartGroup class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

