"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotItemList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotItemList guid: (IID fromString: '{00024468-0000-0000-C000-000000000046}')!
ExcelPivotItemList comment: '<ExcelPivotItemList> is a wrapper class generated for the dispatch interface ''Excel.PivotItemList'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024468-0000-0000-C000-000000000046), 
	helpcontext(0x000200fe)
]
dispinterface PivotItemList {
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
		PivotItem* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		PivotItem* _Default(
			[in]VARIANT Field);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelPivotItemList categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotItemList methodsFor!

_default: field
	"Answer the <ExcelPivotItem> value of the '_Default' property of the receiver.
		PivotItem* _Default"

	^ExcelPivotItem attachInterface: (self getPropertyId: 0 item: field)
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
	"Answer the <ExcelPivotItem> result of invoking the Item() method of the COM object."

	^ExcelPivotItem attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelPivotItemList categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotItemList categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelPivotItemList categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotItemList categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPivotItemList categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotItemList categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPivotItemList categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelPivotItemList categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPivotItemList class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotItemList initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotItemList class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

