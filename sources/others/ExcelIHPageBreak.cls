"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIHPageBreak
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIHPageBreak guid: (IID fromString: '{00024401-0001-0000-C000-000000000046}')!
ExcelIHPageBreak comment: '<ExcelIHPageBreak> is a wrapper class for the COM interface ''Excel.IHPageBreak'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024401-0001-0000-C000-000000000046), 
	helpcontext(0x00020097), 
	hidden
]
interface IHPageBreak : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]Worksheet** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x0000058c), helpcontext(0x0001058c)]
	HRESULT __stdcall DragOff(
		[in]XlDirection Direction,
		[in]long RegionIndex);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlPageBreak* RHS);
	[id(0x0000006c), propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]XlPageBreak RHS);
	[id(0x0000058e), propget, helpcontext(0x0001058e)]
	HRESULT __stdcall Extent(
		[out, retval]XlPageBreakExtent* RHS);
	[id(0x00000575), propget, helpcontext(0x00010575)]
	HRESULT __stdcall Location(
		[out, retval]Range** RHS);
	[id(0x00000575), propputref, helpcontext(0x00010575)]
	HRESULT __stdcall Location(
		[in]Range* RHS);
};
'!
!ExcelIHPageBreak categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIHPageBreak methodsFor!

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

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

dragOff: direction regionIndex: regionIndex
	"Invoke the DragOff() method of the COM object."

	^self
		DragOff: direction
		regionIndex: regionIndex
!

DragOff: direction regionIndex: regionIndex
	"Private - Invoke the DragOff() method of the COM object.

		HRESULT __stdcall DragOff(
			[in]XlDirection Direction,
			[in]long RegionIndex);"

	<virtual stdcall: hresult 12 sdword sdword>
	^self invalidCall!

extent
	"Answer the <sdword> value of the 'Extent' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Extent: answer.
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

get_Extent: rhs
	"Private - Get the value of the 'Extent' property of the receiver.

		HRESULT __stdcall Extent(
			[out, retval]XlPageBreakExtent* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Location: rhs
	"Private - Get the value of the 'Location' property of the receiver.

		HRESULT __stdcall Location(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 16 ExcelRange**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]Worksheet** RHS);"

	<virtual stdcall: hresult 10 Excel_Worksheet**>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlPageBreak* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

location
	"Answer the <ExcelRange> value of the 'Location' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Location: answer.
	^answer asObject
!

parent
	"Answer the <Excel_Worksheet> value of the 'Parent' property of the receiver."

	| answer |
	answer := Excel_Worksheet newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Type: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Type(
			[in]XlPageBreak RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

putref_Location: rhs
	"Private - Set the value of the 'Location' property of the object wrapped by the 
	 receiver to the <ExcelRange*> argument, rhs.

		HRESULT __stdcall Location(
			[in]Range* RHS);"

	<virtual stdcall: hresult 17 ExcelRange*>
	^self invalidCall!

setLocation: rhs
	"Set the 'Location' property of the receiver to the <ExcelRange*> value of the argument."

	self putref_Location: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

type: rhs
	"Set the 'Type' property of the receiver to the <sdword> value of the argument."

	self put_Type: rhs
! !
!ExcelIHPageBreak categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIHPageBreak categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIHPageBreak categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIHPageBreak categoriesFor: #Delete!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #dragOff:regionIndex:!**auto generated**!methods!public! !
!ExcelIHPageBreak categoriesFor: #DragOff:regionIndex:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #extent!**auto generated**!properties!public! !
!ExcelIHPageBreak categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #get_Extent:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #get_Location:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #location!**auto generated**!properties!public! !
!ExcelIHPageBreak categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIHPageBreak categoriesFor: #put_Type:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #putref_Location:!**auto generated**!COM Interfaces-IHPageBreak!private! !
!ExcelIHPageBreak categoriesFor: #setLocation:!**auto generated**!properties!public! !
!ExcelIHPageBreak categoriesFor: #type!**auto generated**!properties!public! !
!ExcelIHPageBreak categoriesFor: #type:!**auto generated**!properties!public! !

!ExcelIHPageBreak class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IHPageBreak'
		ExcelIHPageBreak defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'Excel_Worksheet**';
		defineFunction: #Delete;
		defineFunction: #DragOff:regionIndex:
			argumentTypes: 'sdword sdword';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword';
		defineFunction: #get_Extent:
			argumentTypes: 'sdword*';
		defineFunction: #get_Location:
			argumentTypes: 'ExcelRange**';
		defineFunction: #putref_Location:
			argumentTypes: 'ExcelRange*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIHPageBreak initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIHPageBreak class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIHPageBreak class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

