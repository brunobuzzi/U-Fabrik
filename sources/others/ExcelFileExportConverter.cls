"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelFileExportConverter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFileExportConverter guid: (IID fromString: '{000244B3-0000-0000-C000-000000000046}')!
ExcelFileExportConverter comment: '<ExcelFileExportConverter> is a wrapper class generated for the dispatch interface ''Excel.FileExportConverter'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244B3-0000-0000-C000-000000000046), 
	helpcontext(0x00020149)
]
dispinterface FileExportConverter {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000ad1), propget, helpcontext(0x00010ad1)]
		BSTR Extensions();
[id(0x000000da), propget, helpcontext(0x000100da)]
		BSTR Description();
[id(0x00000120), propget, helpcontext(0x00010120)]
		long FileFormat();
};
'!
!ExcelFileExportConverter categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelFileExportConverter methodsFor!

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

description
	"Answer the <bstr> value of the 'Description' property of the receiver.
		BSTR Description"

	^(self getPropertyId: 218)
!

extensions
	"Answer the <bstr> value of the 'Extensions' property of the receiver.
		BSTR Extensions"

	^(self getPropertyId: 2769)
!

fileFormat
	"Answer the <sdword> value of the 'FileFormat' property of the receiver.
		long FileFormat"

	^(self getPropertyId: 288)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelFileExportConverter categoriesFor: #application!**auto generated**!properties!public! !
!ExcelFileExportConverter categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelFileExportConverter categoriesFor: #description!**auto generated**!properties!public! !
!ExcelFileExportConverter categoriesFor: #extensions!**auto generated**!properties!public! !
!ExcelFileExportConverter categoriesFor: #fileFormat!**auto generated**!properties!public! !
!ExcelFileExportConverter categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelFileExportConverter class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFileExportConverter initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFileExportConverter class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

