"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIIcon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIIcon guid: (IID fromString: '{0002449A-0001-0000-C000-000000000046}')!
ExcelIIcon comment: '<ExcelIIcon> is a wrapper class for the COM interface ''Excel.IIcon'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002449A-0001-0000-C000-000000000046), 
	helpcontext(0x00020130), 
	hidden
]
interface IIcon : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IconSet** RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
};
'!
!ExcelIIcon categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIIcon methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

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

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IconSet** RHS);"

	<virtual stdcall: hresult 10 ExcelIconSet**>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

parent
	"Answer the <ExcelIconSet> value of the 'Parent' property of the receiver."

	| answer |
	answer := ExcelIconSet newPointer.
	self get_Parent: answer.
	^answer asObject
! !
!ExcelIIcon categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIIcon categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIIcon categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IIcon!private! !
!ExcelIIcon categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IIcon!private! !
!ExcelIIcon categoriesFor: #get_Index:!**auto generated**!COM Interfaces-IIcon!private! !
!ExcelIIcon categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IIcon!private! !
!ExcelIIcon categoriesFor: #index!**auto generated**!properties!public! !
!ExcelIIcon categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelIIcon class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IIcon'
		ExcelIIcon defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'ExcelIconSet**';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIIcon initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIIcon class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIIcon class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

