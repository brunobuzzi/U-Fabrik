"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIOLEObjectEvents
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIOLEObjectEvents guid: (IID fromString: '{00024410-0001-0000-C000-000000000046}')!
ExcelIOLEObjectEvents comment: '<ExcelIOLEObjectEvents> is a wrapper class for the COM interface ''Excel.IOLEObjectEvents'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024410-0001-0000-C000-000000000046), 
	helpcontext(0x000200a6), 
	hidden
]
interface IOLEObjectEvents : IDispatch
 {
	[id(0x00000605), helpcontext(0x00010605)]
	HRESULT __stdcall GotFocus();
	[id(0x00000606), helpcontext(0x00010606)]
	HRESULT __stdcall LostFocus();
};
'!
!ExcelIOLEObjectEvents categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIOLEObjectEvents methodsFor!

gotFocus
	"Invoke the GotFocus() method of the COM object."

	^self GotFocus
!

GotFocus
	"Private - Invoke the GotFocus() method of the COM object.

		HRESULT __stdcall GotFocus();"

	<virtual stdcall: hresult 8>
	^self invalidCall!

lostFocus
	"Invoke the LostFocus() method of the COM object."

	^self LostFocus
!

LostFocus
	"Private - Invoke the LostFocus() method of the COM object.

		HRESULT __stdcall LostFocus();"

	<virtual stdcall: hresult 9>
	^self invalidCall! !
!ExcelIOLEObjectEvents categoriesFor: #gotFocus!**auto generated**!methods!public! !
!ExcelIOLEObjectEvents categoriesFor: #GotFocus!**auto generated**!COM Interfaces-IOLEObjectEvents!private! !
!ExcelIOLEObjectEvents categoriesFor: #lostFocus!**auto generated**!methods!public! !
!ExcelIOLEObjectEvents categoriesFor: #LostFocus!**auto generated**!COM Interfaces-IOLEObjectEvents!private! !

!ExcelIOLEObjectEvents class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IOLEObjectEvents'
		ExcelIOLEObjectEvents defineTemplate"

	self
		defineFunction: #GotFocus;
		defineFunction: #LostFocus
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIOLEObjectEvents initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIOLEObjectEvents class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIOLEObjectEvents class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

