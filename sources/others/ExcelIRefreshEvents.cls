"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIRefreshEvents
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIRefreshEvents guid: (IID fromString: '{0002441B-0001-0000-C000-000000000046}')!
ExcelIRefreshEvents comment: '<ExcelIRefreshEvents> is a wrapper class for the COM interface ''Excel.IRefreshEvents'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002441B-0001-0000-C000-000000000046), 
	helpcontext(0x000200b1), 
	hidden
]
interface IRefreshEvents : IDispatch
 {
	[id(0x0000063c), helpcontext(0x0001063c)]
	HRESULT __stdcall BeforeRefresh(
		[in, out]VARIANT_BOOL* Cancel);
	[id(0x0000063d), helpcontext(0x0001063d)]
	HRESULT __stdcall AfterRefresh(
		[in]VARIANT_BOOL Success);
};
'!
!ExcelIRefreshEvents categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIRefreshEvents methodsFor!

afterRefresh: success
	"Invoke the AfterRefresh() method of the COM object."

	^self AfterRefresh: success
!

AfterRefresh: success
	"Private - Invoke the AfterRefresh() method of the COM object.

		HRESULT __stdcall AfterRefresh(
			[in]VARIANT_BOOL Success);"

	<virtual stdcall: hresult 9 varbool>
	^self invalidCall!

beforeRefresh: cancel
	"Invoke the BeforeRefresh() method of the COM object."

	^self BeforeRefresh: (VARIANT_BOOL new value: cancel; yourself)
!

BeforeRefresh: cancel
	"Private - Invoke the BeforeRefresh() method of the COM object.

		HRESULT __stdcall BeforeRefresh(
			[in, out]VARIANT_BOOL* Cancel);"

	<virtual stdcall: hresult 8 varbool*>
	^self invalidCall! !
!ExcelIRefreshEvents categoriesFor: #afterRefresh:!**auto generated**!methods!public! !
!ExcelIRefreshEvents categoriesFor: #AfterRefresh:!**auto generated**!COM Interfaces-IRefreshEvents!private! !
!ExcelIRefreshEvents categoriesFor: #beforeRefresh:!**auto generated**!methods!public! !
!ExcelIRefreshEvents categoriesFor: #BeforeRefresh:!**auto generated**!COM Interfaces-IRefreshEvents!private! !

!ExcelIRefreshEvents class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IRefreshEvents'
		ExcelIRefreshEvents defineTemplate"

	self
		defineFunction: #BeforeRefresh:
			argumentTypes: 'varbool*';
		defineFunction: #AfterRefresh:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIRefreshEvents initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIRefreshEvents class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIRefreshEvents class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

