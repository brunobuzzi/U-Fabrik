"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAction guid: (IID fromString: '{0002448F-0001-0000-C000-000000000046}')!
ExcelIAction comment: '<ExcelIAction> is a wrapper class for the COM interface ''Excel.IAction'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002448F-0001-0000-C000-000000000046), 
	helpcontext(0x00020125), 
	hidden
]
interface IAction : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlActionType* RHS);
	[id(0x00000a98), propget, helpcontext(0x00010a98)]
	HRESULT __stdcall Coordinate(
		[out, retval]BSTR* RHS);
	[id(0x00000a99), propget, helpcontext(0x00010a99)]
	HRESULT __stdcall Content(
		[out, retval]BSTR* RHS);
	[id(0x000008a3), helpcontext(0x000108a3)]
	HRESULT __stdcall Execute();
};
'!
!ExcelIAction categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAction methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

content
	"Answer the <bstr> value of the 'Content' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Content: answer.
	^answer asObject
!

coordinate
	"Answer the <bstr> value of the 'Coordinate' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Coordinate: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

execute
	"Invoke the Execute() method of the COM object."

	^self Execute
!

Execute
	"Private - Invoke the Execute() method of the COM object.

		HRESULT __stdcall Execute();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_Content: rhs
	"Private - Get the value of the 'Content' property of the receiver.

		HRESULT __stdcall Content(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_Coordinate: rhs
	"Private - Get the value of the 'Coordinate' property of the receiver.

		HRESULT __stdcall Coordinate(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlActionType* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
! !
!ExcelIAction categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAction categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIAction categoriesFor: #content!**auto generated**!properties!public! !
!ExcelIAction categoriesFor: #coordinate!**auto generated**!properties!public! !
!ExcelIAction categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAction categoriesFor: #execute!**auto generated**!methods!public! !
!ExcelIAction categoriesFor: #Execute!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #get_Content:!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #get_Coordinate:!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IAction!private! !
!ExcelIAction categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIAction categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIAction categoriesFor: #type!**auto generated**!properties!public! !

!ExcelIAction class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAction'
		ExcelIAction defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_Coordinate:
			argumentTypes: 'bstr*';
		defineFunction: #get_Content:
			argumentTypes: 'bstr*';
		defineFunction: #Execute
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAction initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAction class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAction class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

