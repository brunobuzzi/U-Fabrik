"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIWatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIWatch guid: (IID fromString: '{00024457-0001-0000-C000-000000000046}')!
ExcelIWatch comment: '<ExcelIWatch> is a wrapper class for the COM interface ''Excel.IWatch'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024457-0001-0000-C000-000000000046), 
	helpcontext(0x000200ed), 
	hidden
]
interface IWatch : IDispatch
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
	[id(0x000000de), propget, helpcontext(0x000100de)]
	HRESULT __stdcall Source(
		[out, retval]VARIANT* RHS);
};
'!
!ExcelIWatch categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIWatch methodsFor!

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

get_Source: rhs
	"Private - Get the value of the 'Source' property of the receiver.

		HRESULT __stdcall Source(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

source
	"Answer the <variant> value of the 'Source' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Source: answer.
	^answer asObject
! !
!ExcelIWatch categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIWatch categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIWatch categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIWatch categoriesFor: #Delete!**auto generated**!COM Interfaces-IWatch!private! !
!ExcelIWatch categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IWatch!private! !
!ExcelIWatch categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IWatch!private! !
!ExcelIWatch categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IWatch!private! !
!ExcelIWatch categoriesFor: #get_Source:!**auto generated**!COM Interfaces-IWatch!private! !
!ExcelIWatch categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIWatch categoriesFor: #source!**auto generated**!properties!public! !

!ExcelIWatch class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IWatch'
		ExcelIWatch defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete;
		defineFunction: #get_Source:
			argumentTypes: 'variant*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIWatch initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIWatch class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIWatch class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

