"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIConditionValue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIConditionValue guid: (IID fromString: '{00024492-0001-0000-C000-000000000046}')!
ExcelIConditionValue comment: '<ExcelIConditionValue> is a wrapper class for the COM interface ''Excel.IConditionValue'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024492-0001-0000-C000-000000000046), 
	helpcontext(0x00020128), 
	hidden
]
interface IConditionValue : IDispatch
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
	[id(0x0000062d), helpcontext(0x0001062d)]
	HRESULT __stdcall Modify(
		[in]XlConditionValueTypes newtype,
		[in, optional]VARIANT newvalue);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlConditionValueTypes* RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]VARIANT* RHS);
};
'!
!ExcelIConditionValue categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIConditionValue methodsFor!

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

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlConditionValueTypes* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

modify: newtype
	"Invoke the Modify() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 modify: newtype
		 newvalue: VARIANT unspecified!

modify: newtype newvalue: newvalue
	"Invoke the Modify() method of the COM object."

	^self
		Modify: newtype
		newvalue: newvalue asVariant
!

Modify: newtype newvalue: newvalue
	"Private - Invoke the Modify() method of the COM object.

		HRESULT __stdcall Modify(
			[in]XlConditionValueTypes newtype,
			[in, optional]VARIANT newvalue);"

	<virtual stdcall: hresult 11 sdword variant>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

value
	"Answer the <variant> value of the 'Value' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Value: answer.
	^answer asObject
! !
!ExcelIConditionValue categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIConditionValue categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIConditionValue categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IConditionValue!private! !
!ExcelIConditionValue categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IConditionValue!private! !
!ExcelIConditionValue categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IConditionValue!private! !
!ExcelIConditionValue categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IConditionValue!private! !
!ExcelIConditionValue categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IConditionValue!private! !
!ExcelIConditionValue categoriesFor: #modify:!**auto generated**!methods!public! !
!ExcelIConditionValue categoriesFor: #modify:newvalue:!**auto generated**!methods!public! !
!ExcelIConditionValue categoriesFor: #Modify:newvalue:!**auto generated**!COM Interfaces-IConditionValue!private! !
!ExcelIConditionValue categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIConditionValue categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIConditionValue categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIConditionValue class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IConditionValue'
		ExcelIConditionValue defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Modify:newvalue:
			argumentTypes: 'sdword variant';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_Value:
			argumentTypes: 'variant*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIConditionValue initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIConditionValue class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIConditionValue class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

