"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIStyles
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIStyles guid: (IID fromString: '{00020853-0001-0000-C000-000000000046}')!
ExcelIStyles comment: '<ExcelIStyles> is a wrapper class for the COM interface ''Excel.IStyles'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020853-0001-0000-C000-000000000046), 
	helpcontext(0x00020013), 
	hidden
]
interface IStyles : IDispatch
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
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]BSTR Name,
		[in, optional]VARIANT BasedOn,
		[out, retval]Style** RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[in]long lcid,
		[out, retval]Style** RHS);
	[id(0x00000234), helpcontext(0x00010234)]
	HRESULT __stdcall Merge(
		[in]VARIANT Workbook,
		[out, retval]VARIANT* RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[in]long lcid,
		[out, retval]Style** RHS);
};
'!
!ExcelIStyles categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIStyles methodsFor!

_default: index lcid: lcid
	"Answer the <ExcelStyle> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelStyle newPointer.
	self
		get__Default: index asVariant
		lcid: lcid
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

add: name
	"Answer the <ExcelStyle> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 basedOn: VARIANT unspecified!

add: name basedOn: basedOn
	"Answer the <ExcelStyle> result of invoking the Add() method of the COM object."

	| answer |
	answer := ExcelStyle newPointer.
	self
		Add: name
		basedOn: basedOn asVariant
		rhs: answer.
	^answer asObject
!

Add: name basedOn: basedOn rhs: rhs
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]BSTR Name,
			[in, optional]VARIANT BasedOn,
			[out, retval]Style** RHS);"

	<virtual stdcall: hresult 11 bstr variant ExcelStyle**>
	^self invalidCall!

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

get__Default: index lcid: lcid rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[in]long lcid,
			[out, retval]Style** RHS);"

	<virtual stdcall: hresult 16 variant sdword ExcelStyle**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 15 IUnknown**>
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

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Item: index lcid: lcid rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[in]long lcid,
			[out, retval]Style** RHS);"

	<virtual stdcall: hresult 13 variant sdword ExcelStyle**>
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

item: index lcid: lcid
	"Answer the <ExcelStyle> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelStyle newPointer.
	self
		get_Item: index asVariant
		lcid: lcid
		rhs: answer.
	^answer asObject
!

merge: workbook
	"Answer the <VARIANT> result of invoking the Merge() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Merge: workbook asVariant
		rhs: answer.
	^answer asObject
!

Merge: workbook rhs: rhs
	"Private - Invoke the Merge() method of the COM object.

		HRESULT __stdcall Merge(
			[in]VARIANT Workbook,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIStyles categoriesFor: #_default:lcid:!**auto generated**!properties!public! !
!ExcelIStyles categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIStyles categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelIStyles categoriesFor: #add:basedOn:!**auto generated**!methods!public! !
!ExcelIStyles categoriesFor: #Add:basedOn:rhs:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIStyles categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIStyles categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIStyles categoriesFor: #get__Default:lcid:rhs:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #get_Item:lcid:rhs:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIStyles categoriesFor: #item:lcid:!**auto generated**!properties!public! !
!ExcelIStyles categoriesFor: #merge:!**auto generated**!methods!public! !
!ExcelIStyles categoriesFor: #Merge:rhs:!**auto generated**!COM Interfaces-IStyles!private! !
!ExcelIStyles categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIStyles class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IStyles'
		ExcelIStyles defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Add:basedOn:rhs:
			argumentTypes: 'bstr variant ExcelStyle**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:lcid:rhs:
			argumentTypes: 'variant sdword ExcelStyle**';
		defineFunction: #Merge:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get__Default:lcid:rhs:
			argumentTypes: 'variant sdword ExcelStyle**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIStyles initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIStyles class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIStyles class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

