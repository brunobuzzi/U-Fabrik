"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIDataTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIDataTable guid: (IID fromString: '{00020843-0001-0000-C000-000000000046}')!
ExcelIDataTable comment: '<ExcelIDataTable> is a wrapper class for the COM interface ''Excel.IDataTable'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00020843-0001-0000-C000-000000000046), 
	helpcontext(0x00020003), 
	hidden
]
interface IDataTable : IDispatch
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
	[id(0x000000ab), propget, helpcontext(0x000100ab)]
	HRESULT __stdcall ShowLegendKey(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000000ab), propput, helpcontext(0x000100ab)]
	HRESULT __stdcall ShowLegendKey(
		[in]VARIANT_BOOL RHS);
	[id(0x00000687), propget, helpcontext(0x00010687)]
	HRESULT __stdcall HasBorderHorizontal(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000687), propput, helpcontext(0x00010687)]
	HRESULT __stdcall HasBorderHorizontal(
		[in]VARIANT_BOOL RHS);
	[id(0x00000688), propget, helpcontext(0x00010688)]
	HRESULT __stdcall HasBorderVertical(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000688), propput, helpcontext(0x00010688)]
	HRESULT __stdcall HasBorderVertical(
		[in]VARIANT_BOOL RHS);
	[id(0x00000689), propget, helpcontext(0x00010689)]
	HRESULT __stdcall HasBorderOutline(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000689), propput, helpcontext(0x00010689)]
	HRESULT __stdcall HasBorderOutline(
		[in]VARIANT_BOOL RHS);
	[id(0x00000080), propget, helpcontext(0x00010080)]
	HRESULT __stdcall Border(
		[out, retval]Border** RHS);
	[id(0x00000092), propget, helpcontext(0x00010092)]
	HRESULT __stdcall Font(
		[out, retval]Font** RHS);
	[id(0x000000eb), helpcontext(0x000100eb)]
	HRESULT __stdcall Select();
	[id(0x00000075), helpcontext(0x00010075)]
	HRESULT __stdcall Delete();
	[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[out, retval]VARIANT* RHS);
	[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
	HRESULT __stdcall AutoScaleFont(
		[in]VARIANT RHS);
	[id(0x00000074), propget, helpcontext(0x00010074)]
	HRESULT __stdcall Format(
		[out, retval]ChartFormat** RHS);
};
'!
!ExcelIDataTable categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIDataTable methodsFor!

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

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

delete
	"Invoke the Delete() method of the COM object."

	^self Delete
!

Delete
	"Private - Invoke the Delete() method of the COM object.

		HRESULT __stdcall Delete();"

	<virtual stdcall: hresult 22>
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

	<virtual stdcall: hresult 23 variant*>
	^self invalidCall!

get_Border: rhs
	"Private - Get the value of the 'Border' property of the receiver.

		HRESULT __stdcall Border(
			[out, retval]Border** RHS);"

	<virtual stdcall: hresult 19 ExcelBorder**>
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

	<virtual stdcall: hresult 20 ExcelFont**>
	^self invalidCall!

get_Format: rhs
	"Private - Get the value of the 'Format' property of the receiver.

		HRESULT __stdcall Format(
			[out, retval]ChartFormat** RHS);"

	<virtual stdcall: hresult 25 ExcelChartFormat**>
	^self invalidCall!

get_HasBorderHorizontal: rhs
	"Private - Get the value of the 'HasBorderHorizontal' property of the receiver.

		HRESULT __stdcall HasBorderHorizontal(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_HasBorderOutline: rhs
	"Private - Get the value of the 'HasBorderOutline' property of the receiver.

		HRESULT __stdcall HasBorderOutline(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_HasBorderVertical: rhs
	"Private - Get the value of the 'HasBorderVertical' property of the receiver.

		HRESULT __stdcall HasBorderVertical(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_ShowLegendKey: rhs
	"Private - Get the value of the 'ShowLegendKey' property of the receiver.

		HRESULT __stdcall ShowLegendKey(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

hasBorderHorizontal
	"Answer the <varbool> value of the 'HasBorderHorizontal' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasBorderHorizontal: answer.
	^answer asObject
!

hasBorderHorizontal: rhs
	"Set the 'HasBorderHorizontal' property of the receiver to the <varbool> value of the argument."

	self put_HasBorderHorizontal: rhs
!

hasBorderOutline
	"Answer the <varbool> value of the 'HasBorderOutline' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasBorderOutline: answer.
	^answer asObject
!

hasBorderOutline: rhs
	"Set the 'HasBorderOutline' property of the receiver to the <varbool> value of the argument."

	self put_HasBorderOutline: rhs
!

hasBorderVertical
	"Answer the <varbool> value of the 'HasBorderVertical' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_HasBorderVertical: answer.
	^answer asObject
!

hasBorderVertical: rhs
	"Set the 'HasBorderVertical' property of the receiver to the <varbool> value of the argument."

	self put_HasBorderVertical: rhs
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

	<virtual stdcall: hresult 24 variant>
	^self invalidCall!

put_HasBorderHorizontal: rhs
	"Private - Set the value of the 'HasBorderHorizontal' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasBorderHorizontal(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

put_HasBorderOutline: rhs
	"Private - Set the value of the 'HasBorderOutline' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasBorderOutline(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_HasBorderVertical: rhs
	"Private - Set the value of the 'HasBorderVertical' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall HasBorderVertical(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 16 varbool>
	^self invalidCall!

put_ShowLegendKey: rhs
	"Private - Set the value of the 'ShowLegendKey' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ShowLegendKey(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

select
	"Invoke the Select() method of the COM object."

	^self Select
!

Select
	"Private - Invoke the Select() method of the COM object.

		HRESULT __stdcall Select();"

	<virtual stdcall: hresult 21>
	^self invalidCall!

showLegendKey
	"Answer the <varbool> value of the 'ShowLegendKey' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ShowLegendKey: answer.
	^answer asObject
!

showLegendKey: rhs
	"Set the 'ShowLegendKey' property of the receiver to the <varbool> value of the argument."

	self put_ShowLegendKey: rhs
! !
!ExcelIDataTable categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #border!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelIDataTable categoriesFor: #Delete!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #font!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #format!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_AutoScaleFont:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_Border:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_Font:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_Format:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_HasBorderHorizontal:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_HasBorderOutline:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_HasBorderVertical:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #get_ShowLegendKey:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #hasBorderHorizontal!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #hasBorderHorizontal:!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #hasBorderOutline!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #hasBorderOutline:!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #hasBorderVertical!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #hasBorderVertical:!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #put_AutoScaleFont:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #put_HasBorderHorizontal:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #put_HasBorderOutline:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #put_HasBorderVertical:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #put_ShowLegendKey:!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #select!**auto generated**!methods!public! !
!ExcelIDataTable categoriesFor: #Select!**auto generated**!COM Interfaces-IDataTable!private! !
!ExcelIDataTable categoriesFor: #showLegendKey!**auto generated**!properties!public! !
!ExcelIDataTable categoriesFor: #showLegendKey:!**auto generated**!properties!public! !

!ExcelIDataTable class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IDataTable'
		ExcelIDataTable defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_ShowLegendKey:
			argumentTypes: 'varbool*';
		defineFunction: #put_ShowLegendKey:
			argumentTypes: 'varbool';
		defineFunction: #get_HasBorderHorizontal:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasBorderHorizontal:
			argumentTypes: 'varbool';
		defineFunction: #get_HasBorderVertical:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasBorderVertical:
			argumentTypes: 'varbool';
		defineFunction: #get_HasBorderOutline:
			argumentTypes: 'varbool*';
		defineFunction: #put_HasBorderOutline:
			argumentTypes: 'varbool';
		defineFunction: #get_Border:
			argumentTypes: 'ExcelBorder**';
		defineFunction: #get_Font:
			argumentTypes: 'ExcelFont**';
		defineFunction: #Select;
		defineFunction: #Delete;
		defineFunction: #get_AutoScaleFont:
			argumentTypes: 'variant*';
		defineFunction: #put_AutoScaleFont:
			argumentTypes: 'variant';
		defineFunction: #get_Format:
			argumentTypes: 'ExcelChartFormat**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIDataTable initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIDataTable class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIDataTable class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

