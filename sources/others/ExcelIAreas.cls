"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAreas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAreas guid: (IID fromString: '{00020860-0001-0000-C000-000000000046}')!
ExcelIAreas comment: '<ExcelIAreas> is a wrapper class for the COM interface ''Excel.IAreas'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020860-0001-0000-C000-000000000046), 
	helpcontext(0x00020020), 
	hidden
]
interface IAreas : IDispatch
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
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]long Index,
		[out, retval]Range** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long Index,
		[out, retval]Range** RHS);
};
'!
!ExcelIAreas categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAreas methodsFor!

_default: index
	"Answer the <ExcelRange> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self
		get__Default: index
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
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
			[in]long Index,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 14 sdword ExcelRange**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 13 IUnknown**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
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
			[in]long Index,
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 12 sdword ExcelRange**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelRange> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self
		get_Item: index
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
!ExcelIAreas categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIAreas categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIAreas categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAreas categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIAreas categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAreas categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IAreas!private! !
!ExcelIAreas categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IAreas!private! !
!ExcelIAreas categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAreas!private! !
!ExcelIAreas categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IAreas!private! !
!ExcelIAreas categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAreas!private! !
!ExcelIAreas categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IAreas!private! !
!ExcelIAreas categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAreas!private! !
!ExcelIAreas categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIAreas categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIAreas categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIAreas class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAreas'
		ExcelIAreas defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'sdword ExcelRange**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'sdword ExcelRange**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAreas initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAreas class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAreas class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

