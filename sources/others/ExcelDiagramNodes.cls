"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelDiagramNodes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDiagramNodes guid: (IID fromString: '{000C036E-0000-0000-C000-000000000046}')!
ExcelDiagramNodes comment: '<ExcelDiagramNodes> is a wrapper class for the COM interface ''Excel.DiagramNodes'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C036E-0000-0000-C000-000000000046), 
	helpcontext(0x0001dc90), 
	hidden, 
	nonextensible, 
	dual
]
interface DiagramNodes : _IMsoDispObj
 {
	[id(0xfffffffc), propget, helpcontext(0x0001dc91)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** ppunkEnum);
	[id(0000000000), helpcontext(0x0001dc92)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]DiagramNode** ppdn);
	[id(0x0000000a), helpcontext(0x0001dc93)]
	HRESULT __stdcall SelectAll();
	[id(0x00000064), propget, helpcontext(0x0001dc94)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** ppParent);
	[id(0x00000065), propget, helpcontext(0x0001dc95)]
	HRESULT __stdcall Count(
		[out, retval]int* pcDiagramNodes);
};
'!
!ExcelDiagramNodes categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelDiagramNodes methodsFor!

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

get__NewEnum: ppunkEnum
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** ppunkEnum);"

	<virtual stdcall: hresult 10 IUnknown**>
	^self invalidCall!

get_Count: pcDiagramNodes
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]int* pcDiagramNodes);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_Parent: ppParent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** ppParent);"

	<virtual stdcall: hresult 13 IDispatch**>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelDiagramNode> result of invoking the Item() method of the COM object."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self
		Item: index asVariant
		ppdn: answer.
	^answer asObject
!

Item: index ppdn: ppdn
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]DiagramNode** ppdn);"

	<virtual stdcall: hresult 11 variant ExcelDiagramNode**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

selectAll
	"Invoke the SelectAll() method of the COM object."

	^self SelectAll
!

SelectAll
	"Private - Invoke the SelectAll() method of the COM object.

		HRESULT __stdcall SelectAll();"

	<virtual stdcall: hresult 12>
	^self invalidCall!

value: index
	"Set the 'Item' property of the receiver to the <ExcelDiagramNode**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self item: index
! !
!ExcelDiagramNodes categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelDiagramNodes categoriesFor: #count!**auto generated**!properties!public! !
!ExcelDiagramNodes categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-DiagramNodes!private! !
!ExcelDiagramNodes categoriesFor: #get_Count:!**auto generated**!COM Interfaces-DiagramNodes!private! !
!ExcelDiagramNodes categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-DiagramNodes!private! !
!ExcelDiagramNodes categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelDiagramNodes categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelDiagramNodes categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelDiagramNodes categoriesFor: #Item:ppdn:!**auto generated**!COM Interfaces-DiagramNodes!private! !
!ExcelDiagramNodes categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDiagramNodes categoriesFor: #selectAll!**auto generated**!methods!public! !
!ExcelDiagramNodes categoriesFor: #SelectAll!**auto generated**!COM Interfaces-DiagramNodes!private! !
!ExcelDiagramNodes categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelDiagramNodes class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.DiagramNodes'
		ExcelDiagramNodes defineTemplate"

	self
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Item:ppdn:
			argumentTypes: 'variant ExcelDiagramNode**';
		defineFunction: #SelectAll;
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDiagramNodes initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDiagramNodes class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelDiagramNodes class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

