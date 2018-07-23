"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelILinearGradient
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelILinearGradient guid: (IID fromString: '{000244AF-0001-0000-C000-000000000046}')!
ExcelILinearGradient comment: '<ExcelILinearGradient> is a wrapper class for the COM interface ''Excel.ILinearGradient'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000244AF-0001-0000-C000-000000000046), 
	helpcontext(0x00020145), 
	hidden
]
interface ILinearGradient : IDispatch
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
	[id(0x00000ac9), propget, helpcontext(0x00010ac9)]
	HRESULT __stdcall ColorStops(
		[out, retval]ColorStops** RHS);
	[id(0x00000657), propget, helpcontext(0x00010657)]
	HRESULT __stdcall Degree(
		[out, retval]double* RHS);
	[id(0x00000657), propput, helpcontext(0x00010657)]
	HRESULT __stdcall Degree(
		[in]double RHS);
};
'!
!ExcelILinearGradient categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelILinearGradient methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

colorStops
	"Answer the <ExcelColorStops> value of the 'ColorStops' property of the receiver."

	| answer |
	answer := ExcelColorStops newPointer.
	self get_ColorStops: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

degree
	"Answer the <double> value of the 'Degree' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Degree: answer.
	^answer asObject
!

degree: rhs
	"Set the 'Degree' property of the receiver to the <double> value of the argument."

	self put_Degree: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_ColorStops: rhs
	"Private - Get the value of the 'ColorStops' property of the receiver.

		HRESULT __stdcall ColorStops(
			[out, retval]ColorStops** RHS);"

	<virtual stdcall: hresult 11 ExcelColorStops**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Degree: rhs
	"Private - Get the value of the 'Degree' property of the receiver.

		HRESULT __stdcall Degree(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 12 double*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Degree: rhs
	"Private - Set the value of the 'Degree' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Degree(
			[in]double RHS);"

	<virtual stdcall: hresult 13 double>
	^self invalidCall! !
!ExcelILinearGradient categoriesFor: #application!**auto generated**!properties!public! !
!ExcelILinearGradient categoriesFor: #colorStops!**auto generated**!properties!public! !
!ExcelILinearGradient categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelILinearGradient categoriesFor: #degree!**auto generated**!properties!public! !
!ExcelILinearGradient categoriesFor: #degree:!**auto generated**!properties!public! !
!ExcelILinearGradient categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ILinearGradient!private! !
!ExcelILinearGradient categoriesFor: #get_ColorStops:!**auto generated**!COM Interfaces-ILinearGradient!private! !
!ExcelILinearGradient categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ILinearGradient!private! !
!ExcelILinearGradient categoriesFor: #get_Degree:!**auto generated**!COM Interfaces-ILinearGradient!private! !
!ExcelILinearGradient categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ILinearGradient!private! !
!ExcelILinearGradient categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelILinearGradient categoriesFor: #put_Degree:!**auto generated**!COM Interfaces-ILinearGradient!private! !

!ExcelILinearGradient class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ILinearGradient'
		ExcelILinearGradient defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_ColorStops:
			argumentTypes: 'ExcelColorStops**';
		defineFunction: #get_Degree:
			argumentTypes: 'double*';
		defineFunction: #put_Degree:
			argumentTypes: 'double'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelILinearGradient initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelILinearGradient class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelILinearGradient class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

