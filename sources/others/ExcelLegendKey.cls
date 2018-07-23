"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelLegendKey
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelLegendKey guid: (IID fromString: '{000208BC-0000-0000-C000-000000000046}')!
ExcelLegendKey comment: '<ExcelLegendKey> is a wrapper class generated for the dispatch interface ''Excel.LegendKey'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208BC-0000-0000-C000-000000000046), 
	helpcontext(0x0002007c)
]
dispinterface LegendKey {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000070), helpcontext(0x00010070)]
		VARIANT ClearFormats();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
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
[id(0x000000a1), propget, helpcontext(0x000100a1)]
		long PictureType();
[id(0x000000a1), propput, helpcontext(0x000100a1)]
		void PictureType(
			[in]long arg1);
[id(0x000000a2), hidden, propget, helpcontext(0x000100a2)]
		long PictureUnit();
[id(0x000000a2), hidden, propput, helpcontext(0x000100a2)]
		void PictureUnit(
			[in]long arg1);
[id(0x000000eb), hidden, helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x000000a3), propget, helpcontext(0x000100a3)]
		VARIANT_BOOL Smooth();
[id(0x000000a3), propput, helpcontext(0x000100a3)]
		void Smooth(
			[in]VARIANT_BOOL arg1);
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x00000067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x00000067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x00000a59), propget, helpcontext(0x00010a59)]
		double PictureUnit2();
[id(0x00000a59), propput, helpcontext(0x00010a59)]
		void PictureUnit2(
			[in]double arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelLegendKey categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelLegendKey methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	^(self invokeId: 112)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
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

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: 123)
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

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pictureType
	"Answer the <sdword> value of the 'PictureType' property of the receiver.
		long PictureType"

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

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: 126)
!

width
	"Answer the <double> value of the 'Width' property of the receiver.
		double Width"

	^(self getPropertyId: 122)
! !
!ExcelLegendKey categoriesFor: #application!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #border!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelLegendKey categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelLegendKey categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #format!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #height!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #invertIfNegative!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #invertIfNegative:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #left!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerBackgroundColor!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerBackgroundColor:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerBackgroundColorIndex!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerBackgroundColorIndex:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerForegroundColor!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerForegroundColor:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerForegroundColorIndex!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerForegroundColorIndex:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerSize!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerSize:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerStyle!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #markerStyle:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #pictureType!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #pictureType:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #pictureUnit!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #pictureUnit:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #pictureUnit2!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #pictureUnit2:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #select!**auto generated**!methods!public! !
!ExcelLegendKey categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #smooth!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #smooth:!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #top!**auto generated**!properties!public! !
!ExcelLegendKey categoriesFor: #width!**auto generated**!properties!public! !

!ExcelLegendKey class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelLegendKey initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelLegendKey class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

