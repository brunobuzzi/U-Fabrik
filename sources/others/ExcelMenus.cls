"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelMenus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelMenus guid: (IID fromString: '{00020865-0000-0000-C000-000000000046}')!
ExcelMenus comment: '<ExcelMenus> is a wrapper class generated for the dispatch interface ''Excel.Menus'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020865-0000-0000-C000-000000000046), 
	helpcontext(0x00020025), 
	hidden
]
dispinterface Menus {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Menu* Add(
			[in]BSTR Caption,
			[in, optional]VARIANT Before,
			[in, optional]VARIANT Restore);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		Menu* _Default(
			[in]VARIANT Index);
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		Menu* Item(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelMenus categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelMenus methodsFor!

_default: index
	"Answer the <ExcelMenu> value of the '_Default' property of the receiver.
		Menu* _Default"

	^ExcelMenu attachInterface: (self getPropertyId: 0 item: index)
!

add: caption
	"Answer the <ExcelMenu> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: caption
		 before: VARIANT unspecified
		 restore: VARIANT unspecified!

add: caption before: before restore: restore
	"Answer the <ExcelMenu> result of invoking the Add() method of the COM object."

	^ExcelMenu attachInterface: (self invokeId: 181 withArguments:
			((Array new: 3)
				basicAt: 1 put: caption;
				basicAt: 2 put: before;
				basicAt: 3 put: restore;
				yourself))
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
	"Answer the <ExcelMenu> value of the 'Item' property of the receiver.
		Menu* Item"

	^ExcelMenu attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelMenus categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelMenus categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelMenus categoriesFor: #add:before:restore:!**auto generated**!methods!public! !
!ExcelMenus categoriesFor: #application!**auto generated**!properties!public! !
!ExcelMenus categoriesFor: #count!**auto generated**!properties!public! !
!ExcelMenus categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelMenus categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelMenus categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelMenus categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelMenus class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelMenus initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelMenus class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

