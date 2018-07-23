"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPhonetic
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPhonetic guid: (IID fromString: '{00024438-0001-0000-C000-000000000046}')!
ExcelIPhonetic comment: '<ExcelIPhonetic> is a wrapper class for the COM interface ''Excel.IPhonetic'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024438-0001-0000-C000-000000000046), 
	helpcontext(0x000200ce), 
	hidden
]
interface IPhonetic : IDispatch
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
	[id(0x0000022e), propget, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000022e), propput, helpcontext(0x0001022e)]
	HRESULT __stdcall Visible(
		[in]VARIANT_BOOL RHS);
	[id(0x0000068a), propget, helpcontext(0x0001068a)]
	HRESULT __stdcall CharacterType(
		[out, retval]long* RHS);
	[id(0x0000068a), propput, helpcontext(0x0001068a)]
	HRESULT __stdcall CharacterType(
		[in]long RHS);
	[id(0x000001c5), propget, helpcontext(0x000101c5)]
	HRESULT __stdcall Alignment(
		[out, retval]long* RHS);
	[id(0x000001c5), propput, helpcontext(0x000101c5)]
	HRESULT __stdcall Alignment(
		[in]long RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
};
'!
!ExcelIPhonetic categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPhonetic methodsFor!

alignment: rhs
	"Set the 'Alignment' property of the receiver to the <sdword> value of the argument."

	self put_Alignment: rhs
!

alignment_
	"Answer the <sdword> value of the 'Alignment' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Alignment: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

characterType
	"Answer the <sdword> value of the 'CharacterType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_CharacterType: answer.
	^answer asObject
!

characterType: rhs
	"Set the 'CharacterType' property of the receiver to the <sdword> value of the argument."

	self put_CharacterType: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

get_Alignment: rhs
	"Private - Get the value of the 'Alignment' property of the receiver.

		HRESULT __stdcall Alignment(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_CharacterType: rhs
	"Private - Get the value of the 'CharacterType' property of the receiver.

		HRESULT __stdcall CharacterType(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 17 ExcelFont**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 18 bstr*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Alignment: rhs
	"Private - Set the value of the 'Alignment' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Alignment(
			[in]long RHS);"

	<virtual stdcall: hresult 16 sdword>
	^self invalidCall!

put_CharacterType: rhs
	"Private - Set the value of the 'CharacterType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CharacterType(
			[in]long RHS);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 19 bstr>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

text
	"Answer the <bstr> value of the 'Text' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Text: answer.
	^answer asObject
!

text: rhs
	"Set the 'Text' property of the receiver to the <bstr> value of the argument."

	self put_Text: rhs
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
! !
!ExcelIPhonetic categoriesFor: #alignment:!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #alignment_!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #characterType!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #characterType:!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #get_Alignment:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #get_CharacterType:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #put_Alignment:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #put_CharacterType:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IPhonetic!private! !
!ExcelIPhonetic categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIPhonetic categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelIPhonetic class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPhonetic'
		ExcelIPhonetic defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Visible:
			argumentTypes: 'varbool*';
		defineFunction: #put_Visible:
			argumentTypes: 'varbool';
		defineFunction: #get_CharacterType:
			argumentTypes: 'sdword*';
		defineFunction: #put_CharacterType:
			argumentTypes: 'sdword';
		defineFunction: #get_Alignment:
			argumentTypes: 'sdword*';
		defineFunction: #put_Alignment:
			argumentTypes: 'sdword';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPhonetic initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPhonetic class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPhonetic class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

