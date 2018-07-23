"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPage guid: (IID fromString: '{000244A2-0001-0000-C000-000000000046}')!
ExcelIPage comment: '<ExcelIPage> is a wrapper class for the COM interface ''Excel.IPage'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244A2-0001-0000-C000-000000000046), 
	helpcontext(0x00020138), 
	hidden
]
interface IPage : IDispatch
 {
	[id(0x000003fa), propget, helpcontext(0x000103fa)]
	HRESULT __stdcall LeftHeader(
		[out, retval]HeaderFooter** RHS);
	[id(0x000003f3), propget, helpcontext(0x000103f3)]
	HRESULT __stdcall CenterHeader(
		[out, retval]HeaderFooter** RHS);
	[id(0x00000402), propget, helpcontext(0x00010402)]
	HRESULT __stdcall RightHeader(
		[out, retval]HeaderFooter** RHS);
	[id(0x000003f9), propget, helpcontext(0x000103f9)]
	HRESULT __stdcall LeftFooter(
		[out, retval]HeaderFooter** RHS);
	[id(0x000003f2), propget, helpcontext(0x000103f2)]
	HRESULT __stdcall CenterFooter(
		[out, retval]HeaderFooter** RHS);
	[id(0x00000401), propget, helpcontext(0x00010401)]
	HRESULT __stdcall RightFooter(
		[out, retval]HeaderFooter** RHS);
};
'!
!ExcelIPage categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPage methodsFor!

centerFooter
	"Answer the <ExcelHeaderFooter> value of the 'CenterFooter' property of the receiver."

	| answer |
	answer := ExcelHeaderFooter newPointer.
	self get_CenterFooter: answer.
	^answer asObject
!

centerHeader
	"Answer the <ExcelHeaderFooter> value of the 'CenterHeader' property of the receiver."

	| answer |
	answer := ExcelHeaderFooter newPointer.
	self get_CenterHeader: answer.
	^answer asObject
!

get_CenterFooter: rhs
	"Private - Get the value of the 'CenterFooter' property of the receiver.

		HRESULT __stdcall CenterFooter(
			[out, retval]HeaderFooter** RHS);"

	<virtual stdcall: hresult 12 ExcelHeaderFooter**>
	^self invalidCall!

get_CenterHeader: rhs
	"Private - Get the value of the 'CenterHeader' property of the receiver.

		HRESULT __stdcall CenterHeader(
			[out, retval]HeaderFooter** RHS);"

	<virtual stdcall: hresult 9 ExcelHeaderFooter**>
	^self invalidCall!

get_LeftFooter: rhs
	"Private - Get the value of the 'LeftFooter' property of the receiver.

		HRESULT __stdcall LeftFooter(
			[out, retval]HeaderFooter** RHS);"

	<virtual stdcall: hresult 11 ExcelHeaderFooter**>
	^self invalidCall!

get_LeftHeader: rhs
	"Private - Get the value of the 'LeftHeader' property of the receiver.

		HRESULT __stdcall LeftHeader(
			[out, retval]HeaderFooter** RHS);"

	<virtual stdcall: hresult 8 ExcelHeaderFooter**>
	^self invalidCall!

get_RightFooter: rhs
	"Private - Get the value of the 'RightFooter' property of the receiver.

		HRESULT __stdcall RightFooter(
			[out, retval]HeaderFooter** RHS);"

	<virtual stdcall: hresult 13 ExcelHeaderFooter**>
	^self invalidCall!

get_RightHeader: rhs
	"Private - Get the value of the 'RightHeader' property of the receiver.

		HRESULT __stdcall RightHeader(
			[out, retval]HeaderFooter** RHS);"

	<virtual stdcall: hresult 10 ExcelHeaderFooter**>
	^self invalidCall!

leftFooter
	"Answer the <ExcelHeaderFooter> value of the 'LeftFooter' property of the receiver."

	| answer |
	answer := ExcelHeaderFooter newPointer.
	self get_LeftFooter: answer.
	^answer asObject
!

leftHeader
	"Answer the <ExcelHeaderFooter> value of the 'LeftHeader' property of the receiver."

	| answer |
	answer := ExcelHeaderFooter newPointer.
	self get_LeftHeader: answer.
	^answer asObject
!

rightFooter
	"Answer the <ExcelHeaderFooter> value of the 'RightFooter' property of the receiver."

	| answer |
	answer := ExcelHeaderFooter newPointer.
	self get_RightFooter: answer.
	^answer asObject
!

rightHeader
	"Answer the <ExcelHeaderFooter> value of the 'RightHeader' property of the receiver."

	| answer |
	answer := ExcelHeaderFooter newPointer.
	self get_RightHeader: answer.
	^answer asObject
! !
!ExcelIPage categoriesFor: #centerFooter!**auto generated**!properties!public! !
!ExcelIPage categoriesFor: #centerHeader!**auto generated**!properties!public! !
!ExcelIPage categoriesFor: #get_CenterFooter:!**auto generated**!COM Interfaces-IPage!private! !
!ExcelIPage categoriesFor: #get_CenterHeader:!**auto generated**!COM Interfaces-IPage!private! !
!ExcelIPage categoriesFor: #get_LeftFooter:!**auto generated**!COM Interfaces-IPage!private! !
!ExcelIPage categoriesFor: #get_LeftHeader:!**auto generated**!COM Interfaces-IPage!private! !
!ExcelIPage categoriesFor: #get_RightFooter:!**auto generated**!COM Interfaces-IPage!private! !
!ExcelIPage categoriesFor: #get_RightHeader:!**auto generated**!COM Interfaces-IPage!private! !
!ExcelIPage categoriesFor: #leftFooter!**auto generated**!properties!public! !
!ExcelIPage categoriesFor: #leftHeader!**auto generated**!properties!public! !
!ExcelIPage categoriesFor: #rightFooter!**auto generated**!properties!public! !
!ExcelIPage categoriesFor: #rightHeader!**auto generated**!properties!public! !

!ExcelIPage class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPage'
		ExcelIPage defineTemplate"

	self
		defineFunction: #get_LeftHeader:
			argumentTypes: 'ExcelHeaderFooter**';
		defineFunction: #get_CenterHeader:
			argumentTypes: 'ExcelHeaderFooter**';
		defineFunction: #get_RightHeader:
			argumentTypes: 'ExcelHeaderFooter**';
		defineFunction: #get_LeftFooter:
			argumentTypes: 'ExcelHeaderFooter**';
		defineFunction: #get_CenterFooter:
			argumentTypes: 'ExcelHeaderFooter**';
		defineFunction: #get_RightFooter:
			argumentTypes: 'ExcelHeaderFooter**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPage initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPage class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPage class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

