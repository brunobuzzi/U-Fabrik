"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelFileExportConverters
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelFileExportConverters guid: (IID fromString: '{000244B4-0000-0000-C000-000000000046}')!
ExcelFileExportConverters comment: '<ExcelFileExportConverters> is a wrapper class generated for the dispatch interface ''Excel.FileExportConverters'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244B4-0000-0000-C000-000000000046), 
	helpcontext(0x0002014a)
]
dispinterface FileExportConverters {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		FileExportConverter* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		FileExportConverter* Item(
			[in]VARIANT Index);
};
'!
!ExcelFileExportConverters categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelFileExportConverters methodsFor!

_default: index
	"Answer the <ExcelFileExportConverter> value of the '_Default' property of the receiver.
		FileExportConverter* _Default"

	^ExcelFileExportConverter attachInterface: (self getPropertyId: 0 item: index)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelFileExportConverter> value of the 'Item' property of the receiver.
		FileExportConverter* Item"

	^ExcelFileExportConverter attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelFileExportConverters categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelFileExportConverters categoriesFor: #application!**auto generated**!properties!public! !
!ExcelFileExportConverters categoriesFor: #count!**auto generated**!properties!public! !
!ExcelFileExportConverters categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelFileExportConverters categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelFileExportConverters categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelFileExportConverters categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelFileExportConverters class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelFileExportConverters initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelFileExportConverters class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

