"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISeries
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISeries guid: (IID fromString: '{0002086B-0001-0000-C000-000000000046}')!
ExcelISeries comment: '<ExcelISeries> is a wrapper class for the COM interface ''Excel.ISeries'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002086B-0001-0000-C000-000000000046), 
	helpcontext(0x0002002b), 
	hidden
]
interface ISeries : IDispatch
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
	[id(0x00000097), hidden, helpcontext(0x00010097)]
	HRESULT __stdcall _ApplyDataLabels(
		[in, defaultvalue(2)]XlDataLabelsType Type,
		[in, optional]VARIANT LegendKey,
		[in, optional]VARIANT AutoText,
		[in, optional]VARIANT HasLeaderLines,
		[out, retval]VARIANT* RHS);
	[id(0x0000002f), propget, helpcontext(0x0001002f)]
	HRESULT __stdcall AxisGroup(
		[out, retval]XlAxisGroup* RHS);
	[id(0x0000002f), propput, helpcontext(0x0001002f)]
	HRESULT __stdcall AxisGroup(
		[in]XlAxisGroup RHS);
	[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000070), helpcontext(0x00010070)]
	HRESULT __stdcall ClearFormats(
		[out, retval]VARIANT* RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[out, retval]VARIANT* RHS);
	[id(0x0000009d), helpcontext(0x0001009d)]
	HRESULT __stdcall DataLabels(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000098), helpcontext(0x00010098)]
	HRESULT __stdcall ErrorBar(
		[in]XlErrorBarDirection Direction,
		[in]XlErrorBarInclude Include,
		[in]XlErrorBarType Type,
		[in, optional]VARIANT Amount,
		[in, optional]VARIANT MinusValues,
		[out, retval]VARIANT* RHS);
	[id(0x0000009f), propget, helpcontext(0x0001009f)]
	HRESULT __stdcall ErrorBars(
		[out, retval]ErrorBars** RHS);
	[id(0x000000b6), propget, helpcontext(0x000100b6)]
	HRESULT __stdcall Explosion(
		[out, retval]long* RHS);
	[id(0x000000b6), propput, helpcontext(0x000100b6)]
	HRESULT __stdcall Explosion(
		[in]long RHS);
	[id(0x00000105), propget, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[out, retval]BSTR* RHS);
	[id(0x00000105), propput, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[in]BSTR RHS);
	[id(0x00000107), propget, helpcontext(0x00010107)]
	HRESULT __stdcall FormulaLocal(
		[out, retval]BSTR* RHS);
	[id(0x00000107), propput, helpcontext(0x00010107)]
	HRESULT __stdcall FormulaLocal(
		[in]BSTR RHS);
	[id(0x00000108), propget, helpcontext(0x00010108)]
	HRESULT __stdcall FormulaR1C1(
		[out, retval]BSTR* RHS);
	[id(0x00000108), propput, helpcontext(0x00010108)]
	HRESULT __stdcall FormulaR1C1(
		[in]BSTR RHS);
	[id(0x00000109), propget, helpcontext(0x00010109)]
	HRESULT __stdcall FormulaR1C1Local(
		[out, retval]BSTR* RHS);
	[id(0x00000109), propput, helpcontext(0x00010109)]
	HRESULT __stdcall FormulaR1C1Local(
		[in]BSTR RHS);
	[id(0x0000004e), propget, helpcontext(0x0001004e)]
	HRESULT __stdcall HasDataLabels(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000004e), propput, helpcontext(0x0001004e)]
	HRESULT __stdcall HasDataLabels(
		[in]VARIANT_BOOL RHS);
	[id(0x000000a0), propget, helpcontext(0x000100a0)]
	HRESULT __stdcall HasErrorBars(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000a0), propput, helpcontext(0x000100a0)]
	HRESULT __stdcall HasErrorBars(
		[in]VARIANT_BOOL RHS);
	[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
	HRESULT __stdcall Fill(
		[out, retval]ChartFillFormat** RHS);
	[id(0x00000084), propget, helpcontext(0x00010084)]
	HRESULT __stdcall InvertIfNegative(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000084), propput, helpcontext(0x00010084)]
	HRESULT __stdcall InvertIfNegative(
		[in]VARIANT_BOOL RHS);
	[id(0x00000049), propget, helpcontext(0x00010049)]
	HRESULT __stdcall MarkerBackgroundColor(
		[out, retval]long* RHS);
	[id(0x00000049), propput, helpcontext(0x00010049)]
	HRESULT __stdcall MarkerBackgroundColor(
		[in]long RHS);
	[id(0x0000004a), propget, helpcontext(0x0001004a)]
	HRESULT __stdcall MarkerBackgroundColorIndex(
		[out, retval]XlColorIndex* RHS);
	[id(0x0000004a), propput, helpcontext(0x0001004a)]
	HRESULT __stdcall MarkerBackgroundColorIndex(
		[in]XlColorIndex RHS);
	[id(0x0000004b), propget, helpcontext(0x0001004b)]
	HRESULT __stdcall MarkerForegroundColor(
		[out, retval]long* RHS);
	[id(0x0000004b), propput, helpcontext(0x0001004b)]
	HRESULT __stdcall MarkerForegroundColor(
		[in]long RHS);
	[id(0x0000004c), propget, helpcontext(0x0001004c)]
	HRESULT __stdcall MarkerForegroundColorIndex(
		[out, retval]XlColorIndex* RHS);
	[id(0x0000004c), propput, helpcontext(0x0001004c)]
	HRESULT __stdcall MarkerForegroundColorIndex(
		[in]XlColorIndex RHS);
	[id(0x000000e7), propget, helpcontext(0x000100e7)]
	HRESULT __stdcall MarkerSize(
		[out, retval]long* RHS);
	[id(0x000000e7), propput, helpcontext(0x000100e7)]
	HRESULT __stdcall MarkerSize(
		[in]long RHS);
	[id(0x00000048), propget, helpcontext(0x00010048)]
	HRESULT __stdcall MarkerStyle(
		[out, retval]XlMarkerStyle* RHS);
	[id(0x00000048), propput, helpcontext(0x00010048)]
	HRESULT __stdcall MarkerStyle(
		[in]XlMarkerStyle RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000000d3), helpcontext(0x000100d3)]
	HRESULT __stdcall Paste(
		[out, retval]VARIANT* RHS);
	[id(0x000000a1), propget, helpcontext(0x000100a1)]
	HRESULT __stdcall PictureType(
		[out, retval]XlChartPictureType* RHS);
	[id(0x000000a1), propput, helpcontext(0x000100a1)]
	HRESULT __stdcall PictureType(
		[in]XlChartPictureType RHS);
	[id(0x000000a2), hidden, propget, helpcontext(0x000100a2)]
	HRESULT __stdcall PictureUnit(
		[out, retval]long* RHS);
	[id(0x000000a2), hidden, propput, helpcontext(0x000100a2)]
	HRESULT __stdcall PictureUnit(
		[in]long RHS);
	[id(0x000000e4), propget, helpcontext(0x000100e4)]
	HRESULT __stdcall PlotOrder(
		[out, retval]long* RHS);
	[id(0x000000e4), propput, helpcontext(0x000100e4)]
	HRESULT __stdcall PlotOrder(
		[in]long RHS);
	[id(0x00000046), helpcontext(0x00010046)]
	HRESULT __stdcall Points(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x000000a3), propget, helpcontext(0x000100a3)]
	HRESULT __stdcall Smooth(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000a3), propput, helpcontext(0x000100a3)]
	HRESULT __stdcall Smooth(
		[in]VARIANT_BOOL RHS);
	[id(0x0000009a), helpcontext(0x0001009a)]
	HRESULT __stdcall Trendlines(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
	[id(0x0000006c), propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]long RHS);
	[id(0x00000578), propget, helpcontext(0x00010578)]
	HRESULT __stdcall ChartType(
		[out, retval]XlChartType* RHS);
	[id(0x00000578), propput, helpcontext(0x00010578)]
	HRESULT __stdcall ChartType(
		[in]XlChartType RHS);
	[id(0x00000579), hidden, helpcontext(0x00010579)]
	HRESULT __stdcall ApplyCustomType(
		[in]XlChartType ChartType);
	[id(0x000000a4), propget, helpcontext(0x000100a4)]
	HRESULT __stdcall Values(
		[out, retval]VARIANT* RHS);
	[id(0x000000a4), propput, helpcontext(0x000100a4)]
	HRESULT __stdcall Values(
		[in]VARIANT RHS);
	[id(0x00000457), propget, helpcontext(0x00010457)]
	HRESULT __stdcall XValues(
		[out, retval]VARIANT* RHS);
	[id(0x00000457), propput, helpcontext(0x00010457)]
	HRESULT __stdcall XValues(
		[in]VARIANT RHS);
	[id(0x00000680), propget, helpcontext(0x00010680)]
	HRESULT __stdcall BubbleSizes(
		[out, retval]VARIANT* RHS);
	[id(0x00000680), propput, helpcontext(0x00010680)]
	HRESULT __stdcall BubbleSizes(
		[in]VARIANT RHS);
	[id(0x0000057b), propget, helpcontext(0x0001057b)]
	HRESULT __stdcall BarShape(
		[out, retval]XlBarShape* RHS);
	[id(0x0000057b), propput, helpcontext(0x0001057b)]
	HRESULT __stdcall BarShape(
		[in]XlBarShape RHS);
	[id(0x0000067b), propget, helpcontext(0x0001067b)]
	HRESULT __stdcall ApplyPictToSides(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000067b), propput, helpcontext(0x0001067b)]
	HRESULT __stdcall ApplyPictToSides(
		[in]VARIANT_BOOL RHS);
	[id(0x0000067c), propget, helpcontext(0x0001067c)]
	HRESULT __stdcall ApplyPictToFront(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000067c), propput, helpcontext(0x0001067c)]
	HRESULT __stdcall ApplyPictToFront(
		[in]VARIANT_BOOL RHS);
	[id(0x0000067d), propget, helpcontext(0x0001067d)]
	HRESULT __stdcall ApplyPictToEnd(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000067d), propput, helpcontext(0x0001067d)]
	HRESULT __stdcall ApplyPictToEnd(
		[in]VARIANT_BOOL RHS);
	[id(0x00000681), propget, helpcontext(0x00010681)]
	HRESULT __stdcall Has3DEffect(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000681), propput, helpcontext(0x00010681)]
	HRESULT __stdcall Has3DEffect(
		[in]VARIANT_BOOL RHS);
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x00000572), propget, helpcontext(0x00010572)]
	HRESULT __stdcall HasLeaderLines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000572), propput, helpcontext(0x00010572)]
	HRESULT __stdcall HasLeaderLines(
		[in]VARIANT_BOOL RHS);
	[id(0x00000682), propget, helpcontext(0x00010682)]
	HRESULT __stdcall LeaderLines(
		[out, retval]LeaderLines** RHS);
	[id(0x00000782), helpcontext(0x00010782)]
	HRESULT __stdcall ApplyDataLabels(
		[in, defaultvalue(2)]XlDataLabelsType Type,
		[in, optional]VARIANT LegendKey,
		[in, optional]VARIANT AutoText,
		[in, optional]VARIANT HasLeaderLines,
		[in, optional]VARIANT ShowSeriesName,
		[in, optional]VARIANT ShowCategoryName,
		[in, optional]VARIANT ShowValue,
		[in, optional]VARIANT ShowPercentage,
		[in, optional]VARIANT ShowBubbleSize,
		[in, optional]VARIANT Separator,
		[out, retval]VARIANT* RHS);
	[id(0x00000a59), propget, helpcontext(0x00010a59)]
	HRESULT __stdcall PictureUnit2(
		[out, retval]double* RHS);
	[id(0x00000a59), propput, helpcontext(0x00010a59)]
	HRESULT __stdcall PictureUnit2(
		[in]double RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelISeries categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISeries methodsFor!

_applyDataLabels
	"Answer the <VARIANT> result of invoking the _ApplyDataLabels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _applyDataLabels: 2
		 legendKey: VARIANT unspecified
		 autoText: VARIANT unspecified
		 hasLeaderLines: VARIANT unspecified!

_applyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines
	"Answer the <VARIANT> result of invoking the _ApplyDataLabels() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		_ApplyDataLabels: type
		legendKey: legendKey asVariant
		autoText: autoText asVariant
		hasLeaderLines: hasLeaderLines asVariant
		rhs: answer.
	^answer asObject
!

_ApplyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines rhs: rhs
	"Private - Invoke the _ApplyDataLabels() method of the COM object.

		HRESULT __stdcall _ApplyDataLabels(
			[in, defaultvalue(2)]XlDataLabelsType Type,
			[in, optional]VARIANT LegendKey,
			[in, optional]VARIANT AutoText,
			[in, optional]VARIANT HasLeaderLines,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 sdword variant variant variant variant*>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

applyCustomType: chartType
	"Invoke the ApplyCustomType() method of the COM object."

	^self ApplyCustomType: chartType
!

ApplyCustomType: chartType
	"Private - Invoke the ApplyCustomType() method of the COM object.

		HRESULT __stdcall ApplyCustomType(
			[in]XlChartType ChartType);"

	<virtual stdcall: hresult 69 sdword>
	^self invalidCall!

applyDataLabels
	"Answer the <VARIANT> result of invoking the ApplyDataLabels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 applyDataLabels: 2
		 legendKey: VARIANT unspecified
		 autoText: VARIANT unspecified
		 hasLeaderLines: VARIANT unspecified
		 showSeriesName: VARIANT unspecified
		 showCategoryName: VARIANT unspecified
		 showValue: VARIANT unspecified
		 showPercentage: VARIANT unspecified
		 showBubbleSize: VARIANT unspecified
		 separator: VARIANT unspecified!

applyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines showSeriesName: showSeriesName showCategoryName: showCategoryName showValue: showValue showPercentage: showPercentage showBubbleSize: showBubbleSize separator: separator
	"Answer the <VARIANT> result of invoking the ApplyDataLabels() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ApplyDataLabels: type
		legendKey: legendKey asVariant
		autoText: autoText asVariant
		hasLeaderLines: hasLeaderLines asVariant
		showSeriesName: showSeriesName asVariant
		showCategoryName: showCategoryName asVariant
		showValue: showValue asVariant
		showPercentage: showPercentage asVariant
		showBubbleSize: showBubbleSize asVariant
		separator: separator asVariant
		rhs: answer.
	^answer asObject
!

ApplyDataLabels: type legendKey: legendKey autoText: autoText hasLeaderLines: hasLeaderLines showSeriesName: showSeriesName showCategoryName: showCategoryName showValue: showValue showPercentage: showPercentage showBubbleSize: showBubbleSize separator: separator rhs: rhs
	"Private - Invoke the ApplyDataLabels() method of the COM object.

		HRESULT __stdcall ApplyDataLabels(
			[in, defaultvalue(2)]XlDataLabelsType Type,
			[in, optional]VARIANT LegendKey,
			[in, optional]VARIANT AutoText,
			[in, optional]VARIANT HasLeaderLines,
			[in, optional]VARIANT ShowSeriesName,
			[in, optional]VARIANT ShowCategoryName,
			[in, optional]VARIANT ShowValue,
			[in, optional]VARIANT ShowPercentage,
			[in, optional]VARIANT ShowBubbleSize,
			[in, optional]VARIANT Separator,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 91 sdword variant variant variant variant variant variant variant variant variant variant*>
	^self invalidCall!

applyPictToEnd
	"Answer the <varbool> value of the 'ApplyPictToEnd' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ApplyPictToEnd: answer.
	^answer asObject
!

applyPictToEnd: rhs
	"Set the 'ApplyPictToEnd' property of the receiver to the <varbool> value of the argument."

	self put_ApplyPictToEnd: rhs
!

applyPictToFront
	"Answer the <varbool> value of the 'ApplyPictToFront' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ApplyPictToFront: answer.
	^answer asObject
!

applyPictToFront: rhs
	"Set the 'ApplyPictToFront' property of the receiver to the <varbool> value of the argument."

	self put_ApplyPictToFront: rhs
!

applyPictToSides
	"Answer the <varbool> value of the 'ApplyPictToSides' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ApplyPictToSides: answer.
	^answer asObject
!

applyPictToSides: rhs
	"Set the 'ApplyPictToSides' property of the receiver to the <varbool> value of the argument."

	self put_ApplyPictToSides: rhs
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

barShape
	"Answer the <sdword> value of the 'BarShape' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BarShape: answer.
	^answer asObject
!

barShape: rhs
	"Set the 'BarShape' property of the receiver to the <sdword> value of the argument."

	self put_BarShape: rhs
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
	^answer asObject
!

bubbleSizes
	"Answer the <variant> value of the 'BubbleSizes' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_BubbleSizes: answer.
	^answer asObject
!

bubbleSizes: rhs
	"Set the 'BubbleSizes' property of the receiver to the <variant> value of the argument."

	self put_BubbleSizes: rhs asVariant
!

chartType
	"Answer the <sdword> value of the 'ChartType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ChartType: answer.
	^answer asObject
!

chartType: rhs
	"Set the 'ChartType' property of the receiver to the <sdword> value of the argument."

	self put_ChartType: rhs
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ClearFormats: answer.
	^answer asObject
!

ClearFormats: rhs
	"Private - Invoke the ClearFormats() method of the COM object.

		HRESULT __stdcall ClearFormats(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Copy: answer.
	^answer asObject
!

Copy: rhs
	"Private - Invoke the Copy() method of the COM object.

		HRESULT __stdcall Copy(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 variant*>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dataLabels
	"Answer the <IDispatch> result of invoking the DataLabels() method of the COM object.
	Default values are passed for all optional parameters."

	^self dataLabels: VARIANT unspecified!

dataLabels: index
	"Answer the <IDispatch> result of invoking the DataLabels() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		DataLabels: index asVariant
		rhs: answer.
	^answer asObject
!

DataLabels: index rhs: rhs
	"Private - Invoke the DataLabels() method of the COM object.

		HRESULT __stdcall DataLabels(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 17 variant IDispatch**>
	^self invalidCall!

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

	<virtual stdcall: hresult 18 variant*>
	^self invalidCall!

errorBar: direction include: include type: type
	"Answer the <VARIANT> result of invoking the ErrorBar() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 errorBar: direction
		 include: include
		 type: type
		 amount: VARIANT unspecified
		 minusValues: VARIANT unspecified!

errorBar: direction include: include type: type amount: amount minusValues: minusValues
	"Answer the <VARIANT> result of invoking the ErrorBar() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ErrorBar: direction
		include: include
		type: type
		amount: amount asVariant
		minusValues: minusValues asVariant
		rhs: answer.
	^answer asObject
!

ErrorBar: direction include: include type: type amount: amount minusValues: minusValues rhs: rhs
	"Private - Invoke the ErrorBar() method of the COM object.

		HRESULT __stdcall ErrorBar(
			[in]XlErrorBarDirection Direction,
			[in]XlErrorBarInclude Include,
			[in]XlErrorBarType Type,
			[in, optional]VARIANT Amount,
			[in, optional]VARIANT MinusValues,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 19 sdword sdword sdword variant variant variant*>
	^self invalidCall!

errorBars
	"Answer the <ExcelErrorBars> value of the 'ErrorBars' property of the receiver."

	| answer |
	answer := ExcelErrorBars newPointer.
	self get_ErrorBars: answer.
	^answer asObject
!

explosion
	"Answer the <sdword> value of the 'Explosion' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Explosion: answer.
	^answer asObject
!

explosion: rhs
	"Set the 'Explosion' property of the receiver to the <sdword> value of the argument."

	self put_Explosion: rhs
!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver."

	| answer |
	answer := ExcelChartFillFormat newPointer.
	self get_Fill: answer.
	^answer asObject
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver."

	| answer |
	answer := ExcelChartFormat newPointer.
	self get_Format: answer.
	^answer asObject
!

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

formulaLocal
	"Answer the <bstr> value of the 'FormulaLocal' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_FormulaLocal: answer.
	^answer asObject
!

formulaLocal: rhs
	"Set the 'FormulaLocal' property of the receiver to the <bstr> value of the argument."

	self put_FormulaLocal: rhs
!

formulaR1C1
	"Answer the <bstr> value of the 'FormulaR1C1' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_FormulaR1C1: answer.
	^answer asObject
!

formulaR1C1: rhs
	"Set the 'FormulaR1C1' property of the receiver to the <bstr> value of the argument."

	self put_FormulaR1C1: rhs
!

formulaR1C1Local
	"Answer the <bstr> value of the 'FormulaR1C1Local' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_FormulaR1C1Local: answer.
	^answer asObject
!

formulaR1C1Local: rhs
	"Set the 'FormulaR1C1Local' property of the receiver to the <bstr> value of the argument."

	self put_FormulaR1C1Local: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_ApplyPictToEnd: rhs
	"Private - Get the value of the 'ApplyPictToEnd' property of the receiver.

		HRESULT __stdcall ApplyPictToEnd(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 82 varbool*>
	^self invalidCall!

get_ApplyPictToFront: rhs
	"Private - Get the value of the 'ApplyPictToFront' property of the receiver.

		HRESULT __stdcall ApplyPictToFront(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 80 varbool*>
	^self invalidCall!

get_ApplyPictToSides: rhs
	"Private - Get the value of the 'ApplyPictToSides' property of the receiver.

		HRESULT __stdcall ApplyPictToSides(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 78 varbool*>
	^self invalidCall!

get_AxisGroup: rhs
	"Private - Get the value of the 'AxisGroup' property of the receiver.

		HRESULT __stdcall AxisGroup(
			[out, retval]XlAxisGroup* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_BarShape: rhs
	"Private - Get the value of the 'BarShape' property of the receiver.

		HRESULT __stdcall BarShape(
			[out, retval]XlBarShape* RHS);"

	<virtual stdcall: hresult 76 sdword*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 14 ExcelBorder**>
	^self invalidCall!

get_BubbleSizes: rhs
	"Private - Get the value of the 'BubbleSizes' property of the receiver.

		HRESULT __stdcall BubbleSizes(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 74 variant*>
	^self invalidCall!

get_ChartType: rhs
	"Private - Get the value of the 'ChartType' property of the receiver.

		HRESULT __stdcall ChartType(
			[out, retval]XlChartType* RHS);"

	<virtual stdcall: hresult 67 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_ErrorBars: rhs
	"Private - Get the value of the 'ErrorBars' property of the receiver.

		HRESULT __stdcall ErrorBars(
			[out, retval]ErrorBars** RHS);"

	<virtual stdcall: hresult 20 ExcelErrorBars**>
	^self invalidCall!

get_Explosion: rhs
	"Private - Get the value of the 'Explosion' property of the receiver.

		HRESULT __stdcall Explosion(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_Fill: rhs
	"Private - Get the value of the 'Fill' property of the receiver.

		HRESULT __stdcall Fill(
			[out, retval]ChartFillFormat** RHS);"

	<virtual stdcall: hresult 36 ExcelChartFillFormat**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 94 ExcelChartFormat**>
	^self invalidCall!

get_Formula: rhs
	"Private - Get the value of the 'Formula' property of the receiver.

		HRESULT __stdcall Formula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 23 bstr*>
	^self invalidCall!

get_FormulaLocal: rhs
	"Private - Get the value of the 'FormulaLocal' property of the receiver.

		HRESULT __stdcall FormulaLocal(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 25 bstr*>
	^self invalidCall!

get_FormulaR1C1: rhs
	"Private - Get the value of the 'FormulaR1C1' property of the receiver.

		HRESULT __stdcall FormulaR1C1(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 27 bstr*>
	^self invalidCall!

get_FormulaR1C1Local: rhs
	"Private - Get the value of the 'FormulaR1C1Local' property of the receiver.

		HRESULT __stdcall FormulaR1C1Local(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 29 bstr*>
	^self invalidCall!

get_Has3DEffect: rhs
	"Private - Get the value of the 'Has3DEffect' property of the receiver.

		HRESULT __stdcall Has3DEffect(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 84 varbool*>
	^self invalidCall!

get_HasDataLabels: rhs
	"Private - Get the value of the 'HasDataLabels' property of the receiver.

		HRESULT __stdcall HasDataLabels(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 31 varbool*>
	^self invalidCall!

get_HasErrorBars: rhs
	"Private - Get the value of the 'HasErrorBars' property of the receiver.

		HRESULT __stdcall HasErrorBars(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 33 varbool*>
	^self invalidCall!

get_HasLeaderLines: rhs
	"Private - Get the value of the 'HasLeaderLines' property of the receiver.

		HRESULT __stdcall HasLeaderLines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 88 varbool*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 35 ExcelInterior**>
	^self invalidCall!

get_InvertIfNegative: rhs
	"Private - Get the value of the 'InvertIfNegative' property of the receiver.

		HRESULT __stdcall InvertIfNegative(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 37 varbool*>
	^self invalidCall!

get_LeaderLines: rhs
	"Private - Get the value of the 'LeaderLines' property of the receiver.

		HRESULT __stdcall LeaderLines(
			[out, retval]LeaderLines** RHS);"

	<virtual stdcall: hresult 90 ExcelLeaderLines**>
	^self invalidCall!

get_MarkerBackgroundColor: rhs
	"Private - Get the value of the 'MarkerBackgroundColor' property of the receiver.

		HRESULT __stdcall MarkerBackgroundColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 39 sdword*>
	^self invalidCall!

get_MarkerBackgroundColorIndex: rhs
	"Private - Get the value of the 'MarkerBackgroundColorIndex' property of the receiver.

		HRESULT __stdcall MarkerBackgroundColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 41 sdword*>
	^self invalidCall!

get_MarkerForegroundColor: rhs
	"Private - Get the value of the 'MarkerForegroundColor' property of the receiver.

		HRESULT __stdcall MarkerForegroundColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 43 sdword*>
	^self invalidCall!

get_MarkerForegroundColorIndex: rhs
	"Private - Get the value of the 'MarkerForegroundColorIndex' property of the receiver.

		HRESULT __stdcall MarkerForegroundColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 45 sdword*>
	^self invalidCall!

get_MarkerSize: rhs
	"Private - Get the value of the 'MarkerSize' property of the receiver.

		HRESULT __stdcall MarkerSize(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 47 sdword*>
	^self invalidCall!

get_MarkerStyle: rhs
	"Private - Get the value of the 'MarkerStyle' property of the receiver.

		HRESULT __stdcall MarkerStyle(
			[out, retval]XlMarkerStyle* RHS);"

	<virtual stdcall: hresult 49 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 51 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PictureType: rhs
	"Private - Get the value of the 'PictureType' property of the receiver.

		HRESULT __stdcall PictureType(
			[out, retval]XlChartPictureType* RHS);"

	<virtual stdcall: hresult 54 sdword*>
	^self invalidCall!

get_PictureUnit: rhs
	"Private - Get the value of the 'PictureUnit' property of the receiver.

		HRESULT __stdcall PictureUnit(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 56 sdword*>
	^self invalidCall!

get_PictureUnit2: rhs
	"Private - Get the value of the 'PictureUnit2' property of the receiver.

		HRESULT __stdcall PictureUnit2(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 92 double*>
	^self invalidCall!

get_PlotOrder: rhs
	"Private - Get the value of the 'PlotOrder' property of the receiver.

		HRESULT __stdcall PlotOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 58 sdword*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 86 varbool*>
	^self invalidCall!

get_Smooth: rhs
	"Private - Get the value of the 'Smooth' property of the receiver.

		HRESULT __stdcall Smooth(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 62 varbool*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 65 sdword*>
	^self invalidCall!

get_Values: rhs
	"Private - Get the value of the 'Values' property of the receiver.

		HRESULT __stdcall Values(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 70 variant*>
	^self invalidCall!

get_XValues: rhs
	"Private - Get the value of the 'XValues' property of the receiver.

		HRESULT __stdcall XValues(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 72 variant*>
	^self invalidCall!

has3DEffect
	"Answer the <varbool> value of the 'Has3DEffect' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Has3DEffect: answer.
	^answer asObject
!

has3DEffect: rhs
	"Set the 'Has3DEffect' property of the receiver to the <varbool> value of the argument."

	self put_Has3DEffect: rhs
!

hasDataLabels
	"Answer the <varbool> value of the 'HasDataLabels' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasDataLabels: answer.
	^answer asObject
!

hasDataLabels: rhs
	"Set the 'HasDataLabels' property of the receiver to the <varbool> value of the argument."

	self put_HasDataLabels: rhs
!

hasErrorBars
	"Answer the <varbool> value of the 'HasErrorBars' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasErrorBars: answer.
	^answer asObject
!

hasErrorBars: rhs
	"Set the 'HasErrorBars' property of the receiver to the <varbool> value of the argument."

	self put_HasErrorBars: rhs
!

hasLeaderLines
	"Answer the <varbool> value of the 'HasLeaderLines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasLeaderLines: answer.
	^answer asObject
!

hasLeaderLines: rhs
	"Set the 'HasLeaderLines' property of the receiver to the <varbool> value of the argument."

	self put_HasLeaderLines: rhs
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

invertIfNegative
	"Answer the <varbool> value of the 'InvertIfNegative' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_InvertIfNegative: answer.
	^answer asObject
!

invertIfNegative: rhs
	"Set the 'InvertIfNegative' property of the receiver to the <varbool> value of the argument."

	self put_InvertIfNegative: rhs
!

leaderLines
	"Answer the <ExcelLeaderLines> value of the 'LeaderLines' property of the receiver."

	| answer |
	answer := ExcelLeaderLines newPointer.
	self get_LeaderLines: answer.
	^answer asObject
!

markerBackgroundColor
	"Answer the <sdword> value of the 'MarkerBackgroundColor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MarkerBackgroundColor: answer.
	^answer asObject
!

markerBackgroundColor: rhs
	"Set the 'MarkerBackgroundColor' property of the receiver to the <sdword> value of the argument."

	self put_MarkerBackgroundColor: rhs
!

markerBackgroundColorIndex
	"Answer the <sdword> value of the 'MarkerBackgroundColorIndex' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MarkerBackgroundColorIndex: answer.
	^answer asObject
!

markerBackgroundColorIndex: rhs
	"Set the 'MarkerBackgroundColorIndex' property of the receiver to the <sdword> value of the argument."

	self put_MarkerBackgroundColorIndex: rhs
!

markerForegroundColor
	"Answer the <sdword> value of the 'MarkerForegroundColor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MarkerForegroundColor: answer.
	^answer asObject
!

markerForegroundColor: rhs
	"Set the 'MarkerForegroundColor' property of the receiver to the <sdword> value of the argument."

	self put_MarkerForegroundColor: rhs
!

markerForegroundColorIndex
	"Answer the <sdword> value of the 'MarkerForegroundColorIndex' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MarkerForegroundColorIndex: answer.
	^answer asObject
!

markerForegroundColorIndex: rhs
	"Set the 'MarkerForegroundColorIndex' property of the receiver to the <sdword> value of the argument."

	self put_MarkerForegroundColorIndex: rhs
!

markerSize
	"Answer the <sdword> value of the 'MarkerSize' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MarkerSize: answer.
	^answer asObject
!

markerSize: rhs
	"Set the 'MarkerSize' property of the receiver to the <sdword> value of the argument."

	self put_MarkerSize: rhs
!

markerStyle
	"Answer the <sdword> value of the 'MarkerStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MarkerStyle: answer.
	^answer asObject
!

markerStyle: rhs
	"Set the 'MarkerStyle' property of the receiver to the <sdword> value of the argument."

	self put_MarkerStyle: rhs
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
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

paste
	"Answer the <VARIANT> result of invoking the Paste() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Paste: answer.
	^answer asObject
!

Paste: rhs
	"Private - Invoke the Paste() method of the COM object.

		HRESULT __stdcall Paste(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 53 variant*>
	^self invalidCall!

pictureType
	"Answer the <sdword> value of the 'PictureType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PictureType: answer.
	^answer asObject
!

pictureType: rhs
	"Set the 'PictureType' property of the receiver to the <sdword> value of the argument."

	self put_PictureType: rhs
!

pictureUnit
	"Answer the <sdword> value of the 'PictureUnit' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PictureUnit: answer.
	^answer asObject
!

pictureUnit: rhs
	"Set the 'PictureUnit' property of the receiver to the <sdword> value of the argument."

	self put_PictureUnit: rhs
!

pictureUnit2
	"Answer the <double> value of the 'PictureUnit2' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_PictureUnit2: answer.
	^answer asObject
!

pictureUnit2: rhs
	"Set the 'PictureUnit2' property of the receiver to the <double> value of the argument."

	self put_PictureUnit2: rhs
!

plotOrder
	"Answer the <sdword> value of the 'PlotOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PlotOrder: answer.
	^answer asObject
!

plotOrder: rhs
	"Set the 'PlotOrder' property of the receiver to the <sdword> value of the argument."

	self put_PlotOrder: rhs
!

points
	"Answer the <IDispatch> result of invoking the Points() method of the COM object.
	Default values are passed for all optional parameters."

	^self points: VARIANT unspecified!

points: index
	"Answer the <IDispatch> result of invoking the Points() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Points: index asVariant
		rhs: answer.
	^answer asObject
!

Points: index rhs: rhs
	"Private - Invoke the Points() method of the COM object.

		HRESULT __stdcall Points(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 60 variant IDispatch**>
	^self invalidCall!

put_ApplyPictToEnd: rhs
	"Private - Set the value of the 'ApplyPictToEnd' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ApplyPictToEnd(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 83 varbool>
	^self invalidCall!

put_ApplyPictToFront: rhs
	"Private - Set the value of the 'ApplyPictToFront' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ApplyPictToFront(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 81 varbool>
	^self invalidCall!

put_ApplyPictToSides: rhs
	"Private - Set the value of the 'ApplyPictToSides' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ApplyPictToSides(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 79 varbool>
	^self invalidCall!

put_AxisGroup: rhs
	"Private - Set the value of the 'AxisGroup' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall AxisGroup(
			[in]XlAxisGroup RHS);"

	<virtual stdcall: hresult 13 sdword>
	^self invalidCall!

put_BarShape: rhs
	"Private - Set the value of the 'BarShape' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall BarShape(
			[in]XlBarShape RHS);"

	<virtual stdcall: hresult 77 sdword>
	^self invalidCall!

put_BubbleSizes: rhs
	"Private - Set the value of the 'BubbleSizes' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall BubbleSizes(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 75 variant>
	^self invalidCall!

put_ChartType: rhs
	"Private - Set the value of the 'ChartType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ChartType(
			[in]XlChartType RHS);"

	<virtual stdcall: hresult 68 sdword>
	^self invalidCall!

put_Explosion: rhs
	"Private - Set the value of the 'Explosion' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Explosion(
			[in]long RHS);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

put_Formula: rhs
	"Private - Set the value of the 'Formula' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Formula(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 24 bstr>
	^self invalidCall!

put_FormulaLocal: rhs
	"Private - Set the value of the 'FormulaLocal' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall FormulaLocal(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 26 bstr>
	^self invalidCall!

put_FormulaR1C1: rhs
	"Private - Set the value of the 'FormulaR1C1' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall FormulaR1C1(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 28 bstr>
	^self invalidCall!

put_FormulaR1C1Local: rhs
	"Private - Set the value of the 'FormulaR1C1Local' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall FormulaR1C1Local(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 30 bstr>
	^self invalidCall!

put_Has3DEffect: rhs
	"Private - Set the value of the 'Has3DEffect' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Has3DEffect(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 85 varbool>
	^self invalidCall!

put_HasDataLabels: rhs
	"Private - Set the value of the 'HasDataLabels' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasDataLabels(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 32 varbool>
	^self invalidCall!

put_HasErrorBars: rhs
	"Private - Set the value of the 'HasErrorBars' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasErrorBars(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 34 varbool>
	^self invalidCall!

put_HasLeaderLines: rhs
	"Private - Set the value of the 'HasLeaderLines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasLeaderLines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 89 varbool>
	^self invalidCall!

put_InvertIfNegative: rhs
	"Private - Set the value of the 'InvertIfNegative' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InvertIfNegative(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 38 varbool>
	^self invalidCall!

put_MarkerBackgroundColor: rhs
	"Private - Set the value of the 'MarkerBackgroundColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerBackgroundColor(
			[in]long RHS);"

	<virtual stdcall: hresult 40 sdword>
	^self invalidCall!

put_MarkerBackgroundColorIndex: rhs
	"Private - Set the value of the 'MarkerBackgroundColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerBackgroundColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 42 sdword>
	^self invalidCall!

put_MarkerForegroundColor: rhs
	"Private - Set the value of the 'MarkerForegroundColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerForegroundColor(
			[in]long RHS);"

	<virtual stdcall: hresult 44 sdword>
	^self invalidCall!

put_MarkerForegroundColorIndex: rhs
	"Private - Set the value of the 'MarkerForegroundColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerForegroundColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 46 sdword>
	^self invalidCall!

put_MarkerSize: rhs
	"Private - Set the value of the 'MarkerSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerSize(
			[in]long RHS);"

	<virtual stdcall: hresult 48 sdword>
	^self invalidCall!

put_MarkerStyle: rhs
	"Private - Set the value of the 'MarkerStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerStyle(
			[in]XlMarkerStyle RHS);"

	<virtual stdcall: hresult 50 sdword>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 52 bstr>
	^self invalidCall!

put_PictureType: rhs
	"Private - Set the value of the 'PictureType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PictureType(
			[in]XlChartPictureType RHS);"

	<virtual stdcall: hresult 55 sdword>
	^self invalidCall!

put_PictureUnit: rhs
	"Private - Set the value of the 'PictureUnit' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PictureUnit(
			[in]long RHS);"

	<virtual stdcall: hresult 57 sdword>
	^self invalidCall!

put_PictureUnit2: rhs
	"Private - Set the value of the 'PictureUnit2' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall PictureUnit2(
			[in]double RHS);"

	<virtual stdcall: hresult 93 double>
	^self invalidCall!

put_PlotOrder: rhs
	"Private - Set the value of the 'PlotOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PlotOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 59 sdword>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 87 varbool>
	^self invalidCall!

put_Smooth: rhs
	"Private - Set the value of the 'Smooth' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Smooth(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 63 varbool>
	^self invalidCall!

put_Type: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Type(
			[in]long RHS);"

	<virtual stdcall: hresult 66 sdword>
	^self invalidCall!

put_Values: rhs
	"Private - Set the value of the 'Values' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Values(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 71 variant>
	^self invalidCall!

put_XValues: rhs
	"Private - Set the value of the 'XValues' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall XValues(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 73 variant>
	^self invalidCall!

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

	<virtual stdcall: hresult 61 variant*>
	^self invalidCall!

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

smooth
	"Answer the <varbool> value of the 'Smooth' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Smooth: answer.
	^answer asObject
!

smooth: rhs
	"Set the 'Smooth' property of the receiver to the <varbool> value of the argument."

	self put_Smooth: rhs
!

trendlines
	"Answer the <IDispatch> result of invoking the Trendlines() method of the COM object.
	Default values are passed for all optional parameters."

	^self trendlines: VARIANT unspecified!

trendlines: index
	"Answer the <IDispatch> result of invoking the Trendlines() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		Trendlines: index asVariant
		rhs: answer.
	^answer asObject
!

Trendlines: index rhs: rhs
	"Private - Invoke the Trendlines() method of the COM object.

		HRESULT __stdcall Trendlines(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 64 variant IDispatch**>
	^self invalidCall!

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

values
	"Answer the <variant> value of the 'Values' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Values: answer.
	^answer asObject
!

values: rhs
	"Set the 'Values' property of the receiver to the <variant> value of the argument."

	self put_Values: rhs asVariant
!

xValues
	"Answer the <variant> value of the 'XValues' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_XValues: answer.
	^answer asObject
!

xValues: rhs
	"Set the 'XValues' property of the receiver to the <variant> value of the argument."

	self put_XValues: rhs asVariant
! !
!ExcelISeries categoriesFor: #_applyDataLabels!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #_applyDataLabels:legendKey:autoText:hasLeaderLines:!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #_ApplyDataLabels:legendKey:autoText:hasLeaderLines:rhs:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #applyCustomType:!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #ApplyCustomType:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #applyDataLabels!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #applyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #ApplyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:rhs:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #applyPictToEnd!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #applyPictToEnd:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #applyPictToFront!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #applyPictToFront:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #applyPictToSides!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #applyPictToSides:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #axisGroup!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #axisGroup:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #barShape!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #barShape:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #border!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #bubbleSizes!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #bubbleSizes:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #chartType!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #chartType:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #ClearFormats:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #Copy:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #dataLabels!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #dataLabels:!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #DataLabels:rhs:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #Delete:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #errorBar:include:type:!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #errorBar:include:type:amount:minusValues:!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #ErrorBar:include:type:amount:minusValues:rhs:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #errorBars!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #explosion!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #explosion:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #format!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #formulaLocal!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #formulaLocal:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #formulaR1C1!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #formulaR1C1:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #formulaR1C1Local!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #formulaR1C1Local:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_ApplyPictToEnd:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_ApplyPictToFront:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_ApplyPictToSides:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_AxisGroup:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_BarShape:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Border:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_BubbleSizes:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_ChartType:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_ErrorBars:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Explosion:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Format:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Formula:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_FormulaLocal:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_FormulaR1C1:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_FormulaR1C1Local:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Has3DEffect:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_HasDataLabels:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_HasErrorBars:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_HasLeaderLines:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_InvertIfNegative:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_LeaderLines:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_MarkerBackgroundColor:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_MarkerBackgroundColorIndex:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_MarkerForegroundColor:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_MarkerForegroundColorIndex:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_MarkerSize:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_MarkerStyle:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_PictureType:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_PictureUnit:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_PictureUnit2:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_PlotOrder:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Smooth:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Type:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_Values:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #get_XValues:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #has3DEffect!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #has3DEffect:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #hasDataLabels!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #hasDataLabels:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #hasErrorBars!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #hasErrorBars:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #hasLeaderLines!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #hasLeaderLines:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #invertIfNegative!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #invertIfNegative:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #leaderLines!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerBackgroundColor!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerBackgroundColor:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerBackgroundColorIndex!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerBackgroundColorIndex:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerForegroundColor!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerForegroundColor:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerForegroundColorIndex!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerForegroundColorIndex:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerSize!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerSize:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerStyle!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #markerStyle:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #name!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #Paste:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #pictureType!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #pictureType:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #pictureUnit!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #pictureUnit:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #pictureUnit2!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #pictureUnit2:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #plotOrder!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #plotOrder:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #points!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #points:!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #Points:rhs:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_ApplyPictToEnd:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_ApplyPictToFront:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_ApplyPictToSides:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_AxisGroup:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_BarShape:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_BubbleSizes:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_ChartType:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_Explosion:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_Formula:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_FormulaLocal:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_FormulaR1C1:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_FormulaR1C1Local:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_Has3DEffect:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_HasDataLabels:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_HasErrorBars:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_HasLeaderLines:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_InvertIfNegative:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_MarkerBackgroundColor:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_MarkerBackgroundColorIndex:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_MarkerForegroundColor:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_MarkerForegroundColorIndex:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_MarkerSize:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_MarkerStyle:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_Name:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_PictureType:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_PictureUnit:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_PictureUnit2:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_PlotOrder:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_Smooth:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_Type:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_Values:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #put_XValues:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #select!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #Select:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #smooth!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #smooth:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #trendlines!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #trendlines:!**auto generated**!methods!public! !
!ExcelISeries categoriesFor: #Trendlines:rhs:!**auto generated**!COM Interfaces-ISeries!private! !
!ExcelISeries categoriesFor: #type!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #values!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #values:!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #xValues!**auto generated**!properties!public! !
!ExcelISeries categoriesFor: #xValues:!**auto generated**!properties!public! !

!ExcelISeries class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISeries'
		ExcelISeries defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #_ApplyDataLabels:legendKey:autoText:hasLeaderLines:rhs:
			argumentTypes: 'sdword variant variant variant variant*';
		defineFunction: #get_AxisGroup:
			argumentTypes: 'sdword*';
		defineFunction: #put_AxisGroup:
			argumentTypes: 'sdword';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #ClearFormats:
			argumentTypes: 'variant*';
		defineFunction: #Copy:
			argumentTypes: 'variant*';
		defineFunction: #DataLabels:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #ErrorBar:include:type:amount:minusValues:rhs:
			argumentTypes: 'sdword sdword sdword variant variant variant*';
		defineFunction: #get_ErrorBars:
			argumentTypes: 'ExcelErrorBars**';
		defineFunction: #get_Explosion:
			argumentTypes: 'sdword*';
		defineFunction: #put_Explosion:
			argumentTypes: 'sdword';
		defineFunction: #get_Formula:
			argumentTypes: 'bstr*';
		defineFunction: #put_Formula:
			argumentTypes: 'bstr';
		defineFunction: #get_FormulaLocal:
			argumentTypes: 'bstr*';
		defineFunction: #put_FormulaLocal:
			argumentTypes: 'bstr';
		defineFunction: #get_FormulaR1C1:
			argumentTypes: 'bstr*';
		defineFunction: #put_FormulaR1C1:
			argumentTypes: 'bstr';
		defineFunction: #get_FormulaR1C1Local:
			argumentTypes: 'bstr*';
		defineFunction: #put_FormulaR1C1Local:
			argumentTypes: 'bstr';
		defineFunction: #get_HasDataLabels:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasDataLabels:
			argumentTypes: 'varbool';
		defineFunction: #get_HasErrorBars:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasErrorBars:
			argumentTypes: 'varbool';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Fill:
			argumentTypes: 'ExcelChartFillFormat**';
		defineFunction: #get_InvertIfNegative:
			argumentTypes: 'varbool*';
		defineFunction: #put_InvertIfNegative:
			argumentTypes: 'varbool';
		defineFunction: #get_MarkerBackgroundColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_MarkerBackgroundColor:
			argumentTypes: 'sdword';
		defineFunction: #get_MarkerBackgroundColorIndex:
			argumentTypes: 'sdword*';
		defineFunction: #put_MarkerBackgroundColorIndex:
			argumentTypes: 'sdword';
		defineFunction: #get_MarkerForegroundColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_MarkerForegroundColor:
			argumentTypes: 'sdword';
		defineFunction: #get_MarkerForegroundColorIndex:
			argumentTypes: 'sdword*';
		defineFunction: #put_MarkerForegroundColorIndex:
			argumentTypes: 'sdword';
		defineFunction: #get_MarkerSize:
			argumentTypes: 'sdword*';
		defineFunction: #put_MarkerSize:
			argumentTypes: 'sdword';
		defineFunction: #get_MarkerStyle:
			argumentTypes: 'sdword*';
		defineFunction: #put_MarkerStyle:
			argumentTypes: 'sdword';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #Paste:
			argumentTypes: 'variant*';
		defineFunction: #get_PictureType:
			argumentTypes: 'sdword*';
		defineFunction: #put_PictureType:
			argumentTypes: 'sdword';
		defineFunction: #get_PictureUnit:
			argumentTypes: 'sdword*';
		defineFunction: #put_PictureUnit:
			argumentTypes: 'sdword';
		defineFunction: #get_PlotOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_PlotOrder:
			argumentTypes: 'sdword';
		defineFunction: #Points:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_Smooth:
			argumentTypes: 'varbool*';
		defineFunction: #put_Smooth:
			argumentTypes: 'varbool';
		defineFunction: #Trendlines:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword';
		defineFunction: #get_ChartType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ChartType:
			argumentTypes: 'sdword';
		defineFunction: #ApplyCustomType:
			argumentTypes: 'sdword';
		defineFunction: #get_Values:
			argumentTypes: 'variant*';
		defineFunction: #put_Values:
			argumentTypes: 'variant';
		defineFunction: #get_XValues:
			argumentTypes: 'variant*';
		defineFunction: #put_XValues:
			argumentTypes: 'variant';
		defineFunction: #get_BubbleSizes:
			argumentTypes: 'variant*';
		defineFunction: #put_BubbleSizes:
			argumentTypes: 'variant';
		defineFunction: #get_BarShape:
			argumentTypes: 'sdword*';
		defineFunction: #put_BarShape:
			argumentTypes: 'sdword';
		defineFunction: #get_ApplyPictToSides:
			argumentTypes: 'varbool*';
		defineFunction: #put_ApplyPictToSides:
			argumentTypes: 'varbool';
		defineFunction: #get_ApplyPictToFront:
			argumentTypes: 'varbool*';
		defineFunction: #put_ApplyPictToFront:
			argumentTypes: 'varbool';
		defineFunction: #get_ApplyPictToEnd:
			argumentTypes: 'varbool*';
		defineFunction: #put_ApplyPictToEnd:
			argumentTypes: 'varbool';
		defineFunction: #get_Has3DEffect:
			argumentTypes: 'varbool*';
		defineFunction: #put_Has3DEffect:
			argumentTypes: 'varbool';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #get_HasLeaderLines:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasLeaderLines:
			argumentTypes: 'varbool';
		defineFunction: #get_LeaderLines:
			argumentTypes: 'ExcelLeaderLines**';
		defineFunction: #ApplyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:rhs:
			argumentTypes: 'sdword variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #get_PictureUnit2:
			argumentTypes: 'double*';
		defineFunction: #put_PictureUnit2:
			argumentTypes: 'double';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISeries initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISeries class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISeries class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

