"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAxis
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAxis guid: (IID fromString: '{00020848-0000-0000-C000-000000000046}')!
ExcelAxis comment: '<ExcelAxis> is a wrapper class generated for the dispatch interface ''Excel.Axis'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020848-0000-0000-C000-000000000046), 
	helpcontext(0x00020008)
]
dispinterface Axis {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000002d), propget, helpcontext(0x0001002d)]
		VARIANT_BOOL AxisBetweenCategories();
[id(0x0000002d), propput, helpcontext(0x0001002d)]
		void AxisBetweenCategories(
			[in]VARIANT_BOOL arg1);
[id(0x0000002f), propget, helpcontext(0x0001002f)]
		XlAxisGroup AxisGroup();
[id(0x00000052), propget, helpcontext(0x00010052)]
		AxisTitle* AxisTitle();
[id(0x00000080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x0000009c), propget, helpcontext(0x0001009c)]
		VARIANT CategoryNames();
[id(0x0000009c), propput, helpcontext(0x0001009c)]
		void CategoryNames(
			[in]VARIANT arg1);
[id(0x0000002a), propget, helpcontext(0x0001002a)]
		XlAxisCrosses Crosses();
[id(0x0000002a), propput, helpcontext(0x0001002a)]
		void Crosses(
			[in]XlAxisCrosses arg1);
[id(0x0000002b), propget, helpcontext(0x0001002b)]
		double CrossesAt();
[id(0x0000002b), propput, helpcontext(0x0001002b)]
		void CrossesAt(
			[in]double arg1);
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000018), propget, helpcontext(0x00010018)]
		VARIANT_BOOL HasMajorGridlines();
[id(0x00000018), propput, helpcontext(0x00010018)]
		void HasMajorGridlines(
			[in]VARIANT_BOOL arg1);
[id(0x00000019), propget, helpcontext(0x00010019)]
		VARIANT_BOOL HasMinorGridlines();
[id(0x00000019), propput, helpcontext(0x00010019)]
		void HasMinorGridlines(
			[in]VARIANT_BOOL arg1);
[id(0x00000036), propget, helpcontext(0x00010036)]
		VARIANT_BOOL HasTitle();
[id(0x00000036), propput, helpcontext(0x00010036)]
		void HasTitle(
			[in]VARIANT_BOOL arg1);
[id(0x00000059), propget, helpcontext(0x00010059)]
		Gridlines* MajorGridlines();
[id(0x0000001a), propget, helpcontext(0x0001001a)]
		XlTickMark MajorTickMark();
[id(0x0000001a), propput, helpcontext(0x0001001a)]
		void MajorTickMark(
			[in]XlTickMark arg1);
[id(0x00000025), propget, helpcontext(0x00010025)]
		double MajorUnit();
[id(0x00000025), propput, helpcontext(0x00010025)]
		void MajorUnit(
			[in]double arg1);
[id(0x00000026), propget, helpcontext(0x00010026)]
		VARIANT_BOOL MajorUnitIsAuto();
[id(0x00000026), propput, helpcontext(0x00010026)]
		void MajorUnitIsAuto(
			[in]VARIANT_BOOL arg1);
[id(0x00000023), propget, helpcontext(0x00010023)]
		double MaximumScale();
[id(0x00000023), propput, helpcontext(0x00010023)]
		void MaximumScale(
			[in]double arg1);
[id(0x00000024), propget, helpcontext(0x00010024)]
		VARIANT_BOOL MaximumScaleIsAuto();
[id(0x00000024), propput, helpcontext(0x00010024)]
		void MaximumScaleIsAuto(
			[in]VARIANT_BOOL arg1);
[id(0x00000021), propget, helpcontext(0x00010021)]
		double MinimumScale();
[id(0x00000021), propput, helpcontext(0x00010021)]
		void MinimumScale(
			[in]double arg1);
[id(0x00000022), propget, helpcontext(0x00010022)]
		VARIANT_BOOL MinimumScaleIsAuto();
[id(0x00000022), propput, helpcontext(0x00010022)]
		void MinimumScaleIsAuto(
			[in]VARIANT_BOOL arg1);
[id(0x0000005a), propget, helpcontext(0x0001005a)]
		Gridlines* MinorGridlines();
[id(0x0000001b), propget, helpcontext(0x0001001b)]
		XlTickMark MinorTickMark();
[id(0x0000001b), propput, helpcontext(0x0001001b)]
		void MinorTickMark(
			[in]XlTickMark arg1);
[id(0x00000027), propget, helpcontext(0x00010027)]
		double MinorUnit();
[id(0x00000027), propput, helpcontext(0x00010027)]
		void MinorUnit(
			[in]double arg1);
[id(0x00000028), propget, helpcontext(0x00010028)]
		VARIANT_BOOL MinorUnitIsAuto();
[id(0x00000028), propput, helpcontext(0x00010028)]
		void MinorUnitIsAuto(
			[in]VARIANT_BOOL arg1);
[id(0x0000002c), propget, helpcontext(0x0001002c)]
		VARIANT_BOOL ReversePlotOrder();
[id(0x0000002c), propput, helpcontext(0x0001002c)]
		void ReversePlotOrder(
			[in]VARIANT_BOOL arg1);
[id(0x00000029), propget, helpcontext(0x00010029)]
		XlScaleType ScaleType();
[id(0x00000029), propput, helpcontext(0x00010029)]
		void ScaleType(
			[in]XlScaleType arg1);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x0000001c), propget, helpcontext(0x0001001c)]
		XlTickLabelPosition TickLabelPosition();
[id(0x0000001c), propput, helpcontext(0x0001001c)]
		void TickLabelPosition(
			[in]XlTickLabelPosition arg1);
[id(0x0000005b), propget, helpcontext(0x0001005b)]
		TickLabels* TickLabels();
[id(0x0000001d), propget, helpcontext(0x0001001d)]
		long TickLabelSpacing();
[id(0x0000001d), propput, helpcontext(0x0001001d)]
		void TickLabelSpacing(
			[in]long arg1);
[id(0x0000001f), propget, helpcontext(0x0001001f)]
		long TickMarkSpacing();
[id(0x0000001f), propput, helpcontext(0x0001001f)]
		void TickMarkSpacing(
			[in]long arg1);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlAxisType Type();
[id(0x0000006c), propput, helpcontext(0x0001006c)]
		void Type(
			[in]XlAxisType arg1);
[id(0x0000066f), propget, helpcontext(0x0001066f)]
		XlTimeUnit BaseUnit();
[id(0x0000066f), propput, helpcontext(0x0001066f)]
		void BaseUnit(
			[in]XlTimeUnit arg1);
[id(0x00000670), propget, helpcontext(0x00010670)]
		VARIANT_BOOL BaseUnitIsAuto();
[id(0x00000670), propput, helpcontext(0x00010670)]
		void BaseUnitIsAuto(
			[in]VARIANT_BOOL arg1);
[id(0x00000671), propget, helpcontext(0x00010671)]
		XlTimeUnit MajorUnitScale();
[id(0x00000671), propput, helpcontext(0x00010671)]
		void MajorUnitScale(
			[in]XlTimeUnit arg1);
[id(0x00000672), propget, helpcontext(0x00010672)]
		XlTimeUnit MinorUnitScale();
[id(0x00000672), propput, helpcontext(0x00010672)]
		void MinorUnitScale(
			[in]XlTimeUnit arg1);
[id(0x00000673), propget, helpcontext(0x00010673)]
		XlCategoryType CategoryType();
[id(0x00000673), propput, helpcontext(0x00010673)]
		void CategoryType(
			[in]XlCategoryType arg1);
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x0000075e), propget, helpcontext(0x0001075e)]
		XlDisplayUnit DisplayUnit();
[id(0x0000075e), propput, helpcontext(0x0001075e)]
		void DisplayUnit(
			[in]XlDisplayUnit arg1);
[id(0x0000075f), propget, helpcontext(0x0001075f)]
		double DisplayUnitCustom();
[id(0x0000075f), propput, helpcontext(0x0001075f)]
		void DisplayUnitCustom(
			[in]double arg1);
[id(0x00000760), propget, helpcontext(0x00010760)]
		VARIANT_BOOL HasDisplayUnitLabel();
[id(0x00000760), propput, helpcontext(0x00010760)]
		void HasDisplayUnitLabel(
			[in]VARIANT_BOOL arg1);
[id(0x00000761), propget, helpcontext(0x00010761)]
		DisplayUnitLabel* DisplayUnitLabel();
[id(0x00000a56), propget, helpcontext(0x00010a56)]
		double LogBase();
[id(0x00000a56), propput, helpcontext(0x00010a56)]
		void LogBase(
			[in]double arg1);
[id(0x00000a57), propget, helpcontext(0x00010a57)]
		VARIANT_BOOL TickLabelSpacingIsAuto();
[id(0x00000a57), propput, helpcontext(0x00010a57)]
		void TickLabelSpacingIsAuto(
			[in]VARIANT_BOOL arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelAxis categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAxis methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

axisBetweenCategories
	"Answer the <varbool> value of the 'AxisBetweenCategories' property of the receiver.
		VARIANT_BOOL AxisBetweenCategories"

	^(self getPropertyId: 45)
!

axisBetweenCategories: arg1
	"Set the 'AxisBetweenCategories' property of the receiver to the <varbool> value of the argument.
		void AxisBetweenCategories"

	self setPropertyId: 45 value: arg1
!

axisGroup
	"Answer the <sdword> value of the 'AxisGroup' property of the receiver.
		XlAxisGroup AxisGroup"

	^(self getPropertyId: 47)
!

axisTitle
	"Answer the <ExcelAxisTitle> value of the 'AxisTitle' property of the receiver.
		AxisTitle* AxisTitle"

	^ExcelAxisTitle attachInterface: (self getPropertyId: 82)
!

baseUnit
	"Answer the <sdword> value of the 'BaseUnit' property of the receiver.
		XlTimeUnit BaseUnit"

	^(self getPropertyId: 1647)
!

baseUnit: arg1
	"Set the 'BaseUnit' property of the receiver to the <sdword> value of the argument.
		void BaseUnit"

	self setPropertyId: 1647 value: arg1
!

baseUnitIsAuto
	"Answer the <varbool> value of the 'BaseUnitIsAuto' property of the receiver.
		VARIANT_BOOL BaseUnitIsAuto"

	^(self getPropertyId: 1648)
!

baseUnitIsAuto: arg1
	"Set the 'BaseUnitIsAuto' property of the receiver to the <varbool> value of the argument.
		void BaseUnitIsAuto"

	self setPropertyId: 1648 value: arg1
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

categoryNames
	"Answer the <variant> value of the 'CategoryNames' property of the receiver.
		VARIANT CategoryNames"

	^(self getPropertyId: 156)
!

categoryNames: arg1
	"Set the 'CategoryNames' property of the receiver to the <variant> value of the argument.
		void CategoryNames"

	self setPropertyId: 156 value: arg1
!

categoryType
	"Answer the <sdword> value of the 'CategoryType' property of the receiver.
		XlCategoryType CategoryType"

	^(self getPropertyId: 1651)
!

categoryType: arg1
	"Set the 'CategoryType' property of the receiver to the <sdword> value of the argument.
		void CategoryType"

	self setPropertyId: 1651 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

crosses
	"Answer the <sdword> value of the 'Crosses' property of the receiver.
		XlAxisCrosses Crosses"

	^(self getPropertyId: 42)
!

crosses: arg1
	"Set the 'Crosses' property of the receiver to the <sdword> value of the argument.
		void Crosses"

	self setPropertyId: 42 value: arg1
!

crossesAt
	"Answer the <double> value of the 'CrossesAt' property of the receiver.
		double CrossesAt"

	^(self getPropertyId: 43)
!

crossesAt: arg1
	"Set the 'CrossesAt' property of the receiver to the <double> value of the argument.
		void CrossesAt"

	self setPropertyId: 43 value: arg1
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

displayUnit
	"Answer the <sdword> value of the 'DisplayUnit' property of the receiver.
		XlDisplayUnit DisplayUnit"

	^(self getPropertyId: 1886)
!

displayUnit: arg1
	"Set the 'DisplayUnit' property of the receiver to the <sdword> value of the argument.
		void DisplayUnit"

	self setPropertyId: 1886 value: arg1
!

displayUnitCustom
	"Answer the <double> value of the 'DisplayUnitCustom' property of the receiver.
		double DisplayUnitCustom"

	^(self getPropertyId: 1887)
!

displayUnitCustom: arg1
	"Set the 'DisplayUnitCustom' property of the receiver to the <double> value of the argument.
		void DisplayUnitCustom"

	self setPropertyId: 1887 value: arg1
!

displayUnitLabel
	"Answer the <ExcelDisplayUnitLabel> value of the 'DisplayUnitLabel' property of the receiver.
		DisplayUnitLabel* DisplayUnitLabel"

	^ExcelDisplayUnitLabel attachInterface: (self getPropertyId: 1889)
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

hasDisplayUnitLabel
	"Answer the <varbool> value of the 'HasDisplayUnitLabel' property of the receiver.
		VARIANT_BOOL HasDisplayUnitLabel"

	^(self getPropertyId: 1888)
!

hasDisplayUnitLabel: arg1
	"Set the 'HasDisplayUnitLabel' property of the receiver to the <varbool> value of the argument.
		void HasDisplayUnitLabel"

	self setPropertyId: 1888 value: arg1
!

hasMajorGridlines
	"Answer the <varbool> value of the 'HasMajorGridlines' property of the receiver.
		VARIANT_BOOL HasMajorGridlines"

	^(self getPropertyId: 24)
!

hasMajorGridlines: arg1
	"Set the 'HasMajorGridlines' property of the receiver to the <varbool> value of the argument.
		void HasMajorGridlines"

	self setPropertyId: 24 value: arg1
!

hasMinorGridlines
	"Answer the <varbool> value of the 'HasMinorGridlines' property of the receiver.
		VARIANT_BOOL HasMinorGridlines"

	^(self getPropertyId: 25)
!

hasMinorGridlines: arg1
	"Set the 'HasMinorGridlines' property of the receiver to the <varbool> value of the argument.
		void HasMinorGridlines"

	self setPropertyId: 25 value: arg1
!

hasTitle
	"Answer the <varbool> value of the 'HasTitle' property of the receiver.
		VARIANT_BOOL HasTitle"

	^(self getPropertyId: 54)
!

hasTitle: arg1
	"Set the 'HasTitle' property of the receiver to the <varbool> value of the argument.
		void HasTitle"

	self setPropertyId: 54 value: arg1
!

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: 123)
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
!

logBase
	"Answer the <double> value of the 'LogBase' property of the receiver.
		double LogBase"

	^(self getPropertyId: 2646)
!

logBase: arg1
	"Set the 'LogBase' property of the receiver to the <double> value of the argument.
		void LogBase"

	self setPropertyId: 2646 value: arg1
!

majorGridlines
	"Answer the <ExcelGridlines> value of the 'MajorGridlines' property of the receiver.
		Gridlines* MajorGridlines"

	^ExcelGridlines attachInterface: (self getPropertyId: 89)
!

majorTickMark
	"Answer the <sdword> value of the 'MajorTickMark' property of the receiver.
		XlTickMark MajorTickMark"

	^(self getPropertyId: 26)
!

majorTickMark: arg1
	"Set the 'MajorTickMark' property of the receiver to the <sdword> value of the argument.
		void MajorTickMark"

	self setPropertyId: 26 value: arg1
!

majorUnit
	"Answer the <double> value of the 'MajorUnit' property of the receiver.
		double MajorUnit"

	^(self getPropertyId: 37)
!

majorUnit: arg1
	"Set the 'MajorUnit' property of the receiver to the <double> value of the argument.
		void MajorUnit"

	self setPropertyId: 37 value: arg1
!

majorUnitIsAuto
	"Answer the <varbool> value of the 'MajorUnitIsAuto' property of the receiver.
		VARIANT_BOOL MajorUnitIsAuto"

	^(self getPropertyId: 38)
!

majorUnitIsAuto: arg1
	"Set the 'MajorUnitIsAuto' property of the receiver to the <varbool> value of the argument.
		void MajorUnitIsAuto"

	self setPropertyId: 38 value: arg1
!

majorUnitScale
	"Answer the <sdword> value of the 'MajorUnitScale' property of the receiver.
		XlTimeUnit MajorUnitScale"

	^(self getPropertyId: 1649)
!

majorUnitScale: arg1
	"Set the 'MajorUnitScale' property of the receiver to the <sdword> value of the argument.
		void MajorUnitScale"

	self setPropertyId: 1649 value: arg1
!

maximumScale
	"Answer the <double> value of the 'MaximumScale' property of the receiver.
		double MaximumScale"

	^(self getPropertyId: 35)
!

maximumScale: arg1
	"Set the 'MaximumScale' property of the receiver to the <double> value of the argument.
		void MaximumScale"

	self setPropertyId: 35 value: arg1
!

maximumScaleIsAuto
	"Answer the <varbool> value of the 'MaximumScaleIsAuto' property of the receiver.
		VARIANT_BOOL MaximumScaleIsAuto"

	^(self getPropertyId: 36)
!

maximumScaleIsAuto: arg1
	"Set the 'MaximumScaleIsAuto' property of the receiver to the <varbool> value of the argument.
		void MaximumScaleIsAuto"

	self setPropertyId: 36 value: arg1
!

minimumScale
	"Answer the <double> value of the 'MinimumScale' property of the receiver.
		double MinimumScale"

	^(self getPropertyId: 33)
!

minimumScale: arg1
	"Set the 'MinimumScale' property of the receiver to the <double> value of the argument.
		void MinimumScale"

	self setPropertyId: 33 value: arg1
!

minimumScaleIsAuto
	"Answer the <varbool> value of the 'MinimumScaleIsAuto' property of the receiver.
		VARIANT_BOOL MinimumScaleIsAuto"

	^(self getPropertyId: 34)
!

minimumScaleIsAuto: arg1
	"Set the 'MinimumScaleIsAuto' property of the receiver to the <varbool> value of the argument.
		void MinimumScaleIsAuto"

	self setPropertyId: 34 value: arg1
!

minorGridlines
	"Answer the <ExcelGridlines> value of the 'MinorGridlines' property of the receiver.
		Gridlines* MinorGridlines"

	^ExcelGridlines attachInterface: (self getPropertyId: 90)
!

minorTickMark
	"Answer the <sdword> value of the 'MinorTickMark' property of the receiver.
		XlTickMark MinorTickMark"

	^(self getPropertyId: 27)
!

minorTickMark: arg1
	"Set the 'MinorTickMark' property of the receiver to the <sdword> value of the argument.
		void MinorTickMark"

	self setPropertyId: 27 value: arg1
!

minorUnit
	"Answer the <double> value of the 'MinorUnit' property of the receiver.
		double MinorUnit"

	^(self getPropertyId: 39)
!

minorUnit: arg1
	"Set the 'MinorUnit' property of the receiver to the <double> value of the argument.
		void MinorUnit"

	self setPropertyId: 39 value: arg1
!

minorUnitIsAuto
	"Answer the <varbool> value of the 'MinorUnitIsAuto' property of the receiver.
		VARIANT_BOOL MinorUnitIsAuto"

	^(self getPropertyId: 40)
!

minorUnitIsAuto: arg1
	"Set the 'MinorUnitIsAuto' property of the receiver to the <varbool> value of the argument.
		void MinorUnitIsAuto"

	self setPropertyId: 40 value: arg1
!

minorUnitScale
	"Answer the <sdword> value of the 'MinorUnitScale' property of the receiver.
		XlTimeUnit MinorUnitScale"

	^(self getPropertyId: 1650)
!

minorUnitScale: arg1
	"Set the 'MinorUnitScale' property of the receiver to the <sdword> value of the argument.
		void MinorUnitScale"

	self setPropertyId: 1650 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

reversePlotOrder
	"Answer the <varbool> value of the 'ReversePlotOrder' property of the receiver.
		VARIANT_BOOL ReversePlotOrder"

	^(self getPropertyId: 44)
!

reversePlotOrder: arg1
	"Set the 'ReversePlotOrder' property of the receiver to the <varbool> value of the argument.
		void ReversePlotOrder"

	self setPropertyId: 44 value: arg1
!

scaleType
	"Answer the <sdword> value of the 'ScaleType' property of the receiver.
		XlScaleType ScaleType"

	^(self getPropertyId: 41)
!

scaleType: arg1
	"Set the 'ScaleType' property of the receiver to the <sdword> value of the argument.
		void ScaleType"

	self setPropertyId: 41 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

tickLabelPosition
	"Answer the <sdword> value of the 'TickLabelPosition' property of the receiver.
		XlTickLabelPosition TickLabelPosition"

	^(self getPropertyId: 28)
!

tickLabelPosition: arg1
	"Set the 'TickLabelPosition' property of the receiver to the <sdword> value of the argument.
		void TickLabelPosition"

	self setPropertyId: 28 value: arg1
!

tickLabels
	"Answer the <ExcelTickLabels> value of the 'TickLabels' property of the receiver.
		TickLabels* TickLabels"

	^ExcelTickLabels attachInterface: (self getPropertyId: 91)
!

tickLabelSpacing
	"Answer the <sdword> value of the 'TickLabelSpacing' property of the receiver.
		long TickLabelSpacing"

	^(self getPropertyId: 29)
!

tickLabelSpacing: arg1
	"Set the 'TickLabelSpacing' property of the receiver to the <sdword> value of the argument.
		void TickLabelSpacing"

	self setPropertyId: 29 value: arg1
!

tickLabelSpacingIsAuto
	"Answer the <varbool> value of the 'TickLabelSpacingIsAuto' property of the receiver.
		VARIANT_BOOL TickLabelSpacingIsAuto"

	^(self getPropertyId: 2647)
!

tickLabelSpacingIsAuto: arg1
	"Set the 'TickLabelSpacingIsAuto' property of the receiver to the <varbool> value of the argument.
		void TickLabelSpacingIsAuto"

	self setPropertyId: 2647 value: arg1
!

tickMarkSpacing
	"Answer the <sdword> value of the 'TickMarkSpacing' property of the receiver.
		long TickMarkSpacing"

	^(self getPropertyId: 31)
!

tickMarkSpacing: arg1
	"Set the 'TickMarkSpacing' property of the receiver to the <sdword> value of the argument.
		void TickMarkSpacing"

	self setPropertyId: 31 value: arg1
!

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: 126)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlAxisType Type"

	^(self getPropertyId: 108)
!

type: arg1
	"Set the 'Type' property of the receiver to the <sdword> value of the argument.
		void Type"

	self setPropertyId: 108 value: arg1
!

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: 122)
! !
!ExcelAxis categoriesFor: #application!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #axisBetweenCategories!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #axisBetweenCategories:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #axisGroup!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #axisTitle!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #baseUnit!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #baseUnit:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #baseUnitIsAuto!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #baseUnitIsAuto:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #border!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #categoryNames!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #categoryNames:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #categoryType!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #categoryType:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #crosses!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #crosses:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #crossesAt!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #crossesAt:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelAxis categoriesFor: #displayUnit!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #displayUnit:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #displayUnitCustom!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #displayUnitCustom:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #displayUnitLabel!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #format!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #hasDisplayUnitLabel!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #hasDisplayUnitLabel:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #hasMajorGridlines!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #hasMajorGridlines:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #hasMinorGridlines!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #hasMinorGridlines:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #hasTitle!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #hasTitle:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #height!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #left!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #logBase!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #logBase:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorGridlines!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorTickMark!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorTickMark:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorUnit!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorUnit:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorUnitIsAuto!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorUnitIsAuto:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorUnitScale!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #majorUnitScale:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #maximumScale!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #maximumScale:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #maximumScaleIsAuto!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #maximumScaleIsAuto:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minimumScale!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minimumScale:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minimumScaleIsAuto!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minimumScaleIsAuto:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorGridlines!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorTickMark!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorTickMark:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorUnit!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorUnit:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorUnitIsAuto!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorUnitIsAuto:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorUnitScale!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #minorUnitScale:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #reversePlotOrder!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #reversePlotOrder:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #scaleType!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #scaleType:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #select!**auto generated**!methods!public! !
!ExcelAxis categoriesFor: #tickLabelPosition!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #tickLabelPosition:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #tickLabels!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #tickLabelSpacing!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #tickLabelSpacing:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #tickLabelSpacingIsAuto!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #tickLabelSpacingIsAuto:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #tickMarkSpacing!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #tickMarkSpacing:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #top!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #type!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelAxis categoriesFor: #width!**auto generated**!properties!public! !

!ExcelAxis class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAxis initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAxis class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

