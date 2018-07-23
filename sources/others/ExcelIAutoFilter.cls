"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIAutoFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIAutoFilter guid: (IID fromString: '{00024432-0001-0000-C000-000000000046}')!
ExcelIAutoFilter comment: '<ExcelIAutoFilter> is a wrapper class for the COM interface ''Excel.IAutoFilter'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024432-0001-0000-C000-000000000046), 
	helpcontext(0x000200c8), 
	hidden
]
interface IAutoFilter : IDispatch
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
	[id(0x000000c5), propget, helpcontext(0x000100c5)]
	HRESULT __stdcall Range(
		[out, retval]Range** RHS);
	[id(0x00000651), propget, helpcontext(0x00010651)]
	HRESULT __stdcall Filters(
		[out, retval]Filters** RHS);
	[id(0x00000320), propget, helpcontext(0x00010320)]
	HRESULT __stdcall FilterMode(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000370), propget, helpcontext(0x00010370)]
	HRESULT __stdcall Sort(
		[out, retval]Sort** RHS);
	[id(0x00000a50), helpcontext(0x00010a50)]
	HRESULT __stdcall ApplyFilter();
	[id(0x0000031a), helpcontext(0x0001031a)]
	HRESULT __stdcall ShowAllData();
};
'!
!ExcelIAutoFilter categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIAutoFilter methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

applyFilter
	"Invoke the ApplyFilter() method of the COM object."

	^self ApplyFilter
!

ApplyFilter
	"Private - Invoke the ApplyFilter() method of the COM object.

		HRESULT __stdcall ApplyFilter();"

	<virtual stdcall: hresult 15>
	^self invalidCall!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

filterMode
	"Answer the <varbool> value of the 'FilterMode' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_FilterMode: answer.
	^answer asObject
!

filters
	"Answer the <ExcelFilters> value of the 'Filters' property of the receiver."

	| answer |
	answer := ExcelFilters newPointer.
	self get_Filters: answer.
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

get_FilterMode: rhs
	"Private - Get the value of the 'FilterMode' property of the receiver.

		HRESULT __stdcall FilterMode(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_Filters: rhs
	"Private - Get the value of the 'Filters' property of the receiver.

		HRESULT __stdcall Filters(
			[out, retval]Filters** RHS);"

	<virtual stdcall: hresult 12 ExcelFilters**>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Range: rhs
	"Private - Get the value of the 'Range' property of the receiver.

		HRESULT __stdcall Range(
			[out, retval]Range** RHS);"

	<virtual stdcall: hresult 11 ExcelRange**>
	^self invalidCall!

get_Sort: rhs
	"Private - Get the value of the 'Sort' property of the receiver.

		HRESULT __stdcall Sort(
			[out, retval]Sort** RHS);"

	<virtual stdcall: hresult 14 ExcelSort**>
	^self invalidCall!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver."

	| answer |
	answer := ExcelRange newPointer.
	self get_Range: answer.
	^answer asObject
!

showAllData
	"Invoke the ShowAllData() method of the COM object."

	^self ShowAllData
!

ShowAllData
	"Private - Invoke the ShowAllData() method of the COM object.

		HRESULT __stdcall ShowAllData();"

	<virtual stdcall: hresult 16>
	^self invalidCall!

sort
	"Answer the <ExcelSort> value of the 'Sort' property of the receiver."

	| answer |
	answer := ExcelSort newPointer.
	self get_Sort: answer.
	^answer asObject
! !
!ExcelIAutoFilter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIAutoFilter categoriesFor: #applyFilter!**auto generated**!methods!public! !
!ExcelIAutoFilter categoriesFor: #ApplyFilter!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIAutoFilter categoriesFor: #filterMode!**auto generated**!properties!public! !
!ExcelIAutoFilter categoriesFor: #filters!**auto generated**!properties!public! !
!ExcelIAutoFilter categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #get_FilterMode:!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #get_Filters:!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #get_Range:!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #get_Sort:!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIAutoFilter categoriesFor: #range!**auto generated**!properties!public! !
!ExcelIAutoFilter categoriesFor: #showAllData!**auto generated**!methods!public! !
!ExcelIAutoFilter categoriesFor: #ShowAllData!**auto generated**!COM Interfaces-IAutoFilter!private! !
!ExcelIAutoFilter categoriesFor: #sort!**auto generated**!properties!public! !

!ExcelIAutoFilter class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IAutoFilter'
		ExcelIAutoFilter defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_Range:
			argumentTypes: 'ExcelRange**';
		defineFunction: #get_Filters:
			argumentTypes: 'ExcelFilters**';
		defineFunction: #get_FilterMode:
			argumentTypes: 'varbool*';
		defineFunction: #get_Sort:
			argumentTypes: 'ExcelSort**';
		defineFunction: #ApplyFilter;
		defineFunction: #ShowAllData
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIAutoFilter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIAutoFilter class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIAutoFilter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

