"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDialogSheetView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDialogSheetView guid: (IID fromString: '{0002448A-0001-0000-C000-000000000046}')!
ExcelIDialogSheetView comment: '<ExcelIDialogSheetView> is a wrapper class for the COM interface ''Excel.IDialogSheetView'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(0002448A-0001-0000-C000-000000000046), 
	helpcontext(0x00020120), 
	hidden
]
interface IDialogSheetView : IDispatch
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
	[id(0x000002ef), propget, helpcontext(0x000102ef)]
	HRESULT __stdcall Sheet(
		[out, retval]IDispatch** RHS);
};
'!
!ExcelIDialogSheetView categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDialogSheetView methodsFor!

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

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Sheet: rhs
	"Private - Get the value of the 'Sheet' property of the receiver.

		HRESULT __stdcall Sheet(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 11 IDispatch**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

sheet
	"Answer the <IDispatch> value of the 'Sheet' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Sheet: answer.
	^answer asObject
! !
!ExcelIDialogSheetView categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIDialogSheetView categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIDialogSheetView categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IDialogSheetView!private! !
!ExcelIDialogSheetView categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IDialogSheetView!private! !
!ExcelIDialogSheetView categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IDialogSheetView!private! !
!ExcelIDialogSheetView categoriesFor: #get_Sheet:!**auto generated**!COM Interfaces-IDialogSheetView!private! !
!ExcelIDialogSheetView categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIDialogSheetView categoriesFor: #sheet!**auto generated**!properties!public! !

!ExcelIDialogSheetView class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDialogSheetView'
		ExcelIDialogSheetView defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Sheet:
			argumentTypes: 'IDispatch**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDialogSheetView initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDialogSheetView class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDialogSheetView class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

