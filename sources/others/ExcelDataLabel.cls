"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDataLabel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDataLabel guid: (IID fromString: '{000208B2-0000-0000-C000-000000000046}')!
ExcelDataLabel comment: '<ExcelDataLabel> is a wrapper class generated for the dispatch interface ''Excel.DataLabel'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208B2-0000-0000-C000-000000000046), 
	helpcontext(0x00020072)
]
dispinterface DataLabel {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
		ChartFillFormat* Fill();
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x0000025b), propget, helpcontext(0x0001025b)]
		Characters* Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length);
[id(0x00000092), hidden, propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x00000088), propget, helpcontext(0x00010088)]
		VARIANT HorizontalAlignment();
[id(0x00000088), propput, helpcontext(0x00010088)]
		void HorizontalAlignment(
			[in]VARIANT arg1);
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007f), propput, helpcontext(0x0001007f)]
		void Left(
			[in]double arg1);
[id(0x00000086), propget, helpcontext(0x00010086)]
		VARIANT Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]VARIANT arg1);
[id(0x00000067), propget, helpcontext(0x00010067)]
		VARIANT_BOOL Shadow();
[id(0x00000067), propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT_BOOL arg1);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		BSTR Text();
[id(0x0000008a), propput, helpcontext(0x0001008a)]
		void Text(
			[in]BSTR arg1);
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007e), propput, helpcontext(0x0001007e)]
		void Top(
			[in]double arg1);
[id(0x00000089), propget, helpcontext(0x00010089)]
		VARIANT VerticalAlignment();
[id(0x00000089), propput, helpcontext(0x00010089)]
		void VerticalAlignment(
			[in]VARIANT arg1);
[id(0x000003cf), propget, helpcontext(0x000103cf)]
		long ReadingOrder();
[id(0x000003cf), propput, helpcontext(0x000103cf)]
		void ReadingOrder(
			[in]long arg1);
[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
		VARIANT AutoScaleFont();
[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
		void AutoScaleFont(
			[in]VARIANT arg1);
[id(0x00000087), propget, helpcontext(0x00010087)]
		VARIANT_BOOL AutoText();
[id(0x00000087), propput, helpcontext(0x00010087)]
		void AutoText(
			[in]VARIANT_BOOL arg1);
[id(0x000000c1), propget, helpcontext(0x000100c1)]
		BSTR NumberFormat();
[id(0x000000c1), propput, helpcontext(0x000100c1)]
		void NumberFormat(
			[in]BSTR arg1);
[id(0x000000c2), propget, helpcontext(0x000100c2)]
		VARIANT_BOOL NumberFormatLinked();
[id(0x000000c2), propput, helpcontext(0x000100c2)]
		void NumberFormatLinked(
			[in]VARIANT_BOOL arg1);
[id(0x00000449), propget, helpcontext(0x00010449)]
		VARIANT NumberFormatLocal();
[id(0x00000449), propput, helpcontext(0x00010449)]
		void NumberFormatLocal(
			[in]VARIANT arg1);
[id(0x000000ab), propget, helpcontext(0x000100ab)]
		VARIANT_BOOL ShowLegendKey();
[id(0x000000ab), propput, helpcontext(0x000100ab)]
		void ShowLegendKey(
			[in]VARIANT_BOOL arg1);
[id(0x0000006c), hidden, propget, helpcontext(0x0001006c)]
		VARIANT Type();
[id(0x0000006c), hidden, propput, helpcontext(0x0001006c)]
		void Type(
			[in]VARIANT arg1);
[id(0x00000085), propget, helpcontext(0x00010085)]
		XlDataLabelPosition Position();
[id(0x00000085), propput, helpcontext(0x00010085)]
		void Position(
			[in]XlDataLabelPosition arg1);
[id(0x000007e6), propget, helpcontext(0x000107e6)]
		VARIANT_BOOL ShowSeriesName();
[id(0x000007e6), propput, helpcontext(0x000107e6)]
		void ShowSeriesName(
			[in]VARIANT_BOOL arg1);
[id(0x000007e7), propget, helpcontext(0x000107e7)]
		VARIANT_BOOL ShowCategoryName();
[id(0x000007e7), propput, helpcontext(0x000107e7)]
		void ShowCategoryName(
			[in]VARIANT_BOOL arg1);
[id(0x000007e8), propget, helpcontext(0x000107e8)]
		VARIANT_BOOL ShowValue();
[id(0x000007e8), propput, helpcontext(0x000107e8)]
		void ShowValue(
			[in]VARIANT_BOOL arg1);
[id(0x000007e9), propget, helpcontext(0x000107e9)]
		VARIANT_BOOL ShowPercentage();
[id(0x000007e9), propput, helpcontext(0x000107e9)]
		void ShowPercentage(
			[in]VARIANT_BOOL arg1);
[id(0x000007ea), propget, helpcontext(0x000107ea)]
		VARIANT_BOOL ShowBubbleSize();
[id(0x000007ea), propput, helpcontext(0x000107ea)]
		void ShowBubbleSize(
			[in]VARIANT_BOOL arg1);
[id(0x000007eb), propget, helpcontext(0x000107eb)]
		VARIANT Separator();
[id(0x000007eb), propput, helpcontext(0x000107eb)]
		void Separator(
			[in]VARIANT arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelDataLabel categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDataLabel methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoScaleFont
	"Answer the <variant> value of the 'AutoScaleFont' property of the receiver.
		VARIANT AutoScaleFont"

	^(self getPropertyId: 1525)
!

autoScaleFont: arg1
	"Set the 'AutoScaleFont' property of the receiver to the <variant> value of the argument.
		void AutoScaleFont"

	self setPropertyId: 1525 value: arg1
!

autoText
	"Answer the <varbool> value of the 'AutoText' property of the receiver.
		VARIANT_BOOL AutoText"

	^(self getPropertyId: 135)
!

autoText: arg1
	"Set the 'AutoText' property of the receiver to the <varbool> value of the argument.
		void AutoText"

	self setPropertyId: 135 value: arg1
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver.
		BSTR Caption"

	^(self getPropertyId: 139)
!

caption: arg1
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument.
		void Caption"

	self setPropertyId: 139 value: arg1
!

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^ExcelCharacters attachInterface: (self getPropertyId: 603
		 withArguments: ((Array new: 2)
				basicAt: 1 put: start;
				basicAt: 2 put: length;
				yourself)
		)
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

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

horizontalAlignment
	"Answer the <variant> value of the 'HorizontalAlignment' property of the receiver.
		VARIANT HorizontalAlignment"

	^(self getPropertyId: 136)
!

horizontalAlignment: arg1
	"Set the 'HorizontalAlignment' property of the receiver to the <variant> value of the argument.
		void HorizontalAlignment"

	self setPropertyId: 136 value: arg1
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
!

left: arg1
	"Set the 'Left' property of the receiver to the <double> value of the argument.
		void Left"

	self setPropertyId: 127 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

numberFormat
	"Answer the <bstr> value of the 'NumberFormat' property of the receiver.
		BSTR NumberFormat"

	^(self getPropertyId: 193)
!

numberFormat: arg1
	"Set the 'NumberFormat' property of the receiver to the <bstr> value of the argument.
		void NumberFormat"

	self setPropertyId: 193 value: arg1
!

numberFormatLinked
	"Answer the <varbool> value of the 'NumberFormatLinked' property of the receiver.
		VARIANT_BOOL NumberFormatLinked"

	^(self getPropertyId: 194)
!

numberFormatLinked: arg1
	"Set the 'NumberFormatLinked' property of the receiver to the <varbool> value of the argument.
		void NumberFormatLinked"

	self setPropertyId: 194 value: arg1
!

numberFormatLocal
	"Answer the <variant> value of the 'NumberFormatLocal' property of the receiver.
		VARIANT NumberFormatLocal"

	^(self getPropertyId: 1097)
!

numberFormatLocal: arg1
	"Set the 'NumberFormatLocal' property of the receiver to the <variant> value of the argument.
		void NumberFormatLocal"

	self setPropertyId: 1097 value: arg1
!

orientation
	"Answer the <variant> value of the 'Orientation' property of the receiver.
		VARIANT Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <variant> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver.
		XlDataLabelPosition Position"

	^(self getPropertyId: 133)
!

position: arg1
	"Set the 'Position' property of the receiver to the <sdword> value of the argument.
		void Position"

	self setPropertyId: 133 value: arg1
!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver.
		long ReadingOrder"

	^(self getPropertyId: 975)
!

readingOrder: arg1
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument.
		void ReadingOrder"

	self setPropertyId: 975 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

separator
	"Answer the <variant> value of the 'Separator' property of the receiver.
		VARIANT Separator"

	^(self getPropertyId: 2027)
!

separator: arg1
	"Set the 'Separator' property of the receiver to the <variant> value of the argument.
		void Separator"

	self setPropertyId: 2027 value: arg1
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

showBubbleSize
	"Answer the <varbool> value of the 'ShowBubbleSize' property of the receiver.
		VARIANT_BOOL ShowBubbleSize"

	^(self getPropertyId: 2026)
!

showBubbleSize: arg1
	"Set the 'ShowBubbleSize' property of the receiver to the <varbool> value of the argument.
		void ShowBubbleSize"

	self setPropertyId: 2026 value: arg1
!

showCategoryName
	"Answer the <varbool> value of the 'ShowCategoryName' property of the receiver.
		VARIANT_BOOL ShowCategoryName"

	^(self getPropertyId: 2023)
!

showCategoryName: arg1
	"Set the 'ShowCategoryName' property of the receiver to the <varbool> value of the argument.
		void ShowCategoryName"

	self setPropertyId: 2023 value: arg1
!

showLegendKey
	"Answer the <varbool> value of the 'ShowLegendKey' property of the receiver.
		VARIANT_BOOL ShowLegendKey"

	^(self getPropertyId: 171)
!

showLegendKey: arg1
	"Set the 'ShowLegendKey' property of the receiver to the <varbool> value of the argument.
		void ShowLegendKey"

	self setPropertyId: 171 value: arg1
!

showPercentage
	"Answer the <varbool> value of the 'ShowPercentage' property of the receiver.
		VARIANT_BOOL ShowPercentage"

	^(self getPropertyId: 2025)
!

showPercentage: arg1
	"Set the 'ShowPercentage' property of the receiver to the <varbool> value of the argument.
		void ShowPercentage"

	self setPropertyId: 2025 value: arg1
!

showSeriesName
	"Answer the <varbool> value of the 'ShowSeriesName' property of the receiver.
		VARIANT_BOOL ShowSeriesName"

	^(self getPropertyId: 2022)
!

showSeriesName: arg1
	"Set the 'ShowSeriesName' property of the receiver to the <varbool> value of the argument.
		void ShowSeriesName"

	self setPropertyId: 2022 value: arg1
!

showValue
	"Answer the <varbool> value of the 'ShowValue' property of the receiver.
		VARIANT_BOOL ShowValue"

	^(self getPropertyId: 2024)
!

showValue: arg1
	"Set the 'ShowValue' property of the receiver to the <varbool> value of the argument.
		void ShowValue"

	self setPropertyId: 2024 value: arg1
!

text
	"Answer the <bstr> value of the 'Text' property of the receiver.
		BSTR Text"

	^(self getPropertyId: 138)
!

text: arg1
	"Set the 'Text' property of the receiver to the <bstr> value of the argument.
		void Text"

	self setPropertyId: 138 value: arg1
!

top
	"Answer the <double> value of the 'Top' property of the receiver.
		double Top"

	^(self getPropertyId: 126)
!

top: arg1
	"Set the 'Top' property of the receiver to the <double> value of the argument.
		void Top"

	self setPropertyId: 126 value: arg1
!

type
	"Answer the <variant> value of the 'Type' property of the receiver.
		VARIANT Type"

	^(self getPropertyId: 108)
!

type: arg1
	"Set the 'Type' property of the receiver to the <variant> value of the argument.
		void Type"

	self setPropertyId: 108 value: arg1
!

verticalAlignment
	"Answer the <variant> value of the 'VerticalAlignment' property of the receiver.
		VARIANT VerticalAlignment"

	^(self getPropertyId: 137)
!

verticalAlignment: arg1
	"Set the 'VerticalAlignment' property of the receiver to the <variant> value of the argument.
		void VerticalAlignment"

	self setPropertyId: 137 value: arg1
! !
!ExcelDataLabel categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #autoText!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #autoText:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #border!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelDataLabel categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #font!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #format!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #left!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #name!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #numberFormatLinked!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #numberFormatLinked:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #position!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #select!**auto generated**!methods!public! !
!ExcelDataLabel categoriesFor: #separator!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #separator:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showBubbleSize!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showBubbleSize:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showCategoryName!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showCategoryName:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showLegendKey!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showLegendKey:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showPercentage!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showPercentage:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showSeriesName!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showSeriesName:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showValue!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #showValue:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #text!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #top!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #type!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelDataLabel categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !

!ExcelDataLabel class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDataLabel initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDataLabel class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

