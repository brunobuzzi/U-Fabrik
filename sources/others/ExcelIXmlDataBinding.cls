"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIXmlDataBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIXmlDataBinding guid: (IID fromString: '{00024478-0001-0000-C000-000000000046}')!
ExcelIXmlDataBinding comment: '<ExcelIXmlDataBinding> is a wrapper class for the COM interface ''Excel.IXmlDataBinding'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024478-0001-0000-C000-000000000046), 
	helpcontext(0x0002010e), 
	hidden
]
interface IXmlDataBinding : IDispatch
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
	[id(0000000000), propget, helpcontext(0x00010000)]
	HRESULT __stdcall _Default(
		[out, retval]BSTR* RHS);
	[id(0x00000589), helpcontext(0x00010589)]
	HRESULT __stdcall Refresh(
		[out, retval]XlXmlImportResult* RHS);
	[id(0x00000919), helpcontext(0x00010919)]
	HRESULT __stdcall LoadSettings(
		[in]BSTR Url);
	[id(0x0000091a), helpcontext(0x0001091a)]
	HRESULT __stdcall ClearSettings();
	[id(0x0000091b), propget, helpcontext(0x0001091b)]
	HRESULT __stdcall SourceUrl(
		[out, retval]BSTR* RHS);
};
'!
!ExcelIXmlDataBinding categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIXmlDataBinding methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver."

	| answer |
	answer := BSTR new.
	self get__Default: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

clearSettings
	"Invoke the ClearSettings() method of the COM object."

	^self ClearSettings
!

ClearSettings
	"Private - Invoke the ClearSettings() method of the COM object.

		HRESULT __stdcall ClearSettings();"

	<virtual stdcall: hresult 14>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

get__Default: rhs
	"Private - Get the value of the '_Default' property of the receiver.

		HRESULT __stdcall _Default(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
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

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_SourceUrl: rhs
	"Private - Get the value of the 'SourceUrl' property of the receiver.

		HRESULT __stdcall SourceUrl(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

loadSettings: url
	"Invoke the LoadSettings() method of the COM object."

	^self LoadSettings: url
!

LoadSettings: url
	"Private - Invoke the LoadSettings() method of the COM object.

		HRESULT __stdcall LoadSettings(
			[in]BSTR Url);"

	<virtual stdcall: hresult 13 bstr>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

refresh
	"Answer the <SDWORD> result of invoking the Refresh() method of the COM object."

	| answer |
	answer := (SDWORD new).
	self Refresh: answer.
	^answer asObject
!

Refresh: rhs
	"Private - Invoke the Refresh() method of the COM object.

		HRESULT __stdcall Refresh(
			[out, retval]XlXmlImportResult* RHS);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

sourceUrl
	"Answer the <bstr> value of the 'SourceUrl' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_SourceUrl: answer.
	^answer asObject
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelIXmlDataBinding categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelIXmlDataBinding categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIXmlDataBinding categoriesFor: #clearSettings!**auto generated**!methods!public! !
!ExcelIXmlDataBinding categoriesFor: #ClearSettings!**auto generated**!COM Interfaces-IXmlDataBinding!private! !
!ExcelIXmlDataBinding categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIXmlDataBinding categoriesFor: #get__Default:!**auto generated**!COM Interfaces-IXmlDataBinding!private! !
!ExcelIXmlDataBinding categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IXmlDataBinding!private! !
!ExcelIXmlDataBinding categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IXmlDataBinding!private! !
!ExcelIXmlDataBinding categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IXmlDataBinding!private! !
!ExcelIXmlDataBinding categoriesFor: #get_SourceUrl:!**auto generated**!COM Interfaces-IXmlDataBinding!private! !
!ExcelIXmlDataBinding categoriesFor: #loadSettings:!**auto generated**!methods!public! !
!ExcelIXmlDataBinding categoriesFor: #LoadSettings:!**auto generated**!COM Interfaces-IXmlDataBinding!private! !
!ExcelIXmlDataBinding categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIXmlDataBinding categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelIXmlDataBinding categoriesFor: #Refresh:!**auto generated**!COM Interfaces-IXmlDataBinding!private! !
!ExcelIXmlDataBinding categoriesFor: #sourceUrl!**auto generated**!properties!public! !
!ExcelIXmlDataBinding categoriesFor: #value!**auto generated**!properties!public! !

!ExcelIXmlDataBinding class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IXmlDataBinding'
		ExcelIXmlDataBinding defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get__Default:
			argumentTypes: 'bstr*';
		defineFunction: #Refresh:
			argumentTypes: 'sdword*';
		defineFunction: #LoadSettings:
			argumentTypes: 'bstr';
		defineFunction: #ClearSettings;
		defineFunction: #get_SourceUrl:
			argumentTypes: 'bstr*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIXmlDataBinding initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIXmlDataBinding class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIXmlDataBinding class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

