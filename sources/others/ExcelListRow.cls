"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelListRow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelListRow guid: (IID fromString: '{00024475-0000-0000-C000-000000000046}')!
ExcelListRow comment: '<ExcelListRow> is a wrapper class generated for the dispatch interface ''Excel.ListRow'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024475-0000-0000-C000-000000000046), 
	helpcontext(0x0002010b)
]
dispinterface ListRow {
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
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x00000914), hidden, propget, helpcontext(0x00010914)]
		VARIANT_BOOL InvalidData();
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range();
};
'!
!ExcelListRow categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelListRow methodsFor!

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

index
	"Answer the <sdword> value of the 'Index' property of the receiver.
		long Index"

	^(self getPropertyId: 486)
!

invalidData
	"Answer the <varbool> value of the 'InvalidData' property of the receiver.
		VARIANT_BOOL InvalidData"

	^(self getPropertyId: 2324)
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
! !
!ExcelListRow categoriesFor: #application!**auto generated**!properties!public! !
!ExcelListRow categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelListRow categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelListRow categoriesFor: #index!**auto generated**!properties!public! !
!ExcelListRow categoriesFor: #invalidData!**auto generated**!properties!public! !
!ExcelListRow categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelListRow categoriesFor: #range!**auto generated**!properties!public! !

!ExcelListRow class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelListRow initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelListRow class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

