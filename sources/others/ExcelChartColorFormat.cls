"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelChartColorFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelChartColorFormat guid: (IID fromString: '{00024436-0000-0000-C000-000000000046}')!
ExcelChartColorFormat comment: '<ExcelChartColorFormat> is a wrapper class generated for the dispatch interface ''Excel.ChartColorFormat'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024436-0000-0000-C000-000000000046), 
	helpcontext(0x000200cc), 
	hidden
]
dispinterface ChartColorFormat {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000066e), propget, helpcontext(0x0001066e)]
		long SchemeColor();
[id(0x0000066e), propput, helpcontext(0x0001066e)]
		void SchemeColor(
			[in]long arg1);
[id(0x0000041f), propget, helpcontext(0x0001041f)]
		long RGB();
[id(0000000000), propget, helpcontext(0x00010000)]
		long _Default();
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		long Type();
};
'!
!ExcelChartColorFormat categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelChartColorFormat methodsFor!

_default
	"Answer the <sdword> value of the '_Default' property of the receiver.
		long _Default"

	^(self getPropertyId: 0)
!

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

rgb
	"Answer the <sdword> value of the 'RGB' property of the receiver.
		long RGB"

	^(self getPropertyId: 1055)
!

schemeColor
	"Answer the <sdword> value of the 'SchemeColor' property of the receiver.
		long SchemeColor"

	^(self getPropertyId: 1646)
!

schemeColor: arg1
	"Set the 'SchemeColor' property of the receiver to the <sdword> value of the argument.
		void SchemeColor"

	self setPropertyId: 1646 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		long Type"

	^(self getPropertyId: 108)
!

value
	"Answer the <sdword> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
! !
!ExcelChartColorFormat categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelChartColorFormat categoriesFor: #application!**auto generated**!properties!public! !
!ExcelChartColorFormat categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelChartColorFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelChartColorFormat categoriesFor: #rgb!**auto generated**!properties!public! !
!ExcelChartColorFormat categoriesFor: #schemeColor!**auto generated**!properties!public! !
!ExcelChartColorFormat categoriesFor: #schemeColor:!**auto generated**!properties!public! !
!ExcelChartColorFormat categoriesFor: #type!**auto generated**!properties!public! !
!ExcelChartColorFormat categoriesFor: #value!**auto generated**!properties!public! !

!ExcelChartColorFormat class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelChartColorFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelChartColorFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

