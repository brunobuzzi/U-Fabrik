"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelILegend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelILegend guid: (IID fromString: '{000208CD-0001-0000-C000-000000000046}')!
ExcelILegend comment: '<ExcelILegend> is a wrapper class for the COM interface ''Excel.ILegend'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208CD-0001-0000-C000-000000000046), 
	helpcontext(0x0002008c), 
	hidden
]
interface ILegend : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete(
		[out, retval]VARIANT* RHS);
	[id(0x00000092), hidden, propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x000000ad), helpcontext(0x000100ad)]
	HRESULT __stdcall LegendEntries(
		[in, optional]VARIANT Index,
		[out, retval]IDispatch** RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]XlLegendPosition* RHS);
	[id(0x00000085), propput, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[in]XlLegendPosition RHS);
	[id(0x00000067), propget, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000067), propput, helpcontext(0x00010067)]
	HRESULT __stdcall Shadow(
		[in]VARIANT_BOOL RHS);
	[id(0x0000006f), helpcontext(0x0001006f)]
	HRESULT __stdcall Clear(
		[out, retval]VARIANT* RHS);
	[id(0x0000007b), propget, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[out, retval]double* RHS);
	[id(0x0000007b), propput, helpcontext(0x0001007b)]
	HRESULT __stdcall Height(
		[in]double RHS);
	[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
	HRESULT __stdcall Interior(
		[out, retval]Interior** RHS);
	[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
	HRESULT __stdcall Fill(
		[out, retval]ChartFillFormat** RHS);
	[id(0x0000007f), propget, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[out, retval]double* RHS);
	[id(0x0000007f), propput, helpcontext(0x0001007f)]
	HRESULT __stdcall Left(
		[in]double RHS);
	[id(0x0000007e), propget, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[out, retval]double* RHS);
	[id(0x0000007e), propput, helpcontext(0x0001007e)]
	HRESULT __stdcall Top(
		[in]double RHS);
	[id(0x0000007a), propget, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[out, retval]double* RHS);
	[id(0x0000007a), propput, helpcontext(0x0001007a)]
	HRESULT __stdcall Width(
		[in]double RHS);
	[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[out, retval]VARIANT* RHS);
	[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[in]VARIANT RHS);
	[id(0x00000a58), propget, helpcontext(0x00010a58)]
	HRESULT __stdcall IncludeInLayout(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a58), propput, helpcontext(0x00010a58)]
	HRESULT __stdcall IncludeInLayout(
		[in]VARIANT_BOOL RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelILegend categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelILegend methodsFor!

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

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver."

	| answer |
	answer := ExcelBorder newPointer.
	self get_Border: answer.
	^answer asObject
!

clear
	"Answer the <VARIANT> result of invoking the Clear() method of the COM object."

	| answer |
	answer := VARIANT new.
	self Clear: answer.
	^answer asObject
!

Clear: rhs
	"Private - Invoke the Clear() method of the COM object.

		HRESULT __stdcall Clear(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 21 variant*>
	^self invalidCall!

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

	<virtual stdcall: hresult 14 variant*>
	^self invalidCall!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver."

	| answer |
	answer := ExcelChartFillFormat newPointer.
	self get_Fill: answer.
	^answer asObject
!

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

	<virtual stdcall: hresult 32 variant*>
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

get_Fill: rhs
	"Private - Get the value of the 'Fill' property of the receiver.

		HRESULT __stdcall Fill(
			[out, retval]ChartFillFormat** RHS);"

	<virtual stdcall: hresult 25 ExcelChartFillFormat**>
	^self invalidCall!

get_Font: rhs
	"Private - Get the value of the 'Font' property of the receiver.

		HRESULT __stdcall Font(
			[out, retval]Font** RHS);"

	<virtual stdcall: hresult 15 ExcelFont**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 36 ExcelChartFormat**>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 22 double*>
	^self invalidCall!

get_IncludeInLayout: rhs
	"Private - Get the value of the 'IncludeInLayout' property of the receiver.

		HRESULT __stdcall IncludeInLayout(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 34 varbool*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 24 ExcelInterior**>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 26 double*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 11 bstr*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Position: rhs
	"Private - Get the value of the 'Position' property of the receiver.

		HRESULT __stdcall Position(
			[out, retval]XlLegendPosition* RHS);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_Shadow: rhs
	"Private - Get the value of the 'Shadow' property of the receiver.

		HRESULT __stdcall Shadow(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 28 double*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 30 double*>
	^self invalidCall!

height
	"Answer the <double> value of the 'Height' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Height: answer.
	^answer asObject
!

height: rhs
	"Set the 'Height' property of the receiver to the <double> value of the argument."

	self put_Height: rhs
!

includeInLayout
	"Answer the <varbool> value of the 'IncludeInLayout' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_IncludeInLayout: answer.
	^answer asObject
!

includeInLayout: rhs
	"Set the 'IncludeInLayout' property of the receiver to the <varbool> value of the argument."

	self put_IncludeInLayout: rhs
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver."

	| answer |
	answer := ExcelInterior newPointer.
	self get_Interior: answer.
	^answer asObject
!

left
	"Answer the <double> value of the 'Left' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Left: answer.
	^answer asObject
!

left: rhs
	"Set the 'Left' property of the receiver to the <double> value of the argument."

	self put_Left: rhs
!

legendEntries
	"Answer the <IDispatch> result of invoking the LegendEntries() method of the COM object.
	Default values are passed for all optional parameters."

	^self legendEntries: VARIANT unspecified!

legendEntries: index
	"Answer the <IDispatch> result of invoking the LegendEntries() method of the COM object."

	| answer |
	answer := IDispatch newPointer.
	self
		LegendEntries: index asVariant
		rhs: answer.
	^answer asObject
!

LegendEntries: index rhs: rhs
	"Private - Invoke the LegendEntries() method of the COM object.

		HRESULT __stdcall LegendEntries(
			[in, optional]VARIANT Index,
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 16 variant IDispatch**>
	^self invalidCall!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

position
	"Answer the <sdword> value of the 'Position' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Position: answer.
	^answer asObject
!

position: rhs
	"Set the 'Position' property of the receiver to the <sdword> value of the argument."

	self put_Position: rhs
!

put_AutoScaleFont: rhs
	"Private - Set the value of the 'AutoScaleFont' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall AutoScaleFont(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 33 variant>
	^self invalidCall!

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Height(
			[in]double RHS);"

	<virtual stdcall: hresult 23 double>
	^self invalidCall!

put_IncludeInLayout: rhs
	"Private - Set the value of the 'IncludeInLayout' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall IncludeInLayout(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 35 varbool>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]double RHS);"

	<virtual stdcall: hresult 27 double>
	^self invalidCall!

put_Position: rhs
	"Private - Set the value of the 'Position' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Position(
			[in]XlLegendPosition RHS);"

	<virtual stdcall: hresult 18 sdword>
	^self invalidCall!

put_Shadow: rhs
	"Private - Set the value of the 'Shadow' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Shadow(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 29 double>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]double RHS);"

	<virtual stdcall: hresult 31 double>
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

	<virtual stdcall: hresult 12 variant*>
	^self invalidCall!

shadow
	"Answer the <varbool> value of the 'Shadow' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Shadow: answer.
	^answer asObject
!

shadow: rhs
	"Set the 'Shadow' property of the receiver to the <varbool> value of the argument."

	self put_Shadow: rhs
!

top
	"Answer the <double> value of the 'Top' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Top: answer.
	^answer asObject
!

top: rhs
	"Set the 'Top' property of the receiver to the <double> value of the argument."

	self put_Top: rhs
!

width
	"Answer the <double> value of the 'Width' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_Width: answer.
	^answer asObject
!

width: rhs
	"Set the 'Width' property of the receiver to the <double> value of the argument."

	self put_Width: rhs
! !
!ExcelILegend categoriesFor: #application!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #border!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelILegend categoriesFor: #Clear:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelILegend categoriesFor: #Delete:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #font!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #format!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_AutoScaleFont:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Border:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Font:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Format:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Height:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_IncludeInLayout:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Left:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Position:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Shadow:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Top:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #get_Width:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #height!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #includeInLayout!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #includeInLayout:!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #left!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #legendEntries!**auto generated**!methods!public! !
!ExcelILegend categoriesFor: #legendEntries:!**auto generated**!methods!public! !
!ExcelILegend categoriesFor: #LegendEntries:rhs:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #name!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #position!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #put_AutoScaleFont:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #put_Height:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #put_IncludeInLayout:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #put_Left:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #put_Position:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #put_Shadow:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #put_Top:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #put_Width:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #select!**auto generated**!methods!public! !
!ExcelILegend categoriesFor: #Select:!**auto generated**!COM Interfaces-ILegend!private! !
!ExcelILegend categoriesFor: #shadow!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #shadow:!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #top!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #width!**auto generated**!properties!public! !
!ExcelILegend categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelILegend class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ILegend'
		ExcelILegend defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #Delete:
			argumentTypes: 'variant*';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #LegendEntries:rhs:
			argumentTypes: 'variant IDispatch**';
		defineFunction: #get_Position:
			argumentTypes: 'sdword*';
		defineFunction: #put_Position:
			argumentTypes: 'sdword';
		defineFunction: #get_Shadow:
			argumentTypes: 'varbool*';
		defineFunction: #put_Shadow:
			argumentTypes: 'varbool';
		defineFunction: #Clear:
			argumentTypes: 'variant*';
		defineFunction: #get_Height:
			argumentTypes: 'double*';
		defineFunction: #put_Height:
			argumentTypes: 'double';
		defineFunction: #get_Interior:
			argumentTypes: 'ExcelInterior**';
		defineFunction: #get_Fill:
			argumentTypes: 'ExcelChartFillFormat**';
		defineFunction: #get_Left:
			argumentTypes: 'double*';
		defineFunction: #put_Left:
			argumentTypes: 'double';
		defineFunction: #get_Top:
			argumentTypes: 'double*';
		defineFunction: #put_Top:
			argumentTypes: 'double';
		defineFunction: #get_Width:
			argumentTypes: 'double*';
		defineFunction: #put_Width:
			argumentTypes: 'double';
		defineFunction: #get_AutoScaleFont:
			argumentTypes: 'variant*';
		defineFunction: #put_AutoScaleFont:
			argumentTypes: 'variant';
		defineFunction: #get_IncludeInLayout:
			argumentTypes: 'varbool*';
		defineFunction: #put_IncludeInLayout:
			argumentTypes: 'varbool';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelILegend initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelILegend class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelILegend class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

