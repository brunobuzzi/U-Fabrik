"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelILeaderLines
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelILeaderLines guid: (IID fromString: '{00024437-0001-0000-C000-000000000046}')!
ExcelILeaderLines comment: '<ExcelILeaderLines> is a wrapper class for the COM interface ''Excel.ILeaderLines'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024437-0001-0000-C000-000000000046), 
	helpcontext(0x000200cd), 
	hidden
]
interface ILeaderLines : IDispatch
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
	[id(0x00000080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select();
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelILeaderLines categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelILeaderLines methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
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

	<virtual stdcall: hresult 12>
	^self invalidCall!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver."

	| answer |
	answer := ExcelChartFormat newPointer.
	self get_Format: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 11 ExcelBorder**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 14 ExcelChartFormat**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

select
	"Invoke the Select() method of the COM object."

	^self Select
!

Select
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select();"

	<virtual stdcall: hresult 13>
	^self invalidCall! !
!ExcelILeaderLines categoriesFor: #application!**auto generated**!properties!public! !
!ExcelILeaderLines categoriesFor: #border!**auto generated**!properties!public! !
!ExcelILeaderLines categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelILeaderLines categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelILeaderLines categoriesFor: #Delete!**auto generated**!COM Interfaces-ILeaderLines!private! !
!ExcelILeaderLines categoriesFor: #format!**auto generated**!properties!public! !
!ExcelILeaderLines categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ILeaderLines!private! !
!ExcelILeaderLines categoriesFor: #get_Border:!**auto generated**!COM Interfaces-ILeaderLines!private! !
!ExcelILeaderLines categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ILeaderLines!private! !
!ExcelILeaderLines categoriesFor: #get_Format:!**auto generated**!COM Interfaces-ILeaderLines!private! !
!ExcelILeaderLines categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ILeaderLines!private! !
!ExcelILeaderLines categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelILeaderLines categoriesFor: #select!**auto generated**!methods!public! !
!ExcelILeaderLines categoriesFor: #Select!**auto generated**!COM Interfaces-ILeaderLines!private! !

!ExcelILeaderLines class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ILeaderLines'
		ExcelILeaderLines defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #Delete;
		defineFunction: #Select;
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelILeaderLines initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelILeaderLines class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelILeaderLines class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

