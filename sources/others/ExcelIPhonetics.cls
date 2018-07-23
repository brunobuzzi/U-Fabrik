"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPhonetics
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPhonetics guid: (IID fromString: '{00024447-0001-0000-C000-000000000046}')!
ExcelIPhonetics comment: '<ExcelIPhonetics> is a wrapper class for the COM interface ''Excel.IPhonetics'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024447-0001-0000-C000-000000000046), 
	helpcontext(0x000200dd), 
	hidden
]
interface IPhonetics : IDispatch
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
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x00000260), propget, helpcontext(0x00010260)]
	HRESULT __stdcall Start(
		[out, retval]long* RHS);
	[id(0x00000261), propget, helpcontext(0x00010261)]
	HRESULT __stdcall Length(
		[out, retval]long* RHS);
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
	[id(0x000000aa), propget, helpcontext(0x000100aa)]
	HRESULT __stdcall Item(
		[in]long Index,
		[out, retval]IDispatch** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000000b5), helpcontext(0x000100b5)]
	HRESULT __stdcall Add(
		[in]long Start,
		[in]long Length,
		[in]BSTR Text);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[in]long Index,
		[out, retval]IDispatch** RHS);
	[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
	HRESULT __stdcall _NewEnum(
		[out, retval]IUnknown** RHS);
};
'!
!ExcelIPhonetics categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPhonetics methodsFor!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get__Default: index
		rhs: answer.
	^answer asObject
!

_newEnum
	"Answer the <IUnknown> value of the '_NewEnum' property of the receiver."

	| answer |
	answer := IUnknown newPointer.
	self get__NewEnum: answer.
	^answer asObject
!

add: start length: length text: text
	"Invoke the Add() method of the COM object."

	^self
		Add: start
		length: length
		text: text
!

Add: start length: length text: text
	"Private - Invoke the Add() method of the COM object.

		HRESULT __stdcall Add(
			[in]long Start,
			[in]long Length,
			[in]BSTR Text);"

	<virtual stdcall: hresult 23 sdword sdword bstr>
	^self invalidCall!

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

count
	"Answer the <sdword> value of the 'Count' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Count: answer.
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

	<virtual stdcall: hresult 22>
	^self invalidCall!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

get__Default: index rhs: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[in]long Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 26 sdword IDispatch**>
	^self invalidCall!

get__NewEnum: rhs
	"Private - Get the value of the '_NewEnum' property of the receiver.

		HRESULT __stdcall _NewEnum(
			[out, retval]IUnknown** RHS);"

	<virtual stdcall: hresult 27 IUnknown**>
	^self invalidCall!

get_Alignment: rhs
	"Private - Get the value of the 'Alignment' property of the receiver.

		HRESULT __stdcall Alignment(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
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

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
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

	<virtual stdcall: hresult 20 ExcelFont**>
	^self invalidCall!

get_Item: index rhs: rhs
	"Private - Get the value of the 'Item' property of the receiver.

		HRESULT __stdcall Item(
			[in]long Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 21 sdword IDispatch**>
	^self invalidCall!

get_Length: rhs
	"Private - Get the value of the 'Length' property of the receiver.

		HRESULT __stdcall Length(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Start: rhs
	"Private - Get the value of the 'Start' property of the receiver.

		HRESULT __stdcall Start(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 24 bstr*>
	^self invalidCall!

get_Visible: rhs
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> value of the 'Item' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self
		get_Item: index
		rhs: answer.
	^answer asObject
!

length
	"Answer the <sdword> value of the 'Length' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Length: answer.
	^answer asObject
!

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

	<virtual stdcall: hresult 19 sdword>
	^self invalidCall!

put_CharacterType: rhs
	"Private - Set the value of the 'CharacterType' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall CharacterType(
			[in]long RHS);"

	<virtual stdcall: hresult 17 sdword>
	^self invalidCall!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 25 bstr>
	^self invalidCall!

put_Visible: rhs
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Visible(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 15 varbool>
	^self invalidCall!

start
	"Answer the <sdword> value of the 'Start' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Start: answer.
	^answer asObject
!

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
!ExcelIPhonetics categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #_newEnum!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #add:length:text:!**auto generated**!methods!public! !
!ExcelIPhonetics categoriesFor: #Add:length:text:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #alignment:!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #alignment_!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #characterType!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #characterType:!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #count!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIPhonetics categoriesFor: #Delete!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #get__Default:rhs:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get__NewEnum:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Alignment:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_CharacterType:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Count:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Item:rhs:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Length:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Start:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelIPhonetics categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #length!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #put_Alignment:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #put_CharacterType:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-IPhonetics!private! !
!ExcelIPhonetics categoriesFor: #start!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #text:!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelIPhonetics categoriesFor: #visible:!**auto generated**!properties!public! !

!ExcelIPhonetics class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPhonetics'
		ExcelIPhonetics defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #get_Start:
			argumentTypes: 'sdword*';
		defineFunction: #get_Length:
			argumentTypes: 'sdword*';
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
		defineFunction: #get_Item:rhs:
			argumentTypes: 'sdword IDispatch**';
		defineFunction: #Delete;
		defineFunction: #Add:length:text:
			argumentTypes: 'sdword sdword bstr';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #get__Default:rhs:
			argumentTypes: 'sdword IDispatch**';
		defineFunction: #get__NewEnum:
			argumentTypes: 'IUnknown**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPhonetics initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPhonetics class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPhonetics class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

