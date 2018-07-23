"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIFloor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIFloor guid: (IID fromString: '{000208C7-0001-0000-C000-000000000046}')!
ExcelIFloor comment: '<ExcelIFloor> is a wrapper class for the COM interface ''Excel.IFloor'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208C7-0001-0000-C000-000000000046), 
	helpcontext(0x00020087), 
	hidden
]
interface IFloor : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000070), helpcontext(0x00010070)]
	HRESULT __stdcall ClearFormats(
		[out, retval]VARIANT* RHS);
	[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
	HRESULT __stdcall Fill(
		[out, retval]ChartFillFormat** RHS);
	[id(0x000000a1), propget, helpcontext(0x000100a1)]
	HRESULT __stdcall PictureType(
		[out, retval]VARIANT* RHS);
	[id(0x000000a1), propput, helpcontext(0x000100a1)]
	HRESULT __stdcall PictureType(
		[in]VARIANT RHS);
	[id(0x000000d3), helpcontext(0x000100d3)]
	HRESULT __stdcall Paste();
	[id(0x00000a5c), propget, helpcontext(0x00010a5c)]
	HRESULT __stdcall Thickness(
		[out, retval]long* RHS);
	[id(0x00000a5c), propput, helpcontext(0x00010a5c)]
	HRESULT __stdcall Thickness(
		[in]long RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelIFloor categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIFloor methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
	^answer asObject
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ClearFormats: answer.
	^answer asObject
!

ClearFormats: rhs
	"Private - Invoke the ClearFormats() method of the COM object.

		HRESULT __stdcall ClearFormats(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver."

	| answer |
	answer := ExcelChartFillFormat newPointer.
	self get_Fill: answer.
	^answer asObject
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver."

	| answer |
	answer := ExcelChartFormat newPointer.
	self get_Format: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 13 ExcelBorder**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Fill: rhs
	"Private - Get the value of the 'Fill' property of the receiver.

		HRESULT __stdcall Fill(
			[out, retval]ChartFillFormat** RHS);"

	<virtual stdcall: hresult 16 ExcelChartFillFormat**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 22 ExcelChartFormat**>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 15 ExcelInterior**>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PictureType: rhs
	"Private - Get the value of the 'PictureType' property of the receiver.

		HRESULT __stdcall PictureType(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 17 variant*>
	^self invalidCall!

get_Thickness: rhs
	"Private - Get the value of the 'Thickness' property of the receiver.

		HRESULT __stdcall Thickness(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

paste
	"Invoke the Paste() method of the COM object."

	^self Paste
!

Paste
	"Private - Invoke the Paste() method of the COM object.

		HRESULT __stdcall Paste();"

	<virtual stdcall: hresult 19>
	^self invalidCall!

pictureType
	"Answer the <variant> value of the 'PictureType' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_PictureType: answer.
	^answer asObject
!

pictureType: rhs
	"Set the 'PictureType' property of the receiver to the <variant> value of the argument."

	self put_PictureType: rhs asVariant
!

put_PictureType: rhs
	"Private - Set the value of the 'PictureType' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall PictureType(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 18 variant>
	^self invalidCall!

put_Thickness: rhs
	"Private - Set the value of the 'Thickness' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Thickness(
			[in]long RHS);"

	<virtual stdcall: hresult 21 sdword>
	^self invalidCall!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Select: answer.
	^answer asObject
!

Select: rhs
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

thickness
	"Answer the <sdword> value of the 'Thickness' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Thickness: answer.
	^answer asObject
!

thickness: rhs
	"Set the 'Thickness' property of the receiver to the <sdword> value of the argument."

	self put_Thickness: rhs
! !
!ExcelIFloor categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelIFloor categoriesFor: #ClearFormats:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #format!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_Format:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_PictureType:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #get_Thickness:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #paste!**auto generated**!methods!public! !
!ExcelIFloor categoriesFor: #Paste!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #pictureType!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #pictureType:!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #put_PictureType:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #put_Thickness:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIFloor categoriesFor: #Select:!**auto generated**!COM Interfaces-IFloor!private! !
!ExcelIFloor categoriesFor: #thickness!**auto generated**!properties!public! !
!ExcelIFloor categoriesFor: #thickness:!**auto generated**!properties!public! !

!ExcelIFloor class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IFloor'
		ExcelIFloor defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #ClearFormats:
			argumentTypes: 'variant*';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Fill:
			argumentTypes: 'ExcelChartFillFormat**';
		defineFunction: #get_PictureType:
			argumentTypes: 'variant*';
		defineFunction: #put_PictureType:
			argumentTypes: 'variant';
		defineFunction: #Paste;
		defineFunction: #get_Thickness:
			argumentTypes: 'sdword*';
		defineFunction: #put_Thickness:
			argumentTypes: 'sdword';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIFloor initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIFloor class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIFloor class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

