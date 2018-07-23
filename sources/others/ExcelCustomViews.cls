"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelCustomViews
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelCustomViews guid: (IID fromString: '{00024422-0000-0000-C000-000000000046}')!
ExcelCustomViews comment: '<ExcelCustomViews> is a wrapper class generated for the dispatch interface ''Excel.CustomViews'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024422-0000-0000-C000-000000000046), 
	helpcontext(0x000200b8)
]
dispinterface CustomViews {
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
[id(0x000000aa), helpcontext(0x000100aa)]
		CustomView* Item(
			[in]VARIANT ViewName);
[id(0x000000b5), helpcontext(0x000100b5)]
		CustomView* Add(
			[in]BSTR ViewName,
			[in, optional]VARIANT PrintSettings,
			[in, optional]VARIANT RowColSettings);
[id(0000000000), propget, helpcontext(0x00010000)]
		CustomView* _Default(
			[in]VARIANT ViewName);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelCustomViews categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelCustomViews methodsFor!

_default: viewName
	"Answer the <ExcelCustomView> value of the '_Default' property of the receiver.
		CustomView* _Default"

	^ExcelCustomView attachInterface: (self getPropertyId: 0 item: viewName)
!

add: viewName
	"Answer the <ExcelCustomView> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: viewName
		 printSettings: VARIANT unspecified
		 rowColSettings: VARIANT unspecified!

add: viewName printSettings: printSettings rowColSettings: rowColSettings
	"Answer the <ExcelCustomView> result of invoking the Add() method of the COM object."

	^ExcelCustomView attachInterface: (self invokeId: 181 withArguments:
			((Array new: 3)
				basicAt: 1 put: viewName;
				basicAt: 2 put: printSettings;
				basicAt: 3 put: rowColSettings;
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

item: viewName
	"Answer the <ExcelCustomView> result of invoking the Item() method of the COM object."

	^ExcelCustomView attachInterface: (self invokeId: 170 with: viewName)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelCustomViews categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelCustomViews categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelCustomViews categoriesFor: #add:printSettings:rowColSettings:!**auto generated**!methods!public! !
!ExcelCustomViews categoriesFor: #application!**auto generated**!properties!public! !
!ExcelCustomViews categoriesFor: #count!**auto generated**!properties!public! !
!ExcelCustomViews categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelCustomViews categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelCustomViews categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelCustomViews categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelCustomViews class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelCustomViews initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelCustomViews class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

