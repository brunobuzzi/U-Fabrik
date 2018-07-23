"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIOutline
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIOutline guid: (IID fromString: '{000208AB-0001-0000-C000-000000000046}')!
ExcelIOutline comment: '<ExcelIOutline> is a wrapper class for the COM interface ''Excel.IOutline'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208AB-0001-0000-C000-000000000046), 
	helpcontext(0x0002006b), 
	hidden
]
interface IOutline : IDispatch
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
	[id(0x000003bf), propget, helpcontext(0x000103bf)]
	HRESULT __stdcall AutomaticStyles(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003bf), propput, helpcontext(0x000103bf)]
	HRESULT __stdcall AutomaticStyles(
		[in]VARIANT_BOOL RHS);
	[id(0x000003c0), helpcontext(0x000103c0)]
	HRESULT __stdcall ShowLevels(
		[in, optional]VARIANT RowLevels,
		[in, optional]VARIANT ColumnLevels,
		[out, retval]VARIANT* RHS);
	[id(0x000003c1), propget, helpcontext(0x000103c1)]
	HRESULT __stdcall SummaryColumn(
		[out, retval]XlSummaryColumn* RHS);
	[id(0x000003c1), propput, helpcontext(0x000103c1)]
	HRESULT __stdcall SummaryColumn(
		[in]XlSummaryColumn RHS);
	[id(0x00000386), propget, helpcontext(0x00010386)]
	HRESULT __stdcall SummaryRow(
		[out, retval]XlSummaryRow* RHS);
	[id(0x00000386), propput, helpcontext(0x00010386)]
	HRESULT __stdcall SummaryRow(
		[in]XlSummaryRow RHS);
};
'!
!ExcelIOutline categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIOutline methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

automaticStyles
	"Answer the <varbool> value of the 'AutomaticStyles' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AutomaticStyles: answer.
	^answer asObject
!

automaticStyles: rhs
	"Set the 'AutomaticStyles' property of the receiver to the <varbool> value of the argument."

	self put_AutomaticStyles: rhs
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

get_AutomaticStyles: rhs
	"Private - Get the value of the 'AutomaticStyles' property of the receiver.

		HRESULT __stdcall AutomaticStyles(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
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

get_SummaryColumn: rhs
	"Private - Get the value of the 'SummaryColumn' property of the receiver.

		HRESULT __stdcall SummaryColumn(
			[out, retval]XlSummaryColumn* RHS);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_SummaryRow: rhs
	"Private - Get the value of the 'SummaryRow' property of the receiver.

		HRESULT __stdcall SummaryRow(
			[out, retval]XlSummaryRow* RHS);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

put_AutomaticStyles: rhs
	"Private - Set the value of the 'AutomaticStyles' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AutomaticStyles(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_SummaryColumn: rhs
	"Private - Set the value of the 'SummaryColumn' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SummaryColumn(
			[in]XlSummaryColumn RHS);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

put_SummaryRow: rhs
	"Private - Set the value of the 'SummaryRow' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall SummaryRow(
			[in]XlSummaryRow RHS);"

	<virtual stdcall: hresult 17 sdword>
	^self invalidCall!

showLevels
	"Answer the <VARIANT> result of invoking the ShowLevels() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 showLevels: VARIANT unspecified
		 columnLevels: VARIANT unspecified!

showLevels: rowLevels columnLevels: columnLevels
	"Answer the <VARIANT> result of invoking the ShowLevels() method of the COM object."

	| answer |
	answer := VARIANT new.
	self
		ShowLevels: rowLevels asVariant
		columnLevels: columnLevels asVariant
		rhs: answer.
	^answer asObject
!

ShowLevels: rowLevels columnLevels: columnLevels rhs: rhs
	"Private - Invoke the ShowLevels() method of the COM object.

		HRESULT __stdcall ShowLevels(
			[in, optional]VARIANT RowLevels,
			[in, optional]VARIANT ColumnLevels,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 13 variant variant variant*>
	^self invalidCall!

summaryColumn
	"Answer the <sdword> value of the 'SummaryColumn' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SummaryColumn: answer.
	^answer asObject
!

summaryColumn: rhs
	"Set the 'SummaryColumn' property of the receiver to the <sdword> value of the argument."

	self put_SummaryColumn: rhs
!

summaryRow
	"Answer the <sdword> value of the 'SummaryRow' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_SummaryRow: answer.
	^answer asObject
!

summaryRow: rhs
	"Set the 'SummaryRow' property of the receiver to the <sdword> value of the argument."

	self put_SummaryRow: rhs
! !
!ExcelIOutline categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIOutline categoriesFor: #automaticStyles!**auto generated**!properties!public! !
!ExcelIOutline categoriesFor: #automaticStyles:!**auto generated**!properties!public! !
!ExcelIOutline categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIOutline categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #get_AutomaticStyles:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #get_SummaryColumn:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #get_SummaryRow:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIOutline categoriesFor: #put_AutomaticStyles:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #put_SummaryColumn:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #put_SummaryRow:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #showLevels!**auto generated**!methods!public! !
!ExcelIOutline categoriesFor: #showLevels:columnLevels:!**auto generated**!methods!public! !
!ExcelIOutline categoriesFor: #ShowLevels:columnLevels:rhs:!**auto generated**!COM Interfaces-IOutline!private! !
!ExcelIOutline categoriesFor: #summaryColumn!**auto generated**!properties!public! !
!ExcelIOutline categoriesFor: #summaryColumn:!**auto generated**!properties!public! !
!ExcelIOutline categoriesFor: #summaryRow!**auto generated**!properties!public! !
!ExcelIOutline categoriesFor: #summaryRow:!**auto generated**!properties!public! !

!ExcelIOutline class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IOutline'
		ExcelIOutline defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_AutomaticStyles:
			argumentTypes: 'varbool*';
		defineFunction: #put_AutomaticStyles:
			argumentTypes: 'varbool';
		defineFunction: #ShowLevels:columnLevels:rhs:
			argumentTypes: 'variant variant variant*';
		defineFunction: #get_SummaryColumn:
			argumentTypes: 'sdword*';
		defineFunction: #put_SummaryColumn:
			argumentTypes: 'sdword';
		defineFunction: #get_SummaryRow:
			argumentTypes: 'sdword*';
		defineFunction: #put_SummaryRow:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIOutline initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIOutline class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIOutline class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

