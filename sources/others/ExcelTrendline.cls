"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelTrendline
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelTrendline guid: (IID fromString: '{000208BE-0000-0000-C000-000000000046}')!
ExcelTrendline comment: '<ExcelTrendline> is a wrapper class generated for the dispatch interface ''Excel.Trendline'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208BE-0000-0000-C000-000000000046), 
	helpcontext(0x0002007e)
]
dispinterface Trendline {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b9), hidden, propget, helpcontext(0x000100b9)]
		long Backward();
[id(0x000000b9), hidden, propput, helpcontext(0x000100b9)]
		void Backward(
			[in]long arg1);
[id(0x00000080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000070), helpcontext(0x00010070)]
		VARIANT ClearFormats();
[id(0x0000009e), propget, helpcontext(0x0001009e)]
		DataLabel* DataLabel();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x000000be), propget, helpcontext(0x000100be)]
		VARIANT_BOOL DisplayEquation();
[id(0x000000be), propput, helpcontext(0x000100be)]
		void DisplayEquation(
			[in]VARIANT_BOOL arg1);
[id(0x000000bd), propget, helpcontext(0x000100bd)]
		VARIANT_BOOL DisplayRSquared();
[id(0x000000bd), propput, helpcontext(0x000100bd)]
		void DisplayRSquared(
			[in]VARIANT_BOOL arg1);
[id(0x000000bf), hidden, propget, helpcontext(0x000100bf)]
		long Forward();
[id(0x000000bf), hidden, propput, helpcontext(0x000100bf)]
		void Forward(
			[in]long arg1);
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x000000ba), propget, helpcontext(0x000100ba)]
		double Intercept();
[id(0x000000ba), propput, helpcontext(0x000100ba)]
		void Intercept(
			[in]double arg1);
[id(0x000000bb), propget, helpcontext(0x000100bb)]
		VARIANT_BOOL InterceptIsAuto();
[id(0x000000bb), propput, helpcontext(0x000100bb)]
		void InterceptIsAuto(
			[in]VARIANT_BOOL arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000000bc), propget, helpcontext(0x000100bc)]
		VARIANT_BOOL NameIsAuto();
[id(0x000000bc), propput, helpcontext(0x000100bc)]
		void NameIsAuto(
			[in]VARIANT_BOOL arg1);
[id(0x000000c0), propget, helpcontext(0x000100c0)]
		long Order();
[id(0x000000c0), propput, helpcontext(0x000100c0)]
		void Order(
			[in]long arg1);
[id(0x000000b8), propget, helpcontext(0x000100b8)]
		long Period();
[id(0x000000b8), propput, helpcontext(0x000100b8)]
		void Period(
			[in]long arg1);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlTrendlineType Type();
[id(0x0000006c), propput, helpcontext(0x0001006c)]
		void Type(
			[in]XlTrendlineType arg1);
[id(0x00000a5a), propget, helpcontext(0x00010a5a)]
		double Backward2();
[id(0x00000a5a), propput, helpcontext(0x00010a5a)]
		void Backward2(
			[in]double arg1);
[id(0x00000a5b), propget, helpcontext(0x00010a5b)]
		double Forward2();
[id(0x00000a5b), propput, helpcontext(0x00010a5b)]
		void Forward2(
			[in]double arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelTrendline categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelTrendline methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

backward
	"Answer the <sdword> value of the 'Backward' property of the receiver.
		long Backward"

	^(self getPropertyId: 185)
!

backward: arg1
	"Set the 'Backward' property of the receiver to the <sdword> value of the argument.
		void Backward"

	self setPropertyId: 185 value: arg1
!

backward2
	"Answer the <double> value of the 'Backward2' property of the receiver.
		double Backward2"

	^(self getPropertyId: 2650)
!

backward2: arg1
	"Set the 'Backward2' property of the receiver to the <double> value of the argument.
		void Backward2"

	self setPropertyId: 2650 value: arg1
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

dataLabel
	"Answer the <ExcelDataLabel> value of the 'DataLabel' property of the receiver.
		DataLabel* DataLabel"

	^ExcelDataLabel attachInterface: (self getPropertyId: 158)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

displayEquation
	"Answer the <varbool> value of the 'DisplayEquation' property of the receiver.
		VARIANT_BOOL DisplayEquation"

	^(self getPropertyId: 190)
!

displayEquation: arg1
	"Set the 'DisplayEquation' property of the receiver to the <varbool> value of the argument.
		void DisplayEquation"

	self setPropertyId: 190 value: arg1
!

displayRSquared
	"Answer the <varbool> value of the 'DisplayRSquared' property of the receiver.
		VARIANT_BOOL DisplayRSquared"

	^(self getPropertyId: 189)
!

displayRSquared: arg1
	"Set the 'DisplayRSquared' property of the receiver to the <varbool> value of the argument.
		void DisplayRSquared"

	self setPropertyId: 189 value: arg1
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

forward
	"Answer the <sdword> value of the 'Forward' property of the receiver.
		long Forward"

	^(self getPropertyId: 191)
!

forward: arg1
	"Set the 'Forward' property of the receiver to the <sdword> value of the argument.
		void Forward"

	self setPropertyId: 191 value: arg1
!

forward2
	"Answer the <double> value of the 'Forward2' property of the receiver.
		double Forward2"

	^(self getPropertyId: 2651)
!

forward2: arg1
	"Set the 'Forward2' property of the receiver to the <double> value of the argument.
		void Forward2"

	self setPropertyId: 2651 value: arg1
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

intercept
	"Answer the <double> value of the 'Intercept' property of the receiver.
		double Intercept"

	^(self getPropertyId: 186)
!

intercept: arg1
	"Set the 'Intercept' property of the receiver to the <double> value of the argument.
		void Intercept"

	self setPropertyId: 186 value: arg1
!

interceptIsAuto
	"Answer the <varbool> value of the 'InterceptIsAuto' property of the receiver.
		VARIANT_BOOL InterceptIsAuto"

	^(self getPropertyId: 187)
!

interceptIsAuto: arg1
	"Set the 'InterceptIsAuto' property of the receiver to the <varbool> value of the argument.
		void InterceptIsAuto"

	self setPropertyId: 187 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

nameIsAuto
	"Answer the <varbool> value of the 'NameIsAuto' property of the receiver.
		VARIANT_BOOL NameIsAuto"

	^(self getPropertyId: 188)
!

nameIsAuto: arg1
	"Set the 'NameIsAuto' property of the receiver to the <varbool> value of the argument.
		void NameIsAuto"

	self setPropertyId: 188 value: arg1
!

order
	"Answer the <sdword> value of the 'Order' property of the receiver.
		long Order"

	^(self getPropertyId: 192)
!

order: arg1
	"Set the 'Order' property of the receiver to the <sdword> value of the argument.
		void Order"

	self setPropertyId: 192 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

period
	"Answer the <sdword> value of the 'Period' property of the receiver.
		long Period"

	^(self getPropertyId: 184)
!

period: arg1
	"Set the 'Period' property of the receiver to the <sdword> value of the argument.
		void Period"

	self setPropertyId: 184 value: arg1
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlTrendlineType Type"

	^(self getPropertyId: 108)
!

type: arg1
	"Set the 'Type' property of the receiver to the <sdword> value of the argument.
		void Type"

	self setPropertyId: 108 value: arg1
! !
!ExcelTrendline categoriesFor: #application!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #backward!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #backward:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #backward2!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #backward2:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #border!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelTrendline categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #dataLabel!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelTrendline categoriesFor: #displayEquation!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #displayEquation:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #displayRSquared!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #displayRSquared:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #format!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #forward!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #forward:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #forward2!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #forward2:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #index!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #intercept!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #intercept:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #interceptIsAuto!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #interceptIsAuto:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #name!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #nameIsAuto!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #nameIsAuto:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #order!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #order:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #period!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #period:!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #select!**auto generated**!methods!public! !
!ExcelTrendline categoriesFor: #type!**auto generated**!properties!public! !
!ExcelTrendline categoriesFor: #type:!**auto generated**!properties!public! !

!ExcelTrendline class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelTrendline initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelTrendline class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

