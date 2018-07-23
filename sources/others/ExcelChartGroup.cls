"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelChartGroup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelChartGroup guid: (IID fromString: '{00020859-0000-0000-C000-000000000046}')!
ExcelChartGroup comment: '<ExcelChartGroup> is a wrapper class generated for the dispatch interface ''Excel.ChartGroup'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020859-0000-0000-C000-000000000046), 
	helpcontext(0x00020019)
]
dispinterface ChartGroup {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000002f), propget, helpcontext(0x0001002f)]
		XlAxisGroup AxisGroup();
[id(0x0000002f), propput, helpcontext(0x0001002f)]
		void AxisGroup(
			[in]XlAxisGroup arg1);
[id(0x00000466), propget, helpcontext(0x00010466)]
		long DoughnutHoleSize();
[id(0x00000466), propput, helpcontext(0x00010466)]
		void DoughnutHoleSize(
			[in]long arg1);
[id(0x0000008d), propget, helpcontext(0x0001008d)]
		DownBars* DownBars();
[id(0x0000008e), propget, helpcontext(0x0001008e)]
		DropLines* DropLines();
[id(0x0000003f), propget, helpcontext(0x0001003f)]
		long FirstSliceAngle();
[id(0x0000003f), propput, helpcontext(0x0001003f)]
		void FirstSliceAngle(
			[in]long arg1);
[id(0x00000033), propget, helpcontext(0x00010033)]
		long GapWidth();
[id(0x00000033), propput, helpcontext(0x00010033)]
		void GapWidth(
			[in]long arg1);
[id(0x0000003d), propget, helpcontext(0x0001003d)]
		VARIANT_BOOL HasDropLines();
[id(0x0000003d), propput, helpcontext(0x0001003d)]
		void HasDropLines(
			[in]VARIANT_BOOL arg1);
[id(0x0000003e), propget, helpcontext(0x0001003e)]
		VARIANT_BOOL HasHiLoLines();
[id(0x0000003e), propput, helpcontext(0x0001003e)]
		void HasHiLoLines(
			[in]VARIANT_BOOL arg1);
[id(0x00000040), propget, helpcontext(0x00010040)]
		VARIANT_BOOL HasRadarAxisLabels();
[id(0x00000040), propput, helpcontext(0x00010040)]
		void HasRadarAxisLabels(
			[in]VARIANT_BOOL arg1);
[id(0x00000041), propget, helpcontext(0x00010041)]
		VARIANT_BOOL HasSeriesLines();
[id(0x00000041), propput, helpcontext(0x00010041)]
		void HasSeriesLines(
			[in]VARIANT_BOOL arg1);
[id(0x00000042), propget, helpcontext(0x00010042)]
		VARIANT_BOOL HasUpDownBars();
[id(0x00000042), propput, helpcontext(0x00010042)]
		void HasUpDownBars(
			[in]VARIANT_BOOL arg1);
[id(0x0000008f), propget, helpcontext(0x0001008f)]
		HiLoLines* HiLoLines();
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x00000038), propget, helpcontext(0x00010038)]
		long Overlap();
[id(0x00000038), propput, helpcontext(0x00010038)]
		void Overlap(
			[in]long arg1);
[id(0x00000090), propget, helpcontext(0x00010090)]
		TickLabels* RadarAxisLabels();
[id(0x00000044), helpcontext(0x00010044)]
		IDispatch* SeriesCollection(
			[in, optional]VARIANT Index);
[id(0x00000091), propget, helpcontext(0x00010091)]
		SeriesLines* SeriesLines();
[id(0x0000006d), hidden, propget, helpcontext(0x0001006d)]
		long SubType();
[id(0x0000006d), hidden, propput, helpcontext(0x0001006d)]
		void SubType(
			[in]long arg1);
[id(0x0000006c), hidden, propget, helpcontext(0x0001006c)]
		long Type();
[id(0x0000006c), hidden, propput, helpcontext(0x0001006c)]
		void Type(
			[in]long arg1);
[id(0x0000008c), propget, helpcontext(0x0001008c)]
		UpBars* UpBars();
[id(0x0000003c), propget, helpcontext(0x0001003c)]
		VARIANT_BOOL VaryByCategories();
[id(0x0000003c), propput, helpcontext(0x0001003c)]
		void VaryByCategories(
			[in]VARIANT_BOOL arg1);
[id(0x00000674), propget, helpcontext(0x00010674)]
		XlSizeRepresents SizeRepresents();
[id(0x00000674), propput, helpcontext(0x00010674)]
		void SizeRepresents(
			[in]XlSizeRepresents arg1);
[id(0x00000675), propget, helpcontext(0x00010675)]
		long BubbleScale();
[id(0x00000675), propput, helpcontext(0x00010675)]
		void BubbleScale(
			[in]long arg1);
[id(0x00000676), propget, helpcontext(0x00010676)]
		VARIANT_BOOL ShowNegativeBubbles();
[id(0x00000676), propput, helpcontext(0x00010676)]
		void ShowNegativeBubbles(
			[in]VARIANT_BOOL arg1);
[id(0x00000677), propget, helpcontext(0x00010677)]
		XlChartSplitType SplitType();
[id(0x00000677), propput, helpcontext(0x00010677)]
		void SplitType(
			[in]XlChartSplitType arg1);
[id(0x00000678), propget, helpcontext(0x00010678)]
		VARIANT SplitValue();
[id(0x00000678), propput, helpcontext(0x00010678)]
		void SplitValue(
			[in]VARIANT arg1);
[id(0x00000679), propget, helpcontext(0x00010679)]
		long SecondPlotSize();
[id(0x00000679), propput, helpcontext(0x00010679)]
		void SecondPlotSize(
			[in]long arg1);
[id(0x0000067a), propget, helpcontext(0x0001067a)]
		VARIANT_BOOL Has3DShading();
[id(0x0000067a), propput, helpcontext(0x0001067a)]
		void Has3DShading(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelChartGroup categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelChartGroup methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
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

bubbleScale
	"Answer the <sdword> value of the 'BubbleScale' property of the receiver.
		long BubbleScale"

	^(self getPropertyId: 1653)
!

bubbleScale: arg1
	"Set the 'BubbleScale' property of the receiver to the <sdword> value of the argument.
		void BubbleScale"

	self setPropertyId: 1653 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

doughnutHoleSize
	"Answer the <sdword> value of the 'DoughnutHoleSize' property of the receiver.
		long DoughnutHoleSize"

	^(self getPropertyId: 1126)
!

doughnutHoleSize: arg1
	"Set the 'DoughnutHoleSize' property of the receiver to the <sdword> value of the argument.
		void DoughnutHoleSize"

	self setPropertyId: 1126 value: arg1
!

downBars
	"Answer the <ExcelDownBars> value of the 'DownBars' property of the receiver.
		DownBars* DownBars"

	^ExcelDownBars attachInterface: (self getPropertyId: 141)
!

dropLines
	"Answer the <ExcelDropLines> value of the 'DropLines' property of the receiver.
		DropLines* DropLines"

	^ExcelDropLines attachInterface: (self getPropertyId: 142)
!

firstSliceAngle
	"Answer the <sdword> value of the 'FirstSliceAngle' property of the receiver.
		long FirstSliceAngle"

	^(self getPropertyId: 63)
!

firstSliceAngle: arg1
	"Set the 'FirstSliceAngle' property of the receiver to the <sdword> value of the argument.
		void FirstSliceAngle"

	self setPropertyId: 63 value: arg1
!

gapWidth
	"Answer the <sdword> value of the 'GapWidth' property of the receiver.
		long GapWidth"

	^(self getPropertyId: 51)
!

gapWidth: arg1
	"Set the 'GapWidth' property of the receiver to the <sdword> value of the argument.
		void GapWidth"

	self setPropertyId: 51 value: arg1
!

has3DShading
	"Answer the <varbool> value of the 'Has3DShading' property of the receiver.
		VARIANT_BOOL Has3DShading"

	^(self getPropertyId: 1658)
!

has3DShading: arg1
	"Set the 'Has3DShading' property of the receiver to the <varbool> value of the argument.
		void Has3DShading"

	self setPropertyId: 1658 value: arg1
!

hasDropLines
	"Answer the <varbool> value of the 'HasDropLines' property of the receiver.
		VARIANT_BOOL HasDropLines"

	^(self getPropertyId: 61)
!

hasDropLines: arg1
	"Set the 'HasDropLines' property of the receiver to the <varbool> value of the argument.
		void HasDropLines"

	self setPropertyId: 61 value: arg1
!

hasHiLoLines
	"Answer the <varbool> value of the 'HasHiLoLines' property of the receiver.
		VARIANT_BOOL HasHiLoLines"

	^(self getPropertyId: 62)
!

hasHiLoLines: arg1
	"Set the 'HasHiLoLines' property of the receiver to the <varbool> value of the argument.
		void HasHiLoLines"

	self setPropertyId: 62 value: arg1
!

hasRadarAxisLabels
	"Answer the <varbool> value of the 'HasRadarAxisLabels' property of the receiver.
		VARIANT_BOOL HasRadarAxisLabels"

	^(self getPropertyId: 64)
!

hasRadarAxisLabels: arg1
	"Set the 'HasRadarAxisLabels' property of the receiver to the <varbool> value of the argument.
		void HasRadarAxisLabels"

	self setPropertyId: 64 value: arg1
!

hasSeriesLines
	"Answer the <varbool> value of the 'HasSeriesLines' property of the receiver.
		VARIANT_BOOL HasSeriesLines"

	^(self getPropertyId: 65)
!

hasSeriesLines: arg1
	"Set the 'HasSeriesLines' property of the receiver to the <varbool> value of the argument.
		void HasSeriesLines"

	self setPropertyId: 65 value: arg1
!

hasUpDownBars
	"Answer the <varbool> value of the 'HasUpDownBars' property of the receiver.
		VARIANT_BOOL HasUpDownBars"

	^(self getPropertyId: 66)
!

hasUpDownBars: arg1
	"Set the 'HasUpDownBars' property of the receiver to the <varbool> value of the argument.
		void HasUpDownBars"

	self setPropertyId: 66 value: arg1
!

hiLoLines
	"Answer the <ExcelHiLoLines> value of the 'HiLoLines' property of the receiver.
		HiLoLines* HiLoLines"

	^ExcelHiLoLines attachInterface: (self getPropertyId: 143)
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

overlap
	"Answer the <sdword> value of the 'Overlap' property of the receiver.
		long Overlap"

	^(self getPropertyId: 56)
!

overlap: arg1
	"Set the 'Overlap' property of the receiver to the <sdword> value of the argument.
		void Overlap"

	self setPropertyId: 56 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

radarAxisLabels
	"Answer the <ExcelTickLabels> value of the 'RadarAxisLabels' property of the receiver.
		TickLabels* RadarAxisLabels"

	^ExcelTickLabels attachInterface: (self getPropertyId: 144)
!

secondPlotSize
	"Answer the <sdword> value of the 'SecondPlotSize' property of the receiver.
		long SecondPlotSize"

	^(self getPropertyId: 1657)
!

secondPlotSize: arg1
	"Set the 'SecondPlotSize' property of the receiver to the <sdword> value of the argument.
		void SecondPlotSize"

	self setPropertyId: 1657 value: arg1
!

seriesCollection
	"Answer the <IDispatch> result of invoking the SeriesCollection() method of the COM object.
	Default values are passed for all optional parameters."

	^self seriesCollection: VARIANT unspecified!

seriesCollection: index
	"Answer the <IDispatch> result of invoking the SeriesCollection() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 68 with: index)
!

seriesLines
	"Answer the <ExcelSeriesLines> value of the 'SeriesLines' property of the receiver.
		SeriesLines* SeriesLines"

	^ExcelSeriesLines attachInterface: (self getPropertyId: 145)
!

showNegativeBubbles
	"Answer the <varbool> value of the 'ShowNegativeBubbles' property of the receiver.
		VARIANT_BOOL ShowNegativeBubbles"

	^(self getPropertyId: 1654)
!

showNegativeBubbles: arg1
	"Set the 'ShowNegativeBubbles' property of the receiver to the <varbool> value of the argument.
		void ShowNegativeBubbles"

	self setPropertyId: 1654 value: arg1
!

sizeRepresents
	"Answer the <sdword> value of the 'SizeRepresents' property of the receiver.
		XlSizeRepresents SizeRepresents"

	^(self getPropertyId: 1652)
!

sizeRepresents: arg1
	"Set the 'SizeRepresents' property of the receiver to the <sdword> value of the argument.
		void SizeRepresents"

	self setPropertyId: 1652 value: arg1
!

splitType
	"Answer the <sdword> value of the 'SplitType' property of the receiver.
		XlChartSplitType SplitType"

	^(self getPropertyId: 1655)
!

splitType: arg1
	"Set the 'SplitType' property of the receiver to the <sdword> value of the argument.
		void SplitType"

	self setPropertyId: 1655 value: arg1
!

splitValue
	"Answer the <variant> value of the 'SplitValue' property of the receiver.
		VARIANT SplitValue"

	^(self getPropertyId: 1656)
!

splitValue: arg1
	"Set the 'SplitValue' property of the receiver to the <variant> value of the argument.
		void SplitValue"

	self setPropertyId: 1656 value: arg1
!

subType
	"Answer the <sdword> value of the 'SubType' property of the receiver.
		long SubType"

	^(self getPropertyId: 109)
!

subType: arg1
	"Set the 'SubType' property of the receiver to the <sdword> value of the argument.
		void SubType"

	self setPropertyId: 109 value: arg1
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

upBars
	"Answer the <ExcelUpBars> value of the 'UpBars' property of the receiver.
		UpBars* UpBars"

	^ExcelUpBars attachInterface: (self getPropertyId: 140)
!

varyByCategories
	"Answer the <varbool> value of the 'VaryByCategories' property of the receiver.
		VARIANT_BOOL VaryByCategories"

	^(self getPropertyId: 60)
!

varyByCategories: arg1
	"Set the 'VaryByCategories' property of the receiver to the <varbool> value of the argument.
		void VaryByCategories"

	self setPropertyId: 60 value: arg1
! !
!ExcelChartGroup categoriesFor: #application!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #axisGroup!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #axisGroup:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #bubbleScale!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #bubbleScale:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #doughnutHoleSize!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #doughnutHoleSize:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #downBars!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #dropLines!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #firstSliceAngle!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #firstSliceAngle:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #gapWidth!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #gapWidth:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #has3DShading!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #has3DShading:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasDropLines!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasDropLines:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasHiLoLines!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasHiLoLines:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasRadarAxisLabels!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasRadarAxisLabels:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasSeriesLines!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasSeriesLines:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasUpDownBars!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hasUpDownBars:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #hiLoLines!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #index!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #overlap!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #overlap:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #radarAxisLabels!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #secondPlotSize!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #secondPlotSize:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #seriesCollection!**auto generated**!methods!public! !
!ExcelChartGroup categoriesFor: #seriesCollection:!**auto generated**!methods!public! !
!ExcelChartGroup categoriesFor: #seriesLines!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #showNegativeBubbles!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #showNegativeBubbles:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #sizeRepresents!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #sizeRepresents:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #splitType!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #splitType:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #splitValue!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #splitValue:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #subType!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #subType:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #type!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #upBars!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #varyByCategories!**auto generated**!properties!public! !
!ExcelChartGroup categoriesFor: #varyByCategories:!**auto generated**!properties!public! !

!ExcelChartGroup class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelChartGroup initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelChartGroup class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

