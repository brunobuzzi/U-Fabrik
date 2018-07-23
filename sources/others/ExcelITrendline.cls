"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelITrendline
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelITrendline guid: (IID fromString: '{000208BE-0001-0000-C000-000000000046}')!
ExcelITrendline comment: '<ExcelITrendline> is a wrapper class for the COM interface ''Excel.ITrendline'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208BE-0001-0000-C000-000000000046), 
	helpcontext(0x0002007e), 
	hidden
]
interface ITrendline : IDispatch
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
	[id(0x000000b9), hidden, propget, helpcontext(0x000100b9)]
	HRESULT __stdcall Backward(
		[out, retval]long* RHS);
	[id(0x000000b9), hidden, propput, helpcontext(0x000100b9)]
	HRESULT __stdcall Backward(
		[in]long RHS);
	[id(0x00000080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000070), helpcontext(0x00010070)]
	HRESULT __stdcall ClearFormats(
		[out, retval]VARIANT* RHS);
	[id(0x0000009e), propget, helpcontext(0x0001009e)]
	HRESULT __stdcall DataLabel(
		[out, retval]DataLabel** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x000000be), propget, helpcontext(0x000100be)]
	HRESULT __stdcall DisplayEquation(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000be), propput, helpcontext(0x000100be)]
	HRESULT __stdcall DisplayEquation(
		[in]VARIANT_BOOL RHS);
	[id(0x000000bd), propget, helpcontext(0x000100bd)]
	HRESULT __stdcall DisplayRSquared(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000bd), propput, helpcontext(0x000100bd)]
	HRESULT __stdcall DisplayRSquared(
		[in]VARIANT_BOOL RHS);
	[id(0x000000bf), hidden, propget, helpcontext(0x000100bf)]
	HRESULT __stdcall Forward(
		[out, retval]long* RHS);
	[id(0x000000bf), hidden, propput, helpcontext(0x000100bf)]
	HRESULT __stdcall Forward(
		[in]long RHS);
	[id(0x000001e6), propget, helpcontext(0x000101e6)]
	HRESULT __stdcall Index(
		[out, retval]long* RHS);
	[id(0x000000ba), propget, helpcontext(0x000100ba)]
	HRESULT __stdcall Intercept(
		[out, retval]double* RHS);
	[id(0x000000ba), propput, helpcontext(0x000100ba)]
	HRESULT __stdcall Intercept(
		[in]double RHS);
	[id(0x000000bb), propget, helpcontext(0x000100bb)]
	HRESULT __stdcall InterceptIsAuto(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000bb), propput, helpcontext(0x000100bb)]
	HRESULT __stdcall InterceptIsAuto(
		[in]VARIANT_BOOL RHS);
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x0000006e), propput, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[in]BSTR RHS);
	[id(0x000000bc), propget, helpcontext(0x000100bc)]
	HRESULT __stdcall NameIsAuto(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000bc), propput, helpcontext(0x000100bc)]
	HRESULT __stdcall NameIsAuto(
		[in]VARIANT_BOOL RHS);
	[id(0x000000c0), propget, helpcontext(0x000100c0)]
	HRESULT __stdcall Order(
		[out, retval]long* RHS);
	[id(0x000000c0), propput, helpcontext(0x000100c0)]
	HRESULT __stdcall Order(
		[in]long RHS);
	[id(0x000000b8), propget, helpcontext(0x000100b8)]
	HRESULT __stdcall Period(
		[out, retval]long* RHS);
	[id(0x000000b8), propput, helpcontext(0x000100b8)]
	HRESULT __stdcall Period(
		[in]long RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x0000006c), propget, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[out, retval]XlTrendlineType* RHS);
	[id(0x0000006c), propput, helpcontext(0x0001006c)]
	HRESULT __stdcall Type(
		[in]XlTrendlineType RHS);
	[id(0x00000a5a), propget, helpcontext(0x00010a5a)]
	HRESULT __stdcall Backward2(
		[out, retval]double* RHS);
	[id(0x00000a5a), propput, helpcontext(0x00010a5a)]
	HRESULT __stdcall Backward2(
		[in]double RHS);
	[id(0x00000a5b), propget, helpcontext(0x00010a5b)]
	HRESULT __stdcall Forward2(
		[out, retval]double* RHS);
	[id(0x00000a5b), propput, helpcontext(0x00010a5b)]
	HRESULT __stdcall Forward2(
		[in]double RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelITrendline categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelITrendline methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

backward
	"Answer the <sdword> value of the 'Backward' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Backward: answer.
	^answer asObject
!

backward: rhs
	"Set the 'Backward' property of the receiver to the <sdword> value of the argument."

	self put_Backward: rhs
!

backward2
	"Answer the <double> value of the 'Backward2' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Backward2: answer.
	^answer asObject
!

backward2: rhs
	"Set the 'Backward2' property of the receiver to the <double> value of the argument."

	self put_Backward2: rhs
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
	^answer asObject
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	| answer |
	answer := VARIANT new.
	self ClearFormats: answer.
	^answer asObject
!

ClearFormats: rhs
	"Private - Invoke the ClearFormats() method of the COM object.

		HRESULT __stdcall ClearFormats(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

dataLabel
	"Answer the <ExcelDataLabel> value of the 'DataLabel' property of the receiver."

	| answer |
	answer := ExcelDataLabel newPointer.
	self get_DataLabel: answer.
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

	<virtual stdcall: hresult 16 variant*>
	^self invalidCall!

displayEquation
	"Answer the <varbool> value of the 'DisplayEquation' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayEquation: answer.
	^answer asObject
!

displayEquation: rhs
	"Set the 'DisplayEquation' property of the receiver to the <varbool> value of the argument."

	self put_DisplayEquation: rhs
!

displayRSquared
	"Answer the <varbool> value of the 'DisplayRSquared' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DisplayRSquared: answer.
	^answer asObject
!

displayRSquared: rhs
	"Set the 'DisplayRSquared' property of the receiver to the <varbool> value of the argument."

	self put_DisplayRSquared: rhs
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver."

	| answer |
	answer := ExcelChartFormat newPointer.
	self get_Format: answer.
	^answer asObject
!

forward
	"Answer the <sdword> value of the 'Forward' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Forward: answer.
	^answer asObject
!

forward: rhs
	"Set the 'Forward' property of the receiver to the <sdword> value of the argument."

	self put_Forward: rhs
!

forward2
	"Answer the <double> value of the 'Forward2' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Forward2: answer.
	^answer asObject
!

forward2: rhs
	"Set the 'Forward2' property of the receiver to the <double> value of the argument."

	self put_Forward2: rhs
!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Backward: rhs
	"Private - Get the value of the 'Backward' property of the receiver.

		HRESULT __stdcall Backward(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_Backward2: rhs
	"Private - Get the value of the 'Backward2' property of the receiver.

		HRESULT __stdcall Backward2(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 39 double*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 13 ExcelBorder**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DataLabel: rhs
	"Private - Get the value of the 'DataLabel' property of the receiver.

		HRESULT __stdcall DataLabel(
			[out, retval]DataLabel** RHS);"

	<virtual stdcall: hresult 15 ExcelDataLabel**>
	^self invalidCall!

get_DisplayEquation: rhs
	"Private - Get the value of the 'DisplayEquation' property of the receiver.

		HRESULT __stdcall DisplayEquation(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_DisplayRSquared: rhs
	"Private - Get the value of the 'DisplayRSquared' property of the receiver.

		HRESULT __stdcall DisplayRSquared(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 43 ExcelChartFormat**>
	^self invalidCall!

get_Forward: rhs
	"Private - Get the value of the 'Forward' property of the receiver.

		HRESULT __stdcall Forward(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_Forward2: rhs
	"Private - Get the value of the 'Forward2' property of the receiver.

		HRESULT __stdcall Forward2(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 41 double*>
	^self invalidCall!

get_Index: rhs
	"Private - Get the value of the 'Index' property of the receiver.

		HRESULT __stdcall Index(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_Intercept: rhs
	"Private - Get the value of the 'Intercept' property of the receiver.

		HRESULT __stdcall Intercept(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 24 double*>
	^self invalidCall!

get_InterceptIsAuto: rhs
	"Private - Get the value of the 'InterceptIsAuto' property of the receiver.

		HRESULT __stdcall InterceptIsAuto(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 26 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 28 bstr*>
	^self invalidCall!

get_NameIsAuto: rhs
	"Private - Get the value of the 'NameIsAuto' property of the receiver.

		HRESULT __stdcall NameIsAuto(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 30 varbool*>
	^self invalidCall!

get_Order: rhs
	"Private - Get the value of the 'Order' property of the receiver.

		HRESULT __stdcall Order(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 32 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Period: rhs
	"Private - Get the value of the 'Period' property of the receiver.

		HRESULT __stdcall Period(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 34 sdword*>
	^self invalidCall!

get_Type: rhs
	"Private - Get the value of the 'Type' property of the receiver.

		HRESULT __stdcall Type(
			[out, retval]XlTrendlineType* RHS);"

	<virtual stdcall: hresult 37 sdword*>
	^self invalidCall!

index
	"Answer the <sdword> value of the 'Index' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Index: answer.
	^answer asObject
!

intercept
	"Answer the <double> value of the 'Intercept' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Intercept: answer.
	^answer asObject
!

intercept: rhs
	"Set the 'Intercept' property of the receiver to the <double> value of the argument."

	self put_Intercept: rhs
!

interceptIsAuto
	"Answer the <varbool> value of the 'InterceptIsAuto' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_InterceptIsAuto: answer.
	^answer asObject
!

interceptIsAuto: rhs
	"Set the 'InterceptIsAuto' property of the receiver to the <varbool> value of the argument."

	self put_InterceptIsAuto: rhs
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

name: rhs
	"Set the 'Name' property of the receiver to the <bstr> value of the argument."

	self put_Name: rhs
!

nameIsAuto
	"Answer the <varbool> value of the 'NameIsAuto' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_NameIsAuto: answer.
	^answer asObject
!

nameIsAuto: rhs
	"Set the 'NameIsAuto' property of the receiver to the <varbool> value of the argument."

	self put_NameIsAuto: rhs
!

order
	"Answer the <sdword> value of the 'Order' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Order: answer.
	^answer asObject
!

order: rhs
	"Set the 'Order' property of the receiver to the <sdword> value of the argument."

	self put_Order: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

period
	"Answer the <sdword> value of the 'Period' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Period: answer.
	^answer asObject
!

period: rhs
	"Set the 'Period' property of the receiver to the <sdword> value of the argument."

	self put_Period: rhs
!

put_Backward: rhs
	"Private - Set the value of the 'Backward' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Backward(
			[in]long RHS);"

	<virtual stdcall: hresult 12 sdword>
	^self invalidCall!

put_Backward2: rhs
	"Private - Set the value of the 'Backward2' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Backward2(
			[in]double RHS);"

	<virtual stdcall: hresult 40 double>
	^self invalidCall!

put_DisplayEquation: rhs
	"Private - Set the value of the 'DisplayEquation' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayEquation(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_DisplayRSquared: rhs
	"Private - Set the value of the 'DisplayRSquared' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DisplayRSquared(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_Forward: rhs
	"Private - Set the value of the 'Forward' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Forward(
			[in]long RHS);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

put_Forward2: rhs
	"Private - Set the value of the 'Forward2' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Forward2(
			[in]double RHS);"

	<virtual stdcall: hresult 42 double>
	^self invalidCall!

put_Intercept: rhs
	"Private - Set the value of the 'Intercept' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Intercept(
			[in]double RHS);"

	<virtual stdcall: hresult 25 double>
	^self invalidCall!

put_InterceptIsAuto: rhs
	"Private - Set the value of the 'InterceptIsAuto' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall InterceptIsAuto(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 27 varbool>
	^self invalidCall!

put_Name: rhs
	"Private - Set the value of the 'Name' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall Name(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 29 bstr>
	^self invalidCall!

put_NameIsAuto: rhs
	"Private - Set the value of the 'NameIsAuto' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall NameIsAuto(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 31 varbool>
	^self invalidCall!

put_Order: rhs
	"Private - Set the value of the 'Order' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Order(
			[in]long RHS);"

	<virtual stdcall: hresult 33 sdword>
	^self invalidCall!

put_Period: rhs
	"Private - Set the value of the 'Period' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Period(
			[in]long RHS);"

	<virtual stdcall: hresult 35 sdword>
	^self invalidCall!

put_Type: rhs
	"Private - Set the value of the 'Type' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Type(
			[in]XlTrendlineType RHS);"

	<virtual stdcall: hresult 38 sdword>
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

	<virtual stdcall: hresult 36 variant*>
	^self invalidCall!

type
	"Answer the <sdword> value of the 'Type' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Type: answer.
	^answer asObject
!

type: rhs
	"Set the 'Type' property of the receiver to the <sdword> value of the argument."

	self put_Type: rhs
! !
!ExcelITrendline categoriesFor: #application!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #backward!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #backward:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #backward2!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #backward2:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #border!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelITrendline categoriesFor: #ClearFormats:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #dataLabel!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelITrendline categoriesFor: #Delete:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #displayEquation!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #displayEquation:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #displayRSquared!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #displayRSquared:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #format!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #forward!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #forward:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #forward2!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #forward2:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Backward:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Backward2:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Border:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_DataLabel:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_DisplayEquation:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_DisplayRSquared:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Format:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Forward:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Forward2:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Index:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Intercept:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_InterceptIsAuto:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_NameIsAuto:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Order:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Period:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #get_Type:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #index!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #intercept!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #intercept:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #interceptIsAuto!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #interceptIsAuto:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #name!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #nameIsAuto!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #nameIsAuto:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #order!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #order:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #period!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #period:!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #put_Backward:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_Backward2:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_DisplayEquation:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_DisplayRSquared:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_Forward:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_Forward2:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_Intercept:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_InterceptIsAuto:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_Name:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_NameIsAuto:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_Order:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_Period:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #put_Type:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #select!**auto generated**!methods!public! !
!ExcelITrendline categoriesFor: #Select:!**auto generated**!COM Interfaces-ITrendline!private! !
!ExcelITrendline categoriesFor: #type!**auto generated**!properties!public! !
!ExcelITrendline categoriesFor: #type:!**auto generated**!properties!public! !

!ExcelITrendline class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ITrendline'
		ExcelITrendline defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Backward:
			argumentTypes: 'sdword*';
		defineFunction: #put_Backward:
			argumentTypes: 'sdword';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #ClearFormats:
			argumentTypes: 'variant*';
		defineFunction: #get_DataLabel:
			argumentTypes: 'ExcelDataLabel**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_DisplayEquation:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayEquation:
			argumentTypes: 'varbool';
		defineFunction: #get_DisplayRSquared:
			argumentTypes: 'varbool*';
		defineFunction: #put_DisplayRSquared:
			argumentTypes: 'varbool';
		defineFunction: #get_Forward:
			argumentTypes: 'sdword*';
		defineFunction: #put_Forward:
			argumentTypes: 'sdword';
		defineFunction: #get_Index:
			argumentTypes: 'sdword*';
		defineFunction: #get_Intercept:
			argumentTypes: 'double*';
		defineFunction: #put_Intercept:
			argumentTypes: 'double';
		defineFunction: #get_InterceptIsAuto:
			argumentTypes: 'varbool*';
		defineFunction: #put_InterceptIsAuto:
			argumentTypes: 'varbool';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #put_Name:
			argumentTypes: 'bstr';
		defineFunction: #get_NameIsAuto:
			argumentTypes: 'varbool*';
		defineFunction: #put_NameIsAuto:
			argumentTypes: 'varbool';
		defineFunction: #get_Order:
			argumentTypes: 'sdword*';
		defineFunction: #put_Order:
			argumentTypes: 'sdword';
		defineFunction: #get_Period:
			argumentTypes: 'sdword*';
		defineFunction: #put_Period:
			argumentTypes: 'sdword';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_Type:
			argumentTypes: 'sdword*';
		defineFunction: #put_Type:
			argumentTypes: 'sdword';
		defineFunction: #get_Backward2:
			argumentTypes: 'double*';
		defineFunction: #put_Backward2:
			argumentTypes: 'double';
		defineFunction: #get_Forward2:
			argumentTypes: 'double*';
		defineFunction: #put_Forward2:
			argumentTypes: 'double';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelITrendline initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelITrendline class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelITrendline class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

