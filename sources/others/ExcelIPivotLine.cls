"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPivotLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPivotLine guid: (IID fromString: '{00024480-0001-0000-C000-000000000046}')!
ExcelIPivotLine comment: '<ExcelIPivotLine> is a wrapper class for the COM interface ''Excel.IPivotLine'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024480-0001-0000-C000-000000000046), 
	helpcontext(0x00020116), 
	hidden
]
interface IPivotLine : IDispatch
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
	[id(0x00000a7b), propget, helpcontext(0x00010a7b)]
	HRESULT __stdcall LineType(
		[out, retval]XlPivotLineType* RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]long* RHS);
	[id(0x00000a7c), propget, helpcontext(0x00010a7c)]
	HRESULT __stdcall PivotLineCells(
		[out, retval]PivotLineCells** RHS);
};
'!
!ExcelIPivotLine categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPivotLine methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_LineType: rhs
	"Private - Get the value of the 'LineType' property of the receiver.

		HRESULT __stdcall LineType(
			[out, retval]XlPivotLineType* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PivotLineCells: rhs
	"Private - Get the value of the 'PivotLineCells' property of the receiver.

		HRESULT __stdcall PivotLineCells(
			[out, retval]PivotLineCells** RHS);"

	<virtual stdcall: hresult 13 ExcelPivotLineCells**>
	^self invalidCall!

get_Position: rhs
	"Private - Get the value of the 'Position' property of the receiver.

		HRESULT __stdcall Position(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

lineType
	"Answer the <sdword> value of the 'LineType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_LineType: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pivotLineCells
	"Answer the <ExcelPivotLineCells> value of the 'PivotLineCells' property of the receiver."

	| answer |
	answer := ExcelPivotLineCells newPointer.
	self get_PivotLineCells: answer.
	^answer asObject
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Position: answer.
	^answer asObject
! !
!ExcelIPivotLine categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPivotLine categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPivotLine categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPivotLine!private! !
!ExcelIPivotLine categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPivotLine!private! !
!ExcelIPivotLine categoriesFor: #get_LineType:!**auto generated**!COM Interfaces-IPivotLine!private! !
!ExcelIPivotLine categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPivotLine!private! !
!ExcelIPivotLine categoriesFor: #get_PivotLineCells:!**auto generated**!COM Interfaces-IPivotLine!private! !
!ExcelIPivotLine categoriesFor: #get_Position:!**auto generated**!COM Interfaces-IPivotLine!private! !
!ExcelIPivotLine categoriesFor: #lineType!**auto generated**!properties!public! !
!ExcelIPivotLine categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPivotLine categoriesFor: #pivotLineCells!**auto generated**!properties!public! !
!ExcelIPivotLine categoriesFor: #position!**auto generated**!properties!public! !

!ExcelIPivotLine class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPivotLine'
		ExcelIPivotLine defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_LineType:
			argumentTypes: 'sdword*';
		defineFunction: #get_Position:
			argumentTypes: 'sdword*';
		defineFunction: #get_PivotLineCells:
			argumentTypes: 'ExcelPivotLineCells**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPivotLine initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPivotLine class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPivotLine class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

