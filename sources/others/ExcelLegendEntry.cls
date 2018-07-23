"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelLegendEntry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelLegendEntry guid: (IID fromString: '{000208BA-0000-0000-C000-000000000046}')!
ExcelLegendEntry comment: '<ExcelLegendEntry> is a wrapper class generated for the dispatch interface ''Excel.LegendEntry'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208BA-0000-0000-C000-000000000046), 
	helpcontext(0x0002007a)
]
dispinterface LegendEntry {
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
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x000000ae), propget, helpcontext(0x000100ae)]
		LegendKey* LegendKey();
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
		VARIANT AutoScaleFont();
[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
		void AutoScaleFont(
			[in]VARIANT arg1);
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		double Left();
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		double Top();
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		double Width();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		double Height();
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelLegendEntry categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelLegendEntry methodsFor!

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

height
	"Answer the <double> value of the 'Height' property of the receiver.
		double Height"

	^(self getPropertyId: 123)
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

left
	"Answer the <double> value of the 'Left' property of the receiver.
		double Left"

	^(self getPropertyId: 127)
!

legendKey
	"Answer the <ExcelLegendKey> value of the 'LegendKey' property of the receiver.
		LegendKey* LegendKey"

	^ExcelLegendKey attachInterface: (self getPropertyId: 174)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
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
!ExcelLegendEntry categoriesFor: #application!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelLegendEntry categoriesFor: #font!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #format!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #height!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #index!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #left!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #legendKey!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #select!**auto generated**!methods!public! !
!ExcelLegendEntry categoriesFor: #top!**auto generated**!properties!public! !
!ExcelLegendEntry categoriesFor: #width!**auto generated**!properties!public! !

!ExcelLegendEntry class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelLegendEntry initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelLegendEntry class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

