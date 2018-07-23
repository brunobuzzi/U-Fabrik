"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelITickLabels
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelITickLabels guid: (IID fromString: '{000208C9-0001-0000-C000-000000000046}')!
ExcelITickLabels comment: '<ExcelITickLabels> is a wrapper class for the COM interface ''Excel.ITickLabels'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208C9-0001-0000-C000-000000000046), 
	helpcontext(0x00020089), 
	hidden
]
interface ITickLabels : IDispatch
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
	[id(0x0000006e), propget, helpcontext(0x0001006e)]
	HRESULT __stdcall Name(
		[out, retval]BSTR* RHS);
	[id(0x000000c1), propget, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[out, retval]BSTR* RHS);
	[id(0x000000c1), propput, helpcontext(0x000100c1)]
	HRESULT __stdcall NumberFormat(
		[in]BSTR RHS);
	[id(0x000000c2), propget, helpcontext(0x000100c2)]
	HRESULT __stdcall NumberFormatLinked(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000c2), propput, helpcontext(0x000100c2)]
	HRESULT __stdcall NumberFormatLinked(
		[in]VARIANT_BOOL RHS);
	[id(0x00000449), propget, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[out, retval]VARIANT* RHS);
	[id(0x00000449), propput, helpcontext(0x00010449)]
	HRESULT __stdcall NumberFormatLocal(
		[in]VARIANT RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]XlTickLabelOrientation* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]XlTickLabelOrientation RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select(
		[out, retval]VARIANT* RHS);
	[id(0x000003cf), propget, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[out, retval]long* RHS);
	[id(0x000003cf), propput, helpcontext(0x000103cf)]
	HRESULT __stdcall ReadingOrder(
		[in]long RHS);
	[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[out, retval]VARIANT* RHS);
	[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[in]VARIANT RHS);
	[id(0x00000762), propget, helpcontext(0x00010762)]
	HRESULT __stdcall Depth(
		[out, retval]long* RHS);
	[id(0x000000fe), propget, helpcontext(0x000100fe)]
	HRESULT __stdcall Offset(
		[out, retval]long* RHS);
	[id(0x000000fe), propput, helpcontext(0x000100fe)]
	HRESULT __stdcall Offset(
		[in]long RHS);
	[id(0x000001c5), propget, helpcontext(0x000101c5)]
	HRESULT __stdcall Alignment(
		[out, retval]long* RHS);
	[id(0x000001c5), propput, helpcontext(0x000101c5)]
	HRESULT __stdcall Alignment(
		[in]long RHS);
	[id(0x00000a5d), propget, helpcontext(0x00010a5d)]
	HRESULT __stdcall MultiLevel(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a5d), propput, helpcontext(0x00010a5d)]
	HRESULT __stdcall MultiLevel(
		[in]VARIANT_BOOL RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelITickLabels categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelITickLabels methodsFor!

alignment: rhs
	"Set the 'Alignment' property of the receiver to the <sdword> value of the argument."

	self put_Alignment: rhs
!

alignment_
	"Answer the <sdword> value of the 'Alignment' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Alignment: answer.
	^answer asObject
!

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

depth
	"Answer the <sdword> value of the 'Depth' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Depth: answer.
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

get_Alignment: rhs
	"Private - Get the value of the 'Alignment' property of the receiver.

		HRESULT __stdcall Alignment(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

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

	<virtual stdcall: hresult 25 variant*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_Depth: rhs
	"Private - Get the value of the 'Depth' property of the receiver.

		HRESULT __stdcall Depth(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 27 sdword*>
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

	<virtual stdcall: hresult 34 ExcelChartFormat**>
	^self invalidCall!

get_MultiLevel: rhs
	"Private - Get the value of the 'MultiLevel' property of the receiver.

		HRESULT __stdcall MultiLevel(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 32 varbool*>
	^self invalidCall!

get_Name: rhs
	"Private - Get the value of the 'Name' property of the receiver.

		HRESULT __stdcall Name(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 13 bstr*>
	^self invalidCall!

get_NumberFormat: rhs
	"Private - Get the value of the 'NumberFormat' property of the receiver.

		HRESULT __stdcall NumberFormat(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 14 bstr*>
	^self invalidCall!

get_NumberFormatLinked: rhs
	"Private - Get the value of the 'NumberFormatLinked' property of the receiver.

		HRESULT __stdcall NumberFormatLinked(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_NumberFormatLocal: rhs
	"Private - Get the value of the 'NumberFormatLocal' property of the receiver.

		HRESULT __stdcall NumberFormatLocal(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 18 variant*>
	^self invalidCall!

get_Offset: rhs
	"Private - Get the value of the 'Offset' property of the receiver.

		HRESULT __stdcall Offset(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]XlTickLabelOrientation* RHS);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ReadingOrder: rhs
	"Private - Get the value of the 'ReadingOrder' property of the receiver.

		HRESULT __stdcall ReadingOrder(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

multiLevel
	"Answer the <varbool> value of the 'MultiLevel' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_MultiLevel: answer.
	^answer asObject
!

multiLevel: rhs
	"Set the 'MultiLevel' property of the receiver to the <varbool> value of the argument."

	self put_MultiLevel: rhs
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_Name: answer.
	^answer asObject
!

numberFormat
	"Answer the <bstr> value of the 'NumberFormat' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_NumberFormat: answer.
	^answer asObject
!

numberFormat: rhs
	"Set the 'NumberFormat' property of the receiver to the <bstr> value of the argument."

	self put_NumberFormat: rhs
!

numberFormatLinked
	"Answer the <varbool> value of the 'NumberFormatLinked' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_NumberFormatLinked: answer.
	^answer asObject
!

numberFormatLinked: rhs
	"Set the 'NumberFormatLinked' property of the receiver to the <varbool> value of the argument."

	self put_NumberFormatLinked: rhs
!

numberFormatLocal
	"Answer the <variant> value of the 'NumberFormatLocal' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_NumberFormatLocal: answer.
	^answer asObject
!

numberFormatLocal: rhs
	"Set the 'NumberFormatLocal' property of the receiver to the <variant> value of the argument."

	self put_NumberFormatLocal: rhs asVariant
!

offset
	"Answer the <sdword> value of the 'Offset' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Offset: answer.
	^answer asObject
!

offset: rhs
	"Set the 'Offset' property of the receiver to the <sdword> value of the argument."

	self put_Offset: rhs
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Orientation: answer.
	^answer asObject
!

orientation: rhs
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument."

	self put_Orientation: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_Alignment: rhs
	"Private - Set the value of the 'Alignment' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Alignment(
			[in]long RHS);"

	<virtual stdcall: hresult 31 sdword>
	^self invalidCall!

put_AutoScaleFont: rhs
	"Private - Set the value of the 'AutoScaleFont' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall AutoScaleFont(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 26 variant>
	^self invalidCall!

put_MultiLevel: rhs
	"Private - Set the value of the 'MultiLevel' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall MultiLevel(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 33 varbool>
	^self invalidCall!

put_NumberFormat: rhs
	"Private - Set the value of the 'NumberFormat' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall NumberFormat(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 15 bstr>
	^self invalidCall!

put_NumberFormatLinked: rhs
	"Private - Set the value of the 'NumberFormatLinked' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall NumberFormatLinked(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 17 varbool>
	^self invalidCall!

put_NumberFormatLocal: rhs
	"Private - Set the value of the 'NumberFormatLocal' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall NumberFormatLocal(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 19 variant>
	^self invalidCall!

put_Offset: rhs
	"Private - Set the value of the 'Offset' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Offset(
			[in]long RHS);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]XlTickLabelOrientation RHS);"

	<virtual stdcall: hresult 21 sdword>
	^self invalidCall!

put_ReadingOrder: rhs
	"Private - Set the value of the 'ReadingOrder' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ReadingOrder(
			[in]long RHS);"

	<virtual stdcall: hresult 24 sdword>
	^self invalidCall!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ReadingOrder: answer.
	^answer asObject
!

readingOrder: rhs
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument."

	self put_ReadingOrder: rhs
!

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

	<virtual stdcall: hresult 22 variant*>
	^self invalidCall! !
!ExcelITickLabels categoriesFor: #alignment:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #alignment_!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #application!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelITickLabels categoriesFor: #Delete:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #depth!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #font!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #format!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #get_Alignment:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Application:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_AutoScaleFont:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Depth:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Font:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Format:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_MultiLevel:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Name:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_NumberFormat:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_NumberFormatLinked:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_NumberFormatLocal:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Offset:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #get_ReadingOrder:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #multiLevel!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #multiLevel:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #name!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #numberFormatLinked!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #numberFormatLinked:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #offset!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #offset:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #put_Alignment:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #put_AutoScaleFont:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #put_MultiLevel:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #put_NumberFormat:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #put_NumberFormatLinked:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #put_NumberFormatLocal:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #put_Offset:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #put_ReadingOrder:!**auto generated**!COM Interfaces-ITickLabels!private! !
!ExcelITickLabels categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelITickLabels categoriesFor: #select!**auto generated**!methods!public! !
!ExcelITickLabels categoriesFor: #Select:!**auto generated**!COM Interfaces-ITickLabels!private! !

!ExcelITickLabels class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ITickLabels'
		ExcelITickLabels defineTemplate"

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
		defineFunction: #get_Name:
			argumentTypes: 'bstr*';
		defineFunction: #get_NumberFormat:
			argumentTypes: 'bstr*';
		defineFunction: #put_NumberFormat:
			argumentTypes: 'bstr';
		defineFunction: #get_NumberFormatLinked:
			argumentTypes: 'varbool*';
		defineFunction: #put_NumberFormatLinked:
			argumentTypes: 'varbool';
		defineFunction: #get_NumberFormatLocal:
			argumentTypes: 'variant*';
		defineFunction: #put_NumberFormatLocal:
			argumentTypes: 'variant';
		defineFunction: #get_Orientation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Orientation:
			argumentTypes: 'sdword';
		defineFunction: #Select:
			argumentTypes: 'variant*';
		defineFunction: #get_ReadingOrder:
			argumentTypes: 'sdword*';
		defineFunction: #put_ReadingOrder:
			argumentTypes: 'sdword';
		defineFunction: #get_AutoScaleFont:
			argumentTypes: 'variant*';
		defineFunction: #put_AutoScaleFont:
			argumentTypes: 'variant';
		defineFunction: #get_Depth:
			argumentTypes: 'sdword*';
		defineFunction: #get_Offset:
			argumentTypes: 'sdword*';
		defineFunction: #put_Offset:
			argumentTypes: 'sdword';
		defineFunction: #get_Alignment:
			argumentTypes: 'sdword*';
		defineFunction: #put_Alignment:
			argumentTypes: 'sdword';
		defineFunction: #get_MultiLevel:
			argumentTypes: 'varbool*';
		defineFunction: #put_MultiLevel:
			argumentTypes: 'varbool';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelITickLabels initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelITickLabels class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelITickLabels class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

