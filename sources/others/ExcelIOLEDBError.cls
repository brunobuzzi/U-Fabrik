"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIOLEDBError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIOLEDBError guid: (IID fromString: '{00024445-0001-0000-C000-000000000046}')!
ExcelIOLEDBError comment: '<ExcelIOLEDBError> is a wrapper class for the COM interface ''Excel.IOLEDBError'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024445-0001-0000-C000-000000000046), 
	helpcontext(0x000200db), 
	hidden
]
interface IOLEDBError : IDispatch
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
	[id(0x00000643), propget, helpcontext(0x00010643)]
	HRESULT __stdcall SqlState(
		[out, retval]BSTR* RHS);
	[id(0x000005d2), propget, helpcontext(0x000105d2)]
	HRESULT __stdcall ErrorString(
		[out, retval]BSTR* RHS);
	[id(0x00000769), propget, helpcontext(0x00010769)]
	HRESULT __stdcall Native(
		[out, retval]long* RHS);
	[id(0x000001c3), propget, helpcontext(0x000101c3)]
	HRESULT __stdcall Number(
		[out, retval]long* RHS);
	[id(0x0000076a), propget, helpcontext(0x0001076a)]
	HRESULT __stdcall Stage(
		[out, retval]long* RHS);
};
'!
!ExcelIOLEDBError categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIOLEDBError methodsFor!

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

errorString
	"Answer the <bstr> value of the 'ErrorString' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ErrorString: answer.
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

get_ErrorString: rhs
	"Private - Get the value of the 'ErrorString' property of the receiver.

		HRESULT __stdcall ErrorString(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_Native: rhs
	"Private - Get the value of the 'Native' property of the receiver.

		HRESULT __stdcall Native(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Number: rhs
	"Private - Get the value of the 'Number' property of the receiver.

		HRESULT __stdcall Number(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_SqlState: rhs
	"Private - Get the value of the 'SqlState' property of the receiver.

		HRESULT __stdcall SqlState(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Stage: rhs
	"Private - Get the value of the 'Stage' property of the receiver.

		HRESULT __stdcall Stage(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

native
	"Answer the <sdword> value of the 'Native' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Native: answer.
	^answer asObject
!

number
	"Answer the <sdword> value of the 'Number' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Number: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

sqlState
	"Answer the <bstr> value of the 'SqlState' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SqlState: answer.
	^answer asObject
!

stage
	"Answer the <sdword> value of the 'Stage' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Stage: answer.
	^answer asObject
! !
!ExcelIOLEDBError categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIOLEDBError categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIOLEDBError categoriesFor: #errorString!**auto generated**!properties!public! !
!ExcelIOLEDBError categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IOLEDBError!private! !
!ExcelIOLEDBError categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IOLEDBError!private! !
!ExcelIOLEDBError categoriesFor: #get_ErrorString:!**auto generated**!COM Interfaces-IOLEDBError!private! !
!ExcelIOLEDBError categoriesFor: #get_Native:!**auto generated**!COM Interfaces-IOLEDBError!private! !
!ExcelIOLEDBError categoriesFor: #get_Number:!**auto generated**!COM Interfaces-IOLEDBError!private! !
!ExcelIOLEDBError categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IOLEDBError!private! !
!ExcelIOLEDBError categoriesFor: #get_SqlState:!**auto generated**!COM Interfaces-IOLEDBError!private! !
!ExcelIOLEDBError categoriesFor: #get_Stage:!**auto generated**!COM Interfaces-IOLEDBError!private! !
!ExcelIOLEDBError categoriesFor: #native!**auto generated**!properties!public! !
!ExcelIOLEDBError categoriesFor: #number!**auto generated**!properties!public! !
!ExcelIOLEDBError categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIOLEDBError categoriesFor: #sqlState!**auto generated**!properties!public! !
!ExcelIOLEDBError categoriesFor: #stage!**auto generated**!properties!public! !

!ExcelIOLEDBError class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IOLEDBError'
		ExcelIOLEDBError defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_SqlState:
			argumentTypes: 'bstr*';
		defineFunction: #get_ErrorString:
			argumentTypes: 'bstr*';
		defineFunction: #get_Native:
			argumentTypes: 'sdword*';
		defineFunction: #get_Number:
			argumentTypes: 'sdword*';
		defineFunction: #get_Stage:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIOLEDBError initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIOLEDBError class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIOLEDBError class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

