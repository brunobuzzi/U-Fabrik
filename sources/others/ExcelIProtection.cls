"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIProtection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIProtection guid: (IID fromString: '{00024467-0001-0000-C000-000000000046}')!
ExcelIProtection comment: '<ExcelIProtection> is a wrapper class for the COM interface ''Excel.IProtection'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024467-0001-0000-C000-000000000046), 
	helpcontext(0x000200fd), 
	hidden
]
interface IProtection : IDispatch
 {
	[id(0x000007f0), propget, helpcontext(0x000107f0)]
	HRESULT __stdcall AllowFormattingCells(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f1), propget, helpcontext(0x000107f1)]
	HRESULT __stdcall AllowFormattingColumns(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f2), propget, helpcontext(0x000107f2)]
	HRESULT __stdcall AllowFormattingRows(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f3), propget, helpcontext(0x000107f3)]
	HRESULT __stdcall AllowInsertingColumns(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f4), propget, helpcontext(0x000107f4)]
	HRESULT __stdcall AllowInsertingRows(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f5), propget, helpcontext(0x000107f5)]
	HRESULT __stdcall AllowInsertingHyperlinks(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f6), propget, helpcontext(0x000107f6)]
	HRESULT __stdcall AllowDeletingColumns(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f7), propget, helpcontext(0x000107f7)]
	HRESULT __stdcall AllowDeletingRows(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f8), propget, helpcontext(0x000107f8)]
	HRESULT __stdcall AllowSorting(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007f9), propget, helpcontext(0x000107f9)]
	HRESULT __stdcall AllowFiltering(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000007fa), propget, helpcontext(0x000107fa)]
	HRESULT __stdcall AllowUsingPivotTables(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000008bc), propget, helpcontext(0x000108bc)]
	HRESULT __stdcall AllowEditRanges(
		[out, retval]AllowEditRanges** RHS);
};
'!
!ExcelIProtection categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIProtection methodsFor!

allowDeletingColumns
	"Answer the <varbool> value of the 'AllowDeletingColumns' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowDeletingColumns: answer.
	^answer asObject
!

allowDeletingRows
	"Answer the <varbool> value of the 'AllowDeletingRows' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowDeletingRows: answer.
	^answer asObject
!

allowEditRanges
	"Answer the <ExcelAllowEditRanges> value of the 'AllowEditRanges' property of the receiver."

	| answer |
	answer := ExcelAllowEditRanges newPointer.
	self get_AllowEditRanges: answer.
	^answer asObject
!

allowFiltering
	"Answer the <varbool> value of the 'AllowFiltering' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowFiltering: answer.
	^answer asObject
!

allowFormattingCells
	"Answer the <varbool> value of the 'AllowFormattingCells' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowFormattingCells: answer.
	^answer asObject
!

allowFormattingColumns
	"Answer the <varbool> value of the 'AllowFormattingColumns' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowFormattingColumns: answer.
	^answer asObject
!

allowFormattingRows
	"Answer the <varbool> value of the 'AllowFormattingRows' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowFormattingRows: answer.
	^answer asObject
!

allowInsertingColumns
	"Answer the <varbool> value of the 'AllowInsertingColumns' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowInsertingColumns: answer.
	^answer asObject
!

allowInsertingHyperlinks
	"Answer the <varbool> value of the 'AllowInsertingHyperlinks' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowInsertingHyperlinks: answer.
	^answer asObject
!

allowInsertingRows
	"Answer the <varbool> value of the 'AllowInsertingRows' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowInsertingRows: answer.
	^answer asObject
!

allowSorting
	"Answer the <varbool> value of the 'AllowSorting' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowSorting: answer.
	^answer asObject
!

allowUsingPivotTables
	"Answer the <varbool> value of the 'AllowUsingPivotTables' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowUsingPivotTables: answer.
	^answer asObject
!

get_AllowDeletingColumns: rhs
	"Private - Get the value of the 'AllowDeletingColumns' property of the receiver.

		HRESULT __stdcall AllowDeletingColumns(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 14 varbool*>
	^self invalidCall!

get_AllowDeletingRows: rhs
	"Private - Get the value of the 'AllowDeletingRows' property of the receiver.

		HRESULT __stdcall AllowDeletingRows(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

get_AllowEditRanges: rhs
	"Private - Get the value of the 'AllowEditRanges' property of the receiver.

		HRESULT __stdcall AllowEditRanges(
			[out, retval]AllowEditRanges** RHS);"

	<virtual stdcall: hresult 19 ExcelAllowEditRanges**>
	^self invalidCall!

get_AllowFiltering: rhs
	"Private - Get the value of the 'AllowFiltering' property of the receiver.

		HRESULT __stdcall AllowFiltering(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_AllowFormattingCells: rhs
	"Private - Get the value of the 'AllowFormattingCells' property of the receiver.

		HRESULT __stdcall AllowFormattingCells(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 8 varbool*>
	^self invalidCall!

get_AllowFormattingColumns: rhs
	"Private - Get the value of the 'AllowFormattingColumns' property of the receiver.

		HRESULT __stdcall AllowFormattingColumns(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 9 varbool*>
	^self invalidCall!

get_AllowFormattingRows: rhs
	"Private - Get the value of the 'AllowFormattingRows' property of the receiver.

		HRESULT __stdcall AllowFormattingRows(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 10 varbool*>
	^self invalidCall!

get_AllowInsertingColumns: rhs
	"Private - Get the value of the 'AllowInsertingColumns' property of the receiver.

		HRESULT __stdcall AllowInsertingColumns(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_AllowInsertingHyperlinks: rhs
	"Private - Get the value of the 'AllowInsertingHyperlinks' property of the receiver.

		HRESULT __stdcall AllowInsertingHyperlinks(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_AllowInsertingRows: rhs
	"Private - Get the value of the 'AllowInsertingRows' property of the receiver.

		HRESULT __stdcall AllowInsertingRows(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 12 varbool*>
	^self invalidCall!

get_AllowSorting: rhs
	"Private - Get the value of the 'AllowSorting' property of the receiver.

		HRESULT __stdcall AllowSorting(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 16 varbool*>
	^self invalidCall!

get_AllowUsingPivotTables: rhs
	"Private - Get the value of the 'AllowUsingPivotTables' property of the receiver.

		HRESULT __stdcall AllowUsingPivotTables(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 18 varbool*>
	^self invalidCall! !
!ExcelIProtection categoriesFor: #allowDeletingColumns!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowDeletingRows!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowEditRanges!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowFiltering!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowFormattingCells!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowFormattingColumns!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowFormattingRows!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowInsertingColumns!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowInsertingHyperlinks!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowInsertingRows!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowSorting!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #allowUsingPivotTables!**auto generated**!properties!public! !
!ExcelIProtection categoriesFor: #get_AllowDeletingColumns:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowDeletingRows:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowEditRanges:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowFiltering:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowFormattingCells:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowFormattingColumns:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowFormattingRows:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowInsertingColumns:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowInsertingHyperlinks:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowInsertingRows:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowSorting:!**auto generated**!COM Interfaces-IProtection!private! !
!ExcelIProtection categoriesFor: #get_AllowUsingPivotTables:!**auto generated**!COM Interfaces-IProtection!private! !

!ExcelIProtection class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IProtection'
		ExcelIProtection defineTemplate"

	self
		defineFunction: #get_AllowFormattingCells:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowFormattingColumns:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowFormattingRows:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowInsertingColumns:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowInsertingRows:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowInsertingHyperlinks:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowDeletingColumns:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowDeletingRows:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowSorting:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowFiltering:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowUsingPivotTables:
			argumentTypes: 'varbool*';
		defineFunction: #get_AllowEditRanges:
			argumentTypes: 'ExcelAllowEditRanges**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIProtection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIProtection class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIProtection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

