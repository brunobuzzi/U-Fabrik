"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelServerViewableItems
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelServerViewableItems guid: (IID fromString: '{000244A4-0000-0000-C000-000000000046}')!
ExcelServerViewableItems comment: '<ExcelServerViewableItems> is a wrapper class generated for the dispatch interface ''Excel.ServerViewableItems'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244A4-0000-0000-C000-000000000046), 
	helpcontext(0x0002013a)
]
dispinterface ServerViewableItems {
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
		IDispatch* Add(
			[in]VARIANT Obj);
[id(0x00000075), helpcontext(0x00010075)]
		void Delete(
			[in]VARIANT Index);
[id(0x000008bf), helpcontext(0x000108bf)]
		void DeleteAll();
[id(0x000000aa), helpcontext(0x000100aa)]
		IDispatch* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		IDispatch* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelServerViewableItems categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelServerViewableItems methodsFor!

_default: index
	"Answer the <IDispatch> value of the '_Default' property of the receiver.
		IDispatch* _Default"

	^IDispatch attachInterface: (self getPropertyId: 0 item: index)
!

add: obj
	"Answer the <IDispatch> result of invoking the Add() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 181 with: obj)
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

delete: index
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117 with: index)
!

deleteAll
	"Invoke the DeleteAll() method of the COM object."

	(self invokeId: 2239)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: index
	"Answer the <IDispatch> result of invoking the Item() method of the COM object."

	^IDispatch attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelServerViewableItems categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelServerViewableItems categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelServerViewableItems categoriesFor: #application!**auto generated**!properties!public! !
!ExcelServerViewableItems categoriesFor: #count!**auto generated**!properties!public! !
!ExcelServerViewableItems categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelServerViewableItems categoriesFor: #delete:!**auto generated**!methods!public! !
!ExcelServerViewableItems categoriesFor: #deleteAll!**auto generated**!methods!public! !
!ExcelServerViewableItems categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelServerViewableItems categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelServerViewableItems categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelServerViewableItems class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelServerViewableItems initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelServerViewableItems class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

