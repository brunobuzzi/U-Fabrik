"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIColorStop
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIColorStop guid: (IID fromString: '{000244AD-0001-0000-C000-000000000046}')!
ExcelIColorStop comment: '<ExcelIColorStop> is a wrapper class for the COM interface ''Excel.IColorStop'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244AD-0001-0000-C000-000000000046), 
	helpcontext(0x00020143), 
	hidden
]
interface IColorStop : IDispatch
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
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000063), propget, helpcontext(0x00010063)]
	HRESULT __stdcall Color(
		[out, retval]VARIANT* RHS);
	[id(0x00000063), propput, helpcontext(0x00010063)]
	HRESULT __stdcall Color(
		[in]VARIANT RHS);
	[id(0x0000093d), propget, helpcontext(0x0001093d)]
	HRESULT __stdcall ThemeColor(
		[out, retval]long* RHS);
	[id(0x0000093d), propput, helpcontext(0x0001093d)]
	HRESULT __stdcall ThemeColor(
		[in]long RHS);
	[id(0x0000093e), propget, helpcontext(0x0001093e)]
	HRESULT __stdcall TintAndShade(
		[out, retval]VARIANT* RHS);
	[id(0x0000093e), propput, helpcontext(0x0001093e)]
	HRESULT __stdcall TintAndShade(
		[in]VARIANT RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]double* RHS);
	[id(0x00000085), propput, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[in]double RHS);
};
'!
!ExcelIColorStop categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIColorStop methodsFor!

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

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 11>
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

	<virtual stdcall: hresult 12 variant*>
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

get_Position: rhs
	"Private - Get the value of the 'Position' property of the receiver.

		HRESULT __stdcall Position(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 18 double*>
	^self invalidCall!

get_ThemeColor: rhs
	"Private - Get the value of the 'ThemeColor' property of the receiver.

		HRESULT __stdcall ThemeColor(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_TintAndShade: rhs
	"Private - Get the value of the 'TintAndShade' property of the receiver.

		HRESULT __stdcall TintAndShade(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

position
	"Answer the <double> value of the 'Position' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Position: answer.
	^answer asObject
!

position: rhs
	"Set the 'Position' property of the receiver to the <double> value of the argument."

	self put_Position: rhs
!

put_Color: rhs
	"Private - Set the value of the 'Color' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Color(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 13 variant>
	^self invalidCall!

put_Position: rhs
	"Private - Set the value of the 'Position' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Position(
			[in]double RHS);"

	<virtual stdcall: hresult 19 double>
	^self invalidCall!

put_ThemeColor: rhs
	"Private - Set the value of the 'ThemeColor' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ThemeColor(
			[in]long RHS);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

put_TintAndShade: rhs
	"Private - Set the value of the 'TintAndShade' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall TintAndShade(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 17 variant>
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
!ExcelIColorStop categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #color!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #color:!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIColorStop categoriesFor: #Delete!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #get_Color:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #get_Position:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #get_ThemeColor:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #get_TintAndShade:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #position!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #put_Color:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #put_Position:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #put_ThemeColor:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #put_TintAndShade:!**auto generated**!COM Interfaces-IColorStop!private! !
!ExcelIColorStop categoriesFor: #themeColor!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #themeColor:!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #tintAndShade!**auto generated**!properties!public! !
!ExcelIColorStop categoriesFor: #tintAndShade:!**auto generated**!properties!public! !

!ExcelIColorStop class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IColorStop'
		ExcelIColorStop defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete;
		defineFunction: #get_Color:
			argumentTypes: 'variant*';
		defineFunction: #put_Color:
			argumentTypes: 'variant';
		defineFunction: #get_ThemeColor:
			argumentTypes: 'sdword*';
		defineFunction: #put_ThemeColor:
			argumentTypes: 'sdword';
		defineFunction: #get_TintAndShade:
			argumentTypes: 'variant*';
		defineFunction: #put_TintAndShade:
			argumentTypes: 'variant';
		defineFunction: #get_Position:
			argumentTypes: 'double*';
		defineFunction: #put_Position:
			argumentTypes: 'double'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIColorStop initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIColorStop class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIColorStop class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

