"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelSortFields
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelSortFields guid: (IID fromString: '{000244AA-0000-0000-C000-000000000046}')!
ExcelSortFields comment: '<ExcelSortFields> is a wrapper class generated for the dispatch interface ''Excel.SortFields'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(000244AA-0000-0000-C000-000000000046), 
	helpcontext(0x00020140)
]
dispinterface SortFields {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000000b5), helpcontext(0x000100b5)]
		SortField* Add(
			[in]Range* Key,
			[in, optional]VARIANT SortOn,
			[in, optional]VARIANT Order,
			[in, optional]VARIANT CustomOrder,
			[in, optional]VARIANT DataOption);
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		SortField* Item(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x0000006f), helpcontext(0x0001006f)]
		void Clear();
[id(0000000000), propget, helpcontext(0x00010000)]
		SortField* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelSortFields categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelSortFields methodsFor!

_default: index
	"Answer the <ExcelSortField> value of the '_Default' property of the receiver.
		SortField* _Default"

	^ExcelSortField attachInterface: (self getPropertyId: 0 item: index)
!

add: key
	"Answer the <ExcelSortField> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: key
		 sortOn: VARIANT unspecified
		 order: VARIANT unspecified
		 customOrder: VARIANT unspecified
		 dataOption: VARIANT unspecified!

add: key sortOn: sortOn order: order customOrder: customOrder dataOption: dataOption
	"Answer the <ExcelSortField> result of invoking the Add() method of the COM object."

	^ExcelSortField attachInterface: (self invokeId: 181 withArguments:
			((Array new: 5)
				basicAt: 1 put: key;
				basicAt: 2 put: sortOn;
				basicAt: 3 put: order;
				basicAt: 4 put: customOrder;
				basicAt: 5 put: dataOption;
				yourself))
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
	"Answer the <ExcelSortField> value of the 'Item' property of the receiver.
		SortField* Item"

	^ExcelSortField attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelSortFields categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelSortFields categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelSortFields categoriesFor: #add:sortOn:order:customOrder:dataOption:!**auto generated**!methods!public! !
!ExcelSortFields categoriesFor: #application!**auto generated**!properties!public! !
!ExcelSortFields categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelSortFields categoriesFor: #count!**auto generated**!properties!public! !
!ExcelSortFields categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelSortFields categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelSortFields categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelSortFields categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelSortFields class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelSortFields initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelSortFields class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

