"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelFont
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFont guid: (IID fromString: '{0002084D-0000-0000-C000-000000000046}')!
ExcelFont comment: '<ExcelFont> is a wrapper class generated for the dispatch interface ''Excel.Font'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002084D-0000-0000-C000-000000000046), 
	helpcontext(0x0002000d)
]
dispinterface Font {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b4), propget, helpcontext(0x000100b4)]
		VARIANT Background();
[id(0x000000b4), propput, helpcontext(0x000100b4)]
		void Background(
			[in]VARIANT arg1);
[id(0x00000060), propget, helpcontext(0x00010060)]
		VARIANT Bold();
[id(0x00000060), propput, helpcontext(0x00010060)]
		void Bold(
			[in]VARIANT arg1);
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
[id(0x000000b1), propget, helpcontext(0x000100b1)]
		VARIANT FontStyle();
[id(0x000000b1), propput, helpcontext(0x000100b1)]
		void FontStyle(
			[in]VARIANT arg1);
[id(0x00000065), propget, helpcontext(0x00010065)]
		VARIANT Italic();
[id(0x00000065), propput, helpcontext(0x00010065)]
		void Italic(
			[in]VARIANT arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		VARIANT Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]VARIANT arg1);
[id(0x000000dd), hidden, propget, helpcontext(0x000100dd)]
		VARIANT OutlineFont();
[id(0x000000dd), hidden, propput, helpcontext(0x000100dd)]
		void OutlineFont(
			[in]VARIANT arg1);
[id(0x00000067), hidden, propget, helpcontext(0x00010067)]
		VARIANT Shadow();
[id(0x00000067), hidden, propput, helpcontext(0x00010067)]
		void Shadow(
			[in]VARIANT arg1);
[id(0x00000068), propget, helpcontext(0x00010068)]
		VARIANT Size();
[id(0x00000068), propput, helpcontext(0x00010068)]
		void Size(
			[in]VARIANT arg1);
[id(0x00000069), propget, helpcontext(0x00010069)]
		VARIANT Strikethrough();
[id(0x00000069), propput, helpcontext(0x00010069)]
		void Strikethrough(
			[in]VARIANT arg1);
[id(0x000000b3), propget, helpcontext(0x000100b3)]
		VARIANT Subscript();
[id(0x000000b3), propput, helpcontext(0x000100b3)]
		void Subscript(
			[in]VARIANT arg1);
[id(0x000000b2), propget, helpcontext(0x000100b2)]
		VARIANT Superscript();
[id(0x000000b2), propput, helpcontext(0x000100b2)]
		void Superscript(
			[in]VARIANT arg1);
[id(0x0000006a), propget, helpcontext(0x0001006a)]
		VARIANT Underline();
[id(0x0000006a), propput, helpcontext(0x0001006a)]
		void Underline(
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
[id(0x0000093f), propget, helpcontext(0x0001093f)]
		XlThemeFont ThemeFont();
[id(0x0000093f), propput, helpcontext(0x0001093f)]
		void ThemeFont(
			[in]XlThemeFont arg1);
};
'!
!ExcelFont categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelFont methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

background
	"Answer the <variant> value of the 'Background' property of the receiver.
		VARIANT Background"

	^(self getPropertyId: 180)
!

background: arg1
	"Set the 'Background' property of the receiver to the <variant> value of the argument.
		void Background"

	self setPropertyId: 180 value: arg1
!

bold
	"Answer the <variant> value of the 'Bold' property of the receiver.
		VARIANT Bold"

	^(self getPropertyId: 96)
!

bold: arg1
	"Set the 'Bold' property of the receiver to the <variant> value of the argument.
		void Bold"

	self setPropertyId: 96 value: arg1
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

fontStyle
	"Answer the <variant> value of the 'FontStyle' property of the receiver.
		VARIANT FontStyle"

	^(self getPropertyId: 177)
!

fontStyle: arg1
	"Set the 'FontStyle' property of the receiver to the <variant> value of the argument.
		void FontStyle"

	self setPropertyId: 177 value: arg1
!

italic
	"Answer the <variant> value of the 'Italic' property of the receiver.
		VARIANT Italic"

	^(self getPropertyId: 101)
!

italic: arg1
	"Set the 'Italic' property of the receiver to the <variant> value of the argument.
		void Italic"

	self setPropertyId: 101 value: arg1
!

name
	"Answer the <variant> value of the 'Name' property of the receiver.
		VARIANT Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <variant> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

outlineFont
	"Answer the <variant> value of the 'OutlineFont' property of the receiver.
		VARIANT OutlineFont"

	^(self getPropertyId: 221)
!

outlineFont: arg1
	"Set the 'OutlineFont' property of the receiver to the <variant> value of the argument.
		void OutlineFont"

	self setPropertyId: 221 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

shadow
	"Answer the <variant> value of the 'Shadow' property of the receiver.
		VARIANT Shadow"

	^(self getPropertyId: 103)
!

shadow: arg1
	"Set the 'Shadow' property of the receiver to the <variant> value of the argument.
		void Shadow"

	self setPropertyId: 103 value: arg1
!

size
	"Answer the <variant> value of the 'Size' property of the receiver.
		VARIANT Size"

	^(self getPropertyId: 104)
!

size: arg1
	"Set the 'Size' property of the receiver to the <variant> value of the argument.
		void Size"

	self setPropertyId: 104 value: arg1
!

strikethrough
	"Answer the <variant> value of the 'Strikethrough' property of the receiver.
		VARIANT Strikethrough"

	^(self getPropertyId: 105)
!

strikethrough: arg1
	"Set the 'Strikethrough' property of the receiver to the <variant> value of the argument.
		void Strikethrough"

	self setPropertyId: 105 value: arg1
!

subscript
	"Answer the <variant> value of the 'Subscript' property of the receiver.
		VARIANT Subscript"

	^(self getPropertyId: 179)
!

subscript: arg1
	"Set the 'Subscript' property of the receiver to the <variant> value of the argument.
		void Subscript"

	self setPropertyId: 179 value: arg1
!

superscript
	"Answer the <variant> value of the 'Superscript' property of the receiver.
		VARIANT Superscript"

	^(self getPropertyId: 178)
!

superscript: arg1
	"Set the 'Superscript' property of the receiver to the <variant> value of the argument.
		void Superscript"

	self setPropertyId: 178 value: arg1
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

themeFont
	"Answer the <sdword> value of the 'ThemeFont' property of the receiver.
		XlThemeFont ThemeFont"

	^(self getPropertyId: 2367)
!

themeFont: arg1
	"Set the 'ThemeFont' property of the receiver to the <sdword> value of the argument.
		void ThemeFont"

	self setPropertyId: 2367 value: arg1
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

underline
	"Answer the <variant> value of the 'Underline' property of the receiver.
		VARIANT Underline"

	^(self getPropertyId: 106)
!

underline: arg1
	"Set the 'Underline' property of the receiver to the <variant> value of the argument.
		void Underline"

	self setPropertyId: 106 value: arg1
! !
!ExcelFont categoriesFor: #application!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #background!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #background:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #bold!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #bold:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #color!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #colorIndex!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #colorIndex:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #fontStyle!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #fontStyle:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #italic!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #italic:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #name!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #outlineFont!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #outlineFont:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #size!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #size:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #strikethrough!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #strikethrough:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #subscript!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #subscript:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #superscript!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #superscript:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #themeFont!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #themeFont:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #tintAndShade:!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #underline!**auto generated**!properties!public! !
!ExcelFont categoriesFor: #underline:!**auto generated**!properties!public! !

!ExcelFont class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFont initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFont class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

