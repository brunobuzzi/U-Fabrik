"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISoundNote
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISoundNote guid: (IID fromString: '{0002087B-0001-0000-C000-000000000046}')!
ExcelISoundNote comment: '<ExcelISoundNote> is a wrapper class for the COM interface ''Excel.ISoundNote'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002087B-0001-0000-C000-000000000046), 
	helpcontext(0x0002003b), 
	hidden
]
interface ISoundNote : IDispatch
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
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000395), helpcontext(0x00010395)]
	HRESULT __stdcall Import(
		[in]BSTR Filename,
		[out, retval]VARIANT* RHS);
	[id(0x00000396), helpcontext(0x00010396)]
	HRESULT __stdcall Play(
		[out, retval]VARIANT* RHS);
	[id(0x00000397), helpcontext(0x00010397)]
	HRESULT __stdcall Record(
		[out, retval]VARIANT* RHS);
};
'!
!ExcelISoundNote categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISoundNote methodsFor!

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
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Delete: answer.
	^answer asObject
!

Delete: rhs
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant*>
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

import: filename
	"Answer the <VARIANT> result of invoking the Import() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Import: filename
		rhs: answer.
	^answer asObject
!

Import: filename rhs: rhs
	"Private - Invoke the Import() method of the COM object.

		HRESULT __stdcall Import(
			[in]BSTR Filename,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 12 bstr variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

play
	"Answer the <VARIANT> result of invoking the Play() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Play: answer.
	^answer asObject
!

Play: rhs
	"Private - Invoke the Play() method of the COM object.

		HRESULT __stdcall Play(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

record
	"Answer the <VARIANT> result of invoking the Record() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Record: answer.
	^answer asObject
!

Record: rhs
	"Private - Invoke the Record() method of the COM object.

		HRESULT __stdcall Record(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall! !
!ExcelISoundNote categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISoundNote categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISoundNote categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelISoundNote categoriesFor: #Delete:!**auto generated**!COM Interfaces-ISoundNote!private! !
!ExcelISoundNote categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISoundNote!private! !
!ExcelISoundNote categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISoundNote!private! !
!ExcelISoundNote categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISoundNote!private! !
!ExcelISoundNote categoriesFor: #import:!**auto generated**!methods!public! !
!ExcelISoundNote categoriesFor: #Import:rhs:!**auto generated**!COM Interfaces-ISoundNote!private! !
!ExcelISoundNote categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISoundNote categoriesFor: #play!**auto generated**!methods!public! !
!ExcelISoundNote categoriesFor: #Play:!**auto generated**!COM Interfaces-ISoundNote!private! !
!ExcelISoundNote categoriesFor: #record!**auto generated**!methods!public! !
!ExcelISoundNote categoriesFor: #Record:!**auto generated**!COM Interfaces-ISoundNote!private! !

!ExcelISoundNote class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISoundNote'
		ExcelISoundNote defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #Import:rhs:
			argumentTypes: 'bstr variant*';
		defineFunction: #Play:
			argumentTypes: 'variant*';
		defineFunction: #Record:
			argumentTypes: 'variant*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISoundNote initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISoundNote class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISoundNote class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

