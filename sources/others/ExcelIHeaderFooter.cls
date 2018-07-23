"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIHeaderFooter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIHeaderFooter guid: (IID fromString: '{000244A1-0001-0000-C000-000000000046}')!
ExcelIHeaderFooter comment: '<ExcelIHeaderFooter> is a wrapper class for the COM interface ''Excel.IHeaderFooter'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244A1-0001-0000-C000-000000000046), 
	helpcontext(0x00020137), 
	hidden
]
interface IHeaderFooter : IDispatch
 {
	[id(0x0000008a), propget, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[out, retval]BSTR* RHS);
	[id(0x0000008a), propput, helpcontext(0x0001008a)]
	HRESULT __stdcall Text(
		[in]BSTR RHS);
	[id(0x000001df), propget, helpcontext(0x000101df)]
	HRESULT __stdcall Picture(
		[out, retval]Graphic** RHS);
};
'!
!ExcelIHeaderFooter categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIHeaderFooter methodsFor!

get_Picture: rhs
	"Private - Get the value of the 'Picture' property of the receiver.

		HRESULT __stdcall Picture(
			[out, retval]Graphic** RHS);"

	<virtual stdcall: hresult 10 ExcelGraphic**>
	^self invalidCall!

get_Text: rhs
	"Private - Get the value of the 'Text' property of the receiver.

		HRESULT __stdcall Text(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 8 bstr*>
	^self invalidCall!

picture
	"Answer the <ExcelGraphic> value of the 'Picture' property of the receiver."

	| answer |
	answer := ExcelGraphic newPointer.
	self get_Picture: answer.
	^answer asObject
!

put_Text: rhs
	"Private - Set the value of the 'Text' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Text(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 9 bstr>
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
!ExcelIHeaderFooter categoriesFor: #get_Picture:!**auto generated**!COM Interfaces-IHeaderFooter!private! !
!ExcelIHeaderFooter categoriesFor: #get_Text:!**auto generated**!COM Interfaces-IHeaderFooter!private! !
!ExcelIHeaderFooter categoriesFor: #picture!**auto generated**!properties!public! !
!ExcelIHeaderFooter categoriesFor: #put_Text:!**auto generated**!COM Interfaces-IHeaderFooter!private! !
!ExcelIHeaderFooter categoriesFor: #text!**auto generated**!properties!public! !
!ExcelIHeaderFooter categoriesFor: #text:!**auto generated**!properties!public! !

!ExcelIHeaderFooter class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IHeaderFooter'
		ExcelIHeaderFooter defineTemplate"

	self
		defineFunction: #get_Text:
			argumentTypes: 'bstr*';
		defineFunction: #put_Text:
			argumentTypes: 'bstr';
		defineFunction: #get_Picture:
			argumentTypes: 'ExcelGraphic**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIHeaderFooter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIHeaderFooter class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIHeaderFooter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

