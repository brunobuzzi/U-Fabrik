"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelQueryTables
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelQueryTables guid: (IID fromString: '{00024429-0000-0000-C000-000000000046}')!
ExcelQueryTables comment: '<ExcelQueryTables> is a wrapper class generated for the dispatch interface ''Excel.QueryTables'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024429-0000-0000-C000-000000000046), 
	helpcontext(0x000200bf)
]
dispinterface QueryTables {
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
		QueryTable* Add(
			[in]VARIANT Connection,
			[in]Range* Destination,
			[in, optional]VARIANT Sql);
[id(0x000000aa), helpcontext(0x000100aa)]
		QueryTable* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		QueryTable* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelQueryTables categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelQueryTables methodsFor!

_default: index
	"Answer the <Excel_QueryTable> value of the '_Default' property of the receiver.
		QueryTable* _Default"

	^Excel_QueryTable attachInterface: (self getPropertyId: 0 item: index)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: connection destination: destination
	"Answer the <Excel_QueryTable> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: connection
		 destination: destination
		 sql: VARIANT unspecified!

add: connection destination: destination sql: sql
	"Answer the <Excel_QueryTable> result of invoking the Add() method of the COM object."

	^Excel_QueryTable attachInterface: (self invokeId: 181 withArguments:
			((Array new: 3)
				basicAt: 1 put: connection;
				basicAt: 2 put: destination;
				basicAt: 3 put: sql;
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
	"Answer the <Excel_QueryTable> result of invoking the Item() method of the COM object."

	^Excel_QueryTable attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelQueryTables categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelQueryTables categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelQueryTables categoriesFor: #add:destination:!**auto generated**!methods!public! !
!ExcelQueryTables categoriesFor: #add:destination:sql:!**auto generated**!methods!public! !
!ExcelQueryTables categoriesFor: #application!**auto generated**!properties!public! !
!ExcelQueryTables categoriesFor: #count!**auto generated**!properties!public! !
!ExcelQueryTables categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelQueryTables categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelQueryTables categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelQueryTables categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelQueryTables class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelQueryTables initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelQueryTables class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

