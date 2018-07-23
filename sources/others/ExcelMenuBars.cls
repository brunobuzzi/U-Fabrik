"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelMenuBars
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelMenuBars guid: (IID fromString: '{00020863-0000-0000-C000-000000000046}')!
ExcelMenuBars comment: '<ExcelMenuBars> is a wrapper class generated for the dispatch interface ''Excel.MenuBars'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020863-0000-0000-C000-000000000046), 
	helpcontext(0x00020023), 
	hidden
]
dispinterface MenuBars {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		MenuBar* Add(
			[in, optional]VARIANT Name);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		MenuBar* _Default(
			[in]VARIANT Index);
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		MenuBar* Item(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelMenuBars categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelMenuBars methodsFor!

_default: index
	"Answer the <ExcelMenuBar> value of the '_Default' property of the receiver.
		MenuBar* _Default"

	^ExcelMenuBar attachInterface: (self getPropertyId: 0 item: index)
!

add
	"Answer the <ExcelMenuBar> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self add: VARIANT unspecified!

add: name
	"Answer the <ExcelMenuBar> result of invoking the Add() method of the COM object."

	^ExcelMenuBar attachInterface: (self invokeId: 181 with: name)
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
	"Answer the <ExcelMenuBar> value of the 'Item' property of the receiver.
		MenuBar* Item"

	^ExcelMenuBar attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelMenuBars categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelMenuBars categoriesFor: #add!**auto generated**!methods!public! !
!ExcelMenuBars categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelMenuBars categoriesFor: #application!**auto generated**!properties!public! !
!ExcelMenuBars categoriesFor: #count!**auto generated**!properties!public! !
!ExcelMenuBars categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelMenuBars categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelMenuBars categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelMenuBars categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelMenuBars class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelMenuBars initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelMenuBars class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

