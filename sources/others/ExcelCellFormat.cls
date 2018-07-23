"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCellFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCellFormat guid: (IID fromString: '{00024450-0000-0000-C000-000000000046}')!
ExcelCellFormat comment: '<ExcelCellFormat> is a wrapper class generated for the dispatch interface ''Excel.CellFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024450-0000-0000-C000-000000000046), 
	helpcontext(0x000200e6)
]
dispinterface CellFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000001b3), propget, helpcontext(0x000101b3)]
		Borders* Borders();
[id(0x000001b3), propputref, helpcontext(0x000101b3)]
		void Borders(
			[in]Borders* arg1);
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x00000092), propputref, helpcontext(0x00010092)]
		void Font(
			[in]Font* arg1);
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x00000081), propputref, helpcontext(0x00010081)]
		void Interior(
			[in]Interior* arg1);
[id(0x000000c1), propget, helpcontext(0x000100c1)]
		VARIANT NumberFormat();
[id(0x000000c1), propput, helpcontext(0x000100c1)]
		void NumberFormat(
			[in]VARIANT arg1);
[id(0x00000449), propget, helpcontext(0x00010449)]
		VARIANT NumberFormatLocal();
[id(0x00000449), propput, helpcontext(0x00010449)]
		void NumberFormatLocal(
			[in]VARIANT arg1);
[id(0x00000427), propget, helpcontext(0x00010427)]
		VARIANT AddIndent();
[id(0x00000427), propput, helpcontext(0x00010427)]
		void AddIndent(
			[in]VARIANT arg1);
[id(0x000000c9), propget, helpcontext(0x000100c9)]
		VARIANT IndentLevel();
[id(0x000000c9), propput, helpcontext(0x000100c9)]
		void IndentLevel(
			[in]VARIANT arg1);
[id(0x00000088), propget, helpcontext(0x00010088)]
		VARIANT HorizontalAlignment();
[id(0x00000088), propput, helpcontext(0x00010088)]
		void HorizontalAlignment(
			[in]VARIANT arg1);
[id(0x00000089), propget, helpcontext(0x00010089)]
		VARIANT VerticalAlignment();
[id(0x00000089), propput, helpcontext(0x00010089)]
		void VerticalAlignment(
			[in]VARIANT arg1);
[id(0x00000086), propget, helpcontext(0x00010086)]
		VARIANT Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]VARIANT arg1);
[id(0x000000d1), propget, helpcontext(0x000100d1)]
		VARIANT ShrinkToFit();
[id(0x000000d1), propput, helpcontext(0x000100d1)]
		void ShrinkToFit(
			[in]VARIANT arg1);
[id(0x00000114), propget, helpcontext(0x00010114)]
		VARIANT WrapText();
[id(0x00000114), propput, helpcontext(0x00010114)]
		void WrapText(
			[in]VARIANT arg1);
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT arg1);
[id(0x00000106), propget, helpcontext(0x00010106)]
		VARIANT FormulaHidden();
[id(0x00000106), propput, helpcontext(0x00010106)]
		void FormulaHidden(
			[in]VARIANT arg1);
[id(0x000000d0), propget, helpcontext(0x000100d0)]
		VARIANT MergeCells();
[id(0x000000d0), propput, helpcontext(0x000100d0)]
		void MergeCells(
			[in]VARIANT arg1);
[id(0x0000006f), helpcontext(0x0001006f)]
		void Clear();
};
'!
!ExcelCellFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCellFormat methodsFor!

addIndent
	"Answer the <variant> value of the 'AddIndent' property of the receiver.
		VARIANT AddIndent"

	^(self getPropertyId: 1063)
!

addIndent: arg1
	"Set the 'AddIndent' property of the receiver to the <variant> value of the argument.
		void AddIndent"

	self setPropertyId: 1063 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver.
		Borders* Borders"

	^ExcelBorders attachInterface: (self getPropertyId: 435)
!

clear
	"Invoke the Clear() method of the COM object."

	(self invokeId: 111)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

formulaHidden
	"Answer the <variant> value of the 'FormulaHidden' property of the receiver.
		VARIANT FormulaHidden"

	^(self getPropertyId: 262)
!

formulaHidden: arg1
	"Set the 'FormulaHidden' property of the receiver to the <variant> value of the argument.
		void FormulaHidden"

	self setPropertyId: 262 value: arg1
!

horizontalAlignment
	"Answer the <variant> value of the 'HorizontalAlignment' property of the receiver.
		VARIANT HorizontalAlignment"

	^(self getPropertyId: 136)
!

horizontalAlignment: arg1
	"Set the 'HorizontalAlignment' property of the receiver to the <variant> value of the argument.
		void HorizontalAlignment"

	self setPropertyId: 136 value: arg1
!

indentLevel
	"Answer the <variant> value of the 'IndentLevel' property of the receiver.
		VARIANT IndentLevel"

	^(self getPropertyId: 201)
!

indentLevel: arg1
	"Set the 'IndentLevel' property of the receiver to the <variant> value of the argument.
		void IndentLevel"

	self setPropertyId: 201 value: arg1
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

locked
	"Answer the <variant> value of the 'Locked' property of the receiver.
		VARIANT Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <variant> value of the argument.
		void Locked"

	self setPropertyId: 269 value: arg1
!

mergeCells
	"Answer the <variant> value of the 'MergeCells' property of the receiver.
		VARIANT MergeCells"

	^(self getPropertyId: 208)
!

mergeCells: arg1
	"Set the 'MergeCells' property of the receiver to the <variant> value of the argument.
		void MergeCells"

	self setPropertyId: 208 value: arg1
!

numberFormat
	"Answer the <variant> value of the 'NumberFormat' property of the receiver.
		VARIANT NumberFormat"

	^(self getPropertyId: 193)
!

numberFormat: arg1
	"Set the 'NumberFormat' property of the receiver to the <variant> value of the argument.
		void NumberFormat"

	self setPropertyId: 193 value: arg1
!

numberFormatLocal
	"Answer the <variant> value of the 'NumberFormatLocal' property of the receiver.
		VARIANT NumberFormatLocal"

	^(self getPropertyId: 1097)
!

numberFormatLocal: arg1
	"Set the 'NumberFormatLocal' property of the receiver to the <variant> value of the argument.
		void NumberFormatLocal"

	self setPropertyId: 1097 value: arg1
!

orientation
	"Answer the <variant> value of the 'Orientation' property of the receiver.
		VARIANT Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <variant> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

setBorders: arg1
	"Set the 'Borders' property of the receiver to the <ExcelBorders*> value of the argument.
		void Borders"

	self setPropertyId: 435 value: arg1
!

setFont: arg1
	"Set the 'Font' property of the receiver to the <ExcelFont*> value of the argument.
		void Font"

	self setPropertyId: 146 value: arg1
!

setInterior: arg1
	"Set the 'Interior' property of the receiver to the <ExcelInterior*> value of the argument.
		void Interior"

	self setPropertyId: 129 value: arg1
!

shrinkToFit
	"Answer the <variant> value of the 'ShrinkToFit' property of the receiver.
		VARIANT ShrinkToFit"

	^(self getPropertyId: 209)
!

shrinkToFit: arg1
	"Set the 'ShrinkToFit' property of the receiver to the <variant> value of the argument.
		void ShrinkToFit"

	self setPropertyId: 209 value: arg1
!

verticalAlignment
	"Answer the <variant> value of the 'VerticalAlignment' property of the receiver.
		VARIANT VerticalAlignment"

	^(self getPropertyId: 137)
!

verticalAlignment: arg1
	"Set the 'VerticalAlignment' property of the receiver to the <variant> value of the argument.
		void VerticalAlignment"

	self setPropertyId: 137 value: arg1
!

wrapText
	"Answer the <variant> value of the 'WrapText' property of the receiver.
		VARIANT WrapText"

	^(self getPropertyId: 276)
!

wrapText: arg1
	"Set the 'WrapText' property of the receiver to the <variant> value of the argument.
		void WrapText"

	self setPropertyId: 276 value: arg1
! !
!ExcelCellFormat categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelCellFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #font!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #formulaHidden!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #formulaHidden:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #indentLevel!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #indentLevel:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #mergeCells!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #mergeCells:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #setBorders:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #setFont:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #setInterior:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #shrinkToFit!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #shrinkToFit:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #wrapText!**auto generated**!properties!public! !
!ExcelCellFormat categoriesFor: #wrapText:!**auto generated**!properties!public! !

!ExcelCellFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCellFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCellFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

