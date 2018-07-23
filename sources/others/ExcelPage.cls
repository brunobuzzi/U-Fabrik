"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPage guid: (IID fromString: '{000244A2-0000-0000-C000-000000000046}')!
ExcelPage comment: '<ExcelPage> is a wrapper class generated for the dispatch interface ''Excel.Page'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244A2-0000-0000-C000-000000000046), 
	helpcontext(0x00020138)
]
dispinterface Page {
	properties:
	methods:
[id(0x000003fa), propget, helpcontext(0x000103fa)]
		HeaderFooter* LeftHeader();
[id(0x000003f3), propget, helpcontext(0x000103f3)]
		HeaderFooter* CenterHeader();
[id(0x00000402), propget, helpcontext(0x00010402)]
		HeaderFooter* RightHeader();
[id(0x000003f9), propget, helpcontext(0x000103f9)]
		HeaderFooter* LeftFooter();
[id(0x000003f2), propget, helpcontext(0x000103f2)]
		HeaderFooter* CenterFooter();
[id(0x00000401), propget, helpcontext(0x00010401)]
		HeaderFooter* RightFooter();
};
'!
!ExcelPage categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPage methodsFor!

centerFooter
	"Answer the <ExcelHeaderFooter> value of the 'CenterFooter' property of the receiver.
		HeaderFooter* CenterFooter"

	^ExcelHeaderFooter attachInterface: (self getPropertyId: 1010)
!

centerHeader
	"Answer the <ExcelHeaderFooter> value of the 'CenterHeader' property of the receiver.
		HeaderFooter* CenterHeader"

	^ExcelHeaderFooter attachInterface: (self getPropertyId: 1011)
!

leftFooter
	"Answer the <ExcelHeaderFooter> value of the 'LeftFooter' property of the receiver.
		HeaderFooter* LeftFooter"

	^ExcelHeaderFooter attachInterface: (self getPropertyId: 1017)
!

leftHeader
	"Answer the <ExcelHeaderFooter> value of the 'LeftHeader' property of the receiver.
		HeaderFooter* LeftHeader"

	^ExcelHeaderFooter attachInterface: (self getPropertyId: 1018)
!

rightFooter
	"Answer the <ExcelHeaderFooter> value of the 'RightFooter' property of the receiver.
		HeaderFooter* RightFooter"

	^ExcelHeaderFooter attachInterface: (self getPropertyId: 1025)
!

rightHeader
	"Answer the <ExcelHeaderFooter> value of the 'RightHeader' property of the receiver.
		HeaderFooter* RightHeader"

	^ExcelHeaderFooter attachInterface: (self getPropertyId: 1026)
! !
!ExcelPage categoriesFor: #centerFooter!**auto generated**!properties!public! !
!ExcelPage categoriesFor: #centerHeader!**auto generated**!properties!public! !
!ExcelPage categoriesFor: #leftFooter!**auto generated**!properties!public! !
!ExcelPage categoriesFor: #leftHeader!**auto generated**!properties!public! !
!ExcelPage categoriesFor: #rightFooter!**auto generated**!properties!public! !
!ExcelPage categoriesFor: #rightHeader!**auto generated**!properties!public! !

!ExcelPage class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPage initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPage class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

