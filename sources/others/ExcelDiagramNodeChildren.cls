"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelDiagramNodeChildren
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDiagramNodeChildren guid: (IID fromString: '{000C036F-0000-0000-C000-000000000046}')!
ExcelDiagramNodeChildren comment: '<ExcelDiagramNodeChildren> is a wrapper class for the COM interface ''Excel.DiagramNodeChildren'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C036F-0000-0000-C000-000000000046), 
	helpcontext(0x0001e078), 
	hidden, 
	nonextensible, 
	dual
]
interface DiagramNodeChildren : _IMsoDispObj
 {
	[id(0xfffffffc), propget, helpcontext(0x0001e079)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** ppunkEnum);
	[id(0000000000), helpcontext(0x0001e07a)]
	HRESULT __stdcall Item(
		[in]VARIANT Index,
		[out, retval]DiagramNode** ppNode);
	[id(0x0000000a), helpcontext(0x0001e07b)]
	HRESULT __stdcall AddNode(
		[in, defaultvalue(-1)]VARIANT Index,
		[in, defaultvalue(1)]MsoDiagramNodeType nodeType,
		[out, retval]DiagramNode** ppNewNode);
	[id(0x0000000b), helpcontext(0x0001e07c)]
	HRESULT __stdcall SelectAll();
	[id(0x00000064), propget, helpcontext(0x0001e07d)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** ppParent);
	[id(0x00000065), propget, helpcontext(0x0001e07e)]
	HRESULT __stdcall Count(
		[out, retval]int* pcDiagramNodes);
	[id(0x00000067), propget, helpcontext(0x0001e07f)]
	HRESULT __stdcall FirstChild(
		[out, retval]DiagramNode** pFirst);
	[id(0x00000068), propget, helpcontext(0x0001e080)]
	HRESULT __stdcall LastChild(
		[out, retval]DiagramNode** pLast);
};
'!
!ExcelDiagramNodeChildren categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelDiagramNodeChildren methodsFor!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

addNode
	"Answer the <ExcelDiagramNode> result of invoking the AddNode() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addNode: (-1) asVariant
		 nodeType: 1!

addNode: index nodeType: nodeType
	"Answer the <ExcelDiagramNode> result of invoking the AddNode() method of the COM object."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self
		AddNode: index asVariant
		nodeType: nodeType
		ppNewNode: answer.
	^answer asObject
!

AddNode: index nodeType: nodeType ppNewNode: ppNewNode
	"Private - Invoke the AddNode() method of the COM object.

		HRESULT __stdcall AddNode(
			[in, defaultvalue(-1)]VARIANT Index,
			[in, defaultvalue(1)]MsoDiagramNodeType nodeType,
			[out, retval]DiagramNode** ppNewNode);"

	<virtual stdcall: hresult 12 variant sdword ExcelDiagramNode**>
	^self invalidCall!

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
	^answer asObject
!

firstChild
	"Answer the <ExcelDiagramNode> value of the 'FirstChild' property of the receiver."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self get_FirstChild: answer.
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

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_FirstChild: pFirst
	"Private - Get the value of the 'FirstChild' property of the receiver.

		HRESULT __stdcall FirstChild(
			[out, retval]DiagramNode** pFirst);"

	<virtual stdcall: hresult 16 ExcelDiagramNode**>
	^self invalidCall!

get_LastChild: pLast
	"Private - Get the value of the 'LastChild' property of the receiver.

		HRESULT __stdcall LastChild(
			[out, retval]DiagramNode** pLast);"

	<virtual stdcall: hresult 17 ExcelDiagramNode**>
	^self invalidCall!

get_Parent: ppParent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** ppParent);"

	<virtual stdcall: hresult 14 IDispatch**>
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
		ppNode: answer.
	^answer asObject
!

Item: index ppNode: ppNode
	"Private - Invoke the Item() method of the COM object.

		HRESULT __stdcall Item(
			[in]VARIANT Index,
			[out, retval]DiagramNode** ppNode);"

	<virtual stdcall: hresult 11 variant ExcelDiagramNode**>
	^self invalidCall!

lastChild
	"Answer the <ExcelDiagramNode> value of the 'LastChild' property of the receiver."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self get_LastChild: answer.
	^answer asObject
!

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

	<virtual stdcall: hresult 13>
	^self invalidCall!

value: index
	"Set the 'Item' property of the receiver to the <ExcelDiagramNode**> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self item: index
! !
!ExcelDiagramNodeChildren categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelDiagramNodeChildren categoriesFor: #addNode!**auto generated**!methods!public! !
!ExcelDiagramNodeChildren categoriesFor: #addNode:nodeType:!**auto generated**!methods!public! !
!ExcelDiagramNodeChildren categoriesFor: #AddNode:nodeType:ppNewNode:!**auto generated**!COM Interfaces-DiagramNodeChildren!private! !
!ExcelDiagramNodeChildren categoriesFor: #count!**auto generated**!properties!public! !
!ExcelDiagramNodeChildren categoriesFor: #firstChild!**auto generated**!properties!public! !
!ExcelDiagramNodeChildren categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-DiagramNodeChildren!private! !
!ExcelDiagramNodeChildren categoriesFor: #get_Count:!**auto generated**!COM Interfaces-DiagramNodeChildren!private! !
!ExcelDiagramNodeChildren categoriesFor: #get_FirstChild:!**auto generated**!COM Interfaces-DiagramNodeChildren!private! !
!ExcelDiagramNodeChildren categoriesFor: #get_LastChild:!**auto generated**!COM Interfaces-DiagramNodeChildren!private! !
!ExcelDiagramNodeChildren categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-DiagramNodeChildren!private! !
!ExcelDiagramNodeChildren categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelDiagramNodeChildren categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelDiagramNodeChildren categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelDiagramNodeChildren categoriesFor: #Item:ppNode:!**auto generated**!COM Interfaces-DiagramNodeChildren!private! !
!ExcelDiagramNodeChildren categoriesFor: #lastChild!**auto generated**!properties!public! !
!ExcelDiagramNodeChildren categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDiagramNodeChildren categoriesFor: #selectAll!**auto generated**!methods!public! !
!ExcelDiagramNodeChildren categoriesFor: #SelectAll!**auto generated**!COM Interfaces-DiagramNodeChildren!private! !
!ExcelDiagramNodeChildren categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelDiagramNodeChildren class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.DiagramNodeChildren'
		ExcelDiagramNodeChildren defineTemplate"

	self
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**';
		defineFunction: #Item:ppNode:
			argumentTypes: 'variant ExcelDiagramNode**';
		defineFunction: #AddNode:nodeType:ppNewNode:
			argumentTypes: 'variant sdword ExcelDiagramNode**';
		defineFunction: #SelectAll;
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_FirstChild:
			argumentTypes: 'ExcelDiagramNode**';
		defineFunction: #get_LastChild:
			argumentTypes: 'ExcelDiagramNode**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDiagramNodeChildren initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDiagramNodeChildren class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelDiagramNodeChildren class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

