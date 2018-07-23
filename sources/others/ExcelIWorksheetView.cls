"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIWorksheetView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIWorksheetView guid: (IID fromString: '{00024487-0001-0000-C000-000000000046}')!
ExcelIWorksheetView comment: '<ExcelIWorksheetView> is a wrapper class for the COM interface ''Excel.IWorksheetView'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024487-0001-0000-C000-000000000046), 
	helpcontext(0x0002011d), 
	hidden
]
interface IWorksheetView : IDispatch
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
	[id(0x00000285), propget, helpcontext(0x00010285)]
	HRESULT __stdcall DisplayGridlines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000285), propput, helpcontext(0x00010285)]
	HRESULT __stdcall DisplayGridlines(
		[in]VARIANT_BOOL RHS);
	[id(0x00000284), propget, helpcontext(0x00010284)]
	HRESULT __stdcall DisplayFormulas(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000284), propput, helpcontext(0x00010284)]
	HRESULT __stdcall DisplayFormulas(
		[in]VARIANT_BOOL RHS);
	[id(0x00000286), propget, helpcontext(0x00010286)]
	HRESULT __stdcall DisplayHeadings(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000286), propput, helpcontext(0x00010286)]
	HRESULT __stdcall DisplayHeadings(
		[in]VARIANT_BOOL RHS);
	[id(0x00000287), propget, helpcontext(0x00010287)]
	HRESULT __stdcall DisplayOutline(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000287), propput, helpcontext(0x00010287)]
	HRESULT __stdcall DisplayOutline(
		[in]VARIANT_BOOL RHS);
	[id(0x00000289), propget, helpcontext(0x00010289)]
	HRESULT __stdcall DisplayZeros(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000289), propput, helpcontext(0x00010289)]
	HRESULT __stdcall DisplayZeros(
		[in]VARIANT_BOOL RHS);
};
'!
!ExcelIWorksheetView categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIWorksheetView methodsFor!

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

displayFormulas
	"Answer the <varbool> value of the 'DisplayFormulas' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayFormulas: answer.
	^answer asObject
!

displayFormulas: rhs
	"Set the 'DisplayFormulas' property of the receiver to the <varbool> value of the argument."

	self put_DisplayFormulas: rhs
!

displayGridlines
	"Answer the <varbool> value of the 'DisplayGridlines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayGridlines: answer.
	^answer asObject
!

displayGridlines: rhs
	"Set the 'DisplayGridlines' property of the receiver to the <varbool> value of the argument."

	self put_DisplayGridlines: rhs
!

displayHeadings
	"Answer the <varbool> value of the 'DisplayHeadings' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayHeadings: answer.
	^answer asObject
!

displayHeadings: rhs
	"Set the 'DisplayHeadings' property of the receiver to the <varbool> value of the argument."

	self put_DisplayHeadings: rhs
!

displayOutline
	"Answer the <varbool> value of the 'DisplayOutline' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayOutline: answer.
	^answer asObject
!

displayOutline: rhs
	"Set the 'DisplayOutline' property of the receiver to the <varbool> value of the argument."

	self put_DisplayOutline: rhs
!

displayZeros
	"Answer the <varbool> value of the 'DisplayZeros' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayZeros: answer.
	^answer asObject
!

displayZeros: rhs
	"Set the 'DisplayZeros' property of the receiver to the <varbool> value of the argument."

	self put_DisplayZeros: rhs
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

get_DisplayFormulas: rhs
	"Private - Get the value of the 'DisplayFormulas' property of the receiver.

		HRESULT __stdcall DisplayFormulas(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

get_DisplayGridlines: rhs
	"Private - Get the value of the 'DisplayGridlines' property of the receiver.

		HRESULT __stdcall DisplayGridlines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 12 varbool*>
	^self invalidCall!

get_DisplayHeadings: rhs
	"Private - Get the value of the 'DisplayHeadings' property of the receiver.

		HRESULT __stdcall DisplayHeadings(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_DisplayOutline: rhs
	"Private - Get the value of the 'DisplayOutline' property of the receiver.

		HRESULT __stdcall DisplayOutline(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall!

get_DisplayZeros: rhs
	"Private - Get the value of the 'DisplayZeros' property of the receiver.

		HRESULT __stdcall DisplayZeros(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 20 varbool*>
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

put_DisplayFormulas: rhs
	"Private - Set the value of the 'DisplayFormulas' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayFormulas(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 15 varbool>
	^self invalidCall!

put_DisplayGridlines: rhs
	"Private - Set the value of the 'DisplayGridlines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayGridlines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 13 varbool>
	^self invalidCall!

put_DisplayHeadings: rhs
	"Private - Set the value of the 'DisplayHeadings' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayHeadings(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

put_DisplayOutline: rhs
	"Private - Set the value of the 'DisplayOutline' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayOutline(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 19 varbool>
	^self invalidCall!

put_DisplayZeros: rhs
	"Private - Set the value of the 'DisplayZeros' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayZeros(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 21 varbool>
	^self invalidCall!

sheet
	"Answer the <IDispatch> value of the 'Sheet' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Sheet: answer.
	^answer asObject
! !
!ExcelIWorksheetView categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayFormulas!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayFormulas:!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayGridlines!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayGridlines:!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayHeadings!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayHeadings:!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayOutline!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayOutline:!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayZeros!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #displayZeros:!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #get_DisplayFormulas:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #get_DisplayGridlines:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #get_DisplayHeadings:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #get_DisplayOutline:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #get_DisplayZeros:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #get_Sheet:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIWorksheetView categoriesFor: #put_DisplayFormulas:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #put_DisplayGridlines:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #put_DisplayHeadings:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #put_DisplayOutline:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #put_DisplayZeros:!**auto generated**!COM Interfaces-IWorksheetView!private! !
!ExcelIWorksheetView categoriesFor: #sheet!**auto generated**!properties!public! !

!ExcelIWorksheetView class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IWorksheetView'
		ExcelIWorksheetView defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Sheet:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_DisplayGridlines:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayGridlines:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayFormulas:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayFormulas:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayHeadings:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayHeadings:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayOutline:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayOutline:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayZeros:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayZeros:
			argumentTypes: 'varbool'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIWorksheetView initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIWorksheetView class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIWorksheetView class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

