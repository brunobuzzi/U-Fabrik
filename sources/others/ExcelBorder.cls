"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelBorder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelBorder guid: (IID fromString: '{00020854-0000-0000-C000-000000000046}')!
ExcelBorder comment: '<ExcelBorder> is a wrapper class generated for the dispatch interface ''Excel.Border'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020854-0000-0000-C000-000000000046), 
	helpcontext(0x00020014)
]
dispinterface Border {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000063), propget, helpcontext(0x00010063)]
		VARIANT Color();
[id(0x00000063), propput, helpcontext(0x00010063)]
		void Color(
			[in]VARIANT arg1);
[id(0x00000061), propget, helpcontext(0x00010061)]
		VARIANT ColorIndex();
[id(0x00000061), propput, helpcontext(0x00010061)]
		void ColorIndex(
			[in]VARIANT arg1);
[id(0x00000077), propget, helpcontext(0x00010077)]
		VARIANT LineStyle();
[id(0x00000077), propput, helpcontext(0x00010077)]
		void LineStyle(
			[in]VARIANT arg1);
[id(0x00000078), propget, helpcontext(0x00010078)]
		VARIANT Weight();
[id(0x00000078), propput, helpcontext(0x00010078)]
		void Weight(
			[in]VARIANT arg1);
[id(0x0000093d), propget, helpcontext(0x0001093d)]
		VARIANT ThemeColor();
[id(0x0000093d), propput, helpcontext(0x0001093d)]
		void ThemeColor(
			[in]VARIANT arg1);
[id(0x0000093e), propget, helpcontext(0x0001093e)]
		VARIANT TintAndShade();
[id(0x0000093e), propput, helpcontext(0x0001093e)]
		void TintAndShade(
			[in]VARIANT arg1);
};
'!
!ExcelBorder categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelBorder methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

color
	"Answer the <variant> value of the 'Color' property of the receiver.
		VARIANT Color"

	^(self getPropertyId: 99)
!

color: arg1
	"Set the 'Color' property of the receiver to the <variant> value of the argument.
		void Color"

	self setPropertyId: 99 value: arg1
!

colorIndex
	"Answer the <variant> value of the 'ColorIndex' property of the receiver.
		VARIANT ColorIndex"

	^(self getPropertyId: 97)
!

colorIndex: arg1
	"Set the 'ColorIndex' property of the receiver to the <variant> value of the argument.
		void ColorIndex"

	self setPropertyId: 97 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

lineStyle
	"Answer the <variant> value of the 'LineStyle' property of the receiver.
		VARIANT LineStyle"

	^(self getPropertyId: 119)
!

lineStyle: arg1
	"Set the 'LineStyle' property of the receiver to the <variant> value of the argument.
		void LineStyle"

	self setPropertyId: 119 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

themeColor
	"Answer the <variant> value of the 'ThemeColor' property of the receiver.
		VARIANT ThemeColor"

	^(self getPropertyId: 2365)
!

themeColor: arg1
	"Set the 'ThemeColor' property of the receiver to the <variant> value of the argument.
		void ThemeColor"

	self setPropertyId: 2365 value: arg1
!

tintAndShade
	"Answer the <variant> value of the 'TintAndShade' property of the receiver.
		VARIANT TintAndShade"

	^(self getPropertyId: 2366)
!

tintAndShade: arg1
	"Set the 'TintAndShade' property of the receiver to the <variant> value of the argument.
		void TintAndShade"

	self setPropertyId: 2366 value: arg1
!

weight
	"Answer the <variant> value of the 'Weight' property of the receiver.
		VARIANT Weight"

	^(self getPropertyId: 120)
!

weight: arg1
	"Set the 'Weight' property of the receiver to the <variant> value of the argument.
		void Weight"

	self setPropertyId: 120 value: arg1
! !
!ExcelBorder categoriesFor: #application!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #color!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #colorIndex!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #colorIndex:!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #lineStyle!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #lineStyle:!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #tintAndShade:!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #weight!**auto generated**!properties!public! !
!ExcelBorder categoriesFor: #weight:!**auto generated**!properties!public! !

!ExcelBorder class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelBorder initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelBorder class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

