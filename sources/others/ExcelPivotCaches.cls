"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotCaches
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotCaches guid: (IID fromString: '{0002441D-0000-0000-C000-000000000046}')!
ExcelPivotCaches comment: '<ExcelPivotCaches> is a wrapper class generated for the dispatch interface ''Excel.PivotCaches'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002441D-0000-0000-C000-000000000046), 
	helpcontext(0x000200b3)
]
dispinterface PivotCaches {
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
		PivotCache* Item(
			[in]VARIANT Index);
[id(0000000000), propget, helpcontext(0x00010000)]
		PivotCache* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000b5), hidden, helpcontext(0x000100b5)]
		PivotCache* Add(
			[in]XlPivotTableSourceType SourceType,
			[in, optional]VARIANT SourceData);
[id(0x00000768), helpcontext(0x00010768)]
		PivotCache* Create(
			[in]XlPivotTableSourceType SourceType,
			[in, optional]VARIANT SourceData,
			[in, optional]VARIANT Version);
};
'!
!ExcelPivotCaches categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotCaches methodsFor!

_default: index
	"Answer the <ExcelPivotCache> value of the '_Default' property of the receiver.
		PivotCache* _Default"

	^ExcelPivotCache attachInterface: (self getPropertyId: 0 item: index)
!

_newEnum
	"Answer the <IUnknown> result of invoking the _NewEnum() method of the COM object."

	!

add: sourceType
	"Answer the <ExcelPivotCache> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: sourceType
		 sourceData: VARIANT unspecified!

add: sourceType sourceData: sourceData
	"Answer the <ExcelPivotCache> result of invoking the Add() method of the COM object."

	^ExcelPivotCache attachInterface: (self invokeId: 181 with: sourceType with: sourceData)
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

create: sourceType
	"Answer the <ExcelPivotCache> result of invoking the Create() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 create: sourceType
		 sourceData: VARIANT unspecified
		 version: VARIANT unspecified!

create: sourceType sourceData: sourceData version: version
	"Answer the <ExcelPivotCache> result of invoking the Create() method of the COM object."

	^ExcelPivotCache attachInterface: (self invokeId: 1896 withArguments:
			((Array new: 3)
				basicAt: 1 put: sourceType;
				basicAt: 2 put: sourceData;
				basicAt: 3 put: version;
				yourself))
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
	"Answer the <ExcelPivotCache> result of invoking the Item() method of the COM object."

	^ExcelPivotCache attachInterface: (self invokeId: 170 with: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelPivotCaches categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotCaches categoriesFor: #_newEnum!**auto generated**!methods!public! !
!ExcelPivotCaches categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelPivotCaches categoriesFor: #add:sourceData:!**auto generated**!methods!public! !
!ExcelPivotCaches categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotCaches categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPivotCaches categoriesFor: #create:!**auto generated**!methods!public! !
!ExcelPivotCaches categoriesFor: #create:sourceData:version:!**auto generated**!methods!public! !
!ExcelPivotCaches categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotCaches categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPivotCaches categoriesFor: #item:!**auto generated**!methods!public! !
!ExcelPivotCaches categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPivotCaches class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotCaches initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotCaches class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

