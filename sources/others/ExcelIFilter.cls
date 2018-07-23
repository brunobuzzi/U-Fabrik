"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIFilter guid: (IID fromString: '{00024434-0001-0000-C000-000000000046}')!
ExcelIFilter comment: '<ExcelIFilter> is a wrapper class for the COM interface ''Excel.IFilter'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024434-0001-0000-C000-000000000046), 
	helpcontext(0x000200ca), 
	hidden
]
interface IFilter : IDispatch
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
	[id(0x00000652), propget, helpcontext(0x00010652)]
	HRESULT __stdcall On(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000031c), propget, helpcontext(0x0001031c)]
	HRESULT __stdcall Criteria1(
		[out, retval]VARIANT* RHS);
	[id(0x00000a51), hidden, propget, helpcontext(0x00010a51)]
	HRESULT __stdcall _Operator(
		[out, retval]XlAutoFilterOperator* RHS);
	[id(0x0000031e), propget, helpcontext(0x0001031e)]
	HRESULT __stdcall Criteria2(
		[out, retval]VARIANT* RHS);
	[id(0x0000031d), propget, helpcontext(0x0001031d)]
	HRESULT __stdcall Operator(
		[out, retval]XlAutoFilterOperator* RHS);
	[id(0x0000031d), propput, helpcontext(0x0001031d)]
	HRESULT __stdcall Operator(
		[in]XlAutoFilterOperator RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
};
'!
!ExcelIFilter categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIFilter methodsFor!

_operator
	"Answer the <sdword> value of the '_Operator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get__Operator: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
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

criteria1
	"Answer the <variant> value of the 'Criteria1' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Criteria1: answer.
	^answer asObject
!

criteria2
	"Answer the <variant> value of the 'Criteria2' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Criteria2: answer.
	^answer asObject
!

get__Operator: rhs
	"Private - Get the value of the '_Operator' property of the receiver.

		HRESULT __stdcall _Operator(
			[out, retval]XlAutoFilterOperator* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Criteria1: rhs
	"Private - Get the value of the 'Criteria1' property of the receiver.

		HRESULT __stdcall Criteria1(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

get_Criteria2: rhs
	"Private - Get the value of the 'Criteria2' property of the receiver.

		HRESULT __stdcall Criteria2(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

get_On: rhs
	"Private - Get the value of the 'On' property of the receiver.

		HRESULT __stdcall On(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_Operator: rhs
	"Private - Get the value of the 'Operator' property of the receiver.

		HRESULT __stdcall Operator(
			[out, retval]XlAutoFilterOperator* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

on
	"Answer the <varbool> value of the 'On' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_On: answer.
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

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Operator: rhs
	"Private - Set the value of the 'Operator' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Operator(
			[in]XlAutoFilterOperator RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall! !
!ExcelIFilter categoriesFor: #_operator!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #criteria1!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #criteria2!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #get__Operator:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #get_Criteria1:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #get_Criteria2:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #get_On:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #get_Operator:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IFilter!private! !
!ExcelIFilter categoriesFor: #on!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #operator!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #operator:!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIFilter categoriesFor: #put_Operator:!**auto generated**!COM Interfaces-IFilter!private! !

!ExcelIFilter class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IFilter'
		ExcelIFilter defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_On:
			argumentTypes: 'varbool*';
		defineFunction: #get_Criteria1:
			argumentTypes: 'variant*';
		defineFunction: #get__Operator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Criteria2:
			argumentTypes: 'variant*';
		defineFunction: #get_Operator:
			argumentTypes: 'sdword*';
		defineFunction: #put_Operator:
			argumentTypes: 'sdword';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIFilter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIFilter class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIFilter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

