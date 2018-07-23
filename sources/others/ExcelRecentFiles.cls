"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelRecentFiles
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelRecentFiles guid: (IID fromString: '{00024406-0000-0000-C000-000000000046}')!
ExcelRecentFiles comment: '<ExcelRecentFiles> is a wrapper class generated for the dispatch interface ''Excel.RecentFiles'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024406-0000-0000-C000-000000000046), 
	helpcontext(0x0002009c)
]
dispinterface RecentFiles {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000058f), propget, helpcontext(0x0001058f)]
		long Maximum();
[id(0x0000058f), propput, helpcontext(0x0001058f)]
		void Maximum(
			[in]long arg1);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		RecentFile* Item(
			[in]long Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		RecentFile* _Default(
			[in]long Index);
[id(0x000000b5), helpcontext(0x000100b5)]
		RecentFile* Add(
			[in]BSTR Name);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelRecentFiles categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelRecentFiles methodsFor!

_default: index
	"Answer the <ExcelRecentFile> value of the '_Default' property of the receiver.
		RecentFile* _Default"

	^ExcelRecentFile attachInterface: (self getPropertyId: 0 item: index)
!

add: name
	"Answer the <ExcelRecentFile> result of invoking the Add() method of the COM object."

	^ExcelRecentFile attachInterface: (self invokeId: 181 with: name)
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
	"Answer the <ExcelRecentFile> value of the 'Item' property of the receiver.
		RecentFile* Item"

	^ExcelRecentFile attachInterface: (self getPropertyId: 170 item: index)
!

maximum
	"Answer the <sdword> value of the 'Maximum' property of the receiver.
		long Maximum"

	^(self getPropertyId: 1423)
!

maximum: arg1
	"Set the 'Maximum' property of the receiver to the <sdword> value of the argument.
		void Maximum"

	self setPropertyId: 1423 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelRecentFiles categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelRecentFiles categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelRecentFiles categoriesFor: #application!**auto generated**!properties!public! !
!ExcelRecentFiles categoriesFor: #count!**auto generated**!properties!public! !
!ExcelRecentFiles categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelRecentFiles categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelRecentFiles categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelRecentFiles categoriesFor: #maximum!**auto generated**!properties!public! !
!ExcelRecentFiles categoriesFor: #maximum:!**auto generated**!properties!public! !
!ExcelRecentFiles categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelRecentFiles class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelRecentFiles initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelRecentFiles class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

