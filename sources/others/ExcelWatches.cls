"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWatches
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWatches guid: (IID fromString: '{00024456-0000-0000-C000-000000000046}')!
ExcelWatches comment: '<ExcelWatches> is a wrapper class generated for the dispatch interface ''Excel.Watches'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024456-0000-0000-C000-000000000046), 
	helpcontext(0x000200ec)
]
dispinterface Watches {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		Watch* Add(
			[in]VARIANT Source);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0000000000), propget, helpcontext(0x00010000)]
		Watch* _Default(
			[in]VARIANT Index);
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		Watch* Item(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
};
'!
!ExcelWatches categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelWatches methodsFor!

_default: index
	"Answer the <ExcelWatch> value of the '_Default' property of the receiver.
		Watch* _Default"

	^ExcelWatch attachInterface: (self getPropertyId: 0 item: index)
!

add: source
	"Answer the <ExcelWatch> result of invoking the Add() method of the COM object."

	^ExcelWatch attachInterface: (self invokeId: 181 with: source)
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

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <ExcelWatch> value of the 'Item' property of the receiver.
		Watch* Item"

	^ExcelWatch attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelWatches categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelWatches categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelWatches categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWatches categoriesFor: #count!**auto generated**!properties!public! !
!ExcelWatches categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWatches categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelWatches categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelWatches categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelWatches categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelWatches class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWatches initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWatches class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

