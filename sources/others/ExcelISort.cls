"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISort
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISort guid: (IID fromString: '{000244AB-0001-0000-C000-000000000046}')!
ExcelISort comment: '<ExcelISort> is a wrapper class for the COM interface ''Excel.ISort'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244AB-0001-0000-C000-000000000046), 
	helpcontext(0x00020141), 
	hidden
]
interface ISort : IDispatch
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
	[id(0x00000abc), propget, helpcontext(0x00010abc)]
	HRESULT __stdcall Rng(
		[out, retval]Range** RHS);
	[id(0x0000037f), propget, helpcontext(0x0001037f)]
	HRESULT __stdcall Header(
		[out, retval]XlYesNoGuess* RHS);
	[id(0x0000037f), propput, helpcontext(0x0001037f)]
	HRESULT __stdcall Header(
		[in]XlYesNoGuess RHS);
	[id(0x000001aa), propget, helpcontext(0x000101aa)]
	HRESULT __stdcall MatchCase(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000001aa), propput, helpcontext(0x000101aa)]
	HRESULT __stdcall MatchCase(
		[in]VARIANT_BOOL RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]XlSortOrientation* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]XlSortOrientation RHS);
	[id(0x00000381), propget, helpcontext(0x00010381)]
	HRESULT __stdcall SortMethod(
		[out, retval]XlSortMethod* RHS);
	[id(0x00000381), propput, helpcontext(0x00010381)]
	HRESULT __stdcall SortMethod(
		[in]XlSortMethod RHS);
	[id(0x00000abd), propget, helpcontext(0x00010abd)]
	HRESULT __stdcall SortFields(
		[out, retval]SortFields** RHS);
	[id(0x00000abe), helpcontext(0x00010abe)]
	HRESULT __stdcall SetRange(
		[in]Range* Rng);
	[id(0x0000068b), helpcontext(0x0001068b)]
	HRESULT __stdcall Apply();
};
'!
!ExcelISort categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISort methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

apply
	"Invoke the Apply() method of the COM object."

	^self Apply
!

Apply
	"Private - Invoke the Apply() method of the COM object.

		HRESULT __stdcall Apply();"

	<virtual stdcall: hresult 22>
	^self invalidCall!

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

get_Header: rhs
	"Private - Get the value of the 'Header' property of the receiver.

		HRESULT __stdcall Header(
			[out, retval]XlYesNoGuess* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_MatchCase: rhs
	"Private - Get the value of the 'MatchCase' property of the receiver.

		HRESULT __stdcall MatchCase(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]XlSortOrientation* RHS);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Rng: rhs
	"Private - Get the value of the 'Rng' property of the receiver.

		HRESULT __stdcall Rng(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 11 ExcelRange**>
	^self invalidCall!

get_SortFields: rhs
	"Private - Get the value of the 'SortFields' property of the receiver.

		HRESULT __stdcall SortFields(
			[out, retval]SortFields** RHS);"

	<virtual stdcall: hresult 20 ExcelSortFields**>
	^self invalidCall!

get_SortMethod: rhs
	"Private - Get the value of the 'SortMethod' property of the receiver.

		HRESULT __stdcall SortMethod(
			[out, retval]XlSortMethod* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

header
	"Answer the <sdword> value of the 'Header' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Header: answer.
	^answer asObject
!

header: rhs
	"Set the 'Header' property of the receiver to the <sdword> value of the argument."

	self put_Header: rhs
!

matchCase
	"Answer the <varbool> value of the 'MatchCase' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MatchCase: answer.
	^answer asObject
!

matchCase: rhs
	"Set the 'MatchCase' property of the receiver to the <varbool> value of the argument."

	self put_MatchCase: rhs
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument."

	self put_Orientation: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Header: rhs
	"Private - Set the value of the 'Header' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Header(
			[in]XlYesNoGuess RHS);"

	<virtual stdcall: hresult 13 sdword>
	^self invalidCall!

put_MatchCase: rhs
	"Private - Set the value of the 'MatchCase' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MatchCase(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 15 varbool>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]XlSortOrientation RHS);"

	<virtual stdcall: hresult 17 sdword>
	^self invalidCall!

put_SortMethod: rhs
	"Private - Set the value of the 'SortMethod' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SortMethod(
			[in]XlSortMethod RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

rng
	"Answer the <ExcelRange> value of the 'Rng' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Rng: answer.
	^answer asObject
!

setRange: rng
	"Invoke the SetRange() method of the COM object."

	^self SetRange: rng
!

SetRange: rng
	"Private - Invoke the SetRange() method of the COM object.

		HRESULT __stdcall SetRange(
			[in]Range* Rng);"

	<virtual stdcall: hresult 21 ExcelRange*>
	^self invalidCall!

sortFields
	"Answer the <ExcelSortFields> value of the 'SortFields' property of the receiver."

	| answer |
	answer := ExcelSortFields newPointer.
	self get_SortFields: answer.
	^answer asObject
!

sortMethod
	"Answer the <sdword> value of the 'SortMethod' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SortMethod: answer.
	^answer asObject
!

sortMethod: rhs
	"Set the 'SortMethod' property of the receiver to the <sdword> value of the argument."

	self put_SortMethod: rhs
! !
!ExcelISort categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #apply!**auto generated**!methods!public! !
!ExcelISort categoriesFor: #Apply!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #get_Header:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #get_MatchCase:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #get_Rng:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #get_SortFields:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #get_SortMethod:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #header!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #header:!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #matchCase!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #matchCase:!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #put_Header:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #put_MatchCase:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #put_SortMethod:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #rng!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #setRange:!**auto generated**!methods!public! !
!ExcelISort categoriesFor: #SetRange:!**auto generated**!COM Interfaces-ISort!private! !
!ExcelISort categoriesFor: #sortFields!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #sortMethod!**auto generated**!properties!public! !
!ExcelISort categoriesFor: #sortMethod:!**auto generated**!properties!public! !

!ExcelISort class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISort'
		ExcelISort defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Rng:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Header:
			argumentTypes: 'sdword*';
		defineFunction: #put_Header:
			argumentTypes: 'sdword';
		defineFunction: #get_MatchCase:
			argumentTypes: 'varbool*';
		defineFunction: #put_MatchCase:
			argumentTypes: 'varbool';
		defineFunction: #get_Orientation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Orientation:
			argumentTypes: 'sdword';
		defineFunction: #get_SortMethod:
			argumentTypes: 'sdword*';
		defineFunction: #put_SortMethod:
			argumentTypes: 'sdword';
		defineFunction: #get_SortFields:
			argumentTypes: 'ExcelSortFields**';
		defineFunction: #SetRange:
			argumentTypes: 'ExcelRange*';
		defineFunction: #Apply
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISort initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISort class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISort class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

