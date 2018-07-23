"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIValidation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIValidation guid: (IID fromString: '{0002442F-0001-0000-C000-000000000046}')!
ExcelIValidation comment: '<ExcelIValidation> is a wrapper class for the COM interface ''Excel.IValidation'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002442F-0001-0000-C000-000000000046), 
	helpcontext(0x000200c5), 
	hidden
]
interface IValidation : IDispatch
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
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]XlDVType Type,
		[in, optional]VARIANT AlertStyle,
		[in, optional]VARIANT Operator,
		[in, optional]VARIANT Formula1,
		[in, optional]VARIANT Formula2);
	[id(0x00000645), propget, helpcontext(0x00010645)]
	HRESULT __stdcall AlertStyle(
		[out, retval]long* RHS);
	[id(0x00000646), propget, helpcontext(0x00010646)]
	HRESULT __stdcall IgnoreBlank(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000646), propput, helpcontext(0x00010646)]
	HRESULT __stdcall IgnoreBlank(
		[in]VARIANT_BOOL RHS);
	[id(0x00000647), propget, helpcontext(0x00010647)]
	HRESULT __stdcall IMEMode(
		[out, retval]long* RHS);
	[id(0x00000647), propput, helpcontext(0x00010647)]
	HRESULT __stdcall IMEMode(
		[in]long RHS);
	[id(0x00000648), propget, helpcontext(0x00010648)]
	HRESULT __stdcall InCellDropdown(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000648), propput, helpcontext(0x00010648)]
	HRESULT __stdcall InCellDropdown(
		[in]VARIANT_BOOL RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000649), propget, helpcontext(0x00010649)]
	HRESULT __stdcall ErrorMessage(
		[out, retval]BSTR* RHS);
	[id(0x00000649), propput, helpcontext(0x00010649)]
	HRESULT __stdcall ErrorMessage(
		[in]BSTR RHS);
	[id(0x0000064a), propget, helpcontext(0x0001064a)]
	HRESULT __stdcall ErrorTitle(
		[out, retval]BSTR* RHS);
	[id(0x0000064a), propput, helpcontext(0x0001064a)]
	HRESULT __stdcall ErrorTitle(
		[in]BSTR RHS);
	[id(0x0000064b), propget, helpcontext(0x0001064b)]
	HRESULT __stdcall InputMessage(
		[out, retval]BSTR* RHS);
	[id(0x0000064b), propput, helpcontext(0x0001064b)]
	HRESULT __stdcall InputMessage(
		[in]BSTR RHS);
	[id(0x0000064c), propget, helpcontext(0x0001064c)]
	HRESULT __stdcall InputTitle(
		[out, retval]BSTR* RHS);
	[id(0x0000064c), propput, helpcontext(0x0001064c)]
	HRESULT __stdcall InputTitle(
		[in]BSTR RHS);
	[id(0x0000062b), propget, helpcontext(0x0001062b)]
	HRESULT __stdcall Formula1(
		[out, retval]BSTR* RHS);
	[id(0x0000062c), propget, helpcontext(0x0001062c)]
	HRESULT __stdcall Formula2(
		[out, retval]BSTR* RHS);
	[id(0x0000062d), helpcontext(0x0001062d)]
	HRESULT __stdcall Modify(
		[in, optional]VARIANT Type,
		[in, optional]VARIANT AlertStyle,
		[in, optional]VARIANT Operator,
		[in, optional]VARIANT Formula1,
		[in, optional]VARIANT Formula2);
	[id(0x0000031d), propget, helpcontext(0x0001031d)]
	HRESULT __stdcall Operator(
		[out, retval]long* RHS);
	[id(0x0000064d), propget, helpcontext(0x0001064d)]
	HRESULT __stdcall ShowError(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000064d), propput, helpcontext(0x0001064d)]
	HRESULT __stdcall ShowError(
		[in]VARIANT_BOOL RHS);
	[id(0x0000064e), propget, helpcontext(0x0001064e)]
	HRESULT __stdcall ShowInput(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000064e), propput, helpcontext(0x0001064e)]
	HRESULT __stdcall ShowInput(
		[in]VARIANT_BOOL RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]VARIANT_BOOL* RHS);
};
'!
!ExcelIValidation categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIValidation methodsFor!

add: type
	"Invoke the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: type
		 alertStyle: VARIANT unspecified
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

add: type alertStyle: alertStyle operator: operator formula1: formula1 formula2: formula2
	"Invoke the Add() method of the COM object."

	^self
		Add: type
		alertStyle: alertStyle asVariant
		operator: operator asVariant
		formula1: formula1 asVariant
		formula2: formula2 asVariant
!

Add: type alertStyle: alertStyle operator: operator formula1: formula1 formula2: formula2
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]XlDVType Type,
			[in, optional]VARIANT AlertStyle,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);"

	<virtual stdcall: hresult 11 sdword variant variant variant variant>
	^self invalidCall!

alertStyle
	"Answer the <sdword> value of the 'AlertStyle' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AlertStyle: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
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

	<virtual stdcall: hresult 19>
	^self invalidCall!

errorMessage
	"Answer the <bstr> value of the 'ErrorMessage' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ErrorMessage: answer.
	^answer asObject
!

errorMessage: rhs
	"Set the 'ErrorMessage' property of the receiver to the <bstr> value of the argument."

	self put_ErrorMessage: rhs
!

errorTitle
	"Answer the <bstr> value of the 'ErrorTitle' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ErrorTitle: answer.
	^answer asObject
!

errorTitle: rhs
	"Set the 'ErrorTitle' property of the receiver to the <bstr> value of the argument."

	self put_ErrorTitle: rhs
!

formula1
	"Answer the <bstr> value of the 'Formula1' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula1: answer.
	^answer asObject
!

formula2
	"Answer the <bstr> value of the 'Formula2' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula2: answer.
	^answer asObject
!

get_AlertStyle: rhs
	"Private - Get the value of the 'AlertStyle' property of the receiver.

		HRESULT __stdcall AlertStyle(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_ErrorMessage: rhs
	"Private - Get the value of the 'ErrorMessage' property of the receiver.

		HRESULT __stdcall ErrorMessage(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr*>
	^self invalidCall!

get_ErrorTitle: rhs
	"Private - Get the value of the 'ErrorTitle' property of the receiver.

		HRESULT __stdcall ErrorTitle(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 22 bstr*>
	^self invalidCall!

get_Formula1: rhs
	"Private - Get the value of the 'Formula1' property of the receiver.

		HRESULT __stdcall Formula1(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 28 bstr*>
	^self invalidCall!

get_Formula2: rhs
	"Private - Get the value of the 'Formula2' property of the receiver.

		HRESULT __stdcall Formula2(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 29 bstr*>
	^self invalidCall!

get_IgnoreBlank: rhs
	"Private - Get the value of the 'IgnoreBlank' property of the receiver.

		HRESULT __stdcall IgnoreBlank(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_IMEMode: rhs
	"Private - Get the value of the 'IMEMode' property of the receiver.

		HRESULT __stdcall IMEMode(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_InCellDropdown: rhs
	"Private - Get the value of the 'InCellDropdown' property of the receiver.

		HRESULT __stdcall InCellDropdown(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_InputMessage: rhs
	"Private - Get the value of the 'InputMessage' property of the receiver.

		HRESULT __stdcall InputMessage(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 24 bstr*>
	^self invalidCall!

get_InputTitle: rhs
	"Private - Get the value of the 'InputTitle' property of the receiver.

		HRESULT __stdcall InputTitle(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 26 bstr*>
	^self invalidCall!

get_Operator: rhs
	"Private - Get the value of the 'Operator' property of the receiver.

		HRESULT __stdcall Operator(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 31 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ShowError: rhs
	"Private - Get the value of the 'ShowError' property of the receiver.

		HRESULT __stdcall ShowError(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_ShowInput: rhs
	"Private - Get the value of the 'ShowInput' property of the receiver.

		HRESULT __stdcall ShowInput(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 34 varbool*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 36 sdword*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 37 varbool*>
	^self invalidCall!

ignoreBlank
	"Answer the <varbool> value of the 'IgnoreBlank' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IgnoreBlank: answer.
	^answer asObject
!

ignoreBlank: rhs
	"Set the 'IgnoreBlank' property of the receiver to the <varbool> value of the argument."

	self put_IgnoreBlank: rhs
!

imeMode
	"Answer the <sdword> value of the 'IMEMode' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_IMEMode: answer.
	^answer asObject
!

imeMode: rhs
	"Set the 'IMEMode' property of the receiver to the <sdword> value of the argument."

	self put_IMEMode: rhs
!

inCellDropdown
	"Answer the <varbool> value of the 'InCellDropdown' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_InCellDropdown: answer.
	^answer asObject
!

inCellDropdown: rhs
	"Set the 'InCellDropdown' property of the receiver to the <varbool> value of the argument."

	self put_InCellDropdown: rhs
!

inputMessage
	"Answer the <bstr> value of the 'InputMessage' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_InputMessage: answer.
	^answer asObject
!

inputMessage: rhs
	"Set the 'InputMessage' property of the receiver to the <bstr> value of the argument."

	self put_InputMessage: rhs
!

inputTitle
	"Answer the <bstr> value of the 'InputTitle' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_InputTitle: answer.
	^answer asObject
!

inputTitle: rhs
	"Set the 'InputTitle' property of the receiver to the <bstr> value of the argument."

	self put_InputTitle: rhs
!

modify
	"Invoke the Modify() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 modify: VARIANT unspecified
		 alertStyle: VARIANT unspecified
		 operator: VARIANT unspecified
		 formula1: VARIANT unspecified
		 formula2: VARIANT unspecified!

modify: type alertStyle: alertStyle operator: operator formula1: formula1 formula2: formula2
	"Invoke the Modify() method of the COM object."

	^self
		Modify: type asVariant
		alertStyle: alertStyle asVariant
		operator: operator asVariant
		formula1: formula1 asVariant
		formula2: formula2 asVariant
!

Modify: type alertStyle: alertStyle operator: operator formula1: formula1 formula2: formula2
	"Private - Invoke the Modify() method of the COM object.

		HRESULT __stdcall Modify(
			[in, optional]VARIANT Type,
			[in, optional]VARIANT AlertStyle,
			[in, optional]VARIANT Operator,
			[in, optional]VARIANT Formula1,
			[in, optional]VARIANT Formula2);"

	<virtual stdcall: hresult 30 variant variant variant variant variant>
	^self invalidCall!

operator
	"Answer the <sdword> value of the 'Operator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Operator: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_ErrorMessage: rhs
	"Private - Set the value of the 'ErrorMessage' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ErrorMessage(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 21 bstr>
	^self invalidCall!

put_ErrorTitle: rhs
	"Private - Set the value of the 'ErrorTitle' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ErrorTitle(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 23 bstr>
	^self invalidCall!

put_IgnoreBlank: rhs
	"Private - Set the value of the 'IgnoreBlank' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IgnoreBlank(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

put_IMEMode: rhs
	"Private - Set the value of the 'IMEMode' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall IMEMode(
			[in]long RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_InCellDropdown: rhs
	"Private - Set the value of the 'InCellDropdown' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InCellDropdown(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_InputMessage: rhs
	"Private - Set the value of the 'InputMessage' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall InputMessage(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 25 bstr>
	^self invalidCall!

put_InputTitle: rhs
	"Private - Set the value of the 'InputTitle' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall InputTitle(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 27 bstr>
	^self invalidCall!

put_ShowError: rhs
	"Private - Set the value of the 'ShowError' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowError(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_ShowInput: rhs
	"Private - Set the value of the 'ShowInput' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowInput(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 35 varbool>
	^self invalidCall!

showError
	"Answer the <varbool> value of the 'ShowError' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowError: answer.
	^answer asObject
!

showError: rhs
	"Set the 'ShowError' property of the receiver to the <varbool> value of the argument."

	self put_ShowError: rhs
!

showInput
	"Answer the <varbool> value of the 'ShowInput' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowInput: answer.
	^answer asObject
!

showInput: rhs
	"Set the 'ShowInput' property of the receiver to the <varbool> value of the argument."

	self put_ShowInput: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

value
	"Answer the <varbool> value of the 'Value' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Value: answer.
	^answer asObject
! !
!ExcelIValidation categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIValidation categoriesFor: #add:alertStyle:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelIValidation categoriesFor: #Add:alertStyle:operator:formula1:formula2:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #alertStyle!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIValidation categoriesFor: #Delete!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #errorMessage!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #errorMessage:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #errorTitle!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #errorTitle:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #formula1!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #formula2!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #get_AlertStyle:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_ErrorMessage:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_ErrorTitle:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_Formula1:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_Formula2:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_IgnoreBlank:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_IMEMode:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_InCellDropdown:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_InputMessage:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_InputTitle:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_Operator:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_ShowError:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_ShowInput:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #ignoreBlank!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #ignoreBlank:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #imeMode!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #imeMode:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #inCellDropdown!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #inCellDropdown:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #inputMessage!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #inputMessage:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #inputTitle!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #inputTitle:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #modify!**auto generated**!methods!public! !
!ExcelIValidation categoriesFor: #modify:alertStyle:operator:formula1:formula2:!**auto generated**!methods!public! !
!ExcelIValidation categoriesFor: #Modify:alertStyle:operator:formula1:formula2:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #put_ErrorMessage:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #put_ErrorTitle:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #put_IgnoreBlank:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #put_IMEMode:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #put_InCellDropdown:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #put_InputMessage:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #put_InputTitle:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #put_ShowError:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #put_ShowInput:!**auto generated**!COM Interfaces-IValidation!private! !
!ExcelIValidation categoriesFor: #showError!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #showError:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #showInput!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #showInput:!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIValidation categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIValidation class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IValidation'
		ExcelIValidation defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:alertStyle:operator:formula1:formula2:
			argumentTypes: 'sdword variant variant variant variant';
		defineFunction: #get_AlertStyle:
			argumentTypes: 'sdword*';
		defineFunction: #get_IgnoreBlank:
			argumentTypes: 'varbool*';
		defineFunction: #put_IgnoreBlank:
			argumentTypes: 'varbool';
		defineFunction: #get_IMEMode:
			argumentTypes: 'sdword*';
		defineFunction: #put_IMEMode:
			argumentTypes: 'sdword';
		defineFunction: #get_InCellDropdown:
			argumentTypes: 'varbool*';
		defineFunction: #put_InCellDropdown:
			argumentTypes: 'varbool';
		defineFunction: #Delete;
		defineFunction: #get_ErrorMessage:
			argumentTypes: 'bstr*';
		defineFunction: #put_ErrorMessage:
			argumentTypes: 'bstr';
		defineFunction: #get_ErrorTitle:
			argumentTypes: 'bstr*';
		defineFunction: #put_ErrorTitle:
			argumentTypes: 'bstr';
		defineFunction: #get_InputMessage:
			argumentTypes: 'bstr*';
		defineFunction: #put_InputMessage:
			argumentTypes: 'bstr';
		defineFunction: #get_InputTitle:
			argumentTypes: 'bstr*';
		defineFunction: #put_InputTitle:
			argumentTypes: 'bstr';
		defineFunction: #get_Formula1:
			argumentTypes: 'bstr*';
		defineFunction: #get_Formula2:
			argumentTypes: 'bstr*';
		defineFunction: #Modify:alertStyle:operator:formula1:formula2:
			argumentTypes: 'variant variant variant variant variant';
		defineFunction: #get_Operator:
			argumentTypes: 'sdword*';
		defineFunction: #get_ShowError:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowError:
			argumentTypes: 'varbool';
		defineFunction: #get_ShowInput:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowInput:
			argumentTypes: 'varbool';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_Value:
			argumentTypes: 'varbool*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIValidation initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIValidation class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIValidation class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

