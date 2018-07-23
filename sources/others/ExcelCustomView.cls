"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCustomView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCustomView guid: (IID fromString: '{00024423-0000-0000-C000-000000000046}')!
ExcelCustomView comment: '<ExcelCustomView> is a wrapper class generated for the dispatch interface ''Excel.CustomView'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024423-0000-0000-C000-000000000046), 
	helpcontext(0x000200b9)
]
dispinterface CustomView {
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
[id(0x00000629), propget, helpcontext(0x00010629)]
		VARIANT_BOOL PrintSettings();
[id(0x0000062a), propget, helpcontext(0x0001062a)]
		VARIANT_BOOL RowColSettings();
[id(0x000001f0), helpcontext(0x000101f0)]
		void Show();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
};
'!
!ExcelCustomView categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCustomView methodsFor!

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

printSettings
	"Answer the <varbool> value of the 'PrintSettings' property of the receiver.
		VARIANT_BOOL PrintSettings"

	^(self getPropertyId: 1577)
!

rowColSettings
	"Answer the <varbool> value of the 'RowColSettings' property of the receiver.
		VARIANT_BOOL RowColSettings"

	^(self getPropertyId: 1578)
!

show
	"Invoke the Show() method of the COM object."

	(self invokeId: 496)
! !
!ExcelCustomView categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCustomView categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCustomView categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelCustomView categoriesFor: #name!**auto generated**!properties!public! !
!ExcelCustomView categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelCustomView categoriesFor: #printSettings!**auto generated**!properties!public! !
!ExcelCustomView categoriesFor: #rowColSettings!**auto generated**!properties!public! !
!ExcelCustomView categoriesFor: #show!**auto generated**!methods!public! !

!ExcelCustomView class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCustomView initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCustomView class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

