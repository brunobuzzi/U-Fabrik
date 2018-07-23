"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelInterior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelInterior guid: (IID fromString: '{00020870-0000-0000-C000-000000000046}')!
ExcelInterior comment: '<ExcelInterior> is a wrapper class generated for the dispatch interface ''Excel.Interior'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020870-0000-0000-C000-000000000046), 
	helpcontext(0x00020030)
]
dispinterface Interior {
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
[id(0x00000084), propget, helpcontext(0x00010084)]
		VARIANT InvertIfNegative();
[id(0x00000084), propput, helpcontext(0x00010084)]
		void InvertIfNegative(
			[in]VARIANT arg1);
[id(0x0000005f), propget, helpcontext(0x0001005f)]
		VARIANT Pattern();
[id(0x0000005f), propput, helpcontext(0x0001005f)]
		void Pattern(
			[in]VARIANT arg1);
[id(0x00000064), propget, helpcontext(0x00010064)]
		VARIANT PatternColor();
[id(0x00000064), propput, helpcontext(0x00010064)]
		void PatternColor(
			[in]VARIANT arg1);
[id(0x00000062), propget, helpcontext(0x00010062)]
		VARIANT PatternColorIndex();
[id(0x00000062), propput, helpcontext(0x00010062)]
		void PatternColorIndex(
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
[id(0x00000a53), propget, helpcontext(0x00010a53)]
		VARIANT PatternThemeColor();
[id(0x00000a53), propput, helpcontext(0x00010a53)]
		void PatternThemeColor(
			[in]VARIANT arg1);
[id(0x00000a54), propget, helpcontext(0x00010a54)]
		VARIANT PatternTintAndShade();
[id(0x00000a54), propput, helpcontext(0x00010a54)]
		void PatternTintAndShade(
			[in]VARIANT arg1);
[id(0x00000a55), propget, helpcontext(0x00010a55)]
		IDispatch* Gradient();
};
'!
!ExcelInterior categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelInterior methodsFor!

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

gradient
	"Answer the <IDispatch> value of the 'Gradient' property of the receiver.
		IDispatch* Gradient"

	^IDispatch attachInterface: (self getPropertyId: 2645)
!

invertIfNegative
	"Answer the <variant> value of the 'InvertIfNegative' property of the receiver.
		VARIANT InvertIfNegative"

	^(self getPropertyId: 132)
!

invertIfNegative: arg1
	"Set the 'InvertIfNegative' property of the receiver to the <variant> value of the argument.
		void InvertIfNegative"

	self setPropertyId: 132 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pattern
	"Answer the <variant> value of the 'Pattern' property of the receiver.
		VARIANT Pattern"

	^(self getPropertyId: 95)
!

pattern: arg1
	"Set the 'Pattern' property of the receiver to the <variant> value of the argument.
		void Pattern"

	self setPropertyId: 95 value: arg1
!

patternColor
	"Answer the <variant> value of the 'PatternColor' property of the receiver.
		VARIANT PatternColor"

	^(self getPropertyId: 100)
!

patternColor: arg1
	"Set the 'PatternColor' property of the receiver to the <variant> value of the argument.
		void PatternColor"

	self setPropertyId: 100 value: arg1
!

patternColorIndex
	"Answer the <variant> value of the 'PatternColorIndex' property of the receiver.
		VARIANT PatternColorIndex"

	^(self getPropertyId: 98)
!

patternColorIndex: arg1
	"Set the 'PatternColorIndex' property of the receiver to the <variant> value of the argument.
		void PatternColorIndex"

	self setPropertyId: 98 value: arg1
!

patternThemeColor
	"Answer the <variant> value of the 'PatternThemeColor' property of the receiver.
		VARIANT PatternThemeColor"

	^(self getPropertyId: 2643)
!

patternThemeColor: arg1
	"Set the 'PatternThemeColor' property of the receiver to the <variant> value of the argument.
		void PatternThemeColor"

	self setPropertyId: 2643 value: arg1
!

patternTintAndShade
	"Answer the <variant> value of the 'PatternTintAndShade' property of the receiver.
		VARIANT PatternTintAndShade"

	^(self getPropertyId: 2644)
!

patternTintAndShade: arg1
	"Set the 'PatternTintAndShade' property of the receiver to the <variant> value of the argument.
		void PatternTintAndShade"

	self setPropertyId: 2644 value: arg1
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
! !
!ExcelInterior categoriesFor: #application!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #color!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #colorIndex!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #colorIndex:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #gradient!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #invertIfNegative!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #invertIfNegative:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #pattern!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #pattern:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #patternColor!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #patternColor:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #patternColorIndex!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #patternColorIndex:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #patternThemeColor!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #patternThemeColor:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #patternTintAndShade!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #patternTintAndShade:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelInterior categoriesFor: #tintAndShade:!**auto generated**!properties!public! !

!ExcelInterior class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelInterior initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelInterior class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

