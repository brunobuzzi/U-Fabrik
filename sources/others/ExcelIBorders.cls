"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIBorders
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIBorders guid: (IID fromString: '{00020855-0001-0000-C000-000000000046}')!
ExcelIBorders comment: '<ExcelIBorders> is a wrapper class for the COM interface ''Excel.IBorders'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020855-0001-0000-C000-000000000046), 
	helpcontext(0x00020015), 
	hidden
]
interface IBorders : IDispatch
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
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]XlBordersIndex Index,
		[out, retval]Border** RHS);
	[id(0x00000077), propget, helpcontext(0x00010077)]
	HRESULT __stdcall LineStyle(
		[out, retval]VARIANT* RHS);
	[id(0x00000077), propput, helpcontext(0x00010077)]
	HRESULT __stdcall LineStyle(
		[in]VARIANT RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]VARIANT* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]VARIANT RHS);
	[id(0x00000078), propget, helpcontext(0x00010078)]
	HRESULT __stdcall Weight(
		[out, retval]VARIANT* RHS);
	[id(0x00000078), propput, helpcontext(0x00010078)]
	HRESULT __stdcall Weight(
		[in]VARIANT RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]XlBordersIndex Index,
		[out, retval]Border** RHS);
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
};
'!
!ExcelIBorders categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIBorders methodsFor!

_default: index
	"Answer the <ExcelBorder> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self
		get__Default: index
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

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

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]XlBordersIndex Index,
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 24 sdword ExcelBorder**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 19 IUnknown**>
	^self invalidCall!

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

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]XlBordersIndex Index,
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 16 sdword ExcelBorder**>
	^self invalidCall!

get_LineStyle: rhs
	"Private - Get the value of the 'LineStyle' property of the receiver.

		HRESULT __stdcall LineStyle(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 variant*>
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
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 25 variant*>
	^self invalidCall!

get_TintAndShade: rhs
	"Private - Get the value of the 'TintAndShade' property of the receiver.

		HRESULT __stdcall TintAndShade(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 27 variant*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 20 variant*>
	^self invalidCall!

get_Weight: rhs
	"Private - Get the value of the 'Weight' property of the receiver.

		HRESULT __stdcall Weight(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 22 variant*>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelBorder> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self
		get_Item: index
		rhs: answer.
	^answer asObject
!

lineStyle
	"Answer the <variant> value of the 'LineStyle' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_LineStyle: answer.
	^answer asObject
!

lineStyle: rhs
	"Set the 'LineStyle' property of the receiver to the <variant> value of the argument."

	self put_LineStyle: rhs asVariant
!

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
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ColorIndex(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

put_LineStyle: rhs
	"Private - Set the value of the 'LineStyle' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall LineStyle(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 18 variant>
	^self invalidCall!

put_ThemeColor: rhs
	"Private - Set the value of the 'ThemeColor' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ThemeColor(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 26 variant>
	^self invalidCall!

put_TintAndShade: rhs
	"Private - Set the value of the 'TintAndShade' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TintAndShade(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 28 variant>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Value(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 21 variant>
	^self invalidCall!

put_Weight: rhs
	"Private - Set the value of the 'Weight' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Weight(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 23 variant>
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
!

value
	"Answer the <variant> value of the 'Value' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <variant> value of the argument."

	self put_Value: rhs asVariant
!

weight
	"Answer the <variant> value of the 'Weight' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Weight: answer.
	^answer asObject
!

weight: rhs
	"Set the 'Weight' property of the receiver to the <variant> value of the argument."

	self put_Weight: rhs asVariant
! !
!ExcelIBorders categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #color!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #colorIndex!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #colorIndex:!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_Color:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_ColorIndex:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_LineStyle:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_ThemeColor:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_TintAndShade:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #get_Weight:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIBorders categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #lineStyle!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #lineStyle:!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #put_Color:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #put_ColorIndex:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #put_LineStyle:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #put_ThemeColor:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #put_TintAndShade:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #put_Weight:!**auto generated**!COM Interfaces-IBorders!private! !
!ExcelIBorders categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #tintAndShade:!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #weight!**auto generated**!properties!public! !
!ExcelIBorders categoriesFor: #weight:!**auto generated**!properties!public! !

!ExcelIBorders class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IBorders'
		ExcelIBorders defineTemplate"

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
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'sdword ExcelBorder**';
		defineFunction: #get_LineStyle:
			argumentTypes: 'variant*';
		defineFunction: #put_LineStyle:
			argumentTypes: 'variant';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Value:
			argumentTypes: 'variant*';
		defineFunction: #put_Value:
			argumentTypes: 'variant';
		defineFunction: #get_Weight:
			argumentTypes: 'variant*';
		defineFunction: #put_Weight:
			argumentTypes: 'variant';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'sdword ExcelBorder**';
		defineFunction: #get_ThemeColor:
			argumentTypes: 'variant*';
		defineFunction: #put_ThemeColor:
			argumentTypes: 'variant';
		defineFunction: #get_TintAndShade:
			argumentTypes: 'variant*';
		defineFunction: #put_TintAndShade:
			argumentTypes: 'variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIBorders initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIBorders class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIBorders class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

