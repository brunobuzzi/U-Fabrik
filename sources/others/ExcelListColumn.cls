"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelListColumn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelListColumn guid: (IID fromString: '{00024473-0000-0000-C000-000000000046}')!
ExcelListColumn comment: '<ExcelListColumn> is a wrapper class generated for the dispatch interface ''Excel.ListColumn'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024473-0000-0000-C000-000000000046), 
	helpcontext(0x00020109)
]
dispinterface ListColumn {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0x00000911), hidden, propget, helpcontext(0x00010911)]
		ListDataFormat* ListDataFormat();
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range();
[id(0x00000912), propget, helpcontext(0x00010912)]
		XlTotalsCalculation TotalsCalculation();
[id(0x00000912), propput, helpcontext(0x00010912)]
		void TotalsCalculation(
			[in]XlTotalsCalculation arg1);
[id(0x000008d2), propget, helpcontext(0x000108d2)]
		XPath* XPath();
[id(0x00000913), hidden, propget, helpcontext(0x00010913)]
		BSTR SharePointFormula();
[id(0x000002c1), propget, helpcontext(0x000102c1)]
		Range* DataBodyRange();
[id(0x00000a79), propget, helpcontext(0x00010a79)]
		Range* Total();
};
'!
!ExcelListColumn categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelListColumn methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

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

dataBodyRange
	"Answer the <ExcelRange> value of the 'DataBodyRange' property of the receiver.
		Range* DataBodyRange"

	^ExcelRange attachInterface: (self getPropertyId: 705)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

listDataFormat
	"Answer the <ExcelListDataFormat> value of the 'ListDataFormat' property of the receiver.
		ListDataFormat* ListDataFormat"

	^ExcelListDataFormat attachInterface: (self getPropertyId: 2321)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

range
	"Answer the <ExcelRange> value of the 'Range' property of the receiver.
		Range* Range"

	^ExcelRange attachInterface: (self getPropertyId: 197)
!

sharePointFormula
	"Answer the <bstr> value of the 'SharePointFormula' property of the receiver.
		BSTR SharePointFormula"

	^(self getPropertyId: 2323)
!

total
	"Answer the <ExcelRange> value of the 'Total' property of the receiver.
		Range* Total"

	^ExcelRange attachInterface: (self getPropertyId: 2681)
!

totalsCalculation
	"Answer the <sdword> value of the 'TotalsCalculation' property of the receiver.
		XlTotalsCalculation TotalsCalculation"

	^(self getPropertyId: 2322)
!

totalsCalculation: arg1
	"Set the 'TotalsCalculation' property of the receiver to the <sdword> value of the argument.
		void TotalsCalculation"

	self setPropertyId: 2322 value: arg1
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

xPath
	"Answer the <ExcelXPath> value of the 'XPath' property of the receiver.
		XPath* XPath"

	^ExcelXPath attachInterface: (self getPropertyId: 2258)
! !
!ExcelListColumn categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #application!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #dataBodyRange!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelListColumn categoriesFor: #index!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #listDataFormat!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #name!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #range!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #sharePointFormula!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #total!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #totalsCalculation!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #totalsCalculation:!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #value!**auto generated**!properties!public! !
!ExcelListColumn categoriesFor: #xPath!**auto generated**!properties!public! !

!ExcelListColumn class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelListColumn initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelListColumn class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

