"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelStyle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelStyle guid: (IID fromString: '{00020852-0000-0000-C000-000000000046}')!
ExcelStyle comment: '<ExcelStyle> is a wrapper class generated for the dispatch interface ''Excel.Style'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020852-0000-0000-C000-000000000046), 
	helpcontext(0x00020012)
]
dispinterface Style {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000427), propget, helpcontext(0x00010427)]
		VARIANT_BOOL AddIndent();
[id(0x00000427), propput, helpcontext(0x00010427)]
		void AddIndent(
			[in]VARIANT_BOOL arg1);
[id(0x00000229), propget, helpcontext(0x00010229)]
		VARIANT_BOOL BuiltIn();
[id(0x000001b3), propget, helpcontext(0x000101b3)]
		Borders* Borders();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x00000106), propget, helpcontext(0x00010106)]
		VARIANT_BOOL FormulaHidden();
[id(0x00000106), propput, helpcontext(0x00010106)]
		void FormulaHidden(
			[in]VARIANT_BOOL arg1);
[id(0x00000088), propget, helpcontext(0x00010088)]
		XlHAlign HorizontalAlignment();
[id(0x00000088), propput, helpcontext(0x00010088)]
		void HorizontalAlignment(
			[in]XlHAlign arg1);
[id(0x0000019d), propget, helpcontext(0x0001019d)]
		VARIANT_BOOL IncludeAlignment();
[id(0x0000019d), propput, helpcontext(0x0001019d)]
		void IncludeAlignment(
			[in]VARIANT_BOOL arg1);
[id(0x0000019e), propget, helpcontext(0x0001019e)]
		VARIANT_BOOL IncludeBorder();
[id(0x0000019e), propput, helpcontext(0x0001019e)]
		void IncludeBorder(
			[in]VARIANT_BOOL arg1);
[id(0x0000019f), propget, helpcontext(0x0001019f)]
		VARIANT_BOOL IncludeFont();
[id(0x0000019f), propput, helpcontext(0x0001019f)]
		void IncludeFont(
			[in]VARIANT_BOOL arg1);
[id(0x000001a0), propget, helpcontext(0x000101a0)]
		VARIANT_BOOL IncludeNumber();
[id(0x000001a0), propput, helpcontext(0x000101a0)]
		void IncludeNumber(
			[in]VARIANT_BOOL arg1);
[id(0x000001a1), propget, helpcontext(0x000101a1)]
		VARIANT_BOOL IncludePatterns();
[id(0x000001a1), propput, helpcontext(0x000101a1)]
		void IncludePatterns(
			[in]VARIANT_BOOL arg1);
[id(0x000001a2), propget, helpcontext(0x000101a2)]
		VARIANT_BOOL IncludeProtection();
[id(0x000001a2), propput, helpcontext(0x000101a2)]
		void IncludeProtection(
			[in]VARIANT_BOOL arg1);
[id(0x000000c9), propget, helpcontext(0x000100c9)]
		long IndentLevel();
[id(0x000000c9), propput, helpcontext(0x000100c9)]
		void IndentLevel(
			[in]long arg1);
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT_BOOL Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT_BOOL arg1);
[id(0x000000d0), propget, helpcontext(0x000100d0)]
		VARIANT MergeCells();
[id(0x000000d0), propput, helpcontext(0x000100d0)]
		void MergeCells(
			[in]VARIANT arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000003a9), propget, helpcontext(0x000103a9)]
		BSTR NameLocal();
[id(0x000000c1), propget, helpcontext(0x000100c1)]
		BSTR NumberFormat();
[id(0x000000c1), propput, helpcontext(0x000100c1)]
		void NumberFormat(
			[in]BSTR arg1);
[id(0x00000449), propget, helpcontext(0x00010449)]
		BSTR NumberFormatLocal();
[id(0x00000449), propput, helpcontext(0x00010449)]
		void NumberFormatLocal(
			[in]BSTR arg1);
[id(0x00000086), propget, helpcontext(0x00010086)]
		XlOrientation Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]XlOrientation arg1);
[id(0x000000d1), propget, helpcontext(0x000100d1)]
		VARIANT_BOOL ShrinkToFit();
[id(0x000000d1), propput, helpcontext(0x000100d1)]
		void ShrinkToFit(
			[in]VARIANT_BOOL arg1);
[id(0x00000006), propget, helpcontext(0x00010006)]
		BSTR Value();
[id(0x00000089), propget, helpcontext(0x00010089)]
		XlVAlign VerticalAlignment();
[id(0x00000089), propput, helpcontext(0x00010089)]
		void VerticalAlignment(
			[in]XlVAlign arg1);
[id(0x00000114), propget, helpcontext(0x00010114)]
		VARIANT_BOOL WrapText();
[id(0x00000114), propput, helpcontext(0x00010114)]
		void WrapText(
			[in]VARIANT_BOOL arg1);
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x000003cf), propget, helpcontext(0x000103cf)]
		long ReadingOrder();
[id(0x000003cf), propput, helpcontext(0x000103cf)]
		void ReadingOrder(
			[in]long arg1);
};
'!
!ExcelStyle categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelStyle methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

addIndent
	"Answer the <varbool> value of the 'AddIndent' property of the receiver.
		VARIANT_BOOL AddIndent"

	^(self getPropertyId: 1063)
!

addIndent: arg1
	"Set the 'AddIndent' property of the receiver to the <varbool> value of the argument.
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

builtIn
	"Answer the <varbool> value of the 'BuiltIn' property of the receiver.
		VARIANT_BOOL BuiltIn"

	^(self getPropertyId: 553)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

formulaHidden
	"Answer the <varbool> value of the 'FormulaHidden' property of the receiver.
		VARIANT_BOOL FormulaHidden"

	^(self getPropertyId: 262)
!

formulaHidden: arg1
	"Set the 'FormulaHidden' property of the receiver to the <varbool> value of the argument.
		void FormulaHidden"

	self setPropertyId: 262 value: arg1
!

horizontalAlignment
	"Answer the <sdword> value of the 'HorizontalAlignment' property of the receiver.
		XlHAlign HorizontalAlignment"

	^(self getPropertyId: 136)
!

horizontalAlignment: arg1
	"Set the 'HorizontalAlignment' property of the receiver to the <sdword> value of the argument.
		void HorizontalAlignment"

	self setPropertyId: 136 value: arg1
!

includeAlignment
	"Answer the <varbool> value of the 'IncludeAlignment' property of the receiver.
		VARIANT_BOOL IncludeAlignment"

	^(self getPropertyId: 413)
!

includeAlignment: arg1
	"Set the 'IncludeAlignment' property of the receiver to the <varbool> value of the argument.
		void IncludeAlignment"

	self setPropertyId: 413 value: arg1
!

includeBorder
	"Answer the <varbool> value of the 'IncludeBorder' property of the receiver.
		VARIANT_BOOL IncludeBorder"

	^(self getPropertyId: 414)
!

includeBorder: arg1
	"Set the 'IncludeBorder' property of the receiver to the <varbool> value of the argument.
		void IncludeBorder"

	self setPropertyId: 414 value: arg1
!

includeFont
	"Answer the <varbool> value of the 'IncludeFont' property of the receiver.
		VARIANT_BOOL IncludeFont"

	^(self getPropertyId: 415)
!

includeFont: arg1
	"Set the 'IncludeFont' property of the receiver to the <varbool> value of the argument.
		void IncludeFont"

	self setPropertyId: 415 value: arg1
!

includeNumber
	"Answer the <varbool> value of the 'IncludeNumber' property of the receiver.
		VARIANT_BOOL IncludeNumber"

	^(self getPropertyId: 416)
!

includeNumber: arg1
	"Set the 'IncludeNumber' property of the receiver to the <varbool> value of the argument.
		void IncludeNumber"

	self setPropertyId: 416 value: arg1
!

includePatterns
	"Answer the <varbool> value of the 'IncludePatterns' property of the receiver.
		VARIANT_BOOL IncludePatterns"

	^(self getPropertyId: 417)
!

includePatterns: arg1
	"Set the 'IncludePatterns' property of the receiver to the <varbool> value of the argument.
		void IncludePatterns"

	self setPropertyId: 417 value: arg1
!

includeProtection
	"Answer the <varbool> value of the 'IncludeProtection' property of the receiver.
		VARIANT_BOOL IncludeProtection"

	^(self getPropertyId: 418)
!

includeProtection: arg1
	"Set the 'IncludeProtection' property of the receiver to the <varbool> value of the argument.
		void IncludeProtection"

	self setPropertyId: 418 value: arg1
!

indentLevel
	"Answer the <sdword> value of the 'IndentLevel' property of the receiver.
		long IndentLevel"

	^(self getPropertyId: 201)
!

indentLevel: arg1
	"Set the 'IndentLevel' property of the receiver to the <sdword> value of the argument.
		void IndentLevel"

	self setPropertyId: 201 value: arg1
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

locked
	"Answer the <varbool> value of the 'Locked' property of the receiver.
		VARIANT_BOOL Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <varbool> value of the argument.
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

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

nameLocal
	"Answer the <bstr> value of the 'NameLocal' property of the receiver.
		BSTR NameLocal"

	^(self getPropertyId: 937)
!

numberFormat
	"Answer the <bstr> value of the 'NumberFormat' property of the receiver.
		BSTR NumberFormat"

	^(self getPropertyId: 193)
!

numberFormat: arg1
	"Set the 'NumberFormat' property of the receiver to the <bstr> value of the argument.
		void NumberFormat"

	self setPropertyId: 193 value: arg1
!

numberFormatLocal
	"Answer the <bstr> value of the 'NumberFormatLocal' property of the receiver.
		BSTR NumberFormatLocal"

	^(self getPropertyId: 1097)
!

numberFormatLocal: arg1
	"Set the 'NumberFormatLocal' property of the receiver to the <bstr> value of the argument.
		void NumberFormatLocal"

	self setPropertyId: 1097 value: arg1
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver.
		XlOrientation Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver.
		long ReadingOrder"

	^(self getPropertyId: 975)
!

readingOrder: arg1
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument.
		void ReadingOrder"

	self setPropertyId: 975 value: arg1
!

shrinkToFit
	"Answer the <varbool> value of the 'ShrinkToFit' property of the receiver.
		VARIANT_BOOL ShrinkToFit"

	^(self getPropertyId: 209)
!

shrinkToFit: arg1
	"Set the 'ShrinkToFit' property of the receiver to the <varbool> value of the argument.
		void ShrinkToFit"

	self setPropertyId: 209 value: arg1
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver.
		BSTR Value"

	^(self getPropertyId: 6)
!

verticalAlignment
	"Answer the <sdword> value of the 'VerticalAlignment' property of the receiver.
		XlVAlign VerticalAlignment"

	^(self getPropertyId: 137)
!

verticalAlignment: arg1
	"Set the 'VerticalAlignment' property of the receiver to the <sdword> value of the argument.
		void VerticalAlignment"

	self setPropertyId: 137 value: arg1
!

wrapText
	"Answer the <varbool> value of the 'WrapText' property of the receiver.
		VARIANT_BOOL WrapText"

	^(self getPropertyId: 276)
!

wrapText: arg1
	"Set the 'WrapText' property of the receiver to the <varbool> value of the argument.
		void WrapText"

	self setPropertyId: 276 value: arg1
! !
!ExcelStyle categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #application!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #builtIn!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelStyle categoriesFor: #font!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #formulaHidden!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #formulaHidden:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeAlignment!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeAlignment:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeBorder!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeBorder:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeFont!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeFont:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeNumber!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeNumber:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includePatterns!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includePatterns:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeProtection!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #includeProtection:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #indentLevel!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #indentLevel:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #mergeCells!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #mergeCells:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #name!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #nameLocal!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #shrinkToFit!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #shrinkToFit:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #value!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #wrapText!**auto generated**!properties!public! !
!ExcelStyle categoriesFor: #wrapText:!**auto generated**!properties!public! !

!ExcelStyle class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelStyle initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelStyle class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

