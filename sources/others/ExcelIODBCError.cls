"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIODBCError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIODBCError guid: (IID fromString: '{0002442C-0001-0000-C000-000000000046}')!
ExcelIODBCError comment: '<ExcelIODBCError> is a wrapper class for the COM interface ''Excel.IODBCError'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002442C-0001-0000-C000-000000000046), 
	helpcontext(0x000200c2), 
	hidden
]
interface IODBCError : IDispatch
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
};
'!
!ExcelIODBCError categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIODBCError methodsFor!

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
! !
!ExcelIODBCError categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIODBCError categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIODBCError categoriesFor: #errorString!**auto generated**!properties!public! !
!ExcelIODBCError categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IODBCError!private! !
!ExcelIODBCError categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IODBCError!private! !
!ExcelIODBCError categoriesFor: #get_ErrorString:!**auto generated**!COM Interfaces-IODBCError!private! !
!ExcelIODBCError categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IODBCError!private! !
!ExcelIODBCError categoriesFor: #get_SqlState:!**auto generated**!COM Interfaces-IODBCError!private! !
!ExcelIODBCError categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIODBCError categoriesFor: #sqlState!**auto generated**!properties!public! !

!ExcelIODBCError class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IODBCError'
		ExcelIODBCError defineTemplate"

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
			argumentTypes: 'bstr*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIODBCError initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIODBCError class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIODBCError class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

