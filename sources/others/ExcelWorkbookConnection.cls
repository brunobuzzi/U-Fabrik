"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWorkbookConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWorkbookConnection guid: (IID fromString: '{00024485-0000-0000-C000-000000000046}')!
ExcelWorkbookConnection comment: '<ExcelWorkbookConnection> is a wrapper class generated for the dispatch interface ''Excel.WorkbookConnection'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024485-0000-0000-C000-000000000046), 
	helpcontext(0x0002011b)
]
dispinterface WorkbookConnection {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000000da), propget, helpcontext(0x000100da)]
		BSTR Description();
[id(0x000000da), propput, helpcontext(0x000100da)]
		void Description(
			[in]BSTR arg1);
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]BSTR arg1);
[id(0x0000006c), propget, helpcontext(0x0001006c)]
		XlConnectionType Type();
[id(0x00000a89), propget, helpcontext(0x00010a89)]
		OLEDBConnection* OLEDBConnection();
[id(0x00000a8a), propget, helpcontext(0x00010a8a)]
		ODBCConnection* ODBCConnection();
[id(0x00000a8b), propget, helpcontext(0x00010a8b)]
		Ranges* Ranges();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x00000589), helpcontext(0x00010589)]
		void Refresh();
};
'!
!ExcelWorkbookConnection categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelWorkbookConnection methodsFor!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

_default: arg1
	"Set the '_Default' property of the receiver to the <bstr> value of the argument.
		void _Default"

	self setPropertyId: 0 value: arg1
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
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

description
	"Answer the <bstr> value of the 'Description' property of the receiver.
		BSTR Description"

	^(self getPropertyId: 218)
!

description: arg1
	"Set the 'Description' property of the receiver to the <bstr> value of the argument.
		void Description"

	self setPropertyId: 218 value: arg1
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

odbcConnection
	"Answer the <ExcelODBCConnection> value of the 'ODBCConnection' property of the receiver.
		ODBCConnection* ODBCConnection"

	^ExcelODBCConnection attachInterface: (self getPropertyId: 2698)
!

oledbConnection
	"Answer the <ExcelOLEDBConnection> value of the 'OLEDBConnection' property of the receiver.
		OLEDBConnection* OLEDBConnection"

	^ExcelOLEDBConnection attachInterface: (self getPropertyId: 2697)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

ranges
	"Answer the <ExcelRanges> value of the 'Ranges' property of the receiver.
		Ranges* Ranges"

	^ExcelRanges attachInterface: (self getPropertyId: 2699)
!

refresh
	"Invoke the Refresh() method of the COM object."

	(self invokeId: 1417)
!

type
	"Answer the <sdword> value of the 'Type' property of the receiver.
		XlConnectionType Type"

	^(self getPropertyId: 108)
!

value
	"Answer the <bstr> value of the '_Default' property of the receiver.
	This is the default value (DISPID_VALUE) property of the receiver."

	^self _default
!

value: arg1
	"Set the '_Default' property of the receiver to the <bstr> value of the argument.
	This is the default value (DISPID_VALUE) property of the receiver."

	self _default: arg1
! !
!ExcelWorkbookConnection categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelWorkbookConnection categoriesFor: #description!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #description:!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #name!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #odbcConnection!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #oledbConnection!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #ranges!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #refresh!**auto generated**!methods!public! !
!ExcelWorkbookConnection categoriesFor: #type!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #value!**auto generated**!properties!public! !
!ExcelWorkbookConnection categoriesFor: #value:!**auto generated**!properties!public! !

!ExcelWorkbookConnection class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWorkbookConnection initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWorkbookConnection class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

