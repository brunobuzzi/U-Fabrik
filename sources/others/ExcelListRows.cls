"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelListRows
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelListRows guid: (IID fromString: '{00024474-0000-0000-C000-000000000046}')!
ExcelListRows comment: '<ExcelListRows> is a wrapper class generated for the dispatch interface ''Excel.ListRows'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024474-0000-0000-C000-000000000046), 
	helpcontext(0x0002010a)
]
dispinterface ListRows {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000825), hidden, helpcontext(0x00010825)]
		ListRow* _Add(
			[in, optional]VARIANT Position);
[id(0000000000), propget, helpcontext(0x00010000)]
		ListRow* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		ListRow* Item(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000b5), helpcontext(0x000100b5)]
		ListRow* Add(
			[in, optional]VARIANT Position,
			[in, optional]VARIANT AlwaysInsert);
};
'!
!ExcelListRows categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelListRows methodsFor!

_add
	"Answer the <ExcelListRow> result of invoking the _Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self _add: VARIANT unspecified!

_add: position
	"Answer the <ExcelListRow> result of invoking the _Add() method of the COM object."

	^ExcelListRow attachInterface: (self invokeId: 2085 with: position)
!

_default: index
	"Answer the <ExcelListRow> value of the '_Default' property of the receiver.
		ListRow* _Default"

	^ExcelListRow attachInterface: (self getPropertyId: 0 item: index)
!

add
	"Answer the <ExcelListRow> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: VARIANT unspecified
		 alwaysInsert: VARIANT unspecified!

add: position alwaysInsert: alwaysInsert
	"Answer the <ExcelListRow> result of invoking the Add() method of the COM object."

	^ExcelListRow attachInterface: (self invokeId: 181 with: position with: alwaysInsert)
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
	"Answer the <ExcelListRow> value of the 'Item' property of the receiver.
		ListRow* Item"

	^ExcelListRow attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelListRows categoriesFor: #_add!**auto generated**!methods!public! !
!ExcelListRows categoriesFor: #_add:!**auto generated**!methods!public! !
!ExcelListRows categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelListRows categoriesFor: #add!**auto generated**!methods!public! !
!ExcelListRows categoriesFor: #add:alwaysInsert:!**auto generated**!methods!public! !
!ExcelListRows categoriesFor: #application!**auto generated**!properties!public! !
!ExcelListRows categoriesFor: #count!**auto generated**!properties!public! !
!ExcelListRows categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelListRows categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelListRows categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelListRows categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelListRows class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelListRows initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelListRows class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

