"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelConnections
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelConnections guid: (IID fromString: '{00024486-0000-0000-C000-000000000046}')!
ExcelConnections comment: '<ExcelConnections> is a wrapper class generated for the dispatch interface ''Excel.Connections'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024486-0000-0000-C000-000000000046), 
	helpcontext(0x0002011c)
]
dispinterface Connections {
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
[id(0x00000a8c), helpcontext(0x00010a8c)]
		WorkbookConnection* AddFromFile(
			[in]BSTR Filename);
[id(0x000000b5), helpcontext(0x000100b5)]
		WorkbookConnection* Add(
			[in]BSTR Name,
			[in]BSTR Description,
			[in]VARIANT ConnectionString,
			[in]VARIANT CommandText,
			[in, optional]VARIANT lCmdtype);
[id(0x000000aa), helpcontext(0x000100aa)]
		WorkbookConnection* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		WorkbookConnection* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
};
'!
!ExcelConnections categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelConnections methodsFor!

_default: index
	"Answer the <ExcelWorkbookConnection> value of the '_Default' property of the receiver.
		WorkbookConnection* _Default"

	^ExcelWorkbookConnection attachInterface: (self getPropertyId: 0 item: index)
!

add: name description: description connectionString: connectionString commandText: commandText
	"Answer the <ExcelWorkbookConnection> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: name
		 description: description
		 connectionString: connectionString
		 commandText: commandText
		 lCmdtype: VARIANT unspecified!

add: name description: description connectionString: connectionString commandText: commandText lCmdtype: lCmdtype
	"Answer the <ExcelWorkbookConnection> result of invoking the Add() method of the COM object."

	^ExcelWorkbookConnection attachInterface: (self invokeId: 181 withArguments:
			((Array new: 5)
				basicAt: 1 put: name;
				basicAt: 2 put: description;
				basicAt: 3 put: connectionString;
				basicAt: 4 put: commandText;
				basicAt: 5 put: lCmdtype;
				yourself))
!

addFromFile: filename
	"Answer the <ExcelWorkbookConnection> result of invoking the AddFromFile() method of the COM object."

	^ExcelWorkbookConnection attachInterface: (self invokeId: 2700 with: filename)
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
	"Answer the <ExcelWorkbookConnection> result of invoking the Item() method of the COM object."

	^ExcelWorkbookConnection attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelConnections categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelConnections categoriesFor: #add:description:connectionString:commandText:!**auto generated**!methods!public! !
!ExcelConnections categoriesFor: #add:description:connectionString:commandText:lCmdtype:!**auto generated**!methods!public! !
!ExcelConnections categoriesFor: #addFromFile:!**auto generated**!methods!public! !
!ExcelConnections categoriesFor: #application!**auto generated**!properties!public! !
!ExcelConnections categoriesFor: #count!**auto generated**!properties!public! !
!ExcelConnections categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelConnections categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelConnections categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelConnections categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelConnections class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelConnections initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelConnections class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

