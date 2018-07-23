"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelTickLabels
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTickLabels guid: (IID fromString: '{000208C9-0000-0000-C000-000000000046}')!
ExcelTickLabels comment: '<ExcelTickLabels> is a wrapper class generated for the dispatch interface ''Excel.TickLabels'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208C9-0000-0000-C000-000000000046), 
	helpcontext(0x00020089)
]
dispinterface TickLabels {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
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
[id(0x00000086), propget, helpcontext(0x00010086)]
		XlTickLabelOrientation Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]XlTickLabelOrientation arg1);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
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
[id(0x00000762), propget, helpcontext(0x00010762)]
		long Depth();
[id(0x000000fe), propget, helpcontext(0x000100fe)]
		long Offset();
[id(0x000000fe), propput, helpcontext(0x000100fe)]
		void Offset(
			[in]long arg1);
[id(0x000001c5), propget, helpcontext(0x000101c5)]
		long Alignment();
[id(0x000001c5), propput, helpcontext(0x000101c5)]
		void Alignment(
			[in]long arg1);
[id(0x00000a5d), propget, helpcontext(0x00010a5d)]
		VARIANT_BOOL MultiLevel();
[id(0x00000a5d), propput, helpcontext(0x00010a5d)]
		void MultiLevel(
			[in]VARIANT_BOOL arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelTickLabels categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelTickLabels methodsFor!

alignment: arg1
	"Set the 'Alignment' property of the receiver to the <sdword> value of the argument.
		void Alignment"

	self setPropertyId: 453 value: arg1
!

alignment_
	"Answer the <sdword> value of the 'Alignment' property of the receiver.
		long Alignment"

	^(self getPropertyId: 453)
!

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

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

depth
	"Answer the <sdword> value of the 'Depth' property of the receiver.
		long Depth"

	^(self getPropertyId: 1890)
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

multiLevel
	"Answer the <varbool> value of the 'MultiLevel' property of the receiver.
		VARIANT_BOOL MultiLevel"

	^(self getPropertyId: 2653)
!

multiLevel: arg1
	"Set the 'MultiLevel' property of the receiver to the <varbool> value of the argument.
		void MultiLevel"

	self setPropertyId: 2653 value: arg1
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

offset
	"Answer the <sdword> value of the 'Offset' property of the receiver.
		long Offset"

	^(self getPropertyId: 254)
!

offset: arg1
	"Set the 'Offset' property of the receiver to the <sdword> value of the argument.
		void Offset"

	self setPropertyId: 254 value: arg1
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver.
		XlTickLabelOrientation Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
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
! !
!ExcelTickLabels categoriesFor: #alignment:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #alignment_!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #application!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelTickLabels categoriesFor: #depth!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #font!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #format!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #multiLevel!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #multiLevel:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #name!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #numberFormatLinked!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #numberFormatLinked:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #offset!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #offset:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelTickLabels categoriesFor: #select!**auto generated**!methods!public! !

!ExcelTickLabels class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTickLabels initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTickLabels class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

