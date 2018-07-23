"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelColorStops
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelColorStops guid: (IID fromString: '{000244AE-0000-0000-C000-000000000046}')!
ExcelColorStops comment: '<ExcelColorStops> is a wrapper class generated for the dispatch interface ''Excel.ColorStops'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244AE-0000-0000-C000-000000000046), 
	helpcontext(0x00020144)
]
dispinterface ColorStops {
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
[id(0x000000b5), helpcontext(0x000100b5)]
		ColorStop* Add(
			[in]double Position);
[id(0x000000aa), helpcontext(0x000100aa)]
		ColorStop* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		ColorStop* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x0000006f), helpcontext(0x0001006f)]
		void Clear();
};
'!
!ExcelColorStops categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelColorStops methodsFor!

_default: index
	"Answer the <ExcelColorStop> value of the '_Default' property of the receiver.
		ColorStop* _Default"

	^ExcelColorStop attachInterface: (self getPropertyId: 0 item: index)
!

add: position
	"Answer the <ExcelColorStop> result of invoking the Add() method of the COM object."

	^ExcelColorStop attachInterface: (self invokeId: 181 with: position)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

clear
	"Invoke the Clear() method of the COM object."

	(self invokeId: 111)
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
	"Answer the <ExcelColorStop> result of invoking the Item() method of the COM object."

	^ExcelColorStop attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelColorStops categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelColorStops categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelColorStops categoriesFor: #application!**auto generated**!properties!public! !
!ExcelColorStops categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelColorStops categoriesFor: #count!**auto generated**!properties!public! !
!ExcelColorStops categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelColorStops categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelColorStops categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelColorStops categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelColorStops class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelColorStops initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelColorStops class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

