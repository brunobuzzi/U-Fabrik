"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotFilters
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotFilters guid: (IID fromString: '{00024484-0000-0000-C000-000000000046}')!
ExcelPivotFilters comment: '<ExcelPivotFilters> is a wrapper class generated for the dispatch interface ''Excel.PivotFilters'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00024484-0000-0000-C000-000000000046), 
	helpcontext(0x0002011a)
]
dispinterface PivotFilters {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0000000000), propget, helpcontext(0x00010000)]
		PivotFilter* _Default(
			[in]VARIANT Index);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		PivotFilter* Item(
			[in]VARIANT Index);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000000b5), helpcontext(0x000100b5)]
		PivotFilter* Add(
			[in]XlPivotFilterType Type,
			[in, optional]VARIANT DataField,
			[in, optional]VARIANT Value1,
			[in, optional]VARIANT Value2,
			[in, optional]VARIANT Order,
			[in, optional]VARIANT Name,
			[in, optional]VARIANT Description,
			[in, optional]VARIANT MemberPropertyField);
};
'!
!ExcelPivotFilters categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotFilters methodsFor!

_default: index
	"Answer the <ExcelPivotFilter> value of the '_Default' property of the receiver.
		PivotFilter* _Default"

	^ExcelPivotFilter attachInterface: (self getPropertyId: 0 item: index)
!

add: type
	"Answer the <ExcelPivotFilter> result of invoking the Add() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 add: type
		 dataField: VARIANT unspecified
		 value1: VARIANT unspecified
		 value2: VARIANT unspecified
		 order: VARIANT unspecified
		 name: VARIANT unspecified
		 description: VARIANT unspecified
		 memberPropertyField: VARIANT unspecified!

add: type dataField: dataField value1: value1 value2: value2 order: order name: name description: description memberPropertyField: memberPropertyField
	"Answer the <ExcelPivotFilter> result of invoking the Add() method of the COM object."

	^ExcelPivotFilter attachInterface: (self invokeId: 181 withArguments:
			((Array new: 8)
				basicAt: 1 put: type;
				basicAt: 2 put: dataField;
				basicAt: 3 put: value1;
				basicAt: 4 put: value2;
				basicAt: 5 put: order;
				basicAt: 6 put: name;
				basicAt: 7 put: description;
				basicAt: 8 put: memberPropertyField;
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
	"Answer the <ExcelPivotFilter> value of the 'Item' property of the receiver.
		PivotFilter* Item"

	^ExcelPivotFilter attachInterface: (self getPropertyId: 170 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
! !
!ExcelPivotFilters categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotFilters categoriesFor: #add:!**auto generated**!methods!public! !
!ExcelPivotFilters categoriesFor: #add:dataField:value1:value2:order:name:description:memberPropertyField:!**auto generated**!methods!public! !
!ExcelPivotFilters categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotFilters categoriesFor: #count!**auto generated**!properties!public! !
!ExcelPivotFilters categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotFilters categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelPivotFilters categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelPivotFilters categoriesFor: #parent!**auto generated**!properties!public! !

!ExcelPivotFilters class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotFilters initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotFilters class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

