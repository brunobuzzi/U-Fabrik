"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelErrorBars
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelErrorBars guid: (IID fromString: '{000208CE-0000-0000-C000-000000000046}')!
ExcelErrorBars comment: '<ExcelErrorBars> is a wrapper class generated for the dispatch interface ''Excel.ErrorBars'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208CE-0000-0000-C000-000000000046), 
	helpcontext(0x0002008d)
]
dispinterface ErrorBars {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x00000080), propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000070), helpcontext(0x00010070)]
		VARIANT ClearFormats();
[id(0x00000464), propget, helpcontext(0x00010464)]
		XlEndStyleCap EndStyle();
[id(0x00000464), propput, helpcontext(0x00010464)]
		void EndStyle(
			[in]XlEndStyleCap arg1);
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelErrorBars categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelErrorBars methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

border
	"Answer the <ExcelBorder> value of the 'Border' property of the receiver.
		Border* Border"

	^ExcelBorder attachInterface: (self getPropertyId: 128)
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	^(self invokeId: 112)
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

endStyle
	"Answer the <sdword> value of the 'EndStyle' property of the receiver.
		XlEndStyleCap EndStyle"

	^(self getPropertyId: 1124)
!

endStyle: arg1
	"Set the 'EndStyle' property of the receiver to the <sdword> value of the argument.
		void EndStyle"

	self setPropertyId: 1124 value: arg1
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
! !
!ExcelErrorBars categoriesFor: #application!**auto generated**!properties!public! !
!ExcelErrorBars categoriesFor: #border!**auto generated**!properties!public! !
!ExcelErrorBars categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelErrorBars categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelErrorBars categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelErrorBars categoriesFor: #endStyle!**auto generated**!properties!public! !
!ExcelErrorBars categoriesFor: #endStyle:!**auto generated**!properties!public! !
!ExcelErrorBars categoriesFor: #format!**auto generated**!properties!public! !
!ExcelErrorBars categoriesFor: #name!**auto generated**!properties!public! !
!ExcelErrorBars categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelErrorBars categoriesFor: #select!**auto generated**!methods!public! !

!ExcelErrorBars class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelErrorBars initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelErrorBars class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

