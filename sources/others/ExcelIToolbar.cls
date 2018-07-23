"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIToolbar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIToolbar guid: (IID fromString: '{0002085C-0001-0000-C000-000000000046}')!
ExcelIToolbar comment: '<ExcelIToolbar> is a wrapper class for the COM interface ''Excel.IToolbar'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002085C-0001-0000-C000-000000000046), 
	helpcontext(0x0002001c), 
	hidden
]
interface IToolbar : IDispatch
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
	[id(0x00000229), propget, helpcontext(0x00010229)]
	HRESULT __stdcall BuiltIn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]long* RHS);
	[id(0x0000007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]long RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]long* RHS);
	[id(0x0000007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]long RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]long* RHS);
	[id(0x00000085), propput, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[in]long RHS);
	[id(0x000000b0), propget, helpcontext(0x000100b0)]
	HRESULT __stdcall Protection(
		[out, retval]XlToolbarProtection* RHS);
	[id(0x000000b0), propput, helpcontext(0x000100b0)]
	HRESULT __stdcall Protection(
		[in]XlToolbarProtection RHS);
	[id(0x0000022b), helpcontext(0x0001022b)]
	HRESULT __stdcall Reset();
	[id(0x000003c4), propget, helpcontext(0x000103c4)]
	HRESULT __stdcall ToolbarButtons(
		[out, retval]ToolbarButtons** RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]long* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]long RHS);
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]long* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]long RHS);
};
'!
!ExcelIToolbar categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIToolbar methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

builtIn
	"Answer the <varbool> value of the 'BuiltIn' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_BuiltIn: answer.
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

	<virtual stdcall: hresult 12>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BuiltIn: rhs
	"Private - Get the value of the 'BuiltIn' property of the receiver.

		HRESULT __stdcall BuiltIn(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 17 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Position: rhs
	"Private - Get the value of the 'Position' property of the receiver.

		HRESULT __stdcall Position(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_Protection: rhs
	"Private - Get the value of the 'Protection' property of the receiver.

		HRESULT __stdcall Protection(
			[out, retval]XlToolbarProtection* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_ToolbarButtons: rhs
	"Private - Get the value of the 'ToolbarButtons' property of the receiver.

		HRESULT __stdcall ToolbarButtons(
			[out, retval]ToolbarButtons** RHS);"

	<virtual stdcall: hresult 23 ExcelToolbarButtons**>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 26 varbool*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

height
	"Answer the <sdword> value of the 'Height' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Height: answer.
	^answer asObject
!

height: rhs
	"Set the 'Height' property of the receiver to the <sdword> value of the argument."

	self put_Height: rhs
!

left
	"Answer the <sdword> value of the 'Left' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Left: answer.
	^answer asObject
!

left: rhs
	"Set the 'Left' property of the receiver to the <sdword> value of the argument."

	self put_Left: rhs
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Position: answer.
	^answer asObject
!

position: rhs
	"Set the 'Position' property of the receiver to the <sdword> value of the argument."

	self put_Position: rhs
!

protection
	"Answer the <sdword> value of the 'Protection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Protection: answer.
	^answer asObject
!

protection: rhs
	"Set the 'Protection' property of the receiver to the <sdword> value of the argument."

	self put_Protection: rhs
!

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Height(
			[in]long RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Left(
			[in]long RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_Position: rhs
	"Private - Set the value of the 'Position' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Position(
			[in]long RHS);"

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_Protection: rhs
	"Private - Set the value of the 'Protection' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Protection(
			[in]XlToolbarProtection RHS);"

	<virtual stdcall: hresult 21 sdword>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Top(
			[in]long RHS);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 27 varbool>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Width(
			[in]long RHS);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

reset
	"Invoke the Reset() method of the COM object."

	^self Reset
!

Reset
	"Private - Invoke the Reset() method of the COM object.

		HRESULT __stdcall Reset();"

	<virtual stdcall: hresult 22>
	^self invalidCall!

toolbarButtons
	"Answer the <ExcelToolbarButtons> value of the 'ToolbarButtons' property of the receiver."

	| answer |
	answer := ExcelToolbarButtons newPointer.
	self get_ToolbarButtons: answer.
	^answer asObject
!

top
	"Answer the <sdword> value of the 'Top' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Top: answer.
	^answer asObject
!

top: rhs
	"Set the 'Top' property of the receiver to the <sdword> value of the argument."

	self put_Top: rhs
!

visible
	"Answer the <varbool> value of the 'Visible' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Visible: answer.
	^answer asObject
!

visible: rhs
	"Set the 'Visible' property of the receiver to the <varbool> value of the argument."

	self put_Visible: rhs
!

width
	"Answer the <sdword> value of the 'Width' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Width: answer.
	^answer asObject
!

width: rhs
	"Set the 'Width' property of the receiver to the <sdword> value of the argument."

	self put_Width: rhs
! !
!ExcelIToolbar categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIToolbar categoriesFor: #Delete!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_BuiltIn:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Position:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Protection:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_ToolbarButtons:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #position!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #protection!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #protection:!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #put_Position:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #put_Protection:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #reset!**auto generated**!methods!public! !
!ExcelIToolbar categoriesFor: #Reset!**auto generated**!COM Interfaces-IToolbar!private! !
!ExcelIToolbar categoriesFor: #toolbarButtons!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIToolbar categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelIToolbar class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IToolbar'
		ExcelIToolbar defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BuiltIn:
			argumentTypes: 'varbool*';
		defineFunction: #Delete;
		defineFunction: #get_Height:
			argumentTypes: 'sdword*';
		defineFunction: #put_Height:
			argumentTypes: 'sdword';
		defineFunction: #get_Left:
			argumentTypes: 'sdword*';
		defineFunction: #put_Left:
			argumentTypes: 'sdword';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Position:
			argumentTypes: 'sdword*';
		defineFunction: #put_Position:
			argumentTypes: 'sdword';
		defineFunction: #get_Protection:
			argumentTypes: 'sdword*';
		defineFunction: #put_Protection:
			argumentTypes: 'sdword';
		defineFunction: #Reset;
		defineFunction: #get_ToolbarButtons:
			argumentTypes: 'ExcelToolbarButtons**';
		defineFunction: #get_Top:
			argumentTypes: 'sdword*';
		defineFunction: #put_Top:
			argumentTypes: 'sdword';
		defineFunction: #get_Visible:
			argumentTypes: 'varbool*';
		defineFunction: #put_Visible:
			argumentTypes: 'varbool';
		defineFunction: #get_Width:
			argumentTypes: 'sdword*';
		defineFunction: #put_Width:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIToolbar initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIToolbar class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIToolbar class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

