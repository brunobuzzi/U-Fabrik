"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelILegendEntry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelILegendEntry guid: (IID fromString: '{000208BA-0001-0000-C000-000000000046}')!
ExcelILegendEntry comment: '<ExcelILegendEntry> is a wrapper class for the COM interface ''Excel.ILegendEntry'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208BA-0001-0000-C000-000000000046), 
	helpcontext(0x0002007a), 
	hidden
]
interface ILegendEntry : IDispatch
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
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x000000ae), propget, helpcontext(0x000100ae)]
	HRESULT __stdcall LegendKey(
		[out, retval]LegendKey** RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[out, retval]VARIANT* RHS);
	[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[in]VARIANT RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]double* RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]double* RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]double* RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelILegendEntry categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelILegendEntry methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

autoScaleFont
	"Answer the <variant> value of the 'AutoScaleFont' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_AutoScaleFont: answer.
	^answer asObject
!

autoScaleFont: rhs
	"Set the 'AutoScaleFont' property of the receiver to the <variant> value of the argument."

	self put_AutoScaleFont: rhs asVariant
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Delete: answer.
	^answer asObject
!

Delete: rhs
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 11 variant*>
	^self invalidCall!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver."

	| answer |
	answer := ExcelFont newPointer.
	self get_Font: answer.
	^answer asObject
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver."

	| answer |
	answer := ExcelChartFormat newPointer.
	self get_Format: answer.
	^answer asObject
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_AutoScaleFont: rhs
	"Private - Get the value of the 'AutoScaleFont' property of the receiver.

		HRESULT __stdcall AutoScaleFont(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 16 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 12 ExcelFont**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 22 ExcelChartFormat**>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 21 double*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 18 double*>
	^self invalidCall!

get_LegendKey: rhs
	"Private - Get the value of the 'LegendKey' property of the receiver.

		HRESULT __stdcall LegendKey(
			[out, retval]LegendKey** RHS);"

	<virtual stdcall: hresult 14 ExcelLegendKey**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 19 double*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 20 double*>
	^self invalidCall!

height
	"Answer the <double> value of the 'Height' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Height: answer.
	^answer asObject
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

left
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Left: answer.
	^answer asObject
!

legendKey
	"Answer the <ExcelLegendKey> value of the 'LegendKey' property of the receiver."

	| answer |
	answer := ExcelLegendKey newPointer.
	self get_LegendKey: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AutoScaleFont: rhs
	"Private - Set the value of the 'AutoScaleFont' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall AutoScaleFont(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 17 variant>
	^self invalidCall!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Select: answer.
	^answer asObject
!

Select: rhs
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 15 variant*>
	^self invalidCall!

top
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Top: answer.
	^answer asObject
!

width
	"Answer the <double> value of the 'Width' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Width: answer.
	^answer asObject
! !
!ExcelILegendEntry categoriesFor: #application!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelILegendEntry categoriesFor: #Delete:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #font!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #format!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_AutoScaleFont:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Font:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Format:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Height:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Index:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Left:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_LegendKey:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Top:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #get_Width:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #height!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #index!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #left!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #legendKey!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #put_AutoScaleFont:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #select!**auto generated**!methods!public! !
!ExcelILegendEntry categoriesFor: #Select:!**auto generated**!COM Interfaces-ILegendEntry!private! !
!ExcelILegendEntry categoriesFor: #top!**auto generated**!properties!public! !
!ExcelILegendEntry categoriesFor: #width!**auto generated**!properties!public! !

!ExcelILegendEntry class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ILegendEntry'
		ExcelILegendEntry defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_LegendKey:
			argumentTypes: 'ExcelLegendKey**';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_AutoScaleFont:
			argumentTypes: 'variant*';
		defineFunction: #put_AutoScaleFont:
			argumentTypes: 'variant';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #get_Width:
			argumentTypes: 'double*';
		defineFunction: #get_Height:
			argumentTypes: 'double*';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelILegendEntry initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelILegendEntry class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelILegendEntry class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

