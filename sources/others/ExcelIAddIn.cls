"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAddIn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAddIn guid: (IID fromString: '{00020857-0001-0000-C000-000000000046}')!
ExcelIAddIn comment: '<ExcelIAddIn> is a wrapper class for the COM interface ''Excel.IAddIn'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020857-0001-0000-C000-000000000046), 
	helpcontext(0x00020017), 
	hidden
]
interface IAddIn : IDispatch
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
	[id(0x0000023e), hidden, propget, helpcontext(0x0001023e)]
	HRESULT __stdcall Author(
		[out, retval]BSTR* RHS);
	[id(0x0000023f), hidden, propget, helpcontext(0x0001023f)]
	HRESULT __stdcall Comments(
		[out, retval]BSTR* RHS);
	[id(0x00000121), propget, helpcontext(0x00010121)]
	HRESULT __stdcall FullName(
		[out, retval]BSTR* RHS);
	[id(0x00000226), propget, helpcontext(0x00010226)]
	HRESULT __stdcall Installed(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000226), propput, helpcontext(0x00010226)]
	HRESULT __stdcall Installed(
		[in]VARIANT_BOOL RHS);
	[id(0x00000241), hidden, propget, helpcontext(0x00010241)]
	HRESULT __stdcall Keywords(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x00000123), propget, helpcontext(0x00010123)]
	HRESULT __stdcall Path(
		[out, retval]BSTR* RHS);
	[id(0x000003b9), hidden, propget, helpcontext(0x000103b9)]
	HRESULT __stdcall Subject(
		[out, retval]BSTR* RHS);
	[id(0x000000c7), hidden, propget, helpcontext(0x000100c7)]
	HRESULT __stdcall Title(
		[out, retval]BSTR* RHS);
	[id(0x000005f3), propget, helpcontext(0x000105f3)]
	HRESULT __stdcall progID(
		[out, retval]BSTR* RHS);
	[id(0x000007fb), propget, helpcontext(0x000107fb)]
	HRESULT __stdcall CLSID(
		[out, retval]BSTR* RHS);
};
'!
!ExcelIAddIn categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAddIn methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

author
	"Answer the <bstr> value of the 'Author' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Author: answer.
	^answer asObject
!

clsid
	"Answer the <bstr> value of the 'CLSID' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CLSID: answer.
	^answer asObject
!

comments
	"Answer the <bstr> value of the 'Comments' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Comments: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

fullName
	"Answer the <bstr> value of the 'FullName' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_FullName: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Author: rhs
	"Private - Get the value of the 'Author' property of the receiver.

		HRESULT __stdcall Author(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_CLSID: rhs
	"Private - Get the value of the 'CLSID' property of the receiver.

		HRESULT __stdcall CLSID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 22 bstr*>
	^self invalidCall!

get_Comments: rhs
	"Private - Get the value of the 'Comments' property of the receiver.

		HRESULT __stdcall Comments(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 12 bstr*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_FullName: rhs
	"Private - Get the value of the 'FullName' property of the receiver.

		HRESULT __stdcall FullName(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_Installed: rhs
	"Private - Get the value of the 'Installed' property of the receiver.

		HRESULT __stdcall Installed(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

get_Keywords: rhs
	"Private - Get the value of the 'Keywords' property of the receiver.

		HRESULT __stdcall Keywords(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 16 bstr*>
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

get_Path: rhs
	"Private - Get the value of the 'Path' property of the receiver.

		HRESULT __stdcall Path(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 18 bstr*>
	^self invalidCall!

get_progID: rhs
	"Private - Get the value of the 'progID' property of the receiver.

		HRESULT __stdcall progID(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 21 bstr*>
	^self invalidCall!

get_Subject: rhs
	"Private - Get the value of the 'Subject' property of the receiver.

		HRESULT __stdcall Subject(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 19 bstr*>
	^self invalidCall!

get_Title: rhs
	"Private - Get the value of the 'Title' property of the receiver.

		HRESULT __stdcall Title(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 20 bstr*>
	^self invalidCall!

installed
	"Answer the <varbool> value of the 'Installed' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Installed: answer.
	^answer asObject
!

installed: rhs
	"Set the 'Installed' property of the receiver to the <varbool> value of the argument."

	self put_Installed: rhs
!

keywords
	"Answer the <bstr> value of the 'Keywords' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Keywords: answer.
	^answer asObject
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

path
	"Answer the <bstr> value of the 'Path' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Path: answer.
	^answer asObject
!

progID
	"Answer the <bstr> value of the 'progID' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_progID: answer.
	^answer asObject
!

put_Installed: rhs
	"Private - Set the value of the 'Installed' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Installed(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 15 varbool>
	^self invalidCall!

subject
	"Answer the <bstr> value of the 'Subject' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Subject: answer.
	^answer asObject
!

title
	"Answer the <bstr> value of the 'Title' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Title: answer.
	^answer asObject
! !
!ExcelIAddIn categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #author!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #clsid!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #comments!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #fullName!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Author:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_CLSID:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Comments:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_FullName:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Installed:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Keywords:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Path:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_progID:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Subject:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #get_Title:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #installed!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #installed:!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #keywords!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #path!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #progID!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #put_Installed:!**auto generated**!COM Interfaces-IAddIn!private! !
!ExcelIAddIn categoriesFor: #subject!**auto generated**!properties!public! !
!ExcelIAddIn categoriesFor: #title!**auto generated**!properties!public! !

!ExcelIAddIn class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAddIn'
		ExcelIAddIn defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Author:
			argumentTypes: 'bstr*';
		defineFunction: #get_Comments:
			argumentTypes: 'bstr*';
		defineFunction: #get_FullName:
			argumentTypes: 'bstr*';
		defineFunction: #get_Installed:
			argumentTypes: 'varbool*';
		defineFunction: #put_Installed:
			argumentTypes: 'varbool';
		defineFunction: #get_Keywords:
			argumentTypes: 'bstr*';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_Path:
			argumentTypes: 'bstr*';
		defineFunction: #get_Subject:
			argumentTypes: 'bstr*';
		defineFunction: #get_Title:
			argumentTypes: 'bstr*';
		defineFunction: #get_progID:
			argumentTypes: 'bstr*';
		defineFunction: #get_CLSID:
			argumentTypes: 'bstr*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAddIn initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAddIn class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAddIn class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

