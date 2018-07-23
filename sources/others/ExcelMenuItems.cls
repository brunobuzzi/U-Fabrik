"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelMenuItems
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelMenuItems guid: (IID fromString: '{00020867-0000-0000-C000-000000000046}')!
ExcelMenuItems comment: '<ExcelMenuItems> is a wrapper class generated for the dispatch interface ''Excel.MenuItems'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020867-0000-0000-C000-000000000046), 
	helpcontext(0x00020027), 
	hidden
]
dispinterface MenuItems {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		MenuItem* Add(
			[in]BSTR Caption,
			[in, optional]VARIANT OnAction,
			[in, optional]VARIANT ShortcutKey,
			[in, optional]VARIANT Before,
			[in, optional]VARIANT Restore,
			[in, optional]VARIANT StatusBar,
			[in, optional]VARIANT HelpFile,
			[in, optional]VARIANT HelpContextID);
[id(0x00000256), helpcontext(0x00010256)]
		Menu* AddMenu(
			[in]BSTR Caption,
			[in, optional]VARIANT Before,
			[in, optional]VARIANT Restore);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		IDispatch* _Default(
			[in]VARIANT Index);
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelMenuItems categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelMenuItems methodsFor!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver.
		IDispatch* _Default"

	^IDispatch attachInterface: (self getPropertyId: 0 item: index)
!

add: caption
	"Answer the <ExcelMenuItem> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: caption
		 onAction: VARIANT unspecified
		 shortcutKey: VARIANT unspecified
		 before: VARIANT unspecified
		 restore: VARIANT unspecified
		 statusBar: VARIANT unspecified
		 helpFile: VARIANT unspecified
		 helpContextID: VARIANT unspecified!

add: caption onAction: onAction shortcutKey: shortcutKey before: before restore: restore statusBar: statusBar helpFile: helpFile helpContextID: helpContextID
	"Answer the <ExcelMenuItem> result of invoking the Add() method of the COM object."

	^ExcelMenuItem attachInterface: (self invokeId: 181 withArguments:
			((Array new: 8)
				basicAt: 1 put: caption;
				basicAt: 2 put: onAction;
				basicAt: 3 put: shortcutKey;
				basicAt: 4 put: before;
				basicAt: 5 put: restore;
				basicAt: 6 put: statusBar;
				basicAt: 7 put: helpFile;
				basicAt: 8 put: helpContextID;
				yourself))
!

addMenu: caption
	"Answer the <ExcelMenu> result of invoking the AddMenu() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 addMenu: caption
		 before: VARIANT unspecified
		 restore: VARIANT unspecified!

addMenu: caption before: before restore: restore
	"Answer the <ExcelMenu> result of invoking the AddMenu() method of the COM object."

	^ExcelMenu attachInterface: (self invokeId: 598 withArguments:
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
	"Answer the <IDispatch> value of the 'Item' property of the receiver.
		IDispatch* Item"

	^IDispatch attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelMenuItems categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelMenuItems categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelMenuItems categoriesFor: #add:onAction:shortcutKey:before:restore:statusBar:helpFile:helpContextID:!**auto generated**!methods!public! !
!ExcelMenuItems categoriesFor: #addMenu:!**auto generated**!methods!public! !
!ExcelMenuItems categoriesFor: #addMenu:before:restore:!**auto generated**!methods!public! !
!ExcelMenuItems categoriesFor: #application!**auto generated**!properties!public! !
!ExcelMenuItems categoriesFor: #count!**auto generated**!properties!public! !
!ExcelMenuItems categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelMenuItems categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelMenuItems categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelMenuItems categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelMenuItems class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelMenuItems initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelMenuItems class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

