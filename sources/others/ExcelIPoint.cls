"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPoint
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPoint guid: (IID fromString: '{0002086A-0001-0000-C000-000000000046}')!
ExcelIPoint comment: '<ExcelIPoint> is a wrapper class for the COM interface ''Excel.IPoint'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002086A-0001-0000-C000-000000000046), 
	helpcontext(0x0002002a), 
	hidden
]
interface IPoint : IDispatch
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
	[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000070), helpcontext(0x00010070)]
	HRESULT __stdcall ClearFormats(
		[out, retval]VARIANT* RHS);
	[id(0x00000227), helpcontext(0x00010227)]
	HRESULT __stdcall Copy(
		[out, retval]VARIANT* RHS);
	[id(0x0000009e), propget, helpcontext(0x0001009e)]
	HRESULT __stdcall DataLabel(
		[out, retval]DataLabel** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x000000b6), propget, helpcontext(0x000100b6)]
	HRESULT __stdcall Explosion(
		[out, retval]long* RHS);
	[id(0x000000b6), propput, helpcontext(0x000100b6)]
	HRESULT __stdcall Explosion(
		[in]long RHS);
	[id(0x0000004d), propget, helpcontext(0x0001004d)]
	HRESULT __stdcall HasDataLabel(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000004d), propput, helpcontext(0x0001004d)]
	HRESULT __stdcall HasDataLabel(
		[in]VARIANT_BOOL RHS);
	[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
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
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
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
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x0000067e), propget, helpcontext(0x0001067e)]
	HRESULT __stdcall SecondaryPlot(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000067e), propput, helpcontext(0x0001067e)]
	HRESULT __stdcall SecondaryPlot(
		[in]VARIANT_BOOL RHS);
	[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
	HRESULT __stdcall Fill(
		[out, retval]ChartFillFormat** RHS);
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
	[id(0x00000681), propget, helpcontext(0x00010681)]
	HRESULT __stdcall Has3DEffect(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000681), propput, helpcontext(0x00010681)]
	HRESULT __stdcall Has3DEffect(
		[in]VARIANT_BOOL RHS);
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
!ExcelIPoint categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPoint methodsFor!

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

	<virtual stdcall: hresult 53 sdword variant variant variant variant variant variant variant variant variant variant*>
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

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
	^answer asObject
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

	<virtual stdcall: hresult 13 variant*>
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

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dataLabel
	"Answer the <ExcelDataLabel> value of the 'DataLabel' property of the receiver."

	| answer |
	answer := ExcelDataLabel newPointer.
	self get_DataLabel: answer.
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

	<virtual stdcall: hresult 16 variant*>
	^self invalidCall!

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

	<virtual stdcall: hresult 46 varbool*>
	^self invalidCall!

get_ApplyPictToFront: rhs
	"Private - Get the value of the 'ApplyPictToFront' property of the receiver.

		HRESULT __stdcall ApplyPictToFront(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 44 varbool*>
	^self invalidCall!

get_ApplyPictToSides: rhs
	"Private - Get the value of the 'ApplyPictToSides' property of the receiver.

		HRESULT __stdcall ApplyPictToSides(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 42 varbool*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 12 ExcelBorder**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DataLabel: rhs
	"Private - Get the value of the 'DataLabel' property of the receiver.

		HRESULT __stdcall DataLabel(
			[out, retval]DataLabel** RHS);"

	<virtual stdcall: hresult 15 ExcelDataLabel**>
	^self invalidCall!

get_Explosion: rhs
	"Private - Get the value of the 'Explosion' property of the receiver.

		HRESULT __stdcall Explosion(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_Fill: rhs
	"Private - Get the value of the 'Fill' property of the receiver.

		HRESULT __stdcall Fill(
			[out, retval]ChartFillFormat** RHS);"

	<virtual stdcall: hresult 52 ExcelChartFillFormat**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 58 ExcelChartFormat**>
	^self invalidCall!

get_Has3DEffect: rhs
	"Private - Get the value of the 'Has3DEffect' property of the receiver.

		HRESULT __stdcall Has3DEffect(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 54 varbool*>
	^self invalidCall!

get_HasDataLabel: rhs
	"Private - Get the value of the 'HasDataLabel' property of the receiver.

		HRESULT __stdcall HasDataLabel(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 21 ExcelInterior**>
	^self invalidCall!

get_InvertIfNegative: rhs
	"Private - Get the value of the 'InvertIfNegative' property of the receiver.

		HRESULT __stdcall InvertIfNegative(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 22 varbool*>
	^self invalidCall!

get_MarkerBackgroundColor: rhs
	"Private - Get the value of the 'MarkerBackgroundColor' property of the receiver.

		HRESULT __stdcall MarkerBackgroundColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_MarkerBackgroundColorIndex: rhs
	"Private - Get the value of the 'MarkerBackgroundColorIndex' property of the receiver.

		HRESULT __stdcall MarkerBackgroundColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 26 sdword*>
	^self invalidCall!

get_MarkerForegroundColor: rhs
	"Private - Get the value of the 'MarkerForegroundColor' property of the receiver.

		HRESULT __stdcall MarkerForegroundColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_MarkerForegroundColorIndex: rhs
	"Private - Get the value of the 'MarkerForegroundColorIndex' property of the receiver.

		HRESULT __stdcall MarkerForegroundColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_MarkerSize: rhs
	"Private - Get the value of the 'MarkerSize' property of the receiver.

		HRESULT __stdcall MarkerSize(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 32 sdword*>
	^self invalidCall!

get_MarkerStyle: rhs
	"Private - Get the value of the 'MarkerStyle' property of the receiver.

		HRESULT __stdcall MarkerStyle(
			[out, retval]XlMarkerStyle* RHS);"

	<virtual stdcall: hresult 34 sdword*>
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

	<virtual stdcall: hresult 37 sdword*>
	^self invalidCall!

get_PictureUnit: rhs
	"Private - Get the value of the 'PictureUnit' property of the receiver.

		HRESULT __stdcall PictureUnit(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 39 sdword*>
	^self invalidCall!

get_PictureUnit2: rhs
	"Private - Get the value of the 'PictureUnit2' property of the receiver.

		HRESULT __stdcall PictureUnit2(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 56 double*>
	^self invalidCall!

get_SecondaryPlot: rhs
	"Private - Get the value of the 'SecondaryPlot' property of the receiver.

		HRESULT __stdcall SecondaryPlot(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 50 varbool*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 48 varbool*>
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

hasDataLabel
	"Answer the <varbool> value of the 'HasDataLabel' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasDataLabel: answer.
	^answer asObject
!

hasDataLabel: rhs
	"Set the 'HasDataLabel' property of the receiver to the <varbool> value of the argument."

	self put_HasDataLabel: rhs
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

	<virtual stdcall: hresult 36 variant*>
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

put_ApplyPictToEnd: rhs
	"Private - Set the value of the 'ApplyPictToEnd' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ApplyPictToEnd(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 47 varbool>
	^self invalidCall!

put_ApplyPictToFront: rhs
	"Private - Set the value of the 'ApplyPictToFront' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ApplyPictToFront(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 45 varbool>
	^self invalidCall!

put_ApplyPictToSides: rhs
	"Private - Set the value of the 'ApplyPictToSides' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ApplyPictToSides(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 43 varbool>
	^self invalidCall!

put_Explosion: rhs
	"Private - Set the value of the 'Explosion' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Explosion(
			[in]long RHS);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_Has3DEffect: rhs
	"Private - Set the value of the 'Has3DEffect' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Has3DEffect(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 55 varbool>
	^self invalidCall!

put_HasDataLabel: rhs
	"Private - Set the value of the 'HasDataLabel' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasDataLabel(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_InvertIfNegative: rhs
	"Private - Set the value of the 'InvertIfNegative' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InvertIfNegative(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 23 varbool>
	^self invalidCall!

put_MarkerBackgroundColor: rhs
	"Private - Set the value of the 'MarkerBackgroundColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerBackgroundColor(
			[in]long RHS);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

put_MarkerBackgroundColorIndex: rhs
	"Private - Set the value of the 'MarkerBackgroundColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerBackgroundColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 27 sdword>
	^self invalidCall!

put_MarkerForegroundColor: rhs
	"Private - Set the value of the 'MarkerForegroundColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerForegroundColor(
			[in]long RHS);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_MarkerForegroundColorIndex: rhs
	"Private - Set the value of the 'MarkerForegroundColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerForegroundColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

put_MarkerSize: rhs
	"Private - Set the value of the 'MarkerSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerSize(
			[in]long RHS);"

	<virtual stdcall: hresult 33 sdword>
	^self invalidCall!

put_MarkerStyle: rhs
	"Private - Set the value of the 'MarkerStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerStyle(
			[in]XlMarkerStyle RHS);"

	<virtual stdcall: hresult 35 sdword>
	^self invalidCall!

put_PictureType: rhs
	"Private - Set the value of the 'PictureType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PictureType(
			[in]XlChartPictureType RHS);"

	<virtual stdcall: hresult 38 sdword>
	^self invalidCall!

put_PictureUnit: rhs
	"Private - Set the value of the 'PictureUnit' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PictureUnit(
			[in]long RHS);"

	<virtual stdcall: hresult 40 sdword>
	^self invalidCall!

put_PictureUnit2: rhs
	"Private - Set the value of the 'PictureUnit2' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall PictureUnit2(
			[in]double RHS);"

	<virtual stdcall: hresult 57 double>
	^self invalidCall!

put_SecondaryPlot: rhs
	"Private - Set the value of the 'SecondaryPlot' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall SecondaryPlot(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 51 varbool>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 49 varbool>
	^self invalidCall!

secondaryPlot
	"Answer the <varbool> value of the 'SecondaryPlot' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_SecondaryPlot: answer.
	^answer asObject
!

secondaryPlot: rhs
	"Set the 'SecondaryPlot' property of the receiver to the <varbool> value of the argument."

	self put_SecondaryPlot: rhs
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

	<virtual stdcall: hresult 41 variant*>
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
! !
!ExcelIPoint categoriesFor: #_applyDataLabels!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #_applyDataLabels:legendKey:autoText:hasLeaderLines:!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #_ApplyDataLabels:legendKey:autoText:hasLeaderLines:rhs:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #applyDataLabels!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #applyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #ApplyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:rhs:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #applyPictToEnd!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #applyPictToEnd:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #applyPictToFront!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #applyPictToFront:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #applyPictToSides!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #applyPictToSides:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #ClearFormats:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #Copy:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #dataLabel!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #Delete:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #explosion!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #explosion:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #format!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_ApplyPictToEnd:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_ApplyPictToFront:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_ApplyPictToSides:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_DataLabel:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Explosion:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Format:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Has3DEffect:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_HasDataLabel:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_InvertIfNegative:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_MarkerBackgroundColor:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_MarkerBackgroundColorIndex:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_MarkerForegroundColor:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_MarkerForegroundColorIndex:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_MarkerSize:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_MarkerStyle:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_PictureType:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_PictureUnit:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_PictureUnit2:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_SecondaryPlot:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #has3DEffect!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #has3DEffect:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #hasDataLabel!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #hasDataLabel:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #invertIfNegative!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #invertIfNegative:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerBackgroundColor!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerBackgroundColor:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerBackgroundColorIndex!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerBackgroundColorIndex:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerForegroundColor!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerForegroundColor:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerForegroundColorIndex!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerForegroundColorIndex:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerSize!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerSize:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerStyle!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #markerStyle:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #Paste:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #pictureType!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #pictureType:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #pictureUnit!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #pictureUnit:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #pictureUnit2!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #pictureUnit2:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #put_ApplyPictToEnd:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_ApplyPictToFront:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_ApplyPictToSides:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_Explosion:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_Has3DEffect:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_HasDataLabel:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_InvertIfNegative:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_MarkerBackgroundColor:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_MarkerBackgroundColorIndex:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_MarkerForegroundColor:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_MarkerForegroundColorIndex:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_MarkerSize:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_MarkerStyle:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_PictureType:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_PictureUnit:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_PictureUnit2:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_SecondaryPlot:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #secondaryPlot!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #secondaryPlot:!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIPoint categoriesFor: #Select:!**auto generated**!COM Interfaces-IPoint!private! !
!ExcelIPoint categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIPoint categoriesFor: #shadow:!**auto generated**!properties!public! !

!ExcelIPoint class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPoint'
		ExcelIPoint defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #_ApplyDataLabels:legendKey:autoText:hasLeaderLines:rhs:
			argumentTypes: 'sdword variant variant variant variant*';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #ClearFormats:
			argumentTypes: 'variant*';
		defineFunction: #Copy:
			argumentTypes: 'variant*';
		defineFunction: #get_DataLabel:
			argumentTypes: 'ExcelDataLabel**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_Explosion:
			argumentTypes: 'sdword*';
		defineFunction: #put_Explosion:
			argumentTypes: 'sdword';
		defineFunction: #get_HasDataLabel:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasDataLabel:
			argumentTypes: 'varbool';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
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
		defineFunction: #Select:
			argumentTypes: 'variant*';
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
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #get_SecondaryPlot:
			argumentTypes: 'varbool*';
		defineFunction: #put_SecondaryPlot:
			argumentTypes: 'varbool';
		defineFunction: #get_Fill:
			argumentTypes: 'ExcelChartFillFormat**';
		defineFunction: #ApplyDataLabels:legendKey:autoText:hasLeaderLines:showSeriesName:showCategoryName:showValue:showPercentage:showBubbleSize:separator:rhs:
			argumentTypes: 'sdword variant variant variant variant variant variant variant variant variant variant*';
		defineFunction: #get_Has3DEffect:
			argumentTypes: 'varbool*';
		defineFunction: #put_Has3DEffect:
			argumentTypes: 'varbool';
		defineFunction: #get_PictureUnit2:
			argumentTypes: 'double*';
		defineFunction: #put_PictureUnit2:
			argumentTypes: 'double';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPoint initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPoint class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPoint class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

