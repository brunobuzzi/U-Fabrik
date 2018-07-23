"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelISmartTagAction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelISmartTagAction guid: (IID fromString: '{0002445E-0001-0000-C000-000000000046}')!
ExcelISmartTagAction comment: '<ExcelISmartTagAction> is a wrapper class for the COM interface ''Excel.ISmartTagAction'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002445E-0001-0000-C000-000000000046), 
	helpcontext(0x000200f4), 
	hidden
]
interface ISmartTagAction : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000008a3), helpcontext(0x000108a3)]
	HRESULT __stdcall Execute();
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlSmartTagControlType* RHS);
	[id(0x000008f9), propget, helpcontext(0x000108f9)]
	HRESULT __stdcall PresentInPane(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008fa), propget, helpcontext(0x000108fa)]
	HRESULT __stdcall ExpandHelp(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008fa), propput, helpcontext(0x000108fa)]
	HRESULT __stdcall ExpandHelp(
		[in]VARIANT_BOOL RHS);
	[id(0x000008fb), propget, helpcontext(0x000108fb)]
	HRESULT __stdcall CheckboxState(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008fb), propput, helpcontext(0x000108fb)]
	HRESULT __stdcall CheckboxState(
		[in]VARIANT_BOOL RHS);
	[id(0x000008fc), propget, helpcontext(0x000108fc)]
	HRESULT __stdcall TextboxText(
		[out, retval]BSTR* RHS);
	[id(0x000008fc), propput, helpcontext(0x000108fc)]
	HRESULT __stdcall TextboxText(
		[in]BSTR RHS);
	[id(0x000008fd), propget, helpcontext(0x000108fd)]
	HRESULT __stdcall ListSelection(
		[out, retval]long* RHS);
	[id(0x000008fd), propput, helpcontext(0x000108fd)]
	HRESULT __stdcall ListSelection(
		[in]long RHS);
	[id(0x000008fe), propget, helpcontext(0x000108fe)]
	HRESULT __stdcall RadioGroupSelection(
		[out, retval]long* RHS);
	[id(0x000008fe), propput, helpcontext(0x000108fe)]
	HRESULT __stdcall RadioGroupSelection(
		[in]long RHS);
	[id(0x000008ff), propget, helpcontext(0x000108ff)]
	HRESULT __stdcall ActiveXControl(
		[out, retval]IDispatch** RHS);
};
'!
!ExcelISmartTagAction categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelISmartTagAction methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

activeXControl
	"Answer the <IDispatch> value of the 'ActiveXControl' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_ActiveXControl: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

checkboxState
	"Answer the <varbool> value of the 'CheckboxState' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_CheckboxState: answer.
	^answer asObject
!

checkboxState: rhs
	"Set the 'CheckboxState' property of the receiver to the <varbool> value of the argument."

	self put_CheckboxState: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

execute
	"Invoke the Execute() method of the COM object."

	^self Execute
!

Execute
	"Private - Invoke the Execute() method of the COM object.

		HRESULT __stdcall Execute();"

	<virtual stdcall: hresult 12>
	^self invalidCall!

expandHelp
	"Answer the <varbool> value of the 'ExpandHelp' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ExpandHelp: answer.
	^answer asObject
!

expandHelp: rhs
	"Set the 'ExpandHelp' property of the receiver to the <varbool> value of the argument."

	self put_ExpandHelp: rhs
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_ActiveXControl: rhs
	"Private - Get the value of the 'ActiveXControl' property of the receiver.

		HRESULT __stdcall ActiveXControl(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 26 IDispatch**>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_CheckboxState: rhs
	"Private - Get the value of the 'CheckboxState' property of the receiver.

		HRESULT __stdcall CheckboxState(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_ExpandHelp: rhs
	"Private - Get the value of the 'ExpandHelp' property of the receiver.

		HRESULT __stdcall ExpandHelp(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_ListSelection: rhs
	"Private - Get the value of the 'ListSelection' property of the receiver.

		HRESULT __stdcall ListSelection(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 22 sdword*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PresentInPane: rhs
	"Private - Get the value of the 'PresentInPane' property of the receiver.

		HRESULT __stdcall PresentInPane(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_RadioGroupSelection: rhs
	"Private - Get the value of the 'RadioGroupSelection' property of the receiver.

		HRESULT __stdcall RadioGroupSelection(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_TextboxText: rhs
	"Private - Get the value of the 'TextboxText' property of the receiver.

		HRESULT __stdcall TextboxText(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlSmartTagControlType* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

listSelection
	"Answer the <sdword> value of the 'ListSelection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ListSelection: answer.
	^answer asObject
!

listSelection: rhs
	"Set the 'ListSelection' property of the receiver to the <sdword> value of the argument."

	self put_ListSelection: rhs
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

presentInPane
	"Answer the <varbool> value of the 'PresentInPane' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PresentInPane: answer.
	^answer asObject
!

put_CheckboxState: rhs
	"Private - Set the value of the 'CheckboxState' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CheckboxState(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

put_ExpandHelp: rhs
	"Private - Set the value of the 'ExpandHelp' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ExpandHelp(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

put_ListSelection: rhs
	"Private - Set the value of the 'ListSelection' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ListSelection(
			[in]long RHS);"

	<virtual stdcall: hresult 23 sdword>
	^self invalidCall!

put_RadioGroupSelection: rhs
	"Private - Set the value of the 'RadioGroupSelection' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall RadioGroupSelection(
			[in]long RHS);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

put_TextboxText: rhs
	"Private - Set the value of the 'TextboxText' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall TextboxText(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 21 bstr>
	^self invalidCall!

radioGroupSelection
	"Answer the <sdword> value of the 'RadioGroupSelection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_RadioGroupSelection: answer.
	^answer asObject
!

radioGroupSelection: rhs
	"Set the 'RadioGroupSelection' property of the receiver to the <sdword> value of the argument."

	self put_RadioGroupSelection: rhs
!

textboxText
	"Answer the <bstr> value of the 'TextboxText' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_TextboxText: answer.
	^answer asObject
!

textboxText: rhs
	"Set the 'TextboxText' property of the receiver to the <bstr> value of the argument."

	self put_TextboxText: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelISmartTagAction categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #activeXControl!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #application!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #checkboxState!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #checkboxState:!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #execute!**auto generated**!methods!public! !
!ExcelISmartTagAction categoriesFor: #Execute!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #expandHelp!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #expandHelp:!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #get__Default:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_ActiveXControl:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_CheckboxState:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_ExpandHelp:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_ListSelection:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_PresentInPane:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_RadioGroupSelection:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_TextboxText:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #get_Type:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #listSelection!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #listSelection:!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #name!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #presentInPane!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #put_CheckboxState:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #put_ExpandHelp:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #put_ListSelection:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #put_RadioGroupSelection:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #put_TextboxText:!**auto generated**!COM Interfaces-ISmartTagAction!private! !
!ExcelISmartTagAction categoriesFor: #radioGroupSelection!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #radioGroupSelection:!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #textboxText!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #textboxText:!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #type!**auto generated**!properties!public! !
!ExcelISmartTagAction categoriesFor: #value!**auto generated**!properties!public! !

!ExcelISmartTagAction class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ISmartTagAction'
		ExcelISmartTagAction defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #Execute;
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #get_PresentInPane:
			argumentTypes: 'varbool*';
		defineFunction: #get_ExpandHelp:
			argumentTypes: 'varbool*';
		defineFunction: #put_ExpandHelp:
			argumentTypes: 'varbool';
		defineFunction: #get_CheckboxState:
			argumentTypes: 'varbool*';
		defineFunction: #put_CheckboxState:
			argumentTypes: 'varbool';
		defineFunction: #get_TextboxText:
			argumentTypes: 'bstr*';
		defineFunction: #put_TextboxText:
			argumentTypes: 'bstr';
		defineFunction: #get_ListSelection:
			argumentTypes: 'sdword*';
		defineFunction: #put_ListSelection:
			argumentTypes: 'sdword';
		defineFunction: #get_RadioGroupSelection:
			argumentTypes: 'sdword*';
		defineFunction: #put_RadioGroupSelection:
			argumentTypes: 'sdword';
		defineFunction: #get_ActiveXControl:
			argumentTypes: 'IDispatch**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelISmartTagAction initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelISmartTagAction class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelISmartTagAction class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

