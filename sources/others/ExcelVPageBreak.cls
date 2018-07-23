"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelVPageBreak
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelVPageBreak guid: (IID fromString: '{00024402-0000-0000-C000-000000000046}')!
ExcelVPageBreak comment: '<ExcelVPageBreak> is a wrapper class generated for the dispatch interface ''Excel.VPageBreak'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024402-0000-0000-C000-000000000046), 
	helpcontext(0x00020098)
]
dispinterface VPageBreak {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		Worksheet* Parent();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x0000058c), helpcontext(0x0001058c)]
		void DragOff(
			[in]XlDirection Direction,
			[in]long RegionIndex);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlPageBreak Type();
[id(0x0000006c), propput, helpcontext(0x0001006c)]
		void Type(
			[in]XlPageBreak arg1);
[id(0x0000058e), propget, helpcontext(0x0001058e)]
		XlPageBreakExtent Extent();
[id(0x00000575), propget, helpcontext(0x00010575)]
		Range* Location();
[id(0x00000575), propputref, helpcontext(0x00010575)]
		void Location(
			[in]Range* arg1);
};
'!
!ExcelVPageBreak categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelVPageBreak methodsFor!

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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

dragOff: direction regionIndex: regionIndex
	"Invoke the DragOff() method of the COM object."

	(self invokeId: 1420 with: direction with: regionIndex)
!

extent
	"Answer the <sdword> value of the 'Extent' property of the receiver.
		XlPageBreakExtent Extent"

	^(self getPropertyId: 1422)
!

location
	"Answer the <ExcelRange> value of the 'Location' property of the receiver.
		Range* Location"

	^ExcelRange attachInterface: (self getPropertyId: 1397)
!

parent
	"Answer the <Excel_Worksheet> value of the 'Parent' property of the receiver.
		Worksheet* Parent"

	^Excel_Worksheet attachInterface: (self getPropertyId: 150)
!

setLocation: arg1
	"Set the 'Location' property of the receiver to the <ExcelRange*> value of the argument.
		void Location"

	self setPropertyId: 1397 value: arg1
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlPageBreak Type"

	^(self getPropertyId: 108)
!

type: arg1
	"Set the 'Type' property of the receiver to the <sdword> value of the argument.
		void Type"

	self setPropertyId: 108 value: arg1
! !
!ExcelVPageBreak categoriesFor: #application!**auto generated**!properties!public! !
!ExcelVPageBreak categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelVPageBreak categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelVPageBreak categoriesFor: #dragOff:regionIndex:!**auto generated**!methods!public! !
!ExcelVPageBreak categoriesFor: #extent!**auto generated**!properties!public! !
!ExcelVPageBreak categoriesFor: #location!**auto generated**!properties!public! !
!ExcelVPageBreak categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelVPageBreak categoriesFor: #setLocation:!**auto generated**!properties!public! !
!ExcelVPageBreak categoriesFor: #type!**auto generated**!properties!public! !
!ExcelVPageBreak categoriesFor: #type:!**auto generated**!properties!public! !

!ExcelVPageBreak class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelVPageBreak initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelVPageBreak class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

