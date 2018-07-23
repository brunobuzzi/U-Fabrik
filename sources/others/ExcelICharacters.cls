"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelICharacters
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelICharacters guid: (IID fromString: '{00020878-0001-0000-C000-000000000046}')!
ExcelICharacters comment: '<ExcelICharacters> is a wrapper class for the COM interface ''Excel.ICharacters'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020878-0001-0000-C000-000000000046), 
	helpcontext(0x00020038), 
	hidden
]
interface ICharacters : IDispatch
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
	[id(0x0000008b), propget, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[out, retval]BSTR* RHS);
	[id(0x0000008b), propput, helpcontext(0x0001008b)]
	HRESULT __stdcall Caption(
		[in]BSTR RHS);
	[id(0x00000076), propget, helpcontext(0x00010076)]
	HRESULT __stdcall Count(
		[out, retval]long* RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x000000fc), helpcontext(0x000100fc)]
	HRESULT __stdcall Insert(
		[in]BSTR String,
		[out, retval]VARIANT* RHS);
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
	[id(0x000005f2), propget, helpcontext(0x000105f2)]
	HRESULT __stdcall PhoneticCharacters(
		[out, retval]BSTR* RHS);
	[id(0x000005f2), propput, helpcontext(0x000105f2)]
	HRESULT __stdcall PhoneticCharacters(
		[in]BSTR RHS);
};
'!
!ExcelICharacters categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelICharacters methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
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
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Delete: answer.
	^answer asObject
!

Delete: rhs
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Caption: rhs
	"Private - Get the value of the 'Caption' property of the receiver.

		HRESULT __stdcall Caption(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Count: rhs
	"Private - Get the value of the 'Count' property of the receiver.

		HRESULT __stdcall Count(
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

	<virtual stdcall: hresult 15 ExcelFont**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PhoneticCharacters: rhs
	"Private - Get the value of the 'PhoneticCharacters' property of the receiver.

		HRESULT __stdcall PhoneticCharacters(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 19 bstr*>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 17 bstr*>
	^self invalidCall!

insert: string
	"Answer the <VARIANT> result of invoking the Insert() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		Insert: string
		rhs: answer.
	^answer asObject
!

Insert: string rhs: rhs
	"Private - Invoke the Insert() method of the COM object.

		HRESULT __stdcall Insert(
			[in]BSTR String,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 bstr variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

phoneticCharacters
	"Answer the <bstr> value of the 'PhoneticCharacters' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PhoneticCharacters: answer.
	^answer asObject
!

phoneticCharacters: rhs
	"Set the 'PhoneticCharacters' property of the receiver to the <bstr> value of the argument."

	self put_PhoneticCharacters: rhs
!

put_Caption: rhs
	"Private - Set the value of the 'Caption' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Caption(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 12 bstr>
	^self invalidCall!

put_PhoneticCharacters: rhs
	"Private - Set the value of the 'PhoneticCharacters' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall PhoneticCharacters(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 20 bstr>
	^self invalidCall!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 18 bstr>
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
! !
!ExcelICharacters categoriesFor: #application!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #count!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelICharacters categoriesFor: #Delete:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #font!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #get_Caption:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #get_Count:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #get_Font:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #get_PhoneticCharacters:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #get_Text:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #insert:!**auto generated**!methods!public! !
!ExcelICharacters categoriesFor: #Insert:rhs:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #phoneticCharacters!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #phoneticCharacters:!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #put_Caption:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #put_PhoneticCharacters:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #put_Text:!**auto generated**!COM Interfaces-ICharacters!private! !
!ExcelICharacters categoriesFor: #text!**auto generated**!properties!public! !
!ExcelICharacters categoriesFor: #text:!**auto generated**!properties!public! !

!ExcelICharacters class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ICharacters'
		ExcelICharacters defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Caption:
			argumentTypes: 'bstr*';
		defineFunction: #put_Caption:
			argumentTypes: 'bstr';
		defineFunction: #get_Count:
			argumentTypes: 'sdword*';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #Insert:rhs:
			argumentTypes: 'bstr variant*';
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #get_PhoneticCharacters:
			argumentTypes: 'bstr*';
		defineFunction: #put_PhoneticCharacters:
			argumentTypes: 'bstr'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelICharacters initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelICharacters class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelICharacters class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

