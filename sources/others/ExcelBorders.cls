"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelBorders
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelBorders guid: (IID fromString: '{00020855-0000-0000-C000-000000000046}')!
ExcelBorders comment: '<ExcelBorders> is a wrapper class generated for the dispatch interface ''Excel.Borders'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020855-0000-0000-C000-000000000046), 
	helpcontext(0x00020015)
]
dispinterface Borders {
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
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		Border* Item(
			[in]XlBordersIndex Index);
[id(0x00000077), propget, helpcontext(0x00010077)]
		VARIANT LineStyle();
[id(0x00000077), propput, helpcontext(0x00010077)]
		void LineStyle(
			[in]VARIANT arg1);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x00000006), propget, helpcontext(0x00010006)]
		VARIANT Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]VARIANT arg1);
[id(0x00000078), propget, helpcontext(0x00010078)]
		VARIANT Weight();
[id(0x00000078), propput, helpcontext(0x00010078)]
		void Weight(
			[in]VARIANT arg1);
[id(0000000000), propget, helpcontext(0x00010000)]
		Border* _Default(
			[in]XlBordersIndex Index);
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
!ExcelBorders categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelBorders methodsFor!

_default: index
	"Answer the <ExcelBorder> value of the '_Default' property of the receiver.
		Border* _Default"

	^ExcelBorder attachInterface: (self getPropertyId: 0 item: index)
!

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

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelBorder> value of the 'Item' property of the receiver.
		Border* Item"

	^ExcelBorder attachInterface: (self getPropertyId: 170 item: index)
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

value
	"Answer the <variant> value of the 'Value' property of the receiver.
		VARIANT Value"

	^(self getPropertyId: 6)
!

value: arg1
	"Set the 'Value' property of the receiver to the <variant> value of the argument.
		void Value"

	self setPropertyId: 6 value: arg1
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
!ExcelBorders categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #application!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #color!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #colorIndex!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #colorIndex:!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #count!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelBorders categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #lineStyle!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #lineStyle:!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #tintAndShade:!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #value!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #weight!**auto generated**!properties!public! !
!ExcelBorders categoriesFor: #weight:!**auto generated**!properties!public! !

!ExcelBorders class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelBorders initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelBorders class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

