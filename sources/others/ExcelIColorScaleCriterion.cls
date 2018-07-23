"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIColorScaleCriterion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIColorScaleCriterion guid: (IID fromString: '{00024495-0001-0000-C000-000000000046}')!
ExcelIColorScaleCriterion comment: '<ExcelIColorScaleCriterion> is a wrapper class for the COM interface ''Excel.IColorScaleCriterion'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024495-0001-0000-C000-000000000046), 
	helpcontext(0x0002012b), 
	hidden
]
interface IColorScaleCriterion : IDispatch
 {
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlConditionValueTypes* RHS);
	[id(0x0000006c), propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]XlConditionValueTypes RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]VARIANT* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]VARIANT RHS);
	[id(0x00000a9d), propget, helpcontext(0x00010a9d)]
	HRESULT __stdcall FormatColor(
		[out, retval]FormatColor** RHS);
};
'!
!ExcelIColorScaleCriterion categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIColorScaleCriterion methodsFor!

formatColor
	"Answer the <ExcelFormatColor> value of the 'FormatColor' property of the receiver."

	| answer |
	answer := ExcelFormatColor newPointer.
	self get_FormatColor: answer.
	^answer asObject
!

get_FormatColor: rhs
	"Private - Get the value of the 'FormatColor' property of the receiver.

		HRESULT __stdcall FormatColor(
			[out, retval]FormatColor** RHS);"

	<virtual stdcall: hresult 13 ExcelFormatColor**>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 8 sdword*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlConditionValueTypes* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant*>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

put_Type: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Type(
			[in]XlConditionValueTypes RHS);"

	<virtual stdcall: hresult 10 sdword>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Value(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 12 variant>
	^self invalidCall!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

type: rhs
	"Set the 'Type' property of the receiver to the <sdword> value of the argument."

	self put_Type: rhs
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
! !
!ExcelIColorScaleCriterion categoriesFor: #formatColor!**auto generated**!properties!public! !
!ExcelIColorScaleCriterion categoriesFor: #get_FormatColor:!**auto generated**!COM Interfaces-IColorScaleCriterion!private! !
!ExcelIColorScaleCriterion categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IColorScaleCriterion!private! !
!ExcelIColorScaleCriterion categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IColorScaleCriterion!private! !
!ExcelIColorScaleCriterion categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IColorScaleCriterion!private! !
!ExcelIColorScaleCriterion categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIColorScaleCriterion categoriesFor: #put_Type:!**auto generated**!COM Interfaces-IColorScaleCriterion!private! !
!ExcelIColorScaleCriterion categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IColorScaleCriterion!private! !
!ExcelIColorScaleCriterion categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIColorScaleCriterion categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelIColorScaleCriterion categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIColorScaleCriterion categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelIColorScaleCriterion class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IColorScaleCriterion'
		ExcelIColorScaleCriterion defineTemplate"

	self
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword';
		defineFunction: #get_Value:
			argumentTypes: 'variant*';
		defineFunction: #put_Value:
			argumentTypes: 'variant';
		defineFunction: #get_FormatColor:
			argumentTypes: 'ExcelFormatColor**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIColorScaleCriterion initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIColorScaleCriterion class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIColorScaleCriterion class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

