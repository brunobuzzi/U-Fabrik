"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIMailer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIMailer guid: (IID fromString: '{000208D1-0001-0000-C000-000000000046}')!
ExcelIMailer comment: '<ExcelIMailer> is a wrapper class for the COM interface ''Excel.IMailer'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208D1-0001-0000-C000-000000000046), 
	helpcontext(0x00020090), 
	hidden
]
interface IMailer : IDispatch
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
	[id(0x000003d7), propget, helpcontext(0x000103d7)]
	HRESULT __stdcall BCCRecipients(
		[out, retval]VARIANT* RHS);
	[id(0x000003d7), propput, helpcontext(0x000103d7)]
	HRESULT __stdcall BCCRecipients(
		[in]VARIANT RHS);
	[id(0x000003d6), propget, helpcontext(0x000103d6)]
	HRESULT __stdcall CCRecipients(
		[out, retval]VARIANT* RHS);
	[id(0x000003d6), propput, helpcontext(0x000103d6)]
	HRESULT __stdcall CCRecipients(
		[in]VARIANT RHS);
	[id(0x000003d8), propget, helpcontext(0x000103d8)]
	HRESULT __stdcall Enclosures(
		[out, retval]VARIANT* RHS);
	[id(0x000003d8), propput, helpcontext(0x000103d8)]
	HRESULT __stdcall Enclosures(
		[in]VARIANT RHS);
	[id(0x000003da), propget, helpcontext(0x000103da)]
	HRESULT __stdcall Received(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003db), propget, helpcontext(0x000103db)]
	HRESULT __stdcall SendDateTime(
		[out, retval]DATE* RHS);
	[id(0x000003dc), propget, helpcontext(0x000103dc)]
	HRESULT __stdcall Sender(
		[out, retval]BSTR* RHS);
	[id(0x000003b9), propget, helpcontext(0x000103b9)]
	HRESULT __stdcall Subject(
		[out, retval]BSTR* RHS);
	[id(0x000003b9), propput, helpcontext(0x000103b9)]
	HRESULT __stdcall Subject(
		[in]BSTR RHS);
	[id(0x000003d5), propget, helpcontext(0x000103d5)]
	HRESULT __stdcall ToRecipients(
		[out, retval]VARIANT* RHS);
	[id(0x000003d5), propput, helpcontext(0x000103d5)]
	HRESULT __stdcall ToRecipients(
		[in]VARIANT RHS);
	[id(0x000003ce), propget, helpcontext(0x000103ce)]
	HRESULT __stdcall WhichAddress(
		[out, retval]VARIANT* RHS);
	[id(0x000003ce), propput, helpcontext(0x000103ce)]
	HRESULT __stdcall WhichAddress(
		[in]VARIANT RHS);
};
'!
!ExcelIMailer categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIMailer methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

bccRecipients
	"Answer the <variant> value of the 'BCCRecipients' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_BCCRecipients: answer.
	^answer asObject
!

bccRecipients: rhs
	"Set the 'BCCRecipients' property of the receiver to the <variant> value of the argument."

	self put_BCCRecipients: rhs asVariant
!

ccRecipients
	"Answer the <variant> value of the 'CCRecipients' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_CCRecipients: answer.
	^answer asObject
!

ccRecipients: rhs
	"Set the 'CCRecipients' property of the receiver to the <variant> value of the argument."

	self put_CCRecipients: rhs asVariant
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

enclosures
	"Answer the <variant> value of the 'Enclosures' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Enclosures: answer.
	^answer asObject
!

enclosures: rhs
	"Set the 'Enclosures' property of the receiver to the <variant> value of the argument."

	self put_Enclosures: rhs asVariant
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BCCRecipients: rhs
	"Private - Get the value of the 'BCCRecipients' property of the receiver.

		HRESULT __stdcall BCCRecipients(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant*>
	^self invalidCall!

get_CCRecipients: rhs
	"Private - Get the value of the 'CCRecipients' property of the receiver.

		HRESULT __stdcall CCRecipients(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Enclosures: rhs
	"Private - Get the value of the 'Enclosures' property of the receiver.

		HRESULT __stdcall Enclosures(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Received: rhs
	"Private - Get the value of the 'Received' property of the receiver.

		HRESULT __stdcall Received(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_SendDateTime: rhs
	"Private - Get the value of the 'SendDateTime' property of the receiver.

		HRESULT __stdcall SendDateTime(
			[out, retval]DATE* RHS);"

	<virtual stdcall: hresult 18 date*>
	^self invalidCall!

get_Sender: rhs
	"Private - Get the value of the 'Sender' property of the receiver.

		HRESULT __stdcall Sender(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 19 bstr*>
	^self invalidCall!

get_Subject: rhs
	"Private - Get the value of the 'Subject' property of the receiver.

		HRESULT __stdcall Subject(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr*>
	^self invalidCall!

get_ToRecipients: rhs
	"Private - Get the value of the 'ToRecipients' property of the receiver.

		HRESULT __stdcall ToRecipients(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 22 variant*>
	^self invalidCall!

get_WhichAddress: rhs
	"Private - Get the value of the 'WhichAddress' property of the receiver.

		HRESULT __stdcall WhichAddress(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 24 variant*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_BCCRecipients: rhs
	"Private - Set the value of the 'BCCRecipients' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall BCCRecipients(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 12 variant>
	^self invalidCall!

put_CCRecipients: rhs
	"Private - Set the value of the 'CCRecipients' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall CCRecipients(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 14 variant>
	^self invalidCall!

put_Enclosures: rhs
	"Private - Set the value of the 'Enclosures' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Enclosures(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 16 variant>
	^self invalidCall!

put_Subject: rhs
	"Private - Set the value of the 'Subject' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Subject(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 21 bstr>
	^self invalidCall!

put_ToRecipients: rhs
	"Private - Set the value of the 'ToRecipients' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall ToRecipients(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 23 variant>
	^self invalidCall!

put_WhichAddress: rhs
	"Private - Set the value of the 'WhichAddress' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall WhichAddress(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 25 variant>
	^self invalidCall!

received
	"Answer the <varbool> value of the 'Received' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Received: answer.
	^answer asObject
!

sendDateTime
	"Answer the <date> value of the 'SendDateTime' property of the receiver."

	| answer |
	answer := (DATE new).
	self get_SendDateTime: answer.
	^answer asObject
!

sender
	"Answer the <bstr> value of the 'Sender' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Sender: answer.
	^answer asObject
!

subject
	"Answer the <bstr> value of the 'Subject' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Subject: answer.
	^answer asObject
!

subject: rhs
	"Set the 'Subject' property of the receiver to the <bstr> value of the argument."

	self put_Subject: rhs
!

toRecipients
	"Answer the <variant> value of the 'ToRecipients' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_ToRecipients: answer.
	^answer asObject
!

toRecipients: rhs
	"Set the 'ToRecipients' property of the receiver to the <variant> value of the argument."

	self put_ToRecipients: rhs asVariant
!

whichAddress
	"Answer the <variant> value of the 'WhichAddress' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_WhichAddress: answer.
	^answer asObject
!

whichAddress: rhs
	"Set the 'WhichAddress' property of the receiver to the <variant> value of the argument."

	self put_WhichAddress: rhs asVariant
! !
!ExcelIMailer categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #bccRecipients!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #bccRecipients:!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #ccRecipients!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #ccRecipients:!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #enclosures!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #enclosures:!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_BCCRecipients:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_CCRecipients:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_Enclosures:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_Received:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_SendDateTime:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_Sender:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_Subject:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_ToRecipients:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #get_WhichAddress:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #put_BCCRecipients:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #put_CCRecipients:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #put_Enclosures:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #put_Subject:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #put_ToRecipients:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #put_WhichAddress:!**auto generated**!COM Interfaces-IMailer!private! !
!ExcelIMailer categoriesFor: #received!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #sendDateTime!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #sender!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #subject!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #subject:!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #toRecipients!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #toRecipients:!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #whichAddress!**auto generated**!properties!public! !
!ExcelIMailer categoriesFor: #whichAddress:!**auto generated**!properties!public! !

!ExcelIMailer class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IMailer'
		ExcelIMailer defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BCCRecipients:
			argumentTypes: 'variant*';
		defineFunction: #put_BCCRecipients:
			argumentTypes: 'variant';
		defineFunction: #get_CCRecipients:
			argumentTypes: 'variant*';
		defineFunction: #put_CCRecipients:
			argumentTypes: 'variant';
		defineFunction: #get_Enclosures:
			argumentTypes: 'variant*';
		defineFunction: #put_Enclosures:
			argumentTypes: 'variant';
		defineFunction: #get_Received:
			argumentTypes: 'varbool*';
		defineFunction: #get_SendDateTime:
			argumentTypes: 'date*';
		defineFunction: #get_Sender:
			argumentTypes: 'bstr*';
		defineFunction: #get_Subject:
			argumentTypes: 'bstr*';
		defineFunction: #put_Subject:
			argumentTypes: 'bstr';
		defineFunction: #get_ToRecipients:
			argumentTypes: 'variant*';
		defineFunction: #put_ToRecipients:
			argumentTypes: 'variant';
		defineFunction: #get_WhichAddress:
			argumentTypes: 'variant*';
		defineFunction: #put_WhichAddress:
			argumentTypes: 'variant'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIMailer initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIMailer class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIMailer class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

