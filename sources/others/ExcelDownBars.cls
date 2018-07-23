"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelDownBars
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelDownBars guid: (IID fromString: '{000208C6-0000-0000-C000-000000000046}')!
ExcelDownBars comment: '<ExcelDownBars> is a wrapper class generated for the dispatch interface ''Excel.DownBars'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208C6-0000-0000-C000-000000000046), 
	helpcontext(0x00020086)
]
dispinterface DownBars {
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
[id(0x00000080), hidden, propget, helpcontext(0x00010080)]
		Border* Border();
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete();
[id(0x00000081), hidden, propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x0000067f), hidden, propget, helpcontext(0x0001067f)]
		ChartFillFormat* Fill();
[id(0x00000074), propget, helpcontext(0x00010074)]
		ChartFormat* Format();
};
'!
!ExcelDownBars categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelDownBars methodsFor!

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

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117)
!

fill
	"Answer the <ExcelChartFillFormat> value of the 'Fill' property of the receiver.
		ChartFillFormat* Fill"

	^ExcelChartFillFormat attachInterface: (self getPropertyId: 1663)
!

format
	"Answer the <ExcelChartFormat> value of the 'Format' property of the receiver.
		ChartFormat* Format"

	^ExcelChartFormat attachInterface: (self getPropertyId: 116)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
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
!ExcelDownBars categoriesFor: #application!**auto generated**!properties!public! !
!ExcelDownBars categoriesFor: #border!**auto generated**!properties!public! !
!ExcelDownBars categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelDownBars categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelDownBars categoriesFor: #fill!**auto generated**!properties!public! !
!ExcelDownBars categoriesFor: #format!**auto generated**!properties!public! !
!ExcelDownBars categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelDownBars categoriesFor: #name!**auto generated**!properties!public! !
!ExcelDownBars categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelDownBars categoriesFor: #select!**auto generated**!methods!public! !

!ExcelDownBars class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelDownBars initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelDownBars class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

