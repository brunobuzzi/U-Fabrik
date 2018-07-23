"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAxis
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAxis guid: (IID fromString: '{00020848-0001-0000-C000-000000000046}')!
ExcelIAxis comment: '<ExcelIAxis> is a wrapper class for the COM interface ''Excel.IAxis'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020848-0001-0000-C000-000000000046), 
	helpcontext(0x00020008), 
	hidden
]
interface IAxis : IDispatch
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
	[id(0x0000002d), propget, helpcontext(0x0001002d)]
	HRESULT __stdcall AxisBetweenCategories(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000002d), propput, helpcontext(0x0001002d)]
	HRESULT __stdcall AxisBetweenCategories(
		[in]VARIANT_BOOL RHS);
	[id(0x0000002f), propget, helpcontext(0x0001002f)]
	HRESULT __stdcall AxisGroup(
		[out, retval]XlAxisGroup* RHS);
	[id(0x00000052), propget, helpcontext(0x00010052)]
	HRESULT __stdcall AxisTitle(
		[out, retval]AxisTitle** RHS);
	[id(0x00000080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x0000009c), propget, helpcontext(0x0001009c)]
	HRESULT __stdcall CategoryNames(
		[out, retval]VARIANT* RHS);
	[id(0x0000009c), propput, helpcontext(0x0001009c)]
	HRESULT __stdcall CategoryNames(
		[in]VARIANT RHS);
	[id(0x0000002a), propget, helpcontext(0x0001002a)]
	HRESULT __stdcall Crosses(
		[out, retval]XlAxisCrosses* RHS);
	[id(0x0000002a), propput, helpcontext(0x0001002a)]
	HRESULT __stdcall Crosses(
		[in]XlAxisCrosses RHS);
	[id(0x0000002b), propget, helpcontext(0x0001002b)]
	HRESULT __stdcall CrossesAt(
		[out, retval]double* RHS);
	[id(0x0000002b), propput, helpcontext(0x0001002b)]
	HRESULT __stdcall CrossesAt(
		[in]double RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000018), propget, helpcontext(0x00010018)]
	HRESULT __stdcall HasMajorGridlines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000018), propput, helpcontext(0x00010018)]
	HRESULT __stdcall HasMajorGridlines(
		[in]VARIANT_BOOL RHS);
	[id(0x00000019), propget, helpcontext(0x00010019)]
	HRESULT __stdcall HasMinorGridlines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000019), propput, helpcontext(0x00010019)]
	HRESULT __stdcall HasMinorGridlines(
		[in]VARIANT_BOOL RHS);
	[id(0x00000036), propget, helpcontext(0x00010036)]
	HRESULT __stdcall HasTitle(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000036), propput, helpcontext(0x00010036)]
	HRESULT __stdcall HasTitle(
		[in]VARIANT_BOOL RHS);
	[id(0x00000059), propget, helpcontext(0x00010059)]
	HRESULT __stdcall MajorGridlines(
		[out, retval]Gridlines** RHS);
	[id(0x0000001a), propget, helpcontext(0x0001001a)]
	HRESULT __stdcall MajorTickMark(
		[out, retval]XlTickMark* RHS);
	[id(0x0000001a), propput, helpcontext(0x0001001a)]
	HRESULT __stdcall MajorTickMark(
		[in]XlTickMark RHS);
	[id(0x00000025), propget, helpcontext(0x00010025)]
	HRESULT __stdcall MajorUnit(
		[out, retval]double* RHS);
	[id(0x00000025), propput, helpcontext(0x00010025)]
	HRESULT __stdcall MajorUnit(
		[in]double RHS);
	[id(0x00000026), propget, helpcontext(0x00010026)]
	HRESULT __stdcall MajorUnitIsAuto(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000026), propput, helpcontext(0x00010026)]
	HRESULT __stdcall MajorUnitIsAuto(
		[in]VARIANT_BOOL RHS);
	[id(0x00000023), propget, helpcontext(0x00010023)]
	HRESULT __stdcall MaximumScale(
		[out, retval]double* RHS);
	[id(0x00000023), propput, helpcontext(0x00010023)]
	HRESULT __stdcall MaximumScale(
		[in]double RHS);
	[id(0x00000024), propget, helpcontext(0x00010024)]
	HRESULT __stdcall MaximumScaleIsAuto(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000024), propput, helpcontext(0x00010024)]
	HRESULT __stdcall MaximumScaleIsAuto(
		[in]VARIANT_BOOL RHS);
	[id(0x00000021), propget, helpcontext(0x00010021)]
	HRESULT __stdcall MinimumScale(
		[out, retval]double* RHS);
	[id(0x00000021), propput, helpcontext(0x00010021)]
	HRESULT __stdcall MinimumScale(
		[in]double RHS);
	[id(0x00000022), propget, helpcontext(0x00010022)]
	HRESULT __stdcall MinimumScaleIsAuto(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000022), propput, helpcontext(0x00010022)]
	HRESULT __stdcall MinimumScaleIsAuto(
		[in]VARIANT_BOOL RHS);
	[id(0x0000005a), propget, helpcontext(0x0001005a)]
	HRESULT __stdcall MinorGridlines(
		[out, retval]Gridlines** RHS);
	[id(0x0000001b), propget, helpcontext(0x0001001b)]
	HRESULT __stdcall MinorTickMark(
		[out, retval]XlTickMark* RHS);
	[id(0x0000001b), propput, helpcontext(0x0001001b)]
	HRESULT __stdcall MinorTickMark(
		[in]XlTickMark RHS);
	[id(0x00000027), propget, helpcontext(0x00010027)]
	HRESULT __stdcall MinorUnit(
		[out, retval]double* RHS);
	[id(0x00000027), propput, helpcontext(0x00010027)]
	HRESULT __stdcall MinorUnit(
		[in]double RHS);
	[id(0x00000028), propget, helpcontext(0x00010028)]
	HRESULT __stdcall MinorUnitIsAuto(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000028), propput, helpcontext(0x00010028)]
	HRESULT __stdcall MinorUnitIsAuto(
		[in]VARIANT_BOOL RHS);
	[id(0x0000002c), propget, helpcontext(0x0001002c)]
	HRESULT __stdcall ReversePlotOrder(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000002c), propput, helpcontext(0x0001002c)]
	HRESULT __stdcall ReversePlotOrder(
		[in]VARIANT_BOOL RHS);
	[id(0x00000029), propget, helpcontext(0x00010029)]
	HRESULT __stdcall ScaleType(
		[out, retval]XlScaleType* RHS);
	[id(0x00000029), propput, helpcontext(0x00010029)]
	HRESULT __stdcall ScaleType(
		[in]XlScaleType RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x0000001c), propget, helpcontext(0x0001001c)]
	HRESULT __stdcall TickLabelPosition(
		[out, retval]XlTickLabelPosition* RHS);
	[id(0x0000001c), propput, helpcontext(0x0001001c)]
	HRESULT __stdcall TickLabelPosition(
		[in]XlTickLabelPosition RHS);
	[id(0x0000005b), propget, helpcontext(0x0001005b)]
	HRESULT __stdcall TickLabels(
		[out, retval]TickLabels** RHS);
	[id(0x0000001d), propget, helpcontext(0x0001001d)]
	HRESULT __stdcall TickLabelSpacing(
		[out, retval]long* RHS);
	[id(0x0000001d), propput, helpcontext(0x0001001d)]
	HRESULT __stdcall TickLabelSpacing(
		[in]long RHS);
	[id(0x0000001f), propget, helpcontext(0x0001001f)]
	HRESULT __stdcall TickMarkSpacing(
		[out, retval]long* RHS);
	[id(0x0000001f), propput, helpcontext(0x0001001f)]
	HRESULT __stdcall TickMarkSpacing(
		[in]long RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlAxisType* RHS);
	[id(0x0000006c), propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]XlAxisType RHS);
	[id(0x0000066f), propget, helpcontext(0x0001066f)]
	HRESULT __stdcall BaseUnit(
		[out, retval]XlTimeUnit* RHS);
	[id(0x0000066f), propput, helpcontext(0x0001066f)]
	HRESULT __stdcall BaseUnit(
		[in]XlTimeUnit RHS);
	[id(0x00000670), propget, helpcontext(0x00010670)]
	HRESULT __stdcall BaseUnitIsAuto(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000670), propput, helpcontext(0x00010670)]
	HRESULT __stdcall BaseUnitIsAuto(
		[in]VARIANT_BOOL RHS);
	[id(0x00000671), propget, helpcontext(0x00010671)]
	HRESULT __stdcall MajorUnitScale(
		[out, retval]XlTimeUnit* RHS);
	[id(0x00000671), propput, helpcontext(0x00010671)]
	HRESULT __stdcall MajorUnitScale(
		[in]XlTimeUnit RHS);
	[id(0x00000672), propget, helpcontext(0x00010672)]
	HRESULT __stdcall MinorUnitScale(
		[out, retval]XlTimeUnit* RHS);
	[id(0x00000672), propput, helpcontext(0x00010672)]
	HRESULT __stdcall MinorUnitScale(
		[in]XlTimeUnit RHS);
	[id(0x00000673), propget, helpcontext(0x00010673)]
	HRESULT __stdcall CategoryType(
		[out, retval]XlCategoryType* RHS);
	[id(0x00000673), propput, helpcontext(0x00010673)]
	HRESULT __stdcall CategoryType(
		[in]XlCategoryType RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]double* RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]double* RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]double* RHS);
	[id(0x0000075e), propget, helpcontext(0x0001075e)]
	HRESULT __stdcall DisplayUnit(
		[out, retval]XlDisplayUnit* RHS);
	[id(0x0000075e), propput, helpcontext(0x0001075e)]
	HRESULT __stdcall DisplayUnit(
		[in]XlDisplayUnit RHS);
	[id(0x0000075f), propget, helpcontext(0x0001075f)]
	HRESULT __stdcall DisplayUnitCustom(
		[out, retval]double* RHS);
	[id(0x0000075f), propput, helpcontext(0x0001075f)]
	HRESULT __stdcall DisplayUnitCustom(
		[in]double RHS);
	[id(0x00000760), propget, helpcontext(0x00010760)]
	HRESULT __stdcall HasDisplayUnitLabel(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000760), propput, helpcontext(0x00010760)]
	HRESULT __stdcall HasDisplayUnitLabel(
		[in]VARIANT_BOOL RHS);
	[id(0x00000761), propget, helpcontext(0x00010761)]
	HRESULT __stdcall DisplayUnitLabel(
		[out, retval]DisplayUnitLabel** RHS);
	[id(0x00000a56), propget, helpcontext(0x00010a56)]
	HRESULT __stdcall LogBase(
		[out, retval]double* RHS);
	[id(0x00000a56), propput, helpcontext(0x00010a56)]
	HRESULT __stdcall LogBase(
		[in]double RHS);
	[id(0x00000a57), propget, helpcontext(0x00010a57)]
	HRESULT __stdcall TickLabelSpacingIsAuto(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a57), propput, helpcontext(0x00010a57)]
	HRESULT __stdcall TickLabelSpacingIsAuto(
		[in]VARIANT_BOOL RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelIAxis categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAxis methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

axisBetweenCategories
	"Answer the <varbool> value of the 'AxisBetweenCategories' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AxisBetweenCategories: answer.
	^answer asObject
!

axisBetweenCategories: rhs
	"Set the 'AxisBetweenCategories' property of the receiver to the <varbool> value of the argument."

	self put_AxisBetweenCategories: rhs
!

axisGroup
	"Answer the <sdword> value of the 'AxisGroup' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AxisGroup: answer.
	^answer asObject
!

axisTitle
	"Answer the <ExcelAxisTitle> value of the 'AxisTitle' property of the receiver."

	| answer |
	answer := ExcelAxisTitle newPointer.
	self get_AxisTitle: answer.
	^answer asObject
!

baseUnit
	"Answer the <sdword> value of the 'BaseUnit' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BaseUnit: answer.
	^answer asObject
!

baseUnit: rhs
	"Set the 'BaseUnit' property of the receiver to the <sdword> value of the argument."

	self put_BaseUnit: rhs
!

baseUnitIsAuto
	"Answer the <varbool> value of the 'BaseUnitIsAuto' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_BaseUnitIsAuto: answer.
	^answer asObject
!

baseUnitIsAuto: rhs
	"Set the 'BaseUnitIsAuto' property of the receiver to the <varbool> value of the argument."

	self put_BaseUnitIsAuto: rhs
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
	^answer asObject
!

categoryNames
	"Answer the <variant> value of the 'CategoryNames' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_CategoryNames: answer.
	^answer asObject
!

categoryNames: rhs
	"Set the 'CategoryNames' property of the receiver to the <variant> value of the argument."

	self put_CategoryNames: rhs asVariant
!

categoryType
	"Answer the <sdword> value of the 'CategoryType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CategoryType: answer.
	^answer asObject
!

categoryType: rhs
	"Set the 'CategoryType' property of the receiver to the <sdword> value of the argument."

	self put_CategoryType: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

crosses
	"Answer the <sdword> value of the 'Crosses' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Crosses: answer.
	^answer asObject
!

crosses: rhs
	"Set the 'Crosses' property of the receiver to the <sdword> value of the argument."

	self put_Crosses: rhs
!

crossesAt
	"Answer the <double> value of the 'CrossesAt' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_CrossesAt: answer.
	^answer asObject
!

crossesAt: rhs
	"Set the 'CrossesAt' property of the receiver to the <double> value of the argument."

	self put_CrossesAt: rhs
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

	<virtual stdcall: hresult 22 variant*>
	^self invalidCall!

displayUnit
	"Answer the <sdword> value of the 'DisplayUnit' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DisplayUnit: answer.
	^answer asObject
!

displayUnit: rhs
	"Set the 'DisplayUnit' property of the receiver to the <sdword> value of the argument."

	self put_DisplayUnit: rhs
!

displayUnitCustom
	"Answer the <double> value of the 'DisplayUnitCustom' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_DisplayUnitCustom: answer.
	^answer asObject
!

displayUnitCustom: rhs
	"Set the 'DisplayUnitCustom' property of the receiver to the <double> value of the argument."

	self put_DisplayUnitCustom: rhs
!

displayUnitLabel
	"Answer the <ExcelDisplayUnitLabel> value of the 'DisplayUnitLabel' property of the receiver."

	| answer |
	answer := ExcelDisplayUnitLabel newPointer.
	self get_DisplayUnitLabel: answer.
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

get_AxisBetweenCategories: rhs
	"Private - Get the value of the 'AxisBetweenCategories' property of the receiver.

		HRESULT __stdcall AxisBetweenCategories(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_AxisGroup: rhs
	"Private - Get the value of the 'AxisGroup' property of the receiver.

		HRESULT __stdcall AxisGroup(
			[out, retval]XlAxisGroup* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_AxisTitle: rhs
	"Private - Get the value of the 'AxisTitle' property of the receiver.

		HRESULT __stdcall AxisTitle(
			[out, retval]AxisTitle** RHS);"

	<virtual stdcall: hresult 14 ExcelAxisTitle**>
	^self invalidCall!

get_BaseUnit: rhs
	"Private - Get the value of the 'BaseUnit' property of the receiver.

		HRESULT __stdcall BaseUnit(
			[out, retval]XlTimeUnit* RHS);"

	<virtual stdcall: hresult 65 sdword*>
	^self invalidCall!

get_BaseUnitIsAuto: rhs
	"Private - Get the value of the 'BaseUnitIsAuto' property of the receiver.

		HRESULT __stdcall BaseUnitIsAuto(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 67 varbool*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 15 ExcelBorder**>
	^self invalidCall!

get_CategoryNames: rhs
	"Private - Get the value of the 'CategoryNames' property of the receiver.

		HRESULT __stdcall CategoryNames(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 variant*>
	^self invalidCall!

get_CategoryType: rhs
	"Private - Get the value of the 'CategoryType' property of the receiver.

		HRESULT __stdcall CategoryType(
			[out, retval]XlCategoryType* RHS);"

	<virtual stdcall: hresult 73 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Crosses: rhs
	"Private - Get the value of the 'Crosses' property of the receiver.

		HRESULT __stdcall Crosses(
			[out, retval]XlAxisCrosses* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_CrossesAt: rhs
	"Private - Get the value of the 'CrossesAt' property of the receiver.

		HRESULT __stdcall CrossesAt(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 20 double*>
	^self invalidCall!

get_DisplayUnit: rhs
	"Private - Get the value of the 'DisplayUnit' property of the receiver.

		HRESULT __stdcall DisplayUnit(
			[out, retval]XlDisplayUnit* RHS);"

	<virtual stdcall: hresult 79 sdword*>
	^self invalidCall!

get_DisplayUnitCustom: rhs
	"Private - Get the value of the 'DisplayUnitCustom' property of the receiver.

		HRESULT __stdcall DisplayUnitCustom(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 81 double*>
	^self invalidCall!

get_DisplayUnitLabel: rhs
	"Private - Get the value of the 'DisplayUnitLabel' property of the receiver.

		HRESULT __stdcall DisplayUnitLabel(
			[out, retval]DisplayUnitLabel** RHS);"

	<virtual stdcall: hresult 85 ExcelDisplayUnitLabel**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 90 ExcelChartFormat**>
	^self invalidCall!

get_HasDisplayUnitLabel: rhs
	"Private - Get the value of the 'HasDisplayUnitLabel' property of the receiver.

		HRESULT __stdcall HasDisplayUnitLabel(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 83 varbool*>
	^self invalidCall!

get_HasMajorGridlines: rhs
	"Private - Get the value of the 'HasMajorGridlines' property of the receiver.

		HRESULT __stdcall HasMajorGridlines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_HasMinorGridlines: rhs
	"Private - Get the value of the 'HasMinorGridlines' property of the receiver.

		HRESULT __stdcall HasMinorGridlines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_HasTitle: rhs
	"Private - Get the value of the 'HasTitle' property of the receiver.

		HRESULT __stdcall HasTitle(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 27 varbool*>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 78 double*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 75 double*>
	^self invalidCall!

get_LogBase: rhs
	"Private - Get the value of the 'LogBase' property of the receiver.

		HRESULT __stdcall LogBase(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 86 double*>
	^self invalidCall!

get_MajorGridlines: rhs
	"Private - Get the value of the 'MajorGridlines' property of the receiver.

		HRESULT __stdcall MajorGridlines(
			[out, retval]Gridlines** RHS);"

	<virtual stdcall: hresult 29 ExcelGridlines**>
	^self invalidCall!

get_MajorTickMark: rhs
	"Private - Get the value of the 'MajorTickMark' property of the receiver.

		HRESULT __stdcall MajorTickMark(
			[out, retval]XlTickMark* RHS);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_MajorUnit: rhs
	"Private - Get the value of the 'MajorUnit' property of the receiver.

		HRESULT __stdcall MajorUnit(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 32 double*>
	^self invalidCall!

get_MajorUnitIsAuto: rhs
	"Private - Get the value of the 'MajorUnitIsAuto' property of the receiver.

		HRESULT __stdcall MajorUnitIsAuto(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 34 varbool*>
	^self invalidCall!

get_MajorUnitScale: rhs
	"Private - Get the value of the 'MajorUnitScale' property of the receiver.

		HRESULT __stdcall MajorUnitScale(
			[out, retval]XlTimeUnit* RHS);"

	<virtual stdcall: hresult 69 sdword*>
	^self invalidCall!

get_MaximumScale: rhs
	"Private - Get the value of the 'MaximumScale' property of the receiver.

		HRESULT __stdcall MaximumScale(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 36 double*>
	^self invalidCall!

get_MaximumScaleIsAuto: rhs
	"Private - Get the value of the 'MaximumScaleIsAuto' property of the receiver.

		HRESULT __stdcall MaximumScaleIsAuto(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 38 varbool*>
	^self invalidCall!

get_MinimumScale: rhs
	"Private - Get the value of the 'MinimumScale' property of the receiver.

		HRESULT __stdcall MinimumScale(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 40 double*>
	^self invalidCall!

get_MinimumScaleIsAuto: rhs
	"Private - Get the value of the 'MinimumScaleIsAuto' property of the receiver.

		HRESULT __stdcall MinimumScaleIsAuto(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 42 varbool*>
	^self invalidCall!

get_MinorGridlines: rhs
	"Private - Get the value of the 'MinorGridlines' property of the receiver.

		HRESULT __stdcall MinorGridlines(
			[out, retval]Gridlines** RHS);"

	<virtual stdcall: hresult 44 ExcelGridlines**>
	^self invalidCall!

get_MinorTickMark: rhs
	"Private - Get the value of the 'MinorTickMark' property of the receiver.

		HRESULT __stdcall MinorTickMark(
			[out, retval]XlTickMark* RHS);"

	<virtual stdcall: hresult 45 sdword*>
	^self invalidCall!

get_MinorUnit: rhs
	"Private - Get the value of the 'MinorUnit' property of the receiver.

		HRESULT __stdcall MinorUnit(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 47 double*>
	^self invalidCall!

get_MinorUnitIsAuto: rhs
	"Private - Get the value of the 'MinorUnitIsAuto' property of the receiver.

		HRESULT __stdcall MinorUnitIsAuto(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 49 varbool*>
	^self invalidCall!

get_MinorUnitScale: rhs
	"Private - Get the value of the 'MinorUnitScale' property of the receiver.

		HRESULT __stdcall MinorUnitScale(
			[out, retval]XlTimeUnit* RHS);"

	<virtual stdcall: hresult 71 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ReversePlotOrder: rhs
	"Private - Get the value of the 'ReversePlotOrder' property of the receiver.

		HRESULT __stdcall ReversePlotOrder(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 51 varbool*>
	^self invalidCall!

get_ScaleType: rhs
	"Private - Get the value of the 'ScaleType' property of the receiver.

		HRESULT __stdcall ScaleType(
			[out, retval]XlScaleType* RHS);"

	<virtual stdcall: hresult 53 sdword*>
	^self invalidCall!

get_TickLabelPosition: rhs
	"Private - Get the value of the 'TickLabelPosition' property of the receiver.

		HRESULT __stdcall TickLabelPosition(
			[out, retval]XlTickLabelPosition* RHS);"

	<virtual stdcall: hresult 56 sdword*>
	^self invalidCall!

get_TickLabels: rhs
	"Private - Get the value of the 'TickLabels' property of the receiver.

		HRESULT __stdcall TickLabels(
			[out, retval]TickLabels** RHS);"

	<virtual stdcall: hresult 58 ExcelTickLabels**>
	^self invalidCall!

get_TickLabelSpacing: rhs
	"Private - Get the value of the 'TickLabelSpacing' property of the receiver.

		HRESULT __stdcall TickLabelSpacing(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 59 sdword*>
	^self invalidCall!

get_TickLabelSpacingIsAuto: rhs
	"Private - Get the value of the 'TickLabelSpacingIsAuto' property of the receiver.

		HRESULT __stdcall TickLabelSpacingIsAuto(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 88 varbool*>
	^self invalidCall!

get_TickMarkSpacing: rhs
	"Private - Get the value of the 'TickMarkSpacing' property of the receiver.

		HRESULT __stdcall TickMarkSpacing(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 61 sdword*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 76 double*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlAxisType* RHS);"

	<virtual stdcall: hresult 63 sdword*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 77 double*>
	^self invalidCall!

hasDisplayUnitLabel
	"Answer the <varbool> value of the 'HasDisplayUnitLabel' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasDisplayUnitLabel: answer.
	^answer asObject
!

hasDisplayUnitLabel: rhs
	"Set the 'HasDisplayUnitLabel' property of the receiver to the <varbool> value of the argument."

	self put_HasDisplayUnitLabel: rhs
!

hasMajorGridlines
	"Answer the <varbool> value of the 'HasMajorGridlines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasMajorGridlines: answer.
	^answer asObject
!

hasMajorGridlines: rhs
	"Set the 'HasMajorGridlines' property of the receiver to the <varbool> value of the argument."

	self put_HasMajorGridlines: rhs
!

hasMinorGridlines
	"Answer the <varbool> value of the 'HasMinorGridlines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasMinorGridlines: answer.
	^answer asObject
!

hasMinorGridlines: rhs
	"Set the 'HasMinorGridlines' property of the receiver to the <varbool> value of the argument."

	self put_HasMinorGridlines: rhs
!

hasTitle
	"Answer the <varbool> value of the 'HasTitle' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasTitle: answer.
	^answer asObject
!

hasTitle: rhs
	"Set the 'HasTitle' property of the receiver to the <varbool> value of the argument."

	self put_HasTitle: rhs
!

height
	"Answer the <double> value of the 'Height' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Height: answer.
	^answer asObject
!

left
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Left: answer.
	^answer asObject
!

logBase
	"Answer the <double> value of the 'LogBase' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_LogBase: answer.
	^answer asObject
!

logBase: rhs
	"Set the 'LogBase' property of the receiver to the <double> value of the argument."

	self put_LogBase: rhs
!

majorGridlines
	"Answer the <ExcelGridlines> value of the 'MajorGridlines' property of the receiver."

	| answer |
	answer := ExcelGridlines newPointer.
	self get_MajorGridlines: answer.
	^answer asObject
!

majorTickMark
	"Answer the <sdword> value of the 'MajorTickMark' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MajorTickMark: answer.
	^answer asObject
!

majorTickMark: rhs
	"Set the 'MajorTickMark' property of the receiver to the <sdword> value of the argument."

	self put_MajorTickMark: rhs
!

majorUnit
	"Answer the <double> value of the 'MajorUnit' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_MajorUnit: answer.
	^answer asObject
!

majorUnit: rhs
	"Set the 'MajorUnit' property of the receiver to the <double> value of the argument."

	self put_MajorUnit: rhs
!

majorUnitIsAuto
	"Answer the <varbool> value of the 'MajorUnitIsAuto' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MajorUnitIsAuto: answer.
	^answer asObject
!

majorUnitIsAuto: rhs
	"Set the 'MajorUnitIsAuto' property of the receiver to the <varbool> value of the argument."

	self put_MajorUnitIsAuto: rhs
!

majorUnitScale
	"Answer the <sdword> value of the 'MajorUnitScale' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MajorUnitScale: answer.
	^answer asObject
!

majorUnitScale: rhs
	"Set the 'MajorUnitScale' property of the receiver to the <sdword> value of the argument."

	self put_MajorUnitScale: rhs
!

maximumScale
	"Answer the <double> value of the 'MaximumScale' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_MaximumScale: answer.
	^answer asObject
!

maximumScale: rhs
	"Set the 'MaximumScale' property of the receiver to the <double> value of the argument."

	self put_MaximumScale: rhs
!

maximumScaleIsAuto
	"Answer the <varbool> value of the 'MaximumScaleIsAuto' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MaximumScaleIsAuto: answer.
	^answer asObject
!

maximumScaleIsAuto: rhs
	"Set the 'MaximumScaleIsAuto' property of the receiver to the <varbool> value of the argument."

	self put_MaximumScaleIsAuto: rhs
!

minimumScale
	"Answer the <double> value of the 'MinimumScale' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_MinimumScale: answer.
	^answer asObject
!

minimumScale: rhs
	"Set the 'MinimumScale' property of the receiver to the <double> value of the argument."

	self put_MinimumScale: rhs
!

minimumScaleIsAuto
	"Answer the <varbool> value of the 'MinimumScaleIsAuto' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MinimumScaleIsAuto: answer.
	^answer asObject
!

minimumScaleIsAuto: rhs
	"Set the 'MinimumScaleIsAuto' property of the receiver to the <varbool> value of the argument."

	self put_MinimumScaleIsAuto: rhs
!

minorGridlines
	"Answer the <ExcelGridlines> value of the 'MinorGridlines' property of the receiver."

	| answer |
	answer := ExcelGridlines newPointer.
	self get_MinorGridlines: answer.
	^answer asObject
!

minorTickMark
	"Answer the <sdword> value of the 'MinorTickMark' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MinorTickMark: answer.
	^answer asObject
!

minorTickMark: rhs
	"Set the 'MinorTickMark' property of the receiver to the <sdword> value of the argument."

	self put_MinorTickMark: rhs
!

minorUnit
	"Answer the <double> value of the 'MinorUnit' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_MinorUnit: answer.
	^answer asObject
!

minorUnit: rhs
	"Set the 'MinorUnit' property of the receiver to the <double> value of the argument."

	self put_MinorUnit: rhs
!

minorUnitIsAuto
	"Answer the <varbool> value of the 'MinorUnitIsAuto' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MinorUnitIsAuto: answer.
	^answer asObject
!

minorUnitIsAuto: rhs
	"Set the 'MinorUnitIsAuto' property of the receiver to the <varbool> value of the argument."

	self put_MinorUnitIsAuto: rhs
!

minorUnitScale
	"Answer the <sdword> value of the 'MinorUnitScale' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MinorUnitScale: answer.
	^answer asObject
!

minorUnitScale: rhs
	"Set the 'MinorUnitScale' property of the receiver to the <sdword> value of the argument."

	self put_MinorUnitScale: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AxisBetweenCategories: rhs
	"Private - Set the value of the 'AxisBetweenCategories' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AxisBetweenCategories(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_BaseUnit: rhs
	"Private - Set the value of the 'BaseUnit' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall BaseUnit(
			[in]XlTimeUnit RHS);"

	<virtual stdcall: hresult 66 sdword>
	^self invalidCall!

put_BaseUnitIsAuto: rhs
	"Private - Set the value of the 'BaseUnitIsAuto' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall BaseUnitIsAuto(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 68 varbool>
	^self invalidCall!

put_CategoryNames: rhs
	"Private - Set the value of the 'CategoryNames' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall CategoryNames(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 17 variant>
	^self invalidCall!

put_CategoryType: rhs
	"Private - Set the value of the 'CategoryType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CategoryType(
			[in]XlCategoryType RHS);"

	<virtual stdcall: hresult 74 sdword>
	^self invalidCall!

put_Crosses: rhs
	"Private - Set the value of the 'Crosses' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Crosses(
			[in]XlAxisCrosses RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_CrossesAt: rhs
	"Private - Set the value of the 'CrossesAt' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall CrossesAt(
			[in]double RHS);"

	<virtual stdcall: hresult 21 double>
	^self invalidCall!

put_DisplayUnit: rhs
	"Private - Set the value of the 'DisplayUnit' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall DisplayUnit(
			[in]XlDisplayUnit RHS);"

	<virtual stdcall: hresult 80 sdword>
	^self invalidCall!

put_DisplayUnitCustom: rhs
	"Private - Set the value of the 'DisplayUnitCustom' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall DisplayUnitCustom(
			[in]double RHS);"

	<virtual stdcall: hresult 82 double>
	^self invalidCall!

put_HasDisplayUnitLabel: rhs
	"Private - Set the value of the 'HasDisplayUnitLabel' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasDisplayUnitLabel(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 84 varbool>
	^self invalidCall!

put_HasMajorGridlines: rhs
	"Private - Set the value of the 'HasMajorGridlines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasMajorGridlines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 24 varbool>
	^self invalidCall!

put_HasMinorGridlines: rhs
	"Private - Set the value of the 'HasMinorGridlines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasMinorGridlines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_HasTitle: rhs
	"Private - Set the value of the 'HasTitle' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasTitle(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 28 varbool>
	^self invalidCall!

put_LogBase: rhs
	"Private - Set the value of the 'LogBase' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall LogBase(
			[in]double RHS);"

	<virtual stdcall: hresult 87 double>
	^self invalidCall!

put_MajorTickMark: rhs
	"Private - Set the value of the 'MajorTickMark' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MajorTickMark(
			[in]XlTickMark RHS);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

put_MajorUnit: rhs
	"Private - Set the value of the 'MajorUnit' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall MajorUnit(
			[in]double RHS);"

	<virtual stdcall: hresult 33 double>
	^self invalidCall!

put_MajorUnitIsAuto: rhs
	"Private - Set the value of the 'MajorUnitIsAuto' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MajorUnitIsAuto(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 35 varbool>
	^self invalidCall!

put_MajorUnitScale: rhs
	"Private - Set the value of the 'MajorUnitScale' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MajorUnitScale(
			[in]XlTimeUnit RHS);"

	<virtual stdcall: hresult 70 sdword>
	^self invalidCall!

put_MaximumScale: rhs
	"Private - Set the value of the 'MaximumScale' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall MaximumScale(
			[in]double RHS);"

	<virtual stdcall: hresult 37 double>
	^self invalidCall!

put_MaximumScaleIsAuto: rhs
	"Private - Set the value of the 'MaximumScaleIsAuto' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MaximumScaleIsAuto(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 39 varbool>
	^self invalidCall!

put_MinimumScale: rhs
	"Private - Set the value of the 'MinimumScale' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall MinimumScale(
			[in]double RHS);"

	<virtual stdcall: hresult 41 double>
	^self invalidCall!

put_MinimumScaleIsAuto: rhs
	"Private - Set the value of the 'MinimumScaleIsAuto' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MinimumScaleIsAuto(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 43 varbool>
	^self invalidCall!

put_MinorTickMark: rhs
	"Private - Set the value of the 'MinorTickMark' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MinorTickMark(
			[in]XlTickMark RHS);"

	<virtual stdcall: hresult 46 sdword>
	^self invalidCall!

put_MinorUnit: rhs
	"Private - Set the value of the 'MinorUnit' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall MinorUnit(
			[in]double RHS);"

	<virtual stdcall: hresult 48 double>
	^self invalidCall!

put_MinorUnitIsAuto: rhs
	"Private - Set the value of the 'MinorUnitIsAuto' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MinorUnitIsAuto(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 50 varbool>
	^self invalidCall!

put_MinorUnitScale: rhs
	"Private - Set the value of the 'MinorUnitScale' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MinorUnitScale(
			[in]XlTimeUnit RHS);"

	<virtual stdcall: hresult 72 sdword>
	^self invalidCall!

put_ReversePlotOrder: rhs
	"Private - Set the value of the 'ReversePlotOrder' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ReversePlotOrder(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 52 varbool>
	^self invalidCall!

put_ScaleType: rhs
	"Private - Set the value of the 'ScaleType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScaleType(
			[in]XlScaleType RHS);"

	<virtual stdcall: hresult 54 sdword>
	^self invalidCall!

put_TickLabelPosition: rhs
	"Private - Set the value of the 'TickLabelPosition' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TickLabelPosition(
			[in]XlTickLabelPosition RHS);"

	<virtual stdcall: hresult 57 sdword>
	^self invalidCall!

put_TickLabelSpacing: rhs
	"Private - Set the value of the 'TickLabelSpacing' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TickLabelSpacing(
			[in]long RHS);"

	<virtual stdcall: hresult 60 sdword>
	^self invalidCall!

put_TickLabelSpacingIsAuto: rhs
	"Private - Set the value of the 'TickLabelSpacingIsAuto' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall TickLabelSpacingIsAuto(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 89 varbool>
	^self invalidCall!

put_TickMarkSpacing: rhs
	"Private - Set the value of the 'TickMarkSpacing' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TickMarkSpacing(
			[in]long RHS);"

	<virtual stdcall: hresult 62 sdword>
	^self invalidCall!

put_Type: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Type(
			[in]XlAxisType RHS);"

	<virtual stdcall: hresult 64 sdword>
	^self invalidCall!

reversePlotOrder
	"Answer the <varbool> value of the 'ReversePlotOrder' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ReversePlotOrder: answer.
	^answer asObject
!

reversePlotOrder: rhs
	"Set the 'ReversePlotOrder' property of the receiver to the <varbool> value of the argument."

	self put_ReversePlotOrder: rhs
!

scaleType
	"Answer the <sdword> value of the 'ScaleType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ScaleType: answer.
	^answer asObject
!

scaleType: rhs
	"Set the 'ScaleType' property of the receiver to the <sdword> value of the argument."

	self put_ScaleType: rhs
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

	<virtual stdcall: hresult 55 variant*>
	^self invalidCall!

tickLabelPosition
	"Answer the <sdword> value of the 'TickLabelPosition' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TickLabelPosition: answer.
	^answer asObject
!

tickLabelPosition: rhs
	"Set the 'TickLabelPosition' property of the receiver to the <sdword> value of the argument."

	self put_TickLabelPosition: rhs
!

tickLabels
	"Answer the <ExcelTickLabels> value of the 'TickLabels' property of the receiver."

	| answer |
	answer := ExcelTickLabels newPointer.
	self get_TickLabels: answer.
	^answer asObject
!

tickLabelSpacing
	"Answer the <sdword> value of the 'TickLabelSpacing' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TickLabelSpacing: answer.
	^answer asObject
!

tickLabelSpacing: rhs
	"Set the 'TickLabelSpacing' property of the receiver to the <sdword> value of the argument."

	self put_TickLabelSpacing: rhs
!

tickLabelSpacingIsAuto
	"Answer the <varbool> value of the 'TickLabelSpacingIsAuto' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_TickLabelSpacingIsAuto: answer.
	^answer asObject
!

tickLabelSpacingIsAuto: rhs
	"Set the 'TickLabelSpacingIsAuto' property of the receiver to the <varbool> value of the argument."

	self put_TickLabelSpacingIsAuto: rhs
!

tickMarkSpacing
	"Answer the <sdword> value of the 'TickMarkSpacing' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TickMarkSpacing: answer.
	^answer asObject
!

tickMarkSpacing: rhs
	"Set the 'TickMarkSpacing' property of the receiver to the <sdword> value of the argument."

	self put_TickMarkSpacing: rhs
!

top
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Top: answer.
	^answer asObject
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

width
	"Answer the <double> value of the 'Width' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Width: answer.
	^answer asObject
! !
!ExcelIAxis categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #axisBetweenCategories!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #axisBetweenCategories:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #axisGroup!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #axisTitle!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #baseUnit!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #baseUnit:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #baseUnitIsAuto!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #baseUnitIsAuto:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #categoryNames!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #categoryNames:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #categoryType!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #categoryType:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #crosses!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #crosses:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #crossesAt!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #crossesAt:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIAxis categoriesFor: #Delete:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #displayUnit!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #displayUnit:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #displayUnitCustom!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #displayUnitCustom:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #displayUnitLabel!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #format!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_AxisBetweenCategories:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_AxisGroup:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_AxisTitle:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_BaseUnit:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_BaseUnitIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_CategoryNames:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_CategoryType:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Crosses:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_CrossesAt:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_DisplayUnit:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_DisplayUnitCustom:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_DisplayUnitLabel:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Format:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_HasDisplayUnitLabel:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_HasMajorGridlines:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_HasMinorGridlines:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_HasTitle:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_LogBase:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MajorGridlines:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MajorTickMark:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MajorUnit:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MajorUnitIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MajorUnitScale:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MaximumScale:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MaximumScaleIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MinimumScale:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MinimumScaleIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MinorGridlines:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MinorTickMark:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MinorUnit:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MinorUnitIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_MinorUnitScale:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_ReversePlotOrder:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_ScaleType:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_TickLabelPosition:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_TickLabels:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_TickLabelSpacing:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_TickLabelSpacingIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_TickMarkSpacing:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #hasDisplayUnitLabel!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #hasDisplayUnitLabel:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #hasMajorGridlines!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #hasMajorGridlines:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #hasMinorGridlines!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #hasMinorGridlines:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #hasTitle!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #hasTitle:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #logBase!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #logBase:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorGridlines!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorTickMark!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorTickMark:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorUnit!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorUnit:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorUnitIsAuto!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorUnitIsAuto:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorUnitScale!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #majorUnitScale:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #maximumScale!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #maximumScale:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #maximumScaleIsAuto!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #maximumScaleIsAuto:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minimumScale!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minimumScale:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minimumScaleIsAuto!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minimumScaleIsAuto:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorGridlines!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorTickMark!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorTickMark:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorUnit!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorUnit:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorUnitIsAuto!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorUnitIsAuto:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorUnitScale!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #minorUnitScale:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #put_AxisBetweenCategories:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_BaseUnit:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_BaseUnitIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_CategoryNames:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_CategoryType:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_Crosses:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_CrossesAt:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_DisplayUnit:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_DisplayUnitCustom:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_HasDisplayUnitLabel:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_HasMajorGridlines:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_HasMinorGridlines:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_HasTitle:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_LogBase:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MajorTickMark:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MajorUnit:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MajorUnitIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MajorUnitScale:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MaximumScale:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MaximumScaleIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MinimumScale:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MinimumScaleIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MinorTickMark:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MinorUnit:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MinorUnitIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_MinorUnitScale:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_ReversePlotOrder:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_ScaleType:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_TickLabelPosition:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_TickLabelSpacing:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_TickLabelSpacingIsAuto:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_TickMarkSpacing:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #put_Type:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #reversePlotOrder!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #reversePlotOrder:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #scaleType!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #scaleType:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIAxis categoriesFor: #Select:!**auto generated**!COM Interfaces-IAxis!private! !
!ExcelIAxis categoriesFor: #tickLabelPosition!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #tickLabelPosition:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #tickLabels!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #tickLabelSpacing!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #tickLabelSpacing:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #tickLabelSpacingIsAuto!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #tickLabelSpacingIsAuto:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #tickMarkSpacing!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #tickMarkSpacing:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelIAxis categoriesFor: #width!**auto generated**!properties!public! !

!ExcelIAxis class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAxis'
		ExcelIAxis defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_AxisBetweenCategories:
			argumentTypes: 'varbool*';
		defineFunction: #put_AxisBetweenCategories:
			argumentTypes: 'varbool';
		defineFunction: #get_AxisGroup:
			argumentTypes: 'sdword*';
		defineFunction: #get_AxisTitle:
			argumentTypes: 'ExcelAxisTitle**';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #get_CategoryNames:
			argumentTypes: 'variant*';
		defineFunction: #put_CategoryNames:
			argumentTypes: 'variant';
		defineFunction: #get_Crosses:
			argumentTypes: 'sdword*';
		defineFunction: #put_Crosses:
			argumentTypes: 'sdword';
		defineFunction: #get_CrossesAt:
			argumentTypes: 'double*';
		defineFunction: #put_CrossesAt:
			argumentTypes: 'double';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_HasMajorGridlines:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasMajorGridlines:
			argumentTypes: 'varbool';
		defineFunction: #get_HasMinorGridlines:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasMinorGridlines:
			argumentTypes: 'varbool';
		defineFunction: #get_HasTitle:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasTitle:
			argumentTypes: 'varbool';
		defineFunction: #get_MajorGridlines:
			argumentTypes: 'ExcelGridlines**';
		defineFunction: #get_MajorTickMark:
			argumentTypes: 'sdword*';
		defineFunction: #put_MajorTickMark:
			argumentTypes: 'sdword';
		defineFunction: #get_MajorUnit:
			argumentTypes: 'double*';
		defineFunction: #put_MajorUnit:
			argumentTypes: 'double';
		defineFunction: #get_MajorUnitIsAuto:
			argumentTypes: 'varbool*';
		defineFunction: #put_MajorUnitIsAuto:
			argumentTypes: 'varbool';
		defineFunction: #get_MaximumScale:
			argumentTypes: 'double*';
		defineFunction: #put_MaximumScale:
			argumentTypes: 'double';
		defineFunction: #get_MaximumScaleIsAuto:
			argumentTypes: 'varbool*';
		defineFunction: #put_MaximumScaleIsAuto:
			argumentTypes: 'varbool';
		defineFunction: #get_MinimumScale:
			argumentTypes: 'double*';
		defineFunction: #put_MinimumScale:
			argumentTypes: 'double';
		defineFunction: #get_MinimumScaleIsAuto:
			argumentTypes: 'varbool*';
		defineFunction: #put_MinimumScaleIsAuto:
			argumentTypes: 'varbool';
		defineFunction: #get_MinorGridlines:
			argumentTypes: 'ExcelGridlines**';
		defineFunction: #get_MinorTickMark:
			argumentTypes: 'sdword*';
		defineFunction: #put_MinorTickMark:
			argumentTypes: 'sdword';
		defineFunction: #get_MinorUnit:
			argumentTypes: 'double*';
		defineFunction: #put_MinorUnit:
			argumentTypes: 'double';
		defineFunction: #get_MinorUnitIsAuto:
			argumentTypes: 'varbool*';
		defineFunction: #put_MinorUnitIsAuto:
			argumentTypes: 'varbool';
		defineFunction: #get_ReversePlotOrder:
			argumentTypes: 'varbool*';
		defineFunction: #put_ReversePlotOrder:
			argumentTypes: 'varbool';
		defineFunction: #get_ScaleType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScaleType:
			argumentTypes: 'sdword';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_TickLabelPosition:
			argumentTypes: 'sdword*';
		defineFunction: #put_TickLabelPosition:
			argumentTypes: 'sdword';
		defineFunction: #get_TickLabels:
			argumentTypes: 'ExcelTickLabels**';
		defineFunction: #get_TickLabelSpacing:
			argumentTypes: 'sdword*';
		defineFunction: #put_TickLabelSpacing:
			argumentTypes: 'sdword';
		defineFunction: #get_TickMarkSpacing:
			argumentTypes: 'sdword*';
		defineFunction: #put_TickMarkSpacing:
			argumentTypes: 'sdword';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword';
		defineFunction: #get_BaseUnit:
			argumentTypes: 'sdword*';
		defineFunction: #put_BaseUnit:
			argumentTypes: 'sdword';
		defineFunction: #get_BaseUnitIsAuto:
			argumentTypes: 'varbool*';
		defineFunction: #put_BaseUnitIsAuto:
			argumentTypes: 'varbool';
		defineFunction: #get_MajorUnitScale:
			argumentTypes: 'sdword*';
		defineFunction: #put_MajorUnitScale:
			argumentTypes: 'sdword';
		defineFunction: #get_MinorUnitScale:
			argumentTypes: 'sdword*';
		defineFunction: #put_MinorUnitScale:
			argumentTypes: 'sdword';
		defineFunction: #get_CategoryType:
			argumentTypes: 'sdword*';
		defineFunction: #put_CategoryType:
			argumentTypes: 'sdword';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #get_Width:
			argumentTypes: 'double*';
		defineFunction: #get_Height:
			argumentTypes: 'double*';
		defineFunction: #get_DisplayUnit:
			argumentTypes: 'sdword*';
		defineFunction: #put_DisplayUnit:
			argumentTypes: 'sdword';
		defineFunction: #get_DisplayUnitCustom:
			argumentTypes: 'double*';
		defineFunction: #put_DisplayUnitCustom:
			argumentTypes: 'double';
		defineFunction: #get_HasDisplayUnitLabel:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasDisplayUnitLabel:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayUnitLabel:
			argumentTypes: 'ExcelDisplayUnitLabel**';
		defineFunction: #get_LogBase:
			argumentTypes: 'double*';
		defineFunction: #put_LogBase:
			argumentTypes: 'double';
		defineFunction: #get_TickLabelSpacingIsAuto:
			argumentTypes: 'varbool*';
		defineFunction: #put_TickLabelSpacingIsAuto:
			argumentTypes: 'varbool';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAxis initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAxis class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAxis class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

