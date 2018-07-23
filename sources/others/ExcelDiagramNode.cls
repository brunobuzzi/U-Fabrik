"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelDiagramNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDiagramNode guid: (IID fromString: '{000C0370-0000-0000-C000-000000000046}')!
ExcelDiagramNode comment: '<ExcelDiagramNode> is a wrapper class for the COM interface ''Excel.DiagramNode'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0370-0000-0000-C000-000000000046), 
	helpcontext(0x0001e460), 
	hidden, 
	nonextensible, 
	dual
]
interface DiagramNode : _IMsoDispObj
 {
	[id(0x0000000a), helpcontext(0x0001e461)]
	HRESULT __stdcall AddNode(
		[in, defaultvalue(2)]MsoRelativeNodePosition pos,
		[in, defaultvalue(1)]MsoDiagramNodeType nodeType,
		[out, retval]DiagramNode** NewNode);
	[id(0x0000000b), helpcontext(0x0001e462)]
	HRESULT __stdcall Delete();
	[id(0x0000000c), helpcontext(0x0001e463)]
	HRESULT __stdcall MoveNode(
		[in]DiagramNode* pTargetNode,
		[in]MsoRelativeNodePosition pos);
	[id(0x0000000d), helpcontext(0x0001e464)]
	HRESULT __stdcall ReplaceNode(
		[in]DiagramNode* pTargetNode);
	[id(0x0000000e), helpcontext(0x0001e465)]
	HRESULT __stdcall SwapNode(
		[in]DiagramNode* pTargetNode,
		[in, defaultvalue(true)]VARIANT_BOOL swapChildren);
	[id(0x0000000f), helpcontext(0x0001e466)]
	HRESULT __stdcall CloneNode(
		[in]VARIANT_BOOL copyChildren,
		[in]DiagramNode* pTargetNode,
		[in, defaultvalue(2)]MsoRelativeNodePosition pos,
		[out, retval]DiagramNode** ppNode);
	[id(0x00000010), helpcontext(0x0001e467)]
	HRESULT __stdcall TransferChildren(
		[in]DiagramNode* pReceivingNode);
	[id(0x00000011), helpcontext(0x0001e468)]
	HRESULT __stdcall NextNode(
		[out, retval]DiagramNode** ppNextNode);
	[id(0x00000012), helpcontext(0x0001e469)]
	HRESULT __stdcall PrevNode(
		[out, retval]DiagramNode** ppPrevNode);
	[id(0x00000064), propget, helpcontext(0x0001e46a)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** ppParent);
	[id(0x00000065), propget, helpcontext(0x0001e46b)]
	HRESULT __stdcall Children(
		[out, retval]DiagramNodeChildren** ppChildren);
	[id(0x00000066), propget, helpcontext(0x0001e46c)]
	HRESULT __stdcall Shape(
		[out, retval]Shape** ppShape);
	[id(0x00000067), propget, helpcontext(0x0001e46d)]
	HRESULT __stdcall Root(
		[out, retval]DiagramNode** ppRoot);
	[id(0x00000068), propget, helpcontext(0x0001e46e)]
	HRESULT __stdcall Diagram(
		[out, retval]IMsoDiagram** ppDiagram);
	[id(0x00000069), propget, helpcontext(0x0001e46f)]
	HRESULT __stdcall Layout(
		[out, retval]MsoOrgChartLayoutType* pdgmType);
	[id(0x00000069), propput, helpcontext(0x0001e46f)]
	HRESULT __stdcall Layout(
		[in]MsoOrgChartLayoutType pdgmType);
	[id(0x0000006a), propget, helpcontext(0x0001e471)]
	HRESULT __stdcall TextShape(
		[out, retval]Shape** Shape);
};
'!
!ExcelDiagramNode categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelDiagramNode methodsFor!

addNode
	"Answer the <ExcelDiagramNode> result of invoking the AddNode() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addNode: 2
		 nodeType: 1!

addNode: pos nodeType: nodeType
	"Answer the <ExcelDiagramNode> result of invoking the AddNode() method of the COM object."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self
		AddNode: pos
		nodeType: nodeType
		newNode: answer.
	^answer asObject
!

AddNode: pos nodeType: nodeType newNode: newNode
	"Private - Invoke the AddNode() method of the COM object.

		HRESULT __stdcall AddNode(
			[in, defaultvalue(2)]MsoRelativeNodePosition pos,
			[in, defaultvalue(1)]MsoDiagramNodeType nodeType,
			[out, retval]DiagramNode** NewNode);"

	<virtual stdcall: hresult 10 sdword sdword ExcelDiagramNode**>
	^self invalidCall!

children
	"Answer the <ExcelDiagramNodeChildren> value of the 'Children' property of the receiver."

	| answer |
	answer := ExcelDiagramNodeChildren newPointer.
	self get_Children: answer.
	^answer asObject
!

cloneNode: copyChildren pTargetNode: pTargetNode
	"Answer the <ExcelDiagramNode> result of invoking the CloneNode() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 cloneNode: copyChildren
		 pTargetNode: pTargetNode
		 pos: 2!

cloneNode: copyChildren pTargetNode: pTargetNode pos: pos
	"Answer the <ExcelDiagramNode> result of invoking the CloneNode() method of the COM object."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self
		CloneNode: copyChildren
		pTargetNode: pTargetNode
		pos: pos
		ppNode: answer.
	^answer asObject
!

CloneNode: copyChildren pTargetNode: pTargetNode pos: pos ppNode: ppNode
	"Private - Invoke the CloneNode() method of the COM object.

		HRESULT __stdcall CloneNode(
			[in]VARIANT_BOOL copyChildren,
			[in]DiagramNode* pTargetNode,
			[in, defaultvalue(2)]MsoRelativeNodePosition pos,
			[out, retval]DiagramNode** ppNode);"

	<virtual stdcall: hresult 15 varbool ExcelDiagramNode* sdword ExcelDiagramNode**>
	^self invalidCall!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

diagram
	"Answer the <OfficeIMsoDiagram> value of the 'Diagram' property of the receiver."

	| answer |
	answer := OfficeIMsoDiagram newPointer.
	self get_Diagram: answer.
	^answer asObject
!

get_Children: ppChildren
	"Private - Get the value of the 'Children' property of the receiver.

		HRESULT __stdcall Children(
			[out, retval]DiagramNodeChildren** ppChildren);"

	<virtual stdcall: hresult 20 ExcelDiagramNodeChildren**>
	^self invalidCall!

get_Diagram: ppDiagram
	"Private - Get the value of the 'Diagram' property of the receiver.

		HRESULT __stdcall Diagram(
			[out, retval]IMsoDiagram** ppDiagram);"

	<virtual stdcall: hresult 23 OfficeIMsoDiagram**>
	^self invalidCall!

get_Layout: pdgmType
	"Private - Get the value of the 'Layout' property of the receiver.

		HRESULT __stdcall Layout(
			[out, retval]MsoOrgChartLayoutType* pdgmType);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_Parent: ppParent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** ppParent);"

	<virtual stdcall: hresult 19 IDispatch**>
	^self invalidCall!

get_Root: ppRoot
	"Private - Get the value of the 'Root' property of the receiver.

		HRESULT __stdcall Root(
			[out, retval]DiagramNode** ppRoot);"

	<virtual stdcall: hresult 22 ExcelDiagramNode**>
	^self invalidCall!

get_Shape: ppShape
	"Private - Get the value of the 'Shape' property of the receiver.

		HRESULT __stdcall Shape(
			[out, retval]Shape** ppShape);"

	<virtual stdcall: hresult 21 ExcelShape**>
	^self invalidCall!

get_TextShape: shape
	"Private - Get the value of the 'TextShape' property of the receiver.

		HRESULT __stdcall TextShape(
			[out, retval]Shape** Shape);"

	<virtual stdcall: hresult 26 ExcelShape**>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

layout
	"Answer the <sdword> value of the 'Layout' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Layout: answer.
	^answer asObject
!

layout: pdgmType
	"Set the 'Layout' property of the receiver to the <sdword> value of the argument."

	self put_Layout: pdgmType
!

moveNode: pTargetNode pos: pos
	"Invoke the MoveNode() method of the COM object."

	^self
		MoveNode: pTargetNode
		pos: pos
!

MoveNode: pTargetNode pos: pos
	"Private - Invoke the MoveNode() method of the COM object.

		HRESULT __stdcall MoveNode(
			[in]DiagramNode* pTargetNode,
			[in]MsoRelativeNodePosition pos);"

	<virtual stdcall: hresult 12 ExcelDiagramNode* sdword>
	^self invalidCall!

nextNode
	"Answer the <ExcelDiagramNode> result of invoking the NextNode() method of the COM object."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self NextNode: answer.
	^answer asObject
!

NextNode: ppNextNode
	"Private - Invoke the NextNode() method of the COM object.

		HRESULT __stdcall NextNode(
			[out, retval]DiagramNode** ppNextNode);"

	<virtual stdcall: hresult 17 ExcelDiagramNode**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

prevNode
	"Answer the <ExcelDiagramNode> result of invoking the PrevNode() method of the COM object."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self PrevNode: answer.
	^answer asObject
!

PrevNode: ppPrevNode
	"Private - Invoke the PrevNode() method of the COM object.

		HRESULT __stdcall PrevNode(
			[out, retval]DiagramNode** ppPrevNode);"

	<virtual stdcall: hresult 18 ExcelDiagramNode**>
	^self invalidCall!

put_Layout: pdgmType
	"Private - Set the value of the 'Layout' property of the object wrapped by the 
	 receiver to the <sdword> argument, pdgmType.

		HRESULT __stdcall Layout(
			[in]MsoOrgChartLayoutType pdgmType);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

replaceNode: pTargetNode
	"Invoke the ReplaceNode() method of the COM object."

	^self ReplaceNode: pTargetNode
!

ReplaceNode: pTargetNode
	"Private - Invoke the ReplaceNode() method of the COM object.

		HRESULT __stdcall ReplaceNode(
			[in]DiagramNode* pTargetNode);"

	<virtual stdcall: hresult 13 ExcelDiagramNode*>
	^self invalidCall!

root
	"Answer the <ExcelDiagramNode> value of the 'Root' property of the receiver."

	| answer |
	answer := ExcelDiagramNode newPointer.
	self get_Root: answer.
	^answer asObject
!

shape
	"Answer the <ExcelShape> value of the 'Shape' property of the receiver."

	| answer |
	answer := ExcelShape newPointer.
	self get_Shape: answer.
	^answer asObject
!

swapNode: pTargetNode
	"Invoke the SwapNode() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 swapNode: pTargetNode
		 swapChildren: true!

swapNode: pTargetNode swapChildren: swapChildren
	"Invoke the SwapNode() method of the COM object."

	^self
		SwapNode: pTargetNode
		swapChildren: swapChildren
!

SwapNode: pTargetNode swapChildren: swapChildren
	"Private - Invoke the SwapNode() method of the COM object.

		HRESULT __stdcall SwapNode(
			[in]DiagramNode* pTargetNode,
			[in, defaultvalue(true)]VARIANT_BOOL swapChildren);"

	<virtual stdcall: hresult 14 ExcelDiagramNode* varbool>
	^self invalidCall!

textShape
	"Answer the <ExcelShape> value of the 'TextShape' property of the receiver."

	| answer |
	answer := ExcelShape newPointer.
	self get_TextShape: answer.
	^answer asObject
!

transferChildren: pReceivingNode
	"Invoke the TransferChildren() method of the COM object."

	^self TransferChildren: pReceivingNode
!

TransferChildren: pReceivingNode
	"Private - Invoke the TransferChildren() method of the COM object.

		HRESULT __stdcall TransferChildren(
			[in]DiagramNode* pReceivingNode);"

	<virtual stdcall: hresult 16 ExcelDiagramNode*>
	^self invalidCall! !
!ExcelDiagramNode categoriesFor: #addNode!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #addNode:nodeType:!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #AddNode:nodeType:newNode:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #children!**auto generated**!properties!public! !
!ExcelDiagramNode categoriesFor: #cloneNode:pTargetNode:!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #cloneNode:pTargetNode:pos:!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #CloneNode:pTargetNode:pos:ppNode:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #Delete!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #diagram!**auto generated**!properties!public! !
!ExcelDiagramNode categoriesFor: #get_Children:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #get_Diagram:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #get_Layout:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #get_Root:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #get_Shape:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #get_TextShape:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelDiagramNode categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelDiagramNode categoriesFor: #layout!**auto generated**!properties!public! !
!ExcelDiagramNode categoriesFor: #layout:!**auto generated**!properties!public! !
!ExcelDiagramNode categoriesFor: #moveNode:pos:!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #MoveNode:pos:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #nextNode!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #NextNode:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDiagramNode categoriesFor: #prevNode!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #PrevNode:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #put_Layout:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #replaceNode:!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #ReplaceNode:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #root!**auto generated**!properties!public! !
!ExcelDiagramNode categoriesFor: #shape!**auto generated**!properties!public! !
!ExcelDiagramNode categoriesFor: #swapNode:!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #swapNode:swapChildren:!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #SwapNode:swapChildren:!**auto generated**!COM Interfaces-DiagramNode!private! !
!ExcelDiagramNode categoriesFor: #textShape!**auto generated**!properties!public! !
!ExcelDiagramNode categoriesFor: #transferChildren:!**auto generated**!methods!public! !
!ExcelDiagramNode categoriesFor: #TransferChildren:!**auto generated**!COM Interfaces-DiagramNode!private! !

!ExcelDiagramNode class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.DiagramNode'
		ExcelDiagramNode defineTemplate"

	self
		defineFunction: #AddNode:nodeType:newNode:
			argumentTypes: 'sdword sdword ExcelDiagramNode**';
		defineFunction: #Delete;
		defineFunction: #MoveNode:pos:
			argumentTypes: 'ExcelDiagramNode* sdword';
		defineFunction: #ReplaceNode:
			argumentTypes: 'ExcelDiagramNode*';
		defineFunction: #SwapNode:swapChildren:
			argumentTypes: 'ExcelDiagramNode* varbool';
		defineFunction: #CloneNode:pTargetNode:pos:ppNode:
			argumentTypes: 'varbool ExcelDiagramNode* sdword ExcelDiagramNode**';
		defineFunction: #TransferChildren:
			argumentTypes: 'ExcelDiagramNode*';
		defineFunction: #NextNode:
			argumentTypes: 'ExcelDiagramNode**';
		defineFunction: #PrevNode:
			argumentTypes: 'ExcelDiagramNode**';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Children:
			argumentTypes: 'ExcelDiagramNodeChildren**';
		defineFunction: #get_Shape:
			argumentTypes: 'ExcelShape**';
		defineFunction: #get_Root:
			argumentTypes: 'ExcelDiagramNode**';
		defineFunction: #get_Diagram:
			argumentTypes: 'OfficeIMsoDiagram**';
		defineFunction: #get_Layout:
			argumentTypes: 'sdword*';
		defineFunction: #put_Layout:
			argumentTypes: 'sdword';
		defineFunction: #get_TextShape:
			argumentTypes: 'ExcelShape**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDiagramNode initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDiagramNode class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelDiagramNode class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

