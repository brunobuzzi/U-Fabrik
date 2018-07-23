"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWorksheetView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWorksheetView guid: (IID fromString: '{00024487-0000-0000-C000-000000000046}')!
ExcelWorksheetView comment: '<ExcelWorksheetView> is a wrapper class generated for the dispatch interface ''Excel.WorksheetView'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024487-0000-0000-C000-000000000046), 
	helpcontext(0x0002011d)
]
dispinterface WorksheetView {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000002ef), propget, helpcontext(0x000102ef)]
		IDispatch* Sheet();
[id(0x00000285), propget, helpcontext(0x00010285)]
		VARIANT_BOOL DisplayGridlines();
[id(0x00000285), propput, helpcontext(0x00010285)]
		void DisplayGridlines(
			[in]VARIANT_BOOL arg1);
[id(0x00000284), propget, helpcontext(0x00010284)]
		VARIANT_BOOL DisplayFormulas();
[id(0x00000284), propput, helpcontext(0x00010284)]
		void DisplayFormulas(
			[in]VARIANT_BOOL arg1);
[id(0x00000286), propget, helpcontext(0x00010286)]
		VARIANT_BOOL DisplayHeadings();
[id(0x00000286), propput, helpcontext(0x00010286)]
		void DisplayHeadings(
			[in]VARIANT_BOOL arg1);
[id(0x00000287), propget, helpcontext(0x00010287)]
		VARIANT_BOOL DisplayOutline();
[id(0x00000287), propput, helpcontext(0x00010287)]
		void DisplayOutline(
			[in]VARIANT_BOOL arg1);
[id(0x00000289), propget, helpcontext(0x00010289)]
		VARIANT_BOOL DisplayZeros();
[id(0x00000289), propput, helpcontext(0x00010289)]
		void DisplayZeros(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelWorksheetView categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelWorksheetView methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

displayFormulas
	"Answer the <varbool> value of the 'DisplayFormulas' property of the receiver.
		VARIANT_BOOL DisplayFormulas"

	^(self getPropertyId: 644)
!

displayFormulas: arg1
	"Set the 'DisplayFormulas' property of the receiver to the <varbool> value of the argument.
		void DisplayFormulas"

	self setPropertyId: 644 value: arg1
!

displayGridlines
	"Answer the <varbool> value of the 'DisplayGridlines' property of the receiver.
		VARIANT_BOOL DisplayGridlines"

	^(self getPropertyId: 645)
!

displayGridlines: arg1
	"Set the 'DisplayGridlines' property of the receiver to the <varbool> value of the argument.
		void DisplayGridlines"

	self setPropertyId: 645 value: arg1
!

displayHeadings
	"Answer the <varbool> value of the 'DisplayHeadings' property of the receiver.
		VARIANT_BOOL DisplayHeadings"

	^(self getPropertyId: 646)
!

displayHeadings: arg1
	"Set the 'DisplayHeadings' property of the receiver to the <varbool> value of the argument.
		void DisplayHeadings"

	self setPropertyId: 646 value: arg1
!

displayOutline
	"Answer the <varbool> value of the 'DisplayOutline' property of the receiver.
		VARIANT_BOOL DisplayOutline"

	^(self getPropertyId: 647)
!

displayOutline: arg1
	"Set the 'DisplayOutline' property of the receiver to the <varbool> value of the argument.
		void DisplayOutline"

	self setPropertyId: 647 value: arg1
!

displayZeros
	"Answer the <varbool> value of the 'DisplayZeros' property of the receiver.
		VARIANT_BOOL DisplayZeros"

	^(self getPropertyId: 649)
!

displayZeros: arg1
	"Set the 'DisplayZeros' property of the receiver to the <varbool> value of the argument.
		void DisplayZeros"

	self setPropertyId: 649 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

sheet
	"Answer the <IDispatch> value of the 'Sheet' property of the receiver.
		IDispatch* Sheet"

	^IDispatch attachInterface: (self getPropertyId: 751)
! !
!ExcelWorksheetView categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayFormulas!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayFormulas:!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayGridlines!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayGridlines:!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayHeadings!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayHeadings:!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayOutline!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayOutline:!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayZeros!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #displayZeros:!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelWorksheetView categoriesFor: #sheet!**auto generated**!properties!public! !

!ExcelWorksheetView class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWorksheetView initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWorksheetView class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

