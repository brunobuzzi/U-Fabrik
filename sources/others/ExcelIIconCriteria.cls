"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIIconCriteria
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIIconCriteria guid: (IID fromString: '{00024498-0001-0000-C000-000000000046}')!
ExcelIIconCriteria comment: '<ExcelIIconCriteria> is a wrapper class for the COM interface ''Excel.IIconCriteria'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024498-0001-0000-C000-000000000046), 
	helpcontext(0x0002012e), 
	hidden
]
interface IIconCriteria : IDispatch
 {
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]IconCriterion** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]IconCriterion** RHS);
};
'!
!ExcelIIconCriteria categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIIconCriteria methodsFor!

_default: index
	"Answer the <ExcelIconCriterion> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelIconCriterion newPointer.
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

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]VARIANT Index,
			[out, retval]IconCriterion** RHS);"

	<virtual stdcall: hresult 9 variant ExcelIconCriterion**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 10 IUnknown**>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 8 sdword*>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]IconCriterion** RHS);"

	<virtual stdcall: hresult 11 variant ExcelIconCriterion**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelIconCriterion> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelIconCriterion newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
! !
!ExcelIIconCriteria categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIIconCriteria categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIIconCriteria categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIIconCriteria categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IIconCriteria!private! !
!ExcelIIconCriteria categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IIconCriteria!private! !
!ExcelIIconCriteria categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IIconCriteria!private! !
!ExcelIIconCriteria categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IIconCriteria!private! !
!ExcelIIconCriteria categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIIconCriteria categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelIIconCriteria class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IIconCriteria'
		ExcelIIconCriteria defineTemplate"

	self
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelIconCriterion**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelIconCriterion**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIIconCriteria initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIIconCriteria class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIIconCriteria class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

