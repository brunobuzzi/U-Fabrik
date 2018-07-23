"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIColorScaleCriteria
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIColorScaleCriteria guid: (IID fromString: '{00024494-0001-0000-C000-000000000046}')!
ExcelIColorScaleCriteria comment: '<ExcelIColorScaleCriteria> is a wrapper class for the COM interface ''Excel.IColorScaleCriteria'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024494-0001-0000-C000-000000000046), 
	helpcontext(0x0002012a), 
	hidden
]
interface IColorScaleCriteria : IDispatch
 {
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]VARIANT Index,
		[out, retval]ColorScaleCriterion** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]ColorScaleCriterion** RHS);
};
'!
!ExcelIColorScaleCriteria categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIColorScaleCriteria methodsFor!

_default: index
	"Answer the <ExcelColorScaleCriterion> value of the '_Default' property of the receiver."

	| answer |
	answer := ExcelColorScaleCriterion newPointer.
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
			[out, retval]ColorScaleCriterion** RHS);"

	<virtual stdcall: hresult 9 variant ExcelColorScaleCriterion**>
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
			[out, retval]ColorScaleCriterion** RHS);"

	<virtual stdcall: hresult 11 variant ExcelColorScaleCriterion**>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelColorScaleCriterion> value of the 'Item' property of the receiver."

	| answer |
	answer := ExcelColorScaleCriterion newPointer.
	self
		get_Item: index asVariant
		rhs: answer.
	^answer asObject
! !
!ExcelIColorScaleCriteria categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIColorScaleCriteria categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIColorScaleCriteria categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIColorScaleCriteria categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IColorScaleCriteria!private! !
!ExcelIColorScaleCriteria categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IColorScaleCriteria!private! !
!ExcelIColorScaleCriteria categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IColorScaleCriteria!private! !
!ExcelIColorScaleCriteria categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IColorScaleCriteria!private! !
!ExcelIColorScaleCriteria categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIColorScaleCriteria categoriesFor: #item:!**auto generated**!properties!public! !

!ExcelIColorScaleCriteria class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IColorScaleCriteria'
		ExcelIColorScaleCriteria defineTemplate"

	self
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'variant ExcelColorScaleCriterion**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #get_Item:rhs:
			argumentTypes: 'variant ExcelColorScaleCriterion**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIColorScaleCriteria initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIColorScaleCriteria class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIColorScaleCriteria class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

