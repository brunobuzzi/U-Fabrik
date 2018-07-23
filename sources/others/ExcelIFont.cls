"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIFont
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIFont guid: (IID fromString: '{0002084D-0001-0000-C000-000000000046}')!
ExcelIFont comment: '<ExcelIFont> is a wrapper class for the COM interface ''Excel.IFont'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002084D-0001-0000-C000-000000000046), 
	helpcontext(0x0002000d), 
	hidden
]
interface IFont : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x000000b4), propget, helpcontext(0x000100b4)]
	HRESULT __stdcall Background(
		[out, retval]VARIANT* RHS);
	[id(0x000000b4), propput, helpcontext(0x000100b4)]
	HRESULT __stdcall Background(
		[in]VARIANT RHS);
	[id(0x00000060), propget, helpcontext(0x00010060)]
	HRESULT __stdcall Bold(
		[out, retval]VARIANT* RHS);
	[id(0x00000060), propput, helpcontext(0x00010060)]
	HRESULT __stdcall Bold(
		[in]VARIANT RHS);
	[id(0x00000063), propget, helpcontext(0x00010063)]
	HRESULT __stdcall Color(
		[out, retval]VARIANT* RHS);
	[id(0x00000063), propput, helpcontext(0x00010063)]
	HRESULT __stdcall Color(
		[in]VARIANT RHS);
	[id(0x00000061), propget, helpcontext(0x00010061)]
	HRESULT __stdcall ColorIndex(
		[out, retval]VARIANT* RHS);
	[id(0x00000061), propput, helpcontext(0x00010061)]
	HRESULT __stdcall ColorIndex(
		[in]VARIANT RHS);
	[id(0x000000b1), propget, helpcontext(0x000100b1)]
	HRESULT __stdcall FontStyle(
		[out, retval]VARIANT* RHS);
	[id(0x000000b1), propput, helpcontext(0x000100b1)]
	HRESULT __stdcall FontStyle(
		[in]VARIANT RHS);
	[id(0x00000065), propget, helpcontext(0x00010065)]
	HRESULT __stdcall Italic(
		[out, retval]VARIANT* RHS);
	[id(0x00000065), propput, helpcontext(0x00010065)]
	HRESULT __stdcall Italic(
		[in]VARIANT RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]VARIANT* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]VARIANT RHS);
	[id(0x000000dd), hidden, propget, helpcontext(0x000100dd)]
	HRESULT __stdcall OutlineFont(
		[out, retval]VARIANT* RHS);
	[id(0x000000dd), hidden, propput, helpcontext(0x000100dd)]
	HRESULT __stdcall OutlineFont(
		[in]VARIANT RHS);
	[id(0x00000067), hidden, propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT* RHS);
	[id(0x00000067), hidden, propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT RHS);
	[id(0x00000068), propget, helpcontext(0x00010068)]
	HRESULT __stdcall Size(
		[out, retval]VARIANT* RHS);
	[id(0x00000068), propput, helpcontext(0x00010068)]
	HRESULT __stdcall Size(
		[in]VARIANT RHS);
	[id(0x00000069), propget, helpcontext(0x00010069)]
	HRESULT __stdcall Strikethrough(
		[out, retval]VARIANT* RHS);
	[id(0x00000069), propput, helpcontext(0x00010069)]
	HRESULT __stdcall Strikethrough(
		[in]VARIANT RHS);
	[id(0x000000b3), propget, helpcontext(0x000100b3)]
	HRESULT __stdcall Subscript(
		[out, retval]VARIANT* RHS);
	[id(0x000000b3), propput, helpcontext(0x000100b3)]
	HRESULT __stdcall Subscript(
		[in]VARIANT RHS);
	[id(0x000000b2), propget, helpcontext(0x000100b2)]
	HRESULT __stdcall Superscript(
		[out, retval]VARIANT* RHS);
	[id(0x000000b2), propput, helpcontext(0x000100b2)]
	HRESULT __stdcall Superscript(
		[in]VARIANT RHS);
	[id(0x0000006a), propget, helpcontext(0x0001006a)]
	HRESULT __stdcall Underline(
		[out, retval]VARIANT* RHS);
	[id(0x0000006a), propput, helpcontext(0x0001006a)]
	HRESULT __stdcall Underline(
		[in]VARIANT RHS);
	[id(0x0000093d), propget, helpcontext(0x0001093d)]
	HRESULT __stdcall ThemeColor(
		[out, retval]VARIANT* RHS);
	[id(0x0000093d), propput, helpcontext(0x0001093d)]
	HRESULT __stdcall ThemeColor(
		[in]VARIANT RHS);
	[id(0x0000093e), propget, helpcontext(0x0001093e)]
	HRESULT __stdcall TintAndShade(
		[out, retval]VARIANT* RHS);
	[id(0x0000093e), propput, helpcontext(0x0001093e)]
	HRESULT __stdcall TintAndShade(
		[in]VARIANT RHS);
	[id(0x0000093f), propget, helpcontext(0x0001093f)]
	HRESULT __stdcall ThemeFont(
		[out, retval]XlThemeFont* RHS);
	[id(0x0000093f), propput, helpcontext(0x0001093f)]
	HRESULT __stdcall ThemeFont(
		[in]XlThemeFont RHS);
};
'!
!ExcelIFont categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIFont methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

background
	"Answer the <variant> value of the 'Background' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Background: answer.
	^answer asObject
!

background: rhs
	"Set the 'Background' property of the receiver to the <variant> value of the argument."

	self put_Background: rhs asVariant
!

bold
	"Answer the <variant> value of the 'Bold' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Bold: answer.
	^answer asObject
!

bold: rhs
	"Set the 'Bold' property of the receiver to the <variant> value of the argument."

	self put_Bold: rhs asVariant
!

color
	"Answer the <variant> value of the 'Color' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Color: answer.
	^answer asObject
!

color: rhs
	"Set the 'Color' property of the receiver to the <variant> value of the argument."

	self put_Color: rhs asVariant
!

colorIndex
	"Answer the <variant> value of the 'ColorIndex' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ColorIndex: answer.
	^answer asObject
!

colorIndex: rhs
	"Set the 'ColorIndex' property of the receiver to the <variant> value of the argument."

	self put_ColorIndex: rhs asVariant
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

fontStyle
	"Answer the <variant> value of the 'FontStyle' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_FontStyle: answer.
	^answer asObject
!

fontStyle: rhs
	"Set the 'FontStyle' property of the receiver to the <variant> value of the argument."

	self put_FontStyle: rhs asVariant
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Background: rhs
	"Private - Get the value of the 'Background' property of the receiver.

		HRESULT __stdcall Background(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant*>
	^self invalidCall!

get_Bold: rhs
	"Private - Get the value of the 'Bold' property of the receiver.

		HRESULT __stdcall Bold(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

get_Color: rhs
	"Private - Get the value of the 'Color' property of the receiver.

		HRESULT __stdcall Color(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

get_ColorIndex: rhs
	"Private - Get the value of the 'ColorIndex' property of the receiver.

		HRESULT __stdcall ColorIndex(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_FontStyle: rhs
	"Private - Get the value of the 'FontStyle' property of the receiver.

		HRESULT __stdcall FontStyle(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 19 variant*>
	^self invalidCall!

get_Italic: rhs
	"Private - Get the value of the 'Italic' property of the receiver.

		HRESULT __stdcall Italic(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 21 variant*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 23 variant*>
	^self invalidCall!

get_OutlineFont: rhs
	"Private - Get the value of the 'OutlineFont' property of the receiver.

		HRESULT __stdcall OutlineFont(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 25 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 27 variant*>
	^self invalidCall!

get_Size: rhs
	"Private - Get the value of the 'Size' property of the receiver.

		HRESULT __stdcall Size(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 29 variant*>
	^self invalidCall!

get_Strikethrough: rhs
	"Private - Get the value of the 'Strikethrough' property of the receiver.

		HRESULT __stdcall Strikethrough(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 31 variant*>
	^self invalidCall!

get_Subscript: rhs
	"Private - Get the value of the 'Subscript' property of the receiver.

		HRESULT __stdcall Subscript(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 33 variant*>
	^self invalidCall!

get_Superscript: rhs
	"Private - Get the value of the 'Superscript' property of the receiver.

		HRESULT __stdcall Superscript(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 35 variant*>
	^self invalidCall!

get_ThemeColor: rhs
	"Private - Get the value of the 'ThemeColor' property of the receiver.

		HRESULT __stdcall ThemeColor(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 39 variant*>
	^self invalidCall!

get_ThemeFont: rhs
	"Private - Get the value of the 'ThemeFont' property of the receiver.

		HRESULT __stdcall ThemeFont(
			[out, retval]XlThemeFont* RHS);"

	<virtual stdcall: hresult 43 sdword*>
	^self invalidCall!

get_TintAndShade: rhs
	"Private - Get the value of the 'TintAndShade' property of the receiver.

		HRESULT __stdcall TintAndShade(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 41 variant*>
	^self invalidCall!

get_Underline: rhs
	"Private - Get the value of the 'Underline' property of the receiver.

		HRESULT __stdcall Underline(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 37 variant*>
	^self invalidCall!

italic
	"Answer the <variant> value of the 'Italic' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Italic: answer.
	^answer asObject
!

italic: rhs
	"Set the 'Italic' property of the receiver to the <variant> value of the argument."

	self put_Italic: rhs asVariant
!

name
	"Answer the <variant> value of the 'Name' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <variant> value of the argument."

	self put_Name: rhs asVariant
!

outlineFont
	"Answer the <variant> value of the 'OutlineFont' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_OutlineFont: answer.
	^answer asObject
!

outlineFont: rhs
	"Set the 'OutlineFont' property of the receiver to the <variant> value of the argument."

	self put_OutlineFont: rhs asVariant
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Background: rhs
	"Private - Set the value of the 'Background' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Background(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 12 variant>
	^self invalidCall!

put_Bold: rhs
	"Private - Set the value of the 'Bold' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Bold(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

put_Color: rhs
	"Private - Set the value of the 'Color' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Color(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 16 variant>
	^self invalidCall!

put_ColorIndex: rhs
	"Private - Set the value of the 'ColorIndex' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ColorIndex(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 18 variant>
	^self invalidCall!

put_FontStyle: rhs
	"Private - Set the value of the 'FontStyle' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FontStyle(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 20 variant>
	^self invalidCall!

put_Italic: rhs
	"Private - Set the value of the 'Italic' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Italic(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 22 variant>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Name(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 24 variant>
	^self invalidCall!

put_OutlineFont: rhs
	"Private - Set the value of the 'OutlineFont' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall OutlineFont(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 26 variant>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 28 variant>
	^self invalidCall!

put_Size: rhs
	"Private - Set the value of the 'Size' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Size(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 30 variant>
	^self invalidCall!

put_Strikethrough: rhs
	"Private - Set the value of the 'Strikethrough' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Strikethrough(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 32 variant>
	^self invalidCall!

put_Subscript: rhs
	"Private - Set the value of the 'Subscript' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Subscript(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 34 variant>
	^self invalidCall!

put_Superscript: rhs
	"Private - Set the value of the 'Superscript' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Superscript(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 36 variant>
	^self invalidCall!

put_ThemeColor: rhs
	"Private - Set the value of the 'ThemeColor' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ThemeColor(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 40 variant>
	^self invalidCall!

put_ThemeFont: rhs
	"Private - Set the value of the 'ThemeFont' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ThemeFont(
			[in]XlThemeFont RHS);"

	<virtual stdcall: hresult 44 sdword>
	^self invalidCall!

put_TintAndShade: rhs
	"Private - Set the value of the 'TintAndShade' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TintAndShade(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 42 variant>
	^self invalidCall!

put_Underline: rhs
	"Private - Set the value of the 'Underline' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Underline(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 38 variant>
	^self invalidCall!

shadow
	"Answer the <variant> value of the 'Shadow' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Shadow: answer.
	^answer asObject
!

shadow: rhs
	"Set the 'Shadow' property of the receiver to the <variant> value of the argument."

	self put_Shadow: rhs asVariant
!

size
	"Answer the <variant> value of the 'Size' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Size: answer.
	^answer asObject
!

size: rhs
	"Set the 'Size' property of the receiver to the <variant> value of the argument."

	self put_Size: rhs asVariant
!

strikethrough
	"Answer the <variant> value of the 'Strikethrough' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Strikethrough: answer.
	^answer asObject
!

strikethrough: rhs
	"Set the 'Strikethrough' property of the receiver to the <variant> value of the argument."

	self put_Strikethrough: rhs asVariant
!

subscript
	"Answer the <variant> value of the 'Subscript' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Subscript: answer.
	^answer asObject
!

subscript: rhs
	"Set the 'Subscript' property of the receiver to the <variant> value of the argument."

	self put_Subscript: rhs asVariant
!

superscript
	"Answer the <variant> value of the 'Superscript' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Superscript: answer.
	^answer asObject
!

superscript: rhs
	"Set the 'Superscript' property of the receiver to the <variant> value of the argument."

	self put_Superscript: rhs asVariant
!

themeColor
	"Answer the <variant> value of the 'ThemeColor' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ThemeColor: answer.
	^answer asObject
!

themeColor: rhs
	"Set the 'ThemeColor' property of the receiver to the <variant> value of the argument."

	self put_ThemeColor: rhs asVariant
!

themeFont
	"Answer the <sdword> value of the 'ThemeFont' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ThemeFont: answer.
	^answer asObject
!

themeFont: rhs
	"Set the 'ThemeFont' property of the receiver to the <sdword> value of the argument."

	self put_ThemeFont: rhs
!

tintAndShade
	"Answer the <variant> value of the 'TintAndShade' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_TintAndShade: answer.
	^answer asObject
!

tintAndShade: rhs
	"Set the 'TintAndShade' property of the receiver to the <variant> value of the argument."

	self put_TintAndShade: rhs asVariant
!

underline
	"Answer the <variant> value of the 'Underline' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Underline: answer.
	^answer asObject
!

underline: rhs
	"Set the 'Underline' property of the receiver to the <variant> value of the argument."

	self put_Underline: rhs asVariant
! !
!ExcelIFont categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #background!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #background:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #bold!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #bold:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #color!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #colorIndex!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #colorIndex:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #fontStyle!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #fontStyle:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Background:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Bold:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Color:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_ColorIndex:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_FontStyle:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Italic:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_OutlineFont:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Size:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Strikethrough:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Subscript:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Superscript:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_ThemeColor:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_ThemeFont:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_TintAndShade:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #get_Underline:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #italic!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #italic:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #outlineFont!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #outlineFont:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #put_Background:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Bold:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Color:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_ColorIndex:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_FontStyle:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Italic:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_OutlineFont:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Size:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Strikethrough:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Subscript:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Superscript:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_ThemeColor:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_ThemeFont:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_TintAndShade:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #put_Underline:!**auto generated**!COM Interfaces-IFont!private! !
!ExcelIFont categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #size!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #size:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #strikethrough!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #strikethrough:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #subscript!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #subscript:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #superscript!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #superscript:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #themeFont!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #themeFont:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #tintAndShade:!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #underline!**auto generated**!properties!public! !
!ExcelIFont categoriesFor: #underline:!**auto generated**!properties!public! !

!ExcelIFont class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IFont'
		ExcelIFont defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Background:
			argumentTypes: 'variant*';
		defineFunction: #put_Background:
			argumentTypes: 'variant';
		defineFunction: #get_Bold:
			argumentTypes: 'variant*';
		defineFunction: #put_Bold:
			argumentTypes: 'variant';
		defineFunction: #get_Color:
			argumentTypes: 'variant*';
		defineFunction: #put_Color:
			argumentTypes: 'variant';
		defineFunction: #get_ColorIndex:
			argumentTypes: 'variant*';
		defineFunction: #put_ColorIndex:
			argumentTypes: 'variant';
		defineFunction: #get_FontStyle:
			argumentTypes: 'variant*';
		defineFunction: #put_FontStyle:
			argumentTypes: 'variant';
		defineFunction: #get_Italic:
			argumentTypes: 'variant*';
		defineFunction: #put_Italic:
			argumentTypes: 'variant';
		defineFunction: #get_Name:
			argumentTypes: 'variant*';
		defineFunction: #put_Name:
			argumentTypes: 'variant';
		defineFunction: #get_OutlineFont:
			argumentTypes: 'variant*';
		defineFunction: #put_OutlineFont:
			argumentTypes: 'variant';
		defineFunction: #get_Shadow:
			argumentTypes: 'variant*';
		defineFunction: #put_Shadow:
			argumentTypes: 'variant';
		defineFunction: #get_Size:
			argumentTypes: 'variant*';
		defineFunction: #put_Size:
			argumentTypes: 'variant';
		defineFunction: #get_Strikethrough:
			argumentTypes: 'variant*';
		defineFunction: #put_Strikethrough:
			argumentTypes: 'variant';
		defineFunction: #get_Subscript:
			argumentTypes: 'variant*';
		defineFunction: #put_Subscript:
			argumentTypes: 'variant';
		defineFunction: #get_Superscript:
			argumentTypes: 'variant*';
		defineFunction: #put_Superscript:
			argumentTypes: 'variant';
		defineFunction: #get_Underline:
			argumentTypes: 'variant*';
		defineFunction: #put_Underline:
			argumentTypes: 'variant';
		defineFunction: #get_ThemeColor:
			argumentTypes: 'variant*';
		defineFunction: #put_ThemeColor:
			argumentTypes: 'variant';
		defineFunction: #get_TintAndShade:
			argumentTypes: 'variant*';
		defineFunction: #put_TintAndShade:
			argumentTypes: 'variant';
		defineFunction: #get_ThemeFont:
			argumentTypes: 'sdword*';
		defineFunction: #put_ThemeFont:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIFont initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIFont class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIFont class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

