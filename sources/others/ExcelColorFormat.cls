"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelColorFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelColorFormat guid: (IID fromString: '{000C0312-0000-0000-C000-000000000046}')!
ExcelColorFormat comment: '<ExcelColorFormat> is a wrapper class for the COM interface ''Excel.ColorFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0312-0000-0000-C000-000000000046), 
	helpcontext(0x00019a28), 
	nonextensible, 
	dual
]
interface ColorFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x00019a29)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0000000000), propget, helpcontext(0x00019a2a)]
	HRESULT __stdcall RGB(
		[out, retval]MsoRGBType* RGB);
	[id(0000000000), propput, helpcontext(0x00019a2a)]
	HRESULT __stdcall RGB(
		[in]MsoRGBType RGB);
	[id(0x00000064), propget, helpcontext(0x00019a2b)]
	HRESULT __stdcall SchemeColor(
		[out, retval]int* SchemeColor);
	[id(0x00000064), propput, helpcontext(0x00019a2b)]
	HRESULT __stdcall SchemeColor(
		[in]int SchemeColor);
	[id(0x00000065), propget, helpcontext(0x00019a2c)]
	HRESULT __stdcall Type(
		[out, retval]MsoColorType* Type);
	[id(0x00000066), propget, helpcontext(0x00019a2e)]
	HRESULT __stdcall TintAndShade(
		[out, retval]float* pValue);
	[id(0x00000066), propput, helpcontext(0x00019a2e)]
	HRESULT __stdcall TintAndShade(
		[in]float pValue);
	[id(0x00000068), propget]
	HRESULT __stdcall ObjectThemeColor(
		[out, retval]MsoThemeColorIndex* ObjectThemeColor);
	[id(0x00000068), propput]
	HRESULT __stdcall ObjectThemeColor(
		[in]MsoThemeColorIndex ObjectThemeColor);
};
'!
!ExcelColorFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelColorFormat methodsFor!

get_ObjectThemeColor: objectThemeColor
	"Private - Get the value of the 'ObjectThemeColor' property of the receiver.

		HRESULT __stdcall ObjectThemeColor(
			[out, retval]MsoThemeColorIndex* ObjectThemeColor);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_RGB: rgb
	"Private - Get the value of the 'RGB' property of the receiver.

		HRESULT __stdcall RGB(
			[out, retval]MsoRGBType* RGB);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_SchemeColor: schemeColor
	"Private - Get the value of the 'SchemeColor' property of the receiver.

		HRESULT __stdcall SchemeColor(
			[out, retval]int* SchemeColor);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_TintAndShade: pValue
	"Private - Get the value of the 'TintAndShade' property of the receiver.

		HRESULT __stdcall TintAndShade(
			[out, retval]float* pValue);"

	<virtual stdcall: hresult 16 float*>
	^self invalidCall!

get_Type: type
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]MsoColorType* Type);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

objectThemeColor
	"Answer the <sdword> value of the 'ObjectThemeColor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ObjectThemeColor: answer.
	^answer asObject
!

objectThemeColor: objectThemeColor
	"Set the 'ObjectThemeColor' property of the receiver to the <sdword> value of the argument."

	self put_ObjectThemeColor: objectThemeColor
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_ObjectThemeColor: objectThemeColor
	"Private - Set the value of the 'ObjectThemeColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, objectThemeColor.

		HRESULT __stdcall ObjectThemeColor(
			[in]MsoThemeColorIndex ObjectThemeColor);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_RGB: rgb
	"Private - Set the value of the 'RGB' property of the object wrapped by the 
	 receiver to the <sdword> argument, rgb.

		HRESULT __stdcall RGB(
			[in]MsoRGBType RGB);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_SchemeColor: schemeColor
	"Private - Set the value of the 'SchemeColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, schemeColor.

		HRESULT __stdcall SchemeColor(
			[in]int SchemeColor);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_TintAndShade: pValue
	"Private - Set the value of the 'TintAndShade' property of the object wrapped by the 
	 receiver to the <float> argument, pValue.

		HRESULT __stdcall TintAndShade(
			[in]float pValue);"

	<virtual stdcall: hresult 17 float>
	^self invalidCall!

rgb
	"Answer the <sdword> value of the 'RGB' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RGB: answer.
	^answer asObject
!

rgb: rgb
	"Set the 'RGB' property of the receiver to the <sdword> value of the argument."

	self put_RGB: rgb
!

schemeColor
	"Answer the <sdword> value of the 'SchemeColor' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SchemeColor: answer.
	^answer asObject
!

schemeColor: schemeColor
	"Set the 'SchemeColor' property of the receiver to the <sdword> value of the argument."

	self put_SchemeColor: schemeColor
!

tintAndShade
	"Answer the <float> value of the 'TintAndShade' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_TintAndShade: answer.
	^answer asObject
!

tintAndShade: pValue
	"Set the 'TintAndShade' property of the receiver to the <float> value of the argument."

	self put_TintAndShade: pValue
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

value
	"Answer the <sdword> value of the 'RGB' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self rgb
!

value: rgb
	"Set the 'RGB' property of the receiver to the <sdword> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self rgb: rgb
! !
!ExcelColorFormat categoriesFor: #get_ObjectThemeColor:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #get_RGB:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #get_SchemeColor:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #get_TintAndShade:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #get_Type:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelColorFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelColorFormat categoriesFor: #objectThemeColor!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #objectThemeColor:!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #put_ObjectThemeColor:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #put_RGB:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #put_SchemeColor:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #put_TintAndShade:!**auto generated**!COM Interfaces-ColorFormat!private! !
!ExcelColorFormat categoriesFor: #rgb!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #rgb:!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #schemeColor!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #schemeColor:!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #tintAndShade:!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #value!**auto generated**!properties!public! !
!ExcelColorFormat categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelColorFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ColorFormat'
		ExcelColorFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_RGB:
			argumentTypes: 'sdword*';
		defineFunction: #put_RGB:
			argumentTypes: 'sdword';
		defineFunction: #get_SchemeColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_SchemeColor:
			argumentTypes: 'sdword';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_TintAndShade:
			argumentTypes: 'float*';
		defineFunction: #put_TintAndShade:
			argumentTypes: 'float';
		defineFunction: #get_ObjectThemeColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_ObjectThemeColor:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelColorFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelColorFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelColorFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

