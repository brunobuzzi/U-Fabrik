"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelAddIns
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelAddIns guid: (IID fromString: '{00020858-0000-0000-C000-000000000046}')!
ExcelAddIns comment: '<ExcelAddIns> is a wrapper class generated for the dispatch interface ''Excel.AddIns'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020858-0000-0000-C000-000000000046), 
	helpcontext(0x00020018)
]
dispinterface AddIns {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		AddIn* Add(
			[in]BSTR Filename,
			[in, optional]VARIANT CopyFile);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		AddIn* Item(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0000000000), propget, helpcontext(0x00010000)]
		AddIn* _Default(
			[in]VARIANT Index);
};
'!
!ExcelAddIns categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelAddIns methodsFor!

_default: index
	"Answer the <ExcelAddIn> value of the '_Default' property of the receiver.
		AddIn* _Default"

	^ExcelAddIn attachInterface: (self getPropertyId: 0 item: index)
!

add: filename
	"Answer the <ExcelAddIn> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: filename
		 copyFile: VARIANT unspecified!

add: filename copyFile: copyFile
	"Answer the <ExcelAddIn> result of invoking the Add() method of the COM object."

	^ExcelAddIn attachInterface: (self invokeId: 181 with: filename with: copyFile)
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
	"Answer the <ExcelAddIn> value of the 'Item' property of the receiver.
		AddIn* Item"

	^ExcelAddIn attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelAddIns categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelAddIns categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelAddIns categoriesFor: #add:copyFile:!**auto generated**!methods!public! !
!ExcelAddIns categoriesFor: #application!**auto generated**!properties!public! !
!ExcelAddIns categoriesFor: #count!**auto generated**!properties!public! !
!ExcelAddIns categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelAddIns categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelAddIns categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelAddIns categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelAddIns class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelAddIns initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelAddIns class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

