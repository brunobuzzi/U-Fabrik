"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDataTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDataTable guid: (IID fromString: '{00020843-0000-0000-C000-000000000046}')!
ExcelDataTable comment: '<ExcelDataTable> is a wrapper class generated for the dispatch interface ''Excel.DataTable'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020843-0000-0000-C000-000000000046), 
	helpcontext(0x00020003)
]
dispinterface DataTable {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000ab), propget, helpcontext(0x000100ab)]
		VARIANT_BOOL ShowLegendKey();
[id(0x000000ab), propput, helpcontext(0x000100ab)]
		void ShowLegendKey(
			[in]VARIANT_BOOL arg1);
[id(0x00000687), propget, helpcontext(0x00010687)]
		VARIANT_BOOL HasBorderHorizontal();
[id(0x00000687), propput, helpcontext(0x00010687)]
		void HasBorderHorizontal(
			[in]VARIANT_BOOL arg1);
[id(0x00000688), propget, helpcontext(0x00010688)]
		VARIANT_BOOL HasBorderVertical();
[id(0x00000688), propput, helpcontext(0x00010688)]
		void HasBorderVertical(
			[in]VARIANT_BOOL arg1);
[id(0x00000689), propget, helpcontext(0x00010689)]
		VARIANT_BOOL HasBorderOutline();
[id(0x00000689), propput, helpcontext(0x00010689)]
		void HasBorderOutline(
			[in]VARIANT_BOOL arg1);
[id(0x00000080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x000000eb), helpcontext(0x000100eb)]
		void Select();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000005f5), hidden, propget, helpcontext(0x000105f5)]
		VARIANT AutoScaleFont();
[id(0x000005f5), hidden, propput, helpcontext(0x000105f5)]
		void AutoScaleFont(
			[in]VARIANT arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelDataTable categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDataTable methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoScaleFont
	"Answer the <variant> value of the 'AutoScaleFont' property of the receiver.
		VARIANT AutoScaleFont"

	^(self getPropertyId: 1525)
!

autoScaleFont: arg1
	"Set the 'AutoScaleFont' property of the receiver to the <variant> value of the argument.
		void AutoScaleFont"

	self setPropertyId: 1525 value: arg1
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

hasBorderHorizontal
	"Answer the <varbool> value of the 'HasBorderHorizontal' property of the receiver.
		VARIANT_BOOL HasBorderHorizontal"

	^(self getPropertyId: 1671)
!

hasBorderHorizontal: arg1
	"Set the 'HasBorderHorizontal' property of the receiver to the <varbool> value of the argument.
		void HasBorderHorizontal"

	self setPropertyId: 1671 value: arg1
!

hasBorderOutline
	"Answer the <varbool> value of the 'HasBorderOutline' property of the receiver.
		VARIANT_BOOL HasBorderOutline"

	^(self getPropertyId: 1673)
!

hasBorderOutline: arg1
	"Set the 'HasBorderOutline' property of the receiver to the <varbool> value of the argument.
		void HasBorderOutline"

	self setPropertyId: 1673 value: arg1
!

hasBorderVertical
	"Answer the <varbool> value of the 'HasBorderVertical' property of the receiver.
		VARIANT_BOOL HasBorderVertical"

	^(self getPropertyId: 1672)
!

hasBorderVertical: arg1
	"Set the 'HasBorderVertical' property of the receiver to the <varbool> value of the argument.
		void HasBorderVertical"

	self setPropertyId: 1672 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

select
	"Invoke the Select() method of the COM object."

	(self invokeId: 235)
!

showLegendKey
	"Answer the <varbool> value of the 'ShowLegendKey' property of the receiver.
		VARIANT_BOOL ShowLegendKey"

	^(self getPropertyId: 171)
!

showLegendKey: arg1
	"Set the 'ShowLegendKey' property of the receiver to the <varbool> value of the argument.
		void ShowLegendKey"

	self setPropertyId: 171 value: arg1
! !
!ExcelDataTable categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #autoScaleFont!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #autoScaleFont:!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #border!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelDataTable categoriesFor: #font!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #format!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #hasBorderHorizontal!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #hasBorderHorizontal:!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #hasBorderOutline!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #hasBorderOutline:!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #hasBorderVertical!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #hasBorderVertical:!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #select!**auto generated**!methods!public! !
!ExcelDataTable categoriesFor: #showLegendKey!**auto generated**!properties!public! !
!ExcelDataTable categoriesFor: #showLegendKey:!**auto generated**!properties!public! !

!ExcelDataTable class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDataTable initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDataTable class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

