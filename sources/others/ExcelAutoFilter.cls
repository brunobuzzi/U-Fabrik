"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAutoFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAutoFilter guid: (IID fromString: '{00024432-0000-0000-C000-000000000046}')!
ExcelAutoFilter comment: '<ExcelAutoFilter> is a wrapper class generated for the dispatch interface ''Excel.AutoFilter'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024432-0000-0000-C000-000000000046), 
	helpcontext(0x000200c8)
]
dispinterface AutoFilter {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range();
[id(0x00000651), propget, helpcontext(0x00010651)]
		Filters* Filters();
[id(0x00000320), propget, helpcontext(0x00010320)]
		VARIANT_BOOL FilterMode();
[id(0x00000370), propget, helpcontext(0x00010370)]
		Sort* Sort();
[id(0x00000a50), helpcontext(0x00010a50)]
		void ApplyFilter();
[id(0x0000031a), helpcontext(0x0001031a)]
		void ShowAllData();
};
'!
!ExcelAutoFilter categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAutoFilter methodsFor!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

applyFilter
	"Invoke the ApplyFilter() method of the COM object."

	(self invokeId: 2640)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

filterMode
	"Answer the <varbool> value of the 'FilterMode' property of the receiver.
		VARIANT_BOOL FilterMode"

	^(self getPropertyId: 800)
!

filters
	"Answer the <ExcelFilters> value of the 'Filters' property of the receiver.
		Filters* Filters"

	^ExcelFilters attachInterface: (self getPropertyId: 1617)
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

showAllData
	"Invoke the ShowAllData() method of the COM object."

	(self invokeId: 794)
!

sort
	"Answer the <ExcelSort> value of the 'Sort' property of the receiver.
		Sort* Sort"

	^ExcelSort attachInterface: (self getPropertyId: 880)
! !
!ExcelAutoFilter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelAutoFilter categoriesFor: #applyFilter!**auto generated**!methods!public! !
!ExcelAutoFilter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelAutoFilter categoriesFor: #filterMode!**auto generated**!properties!public! !
!ExcelAutoFilter categoriesFor: #filters!**auto generated**!properties!public! !
!ExcelAutoFilter categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelAutoFilter categoriesFor: #range!**auto generated**!properties!public! !
!ExcelAutoFilter categoriesFor: #showAllData!**auto generated**!methods!public! !
!ExcelAutoFilter categoriesFor: #sort!**auto generated**!properties!public! !

!ExcelAutoFilter class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAutoFilter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAutoFilter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

