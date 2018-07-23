"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotFormula
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotFormula guid: (IID fromString: '{0002441E-0001-0000-C000-000000000046}')!
ExcelIPivotFormula comment: '<ExcelIPivotFormula> is a wrapper class for the COM interface ''Excel.IPivotFormula'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002441E-0001-0000-C000-000000000046), 
	helpcontext(0x000200b4), 
	hidden
]
interface IPivotFormula : IDispatch
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
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0000000000), propput, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]BSTR RHS);
	[id(0x00000105), propget, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[out, retval]BSTR* RHS);
	[id(0x00000105), propput, helpcontext(0x00010105)]
	HRESULT __stdcall Formula(
		[in]BSTR RHS);
	[id(0x00000006), propget, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[out, retval]BSTR* RHS);
	[id(0x00000006), propput, helpcontext(0x00010006)]
	HRESULT __stdcall Value(
		[in]BSTR RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x000001e6), propput, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[in]long RHS);
	[id(0x00000824), propget, helpcontext(0x00010824)]
	HRESULT __stdcall StandardFormula(
		[out, retval]BSTR* RHS);
	[id(0x00000824), propput, helpcontext(0x00010824)]
	HRESULT __stdcall StandardFormula(
		[in]BSTR RHS);
};
'!
!ExcelIPivotFormula categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotFormula methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

_default: rhs
	"Set the '_Default' property of the receiver to the <bstr> value of the argument."

	self put__Default: rhs
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

	<virtual stdcall: hresult 11>
	^self invalidCall!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Formula: answer.
	^answer asObject
!

formula: rhs
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument."

	self put_Formula: rhs
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
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

get_Formula: rhs
	"Private - Get the value of the 'Formula' property of the receiver.

		HRESULT __stdcall Formula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_StandardFormula: rhs
	"Private - Get the value of the 'StandardFormula' property of the receiver.

		HRESULT __stdcall StandardFormula(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr*>
	^self invalidCall!

get_Value: rhs
	"Private - Get the value of the 'Value' property of the receiver.

		HRESULT __stdcall Value(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 16 bstr*>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

index: rhs
	"Set the 'Index' property of the receiver to the <sdword> value of the argument."

	self put_Index: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put__Default: rhs
	"Private - Set the value of the '_Default' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall _Default(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 13 bstr>
	^self invalidCall!

put_Formula: rhs
	"Private - Set the value of the 'Formula' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Formula(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 15 bstr>
	^self invalidCall!

put_Index: rhs
	"Private - Set the value of the 'Index' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Index(
			[in]long RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_StandardFormula: rhs
	"Private - Set the value of the 'StandardFormula' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall StandardFormula(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 21 bstr>
	^self invalidCall!

put_Value: rhs
	"Private - Set the value of the 'Value' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Value(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 17 bstr>
	^self invalidCall!

standardFormula
	"Answer the <bstr> value of the 'StandardFormula' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_StandardFormula: answer.
	^answer asObject
!

standardFormula: rhs
	"Set the 'StandardFormula' property of the receiver to the <bstr> value of the argument."

	self put_StandardFormula: rhs
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Value: answer.
	^answer asObject
!

value: rhs
	"Set the 'Value' property of the receiver to the <bstr> value of the argument."

	self put_Value: rhs
! !
!ExcelIPivotFormula categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIPivotFormula categoriesFor: #Delete!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #get_Formula:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #get_StandardFormula:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #get_Value:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #index:!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #put__Default:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #put_Formula:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #put_Index:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #put_StandardFormula:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #put_Value:!**auto generated**!COM Interfaces-IPivotFormula!private! !
!ExcelIPivotFormula categoriesFor: #standardFormula!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #standardFormula:!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #value!**auto generated**!properties!public! !
!ExcelIPivotFormula categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelIPivotFormula class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotFormula'
		ExcelIPivotFormula defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete;
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #put__Default:
			argumentTypes: 'bstr';
		defineFunction: #get_Formula:
			argumentTypes: 'bstr*';
		defineFunction: #put_Formula:
			argumentTypes: 'bstr';
		defineFunction: #get_Value:
			argumentTypes: 'bstr*';
		defineFunction: #put_Value:
			argumentTypes: 'bstr';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #put_Index:
			argumentTypes: 'sdword';
		defineFunction: #get_StandardFormula:
			argumentTypes: 'bstr*';
		defineFunction: #put_StandardFormula:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotFormula initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotFormula class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotFormula class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

