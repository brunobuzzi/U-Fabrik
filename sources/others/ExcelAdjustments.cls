"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelAdjustments
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAdjustments guid: (IID fromString: '{000C0310-0000-0000-C000-000000000046}')!
ExcelAdjustments comment: '<ExcelAdjustments> is a wrapper class for the COM interface ''Excel.Adjustments'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0310-0000-0000-C000-000000000046), 
	helpcontext(0x00019258), 
	nonextensible, 
	dual
]
interface Adjustments : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x00019259)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x00000002), propget, helpcontext(0x0001925a)]
	HRESULT __stdcall Count(
		[out, retval]int* Count);
	[id(0000000000), propget, helpcontext(0x0001925b)]
	HRESULT __stdcall Item(
		[in]int Index,
		[out, retval]float* Val);
	[id(0000000000), propput, helpcontext(0x0001925b)]
	HRESULT __stdcall Item(
		[in]int Index,
		[in]float Val);
};
'!
!ExcelAdjustments categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelAdjustments methodsFor!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

get_Count: count
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]int* Count);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Item: index val: val
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]int Index,
			[out, retval]float* Val);"

	<virtual stdcall: hresult 12 sdword float*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

item: index
	"Answer the <float> value of the 'Item' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self
		get_Item: index
		val: answer.
	^answer asObject
!

item: index val: val
	"Set the 'Item' property of the receiver to the <float> value of the argument."

	self
		put_Item: index
		val: val
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Item: index val: val
	"Private - Set the value of the 'Item' property of the object wrapped by the 
	 receiver to the <float> argument, val.

		HRESULT __stdcall Item(
			[in]int Index,
			[in]float Val);"

	<virtual stdcall: hresult 13 sdword float>
	^self invalidCall! !
!ExcelAdjustments categoriesFor: #count!**auto generated**!properties!public! !
!ExcelAdjustments categoriesFor: #get_Count:!**auto generated**!COM Interfaces-Adjustments!private! !
!ExcelAdjustments categoriesFor: #get_Item:val:!**auto generated**!COM Interfaces-Adjustments!private! !
!ExcelAdjustments categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-Adjustments!private! !
!ExcelAdjustments categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelAdjustments categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelAdjustments categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelAdjustments categoriesFor: #item:val:!**auto generated**!properties!public! !
!ExcelAdjustments categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelAdjustments categoriesFor: #put_Item:val:!**auto generated**!COM Interfaces-Adjustments!private! !

!ExcelAdjustments class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.Adjustments'
		ExcelAdjustments defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Item:val:
			argumentTypes: 'sdword float*';
		defineFunction: #put_Item:val:
			argumentTypes: 'sdword float'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAdjustments initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAdjustments class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelAdjustments class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

