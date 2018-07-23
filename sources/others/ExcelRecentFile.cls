"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelRecentFile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelRecentFile guid: (IID fromString: '{00024407-0000-0000-C000-000000000046}')!
ExcelRecentFile comment: '<ExcelRecentFile> is a wrapper class generated for the dispatch interface ''Excel.RecentFile'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024407-0000-0000-C000-000000000046), 
	helpcontext(0x0002009d)
]
dispinterface RecentFile {
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
[id(0x00000123), propget, helpcontext(0x00010123)]
		BSTR Path();
[id(0x000001e6), propget, helpcontext(0x000101e6)]
		long Index();
[id(0x00000783), helpcontext(0x00010783)]
		Workbook* Open();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
};
'!
!ExcelRecentFile categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelRecentFile methodsFor!

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

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

open
	"Answer the <Excel_Workbook> result of invoking the Open() method of the COM object."

	^Excel_Workbook attachInterface: (self invokeId: 1923)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

path
	"Answer the <bstr> value of the 'Path' property of the receiver.
		BSTR Path"

	^(self getPropertyId: 291)
! !
!ExcelRecentFile categoriesFor: #application!**auto generated**!properties!public! !
!ExcelRecentFile categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelRecentFile categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelRecentFile categoriesFor: #index!**auto generated**!properties!public! !
!ExcelRecentFile categoriesFor: #name!**auto generated**!properties!public! !
!ExcelRecentFile categoriesFor: #open!**auto generated**!methods!public! !
!ExcelRecentFile categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelRecentFile categoriesFor: #path!**auto generated**!properties!public! !

!ExcelRecentFile class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelRecentFile initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelRecentFile class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

