"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelILegendKey
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelILegendKey guid: (IID fromString: '{000208BC-0001-0000-C000-000000000046}')!
ExcelILegendKey comment: '<ExcelILegendKey> is a wrapper class for the COM interface ''Excel.ILegendKey'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208BC-0001-0000-C000-000000000046), 
	helpcontext(0x0002007c), 
	hidden
]
interface ILegendKey : IDispatch
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
	[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000070), helpcontext(0x00010070)]
	HRESULT __stdcall ClearFormats(
		[out, retval]VARIANT* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
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
	[id(0x000000a1), propget, helpcontext(0x000100a1)]
	HRESULT __stdcall PictureType(
		[out, retval]long* RHS);
	[id(0x000000a1), propput, helpcontext(0x000100a1)]
	HRESULT __stdcall PictureType(
		[in]long RHS);
	[id(0x000000a2), hidden, propget, helpcontext(0x000100a2)]
	HRESULT __stdcall PictureUnit(
		[out, retval]long* RHS);
	[id(0x000000a2), hidden, propput, helpcontext(0x000100a2)]
	HRESULT __stdcall PictureUnit(
		[in]long RHS);
	[id(0x000000eb), hidden, helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x000000a3), propget, helpcontext(0x000100a3)]
	HRESULT __stdcall Smooth(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000a3), propput, helpcontext(0x000100a3)]
	HRESULT __stdcall Smooth(
		[in]VARIANT_BOOL RHS);
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
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
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
!ExcelILegendKey categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelILegendKey methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
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

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

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

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

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

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 11 ExcelBorder**>
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

	<virtual stdcall: hresult 15 ExcelChartFillFormat**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 45 ExcelChartFormat**>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 40 double*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 14 ExcelInterior**>
	^self invalidCall!

get_InvertIfNegative: rhs
	"Private - Get the value of the 'InvertIfNegative' property of the receiver.

		HRESULT __stdcall InvertIfNegative(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 37 double*>
	^self invalidCall!

get_MarkerBackgroundColor: rhs
	"Private - Get the value of the 'MarkerBackgroundColor' property of the receiver.

		HRESULT __stdcall MarkerBackgroundColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_MarkerBackgroundColorIndex: rhs
	"Private - Get the value of the 'MarkerBackgroundColorIndex' property of the receiver.

		HRESULT __stdcall MarkerBackgroundColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_MarkerForegroundColor: rhs
	"Private - Get the value of the 'MarkerForegroundColor' property of the receiver.

		HRESULT __stdcall MarkerForegroundColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_MarkerForegroundColorIndex: rhs
	"Private - Get the value of the 'MarkerForegroundColorIndex' property of the receiver.

		HRESULT __stdcall MarkerForegroundColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_MarkerSize: rhs
	"Private - Get the value of the 'MarkerSize' property of the receiver.

		HRESULT __stdcall MarkerSize(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 26 sdword*>
	^self invalidCall!

get_MarkerStyle: rhs
	"Private - Get the value of the 'MarkerStyle' property of the receiver.

		HRESULT __stdcall MarkerStyle(
			[out, retval]XlMarkerStyle* RHS);"

	<virtual stdcall: hresult 28 sdword*>
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
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_PictureUnit: rhs
	"Private - Get the value of the 'PictureUnit' property of the receiver.

		HRESULT __stdcall PictureUnit(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 32 sdword*>
	^self invalidCall!

get_PictureUnit2: rhs
	"Private - Get the value of the 'PictureUnit2' property of the receiver.

		HRESULT __stdcall PictureUnit2(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 43 double*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 41 varbool*>
	^self invalidCall!

get_Smooth: rhs
	"Private - Get the value of the 'Smooth' property of the receiver.

		HRESULT __stdcall Smooth(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 35 varbool*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 38 double*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 39 double*>
	^self invalidCall!

height
	"Answer the <double> value of the 'Height' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Height: answer.
	^answer asObject
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

left
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Left: answer.
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

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

put_InvertIfNegative: rhs
	"Private - Set the value of the 'InvertIfNegative' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InvertIfNegative(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

put_MarkerBackgroundColor: rhs
	"Private - Set the value of the 'MarkerBackgroundColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerBackgroundColor(
			[in]long RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_MarkerBackgroundColorIndex: rhs
	"Private - Set the value of the 'MarkerBackgroundColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerBackgroundColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 21 sdword>
	^self invalidCall!

put_MarkerForegroundColor: rhs
	"Private - Set the value of the 'MarkerForegroundColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerForegroundColor(
			[in]long RHS);"

	<virtual stdcall: hresult 23 sdword>
	^self invalidCall!

put_MarkerForegroundColorIndex: rhs
	"Private - Set the value of the 'MarkerForegroundColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerForegroundColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

put_MarkerSize: rhs
	"Private - Set the value of the 'MarkerSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerSize(
			[in]long RHS);"

	<virtual stdcall: hresult 27 sdword>
	^self invalidCall!

put_MarkerStyle: rhs
	"Private - Set the value of the 'MarkerStyle' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall MarkerStyle(
			[in]XlMarkerStyle RHS);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_PictureType: rhs
	"Private - Set the value of the 'PictureType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PictureType(
			[in]long RHS);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

put_PictureUnit: rhs
	"Private - Set the value of the 'PictureUnit' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PictureUnit(
			[in]long RHS);"

	<virtual stdcall: hresult 33 sdword>
	^self invalidCall!

put_PictureUnit2: rhs
	"Private - Set the value of the 'PictureUnit2' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall PictureUnit2(
			[in]double RHS);"

	<virtual stdcall: hresult 44 double>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 42 varbool>
	^self invalidCall!

put_Smooth: rhs
	"Private - Set the value of the 'Smooth' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Smooth(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 36 varbool>
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

	<virtual stdcall: hresult 34 variant*>
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

top
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Top: answer.
	^answer asObject
!

width
	"Answer the <double> value of the 'Width' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Width: answer.
	^answer asObject
! !
!ExcelILegendKey categoriesFor: #application!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #border!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelILegendKey categoriesFor: #ClearFormats:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelILegendKey categoriesFor: #Delete:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #format!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Border:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Format:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Height:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_InvertIfNegative:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Left:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_MarkerBackgroundColor:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_MarkerBackgroundColorIndex:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_MarkerForegroundColor:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_MarkerForegroundColorIndex:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_MarkerSize:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_MarkerStyle:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_PictureType:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_PictureUnit:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_PictureUnit2:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Smooth:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Top:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #get_Width:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #height!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #invertIfNegative!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #invertIfNegative:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #left!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerBackgroundColor!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerBackgroundColor:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerBackgroundColorIndex!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerBackgroundColorIndex:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerForegroundColor!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerForegroundColor:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerForegroundColorIndex!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerForegroundColorIndex:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerSize!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerSize:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerStyle!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #markerStyle:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #pictureType!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #pictureType:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #pictureUnit!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #pictureUnit:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #pictureUnit2!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #pictureUnit2:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #put_InvertIfNegative:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_MarkerBackgroundColor:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_MarkerBackgroundColorIndex:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_MarkerForegroundColor:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_MarkerForegroundColorIndex:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_MarkerSize:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_MarkerStyle:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_PictureType:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_PictureUnit:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_PictureUnit2:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #put_Smooth:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #select!**auto generated**!methods!public! !
!ExcelILegendKey categoriesFor: #Select:!**auto generated**!COM Interfaces-ILegendKey!private! !
!ExcelILegendKey categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #smooth!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #smooth:!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #top!**auto generated**!properties!public! !
!ExcelILegendKey categoriesFor: #width!**auto generated**!properties!public! !

!ExcelILegendKey class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ILegendKey'
		ExcelILegendKey defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #ClearFormats:
			argumentTypes: 'variant*';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
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
		defineFunction: #get_Smooth:
			argumentTypes: 'varbool*';
		defineFunction: #put_Smooth:
			argumentTypes: 'varbool';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #get_Width:
			argumentTypes: 'double*';
		defineFunction: #get_Height:
			argumentTypes: 'double*';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
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
		ExcelILegendKey initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelILegendKey class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelILegendKey class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

