"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIListDataFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIListDataFormat guid: (IID fromString: '{0002447D-0001-0000-C000-000000000046}')!
ExcelIListDataFormat comment: '<ExcelIListDataFormat> is a wrapper class for the COM interface ''Excel.IListDataFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002447D-0001-0000-C000-000000000046), 
	helpcontext(0x00020113), 
	hidden
]
interface IListDataFormat : IDispatch
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
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]XlListDataType* RHS);
	[id(0x0000092c), propget, helpcontext(0x0001092c)]
	HRESULT __stdcall Choices(
		[out, retval]VARIANT* RHS);
	[id(0x0000092d), propget, helpcontext(0x0001092d)]
	HRESULT __stdcall DecimalPlaces(
		[out, retval]long* RHS);
	[id(0x0000092e), propget, helpcontext(0x0001092e)]
	HRESULT __stdcall DefaultValue(
		[out, retval]VARIANT* RHS);
	[id(0x0000092f), propget, helpcontext(0x0001092f)]
	HRESULT __stdcall IsPercent(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000930), propget, helpcontext(0x00010930)]
	HRESULT __stdcall lcid(
		[out, retval]long* RHS);
	[id(0x00000931), propget, helpcontext(0x00010931)]
	HRESULT __stdcall MaxCharacters(
		[out, retval]long* RHS);
	[id(0x00000932), propget, helpcontext(0x00010932)]
	HRESULT __stdcall MaxNumber(
		[out, retval]VARIANT* RHS);
	[id(0x00000933), propget, helpcontext(0x00010933)]
	HRESULT __stdcall MinNumber(
		[out, retval]VARIANT* RHS);
	[id(0x00000934), propget, helpcontext(0x00010934)]
	HRESULT __stdcall Required(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlListDataType* RHS);
	[id(0x00000128), propget, helpcontext(0x00010128)]
	HRESULT __stdcall ReadOnly(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000935), propget, helpcontext(0x00010935)]
	HRESULT __stdcall AllowFillIn(
		[out, retval]VARIANT_BOOL* RHS);
};
'!
!ExcelIListDataFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIListDataFormat methodsFor!

_default
	"Answer the <sdword> value of the '_Default' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get__Default: answer.
	^answer asObject
!

allowFillIn
	"Answer the <varbool> value of the 'AllowFillIn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowFillIn: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

choices
	"Answer the <variant> value of the 'Choices' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Choices: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

decimalPlaces
	"Answer the <sdword> value of the 'DecimalPlaces' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_DecimalPlaces: answer.
	^answer asObject
!

defaultValue
	"Answer the <variant> value of the 'DefaultValue' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_DefaultValue: answer.
	^answer asObject
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]XlListDataType* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_AllowFillIn: rhs
	"Private - Get the value of the 'AllowFillIn' property of the receiver.

		HRESULT __stdcall AllowFillIn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 23 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Choices: rhs
	"Private - Get the value of the 'Choices' property of the receiver.

		HRESULT __stdcall Choices(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DecimalPlaces: rhs
	"Private - Get the value of the 'DecimalPlaces' property of the receiver.

		HRESULT __stdcall DecimalPlaces(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_DefaultValue: rhs
	"Private - Get the value of the 'DefaultValue' property of the receiver.

		HRESULT __stdcall DefaultValue(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

get_IsPercent: rhs
	"Private - Get the value of the 'IsPercent' property of the receiver.

		HRESULT __stdcall IsPercent(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_lcid: rhs
	"Private - Get the value of the 'lcid' property of the receiver.

		HRESULT __stdcall lcid(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_MaxCharacters: rhs
	"Private - Get the value of the 'MaxCharacters' property of the receiver.

		HRESULT __stdcall MaxCharacters(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_MaxNumber: rhs
	"Private - Get the value of the 'MaxNumber' property of the receiver.

		HRESULT __stdcall MaxNumber(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 18 variant*>
	^self invalidCall!

get_MinNumber: rhs
	"Private - Get the value of the 'MinNumber' property of the receiver.

		HRESULT __stdcall MinNumber(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 19 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ReadOnly: rhs
	"Private - Get the value of the 'ReadOnly' property of the receiver.

		HRESULT __stdcall ReadOnly(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 22 varbool*>
	^self invalidCall!

get_Required: rhs
	"Private - Get the value of the 'Required' property of the receiver.

		HRESULT __stdcall Required(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 20 varbool*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlListDataType* RHS);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

isPercent
	"Answer the <varbool> value of the 'IsPercent' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IsPercent: answer.
	^answer asObject
!

lcid
	"Answer the <sdword> value of the 'lcid' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_lcid: answer.
	^answer asObject
!

maxCharacters
	"Answer the <sdword> value of the 'MaxCharacters' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_MaxCharacters: answer.
	^answer asObject
!

maxNumber
	"Answer the <variant> value of the 'MaxNumber' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_MaxNumber: answer.
	^answer asObject
!

minNumber
	"Answer the <variant> value of the 'MinNumber' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_MinNumber: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

readOnly
	"Answer the <varbool> value of the 'ReadOnly' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ReadOnly: answer.
	^answer asObject
!

required
	"Answer the <varbool> value of the 'Required' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Required: answer.
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
	"Answer the <sdword> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelIListDataFormat categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #allowFillIn!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #choices!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #decimalPlaces!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #defaultValue!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_AllowFillIn:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_Choices:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_DecimalPlaces:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_DefaultValue:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_IsPercent:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_lcid:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_MaxCharacters:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_MaxNumber:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_MinNumber:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_ReadOnly:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_Required:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IListDataFormat!private! !
!ExcelIListDataFormat categoriesFor: #isPercent!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #lcid!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #maxCharacters!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #maxNumber!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #minNumber!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #readOnly!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #required!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIListDataFormat categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIListDataFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IListDataFormat'
		ExcelIListDataFormat defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get__Default:
			argumentTypes: 'sdword*';
		defineFunction: #get_Choices:
			argumentTypes: 'variant*';
		defineFunction: #get_DecimalPlaces:
			argumentTypes: 'sdword*';
		defineFunction: #get_DefaultValue:
			argumentTypes: 'variant*';
		defineFunction: #get_IsPercent:
			argumentTypes: 'varbool*';
		defineFunction: #get_lcid:
			argumentTypes: 'sdword*';
		defineFunction: #get_MaxCharacters:
			argumentTypes: 'sdword*';
		defineFunction: #get_MaxNumber:
			argumentTypes: 'variant*';
		defineFunction: #get_MinNumber:
			argumentTypes: 'variant*';
		defineFunction: #get_Required:
			argumentTypes: 'varbool*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_ReadOnly:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowFillIn:
			argumentTypes: 'varbool*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIListDataFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIListDataFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIListDataFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

