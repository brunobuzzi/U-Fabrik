"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIIconCriterion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIIconCriterion guid: (IID fromString: '{00024499-0001-0000-C000-000000000046}')!
ExcelIIconCriterion comment: '<ExcelIIconCriterion> is a wrapper class for the COM interface ''Excel.IIconCriterion'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024499-0001-0000-C000-000000000046), 
	helpcontext(0x0002012f), 
	hidden
]
interface IIconCriterion : IDispatch
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
	[id(0x0000031d), propget, helpcontext(0x0001031d)]
	HRESULT __stdcall Operator(
		[out, retval]long* RHS);
	[id(0x0000031d), propput, helpcontext(0x0001031d)]
	HRESULT __stdcall Operator(
		[in]long RHS);
};
'!
!ExcelIIconCriterion categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIIconCriterion methodsFor!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 8 sdword*>
	^self invalidCall!

get_Operator: rhs
	"Private - Get the value of the 'Operator' property of the receiver.

		HRESULT __stdcall Operator(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
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

operator
	"Answer the <sdword> value of the 'Operator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Operator: answer.
	^answer asObject
!

operator: rhs
	"Set the 'Operator' property of the receiver to the <sdword> value of the argument."

	self put_Operator: rhs
!

put_Operator: rhs
	"Private - Set the value of the 'Operator' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Operator(
			[in]long RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

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
!ExcelIIconCriterion categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IIconCriterion!private! !
!ExcelIIconCriterion categoriesFor: #get_Operator:!**auto generated**!COM Interfaces-IIconCriterion!private! !
!ExcelIIconCriterion categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IIconCriterion!private! !
!ExcelIIconCriterion categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IIconCriterion!private! !
!ExcelIIconCriterion categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIIconCriterion categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelIIconCriterion categoriesFor: #operator:!**auto generated**!properties!public! !
!ExcelIIconCriterion categoriesFor: #put_Operator:!**auto generated**!COM Interfaces-IIconCriterion!private! !
!ExcelIIconCriterion categoriesFor: #put_Type:!**auto generated**!COM Interfaces-IIconCriterion!private! !
!ExcelIIconCriterion categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IIconCriterion!private! !
!ExcelIIconCriterion categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIIconCriterion categoriesFor: #type:!**auto generated**!properties!public! !
!ExcelIIconCriterion categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIIconCriterion categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelIIconCriterion class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IIconCriterion'
		ExcelIIconCriterion defineTemplate"

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
		defineFunction: #get_Operator:
			argumentTypes: 'sdword*';
		defineFunction: #put_Operator:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIIconCriterion initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIIconCriterion class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIIconCriterion class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

