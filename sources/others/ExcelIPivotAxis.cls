"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotAxis
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotAxis guid: (IID fromString: '{00024482-0001-0000-C000-000000000046}')!
ExcelIPivotAxis comment: '<ExcelIPivotAxis> is a wrapper class for the COM interface ''Excel.IPivotAxis'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024482-0001-0000-C000-000000000046), 
	helpcontext(0x00020118), 
	hidden
]
interface IPivotAxis : IDispatch
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
	[id(0x00000a7d), propget, helpcontext(0x00010a7d)]
	HRESULT __stdcall PivotLines(
		[out, retval]PivotLines** RHS);
};
'!
!ExcelIPivotAxis categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotAxis methodsFor!

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

get_PivotLines: rhs
	"Private - Get the value of the 'PivotLines' property of the receiver.

		HRESULT __stdcall PivotLines(
			[out, retval]PivotLines** RHS);"

	<virtual stdcall: hresult 11 ExcelPivotLines**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pivotLines
	"Answer the <ExcelPivotLines> value of the 'PivotLines' property of the receiver."

	| answer |
	answer := ExcelPivotLines newPointer.
	self get_PivotLines: answer.
	^answer asObject
! !
!ExcelIPivotAxis categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotAxis categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotAxis categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotAxis!private! !
!ExcelIPivotAxis categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotAxis!private! !
!ExcelIPivotAxis categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotAxis!private! !
!ExcelIPivotAxis categoriesFor: #get_PivotLines:!**auto generated**!COM Interfaces-IPivotAxis!private! !
!ExcelIPivotAxis categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotAxis categoriesFor: #pivotLines!**auto generated**!properties!public! !

!ExcelIPivotAxis class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotAxis'
		ExcelIPivotAxis defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_PivotLines:
			argumentTypes: 'ExcelPivotLines**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotAxis initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotAxis class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotAxis class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

