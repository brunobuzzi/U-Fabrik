"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPageSetup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPageSetup guid: (IID fromString: '{000208B4-0000-0000-C000-000000000046}')!
ExcelPageSetup comment: '<ExcelPageSetup> is a wrapper class generated for the dispatch interface ''Excel.PageSetup'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208B4-0000-0000-C000-000000000046), 
	helpcontext(0x00020074)
]
dispinterface PageSetup {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000003f1), propget, helpcontext(0x000103f1)]
		VARIANT_BOOL BlackAndWhite();
[id(0x000003f1), propput, helpcontext(0x000103f1)]
		void BlackAndWhite(
			[in]VARIANT_BOOL arg1);
[id(0x000003ea), propget, helpcontext(0x000103ea)]
		double BottomMargin();
[id(0x000003ea), propput, helpcontext(0x000103ea)]
		void BottomMargin(
			[in]double arg1);
[id(0x000003f2), propget, helpcontext(0x000103f2)]
		BSTR CenterFooter();
[id(0x000003f2), propput, helpcontext(0x000103f2)]
		void CenterFooter(
			[in]BSTR arg1);
[id(0x000003f3), propget, helpcontext(0x000103f3)]
		BSTR CenterHeader();
[id(0x000003f3), propput, helpcontext(0x000103f3)]
		void CenterHeader(
			[in]BSTR arg1);
[id(0x000003ed), propget, helpcontext(0x000103ed)]
		VARIANT_BOOL CenterHorizontally();
[id(0x000003ed), propput, helpcontext(0x000103ed)]
		void CenterHorizontally(
			[in]VARIANT_BOOL arg1);
[id(0x000003ee), propget, helpcontext(0x000103ee)]
		VARIANT_BOOL CenterVertically();
[id(0x000003ee), propput, helpcontext(0x000103ee)]
		void CenterVertically(
			[in]VARIANT_BOOL arg1);
[id(0x000003f4), hidden, propget, helpcontext(0x000103f4)]
		XlObjectSize ChartSize();
[id(0x000003f4), hidden, propput, helpcontext(0x000103f4)]
		void ChartSize(
			[in]XlObjectSize arg1);
[id(0x000003fc), propget, helpcontext(0x000103fc)]
		VARIANT_BOOL Draft();
[id(0x000003fc), propput, helpcontext(0x000103fc)]
		void Draft(
			[in]VARIANT_BOOL arg1);
[id(0x000003f0), propget, helpcontext(0x000103f0)]
		long FirstPageNumber();
[id(0x000003f0), propput, helpcontext(0x000103f0)]
		void FirstPageNumber(
			[in]long arg1);
[id(0x000003f5), propget, helpcontext(0x000103f5)]
		VARIANT FitToPagesTall();
[id(0x000003f5), propput, helpcontext(0x000103f5)]
		void FitToPagesTall(
			[in]VARIANT arg1);
[id(0x000003f6), propget, helpcontext(0x000103f6)]
		VARIANT FitToPagesWide();
[id(0x000003f6), propput, helpcontext(0x000103f6)]
		void FitToPagesWide(
			[in]VARIANT arg1);
[id(0x000003f7), propget, helpcontext(0x000103f7)]
		double FooterMargin();
[id(0x000003f7), propput, helpcontext(0x000103f7)]
		void FooterMargin(
			[in]double arg1);
[id(0x000003f8), propget, helpcontext(0x000103f8)]
		double HeaderMargin();
[id(0x000003f8), propput, helpcontext(0x000103f8)]
		void HeaderMargin(
			[in]double arg1);
[id(0x000003f9), propget, helpcontext(0x000103f9)]
		BSTR LeftFooter();
[id(0x000003f9), propput, helpcontext(0x000103f9)]
		void LeftFooter(
			[in]BSTR arg1);
[id(0x000003fa), propget, helpcontext(0x000103fa)]
		BSTR LeftHeader();
[id(0x000003fa), propput, helpcontext(0x000103fa)]
		void LeftHeader(
			[in]BSTR arg1);
[id(0x000003e7), propget, helpcontext(0x000103e7)]
		double LeftMargin();
[id(0x000003e7), propput, helpcontext(0x000103e7)]
		void LeftMargin(
			[in]double arg1);
[id(0x000000c0), propget, helpcontext(0x000100c0)]
		XlOrder Order();
[id(0x000000c0), propput, helpcontext(0x000100c0)]
		void Order(
			[in]XlOrder arg1);
[id(0x00000086), propget, helpcontext(0x00010086)]
		XlPageOrientation Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]XlPageOrientation arg1);
[id(0x000003ef), propget, helpcontext(0x000103ef)]
		XlPaperSize PaperSize();
[id(0x000003ef), propput, helpcontext(0x000103ef)]
		void PaperSize(
			[in]XlPaperSize arg1);
[id(0x000003fb), propget, helpcontext(0x000103fb)]
		BSTR PrintArea();
[id(0x000003fb), propput, helpcontext(0x000103fb)]
		void PrintArea(
			[in]BSTR arg1);
[id(0x000003ec), propget, helpcontext(0x000103ec)]
		VARIANT_BOOL PrintGridlines();
[id(0x000003ec), propput, helpcontext(0x000103ec)]
		void PrintGridlines(
			[in]VARIANT_BOOL arg1);
[id(0x000003eb), propget, helpcontext(0x000103eb)]
		VARIANT_BOOL PrintHeadings();
[id(0x000003eb), propput, helpcontext(0x000103eb)]
		void PrintHeadings(
			[in]VARIANT_BOOL arg1);
[id(0x000003fd), propget, helpcontext(0x000103fd)]
		VARIANT_BOOL PrintNotes();
[id(0x000003fd), propput, helpcontext(0x000103fd)]
		void PrintNotes(
			[in]VARIANT_BOOL arg1);
[id(0x000003fe), propget, helpcontext(0x000103fe)]
		VARIANT PrintQuality(
			[in, optional]VARIANT Index);
[id(0x000003fe), propput, helpcontext(0x000103fe)]
		void PrintQuality(
			[in, optional]VARIANT Index,
			[in]VARIANT arg2);
[id(0x000003ff), propget, helpcontext(0x000103ff)]
		BSTR PrintTitleColumns();
[id(0x000003ff), propput, helpcontext(0x000103ff)]
		void PrintTitleColumns(
			[in]BSTR arg1);
[id(0x00000400), propget, helpcontext(0x00010400)]
		BSTR PrintTitleRows();
[id(0x00000400), propput, helpcontext(0x00010400)]
		void PrintTitleRows(
			[in]BSTR arg1);
[id(0x00000401), propget, helpcontext(0x00010401)]
		BSTR RightFooter();
[id(0x00000401), propput, helpcontext(0x00010401)]
		void RightFooter(
			[in]BSTR arg1);
[id(0x00000402), propget, helpcontext(0x00010402)]
		BSTR RightHeader();
[id(0x00000402), propput, helpcontext(0x00010402)]
		void RightHeader(
			[in]BSTR arg1);
[id(0x000003e8), propget, helpcontext(0x000103e8)]
		double RightMargin();
[id(0x000003e8), propput, helpcontext(0x000103e8)]
		void RightMargin(
			[in]double arg1);
[id(0x000003e9), propget, helpcontext(0x000103e9)]
		double TopMargin();
[id(0x000003e9), propput, helpcontext(0x000103e9)]
		void TopMargin(
			[in]double arg1);
[id(0x00000297), propget, helpcontext(0x00010297)]
		VARIANT Zoom();
[id(0x00000297), propput, helpcontext(0x00010297)]
		void Zoom(
			[in]VARIANT arg1);
[id(0x000005f4), propget, helpcontext(0x000105f4)]
		XlPrintLocation PrintComments();
[id(0x000005f4), propput, helpcontext(0x000105f4)]
		void PrintComments(
			[in]XlPrintLocation arg1);
[id(0x00000865), propget, helpcontext(0x00010865)]
		XlPrintErrors PrintErrors();
[id(0x00000865), propput, helpcontext(0x00010865)]
		void PrintErrors(
			[in]XlPrintErrors arg1);
[id(0x00000866), propget, helpcontext(0x00010866)]
		Graphic* CenterHeaderPicture();
[id(0x00000867), propget, helpcontext(0x00010867)]
		Graphic* CenterFooterPicture();
[id(0x00000868), propget, helpcontext(0x00010868)]
		Graphic* LeftHeaderPicture();
[id(0x00000869), propget, helpcontext(0x00010869)]
		Graphic* LeftFooterPicture();
[id(0x0000086a), propget, helpcontext(0x0001086a)]
		Graphic* RightHeaderPicture();
[id(0x0000086b), propget, helpcontext(0x0001086b)]
		Graphic* RightFooterPicture();
[id(0x00000a28), propget, helpcontext(0x00010a28)]
		VARIANT_BOOL OddAndEvenPagesHeaderFooter();
[id(0x00000a28), propput, helpcontext(0x00010a28)]
		void OddAndEvenPagesHeaderFooter(
			[in]VARIANT_BOOL arg1);
[id(0x00000a29), propget, helpcontext(0x00010a29)]
		VARIANT_BOOL DifferentFirstPageHeaderFooter();
[id(0x00000a29), propput, helpcontext(0x00010a29)]
		void DifferentFirstPageHeaderFooter(
			[in]VARIANT_BOOL arg1);
[id(0x00000a2a), propget, helpcontext(0x00010a2a)]
		VARIANT_BOOL ScaleWithDocHeaderFooter();
[id(0x00000a2a), propput, helpcontext(0x00010a2a)]
		void ScaleWithDocHeaderFooter(
			[in]VARIANT_BOOL arg1);
[id(0x00000a2b), propget, helpcontext(0x00010a2b)]
		VARIANT_BOOL AlignMarginsHeaderFooter();
[id(0x00000a2b), propput, helpcontext(0x00010a2b)]
		void AlignMarginsHeaderFooter(
			[in]VARIANT_BOOL arg1);
[id(0x00000a2c), propget, helpcontext(0x00010a2c)]
		Pages* Pages();
[id(0x00000a2d), propget, helpcontext(0x00010a2d)]
		Page* EvenPage();
[id(0x00000a2e), propget, helpcontext(0x00010a2e)]
		Page* FirstPage();
};
'!
!ExcelPageSetup categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPageSetup methodsFor!

alignMarginsHeaderFooter
	"Answer the <varbool> value of the 'AlignMarginsHeaderFooter' property of the receiver.
		VARIANT_BOOL AlignMarginsHeaderFooter"

	^(self getPropertyId: 2603)
!

alignMarginsHeaderFooter: arg1
	"Set the 'AlignMarginsHeaderFooter' property of the receiver to the <varbool> value of the argument.
		void AlignMarginsHeaderFooter"

	self setPropertyId: 2603 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

blackAndWhite
	"Answer the <varbool> value of the 'BlackAndWhite' property of the receiver.
		VARIANT_BOOL BlackAndWhite"

	^(self getPropertyId: 1009)
!

blackAndWhite: arg1
	"Set the 'BlackAndWhite' property of the receiver to the <varbool> value of the argument.
		void BlackAndWhite"

	self setPropertyId: 1009 value: arg1
!

bottomMargin
	"Answer the <double> value of the 'BottomMargin' property of the receiver.
		double BottomMargin"

	^(self getPropertyId: 1002)
!

bottomMargin: arg1
	"Set the 'BottomMargin' property of the receiver to the <double> value of the argument.
		void BottomMargin"

	self setPropertyId: 1002 value: arg1
!

centerFooter
	"Answer the <bstr> value of the 'CenterFooter' property of the receiver.
		BSTR CenterFooter"

	^(self getPropertyId: 1010)
!

centerFooter: arg1
	"Set the 'CenterFooter' property of the receiver to the <bstr> value of the argument.
		void CenterFooter"

	self setPropertyId: 1010 value: arg1
!

centerFooterPicture
	"Answer the <ExcelGraphic> value of the 'CenterFooterPicture' property of the receiver.
		Graphic* CenterFooterPicture"

	^ExcelGraphic attachInterface: (self getPropertyId: 2151)
!

centerHeader
	"Answer the <bstr> value of the 'CenterHeader' property of the receiver.
		BSTR CenterHeader"

	^(self getPropertyId: 1011)
!

centerHeader: arg1
	"Set the 'CenterHeader' property of the receiver to the <bstr> value of the argument.
		void CenterHeader"

	self setPropertyId: 1011 value: arg1
!

centerHeaderPicture
	"Answer the <ExcelGraphic> value of the 'CenterHeaderPicture' property of the receiver.
		Graphic* CenterHeaderPicture"

	^ExcelGraphic attachInterface: (self getPropertyId: 2150)
!

centerHorizontally
	"Answer the <varbool> value of the 'CenterHorizontally' property of the receiver.
		VARIANT_BOOL CenterHorizontally"

	^(self getPropertyId: 1005)
!

centerHorizontally: arg1
	"Set the 'CenterHorizontally' property of the receiver to the <varbool> value of the argument.
		void CenterHorizontally"

	self setPropertyId: 1005 value: arg1
!

centerVertically
	"Answer the <varbool> value of the 'CenterVertically' property of the receiver.
		VARIANT_BOOL CenterVertically"

	^(self getPropertyId: 1006)
!

centerVertically: arg1
	"Set the 'CenterVertically' property of the receiver to the <varbool> value of the argument.
		void CenterVertically"

	self setPropertyId: 1006 value: arg1
!

chartSize
	"Answer the <sdword> value of the 'ChartSize' property of the receiver.
		XlObjectSize ChartSize"

	^(self getPropertyId: 1012)
!

chartSize: arg1
	"Set the 'ChartSize' property of the receiver to the <sdword> value of the argument.
		void ChartSize"

	self setPropertyId: 1012 value: arg1
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

differentFirstPageHeaderFooter
	"Answer the <varbool> value of the 'DifferentFirstPageHeaderFooter' property of the receiver.
		VARIANT_BOOL DifferentFirstPageHeaderFooter"

	^(self getPropertyId: 2601)
!

differentFirstPageHeaderFooter: arg1
	"Set the 'DifferentFirstPageHeaderFooter' property of the receiver to the <varbool> value of the argument.
		void DifferentFirstPageHeaderFooter"

	self setPropertyId: 2601 value: arg1
!

draft
	"Answer the <varbool> value of the 'Draft' property of the receiver.
		VARIANT_BOOL Draft"

	^(self getPropertyId: 1020)
!

draft: arg1
	"Set the 'Draft' property of the receiver to the <varbool> value of the argument.
		void Draft"

	self setPropertyId: 1020 value: arg1
!

evenPage
	"Answer the <ExcelPage> value of the 'EvenPage' property of the receiver.
		Page* EvenPage"

	^ExcelPage attachInterface: (self getPropertyId: 2605)
!

firstPage
	"Answer the <ExcelPage> value of the 'FirstPage' property of the receiver.
		Page* FirstPage"

	^ExcelPage attachInterface: (self getPropertyId: 2606)
!

firstPageNumber
	"Answer the <sdword> value of the 'FirstPageNumber' property of the receiver.
		long FirstPageNumber"

	^(self getPropertyId: 1008)
!

firstPageNumber: arg1
	"Set the 'FirstPageNumber' property of the receiver to the <sdword> value of the argument.
		void FirstPageNumber"

	self setPropertyId: 1008 value: arg1
!

fitToPagesTall
	"Answer the <variant> value of the 'FitToPagesTall' property of the receiver.
		VARIANT FitToPagesTall"

	^(self getPropertyId: 1013)
!

fitToPagesTall: arg1
	"Set the 'FitToPagesTall' property of the receiver to the <variant> value of the argument.
		void FitToPagesTall"

	self setPropertyId: 1013 value: arg1
!

fitToPagesWide
	"Answer the <variant> value of the 'FitToPagesWide' property of the receiver.
		VARIANT FitToPagesWide"

	^(self getPropertyId: 1014)
!

fitToPagesWide: arg1
	"Set the 'FitToPagesWide' property of the receiver to the <variant> value of the argument.
		void FitToPagesWide"

	self setPropertyId: 1014 value: arg1
!

footerMargin
	"Answer the <double> value of the 'FooterMargin' property of the receiver.
		double FooterMargin"

	^(self getPropertyId: 1015)
!

footerMargin: arg1
	"Set the 'FooterMargin' property of the receiver to the <double> value of the argument.
		void FooterMargin"

	self setPropertyId: 1015 value: arg1
!

headerMargin
	"Answer the <double> value of the 'HeaderMargin' property of the receiver.
		double HeaderMargin"

	^(self getPropertyId: 1016)
!

headerMargin: arg1
	"Set the 'HeaderMargin' property of the receiver to the <double> value of the argument.
		void HeaderMargin"

	self setPropertyId: 1016 value: arg1
!

leftFooter
	"Answer the <bstr> value of the 'LeftFooter' property of the receiver.
		BSTR LeftFooter"

	^(self getPropertyId: 1017)
!

leftFooter: arg1
	"Set the 'LeftFooter' property of the receiver to the <bstr> value of the argument.
		void LeftFooter"

	self setPropertyId: 1017 value: arg1
!

leftFooterPicture
	"Answer the <ExcelGraphic> value of the 'LeftFooterPicture' property of the receiver.
		Graphic* LeftFooterPicture"

	^ExcelGraphic attachInterface: (self getPropertyId: 2153)
!

leftHeader
	"Answer the <bstr> value of the 'LeftHeader' property of the receiver.
		BSTR LeftHeader"

	^(self getPropertyId: 1018)
!

leftHeader: arg1
	"Set the 'LeftHeader' property of the receiver to the <bstr> value of the argument.
		void LeftHeader"

	self setPropertyId: 1018 value: arg1
!

leftHeaderPicture
	"Answer the <ExcelGraphic> value of the 'LeftHeaderPicture' property of the receiver.
		Graphic* LeftHeaderPicture"

	^ExcelGraphic attachInterface: (self getPropertyId: 2152)
!

leftMargin
	"Answer the <double> value of the 'LeftMargin' property of the receiver.
		double LeftMargin"

	^(self getPropertyId: 999)
!

leftMargin: arg1
	"Set the 'LeftMargin' property of the receiver to the <double> value of the argument.
		void LeftMargin"

	self setPropertyId: 999 value: arg1
!

oddAndEvenPagesHeaderFooter
	"Answer the <varbool> value of the 'OddAndEvenPagesHeaderFooter' property of the receiver.
		VARIANT_BOOL OddAndEvenPagesHeaderFooter"

	^(self getPropertyId: 2600)
!

oddAndEvenPagesHeaderFooter: arg1
	"Set the 'OddAndEvenPagesHeaderFooter' property of the receiver to the <varbool> value of the argument.
		void OddAndEvenPagesHeaderFooter"

	self setPropertyId: 2600 value: arg1
!

order
	"Answer the <sdword> value of the 'Order' property of the receiver.
		XlOrder Order"

	^(self getPropertyId: 192)
!

order: arg1
	"Set the 'Order' property of the receiver to the <sdword> value of the argument.
		void Order"

	self setPropertyId: 192 value: arg1
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver.
		XlPageOrientation Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

pages
	"Answer the <ExcelPages> value of the 'Pages' property of the receiver.
		Pages* Pages"

	^ExcelPages attachInterface: (self getPropertyId: 2604)
!

paperSize
	"Answer the <sdword> value of the 'PaperSize' property of the receiver.
		XlPaperSize PaperSize"

	^(self getPropertyId: 1007)
!

paperSize: arg1
	"Set the 'PaperSize' property of the receiver to the <sdword> value of the argument.
		void PaperSize"

	self setPropertyId: 1007 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

printArea
	"Answer the <bstr> value of the 'PrintArea' property of the receiver.
		BSTR PrintArea"

	^(self getPropertyId: 1019)
!

printArea: arg1
	"Set the 'PrintArea' property of the receiver to the <bstr> value of the argument.
		void PrintArea"

	self setPropertyId: 1019 value: arg1
!

printComments
	"Answer the <sdword> value of the 'PrintComments' property of the receiver.
		XlPrintLocation PrintComments"

	^(self getPropertyId: 1524)
!

printComments: arg1
	"Set the 'PrintComments' property of the receiver to the <sdword> value of the argument.
		void PrintComments"

	self setPropertyId: 1524 value: arg1
!

printErrors
	"Answer the <sdword> value of the 'PrintErrors' property of the receiver.
		XlPrintErrors PrintErrors"

	^(self getPropertyId: 2149)
!

printErrors: arg1
	"Set the 'PrintErrors' property of the receiver to the <sdword> value of the argument.
		void PrintErrors"

	self setPropertyId: 2149 value: arg1
!

printGridlines
	"Answer the <varbool> value of the 'PrintGridlines' property of the receiver.
		VARIANT_BOOL PrintGridlines"

	^(self getPropertyId: 1004)
!

printGridlines: arg1
	"Set the 'PrintGridlines' property of the receiver to the <varbool> value of the argument.
		void PrintGridlines"

	self setPropertyId: 1004 value: arg1
!

printHeadings
	"Answer the <varbool> value of the 'PrintHeadings' property of the receiver.
		VARIANT_BOOL PrintHeadings"

	^(self getPropertyId: 1003)
!

printHeadings: arg1
	"Set the 'PrintHeadings' property of the receiver to the <varbool> value of the argument.
		void PrintHeadings"

	self setPropertyId: 1003 value: arg1
!

printNotes
	"Answer the <varbool> value of the 'PrintNotes' property of the receiver.
		VARIANT_BOOL PrintNotes"

	^(self getPropertyId: 1021)
!

printNotes: arg1
	"Set the 'PrintNotes' property of the receiver to the <varbool> value of the argument.
		void PrintNotes"

	self setPropertyId: 1021 value: arg1
!

printQuality
	"Answer the <variant> value of the 'PrintQuality' property of the receiver.
		VARIANT PrintQuality"

	^self printQuality: VARIANT unspecified!

printQuality: index
	"Answer the <variant> value of the 'PrintQuality' property of the receiver.
		VARIANT PrintQuality"

	^(self getPropertyId: 1022 item: index)
!

printQuality: index _: arg2
	"Set the 'PrintQuality' property of the receiver to the <variant> value of the argument.
		void PrintQuality"

	self setPropertyId: 1022 item: index value: arg2
!

printTitleColumns
	"Answer the <bstr> value of the 'PrintTitleColumns' property of the receiver.
		BSTR PrintTitleColumns"

	^(self getPropertyId: 1023)
!

printTitleColumns: arg1
	"Set the 'PrintTitleColumns' property of the receiver to the <bstr> value of the argument.
		void PrintTitleColumns"

	self setPropertyId: 1023 value: arg1
!

printTitleRows
	"Answer the <bstr> value of the 'PrintTitleRows' property of the receiver.
		BSTR PrintTitleRows"

	^(self getPropertyId: 1024)
!

printTitleRows: arg1
	"Set the 'PrintTitleRows' property of the receiver to the <bstr> value of the argument.
		void PrintTitleRows"

	self setPropertyId: 1024 value: arg1
!

rightFooter
	"Answer the <bstr> value of the 'RightFooter' property of the receiver.
		BSTR RightFooter"

	^(self getPropertyId: 1025)
!

rightFooter: arg1
	"Set the 'RightFooter' property of the receiver to the <bstr> value of the argument.
		void RightFooter"

	self setPropertyId: 1025 value: arg1
!

rightFooterPicture
	"Answer the <ExcelGraphic> value of the 'RightFooterPicture' property of the receiver.
		Graphic* RightFooterPicture"

	^ExcelGraphic attachInterface: (self getPropertyId: 2155)
!

rightHeader
	"Answer the <bstr> value of the 'RightHeader' property of the receiver.
		BSTR RightHeader"

	^(self getPropertyId: 1026)
!

rightHeader: arg1
	"Set the 'RightHeader' property of the receiver to the <bstr> value of the argument.
		void RightHeader"

	self setPropertyId: 1026 value: arg1
!

rightHeaderPicture
	"Answer the <ExcelGraphic> value of the 'RightHeaderPicture' property of the receiver.
		Graphic* RightHeaderPicture"

	^ExcelGraphic attachInterface: (self getPropertyId: 2154)
!

rightMargin
	"Answer the <double> value of the 'RightMargin' property of the receiver.
		double RightMargin"

	^(self getPropertyId: 1000)
!

rightMargin: arg1
	"Set the 'RightMargin' property of the receiver to the <double> value of the argument.
		void RightMargin"

	self setPropertyId: 1000 value: arg1
!

scaleWithDocHeaderFooter
	"Answer the <varbool> value of the 'ScaleWithDocHeaderFooter' property of the receiver.
		VARIANT_BOOL ScaleWithDocHeaderFooter"

	^(self getPropertyId: 2602)
!

scaleWithDocHeaderFooter: arg1
	"Set the 'ScaleWithDocHeaderFooter' property of the receiver to the <varbool> value of the argument.
		void ScaleWithDocHeaderFooter"

	self setPropertyId: 2602 value: arg1
!

topMargin
	"Answer the <double> value of the 'TopMargin' property of the receiver.
		double TopMargin"

	^(self getPropertyId: 1001)
!

topMargin: arg1
	"Set the 'TopMargin' property of the receiver to the <double> value of the argument.
		void TopMargin"

	self setPropertyId: 1001 value: arg1
!

zoom
	"Answer the <variant> value of the 'Zoom' property of the receiver.
		VARIANT Zoom"

	^(self getPropertyId: 663)
!

zoom: arg1
	"Set the 'Zoom' property of the receiver to the <variant> value of the argument.
		void Zoom"

	self setPropertyId: 663 value: arg1
! !
!ExcelPageSetup categoriesFor: #alignMarginsHeaderFooter!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #alignMarginsHeaderFooter:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #blackAndWhite!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #blackAndWhite:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #bottomMargin!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #bottomMargin:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerFooter!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerFooter:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerFooterPicture!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerHeader!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerHeader:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerHeaderPicture!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerHorizontally!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerHorizontally:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerVertically!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #centerVertically:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #chartSize!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #chartSize:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #differentFirstPageHeaderFooter!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #differentFirstPageHeaderFooter:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #draft!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #draft:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #evenPage!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #firstPage!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #firstPageNumber!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #firstPageNumber:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #fitToPagesTall!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #fitToPagesTall:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #fitToPagesWide!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #fitToPagesWide:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #footerMargin!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #footerMargin:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #headerMargin!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #headerMargin:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #leftFooter!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #leftFooter:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #leftFooterPicture!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #leftHeader!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #leftHeader:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #leftHeaderPicture!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #leftMargin!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #leftMargin:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #oddAndEvenPagesHeaderFooter!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #oddAndEvenPagesHeaderFooter:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #order!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #order:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #pages!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #paperSize!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #paperSize:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printArea!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printArea:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printComments!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printComments:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printErrors!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printErrors:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printGridlines!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printGridlines:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printHeadings!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printHeadings:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printNotes!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printNotes:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printQuality!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printQuality:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printQuality:_:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printTitleColumns!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printTitleColumns:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printTitleRows!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #printTitleRows:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #rightFooter!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #rightFooter:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #rightFooterPicture!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #rightHeader!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #rightHeader:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #rightHeaderPicture!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #rightMargin!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #rightMargin:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #scaleWithDocHeaderFooter!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #scaleWithDocHeaderFooter:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #topMargin!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #topMargin:!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #zoom!**auto generated**!properties!public! !
!ExcelPageSetup categoriesFor: #zoom:!**auto generated**!properties!public! !

!ExcelPageSetup class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPageSetup initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPageSetup class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

