﻿"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSeries
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSeries guid: (IID fromString: '{0002086B-0000-0000-C000-000000000046}')!
ExcelSeries comment: '<ExcelSeries> is a wrapper class generated for the dispatch interface ''Excel.Series'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002086B-0000-0000-C000-000000000046), 
	helpcontext(0x0002002b)
]
dispinterface Series {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000097), hidden, helpcontext(0x00010097)]
		VARIANT _ApplyDataLabels(
			[in, defaultvalue(2)]XlDataLabelsType Type,
			[in, optional]VARIANT LegendKey,
			[in, optional]VARIANT AutoText,
			[in, optional]VARIANT HasLeaderLines);
[id(0x0000002f), propget, helpcontext(0x0001002f)]
		XlAxisGroup AxisGroup();
[id(0x0000002f), propput, helpcontext(0x0001002f)]
		void AxisGroup(
			[in]XlAxisGroup arg1);
[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000070), helpcontext(0x00010070)]
		VARIANT ClearFormats();
[id(0x00000227), helpcontext(0x00010227)]
		VARIANT Copy();
[id(0x0000009d), helpcontext(0x0001009d)]
		IDispatch* DataLabels(
			[in, optional]VARIANT Index);
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000098), helpcontext(0x00010098)]
		VARIANT ErrorBar(
			[in]XlErrorBarDirection Direction,
			[in]XlErrorBarInclude Include,
			[in]XlErrorBarType Type,
			[in, optional]VARIANT Amount,
			[in, optional]VARIANT MinusValues);
[id(0x0000009f), propget, helpcontext(0x0001009f)]
		ErrorBars* ErrorBars();
[id(0x000000b6), propget, helpcontext(0x000100b6)]
		long Explosion();
[id(0x000000b6), propput, helpcontext(0x000100b6)]
		void Explosion(
			[in]long arg1);
[id(0x00000105), propget, helpcontext(0x00010105)]
		BSTR Formula();
[id(0x00000105), propput, helpcontext(0x00010105)]
		void Formula(
			[in]BSTR arg1);
[id(0x00000107), propget, helpcontext(0x00010107)]
		BSTR FormulaLocal();
[id(0x00000107), propput, helpcontext(0x00010107)]
		void FormulaLocal(
			[in]BSTR arg1);
[id(0x00000108), propget, helpcontext(0x00010108)]
		BSTR FormulaR1C1();
[id(0x00000108), propput, helpcontext(0x00010108)]
		void FormulaR1C1(
			[in]BSTR arg1);
[id(0x00000109), propget, helpcontext(0x00010109)]
		BSTR FormulaR1C1Local();
[id(0x00000109), propput, helpcontext(0x00010109)]
		void FormulaR1C1Local(
			[in]BSTR arg1);
[id(0x0000004e), propget, helpcontext(0x0001004e)]
		VARIANT_BOOL HasDataLabels();
[id(0x0000004e), propput, helpcontext(0x0001004e)]
		void HasDataLabels(
			[in]VARIANT_BOOL arg1);
[id(0x000000a0), propget, helpcontext(0x000100a0)]
		VARIANT_BOOL HasErrorBars();
[id(0x000000a0), propput, helpcontext(0x000100a0)]
		void HasErrorBars(
			[in]VARIANT_BOOL arg1);
[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
		ChartFillFormat* Fill();
[id(0x00000084), propget, helpcontext(0x00010084)]
		VARIANT_BOOL InvertIfNegative();
[id(0x00000084), propput, helpcontext(0x00010084)]
		void InvertIfNegative(
			[in]VARIANT_BOOL arg1);
[id(0x00000049), propget, helpcontext(0x00010049)]
		long MarkerBackgroundColor();
[id(0x00000049), propput, helpcontext(0x00010049)]
		void MarkerBackgroundColor(
			[in]long arg1);
[id(0x0000004a), propget, helpcontext(0x0001004a)]
		XlColorIndex MarkerBackgroundColorIndex();
[id(0x0000004a), propput, helpcontext(0x0001004a)]
		void MarkerBackgroundColorIndex(
			[in]XlColorIndex arg1);
[id(0x0000004b), propget, helpcontext(0x0001004b)]
		long MarkerForegroundColor();
[id(0x0000004b), propput, helpcontext(0x0001004b)]
		void MarkerForegroundColor(
			[in]long arg1);
[id(0x0000004c), propget, helpcontext(0x0001004c)]
		XlColorIndex MarkerForegroundColorIndex();
[id(0x0000004c), propput, helpcontext(0x0001004c)]
		void MarkerForegroundColorIndex(
			[in]XlColorIndex arg1);
[id(0x000000e7), propget, helpcontext(0x000100e7)]
		long MarkerSize();
[id(0x000000e7), propput, helpcontext(0x000100e7)]
		void MarkerSize(
			[in]long arg1);
[id(0x00000048), propget, helpcontext(0x00010048)]
		XlMarkerStyle MarkerStyle();
[id(0x00000048), propput, helpcontext(0x00010048)]
		void MarkerStyle(
			[in]XlMarkerStyle arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000000d3), helpcontext(0x000100d3)]
		VARIANT Paste();
[id(0x000000a1), propget, helpcontext(0x000100a1)]
		XlChartPictureType PictureType();
[id(0x000000a1), propput, helpcontext(0x000100a1)]
		void PictureType(
			[in]XlChartPictureType arg1);
[id(0x000000a2), hidden, propget, helpcontext(0x000100a2)]
		long PictureUnit();
[id(0x000000a2), hidden, propput, helpcontext(0x000100a2)]
		void PictureUnit(
			[in]long arg1);
[id(0x000000e4), propget, helpcontext(0x000100e4)]
		long PlotOrder();
[id(0x000000e4), propput, helpcontext(0x000100e4)]
		void PlotOrder(
			[in]long arg1);
[id(0x00000046), helpcontext(0x00010046)]
		IDispatch* Points(
			[in, optional]VARIANT Index);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x000000a3), propget, helpcontext(0x000100a3)]
		VARIANT_BOOL Smooth();
[id(0x000000a3), propput, helpcontext(0x000100a3)]
		void Smooth(
			[in]VARIANT_BOOL arg1);
[id(0x0000009a), helpcontext(0x0001009a)]
		IDispatch* Trendlines(
			[in, optional]VARIANT Index);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
[id(0x0000006c), propput, helpcontext(0x0001006c)]
		void Type(
			[in]long arg1);
[id(0x00000578), propget, helpcontext(0x00010578)]
		XlChartType ChartType();
[id(0x00000578), propput, helpcontext(0x00010578)]
		void ChartType(
			[in]XlChartType arg1);
[id(0x00000579), hidden, helpcontext(0x00010579)]
		void ApplyCustomType(
			[in]XlChartType ChartType);
[id(0x000000a4), propget, helpcontext(0x000100a4)]
		VARIANT Values();
[id(0x000000a4), propput, helpcontext(0x000100a4)]
		void Values(
			[in]VARIANT arg1);
[id(0x00000457), propget, helpcontext(0x00010457)]
		VARIANT XValues();
[id(0x00000457), propput, helpcontext(0x00010457)]
		void XValues(
			[in]VARIANT arg1);
[id(0x00000680), propget, helpcontext(0x00010680)]
		VARIANT BubbleSizes();
[id(0x00000680), propput, helpcontext(0x00010680)]
		void BubbleSizes(
			[in]VARIANT arg1);
[id(0x0000057b), propget, helpcontext(0x0001057b)]
		XlBarShape BarShape();
[id(0x0000057b), propput, helpcontext(0x0001057b)]
		void BarShape(
			[in]XlBarShape arg1);
[id(0x0000067b), propget, helpcontext(0x0001067b)]
		VARIANT_BOOL ApplyPictToSides();
[id(0x0000067b), propput, helpcontext(0x0001067b)]
		void ApplyPictToSides(
			[in]VARIANT_BOOL arg1);
[id(0x0000067c), propget, helpcontext(0x0001067c)]
		VARIANT_BOOL ApplyPictToFront();
[id(0x0000067c), propput, helpcontext(0x0001067c)]
		void ApplyPictToFront(
			[in]VARIANT_BOOL arg1);
[id(0x0000067d), propget, helpcontext(0x0001067d)]
		VARIANT_BOOL ApplyPictToEnd();
[id(0x0000067d), propput, helpcontext(0x0001067d)]
		void ApplyPictToEnd(
			[in]VARIANT_BOOL arg1);
[id(0x00000681), propget, helpcontext(0x00010681)]
		VARIANT_BOOL Has3DEffect();
[id(0x00000681), propput, helpcontext(0x00010681)]
		void Has3DEffect(
			[in]VARIANT_BOOL arg1);
[id(0x00000067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x00000067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x00000572), propget, helpcontext(0x00010572)]
		VARIANT_BOOL HasLeaderLines();
[id(0x00000572), propput, helpcontext(0x00010572)]
		void HasLeaderLines(
			[in]VARIANT_BOOL arg1);
[id(0x00000682), propget, helpcontext(0x00010682)]
		LeaderLines* LeaderLines();
[id(0x00000782), helpcontext(0x00010782)]
		VARIANT ApplyDataLabels(
			[in, defaultvalue(2)]XlDataLabelsType Type,
			[in, optional]VARIANT LegendKey,
			[in, optional]VARIANT AutoText,
			[in, optional]VARIANT HasLeaderLines,
			[in, optional]VARIANT ShowSeriesName,
			[in, optional]VARIANT ShowCategoryName,
			[in, optional]VARIANT ShowValue,
			[in, optional]VARIANT ShowPercentage,
			[in, optional]VARIANT ShowBubbleSize,
			[in, optional]VARIANT Separator);
[id(0x00000a59), propget, helpcontext(0x00010a59)]
		double PictureUnit2();
[id(0x00000a59), propput, helpcontext(0x00010a59)]
		void PictureUnit2(
			[in]double arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelSeries categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSeries methodsFor!

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

	^(self invokeId: 151 withArguments:
			((Array new: 4)
				basicAt: 1 put: type;
				basicAt: 2 put: legendKey;
				basicAt: 3 put: autoText;
				basicAt: 4 put: hasLeaderLines;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

applyCustomType: chartType
	"Invoke the ApplyCustomType() method of the COM object."

	(self invokeId: 1401 with: chartType)
!

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

	^(self invokeId: 1922 withArguments:
			((Array new: 10)
				basicAt: 1 put: type;
				basicAt: 2 put: legendKey;
				basicAt: 3 put: autoText;
				basicAt: 4 put: hasLeaderLines;
				basicAt: 5 put: showSeriesName;
				basicAt: 6 put: showCategoryName;
				basicAt: 7 put: showValue;
				basicAt: 8 put: showPercentage;
				basicAt: 9 put: showBubbleSize;
				basicAt: 10 put: separator;
				yourself))
!

applyPictToEnd
	"Answer the <varbool> value of the 'ApplyPictToEnd' property of the receiver.
		VARIANT_BOOL ApplyPictToEnd"

	^(self getPropertyId: 1661)
!

applyPictToEnd: arg1
	"Set the 'ApplyPictToEnd' property of the receiver to the <varbool> value of the argument.
		void ApplyPictToEnd"

	self setPropertyId: 1661 value: arg1
!

applyPictToFront
	"Answer the <varbool> value of the 'ApplyPictToFront' property of the receiver.
		VARIANT_BOOL ApplyPictToFront"

	^(self getPropertyId: 1660)
!

applyPictToFront: arg1
	"Set the 'ApplyPictToFront' property of the receiver to the <varbool> value of the argument.
		void ApplyPictToFront"

	self setPropertyId: 1660 value: arg1
!

applyPictToSides
	"Answer the <varbool> value of the 'ApplyPictToSides' property of the receiver.
		VARIANT_BOOL ApplyPictToSides"

	^(self getPropertyId: 1659)
!

applyPictToSides: arg1
	"Set the 'ApplyPictToSides' property of the receiver to the <varbool> value of the argument.
		void ApplyPictToSides"

	self setPropertyId: 1659 value: arg1
!

axisGroup
	"Answer the <sdword> value of the 'AxisGroup' property of the receiver.
		XlAxisGroup AxisGroup"

	^(self getPropertyId: 47)
!

axisGroup: arg1
	"Set the 'AxisGroup' property of the receiver to the <sdword> value of the argument.
		void AxisGroup"

	self setPropertyId: 47 value: arg1
!

barShape
	"Answer the <sdword> value of the 'BarShape' property of the receiver.
		XlBarShape BarShape"

	^(self getPropertyId: 1403)
!

barShape: arg1
	"Set the 'BarShape' property of the receiver to the <sdword> value of the argument.
		void BarShape"

	self setPropertyId: 1403 value: arg1
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

bubbleSizes
	"Answer the <variant> value of the 'BubbleSizes' property of the receiver.
		VARIANT BubbleSizes"

	^(self getPropertyId: 1664)
!

bubbleSizes: arg1
	"Set the 'BubbleSizes' property of the receiver to the <variant> value of the argument.
		void BubbleSizes"

	self setPropertyId: 1664 value: arg1
!

chartType
	"Answer the <sdword> value of the 'ChartType' property of the receiver.
		XlChartType ChartType"

	^(self getPropertyId: 1400)
!

chartType: arg1
	"Set the 'ChartType' property of the receiver to the <sdword> value of the argument.
		void ChartType"

	self setPropertyId: 1400 value: arg1
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	^(self invokeId: 112)
!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	^(self invokeId: 551)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

dataLabels
	"Answer the <IDispatch> result of invoking the DataLabels() method of the COM object.
	Default values are passed for all optional parameters."

	^self dataLabels: VARIANT unspecified!

dataLabels: index
	"Answer the <IDispatch> result of invoking the DataLabels() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 157 with: index)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

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

	^(self invokeId: 152 withArguments:
			((Array new: 5)
				basicAt: 1 put: direction;
				basicAt: 2 put: include;
				basicAt: 3 put: type;
				basicAt: 4 put: amount;
				basicAt: 5 put: minusValues;
				yourself))
!

errorBars
	"Answer the <ExcelErrorBars> value of the 'ErrorBars' property of the receiver.
		ErrorBars* ErrorBars"

	^ExcelErrorBars attachInterface: (self getPropertyId: 159)
!

explosion
	"Answer the <sdword> value of the 'Explosion' property of the receiver.
		long Explosion"

	^(self getPropertyId: 182)
!

explosion: arg1
	"Set the 'Explosion' property of the receiver to the <sdword> value of the argument.
		void Explosion"

	self setPropertyId: 182 value: arg1
!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver.
		ChartFillFormat* Fill"

	^ExcelChartFillFormat attachInterface: (self getPropertyId: 1663)
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver.
		BSTR Formula"

	^(self getPropertyId: 261)
!

formula: arg1
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument.
		void Formula"

	self setPropertyId: 261 value: arg1
!

formulaLocal
	"Answer the <bstr> value of the 'FormulaLocal' property of the receiver.
		BSTR FormulaLocal"

	^(self getPropertyId: 263)
!

formulaLocal: arg1
	"Set the 'FormulaLocal' property of the receiver to the <bstr> value of the argument.
		void FormulaLocal"

	self setPropertyId: 263 value: arg1
!

formulaR1C1
	"Answer the <bstr> value of the 'FormulaR1C1' property of the receiver.
		BSTR FormulaR1C1"

	^(self getPropertyId: 264)
!

formulaR1C1: arg1
	"Set the 'FormulaR1C1' property of the receiver to the <bstr> value of the argument.
		void FormulaR1C1"

	self setPropertyId: 264 value: arg1
!

formulaR1C1Local
	"Answer the <bstr> value of the 'FormulaR1C1Local' property of the receiver.
		BSTR FormulaR1C1Local"

	^(self getPropertyId: 265)
!

formulaR1C1Local: arg1
	"Set the 'FormulaR1C1Local' property of the receiver to the <bstr> value of the argument.
		void FormulaR1C1Local"

	self setPropertyId: 265 value: arg1
!

has3DEffect
	"Answer the <varbool> value of the 'Has3DEffect' property of the receiver.
		VARIANT_BOOL Has3DEffect"

	^(self getPropertyId: 1665)
!

has3DEffect: arg1
	"Set the 'Has3DEffect' property of the receiver to the <varbool> value of the argument.
		void Has3DEffect"

	self setPropertyId: 1665 value: arg1
!

hasDataLabels
	"Answer the <varbool> value of the 'HasDataLabels' property of the receiver.
		VARIANT_BOOL HasDataLabels"

	^(self getPropertyId: 78)
!

hasDataLabels: arg1
	"Set the 'HasDataLabels' property of the receiver to the <varbool> value of the argument.
		void HasDataLabels"

	self setPropertyId: 78 value: arg1
!

hasErrorBars
	"Answer the <varbool> value of the 'HasErrorBars' property of the receiver.
		VARIANT_BOOL HasErrorBars"

	^(self getPropertyId: 160)
!

hasErrorBars: arg1
	"Set the 'HasErrorBars' property of the receiver to the <varbool> value of the argument.
		void HasErrorBars"

	self setPropertyId: 160 value: arg1
!

hasLeaderLines
	"Answer the <varbool> value of the 'HasLeaderLines' property of the receiver.
		VARIANT_BOOL HasLeaderLines"

	^(self getPropertyId: 1394)
!

hasLeaderLines: arg1
	"Set the 'HasLeaderLines' property of the receiver to the <varbool> value of the argument.
		void HasLeaderLines"

	self setPropertyId: 1394 value: arg1
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

invertIfNegative
	"Answer the <varbool> value of the 'InvertIfNegative' property of the receiver.
		VARIANT_BOOL InvertIfNegative"

	^(self getPropertyId: 132)
!

invertIfNegative: arg1
	"Set the 'InvertIfNegative' property of the receiver to the <varbool> value of the argument.
		void InvertIfNegative"

	self setPropertyId: 132 value: arg1
!

leaderLines
	"Answer the <ExcelLeaderLines> value of the 'LeaderLines' property of the receiver.
		LeaderLines* LeaderLines"

	^ExcelLeaderLines attachInterface: (self getPropertyId: 1666)
!

markerBackgroundColor
	"Answer the <sdword> value of the 'MarkerBackgroundColor' property of the receiver.
		long MarkerBackgroundColor"

	^(self getPropertyId: 73)
!

markerBackgroundColor: arg1
	"Set the 'MarkerBackgroundColor' property of the receiver to the <sdword> value of the argument.
		void MarkerBackgroundColor"

	self setPropertyId: 73 value: arg1
!

markerBackgroundColorIndex
	"Answer the <sdword> value of the 'MarkerBackgroundColorIndex' property of the receiver.
		XlColorIndex MarkerBackgroundColorIndex"

	^(self getPropertyId: 74)
!

markerBackgroundColorIndex: arg1
	"Set the 'MarkerBackgroundColorIndex' property of the receiver to the <sdword> value of the argument.
		void MarkerBackgroundColorIndex"

	self setPropertyId: 74 value: arg1
!

markerForegroundColor
	"Answer the <sdword> value of the 'MarkerForegroundColor' property of the receiver.
		long MarkerForegroundColor"

	^(self getPropertyId: 75)
!

markerForegroundColor: arg1
	"Set the 'MarkerForegroundColor' property of the receiver to the <sdword> value of the argument.
		void MarkerForegroundColor"

	self setPropertyId: 75 value: arg1
!

markerForegroundColorIndex
	"Answer the <sdword> value of the 'MarkerForegroundColorIndex' property of the receiver.
		XlColorIndex MarkerForegroundColorIndex"

	^(self getPropertyId: 76)
!

markerForegroundColorIndex: arg1
	"Set the 'MarkerForegroundColorIndex' property of the receiver to the <sdword> value of the argument.
		void MarkerForegroundColorIndex"

	self setPropertyId: 76 value: arg1
!

markerSize
	"Answer the <sdword> value of the 'MarkerSize' property of the receiver.
		long MarkerSize"

	^(self getPropertyId: 231)
!

markerSize: arg1
	"Set the 'MarkerSize' property of the receiver to the <sdword> value of the argument.
		void MarkerSize"

	self setPropertyId: 231 value: arg1
!

markerStyle
	"Answer the <sdword> value of the 'MarkerStyle' property of the receiver.
		XlMarkerStyle MarkerStyle"

	^(self getPropertyId: 72)
!

markerStyle: arg1
	"Set the 'MarkerStyle' property of the receiver to the <sdword> value of the argument.
		void MarkerStyle"

	self setPropertyId: 72 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

paste
	"Answer the <VARIANT> result of invoking the Paste() method of the COM object."

	^(self invokeId: 211)
!

pictureType
	"Answer the <sdword> value of the 'PictureType' property of the receiver.
		XlChartPictureType PictureType"

	^(self getPropertyId: 161)
!

pictureType: arg1
	"Set the 'PictureType' property of the receiver to the <sdword> value of the argument.
		void PictureType"

	self setPropertyId: 161 value: arg1
!

pictureUnit
	"Answer the <sdword> value of the 'PictureUnit' property of the receiver.
		long PictureUnit"

	^(self getPropertyId: 162)
!

pictureUnit: arg1
	"Set the 'PictureUnit' property of the receiver to the <sdword> value of the argument.
		void PictureUnit"

	self setPropertyId: 162 value: arg1
!

pictureUnit2
	"Answer the <double> value of the 'PictureUnit2' property of the receiver.
		double PictureUnit2"

	^(self getPropertyId: 2649)
!

pictureUnit2: arg1
	"Set the 'PictureUnit2' property of the receiver to the <double> value of the argument.
		void PictureUnit2"

	self setPropertyId: 2649 value: arg1
!

plotOrder
	"Answer the <sdword> value of the 'PlotOrder' property of the receiver.
		long PlotOrder"

	^(self getPropertyId: 228)
!

plotOrder: arg1
	"Set the 'PlotOrder' property of the receiver to the <sdword> value of the argument.
		void PlotOrder"

	self setPropertyId: 228 value: arg1
!

points
	"Answer the <IDispatch> result of invoking the Points() method of the COM object.
	Default values are passed for all optional parameters."

	^self points: VARIANT unspecified!

points: index
	"Answer the <IDispatch> result of invoking the Points() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 70 with: index)
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver.
		VARIANT_BOOL Shadow"

	^(self getPropertyId: 103)
!

shadow: arg1
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument.
		void Shadow"

	self setPropertyId: 103 value: arg1
!

smooth
	"Answer the <varbool> value of the 'Smooth' property of the receiver.
		VARIANT_BOOL Smooth"

	^(self getPropertyId: 163)
!

smooth: arg1
	"Set the 'Smooth' property of the receiver to the <varbool> value of the argument.
		void Smooth"

	self setPropertyId: 163 value: arg1
!

trendlines
	"Answer the <IDispatch> result of invoking the Trendlines() method of the COM object.
	Default values are passed for all optional parameters."

	^self trendlines: VARIANT unspecified!

trendlines: index
	"Answer the <IDispatch> result of invoking the Trendlines() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 154 with: index)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
!

type: arg1
	"Set the 'Type' property of the receiver to the <sdword> value of the argument.
		void Type"

	self setPropertyId: 108 value: arg1
!

values
	"Answer the <variant> value of the 'Values' property of the receiver.
		VARIANT Values"

	^(self getPropertyId: 164)
!

values: arg1
	"Set the 'Values' property of the receiver to the <variant> value of the argument.
		void Values"

	self setPropertyId: 164 value: arg1
!

xValues
	"Answer the <variant> value of the 'XValues' property of the receiver.
		VARIANT XValues"

	^(self getPropertyId: 1111)
!

xValues: arg1
	"Set the 'XValues' property of the receiver to the <variant> value of the argument.
		void XValues"

	self setPropertyId: 1111 value: arg1
! !
!ExcelSeries categoriesFor: #_applyDataLabels!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #_applyDataLabels:legendKey:autoText:hasLeaderLines:!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #applyCustomType:!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #applyDataLabels!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #applyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #applyPictToEnd!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #applyPictToEnd:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #applyPictToFront!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #applyPictToFront:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #applyPictToSides!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #applyPictToSides:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #axisGroup!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #axisGroup:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #barShape!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #barShape:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #border!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #bubbleSizes!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #bubbleSizes:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #chartType!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #chartType:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #dataLabels!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #dataLabels:!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #errorBar:include:type:!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #errorBar:include:type:amount:minusValues:!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #errorBars!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #explosion!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #explosion:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #format!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #formulaLocal!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #formulaLocal:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #formulaR1C1!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #formulaR1C1:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #formulaR1C1Local!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #formulaR1C1Local:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #has3DEffect!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #has3DEffect:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #hasDataLabels!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #hasDataLabels:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #hasErrorBars!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #hasErrorBars:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #hasLeaderLines!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #hasLeaderLines:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #invertIfNegative!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #invertIfNegative:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #leaderLines!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerBackgroundColor!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerBackgroundColor:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerBackgroundColorIndex!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerBackgroundColorIndex:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerForegroundColor!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerForegroundColor:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerForegroundColorIndex!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerForegroundColorIndex:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerSize!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerSize:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerStyle!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #markerStyle:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #name!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #pictureType!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #pictureType:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #pictureUnit!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #pictureUnit:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #pictureUnit2!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #pictureUnit2:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #plotOrder!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #plotOrder:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #points!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #points:!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #select!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #smooth!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #smooth:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #trendlines!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #trendlines:!**auto generated**!methods!public! !
!ExcelSeries categoriesFor: #type!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #values!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #values:!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #xValues!**auto generated**!properties!public! !
!ExcelSeries categoriesFor: #xValues:!**auto generated**!properties!public! !

!ExcelSeries class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSeries initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSeries class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

