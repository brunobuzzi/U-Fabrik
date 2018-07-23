"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelLegendEntries
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelLegendEntries guid: (IID fromString: '{000208BB-0000-0000-C000-000000000046}')!
ExcelLegendEntries comment: '<ExcelLegendEntries> is a wrapper class generated for the dispatch interface ''Excel.LegendEntries'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000208BB-0000-0000-C000-000000000046), 
	helpcontext(0x0002007b)
]
dispinterface LegendEntries {
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
		LegendEntry* Item(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0000000000), helpcontext(0x00010000)]
		LegendEntry* _Default(
			[in]VARIANT Index);
};
'!
!ExcelLegendEntries categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelLegendEntries methodsFor!

_default: index
	"Answer the <ExcelLegendEntry> result of invoking the _Default() method of the COM object."

	^ExcelLegendEntry attachInterface: (self invokeId: 0 with: index)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

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
	"Answer the <ExcelLegendEntry> result of invoking the Item() method of the COM object."

	^ExcelLegendEntry attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

value: index
	"Set the '_Default' property of the receiver to the <variant> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: index
! !
!ExcelLegendEntries categoriesFor: #_default:!**auto generated**!methods!public! !
!ExcelLegendEntries categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelLegendEntries categoriesFor: #application!**auto generated**!properties!public! !
!ExcelLegendEntries categoriesFor: #count!**auto generated**!properties!public! !
!ExcelLegendEntries categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelLegendEntries categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelLegendEntries categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelLegendEntries categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelLegendEntries categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelLegendEntries class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelLegendEntries initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelLegendEntries class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

