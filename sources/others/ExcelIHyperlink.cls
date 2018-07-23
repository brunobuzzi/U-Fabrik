"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIHyperlink
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIHyperlink guid: (IID fromString: '{00024431-0001-0000-C000-000000000046}')!
ExcelIHyperlink comment: '<ExcelIHyperlink> is a wrapper class for the COM interface ''Excel.IHyperlink'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024431-0001-0000-C000-000000000046), 
	helpcontext(0x000200c7), 
	hidden
]
interface IHyperlink : IDispatch
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
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[out, retval]Range** RHS);
	[id(0x0000062e), propget, helpcontext(0x0001062e)]
	HRESULT __stdcall Shape(
		[out, retval]Shape** RHS);
	[id(0x000005bf), propget, helpcontext(0x000105bf)]
	HRESULT __stdcall SubAddress(
		[out, retval]BSTR* RHS);
	[id(0x000005bf), propput, helpcontext(0x000105bf)]
	HRESULT __stdcall SubAddress(
		[in]BSTR RHS);
	[id(0x000000ec), propget, helpcontext(0x000100ec)]
	HRESULT __stdcall Address(
		[out, retval]BSTR* RHS);
	[id(0x000000ec), propput, helpcontext(0x000100ec)]
	HRESULT __stdcall Address(
		[in]BSTR RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]long* RHS);
	[id(0x000005c4), helpcontext(0x000105c4)]
	HRESULT __stdcall AddToFavorites();
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x00000650), helpcontext(0x00010650)]
	HRESULT __stdcall Follow(
		[in, optional]VARIANT NewWindow,
		[in, optional]VARIANT AddHistory,
		[in, optional]VARIANT ExtraInfo,
		[in, optional]VARIANT Method,
		[in, optional]VARIANT HeaderInfo);
	[id(0x0000075b), propget, helpcontext(0x0001075b)]
	HRESULT __stdcall EmailSubject(
		[out, retval]BSTR* RHS);
	[id(0x0000075b), propput, helpcontext(0x0001075b)]
	HRESULT __stdcall EmailSubject(
		[in]BSTR RHS);
	[id(0x00000759), propget, helpcontext(0x00010759)]
	HRESULT __stdcall ScreenTip(
		[out, retval]BSTR* RHS);
	[id(0x00000759), propput, helpcontext(0x00010759)]
	HRESULT __stdcall ScreenTip(
		[in]BSTR RHS);
	[id(0x0000075a), propget, helpcontext(0x0001075a)]
	HRESULT __stdcall TextToDisplay(
		[out, retval]BSTR* RHS);
	[id(0x0000075a), propput, helpcontext(0x0001075a)]
	HRESULT __stdcall TextToDisplay(
		[in]BSTR RHS);
	[id(0x0000075c), helpcontext(0x0001075c)]
	HRESULT __stdcall CreateNewDocument(
		[in]BSTR Filename,
		[in]VARIANT_BOOL EditNow,
		[in]VARIANT_BOOL Overwrite);
};
'!
!ExcelIHyperlink categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIHyperlink methodsFor!

address
	"Answer the <bstr> value of the 'Address' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Address: answer.
	^answer asObject
!

address: rhs
	"Set the 'Address' property of the receiver to the <bstr> value of the argument."

	self put_Address: rhs
!

addToFavorites
	"Invoke the AddToFavorites() method of the COM object."

	^self AddToFavorites
!

AddToFavorites
	"Private - Invoke the AddToFavorites() method of the COM object.

		HRESULT __stdcall AddToFavorites();"

	<virtual stdcall: hresult 19>
	^self invalidCall!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

createNewDocument: filename editNow: editNow overwrite: overwrite
	"Invoke the CreateNewDocument() method of the COM object."

	^self
		CreateNewDocument: filename
		editNow: editNow
		overwrite: overwrite
!

CreateNewDocument: filename editNow: editNow overwrite: overwrite
	"Private - Invoke the CreateNewDocument() method of the COM object.

		HRESULT __stdcall CreateNewDocument(
			[in]BSTR Filename,
			[in]VARIANT_BOOL EditNow,
			[in]VARIANT_BOOL Overwrite);"

	<virtual stdcall: hresult 28 bstr varbool varbool>
	^self invalidCall!

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

	<virtual stdcall: hresult 20>
	^self invalidCall!

emailSubject
	"Answer the <bstr> value of the 'EmailSubject' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_EmailSubject: answer.
	^answer asObject
!

emailSubject: rhs
	"Set the 'EmailSubject' property of the receiver to the <bstr> value of the argument."

	self put_EmailSubject: rhs
!

follow
	"Invoke the Follow() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 follow: VARIANT unspecified
		 addHistory: VARIANT unspecified
		 extraInfo: VARIANT unspecified
		 method: VARIANT unspecified
		 headerInfo: VARIANT unspecified!

follow: newWindow addHistory: addHistory extraInfo: extraInfo method: method headerInfo: headerInfo
	"Invoke the Follow() method of the COM object."

	^self
		Follow: newWindow asVariant
		addHistory: addHistory asVariant
		extraInfo: extraInfo asVariant
		method: method asVariant
		headerInfo: headerInfo asVariant
!

Follow: newWindow addHistory: addHistory extraInfo: extraInfo method: method headerInfo: headerInfo
	"Private - Invoke the Follow() method of the COM object.

		HRESULT __stdcall Follow(
			[in, optional]VARIANT NewWindow,
			[in, optional]VARIANT AddHistory,
			[in, optional]VARIANT ExtraInfo,
			[in, optional]VARIANT Method,
			[in, optional]VARIANT HeaderInfo);"

	<virtual stdcall: hresult 21 variant variant variant variant variant>
	^self invalidCall!

get_Address: rhs
	"Private - Get the value of the 'Address' property of the receiver.

		HRESULT __stdcall Address(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 16 bstr*>
	^self invalidCall!

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

get_EmailSubject: rhs
	"Private - Get the value of the 'EmailSubject' property of the receiver.

		HRESULT __stdcall EmailSubject(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 22 bstr*>
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

get_Range: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 12 ExcelRange**>
	^self invalidCall!

get_ScreenTip: rhs
	"Private - Get the value of the 'ScreenTip' property of the receiver.

		HRESULT __stdcall ScreenTip(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 24 bstr*>
	^self invalidCall!

get_Shape: rhs
	"Private - Get the value of the 'Shape' property of the receiver.

		HRESULT __stdcall Shape(
			[out, retval]Shape** RHS);"

	<virtual stdcall: hresult 13 ExcelShape**>
	^self invalidCall!

get_SubAddress: rhs
	"Private - Get the value of the 'SubAddress' property of the receiver.

		HRESULT __stdcall SubAddress(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_TextToDisplay: rhs
	"Private - Get the value of the 'TextToDisplay' property of the receiver.

		HRESULT __stdcall TextToDisplay(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 26 bstr*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

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

put_Address: rhs
	"Private - Set the value of the 'Address' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Address(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 17 bstr>
	^self invalidCall!

put_EmailSubject: rhs
	"Private - Set the value of the 'EmailSubject' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall EmailSubject(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 23 bstr>
	^self invalidCall!

put_ScreenTip: rhs
	"Private - Set the value of the 'ScreenTip' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall ScreenTip(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 25 bstr>
	^self invalidCall!

put_SubAddress: rhs
	"Private - Set the value of the 'SubAddress' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall SubAddress(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 15 bstr>
	^self invalidCall!

put_TextToDisplay: rhs
	"Private - Set the value of the 'TextToDisplay' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall TextToDisplay(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 27 bstr>
	^self invalidCall!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Range: answer.
	^answer asObject
!

screenTip
	"Answer the <bstr> value of the 'ScreenTip' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_ScreenTip: answer.
	^answer asObject
!

screenTip: rhs
	"Set the 'ScreenTip' property of the receiver to the <bstr> value of the argument."

	self put_ScreenTip: rhs
!

shape
	"Answer the <ExcelShape> value of the 'Shape' property of the receiver."

	| answer |
	answer := ExcelShape newPointer.
	self get_Shape: answer.
	^answer asObject
!

subAddress
	"Answer the <bstr> value of the 'SubAddress' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SubAddress: answer.
	^answer asObject
!

subAddress: rhs
	"Set the 'SubAddress' property of the receiver to the <bstr> value of the argument."

	self put_SubAddress: rhs
!

textToDisplay
	"Answer the <bstr> value of the 'TextToDisplay' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_TextToDisplay: answer.
	^answer asObject
!

textToDisplay: rhs
	"Set the 'TextToDisplay' property of the receiver to the <bstr> value of the argument."

	self put_TextToDisplay: rhs
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
! !
!ExcelIHyperlink categoriesFor: #address!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #address:!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #addToFavorites!**auto generated**!methods!public! !
!ExcelIHyperlink categoriesFor: #AddToFavorites!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #createNewDocument:editNow:overwrite:!**auto generated**!methods!public! !
!ExcelIHyperlink categoriesFor: #CreateNewDocument:editNow:overwrite:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIHyperlink categoriesFor: #Delete!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #emailSubject!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #emailSubject:!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #follow!**auto generated**!methods!public! !
!ExcelIHyperlink categoriesFor: #follow:addHistory:extraInfo:method:headerInfo:!**auto generated**!methods!public! !
!ExcelIHyperlink categoriesFor: #Follow:addHistory:extraInfo:method:headerInfo:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_Address:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_EmailSubject:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_Range:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_ScreenTip:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_Shape:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_SubAddress:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_TextToDisplay:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #get_Type:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #put_Address:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #put_EmailSubject:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #put_ScreenTip:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #put_SubAddress:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #put_TextToDisplay:!**auto generated**!COM Interfaces-IHyperlink!private! !
!ExcelIHyperlink categoriesFor: #range!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #screenTip!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #screenTip:!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #shape!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #subAddress!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #subAddress:!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #textToDisplay!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #textToDisplay:!**auto generated**!properties!public! !
!ExcelIHyperlink categoriesFor: #type!**auto generated**!properties!public! !

!ExcelIHyperlink class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IHyperlink'
		ExcelIHyperlink defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Range:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Shape:
			argumentTypes: 'ExcelShape**';
		defineFunction: #get_SubAddress:
			argumentTypes: 'bstr*';
		defineFunction: #put_SubAddress:
			argumentTypes: 'bstr';
		defineFunction: #get_Address:
			argumentTypes: 'bstr*';
		defineFunction: #put_Address:
			argumentTypes: 'bstr';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #AddToFavorites;
		defineFunction: #Delete;
		defineFunction: #Follow:addHistory:extraInfo:method:headerInfo:
			argumentTypes: 'variant variant variant variant variant';
		defineFunction: #get_EmailSubject:
			argumentTypes: 'bstr*';
		defineFunction: #put_EmailSubject:
			argumentTypes: 'bstr';
		defineFunction: #get_ScreenTip:
			argumentTypes: 'bstr*';
		defineFunction: #put_ScreenTip:
			argumentTypes: 'bstr';
		defineFunction: #get_TextToDisplay:
			argumentTypes: 'bstr*';
		defineFunction: #put_TextToDisplay:
			argumentTypes: 'bstr';
		defineFunction: #CreateNewDocument:editNow:overwrite:
			argumentTypes: 'bstr varbool varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIHyperlink initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIHyperlink class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIHyperlink class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

