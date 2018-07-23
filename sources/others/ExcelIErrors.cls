"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIErrors
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIErrors guid: (IID fromString: '{0002445C-0001-0000-C000-000000000046}')!
ExcelIErrors comment: '<ExcelIErrors> is a wrapper class for the COM interface ''Excel.IErrors'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002445C-0001-0000-C000-000000000046), 
	helpcontext(0x000200f2), 
	hidden
]
interface IErrors : IDispatch
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
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]Error** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]Error** RHS);
};
'!
!ExcelIErrors categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIErrors methodsFor!

_default: index
	"Answer the <ExcelError> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelError newPointer.
	self
		get__Default: index asVariant
		rhs: answer.
	^answer asObject
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

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]Error** RHS);"

	<virtual stdcall: hresult 12 variant ExcelError**>
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

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]Error** RHS);"

	<virtual stdcall: hresult 11 variant ExcelError**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

item: index
	"Answer the <ExcelError> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelError newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIErrors categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIErrors categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIErrors categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIErrors categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IErrors!private! !
!ExcelIErrors categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IErrors!private! !
!ExcelIErrors categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IErrors!private! !
!ExcelIErrors categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IErrors!private! !
!ExcelIErrors categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IErrors!private! !
!ExcelIErrors categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIErrors categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIErrors class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IErrors'
		ExcelIErrors defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelError**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelError**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIErrors initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIErrors class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIErrors class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

