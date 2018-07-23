"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDiagram
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDiagram guid: (IID fromString: '{0002446F-0001-0000-C000-000000000046}')!
ExcelIDiagram comment: '<ExcelIDiagram> is a wrapper class for the COM interface ''Excel.IDiagram'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002446F-0001-0000-C000-000000000046), 
	helpcontext(0x00020105), 
	hidden
]
interface IDiagram : IDispatch
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
	[id(0x000006a5), propget, helpcontext(0x000106a5)]
	HRESULT __stdcall Nodes(
		[out, retval]DiagramNodes** RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]MsoDiagramType* RHS);
	[id(0x000008c3), propget, helpcontext(0x000108c3)]
	HRESULT __stdcall AutoLayout(
		[out, retval]MsoTriState* RHS);
	[id(0x000008c3), propput, helpcontext(0x000108c3)]
	HRESULT __stdcall AutoLayout(
		[in]MsoTriState RHS);
	[id(0x000008c4), propget, helpcontext(0x000108c4)]
	HRESULT __stdcall Reverse(
		[out, retval]MsoTriState* RHS);
	[id(0x000008c4), propput, helpcontext(0x000108c4)]
	HRESULT __stdcall Reverse(
		[in]MsoTriState RHS);
	[id(0x00000072), propget, helpcontext(0x00010072)]
	HRESULT __stdcall AutoFormat(
		[out, retval]MsoTriState* RHS);
	[id(0x00000072), propput, helpcontext(0x00010072)]
	HRESULT __stdcall AutoFormat(
		[in]MsoTriState RHS);
	[id(0x00000416), helpcontext(0x00010416)]
	HRESULT __stdcall Convert(
		[in]MsoDiagramType Type);
	[id(0x00000900), helpcontext(0x00010900)]
	HRESULT __stdcall FitText();
};
'!
!ExcelIDiagram categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDiagram methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoFormat
	"Answer the <sdword> value of the 'AutoFormat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoFormat: answer.
	^answer asObject
!

autoFormat: rhs
	"Set the 'AutoFormat' property of the receiver to the <sdword> value of the argument."

	self put_AutoFormat: rhs
!

autoLayout
	"Answer the <sdword> value of the 'AutoLayout' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_AutoLayout: answer.
	^answer asObject
!

autoLayout: rhs
	"Set the 'AutoLayout' property of the receiver to the <sdword> value of the argument."

	self put_AutoLayout: rhs
!

convert: type
	"Invoke the Convert() method of the COM object."

	^self Convert: type
!

Convert: type
	"Private - Invoke the Convert() method of the COM object.

		HRESULT __stdcall Convert(
			[in]MsoDiagramType Type);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

fitText
	"Invoke the FitText() method of the COM object."

	^self FitText
!

FitText
	"Private - Invoke the FitText() method of the COM object.

		HRESULT __stdcall FitText();"

	<virtual stdcall: hresult 20>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoFormat: rhs
	"Private - Get the value of the 'AutoFormat' property of the receiver.

		HRESULT __stdcall AutoFormat(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_AutoLayout: rhs
	"Private - Get the value of the 'AutoLayout' property of the receiver.

		HRESULT __stdcall AutoLayout(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Nodes: rhs
	"Private - Get the value of the 'Nodes' property of the receiver.

		HRESULT __stdcall Nodes(
			[out, retval]DiagramNodes** RHS);"

	<virtual stdcall: hresult 11 ExcelDiagramNodes**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Reverse: rhs
	"Private - Get the value of the 'Reverse' property of the receiver.

		HRESULT __stdcall Reverse(
			[out, retval]MsoTriState* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]MsoDiagramType* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

nodes
	"Answer the <ExcelDiagramNodes> value of the 'Nodes' property of the receiver."

	| answer |
	answer := ExcelDiagramNodes newPointer.
	self get_Nodes: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AutoFormat: rhs
	"Private - Set the value of the 'AutoFormat' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall AutoFormat(
			[in]MsoTriState RHS);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_AutoLayout: rhs
	"Private - Set the value of the 'AutoLayout' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall AutoLayout(
			[in]MsoTriState RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_Reverse: rhs
	"Private - Set the value of the 'Reverse' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Reverse(
			[in]MsoTriState RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

reverse
	"Answer the <sdword> value of the 'Reverse' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Reverse: answer.
	^answer asObject
!

reverse: rhs
	"Set the 'Reverse' property of the receiver to the <sdword> value of the argument."

	self put_Reverse: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
! !
!ExcelIDiagram categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #autoFormat!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #autoFormat:!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #autoLayout!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #autoLayout:!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #convert:!**auto generated**!methods!public! !
!ExcelIDiagram categoriesFor: #Convert:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #fitText!**auto generated**!methods!public! !
!ExcelIDiagram categoriesFor: #FitText!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #get_AutoFormat:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #get_AutoLayout:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #get_Nodes:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #get_Reverse:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #nodes!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #put_AutoFormat:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #put_AutoLayout:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #put_Reverse:!**auto generated**!COM Interfaces-IDiagram!private! !
!ExcelIDiagram categoriesFor: #reverse!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #reverse:!**auto generated**!properties!public! !
!ExcelIDiagram categoriesFor: #type!**auto generated**!properties!public! !

!ExcelIDiagram class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDiagram'
		ExcelIDiagram defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Nodes:
			argumentTypes: 'ExcelDiagramNodes**';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_AutoLayout:
			argumentTypes: 'sdword*';
		defineFunction: #put_AutoLayout:
			argumentTypes: 'sdword';
		defineFunction: #get_Reverse:
			argumentTypes: 'sdword*';
		defineFunction: #put_Reverse:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoFormat:
			argumentTypes: 'sdword*';
		defineFunction: #put_AutoFormat:
			argumentTypes: 'sdword';
		defineFunction: #Convert:
			argumentTypes: 'sdword';
		defineFunction: #FitText
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDiagram initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDiagram class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDiagram class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

