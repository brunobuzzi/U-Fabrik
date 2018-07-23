"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelIPageSetup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelIPageSetup guid: (IID fromString: '{000208B4-0001-0000-C000-000000000046}')!
ExcelIPageSetup comment: '<ExcelIPageSetup> is a wrapper class for the COM interface ''Excel.IPageSetup'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000208B4-0001-0000-C000-000000000046), 
	helpcontext(0x00020074), 
	hidden
]
interface IPageSetup : IDispatch
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
	[id(0x000003f1), propget, helpcontext(0x000103f1)]
	HRESULT __stdcall BlackAndWhite(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003f1), propput, helpcontext(0x000103f1)]
	HRESULT __stdcall BlackAndWhite(
		[in]VARIANT_BOOL RHS);
	[id(0x000003ea), propget, helpcontext(0x000103ea)]
	HRESULT __stdcall BottomMargin(
		[out, retval]double* RHS);
	[id(0x000003ea), propput, helpcontext(0x000103ea)]
	HRESULT __stdcall BottomMargin(
		[in]double RHS);
	[id(0x000003f2), propget, helpcontext(0x000103f2)]
	HRESULT __stdcall CenterFooter(
		[out, retval]BSTR* RHS);
	[id(0x000003f2), propput, helpcontext(0x000103f2)]
	HRESULT __stdcall CenterFooter(
		[in]BSTR RHS);
	[id(0x000003f3), propget, helpcontext(0x000103f3)]
	HRESULT __stdcall CenterHeader(
		[out, retval]BSTR* RHS);
	[id(0x000003f3), propput, helpcontext(0x000103f3)]
	HRESULT __stdcall CenterHeader(
		[in]BSTR RHS);
	[id(0x000003ed), propget, helpcontext(0x000103ed)]
	HRESULT __stdcall CenterHorizontally(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003ed), propput, helpcontext(0x000103ed)]
	HRESULT __stdcall CenterHorizontally(
		[in]VARIANT_BOOL RHS);
	[id(0x000003ee), propget, helpcontext(0x000103ee)]
	HRESULT __stdcall CenterVertically(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003ee), propput, helpcontext(0x000103ee)]
	HRESULT __stdcall CenterVertically(
		[in]VARIANT_BOOL RHS);
	[id(0x000003f4), hidden, propget, helpcontext(0x000103f4)]
	HRESULT __stdcall ChartSize(
		[out, retval]XlObjectSize* RHS);
	[id(0x000003f4), hidden, propput, helpcontext(0x000103f4)]
	HRESULT __stdcall ChartSize(
		[in]XlObjectSize RHS);
	[id(0x000003fc), propget, helpcontext(0x000103fc)]
	HRESULT __stdcall Draft(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003fc), propput, helpcontext(0x000103fc)]
	HRESULT __stdcall Draft(
		[in]VARIANT_BOOL RHS);
	[id(0x000003f0), propget, helpcontext(0x000103f0)]
	HRESULT __stdcall FirstPageNumber(
		[out, retval]long* RHS);
	[id(0x000003f0), propput, helpcontext(0x000103f0)]
	HRESULT __stdcall FirstPageNumber(
		[in]long RHS);
	[id(0x000003f5), propget, helpcontext(0x000103f5)]
	HRESULT __stdcall FitToPagesTall(
		[out, retval]VARIANT* RHS);
	[id(0x000003f5), propput, helpcontext(0x000103f5)]
	HRESULT __stdcall FitToPagesTall(
		[in]VARIANT RHS);
	[id(0x000003f6), propget, helpcontext(0x000103f6)]
	HRESULT __stdcall FitToPagesWide(
		[out, retval]VARIANT* RHS);
	[id(0x000003f6), propput, helpcontext(0x000103f6)]
	HRESULT __stdcall FitToPagesWide(
		[in]VARIANT RHS);
	[id(0x000003f7), propget, helpcontext(0x000103f7)]
	HRESULT __stdcall FooterMargin(
		[out, retval]double* RHS);
	[id(0x000003f7), propput, helpcontext(0x000103f7)]
	HRESULT __stdcall FooterMargin(
		[in]double RHS);
	[id(0x000003f8), propget, helpcontext(0x000103f8)]
	HRESULT __stdcall HeaderMargin(
		[out, retval]double* RHS);
	[id(0x000003f8), propput, helpcontext(0x000103f8)]
	HRESULT __stdcall HeaderMargin(
		[in]double RHS);
	[id(0x000003f9), propget, helpcontext(0x000103f9)]
	HRESULT __stdcall LeftFooter(
		[out, retval]BSTR* RHS);
	[id(0x000003f9), propput, helpcontext(0x000103f9)]
	HRESULT __stdcall LeftFooter(
		[in]BSTR RHS);
	[id(0x000003fa), propget, helpcontext(0x000103fa)]
	HRESULT __stdcall LeftHeader(
		[out, retval]BSTR* RHS);
	[id(0x000003fa), propput, helpcontext(0x000103fa)]
	HRESULT __stdcall LeftHeader(
		[in]BSTR RHS);
	[id(0x000003e7), propget, helpcontext(0x000103e7)]
	HRESULT __stdcall LeftMargin(
		[out, retval]double* RHS);
	[id(0x000003e7), propput, helpcontext(0x000103e7)]
	HRESULT __stdcall LeftMargin(
		[in]double RHS);
	[id(0x000000c0), propget, helpcontext(0x000100c0)]
	HRESULT __stdcall Order(
		[out, retval]XlOrder* RHS);
	[id(0x000000c0), propput, helpcontext(0x000100c0)]
	HRESULT __stdcall Order(
		[in]XlOrder RHS);
	[id(0x00000086), propget, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[out, retval]XlPageOrientation* RHS);
	[id(0x00000086), propput, helpcontext(0x00010086)]
	HRESULT __stdcall Orientation(
		[in]XlPageOrientation RHS);
	[id(0x000003ef), propget, helpcontext(0x000103ef)]
	HRESULT __stdcall PaperSize(
		[out, retval]XlPaperSize* RHS);
	[id(0x000003ef), propput, helpcontext(0x000103ef)]
	HRESULT __stdcall PaperSize(
		[in]XlPaperSize RHS);
	[id(0x000003fb), propget, helpcontext(0x000103fb)]
	HRESULT __stdcall PrintArea(
		[out, retval]BSTR* RHS);
	[id(0x000003fb), propput, helpcontext(0x000103fb)]
	HRESULT __stdcall PrintArea(
		[in]BSTR RHS);
	[id(0x000003ec), propget, helpcontext(0x000103ec)]
	HRESULT __stdcall PrintGridlines(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003ec), propput, helpcontext(0x000103ec)]
	HRESULT __stdcall PrintGridlines(
		[in]VARIANT_BOOL RHS);
	[id(0x000003eb), propget, helpcontext(0x000103eb)]
	HRESULT __stdcall PrintHeadings(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003eb), propput, helpcontext(0x000103eb)]
	HRESULT __stdcall PrintHeadings(
		[in]VARIANT_BOOL RHS);
	[id(0x000003fd), propget, helpcontext(0x000103fd)]
	HRESULT __stdcall PrintNotes(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x000003fd), propput, helpcontext(0x000103fd)]
	HRESULT __stdcall PrintNotes(
		[in]VARIANT_BOOL RHS);
	[id(0x000003fe), propget, helpcontext(0x000103fe)]
	HRESULT __stdcall PrintQuality(
		[in, optional]VARIANT Index,
		[out, retval]VARIANT* RHS);
	[id(0x000003fe), propput, helpcontext(0x000103fe)]
	HRESULT __stdcall PrintQuality(
		[in, optional]VARIANT Index,
		[in]VARIANT RHS);
	[id(0x000003ff), propget, helpcontext(0x000103ff)]
	HRESULT __stdcall PrintTitleColumns(
		[out, retval]BSTR* RHS);
	[id(0x000003ff), propput, helpcontext(0x000103ff)]
	HRESULT __stdcall PrintTitleColumns(
		[in]BSTR RHS);
	[id(0x00000400), propget, helpcontext(0x00010400)]
	HRESULT __stdcall PrintTitleRows(
		[out, retval]BSTR* RHS);
	[id(0x00000400), propput, helpcontext(0x00010400)]
	HRESULT __stdcall PrintTitleRows(
		[in]BSTR RHS);
	[id(0x00000401), propget, helpcontext(0x00010401)]
	HRESULT __stdcall RightFooter(
		[out, retval]BSTR* RHS);
	[id(0x00000401), propput, helpcontext(0x00010401)]
	HRESULT __stdcall RightFooter(
		[in]BSTR RHS);
	[id(0x00000402), propget, helpcontext(0x00010402)]
	HRESULT __stdcall RightHeader(
		[out, retval]BSTR* RHS);
	[id(0x00000402), propput, helpcontext(0x00010402)]
	HRESULT __stdcall RightHeader(
		[in]BSTR RHS);
	[id(0x000003e8), propget, helpcontext(0x000103e8)]
	HRESULT __stdcall RightMargin(
		[out, retval]double* RHS);
	[id(0x000003e8), propput, helpcontext(0x000103e8)]
	HRESULT __stdcall RightMargin(
		[in]double RHS);
	[id(0x000003e9), propget, helpcontext(0x000103e9)]
	HRESULT __stdcall TopMargin(
		[out, retval]double* RHS);
	[id(0x000003e9), propput, helpcontext(0x000103e9)]
	HRESULT __stdcall TopMargin(
		[in]double RHS);
	[id(0x00000297), propget, helpcontext(0x00010297)]
	HRESULT __stdcall Zoom(
		[out, retval]VARIANT* RHS);
	[id(0x00000297), propput, helpcontext(0x00010297)]
	HRESULT __stdcall Zoom(
		[in]VARIANT RHS);
	[id(0x000005f4), propget, helpcontext(0x000105f4)]
	HRESULT __stdcall PrintComments(
		[out, retval]XlPrintLocation* RHS);
	[id(0x000005f4), propput, helpcontext(0x000105f4)]
	HRESULT __stdcall PrintComments(
		[in]XlPrintLocation RHS);
	[id(0x00000865), propget, helpcontext(0x00010865)]
	HRESULT __stdcall PrintErrors(
		[out, retval]XlPrintErrors* RHS);
	[id(0x00000865), propput, helpcontext(0x00010865)]
	HRESULT __stdcall PrintErrors(
		[in]XlPrintErrors RHS);
	[id(0x00000866), propget, helpcontext(0x00010866)]
	HRESULT __stdcall CenterHeaderPicture(
		[out, retval]Graphic** RHS);
	[id(0x00000867), propget, helpcontext(0x00010867)]
	HRESULT __stdcall CenterFooterPicture(
		[out, retval]Graphic** RHS);
	[id(0x00000868), propget, helpcontext(0x00010868)]
	HRESULT __stdcall LeftHeaderPicture(
		[out, retval]Graphic** RHS);
	[id(0x00000869), propget, helpcontext(0x00010869)]
	HRESULT __stdcall LeftFooterPicture(
		[out, retval]Graphic** RHS);
	[id(0x0000086a), propget, helpcontext(0x0001086a)]
	HRESULT __stdcall RightHeaderPicture(
		[out, retval]Graphic** RHS);
	[id(0x0000086b), propget, helpcontext(0x0001086b)]
	HRESULT __stdcall RightFooterPicture(
		[out, retval]Graphic** RHS);
	[id(0x00000a28), propget, helpcontext(0x00010a28)]
	HRESULT __stdcall OddAndEvenPagesHeaderFooter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a28), propput, helpcontext(0x00010a28)]
	HRESULT __stdcall OddAndEvenPagesHeaderFooter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a29), propget, helpcontext(0x00010a29)]
	HRESULT __stdcall DifferentFirstPageHeaderFooter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a29), propput, helpcontext(0x00010a29)]
	HRESULT __stdcall DifferentFirstPageHeaderFooter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a2a), propget, helpcontext(0x00010a2a)]
	HRESULT __stdcall ScaleWithDocHeaderFooter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a2a), propput, helpcontext(0x00010a2a)]
	HRESULT __stdcall ScaleWithDocHeaderFooter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a2b), propget, helpcontext(0x00010a2b)]
	HRESULT __stdcall AlignMarginsHeaderFooter(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000a2b), propput, helpcontext(0x00010a2b)]
	HRESULT __stdcall AlignMarginsHeaderFooter(
		[in]VARIANT_BOOL RHS);
	[id(0x00000a2c), propget, helpcontext(0x00010a2c)]
	HRESULT __stdcall Pages(
		[out, retval]Pages** RHS);
	[id(0x00000a2d), propget, helpcontext(0x00010a2d)]
	HRESULT __stdcall EvenPage(
		[out, retval]Page** RHS);
	[id(0x00000a2e), propget, helpcontext(0x00010a2e)]
	HRESULT __stdcall FirstPage(
		[out, retval]Page** RHS);
};
'!
!ExcelIPageSetup categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelIPageSetup methodsFor!

alignMarginsHeaderFooter
	"Answer the <varbool> value of the 'AlignMarginsHeaderFooter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AlignMarginsHeaderFooter: answer.
	^answer asObject
!

alignMarginsHeaderFooter: rhs
	"Set the 'AlignMarginsHeaderFooter' property of the receiver to the <varbool> value of the argument."

	self put_AlignMarginsHeaderFooter: rhs
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

blackAndWhite
	"Answer the <varbool> value of the 'BlackAndWhite' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_BlackAndWhite: answer.
	^answer asObject
!

blackAndWhite: rhs
	"Set the 'BlackAndWhite' property of the receiver to the <varbool> value of the argument."

	self put_BlackAndWhite: rhs
!

bottomMargin
	"Answer the <double> value of the 'BottomMargin' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_BottomMargin: answer.
	^answer asObject
!

bottomMargin: rhs
	"Set the 'BottomMargin' property of the receiver to the <double> value of the argument."

	self put_BottomMargin: rhs
!

centerFooter
	"Answer the <bstr> value of the 'CenterFooter' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CenterFooter: answer.
	^answer asObject
!

centerFooter: rhs
	"Set the 'CenterFooter' property of the receiver to the <bstr> value of the argument."

	self put_CenterFooter: rhs
!

centerFooterPicture
	"Answer the <ExcelGraphic> value of the 'CenterFooterPicture' property of the receiver."

	| answer |
	answer := ExcelGraphic newPointer.
	self get_CenterFooterPicture: answer.
	^answer asObject
!

centerHeader
	"Answer the <bstr> value of the 'CenterHeader' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_CenterHeader: answer.
	^answer asObject
!

centerHeader: rhs
	"Set the 'CenterHeader' property of the receiver to the <bstr> value of the argument."

	self put_CenterHeader: rhs
!

centerHeaderPicture
	"Answer the <ExcelGraphic> value of the 'CenterHeaderPicture' property of the receiver."

	| answer |
	answer := ExcelGraphic newPointer.
	self get_CenterHeaderPicture: answer.
	^answer asObject
!

centerHorizontally
	"Answer the <varbool> value of the 'CenterHorizontally' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_CenterHorizontally: answer.
	^answer asObject
!

centerHorizontally: rhs
	"Set the 'CenterHorizontally' property of the receiver to the <varbool> value of the argument."

	self put_CenterHorizontally: rhs
!

centerVertically
	"Answer the <varbool> value of the 'CenterVertically' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_CenterVertically: answer.
	^answer asObject
!

centerVertically: rhs
	"Set the 'CenterVertically' property of the receiver to the <varbool> value of the argument."

	self put_CenterVertically: rhs
!

chartSize
	"Answer the <sdword> value of the 'ChartSize' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ChartSize: answer.
	^answer asObject
!

chartSize: rhs
	"Set the 'ChartSize' property of the receiver to the <sdword> value of the argument."

	self put_ChartSize: rhs
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

differentFirstPageHeaderFooter
	"Answer the <varbool> value of the 'DifferentFirstPageHeaderFooter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DifferentFirstPageHeaderFooter: answer.
	^answer asObject
!

differentFirstPageHeaderFooter: rhs
	"Set the 'DifferentFirstPageHeaderFooter' property of the receiver to the <varbool> value of the argument."

	self put_DifferentFirstPageHeaderFooter: rhs
!

draft
	"Answer the <varbool> value of the 'Draft' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_Draft: answer.
	^answer asObject
!

draft: rhs
	"Set the 'Draft' property of the receiver to the <varbool> value of the argument."

	self put_Draft: rhs
!

evenPage
	"Answer the <ExcelPage> value of the 'EvenPage' property of the receiver."

	| answer |
	answer := ExcelPage newPointer.
	self get_EvenPage: answer.
	^answer asObject
!

firstPage
	"Answer the <ExcelPage> value of the 'FirstPage' property of the receiver."

	| answer |
	answer := ExcelPage newPointer.
	self get_FirstPage: answer.
	^answer asObject
!

firstPageNumber
	"Answer the <sdword> value of the 'FirstPageNumber' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_FirstPageNumber: answer.
	^answer asObject
!

firstPageNumber: rhs
	"Set the 'FirstPageNumber' property of the receiver to the <sdword> value of the argument."

	self put_FirstPageNumber: rhs
!

fitToPagesTall
	"Answer the <variant> value of the 'FitToPagesTall' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_FitToPagesTall: answer.
	^answer asObject
!

fitToPagesTall: rhs
	"Set the 'FitToPagesTall' property of the receiver to the <variant> value of the argument."

	self put_FitToPagesTall: rhs asVariant
!

fitToPagesWide
	"Answer the <variant> value of the 'FitToPagesWide' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_FitToPagesWide: answer.
	^answer asObject
!

fitToPagesWide: rhs
	"Set the 'FitToPagesWide' property of the receiver to the <variant> value of the argument."

	self put_FitToPagesWide: rhs asVariant
!

footerMargin
	"Answer the <double> value of the 'FooterMargin' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_FooterMargin: answer.
	^answer asObject
!

footerMargin: rhs
	"Set the 'FooterMargin' property of the receiver to the <double> value of the argument."

	self put_FooterMargin: rhs
!

get_AlignMarginsHeaderFooter: rhs
	"Private - Get the value of the 'AlignMarginsHeaderFooter' property of the receiver.

		HRESULT __stdcall AlignMarginsHeaderFooter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 89 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_BlackAndWhite: rhs
	"Private - Get the value of the 'BlackAndWhite' property of the receiver.

		HRESULT __stdcall BlackAndWhite(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_BottomMargin: rhs
	"Private - Get the value of the 'BottomMargin' property of the receiver.

		HRESULT __stdcall BottomMargin(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 13 double*>
	^self invalidCall!

get_CenterFooter: rhs
	"Private - Get the value of the 'CenterFooter' property of the receiver.

		HRESULT __stdcall CenterFooter(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 15 bstr*>
	^self invalidCall!

get_CenterFooterPicture: rhs
	"Private - Get the value of the 'CenterFooterPicture' property of the receiver.

		HRESULT __stdcall CenterFooterPicture(
			[out, retval]Graphic** RHS);"

	<virtual stdcall: hresult 78 ExcelGraphic**>
	^self invalidCall!

get_CenterHeader: rhs
	"Private - Get the value of the 'CenterHeader' property of the receiver.

		HRESULT __stdcall CenterHeader(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 17 bstr*>
	^self invalidCall!

get_CenterHeaderPicture: rhs
	"Private - Get the value of the 'CenterHeaderPicture' property of the receiver.

		HRESULT __stdcall CenterHeaderPicture(
			[out, retval]Graphic** RHS);"

	<virtual stdcall: hresult 77 ExcelGraphic**>
	^self invalidCall!

get_CenterHorizontally: rhs
	"Private - Get the value of the 'CenterHorizontally' property of the receiver.

		HRESULT __stdcall CenterHorizontally(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_CenterVertically: rhs
	"Private - Get the value of the 'CenterVertically' property of the receiver.

		HRESULT __stdcall CenterVertically(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_ChartSize: rhs
	"Private - Get the value of the 'ChartSize' property of the receiver.

		HRESULT __stdcall ChartSize(
			[out, retval]XlObjectSize* RHS);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DifferentFirstPageHeaderFooter: rhs
	"Private - Get the value of the 'DifferentFirstPageHeaderFooter' property of the receiver.

		HRESULT __stdcall DifferentFirstPageHeaderFooter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 85 varbool*>
	^self invalidCall!

get_Draft: rhs
	"Private - Get the value of the 'Draft' property of the receiver.

		HRESULT __stdcall Draft(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 25 varbool*>
	^self invalidCall!

get_EvenPage: rhs
	"Private - Get the value of the 'EvenPage' property of the receiver.

		HRESULT __stdcall EvenPage(
			[out, retval]Page** RHS);"

	<virtual stdcall: hresult 92 ExcelPage**>
	^self invalidCall!

get_FirstPage: rhs
	"Private - Get the value of the 'FirstPage' property of the receiver.

		HRESULT __stdcall FirstPage(
			[out, retval]Page** RHS);"

	<virtual stdcall: hresult 93 ExcelPage**>
	^self invalidCall!

get_FirstPageNumber: rhs
	"Private - Get the value of the 'FirstPageNumber' property of the receiver.

		HRESULT __stdcall FirstPageNumber(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 27 sdword*>
	^self invalidCall!

get_FitToPagesTall: rhs
	"Private - Get the value of the 'FitToPagesTall' property of the receiver.

		HRESULT __stdcall FitToPagesTall(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 29 variant*>
	^self invalidCall!

get_FitToPagesWide: rhs
	"Private - Get the value of the 'FitToPagesWide' property of the receiver.

		HRESULT __stdcall FitToPagesWide(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 31 variant*>
	^self invalidCall!

get_FooterMargin: rhs
	"Private - Get the value of the 'FooterMargin' property of the receiver.

		HRESULT __stdcall FooterMargin(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 33 double*>
	^self invalidCall!

get_HeaderMargin: rhs
	"Private - Get the value of the 'HeaderMargin' property of the receiver.

		HRESULT __stdcall HeaderMargin(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 35 double*>
	^self invalidCall!

get_LeftFooter: rhs
	"Private - Get the value of the 'LeftFooter' property of the receiver.

		HRESULT __stdcall LeftFooter(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 37 bstr*>
	^self invalidCall!

get_LeftFooterPicture: rhs
	"Private - Get the value of the 'LeftFooterPicture' property of the receiver.

		HRESULT __stdcall LeftFooterPicture(
			[out, retval]Graphic** RHS);"

	<virtual stdcall: hresult 80 ExcelGraphic**>
	^self invalidCall!

get_LeftHeader: rhs
	"Private - Get the value of the 'LeftHeader' property of the receiver.

		HRESULT __stdcall LeftHeader(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 39 bstr*>
	^self invalidCall!

get_LeftHeaderPicture: rhs
	"Private - Get the value of the 'LeftHeaderPicture' property of the receiver.

		HRESULT __stdcall LeftHeaderPicture(
			[out, retval]Graphic** RHS);"

	<virtual stdcall: hresult 79 ExcelGraphic**>
	^self invalidCall!

get_LeftMargin: rhs
	"Private - Get the value of the 'LeftMargin' property of the receiver.

		HRESULT __stdcall LeftMargin(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 41 double*>
	^self invalidCall!

get_OddAndEvenPagesHeaderFooter: rhs
	"Private - Get the value of the 'OddAndEvenPagesHeaderFooter' property of the receiver.

		HRESULT __stdcall OddAndEvenPagesHeaderFooter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 83 varbool*>
	^self invalidCall!

get_Order: rhs
	"Private - Get the value of the 'Order' property of the receiver.

		HRESULT __stdcall Order(
			[out, retval]XlOrder* RHS);"

	<virtual stdcall: hresult 43 sdword*>
	^self invalidCall!

get_Orientation: rhs
	"Private - Get the value of the 'Orientation' property of the receiver.

		HRESULT __stdcall Orientation(
			[out, retval]XlPageOrientation* RHS);"

	<virtual stdcall: hresult 45 sdword*>
	^self invalidCall!

get_Pages: rhs
	"Private - Get the value of the 'Pages' property of the receiver.

		HRESULT __stdcall Pages(
			[out, retval]Pages** RHS);"

	<virtual stdcall: hresult 91 ExcelPages**>
	^self invalidCall!

get_PaperSize: rhs
	"Private - Get the value of the 'PaperSize' property of the receiver.

		HRESULT __stdcall PaperSize(
			[out, retval]XlPaperSize* RHS);"

	<virtual stdcall: hresult 47 sdword*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PrintArea: rhs
	"Private - Get the value of the 'PrintArea' property of the receiver.

		HRESULT __stdcall PrintArea(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 49 bstr*>
	^self invalidCall!

get_PrintComments: rhs
	"Private - Get the value of the 'PrintComments' property of the receiver.

		HRESULT __stdcall PrintComments(
			[out, retval]XlPrintLocation* RHS);"

	<virtual stdcall: hresult 73 sdword*>
	^self invalidCall!

get_PrintErrors: rhs
	"Private - Get the value of the 'PrintErrors' property of the receiver.

		HRESULT __stdcall PrintErrors(
			[out, retval]XlPrintErrors* RHS);"

	<virtual stdcall: hresult 75 sdword*>
	^self invalidCall!

get_PrintGridlines: rhs
	"Private - Get the value of the 'PrintGridlines' property of the receiver.

		HRESULT __stdcall PrintGridlines(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 51 varbool*>
	^self invalidCall!

get_PrintHeadings: rhs
	"Private - Get the value of the 'PrintHeadings' property of the receiver.

		HRESULT __stdcall PrintHeadings(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 53 varbool*>
	^self invalidCall!

get_PrintNotes: rhs
	"Private - Get the value of the 'PrintNotes' property of the receiver.

		HRESULT __stdcall PrintNotes(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 55 varbool*>
	^self invalidCall!

get_PrintQuality: index rhs: rhs
	"Private - Get the value of the 'PrintQuality' property of the receiver.

		HRESULT __stdcall PrintQuality(
			[in, optional]VARIANT Index,
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 57 variant variant*>
	^self invalidCall!

get_PrintTitleColumns: rhs
	"Private - Get the value of the 'PrintTitleColumns' property of the receiver.

		HRESULT __stdcall PrintTitleColumns(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 59 bstr*>
	^self invalidCall!

get_PrintTitleRows: rhs
	"Private - Get the value of the 'PrintTitleRows' property of the receiver.

		HRESULT __stdcall PrintTitleRows(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 61 bstr*>
	^self invalidCall!

get_RightFooter: rhs
	"Private - Get the value of the 'RightFooter' property of the receiver.

		HRESULT __stdcall RightFooter(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 63 bstr*>
	^self invalidCall!

get_RightFooterPicture: rhs
	"Private - Get the value of the 'RightFooterPicture' property of the receiver.

		HRESULT __stdcall RightFooterPicture(
			[out, retval]Graphic** RHS);"

	<virtual stdcall: hresult 82 ExcelGraphic**>
	^self invalidCall!

get_RightHeader: rhs
	"Private - Get the value of the 'RightHeader' property of the receiver.

		HRESULT __stdcall RightHeader(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 65 bstr*>
	^self invalidCall!

get_RightHeaderPicture: rhs
	"Private - Get the value of the 'RightHeaderPicture' property of the receiver.

		HRESULT __stdcall RightHeaderPicture(
			[out, retval]Graphic** RHS);"

	<virtual stdcall: hresult 81 ExcelGraphic**>
	^self invalidCall!

get_RightMargin: rhs
	"Private - Get the value of the 'RightMargin' property of the receiver.

		HRESULT __stdcall RightMargin(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 67 double*>
	^self invalidCall!

get_ScaleWithDocHeaderFooter: rhs
	"Private - Get the value of the 'ScaleWithDocHeaderFooter' property of the receiver.

		HRESULT __stdcall ScaleWithDocHeaderFooter(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 87 varbool*>
	^self invalidCall!

get_TopMargin: rhs
	"Private - Get the value of the 'TopMargin' property of the receiver.

		HRESULT __stdcall TopMargin(
			[out, retval]double* RHS);"

	<virtual stdcall: hresult 69 double*>
	^self invalidCall!

get_Zoom: rhs
	"Private - Get the value of the 'Zoom' property of the receiver.

		HRESULT __stdcall Zoom(
			[out, retval]VARIANT* RHS);"

	<virtual stdcall: hresult 71 variant*>
	^self invalidCall!

headerMargin
	"Answer the <double> value of the 'HeaderMargin' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_HeaderMargin: answer.
	^answer asObject
!

headerMargin: rhs
	"Set the 'HeaderMargin' property of the receiver to the <double> value of the argument."

	self put_HeaderMargin: rhs
!

leftFooter
	"Answer the <bstr> value of the 'LeftFooter' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_LeftFooter: answer.
	^answer asObject
!

leftFooter: rhs
	"Set the 'LeftFooter' property of the receiver to the <bstr> value of the argument."

	self put_LeftFooter: rhs
!

leftFooterPicture
	"Answer the <ExcelGraphic> value of the 'LeftFooterPicture' property of the receiver."

	| answer |
	answer := ExcelGraphic newPointer.
	self get_LeftFooterPicture: answer.
	^answer asObject
!

leftHeader
	"Answer the <bstr> value of the 'LeftHeader' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_LeftHeader: answer.
	^answer asObject
!

leftHeader: rhs
	"Set the 'LeftHeader' property of the receiver to the <bstr> value of the argument."

	self put_LeftHeader: rhs
!

leftHeaderPicture
	"Answer the <ExcelGraphic> value of the 'LeftHeaderPicture' property of the receiver."

	| answer |
	answer := ExcelGraphic newPointer.
	self get_LeftHeaderPicture: answer.
	^answer asObject
!

leftMargin
	"Answer the <double> value of the 'LeftMargin' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_LeftMargin: answer.
	^answer asObject
!

leftMargin: rhs
	"Set the 'LeftMargin' property of the receiver to the <double> value of the argument."

	self put_LeftMargin: rhs
!

oddAndEvenPagesHeaderFooter
	"Answer the <varbool> value of the 'OddAndEvenPagesHeaderFooter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_OddAndEvenPagesHeaderFooter: answer.
	^answer asObject
!

oddAndEvenPagesHeaderFooter: rhs
	"Set the 'OddAndEvenPagesHeaderFooter' property of the receiver to the <varbool> value of the argument."

	self put_OddAndEvenPagesHeaderFooter: rhs
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

pages
	"Answer the <ExcelPages> value of the 'Pages' property of the receiver."

	| answer |
	answer := ExcelPages newPointer.
	self get_Pages: answer.
	^answer asObject
!

paperSize
	"Answer the <sdword> value of the 'PaperSize' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PaperSize: answer.
	^answer asObject
!

paperSize: rhs
	"Set the 'PaperSize' property of the receiver to the <sdword> value of the argument."

	self put_PaperSize: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

printArea
	"Answer the <bstr> value of the 'PrintArea' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PrintArea: answer.
	^answer asObject
!

printArea: rhs
	"Set the 'PrintArea' property of the receiver to the <bstr> value of the argument."

	self put_PrintArea: rhs
!

printComments
	"Answer the <sdword> value of the 'PrintComments' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PrintComments: answer.
	^answer asObject
!

printComments: rhs
	"Set the 'PrintComments' property of the receiver to the <sdword> value of the argument."

	self put_PrintComments: rhs
!

printErrors
	"Answer the <sdword> value of the 'PrintErrors' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PrintErrors: answer.
	^answer asObject
!

printErrors: rhs
	"Set the 'PrintErrors' property of the receiver to the <sdword> value of the argument."

	self put_PrintErrors: rhs
!

printGridlines
	"Answer the <varbool> value of the 'PrintGridlines' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PrintGridlines: answer.
	^answer asObject
!

printGridlines: rhs
	"Set the 'PrintGridlines' property of the receiver to the <varbool> value of the argument."

	self put_PrintGridlines: rhs
!

printHeadings
	"Answer the <varbool> value of the 'PrintHeadings' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PrintHeadings: answer.
	^answer asObject
!

printHeadings: rhs
	"Set the 'PrintHeadings' property of the receiver to the <varbool> value of the argument."

	self put_PrintHeadings: rhs
!

printNotes
	"Answer the <varbool> value of the 'PrintNotes' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_PrintNotes: answer.
	^answer asObject
!

printNotes: rhs
	"Set the 'PrintNotes' property of the receiver to the <varbool> value of the argument."

	self put_PrintNotes: rhs
!

printQuality
	"Answer the <variant> value of the 'PrintQuality' property of the receiver."

	^self printQuality: VARIANT unspecified!

printQuality: index
	"Answer the <variant> value of the 'PrintQuality' property of the receiver."

	| answer |
	answer := VARIANT new.
	self
		get_PrintQuality: index asVariant
		rhs: answer.
	^answer asObject
!

printQuality: index rhs: rhs
	"Set the 'PrintQuality' property of the receiver to the <variant> value of the argument."

	self
		put_PrintQuality: index asVariant
		rhs: rhs asVariant
!

printTitleColumns
	"Answer the <bstr> value of the 'PrintTitleColumns' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PrintTitleColumns: answer.
	^answer asObject
!

printTitleColumns: rhs
	"Set the 'PrintTitleColumns' property of the receiver to the <bstr> value of the argument."

	self put_PrintTitleColumns: rhs
!

printTitleRows
	"Answer the <bstr> value of the 'PrintTitleRows' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_PrintTitleRows: answer.
	^answer asObject
!

printTitleRows: rhs
	"Set the 'PrintTitleRows' property of the receiver to the <bstr> value of the argument."

	self put_PrintTitleRows: rhs
!

put_AlignMarginsHeaderFooter: rhs
	"Private - Set the value of the 'AlignMarginsHeaderFooter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AlignMarginsHeaderFooter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 90 varbool>
	^self invalidCall!

put_BlackAndWhite: rhs
	"Private - Set the value of the 'BlackAndWhite' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall BlackAndWhite(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_BottomMargin: rhs
	"Private - Set the value of the 'BottomMargin' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall BottomMargin(
			[in]double RHS);"

	<virtual stdcall: hresult 14 double>
	^self invalidCall!

put_CenterFooter: rhs
	"Private - Set the value of the 'CenterFooter' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall CenterFooter(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 16 bstr>
	^self invalidCall!

put_CenterHeader: rhs
	"Private - Set the value of the 'CenterHeader' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall CenterHeader(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 18 bstr>
	^self invalidCall!

put_CenterHorizontally: rhs
	"Private - Set the value of the 'CenterHorizontally' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CenterHorizontally(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_CenterVertically: rhs
	"Private - Set the value of the 'CenterVertically' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall CenterVertically(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_ChartSize: rhs
	"Private - Set the value of the 'ChartSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ChartSize(
			[in]XlObjectSize RHS);"

	<virtual stdcall: hresult 24 sdword>
	^self invalidCall!

put_DifferentFirstPageHeaderFooter: rhs
	"Private - Set the value of the 'DifferentFirstPageHeaderFooter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DifferentFirstPageHeaderFooter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 86 varbool>
	^self invalidCall!

put_Draft: rhs
	"Private - Set the value of the 'Draft' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall Draft(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 26 varbool>
	^self invalidCall!

put_FirstPageNumber: rhs
	"Private - Set the value of the 'FirstPageNumber' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall FirstPageNumber(
			[in]long RHS);"

	<virtual stdcall: hresult 28 sdword>
	^self invalidCall!

put_FitToPagesTall: rhs
	"Private - Set the value of the 'FitToPagesTall' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FitToPagesTall(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 30 variant>
	^self invalidCall!

put_FitToPagesWide: rhs
	"Private - Set the value of the 'FitToPagesWide' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall FitToPagesWide(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 32 variant>
	^self invalidCall!

put_FooterMargin: rhs
	"Private - Set the value of the 'FooterMargin' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall FooterMargin(
			[in]double RHS);"

	<virtual stdcall: hresult 34 double>
	^self invalidCall!

put_HeaderMargin: rhs
	"Private - Set the value of the 'HeaderMargin' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall HeaderMargin(
			[in]double RHS);"

	<virtual stdcall: hresult 36 double>
	^self invalidCall!

put_LeftFooter: rhs
	"Private - Set the value of the 'LeftFooter' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall LeftFooter(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 38 bstr>
	^self invalidCall!

put_LeftHeader: rhs
	"Private - Set the value of the 'LeftHeader' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall LeftHeader(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 40 bstr>
	^self invalidCall!

put_LeftMargin: rhs
	"Private - Set the value of the 'LeftMargin' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall LeftMargin(
			[in]double RHS);"

	<virtual stdcall: hresult 42 double>
	^self invalidCall!

put_OddAndEvenPagesHeaderFooter: rhs
	"Private - Set the value of the 'OddAndEvenPagesHeaderFooter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall OddAndEvenPagesHeaderFooter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 84 varbool>
	^self invalidCall!

put_Order: rhs
	"Private - Set the value of the 'Order' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Order(
			[in]XlOrder RHS);"

	<virtual stdcall: hresult 44 sdword>
	^self invalidCall!

put_Orientation: rhs
	"Private - Set the value of the 'Orientation' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Orientation(
			[in]XlPageOrientation RHS);"

	<virtual stdcall: hresult 46 sdword>
	^self invalidCall!

put_PaperSize: rhs
	"Private - Set the value of the 'PaperSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PaperSize(
			[in]XlPaperSize RHS);"

	<virtual stdcall: hresult 48 sdword>
	^self invalidCall!

put_PrintArea: rhs
	"Private - Set the value of the 'PrintArea' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall PrintArea(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 50 bstr>
	^self invalidCall!

put_PrintComments: rhs
	"Private - Set the value of the 'PrintComments' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PrintComments(
			[in]XlPrintLocation RHS);"

	<virtual stdcall: hresult 74 sdword>
	^self invalidCall!

put_PrintErrors: rhs
	"Private - Set the value of the 'PrintErrors' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PrintErrors(
			[in]XlPrintErrors RHS);"

	<virtual stdcall: hresult 76 sdword>
	^self invalidCall!

put_PrintGridlines: rhs
	"Private - Set the value of the 'PrintGridlines' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintGridlines(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 52 varbool>
	^self invalidCall!

put_PrintHeadings: rhs
	"Private - Set the value of the 'PrintHeadings' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintHeadings(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 54 varbool>
	^self invalidCall!

put_PrintNotes: rhs
	"Private - Set the value of the 'PrintNotes' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall PrintNotes(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 56 varbool>
	^self invalidCall!

put_PrintQuality: index rhs: rhs
	"Private - Set the value of the 'PrintQuality' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall PrintQuality(
			[in, optional]VARIANT Index,
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 58 variant variant>
	^self invalidCall!

put_PrintTitleColumns: rhs
	"Private - Set the value of the 'PrintTitleColumns' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall PrintTitleColumns(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 60 bstr>
	^self invalidCall!

put_PrintTitleRows: rhs
	"Private - Set the value of the 'PrintTitleRows' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall PrintTitleRows(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 62 bstr>
	^self invalidCall!

put_RightFooter: rhs
	"Private - Set the value of the 'RightFooter' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall RightFooter(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 64 bstr>
	^self invalidCall!

put_RightHeader: rhs
	"Private - Set the value of the 'RightHeader' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall RightHeader(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 66 bstr>
	^self invalidCall!

put_RightMargin: rhs
	"Private - Set the value of the 'RightMargin' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall RightMargin(
			[in]double RHS);"

	<virtual stdcall: hresult 68 double>
	^self invalidCall!

put_ScaleWithDocHeaderFooter: rhs
	"Private - Set the value of the 'ScaleWithDocHeaderFooter' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall ScaleWithDocHeaderFooter(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 88 varbool>
	^self invalidCall!

put_TopMargin: rhs
	"Private - Set the value of the 'TopMargin' property of the object wrapped by the 
	 receiver to the <double> argument, rhs.

		HRESULT __stdcall TopMargin(
			[in]double RHS);"

	<virtual stdcall: hresult 70 double>
	^self invalidCall!

put_Zoom: rhs
	"Private - Set the value of the 'Zoom' property of the object wrapped by the 
	 receiver to the <variant> argument, rhs.

		HRESULT __stdcall Zoom(
			[in]VARIANT RHS);"

	<virtual stdcall: hresult 72 variant>
	^self invalidCall!

rightFooter
	"Answer the <bstr> value of the 'RightFooter' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_RightFooter: answer.
	^answer asObject
!

rightFooter: rhs
	"Set the 'RightFooter' property of the receiver to the <bstr> value of the argument."

	self put_RightFooter: rhs
!

rightFooterPicture
	"Answer the <ExcelGraphic> value of the 'RightFooterPicture' property of the receiver."

	| answer |
	answer := ExcelGraphic newPointer.
	self get_RightFooterPicture: answer.
	^answer asObject
!

rightHeader
	"Answer the <bstr> value of the 'RightHeader' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_RightHeader: answer.
	^answer asObject
!

rightHeader: rhs
	"Set the 'RightHeader' property of the receiver to the <bstr> value of the argument."

	self put_RightHeader: rhs
!

rightHeaderPicture
	"Answer the <ExcelGraphic> value of the 'RightHeaderPicture' property of the receiver."

	| answer |
	answer := ExcelGraphic newPointer.
	self get_RightHeaderPicture: answer.
	^answer asObject
!

rightMargin
	"Answer the <double> value of the 'RightMargin' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_RightMargin: answer.
	^answer asObject
!

rightMargin: rhs
	"Set the 'RightMargin' property of the receiver to the <double> value of the argument."

	self put_RightMargin: rhs
!

scaleWithDocHeaderFooter
	"Answer the <varbool> value of the 'ScaleWithDocHeaderFooter' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_ScaleWithDocHeaderFooter: answer.
	^answer asObject
!

scaleWithDocHeaderFooter: rhs
	"Set the 'ScaleWithDocHeaderFooter' property of the receiver to the <varbool> value of the argument."

	self put_ScaleWithDocHeaderFooter: rhs
!

topMargin
	"Answer the <double> value of the 'TopMargin' property of the receiver."

	| answer |
	answer := (DOUBLE new).
	self get_TopMargin: answer.
	^answer asObject
!

topMargin: rhs
	"Set the 'TopMargin' property of the receiver to the <double> value of the argument."

	self put_TopMargin: rhs
!

zoom
	"Answer the <variant> value of the 'Zoom' property of the receiver."

	| answer |
	answer := VARIANT new.
	self get_Zoom: answer.
	^answer asObject
!

zoom: rhs
	"Set the 'Zoom' property of the receiver to the <variant> value of the argument."

	self put_Zoom: rhs asVariant
! !
!ExcelIPageSetup categoriesFor: #alignMarginsHeaderFooter!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #alignMarginsHeaderFooter:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #application!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #blackAndWhite!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #blackAndWhite:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #bottomMargin!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #bottomMargin:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerFooter!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerFooter:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerFooterPicture!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerHeader!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerHeader:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerHeaderPicture!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerHorizontally!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerHorizontally:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerVertically!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #centerVertically:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #chartSize!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #chartSize:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #differentFirstPageHeaderFooter!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #differentFirstPageHeaderFooter:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #draft!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #draft:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #evenPage!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #firstPage!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #firstPageNumber!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #firstPageNumber:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #fitToPagesTall!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #fitToPagesTall:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #fitToPagesWide!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #fitToPagesWide:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #footerMargin!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #footerMargin:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #get_AlignMarginsHeaderFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_Application:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_BlackAndWhite:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_BottomMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_CenterFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_CenterFooterPicture:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_CenterHeader:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_CenterHeaderPicture:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_CenterHorizontally:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_CenterVertically:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_ChartSize:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_DifferentFirstPageHeaderFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_Draft:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_EvenPage:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_FirstPage:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_FirstPageNumber:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_FitToPagesTall:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_FitToPagesWide:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_FooterMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_HeaderMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_LeftFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_LeftFooterPicture:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_LeftHeader:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_LeftHeaderPicture:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_LeftMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_OddAndEvenPagesHeaderFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_Order:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_Orientation:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_Pages:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PaperSize:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintArea:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintComments:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintErrors:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintGridlines:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintHeadings:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintNotes:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintQuality:rhs:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintTitleColumns:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_PrintTitleRows:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_RightFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_RightFooterPicture:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_RightHeader:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_RightHeaderPicture:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_RightMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_ScaleWithDocHeaderFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_TopMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #get_Zoom:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #headerMargin!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #headerMargin:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #leftFooter!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #leftFooter:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #leftFooterPicture!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #leftHeader!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #leftHeader:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #leftHeaderPicture!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #leftMargin!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #leftMargin:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #oddAndEvenPagesHeaderFooter!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #oddAndEvenPagesHeaderFooter:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #order!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #order:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #pages!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #paperSize!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #paperSize:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printArea!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printArea:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printComments!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printComments:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printErrors!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printErrors:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printGridlines!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printGridlines:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printHeadings!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printHeadings:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printNotes!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printNotes:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printQuality!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printQuality:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printQuality:rhs:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printTitleColumns!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printTitleColumns:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printTitleRows!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #printTitleRows:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #put_AlignMarginsHeaderFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_BlackAndWhite:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_BottomMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_CenterFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_CenterHeader:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_CenterHorizontally:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_CenterVertically:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_ChartSize:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_DifferentFirstPageHeaderFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_Draft:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_FirstPageNumber:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_FitToPagesTall:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_FitToPagesWide:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_FooterMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_HeaderMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_LeftFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_LeftHeader:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_LeftMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_OddAndEvenPagesHeaderFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_Order:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_Orientation:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PaperSize:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintArea:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintComments:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintErrors:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintGridlines:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintHeadings:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintNotes:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintQuality:rhs:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintTitleColumns:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_PrintTitleRows:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_RightFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_RightHeader:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_RightMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_ScaleWithDocHeaderFooter:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_TopMargin:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #put_Zoom:!**auto generated**!COM Interfaces-IPageSetup!private! !
!ExcelIPageSetup categoriesFor: #rightFooter!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #rightFooter:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #rightFooterPicture!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #rightHeader!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #rightHeader:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #rightHeaderPicture!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #rightMargin!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #rightMargin:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #scaleWithDocHeaderFooter!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #scaleWithDocHeaderFooter:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #topMargin!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #topMargin:!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #zoom!**auto generated**!properties!public! !
!ExcelIPageSetup categoriesFor: #zoom:!**auto generated**!properties!public! !

!ExcelIPageSetup class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.IPageSetup'
		ExcelIPageSetup defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_BlackAndWhite:
			argumentTypes: 'varbool*';
		defineFunction: #put_BlackAndWhite:
			argumentTypes: 'varbool';
		defineFunction: #get_BottomMargin:
			argumentTypes: 'double*';
		defineFunction: #put_BottomMargin:
			argumentTypes: 'double';
		defineFunction: #get_CenterFooter:
			argumentTypes: 'bstr*';
		defineFunction: #put_CenterFooter:
			argumentTypes: 'bstr';
		defineFunction: #get_CenterHeader:
			argumentTypes: 'bstr*';
		defineFunction: #put_CenterHeader:
			argumentTypes: 'bstr';
		defineFunction: #get_CenterHorizontally:
			argumentTypes: 'varbool*';
		defineFunction: #put_CenterHorizontally:
			argumentTypes: 'varbool';
		defineFunction: #get_CenterVertically:
			argumentTypes: 'varbool*';
		defineFunction: #put_CenterVertically:
			argumentTypes: 'varbool';
		defineFunction: #get_ChartSize:
			argumentTypes: 'sdword*';
		defineFunction: #put_ChartSize:
			argumentTypes: 'sdword';
		defineFunction: #get_Draft:
			argumentTypes: 'varbool*';
		defineFunction: #put_Draft:
			argumentTypes: 'varbool';
		defineFunction: #get_FirstPageNumber:
			argumentTypes: 'sdword*';
		defineFunction: #put_FirstPageNumber:
			argumentTypes: 'sdword';
		defineFunction: #get_FitToPagesTall:
			argumentTypes: 'variant*';
		defineFunction: #put_FitToPagesTall:
			argumentTypes: 'variant';
		defineFunction: #get_FitToPagesWide:
			argumentTypes: 'variant*';
		defineFunction: #put_FitToPagesWide:
			argumentTypes: 'variant';
		defineFunction: #get_FooterMargin:
			argumentTypes: 'double*';
		defineFunction: #put_FooterMargin:
			argumentTypes: 'double';
		defineFunction: #get_HeaderMargin:
			argumentTypes: 'double*';
		defineFunction: #put_HeaderMargin:
			argumentTypes: 'double';
		defineFunction: #get_LeftFooter:
			argumentTypes: 'bstr*';
		defineFunction: #put_LeftFooter:
			argumentTypes: 'bstr';
		defineFunction: #get_LeftHeader:
			argumentTypes: 'bstr*';
		defineFunction: #put_LeftHeader:
			argumentTypes: 'bstr';
		defineFunction: #get_LeftMargin:
			argumentTypes: 'double*';
		defineFunction: #put_LeftMargin:
			argumentTypes: 'double';
		defineFunction: #get_Order:
			argumentTypes: 'sdword*';
		defineFunction: #put_Order:
			argumentTypes: 'sdword';
		defineFunction: #get_Orientation:
			argumentTypes: 'sdword*';
		defineFunction: #put_Orientation:
			argumentTypes: 'sdword';
		defineFunction: #get_PaperSize:
			argumentTypes: 'sdword*';
		defineFunction: #put_PaperSize:
			argumentTypes: 'sdword';
		defineFunction: #get_PrintArea:
			argumentTypes: 'bstr*';
		defineFunction: #put_PrintArea:
			argumentTypes: 'bstr';
		defineFunction: #get_PrintGridlines:
			argumentTypes: 'varbool*';
		defineFunction: #put_PrintGridlines:
			argumentTypes: 'varbool';
		defineFunction: #get_PrintHeadings:
			argumentTypes: 'varbool*';
		defineFunction: #put_PrintHeadings:
			argumentTypes: 'varbool';
		defineFunction: #get_PrintNotes:
			argumentTypes: 'varbool*';
		defineFunction: #put_PrintNotes:
			argumentTypes: 'varbool';
		defineFunction: #get_PrintQuality:rhs:
			argumentTypes: 'variant variant*';
		defineFunction: #put_PrintQuality:rhs:
			argumentTypes: 'variant variant';
		defineFunction: #get_PrintTitleColumns:
			argumentTypes: 'bstr*';
		defineFunction: #put_PrintTitleColumns:
			argumentTypes: 'bstr';
		defineFunction: #get_PrintTitleRows:
			argumentTypes: 'bstr*';
		defineFunction: #put_PrintTitleRows:
			argumentTypes: 'bstr';
		defineFunction: #get_RightFooter:
			argumentTypes: 'bstr*';
		defineFunction: #put_RightFooter:
			argumentTypes: 'bstr';
		defineFunction: #get_RightHeader:
			argumentTypes: 'bstr*';
		defineFunction: #put_RightHeader:
			argumentTypes: 'bstr';
		defineFunction: #get_RightMargin:
			argumentTypes: 'double*';
		defineFunction: #put_RightMargin:
			argumentTypes: 'double';
		defineFunction: #get_TopMargin:
			argumentTypes: 'double*';
		defineFunction: #put_TopMargin:
			argumentTypes: 'double';
		defineFunction: #get_Zoom:
			argumentTypes: 'variant*';
		defineFunction: #put_Zoom:
			argumentTypes: 'variant';
		defineFunction: #get_PrintComments:
			argumentTypes: 'sdword*';
		defineFunction: #put_PrintComments:
			argumentTypes: 'sdword';
		defineFunction: #get_PrintErrors:
			argumentTypes: 'sdword*';
		defineFunction: #put_PrintErrors:
			argumentTypes: 'sdword';
		defineFunction: #get_CenterHeaderPicture:
			argumentTypes: 'ExcelGraphic**';
		defineFunction: #get_CenterFooterPicture:
			argumentTypes: 'ExcelGraphic**';
		defineFunction: #get_LeftHeaderPicture:
			argumentTypes: 'ExcelGraphic**';
		defineFunction: #get_LeftFooterPicture:
			argumentTypes: 'ExcelGraphic**';
		defineFunction: #get_RightHeaderPicture:
			argumentTypes: 'ExcelGraphic**';
		defineFunction: #get_RightFooterPicture:
			argumentTypes: 'ExcelGraphic**';
		defineFunction: #get_OddAndEvenPagesHeaderFooter:
			argumentTypes: 'varbool*';
		defineFunction: #put_OddAndEvenPagesHeaderFooter:
			argumentTypes: 'varbool';
		defineFunction: #get_DifferentFirstPageHeaderFooter:
			argumentTypes: 'varbool*';
		defineFunction: #put_DifferentFirstPageHeaderFooter:
			argumentTypes: 'varbool';
		defineFunction: #get_ScaleWithDocHeaderFooter:
			argumentTypes: 'varbool*';
		defineFunction: #put_ScaleWithDocHeaderFooter:
			argumentTypes: 'varbool';
		defineFunction: #get_AlignMarginsHeaderFooter:
			argumentTypes: 'varbool*';
		defineFunction: #put_AlignMarginsHeaderFooter:
			argumentTypes: 'varbool';
		defineFunction: #get_Pages:
			argumentTypes: 'ExcelPages**';
		defineFunction: #get_EvenPage:
			argumentTypes: 'ExcelPage**';
		defineFunction: #get_FirstPage:
			argumentTypes: 'ExcelPage**'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelIPageSetup initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelIPageSetup class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelIPageSetup class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

