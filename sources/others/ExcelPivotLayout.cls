"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotLayout guid: (IID fromString: '{0002444A-0000-0000-C000-000000000046}')!
ExcelPivotLayout comment: '<ExcelPivotLayout> is a wrapper class generated for the dispatch interface ''Excel.PivotLayout'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(0002444A-0000-0000-C000-000000000046), 
	helpcontext(0x000200e0)
]
dispinterface PivotLayout {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x000002c9), hidden, propget, helpcontext(0x000102c9)]
		IDispatch* ColumnFields(
			[in, optional]VARIANT Index);
[id(0x000002cb), hidden, propget, helpcontext(0x000102cb)]
		IDispatch* DataFields(
			[in, optional]VARIANT Index);
[id(0x000002ca), hidden, propget, helpcontext(0x000102ca)]
		IDispatch* PageFields(
			[in, optional]VARIANT Index);
[id(0x000002c8), hidden, propget, helpcontext(0x000102c8)]
		IDispatch* RowFields(
			[in, optional]VARIANT Index);
[id(0x000002c7), hidden, propget, helpcontext(0x000102c7)]
		IDispatch* HiddenFields(
			[in, optional]VARIANT Index);
[id(0x000002c6), hidden, propget, helpcontext(0x000102c6)]
		IDispatch* VisibleFields(
			[in, optional]VARIANT Index);
[id(0x000002ce), hidden, propget, helpcontext(0x000102ce)]
		IDispatch* PivotFields(
			[in, optional]VARIANT Index);
[id(0x0000072f), hidden, propget, helpcontext(0x0001072f)]
		CubeFields* CubeFields();
[id(0x000005d8), hidden, propget, helpcontext(0x000105d8)]
		PivotCache* PivotCache();
[id(0x000002cc), propget, helpcontext(0x000102cc)]
		PivotTable* PivotTable();
[id(0x000002ba), hidden, propget, helpcontext(0x000102ba)]
		BSTR InnerDetail();
[id(0x000002ba), hidden, propput, helpcontext(0x000102ba)]
		void InnerDetail(
			[in]BSTR arg1);
[id(0x000002c4), hidden, helpcontext(0x000102c4)]
		void AddFields(
			[in, optional]VARIANT RowFields,
			[in, optional]VARIANT ColumnFields,
			[in, optional]VARIANT PageFields,
			[in, optional]VARIANT AppendField);
};
'!
!ExcelPivotLayout categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotLayout methodsFor!

addFields
	"Invoke the AddFields() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 addFields: VARIANT unspecified
		 columnFields: VARIANT unspecified
		 pageFields: VARIANT unspecified
		 appendField: VARIANT unspecified!

addFields: rowFields columnFields: columnFields pageFields: pageFields appendField: appendField
	"Invoke the AddFields() method of the COM object."

	(self invokeId: 708 withArguments:
			((Array new: 4)
				basicAt: 1 put: rowFields;
				basicAt: 2 put: columnFields;
				basicAt: 3 put: pageFields;
				basicAt: 4 put: appendField;
				yourself))
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

columnFields
	"Answer the <IDispatch> value of the 'ColumnFields' property of the receiver.
		IDispatch* ColumnFields"

	^self columnFields: VARIANT unspecified!

columnFields: index
	"Answer the <IDispatch> value of the 'ColumnFields' property of the receiver.
		IDispatch* ColumnFields"

	^IDispatch attachInterface: (self getPropertyId: 713 item: index)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

cubeFields
	"Answer the <ExcelCubeFields> value of the 'CubeFields' property of the receiver.
		CubeFields* CubeFields"

	^ExcelCubeFields attachInterface: (self getPropertyId: 1839)
!

dataFields
	"Answer the <IDispatch> value of the 'DataFields' property of the receiver.
		IDispatch* DataFields"

	^self dataFields: VARIANT unspecified!

dataFields: index
	"Answer the <IDispatch> value of the 'DataFields' property of the receiver.
		IDispatch* DataFields"

	^IDispatch attachInterface: (self getPropertyId: 715 item: index)
!

hiddenFields
	"Answer the <IDispatch> value of the 'HiddenFields' property of the receiver.
		IDispatch* HiddenFields"

	^self hiddenFields: VARIANT unspecified!

hiddenFields: index
	"Answer the <IDispatch> value of the 'HiddenFields' property of the receiver.
		IDispatch* HiddenFields"

	^IDispatch attachInterface: (self getPropertyId: 711 item: index)
!

innerDetail
	"Answer the <bstr> value of the 'InnerDetail' property of the receiver.
		BSTR InnerDetail"

	^(self getPropertyId: 698)
!

innerDetail: arg1
	"Set the 'InnerDetail' property of the receiver to the <bstr> value of the argument.
		void InnerDetail"

	self setPropertyId: 698 value: arg1
!

pageFields
	"Answer the <IDispatch> value of the 'PageFields' property of the receiver.
		IDispatch* PageFields"

	^self pageFields: VARIANT unspecified!

pageFields: index
	"Answer the <IDispatch> value of the 'PageFields' property of the receiver.
		IDispatch* PageFields"

	^IDispatch attachInterface: (self getPropertyId: 714 item: index)
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

pivotCache
	"Answer the <ExcelPivotCache> value of the 'PivotCache' property of the receiver.
		PivotCache* PivotCache"

	^ExcelPivotCache attachInterface: (self getPropertyId: 1496)
!

pivotFields
	"Answer the <IDispatch> value of the 'PivotFields' property of the receiver.
		IDispatch* PivotFields"

	^self pivotFields: VARIANT unspecified!

pivotFields: index
	"Answer the <IDispatch> value of the 'PivotFields' property of the receiver.
		IDispatch* PivotFields"

	^IDispatch attachInterface: (self getPropertyId: 718 item: index)
!

pivotTable
	"Answer the <ExcelPivotTable> value of the 'PivotTable' property of the receiver.
		PivotTable* PivotTable"

	^ExcelPivotTable attachInterface: (self getPropertyId: 716)
!

rowFields
	"Answer the <IDispatch> value of the 'RowFields' property of the receiver.
		IDispatch* RowFields"

	^self rowFields: VARIANT unspecified!

rowFields: index
	"Answer the <IDispatch> value of the 'RowFields' property of the receiver.
		IDispatch* RowFields"

	^IDispatch attachInterface: (self getPropertyId: 712 item: index)
!

visibleFields
	"Answer the <IDispatch> value of the 'VisibleFields' property of the receiver.
		IDispatch* VisibleFields"

	^self visibleFields: VARIANT unspecified!

visibleFields: index
	"Answer the <IDispatch> value of the 'VisibleFields' property of the receiver.
		IDispatch* VisibleFields"

	^IDispatch attachInterface: (self getPropertyId: 710 item: index)
! !
!ExcelPivotLayout categoriesFor: #addFields!**auto generated**!methods!public! !
!ExcelPivotLayout categoriesFor: #addFields:columnFields:pageFields:appendField:!**auto generated**!methods!public! !
!ExcelPivotLayout categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #columnFields!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #columnFields:!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #cubeFields!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #dataFields!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #dataFields:!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #hiddenFields!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #hiddenFields:!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #innerDetail!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #innerDetail:!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #pageFields!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #pageFields:!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #pivotCache!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #pivotFields!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #pivotFields:!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #pivotTable!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #rowFields!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #rowFields:!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #visibleFields!**auto generated**!properties!public! !
!ExcelPivotLayout categoriesFor: #visibleFields:!**auto generated**!properties!public! !

!ExcelPivotLayout class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotLayout initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotLayout class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

