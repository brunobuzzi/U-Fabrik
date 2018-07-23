"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelListColumns
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelListColumns guid: (IID fromString: '{00024472-0000-0000-C000-000000000046}')!
ExcelListColumns comment: '<ExcelListColumns> is a wrapper class generated for the dispatch interface ''Excel.ListColumns'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024472-0000-0000-C000-000000000046), 
	helpcontext(0x00020108)
]
dispinterface ListColumns {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		ListColumn* Add(
			[in, optional]VARIANT Position);
[id(0000000000), propget, helpcontext(0x00010000)]
		ListColumn* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		ListColumn* Item(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
};
'!
!ExcelListColumns categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelListColumns methodsFor!

_default: index
	"Answer the <ExcelListColumn> value of the '_Default' property of the receiver.
		ListColumn* _Default"

	^ExcelListColumn attachInterface: (self getPropertyId: 0 item: index)
!

add
	"Answer the <ExcelListColumn> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self add: VARIANT unspecified!

add: position
	"Answer the <ExcelListColumn> result of invoking the Add() method of the COM object."

	^ExcelListColumn attachInterface: (self invokeId: 181 with: position)
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
	"Answer the <ExcelListColumn> value of the 'Item' property of the receiver.
		ListColumn* Item"

	^ExcelListColumn attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelListColumns categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelListColumns categoriesFor: #add!**auto generated**!methods!public! !
!ExcelListColumns categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelListColumns categoriesFor: #application!**auto generated**!properties!public! !
!ExcelListColumns categoriesFor: #count!**auto generated**!properties!public! !
!ExcelListColumns categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelListColumns categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelListColumns categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelListColumns categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelListColumns class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelListColumns initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelListColumns class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

