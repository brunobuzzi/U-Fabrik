"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIMenuBar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIMenuBar guid: (IID fromString: '{00020864-0001-0000-C000-000000000046}')!
ExcelIMenuBar comment: '<ExcelIMenuBar> is a wrapper class for the COM interface ''Excel.IMenuBar'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020864-0001-0000-C000-000000000046), 
	helpcontext(0x00020024), 
	hidden
]
interface IMenuBar : IDispatch
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
	[id(0x00000130), helpcontext(0x00010130)]
	HRESULT __stdcall Activate();
	[id(0x00000229), propget, helpcontext(0x00010229)]
	HRESULT __stdcall BuiltIn(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x0000024f), propget, helpcontext(0x0001024f)]
	HRESULT __stdcall Menus(
		[out, retval]Menus** RHS);
	[id(0x0000022b), helpcontext(0x0001022b)]
	HRESULT __stdcall Reset();
};
'!
!ExcelIMenuBar categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIMenuBar methodsFor!

activate
	"Invoke the Activate() method of the COM object."

	^self Activate
!

Activate
	"Private - Invoke the Activate() method of the COM object.

		HRESULT __stdcall Activate();"

	<virtual stdcall: hresult 11>
	^self invalidCall!

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

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Caption: answer.
	^answer asObject
!

caption: rhs
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument."

	self put_Caption: rhs
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

	<virtual stdcall: hresult 15>
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

	<virtual stdcall: hresult 12 varbool*>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_Menus: rhs
	"Private - Get the value of the 'Menus' property of the receiver.

		HRESULT __stdcall Menus(
			[out, retval]Menus** RHS);"

	<virtual stdcall: hresult 17 ExcelMenus**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

menus
	"Answer the <ExcelMenus> value of the 'Menus' property of the receiver."

	| answer |
	answer := ExcelMenus newPointer.
	self get_Menus: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 14 bstr>
	^self invalidCall!

reset
	"Invoke the Reset() method of the COM object."

	^self Reset
!

Reset
	"Private - Invoke the Reset() method of the COM object.

		HRESULT __stdcall Reset();"

	<virtual stdcall: hresult 18>
	^self invalidCall! !
!ExcelIMenuBar categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelIMenuBar categoriesFor: #Activate!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIMenuBar categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelIMenuBar categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelIMenuBar categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelIMenuBar categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIMenuBar categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIMenuBar categoriesFor: #Delete!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #get_BuiltIn:!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #get_Menus:!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIMenuBar categoriesFor: #menus!**auto generated**!properties!public! !
!ExcelIMenuBar categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIMenuBar categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-IMenuBar!private! !
!ExcelIMenuBar categoriesFor: #reset!**auto generated**!methods!public! !
!ExcelIMenuBar categoriesFor: #Reset!**auto generated**!COM Interfaces-IMenuBar!private! !

!ExcelIMenuBar class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IMenuBar'
		ExcelIMenuBar defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Activate;
		defineFunction: #get_BuiltIn:
			argumentTypes: 'varbool*';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #Delete;
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Menus:
			argumentTypes: 'ExcelMenus**';
		defineFunction: #Reset
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIMenuBar initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIMenuBar class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIMenuBar class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

