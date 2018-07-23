"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotTables
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotTables guid: (IID fromString: '{00020873-0000-0000-C000-000000000046}')!
ExcelPivotTables comment: '<ExcelPivotTables> is a wrapper class generated for the dispatch interface ''Excel.PivotTables'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020873-0000-0000-C000-000000000046), 
	helpcontext(0x00020033)
]
dispinterface PivotTables {
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
		PivotTable* Item(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000b5), helpcontext(0x000100b5)]
		PivotTable* Add(
			[in]PivotCache* PivotCache,
			[in]VARIANT TableDestination,
			[in, optional]VARIANT TableName,
			[in, optional]VARIANT ReadData,
			[in, optional]VARIANT DefaultVersion);
};
'!
!ExcelPivotTables categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotTables methodsFor!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: pivotCache tableDestination: tableDestination
	"Answer the <ExcelPivotTable> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: pivotCache
		 tableDestination: tableDestination
		 tableName: VARIANT unspecified
		 readData: VARIANT unspecified
		 defaultVersion: VARIANT unspecified!

add: pivotCache tableDestination: tableDestination tableName: tableName readData: readData defaultVersion: defaultVersion
	"Answer the <ExcelPivotTable> result of invoking the Add() method of the COM object."

	^ExcelPivotTable attachInterface: (self invokeId: 181 withArguments:
			((Array new: 5)
				basicAt: 1 put: pivotCache;
				basicAt: 2 put: tableDestination;
				basicAt: 3 put: tableName;
				basicAt: 4 put: readData;
				basicAt: 5 put: defaultVersion;
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
	"Answer the <ExcelPivotTable> result of invoking the Item() method of the COM object."

	^ExcelPivotTable attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelPivotTables categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelPivotTables categoriesFor: #add:tableDestination:!**auto generated**!methods!public! !
!ExcelPivotTables categoriesFor: #add:tableDestination:tableName:readData:defaultVersion:!**auto generated**!methods!public! !
!ExcelPivotTables categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotTables categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPivotTables categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotTables categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPivotTables categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelPivotTables categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPivotTables class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotTables initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotTables class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

