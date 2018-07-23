"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelChartView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelChartView guid: (IID fromString: '{00024488-0000-0000-C000-000000000046}')!
ExcelChartView comment: '<ExcelChartView> is a wrapper class generated for the dispatch interface ''Excel.ChartView'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024488-0000-0000-C000-000000000046), 
	helpcontext(0x0002011e)
]
dispinterface ChartView {
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
};
'!
!ExcelChartView categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelChartView methodsFor!

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
!ExcelChartView categoriesFor: #application!**auto generated**!properties!public! !
!ExcelChartView categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelChartView categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelChartView categoriesFor: #sheet!**auto generated**!properties!public! !

!ExcelChartView class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelChartView initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelChartView class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

