"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIScenario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIScenario guid: (IID fromString: '{00020897-0001-0000-C000-000000000046}')!
ExcelIScenario comment: '<ExcelIScenario> is a wrapper class for the COM interface ''Excel.IScenario'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020897-0001-0000-C000-000000000046), 
	helpcontext(0x00020057), 
	hidden
]
interface IScenario : IDispatch
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
	[id(0x00000390), helpcontext(0x00010390)]
	HRESULT __stdcall ChangeScenario(
		[in]VARIANT ChangingCells,
		[in, optional]VARIANT Values,
		[out, retval]VARIANT* RHS);
	[id(0x0000038f), propget, helpcontext(0x0001038f)]
	HRESULT __stdcall ChangingCells(
		[out, retval]Range** RHS);
	[id(0x0000038e), propget, helpcontext(0x0001038e)]
	HRESULT __stdcall Comment(
		[out, retval]BSTR* RHS);
	[id(0x0000038e), propput, helpcontext(0x0001038e)]
	HRESULT __stdcall Comment(
		[in]BSTR RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x0000010c), propget, helpcontext(0x0001010c)]
	HRESULT __stdcall Hidden(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000010c), propput, helpcontext(0x0001010c)]
	HRESULT __stdcall Hidden(
		[in]VARIANT_BOOL RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x0000010d), propget, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000010d), propput, helpcontext(0x0001010d)]
	HRESULT __stdcall Locked(
		[in]VARIANT_BOOL RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000001f0), helpcontext(0x000101f0)]
	HRESULT __stdcall Show(
		[out, retval]VARIANT* RHS);
	[id(0x000000a4), propget, helpcontext(0x000100a4)]
	HRESULT __stdcall Values(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
};
'!
!ExcelIScenario categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIScenario methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

changeScenario: changingCells
	"Answer the <VARIANT> result of invoking the ChangeScenario() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 changeScenario: changingCells
		 values: VARIANT unspecified!

changeScenario: changingCells values: values
	"Answer the <VARIANT> result of invoking the ChangeScenario() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ChangeScenario: changingCells asVariant
		values: values asVariant
		rhs: answer.
	^answer asObject
!

ChangeScenario: changingCells values: values rhs: rhs
	"Private - Invoke the ChangeScenario() method of the COM object.

		HRESULT __stdcall ChangeScenario(
			[in]VARIANT ChangingCells,
			[in, optional]VARIANT Values,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant variant variant*>
	^self invalidCall!

changingCells
	"Answer the <ExcelRange> value of the 'ChangingCells' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_ChangingCells: answer.
	^answer asObject
!

comment
	"Answer the <bstr> value of the 'Comment' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Comment: answer.
	^answer asObject
!

comment: rhs
	"Set the 'Comment' property of the receiver to the <bstr> value of the argument."

	self put_Comment: rhs
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

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_ChangingCells: rhs
	"Private - Get the value of the 'ChangingCells' property of the receiver.

		HRESULT __stdcall ChangingCells(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 12 ExcelRange**>
	^self invalidCall!

get_Comment: rhs
	"Private - Get the value of the 'Comment' property of the receiver.

		HRESULT __stdcall Comment(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Hidden: rhs
	"Private - Get the value of the 'Hidden' property of the receiver.

		HRESULT __stdcall Hidden(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_Locked: rhs
	"Private - Get the value of the 'Locked' property of the receiver.

		HRESULT __stdcall Locked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 21 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Values: index rhs: rhs
	"Private - Get the value of the 'Values' property of the receiver.

		HRESULT __stdcall Values(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 24 variant variant*>
	^self invalidCall!

hidden
	"Answer the <varbool> value of the 'Hidden' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Hidden: answer.
	^answer asObject
!

hidden: rhs
	"Set the 'Hidden' property of the receiver to the <varbool> value of the argument."

	self put_Hidden: rhs
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Locked: answer.
	^answer asObject
!

locked: rhs
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument."

	self put_Locked: rhs
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Comment: rhs
	"Private - Set the value of the 'Comment' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Comment(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 14 bstr>
	^self invalidCall!

put_Hidden: rhs
	"Private - Set the value of the 'Hidden' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Hidden(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

put_Locked: rhs
	"Private - Set the value of the 'Locked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Locked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 22 bstr>
	^self invalidCall!

show
	"Answer the <VARIANT> result of invoking the Show() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Show: answer.
	^answer asObject
!

Show: rhs
	"Private - Invoke the Show() method of the COM object.

		HRESULT __stdcall Show(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 23 variant*>
	^self invalidCall!

values
	"Answer the <variant> value of the 'Values' property of the receiver."

	^self values: VARIANT unspecified!

values: index
	"Answer the <variant> value of the 'Values' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_Values: index asVariant
		rhs: answer.
	^answer asObject
! !
!ExcelIScenario categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #changeScenario:!**auto generated**!methods!public! !
!ExcelIScenario categoriesFor: #changeScenario:values:!**auto generated**!methods!public! !
!ExcelIScenario categoriesFor: #ChangeScenario:values:rhs:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #changingCells!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #comment!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #comment:!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIScenario categoriesFor: #Delete:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_ChangingCells:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Comment:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Hidden:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Locked:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #get_Values:rhs:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #hidden!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #hidden:!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #put_Comment:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #put_Hidden:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #put_Locked:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #put_Name:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #show!**auto generated**!methods!public! !
!ExcelIScenario categoriesFor: #Show:!**auto generated**!COM Interfaces-IScenario!private! !
!ExcelIScenario categoriesFor: #values!**auto generated**!properties!public! !
!ExcelIScenario categoriesFor: #values:!**auto generated**!properties!public! !

!ExcelIScenario class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IScenario'
		ExcelIScenario defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #ChangeScenario:values:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #get_ChangingCells:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Comment:
			argumentTypes: 'bstr*';
		defineFunction: #put_Comment:
			argumentTypes: 'bstr';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_Hidden:
			argumentTypes: 'varbool*';
		defineFunction: #put_Hidden:
			argumentTypes: 'varbool';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Locked:
			argumentTypes: 'varbool*';
		defineFunction: #put_Locked:
			argumentTypes: 'varbool';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #Show:
			argumentTypes: 'variant*';
		defineFunction: #get_Values:rhs:
			argumentTypes: 'variant variant*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIScenario initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIScenario class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIScenario class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

