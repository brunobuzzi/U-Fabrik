"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIInterior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIInterior guid: (IID fromString: '{00020870-0001-0000-C000-000000000046}')!
ExcelIInterior comment: '<ExcelIInterior> is a wrapper class for the COM interface ''Excel.IInterior'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020870-0001-0000-C000-000000000046), 
	helpcontext(0x00020030), 
	hidden
]
interface IInterior : IDispatch
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
		[out, retval]VARIANT* RHS);
	[id(0x00000061), propput, helpcontext(0x00010061)]
	HRESULT __stdcall ColorIndex(
		[in]VARIANT RHS);
	[id(0x00000084), propget, helpcontext(0x00010084)]
	HRESULT __stdcall InvertIfNegative(
		[out, retval]VARIANT* RHS);
	[id(0x00000084), propput, helpcontext(0x00010084)]
	HRESULT __stdcall InvertIfNegative(
		[in]VARIANT RHS);
	[id(0x0000005f), propget, helpcontext(0x0001005f)]
	HRESULT __stdcall Pattern(
		[out, retval]VARIANT* RHS);
	[id(0x0000005f), propput, helpcontext(0x0001005f)]
	HRESULT __stdcall Pattern(
		[in]VARIANT RHS);
	[id(0x00000064), propget, helpcontext(0x00010064)]
	HRESULT __stdcall PatternColor(
		[out, retval]VARIANT* RHS);
	[id(0x00000064), propput, helpcontext(0x00010064)]
	HRESULT __stdcall PatternColor(
		[in]VARIANT RHS);
	[id(0x00000062), propget, helpcontext(0x00010062)]
	HRESULT __stdcall PatternColorIndex(
		[out, retval]VARIANT* RHS);
	[id(0x00000062), propput, helpcontext(0x00010062)]
	HRESULT __stdcall PatternColorIndex(
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
	[id(0x00000a53), propget, helpcontext(0x00010a53)]
	HRESULT __stdcall PatternThemeColor(
		[out, retval]VARIANT* RHS);
	[id(0x00000a53), propput, helpcontext(0x00010a53)]
	HRESULT __stdcall PatternThemeColor(
		[in]VARIANT RHS);
	[id(0x00000a54), propget, helpcontext(0x00010a54)]
	HRESULT __stdcall PatternTintAndShade(
		[out, retval]VARIANT* RHS);
	[id(0x00000a54), propput, helpcontext(0x00010a54)]
	HRESULT __stdcall PatternTintAndShade(
		[in]VARIANT RHS);
	[id(0x00000a55), propget, helpcontext(0x00010a55)]
	HRESULT __stdcall Gradient(
		[out, retval]IDispatch** RHS);
};
'!
!ExcelIInterior categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIInterior methodsFor!

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
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Gradient: rhs
	"Private - Get the value of the 'Gradient' property of the receiver.

		HRESULT __stdcall Gradient(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 31 IDispatch**>
	^self invalidCall!

get_InvertIfNegative: rhs
	"Private - Get the value of the 'InvertIfNegative' property of the receiver.

		HRESULT __stdcall InvertIfNegative(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Pattern: rhs
	"Private - Get the value of the 'Pattern' property of the receiver.

		HRESULT __stdcall Pattern(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 variant*>
	^self invalidCall!

get_PatternColor: rhs
	"Private - Get the value of the 'PatternColor' property of the receiver.

		HRESULT __stdcall PatternColor(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 19 variant*>
	^self invalidCall!

get_PatternColorIndex: rhs
	"Private - Get the value of the 'PatternColorIndex' property of the receiver.

		HRESULT __stdcall PatternColorIndex(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 21 variant*>
	^self invalidCall!

get_PatternThemeColor: rhs
	"Private - Get the value of the 'PatternThemeColor' property of the receiver.

		HRESULT __stdcall PatternThemeColor(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 27 variant*>
	^self invalidCall!

get_PatternTintAndShade: rhs
	"Private - Get the value of the 'PatternTintAndShade' property of the receiver.

		HRESULT __stdcall PatternTintAndShade(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 29 variant*>
	^self invalidCall!

get_ThemeColor: rhs
	"Private - Get the value of the 'ThemeColor' property of the receiver.

		HRESULT __stdcall ThemeColor(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 23 variant*>
	^self invalidCall!

get_TintAndShade: rhs
	"Private - Get the value of the 'TintAndShade' property of the receiver.

		HRESULT __stdcall TintAndShade(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 25 variant*>
	^self invalidCall!

gradient
	"Answer the <IDispatch> value of the 'Gradient' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Gradient: answer.
	^answer asObject
!

invertIfNegative
	"Answer the <variant> value of the 'InvertIfNegative' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_InvertIfNegative: answer.
	^answer asObject
!

invertIfNegative: rhs
	"Set the 'InvertIfNegative' property of the receiver to the <variant> value of the argument."

	self put_InvertIfNegative: rhs asVariant
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pattern
	"Answer the <variant> value of the 'Pattern' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Pattern: answer.
	^answer asObject
!

pattern: rhs
	"Set the 'Pattern' property of the receiver to the <variant> value of the argument."

	self put_Pattern: rhs asVariant
!

patternColor
	"Answer the <variant> value of the 'PatternColor' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_PatternColor: answer.
	^answer asObject
!

patternColor: rhs
	"Set the 'PatternColor' property of the receiver to the <variant> value of the argument."

	self put_PatternColor: rhs asVariant
!

patternColorIndex
	"Answer the <variant> value of the 'PatternColorIndex' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_PatternColorIndex: answer.
	^answer asObject
!

patternColorIndex: rhs
	"Set the 'PatternColorIndex' property of the receiver to the <variant> value of the argument."

	self put_PatternColorIndex: rhs asVariant
!

patternThemeColor
	"Answer the <variant> value of the 'PatternThemeColor' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_PatternThemeColor: answer.
	^answer asObject
!

patternThemeColor: rhs
	"Set the 'PatternThemeColor' property of the receiver to the <variant> value of the argument."

	self put_PatternThemeColor: rhs asVariant
!

patternTintAndShade
	"Answer the <variant> value of the 'PatternTintAndShade' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_PatternTintAndShade: answer.
	^answer asObject
!

patternTintAndShade: rhs
	"Set the 'PatternTintAndShade' property of the receiver to the <variant> value of the argument."

	self put_PatternTintAndShade: rhs asVariant
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
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ColorIndex(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

put_InvertIfNegative: rhs
	"Private - Set the value of the 'InvertIfNegative' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall InvertIfNegative(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 16 variant>
	^self invalidCall!

put_Pattern: rhs
	"Private - Set the value of the 'Pattern' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Pattern(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 18 variant>
	^self invalidCall!

put_PatternColor: rhs
	"Private - Set the value of the 'PatternColor' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall PatternColor(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 20 variant>
	^self invalidCall!

put_PatternColorIndex: rhs
	"Private - Set the value of the 'PatternColorIndex' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall PatternColorIndex(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 22 variant>
	^self invalidCall!

put_PatternThemeColor: rhs
	"Private - Set the value of the 'PatternThemeColor' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall PatternThemeColor(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 28 variant>
	^self invalidCall!

put_PatternTintAndShade: rhs
	"Private - Set the value of the 'PatternTintAndShade' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall PatternTintAndShade(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 30 variant>
	^self invalidCall!

put_ThemeColor: rhs
	"Private - Set the value of the 'ThemeColor' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ThemeColor(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 24 variant>
	^self invalidCall!

put_TintAndShade: rhs
	"Private - Set the value of the 'TintAndShade' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TintAndShade(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 26 variant>
	^self invalidCall!

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
!ExcelIInterior categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #color!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #colorIndex!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #colorIndex:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_Color:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_ColorIndex:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_Gradient:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_InvertIfNegative:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_Pattern:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_PatternColor:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_PatternColorIndex:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_PatternThemeColor:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_PatternTintAndShade:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_ThemeColor:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #get_TintAndShade:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #gradient!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #invertIfNegative!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #invertIfNegative:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #pattern!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #pattern:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #patternColor!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #patternColor:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #patternColorIndex!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #patternColorIndex:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #patternThemeColor!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #patternThemeColor:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #patternTintAndShade!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #patternTintAndShade:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #put_Color:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_ColorIndex:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_InvertIfNegative:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_Pattern:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_PatternColor:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_PatternColorIndex:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_PatternThemeColor:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_PatternTintAndShade:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_ThemeColor:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #put_TintAndShade:!**auto generated**!COM Interfaces-IInterior!private! !
!ExcelIInterior categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelIInterior categoriesFor: #tintAndShade:!**auto generated**!properties!public! !

!ExcelIInterior class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IInterior'
		ExcelIInterior defineTemplate"

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
			argumentTypes: 'variant*';
		defineFunction: #put_ColorIndex:
			argumentTypes: 'variant';
		defineFunction: #get_InvertIfNegative:
			argumentTypes: 'variant*';
		defineFunction: #put_InvertIfNegative:
			argumentTypes: 'variant';
		defineFunction: #get_Pattern:
			argumentTypes: 'variant*';
		defineFunction: #put_Pattern:
			argumentTypes: 'variant';
		defineFunction: #get_PatternColor:
			argumentTypes: 'variant*';
		defineFunction: #put_PatternColor:
			argumentTypes: 'variant';
		defineFunction: #get_PatternColorIndex:
			argumentTypes: 'variant*';
		defineFunction: #put_PatternColorIndex:
			argumentTypes: 'variant';
		defineFunction: #get_ThemeColor:
			argumentTypes: 'variant*';
		defineFunction: #put_ThemeColor:
			argumentTypes: 'variant';
		defineFunction: #get_TintAndShade:
			argumentTypes: 'variant*';
		defineFunction: #put_TintAndShade:
			argumentTypes: 'variant';
		defineFunction: #get_PatternThemeColor:
			argumentTypes: 'variant*';
		defineFunction: #put_PatternThemeColor:
			argumentTypes: 'variant';
		defineFunction: #get_PatternTintAndShade:
			argumentTypes: 'variant*';
		defineFunction: #put_PatternTintAndShade:
			argumentTypes: 'variant';
		defineFunction: #get_Gradient:
			argumentTypes: 'IDispatch**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIInterior initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIInterior class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIInterior class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

