"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelProtection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelProtection guid: (IID fromString: '{00024467-0000-0000-C000-000000000046}')!
ExcelProtection comment: '<ExcelProtection> is a wrapper class generated for the dispatch interface ''Excel.Protection'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024467-0000-0000-C000-000000000046), 
	helpcontext(0x000200fd)
]
dispinterface Protection {
	properties:
	methods:
[id(0x000007f0), propget, helpcontext(0x000107f0)]
		VARIANT_BOOL AllowFormattingCells();
[id(0x000007f1), propget, helpcontext(0x000107f1)]
		VARIANT_BOOL AllowFormattingColumns();
[id(0x000007f2), propget, helpcontext(0x000107f2)]
		VARIANT_BOOL AllowFormattingRows();
[id(0x000007f3), propget, helpcontext(0x000107f3)]
		VARIANT_BOOL AllowInsertingColumns();
[id(0x000007f4), propget, helpcontext(0x000107f4)]
		VARIANT_BOOL AllowInsertingRows();
[id(0x000007f5), propget, helpcontext(0x000107f5)]
		VARIANT_BOOL AllowInsertingHyperlinks();
[id(0x000007f6), propget, helpcontext(0x000107f6)]
		VARIANT_BOOL AllowDeletingColumns();
[id(0x000007f7), propget, helpcontext(0x000107f7)]
		VARIANT_BOOL AllowDeletingRows();
[id(0x000007f8), propget, helpcontext(0x000107f8)]
		VARIANT_BOOL AllowSorting();
[id(0x000007f9), propget, helpcontext(0x000107f9)]
		VARIANT_BOOL AllowFiltering();
[id(0x000007fa), propget, helpcontext(0x000107fa)]
		VARIANT_BOOL AllowUsingPivotTables();
[id(0x000008bc), propget, helpcontext(0x000108bc)]
		AllowEditRanges* AllowEditRanges();
};
'!
!ExcelProtection categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelProtection methodsFor!

allowDeletingColumns
	"Answer the <varbool> value of the 'AllowDeletingColumns' property of the receiver.
		VARIANT_BOOL AllowDeletingColumns"

	^(self getPropertyId: 2038)
!

allowDeletingRows
	"Answer the <varbool> value of the 'AllowDeletingRows' property of the receiver.
		VARIANT_BOOL AllowDeletingRows"

	^(self getPropertyId: 2039)
!

allowEditRanges
	"Answer the <ExcelAllowEditRanges> value of the 'AllowEditRanges' property of the receiver.
		AllowEditRanges* AllowEditRanges"

	^ExcelAllowEditRanges attachInterface: (self getPropertyId: 2236)
!

allowFiltering
	"Answer the <varbool> value of the 'AllowFiltering' property of the receiver.
		VARIANT_BOOL AllowFiltering"

	^(self getPropertyId: 2041)
!

allowFormattingCells
	"Answer the <varbool> value of the 'AllowFormattingCells' property of the receiver.
		VARIANT_BOOL AllowFormattingCells"

	^(self getPropertyId: 2032)
!

allowFormattingColumns
	"Answer the <varbool> value of the 'AllowFormattingColumns' property of the receiver.
		VARIANT_BOOL AllowFormattingColumns"

	^(self getPropertyId: 2033)
!

allowFormattingRows
	"Answer the <varbool> value of the 'AllowFormattingRows' property of the receiver.
		VARIANT_BOOL AllowFormattingRows"

	^(self getPropertyId: 2034)
!

allowInsertingColumns
	"Answer the <varbool> value of the 'AllowInsertingColumns' property of the receiver.
		VARIANT_BOOL AllowInsertingColumns"

	^(self getPropertyId: 2035)
!

allowInsertingHyperlinks
	"Answer the <varbool> value of the 'AllowInsertingHyperlinks' property of the receiver.
		VARIANT_BOOL AllowInsertingHyperlinks"

	^(self getPropertyId: 2037)
!

allowInsertingRows
	"Answer the <varbool> value of the 'AllowInsertingRows' property of the receiver.
		VARIANT_BOOL AllowInsertingRows"

	^(self getPropertyId: 2036)
!

allowSorting
	"Answer the <varbool> value of the 'AllowSorting' property of the receiver.
		VARIANT_BOOL AllowSorting"

	^(self getPropertyId: 2040)
!

allowUsingPivotTables
	"Answer the <varbool> value of the 'AllowUsingPivotTables' property of the receiver.
		VARIANT_BOOL AllowUsingPivotTables"

	^(self getPropertyId: 2042)
! !
!ExcelProtection categoriesFor: #allowDeletingColumns!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowDeletingRows!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowEditRanges!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowFiltering!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowFormattingCells!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowFormattingColumns!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowFormattingRows!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowInsertingColumns!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowInsertingHyperlinks!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowInsertingRows!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowSorting!**auto generated**!properties!public! !
!ExcelProtection categoriesFor: #allowUsingPivotTables!**auto generated**!properties!public! !

!ExcelProtection class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelProtection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelProtection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

