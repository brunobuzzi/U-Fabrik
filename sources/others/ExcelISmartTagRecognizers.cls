"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISmartTagRecognizers
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISmartTagRecognizers guid: (IID fromString: '{00024463-0001-0000-C000-000000000046}')!
ExcelISmartTagRecognizers comment: '<ExcelISmartTagRecognizers> is a wrapper class for the COM interface ''Excel.ISmartTagRecognizers'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024463-0001-0000-C000-000000000046), 
	helpcontext(0x000200f9), 
	hidden
]
interface ISmartTagRecognizers : IDispatch
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
		[in]VARIANT Index,
		[out, retval]SmartTagRecognizer** RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]SmartTagRecognizer** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000008a9), propget, helpcontext(0x000108a9)]
	HRESULT __stdcall Recognize(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008a9), propput, helpcontext(0x000108a9)]
	HRESULT __stdcall Recognize(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelISmartTagRecognizers categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISmartTagRecognizers methodsFor!

_default: index
	"Answer the <ExcelSmartTagRecognizer> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelSmartTagRecognizer newPointer.
	self
		get__Default: index asVariant
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
			[in]VARIANT Index,
			[out, retval]SmartTagRecognizer** RHS);"

	<virtual stdcall: hresult 13 variant ExcelSmartTagRecognizer**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 14 IUnknown**>
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
			[in]VARIANT Index,
			[out, retval]SmartTagRecognizer** RHS);"

	<virtual stdcall: hresult 12 variant ExcelSmartTagRecognizer**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Recognize: rhs
	"Private - Get the value of the 'Recognize' property of the receiver.

		HRESULT __stdcall Recognize(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelSmartTagRecognizer> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelSmartTagRecognizer newPointer.
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
!

put_Recognize: rhs
	"Private - Set the value of the 'Recognize' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Recognize(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 16 varbool>
	^self invalidCall!

recognize
	"Answer the <varbool> value of the 'Recognize' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Recognize: answer.
	^answer asObject
!

recognize: rhs
	"Set the 'Recognize' property of the receiver to the <varbool> value of the argument."

	self put_Recognize: rhs
! !
!ExcelISmartTagRecognizers categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelISmartTagRecognizers categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelISmartTagRecognizers categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISmartTagRecognizers categoriesFor: #count!**auto generated**!properties!public! !
!ExcelISmartTagRecognizers categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISmartTagRecognizers categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #get_Recognize:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelISmartTagRecognizers categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelISmartTagRecognizers categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISmartTagRecognizers categoriesFor: #put_Recognize:!**auto generated**!COM Interfaces-ISmartTagRecognizers!private! !
!ExcelISmartTagRecognizers categoriesFor: #recognize!**auto generated**!properties!public! !
!ExcelISmartTagRecognizers categoriesFor: #recognize:!**auto generated**!properties!public! !

!ExcelISmartTagRecognizers class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISmartTagRecognizers'
		ExcelISmartTagRecognizers defineTemplate"

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
			argumentTypes: 'variant ExcelSmartTagRecognizer**';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelSmartTagRecognizer**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Recognize:
			argumentTypes: 'varbool*';
		defineFunction: #put_Recognize:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISmartTagRecognizers initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISmartTagRecognizers class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISmartTagRecognizers class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

