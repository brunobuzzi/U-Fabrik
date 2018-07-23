"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelITab
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelITab guid: (IID fromString: '{00024469-0001-0000-C000-000000000046}')!
ExcelITab comment: '<ExcelITab> is a wrapper class for the COM interface ''Excel.ITab'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024469-0001-0000-C000-000000000046), 
	helpcontext(0x000200ff), 
	hidden
]
interface ITab : IDispatch
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
	[id(0x00000063), propget, helpcontext(0x00010063)]
	HRESULT __stdcall Color(
		[out, retval]VARIANT* RHS);
	[id(0x00000063), propput, helpcontext(0x00010063)]
	HRESULT __stdcall Color(
		[in]VARIANT RHS);
	[id(0x00000061), propget, helpcontext(0x00010061)]
	HRESULT __stdcall ColorIndex(
		[out, retval]XlColorIndex* RHS);
	[id(0x00000061), propput, helpcontext(0x00010061)]
	HRESULT __stdcall ColorIndex(
		[in]XlColorIndex RHS);
	[id(0x0000093d), propget, helpcontext(0x0001093d)]
	HRESULT __stdcall ThemeColor(
		[out, retval]XlThemeColor* RHS);
	[id(0x0000093d), propput, helpcontext(0x0001093d)]
	HRESULT __stdcall ThemeColor(
		[in]XlThemeColor RHS);
	[id(0x0000093e), propget, helpcontext(0x0001093e)]
	HRESULT __stdcall TintAndShade(
		[out, retval]VARIANT* RHS);
	[id(0x0000093e), propput, helpcontext(0x0001093e)]
	HRESULT __stdcall TintAndShade(
		[in]VARIANT RHS);
};
'!
!ExcelITab categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelITab methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
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
	"Answer the <sdword> value of the 'ColorIndex' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ColorIndex: answer.
	^answer asObject
!

colorIndex: rhs
	"Set the 'ColorIndex' property of the receiver to the <sdword> value of the argument."

	self put_ColorIndex: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Color: rhs
	"Private - Get the value of the 'Color' property of the receiver.

		HRESULT __stdcall Color(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant*>
	^self invalidCall!

get_ColorIndex: rhs
	"Private - Get the value of the 'ColorIndex' property of the receiver.

		HRESULT __stdcall ColorIndex(
			[out, retval]XlColorIndex* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ThemeColor: rhs
	"Private - Get the value of the 'ThemeColor' property of the receiver.

		HRESULT __stdcall ThemeColor(
			[out, retval]XlThemeColor* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_TintAndShade: rhs
	"Private - Get the value of the 'TintAndShade' property of the receiver.

		HRESULT __stdcall TintAndShade(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Color: rhs
	"Private - Set the value of the 'Color' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Color(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 12 variant>
	^self invalidCall!

put_ColorIndex: rhs
	"Private - Set the value of the 'ColorIndex' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ColorIndex(
			[in]XlColorIndex RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_ThemeColor: rhs
	"Private - Set the value of the 'ThemeColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ThemeColor(
			[in]XlThemeColor RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_TintAndShade: rhs
	"Private - Set the value of the 'TintAndShade' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TintAndShade(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 18 variant>
	^self invalidCall!

themeColor
	"Answer the <sdword> value of the 'ThemeColor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ThemeColor: answer.
	^answer asObject
!

themeColor: rhs
	"Set the 'ThemeColor' property of the receiver to the <sdword> value of the argument."

	self put_ThemeColor: rhs
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
! !
!ExcelITab categoriesFor: #application!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #color!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #colorIndex!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #colorIndex:!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #get_Color:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #get_ColorIndex:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #get_ThemeColor:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #get_TintAndShade:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #put_Color:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #put_ColorIndex:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #put_ThemeColor:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #put_TintAndShade:!**auto generated**!COM Interfaces-ITab!private! !
!ExcelITab categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelITab categoriesFor: #tintAndShade:!**auto generated**!properties!public! !

!ExcelITab class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ITab'
		ExcelITab defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Color:
			argumentTypes: 'variant*';
		defineFunction: #put_Color:
			argumentTypes: 'variant';
		defineFunction: #get_ColorIndex:
			argumentTypes: 'sdword*';
		defineFunction: #put_ColorIndex:
			argumentTypes: 'sdword';
		defineFunction: #get_ThemeColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_ThemeColor:
			argumentTypes: 'sdword';
		defineFunction: #get_TintAndShade:
			argumentTypes: 'variant*';
		defineFunction: #put_TintAndShade:
			argumentTypes: 'variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelITab initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelITab class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelITab class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

