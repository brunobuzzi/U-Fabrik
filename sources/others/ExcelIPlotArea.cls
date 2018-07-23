"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPlotArea
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPlotArea guid: (IID fromString: '{000208CB-0001-0000-C000-000000000046}')!
ExcelIPlotArea comment: '<ExcelIPlotArea> is a wrapper class for the COM interface ''Excel.IPlotArea'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208CB-0001-0000-C000-000000000046), 
	helpcontext(0x0002008a), 
	hidden
]
interface IPlotArea : IDispatch
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
	[id(0x00000070), helpcontext(0x00010070)]
	HRESULT __stdcall ClearFormats(
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
	[id(0x00000a5e), hidden, propget, helpcontext(0x00010a5e)]
	HRESULT __stdcall _InsideLeft(
		[out, retval]double* RHS);
	[id(0x00000a5f), hidden, propget, helpcontext(0x00010a5f)]
	HRESULT __stdcall _InsideTop(
		[out, retval]double* RHS);
	[id(0x00000a60), hidden, propget, helpcontext(0x00010a60)]
	HRESULT __stdcall _InsideWidth(
		[out, retval]double* RHS);
	[id(0x00000a61), hidden, propget, helpcontext(0x00010a61)]
	HRESULT __stdcall _InsideHeight(
		[out, retval]double* RHS);
	[id(0x00000683), propget, helpcontext(0x00010683)]
	HRESULT __stdcall InsideLeft(
		[out, retval]double* RHS);
	[id(0x00000683), propput, helpcontext(0x00010683)]
	HRESULT __stdcall InsideLeft(
		[in]double RHS);
	[id(0x00000684), propget, helpcontext(0x00010684)]
	HRESULT __stdcall InsideTop(
		[out, retval]double* RHS);
	[id(0x00000684), propput, helpcontext(0x00010684)]
	HRESULT __stdcall InsideTop(
		[in]double RHS);
	[id(0x00000685), propget, helpcontext(0x00010685)]
	HRESULT __stdcall InsideWidth(
		[out, retval]double* RHS);
	[id(0x00000685), propput, helpcontext(0x00010685)]
	HRESULT __stdcall InsideWidth(
		[in]double RHS);
	[id(0x00000686), propget, helpcontext(0x00010686)]
	HRESULT __stdcall InsideHeight(
		[out, retval]double* RHS);
	[id(0x00000686), propput, helpcontext(0x00010686)]
	HRESULT __stdcall InsideHeight(
		[in]double RHS);
	[id(0x00000085), propget, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[out, retval]XlChartElementPosition* RHS);
	[id(0x00000085), propput, helpcontext(0x00010085)]
	HRESULT __stdcall Position(
		[in]XlChartElementPosition RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelIPlotArea categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPlotArea methodsFor!

_insideHeight
	"Answer the <double> value of the '_InsideHeight' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get__InsideHeight: answer.
	^answer asObject
!

_insideLeft
	"Answer the <double> value of the '_InsideLeft' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get__InsideLeft: answer.
	^answer asObject
!

_insideTop
	"Answer the <double> value of the '_InsideTop' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get__InsideTop: answer.
	^answer asObject
!

_insideWidth
	"Answer the <double> value of the '_InsideWidth' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get__InsideWidth: answer.
	^answer asObject
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
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

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver."

	| answer |
	answer := ExcelChartFillFormat newPointer.
	self get_Fill: answer.
	^answer asObject
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver."

	| answer |
	answer := ExcelChartFormat newPointer.
	self get_Format: answer.
	^answer asObject
!

get__InsideHeight: rhs
	"Private - Get the value of the '_InsideHeight' property of the receiver.

		HRESULT __stdcall _InsideHeight(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 28 double*>
	^self invalidCall!

get__InsideLeft: rhs
	"Private - Get the value of the '_InsideLeft' property of the receiver.

		HRESULT __stdcall _InsideLeft(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 25 double*>
	^self invalidCall!

get__InsideTop: rhs
	"Private - Get the value of the '_InsideTop' property of the receiver.

		HRESULT __stdcall _InsideTop(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 26 double*>
	^self invalidCall!

get__InsideWidth: rhs
	"Private - Get the value of the '_InsideWidth' property of the receiver.

		HRESULT __stdcall _InsideWidth(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 27 double*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
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

	<virtual stdcall: hresult 18 ExcelChartFillFormat**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 39 ExcelChartFormat**>
	^self invalidCall!

get_Height: rhs
	"Private - Get the value of the 'Height' property of the receiver.

		HRESULT __stdcall Height(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 15 double*>
	^self invalidCall!

get_InsideHeight: rhs
	"Private - Get the value of the 'InsideHeight' property of the receiver.

		HRESULT __stdcall InsideHeight(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 35 double*>
	^self invalidCall!

get_InsideLeft: rhs
	"Private - Get the value of the 'InsideLeft' property of the receiver.

		HRESULT __stdcall InsideLeft(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 29 double*>
	^self invalidCall!

get_InsideTop: rhs
	"Private - Get the value of the 'InsideTop' property of the receiver.

		HRESULT __stdcall InsideTop(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 31 double*>
	^self invalidCall!

get_InsideWidth: rhs
	"Private - Get the value of the 'InsideWidth' property of the receiver.

		HRESULT __stdcall InsideWidth(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 33 double*>
	^self invalidCall!

get_Interior: rhs
	"Private - Get the value of the 'Interior' property of the receiver.

		HRESULT __stdcall Interior(
			[out, retval]Interior** RHS);"

	<virtual stdcall: hresult 17 ExcelInterior**>
	^self invalidCall!

get_Left: rhs
	"Private - Get the value of the 'Left' property of the receiver.

		HRESULT __stdcall Left(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 19 double*>
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
			[out, retval]XlChartElementPosition* RHS);"

	<virtual stdcall: hresult 37 sdword*>
	^self invalidCall!

get_Top: rhs
	"Private - Get the value of the 'Top' property of the receiver.

		HRESULT __stdcall Top(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 21 double*>
	^self invalidCall!

get_Width: rhs
	"Private - Get the value of the 'Width' property of the receiver.

		HRESULT __stdcall Width(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 23 double*>
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

insideHeight
	"Answer the <double> value of the 'InsideHeight' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_InsideHeight: answer.
	^answer asObject
!

insideHeight: rhs
	"Set the 'InsideHeight' property of the receiver to the <double> value of the argument."

	self put_InsideHeight: rhs
!

insideLeft
	"Answer the <double> value of the 'InsideLeft' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_InsideLeft: answer.
	^answer asObject
!

insideLeft: rhs
	"Set the 'InsideLeft' property of the receiver to the <double> value of the argument."

	self put_InsideLeft: rhs
!

insideTop
	"Answer the <double> value of the 'InsideTop' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_InsideTop: answer.
	^answer asObject
!

insideTop: rhs
	"Set the 'InsideTop' property of the receiver to the <double> value of the argument."

	self put_InsideTop: rhs
!

insideWidth
	"Answer the <double> value of the 'InsideWidth' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_InsideWidth: answer.
	^answer asObject
!

insideWidth: rhs
	"Set the 'InsideWidth' property of the receiver to the <double> value of the argument."

	self put_InsideWidth: rhs
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

put_Height: rhs
	"Private - Set the value of the 'Height' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Height(
			[in]double RHS);"

	<virtual stdcall: hresult 16 double>
	^self invalidCall!

put_InsideHeight: rhs
	"Private - Set the value of the 'InsideHeight' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall InsideHeight(
			[in]double RHS);"

	<virtual stdcall: hresult 36 double>
	^self invalidCall!

put_InsideLeft: rhs
	"Private - Set the value of the 'InsideLeft' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall InsideLeft(
			[in]double RHS);"

	<virtual stdcall: hresult 30 double>
	^self invalidCall!

put_InsideTop: rhs
	"Private - Set the value of the 'InsideTop' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall InsideTop(
			[in]double RHS);"

	<virtual stdcall: hresult 32 double>
	^self invalidCall!

put_InsideWidth: rhs
	"Private - Set the value of the 'InsideWidth' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall InsideWidth(
			[in]double RHS);"

	<virtual stdcall: hresult 34 double>
	^self invalidCall!

put_Left: rhs
	"Private - Set the value of the 'Left' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Left(
			[in]double RHS);"

	<virtual stdcall: hresult 20 double>
	^self invalidCall!

put_Position: rhs
	"Private - Set the value of the 'Position' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Position(
			[in]XlChartElementPosition RHS);"

	<virtual stdcall: hresult 38 sdword>
	^self invalidCall!

put_Top: rhs
	"Private - Set the value of the 'Top' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Top(
			[in]double RHS);"

	<virtual stdcall: hresult 22 double>
	^self invalidCall!

put_Width: rhs
	"Private - Set the value of the 'Width' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall Width(
			[in]double RHS);"

	<virtual stdcall: hresult 24 double>
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
!ExcelIPlotArea categoriesFor: #_insideHeight!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #_insideLeft!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #_insideTop!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #_insideWidth!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelIPlotArea categoriesFor: #ClearFormats:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #format!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #get__InsideHeight:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get__InsideLeft:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get__InsideTop:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get__InsideWidth:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Fill:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Format:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Height:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_InsideHeight:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_InsideLeft:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_InsideTop:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_InsideWidth:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Interior:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Left:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Name:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Position:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Top:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #get_Width:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #height!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #height:!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #insideHeight!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #insideHeight:!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #insideLeft!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #insideLeft:!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #insideTop!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #insideTop:!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #insideWidth!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #insideWidth:!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #left!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #left:!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #name!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #position!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #put_Height:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #put_InsideHeight:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #put_InsideLeft:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #put_InsideTop:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #put_InsideWidth:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #put_Left:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #put_Position:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #put_Top:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #put_Width:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIPlotArea categoriesFor: #Select:!**auto generated**!COM Interfaces-IPlotArea!private! !
!ExcelIPlotArea categoriesFor: #top!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #top:!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #width!**auto generated**!properties!public! !
!ExcelIPlotArea categoriesFor: #width:!**auto generated**!properties!public! !

!ExcelIPlotArea class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPlotArea'
		ExcelIPlotArea defineTemplate"

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
		defineFunction: #ClearFormats:
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
		defineFunction: #get__InsideLeft:
			argumentTypes: 'double*';
		defineFunction: #get__InsideTop:
			argumentTypes: 'double*';
		defineFunction: #get__InsideWidth:
			argumentTypes: 'double*';
		defineFunction: #get__InsideHeight:
			argumentTypes: 'double*';
		defineFunction: #get_InsideLeft:
			argumentTypes: 'double*';
		defineFunction: #put_InsideLeft:
			argumentTypes: 'double';
		defineFunction: #get_InsideTop:
			argumentTypes: 'double*';
		defineFunction: #put_InsideTop:
			argumentTypes: 'double';
		defineFunction: #get_InsideWidth:
			argumentTypes: 'double*';
		defineFunction: #put_InsideWidth:
			argumentTypes: 'double';
		defineFunction: #get_InsideHeight:
			argumentTypes: 'double*';
		defineFunction: #put_InsideHeight:
			argumentTypes: 'double';
		defineFunction: #get_Position:
			argumentTypes: 'sdword*';
		defineFunction: #put_Position:
			argumentTypes: 'sdword';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPlotArea initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPlotArea class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPlotArea class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

