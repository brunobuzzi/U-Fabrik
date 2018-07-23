"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelChartTitle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelChartTitle guid: (IID fromString: '{00020849-0000-0000-C000-000000000046}')!
ExcelChartTitle comment: '<ExcelChartTitle> is a wrapper class generated for the dispatch interface ''Excel.ChartTitle'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020849-0000-0000-C000-000000000046), 
	helpcontext(0x00020009)
]
dispinterface ChartTitle {
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
[id(0x00000a58), propget, helpcontext(0x00010a58)]
		VARIANT_BOOL IncludeInLayout();
[id(0x00000a58), propput, helpcontext(0x00010a58)]
		void IncludeInLayout(
			[in]VARIANT_BOOL arg1);
[id(0x00000085), propget, helpcontext(0x00010085)]
		XlChartElementPosition Position();
[id(0x00000085), propput, helpcontext(0x00010085)]
		void Position(
			[in]XlChartElementPosition arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelChartTitle categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelChartTitle methodsFor!

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

includeInLayout
	"Answer the <varbool> value of the 'IncludeInLayout' property of the receiver.
		VARIANT_BOOL IncludeInLayout"

	^(self getPropertyId: 2648)
!

includeInLayout: arg1
	"Set the 'IncludeInLayout' property of the receiver to the <varbool> value of the argument.
		void IncludeInLayout"

	self setPropertyId: 2648 value: arg1
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
		XlChartElementPosition Position"

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
!ExcelChartTitle categoriesFor: #application!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #border!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelChartTitle categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #font!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #format!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #includeInLayout!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #includeInLayout:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #left!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #name!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #position!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #select!**auto generated**!methods!public! !
!ExcelChartTitle categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #text!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #top!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelChartTitle categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !

!ExcelChartTitle class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelChartTitle initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelChartTitle class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

